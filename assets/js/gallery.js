import justifiedLayout from "./justified-layout.js";
import * as params from "@params";

const gallery = document.getElementById("gallery");

if (gallery) {
  let containerWidth = 0;
  const items = gallery.querySelectorAll(".gallery-item");

  const aspectRatios = Array.from(items).map((item) => {
    // Support both images and videos
    const img = item.querySelector("img");
    const video = item.querySelector("video");
    const mediaElement = img || video;
    
    if (mediaElement) {
      mediaElement.style.width = "100%";
      mediaElement.style.height = "auto";
      
      // Get aspect ratio from element or from inline style
      if (img) {
        return parseFloat(img.getAttribute("width")) / parseFloat(img.getAttribute("height"));
      } else if (video) {
        // For videos, parse from the aspect-ratio style on the parent link
        const aspectRatioStyle = item.style.aspectRatio;
        if (aspectRatioStyle) {
          const [w, h] = aspectRatioStyle.split('/').map(v => parseFloat(v.trim()));
          return w / h;
        }
        // Default video aspect ratio
        return 16 / 9;
      }
    }
    
    // Fallback aspect ratio
    return 1;
  });

  function updateGallery() {
    if (containerWidth === gallery.getBoundingClientRect().width) return;
    containerWidth = gallery.getBoundingClientRect().width;

    const layout = justifiedLayout(aspectRatios, {
      rowWidth: containerWidth,
      spacing: Number.isInteger(params.boxSpacing) ? params.boxSpacing : 8,
      rowHeight: params.targetRowHeight || 288,
      heightTolerance: Number.isInteger(params.targetRowHeightTolerance) ? params.targetRowHeightTolerance : 0.25,
    });

    items.forEach((item, i) => {
      const { width, height, top, left } = layout.boxes[i];
      item.style.position = "absolute";
      item.style.width = width + "px";
      item.style.height = height + "px";
      item.style.top = top + "px";
      item.style.left = left + "px";
      item.style.overflow = "hidden";
    });

    gallery.style.position = "relative";
    gallery.style.height = layout.containerHeight + "px";
    gallery.style.visibility = "";
  }

  window.addEventListener("resize", updateGallery);
  window.addEventListener("orientationchange", updateGallery);

  // Call twice to adjust for scrollbars appearing after first call
  updateGallery();
  updateGallery();
}
