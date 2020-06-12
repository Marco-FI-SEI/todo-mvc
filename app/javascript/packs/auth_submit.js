const loginPasswordField = document.querySelector('.login-password-field');
const registrationPasswordField = document.querySelector('.registration-password-field');
const body = document.querySelector('body');

body.addEventListener('keypress', e => {
  if (e.target !== loginPasswordField && e.target !== registrationPasswordField) {
    console.log("hello 1");
    return;
  } else {
    if (e.key === 'Enter') e.target.parentElement.submit();
    console.log("hello 2");
  }
});
