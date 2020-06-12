const checkboxes = document.querySelectorAll('.toggle');

checkboxes.forEach(checkbox => {
  checkbox.addEventListener('change', e => {
    checkbox.parentElement.submit();
    e.preventDefault();
  });
});
