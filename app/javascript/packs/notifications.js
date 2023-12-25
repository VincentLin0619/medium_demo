document.addEventListener("DOMContentLoaded", () => {
  (document.querySelectorAll(".notification .delete") || []).forEach(
    ($delete) => {
      const $notification = $delete.parentNode;
      function delay(ms) {
        return new Promise((resolve) => setTimeout(resolve, ms));
      }
      async function removeNotice() {
        $notification.classList.add("hidden");
        await delay(500);
        $notification.parentElement.removeChild($notification);
      }
      $delete.addEventListener("click", () => {
        removeNotice();
      });

      const timer = setTimeout(() => {
        removeNotice();
        clearTimeout(timer);
      }, 5000);
    }
  );
});
