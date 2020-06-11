const checkboxes = document.querySelectorAll('.toggle');

checkboxes.forEach(checkbox => {
  checkbox.addEventListener('change', e => {
    checkbox.parentElement.submit();
    e.preventDefault();
  });
});

// Parameters: {
//   "authenticity_token"=>"RrhLDNrceDIcnAFYTXWzwcoaSHQZ6ykeUSqJFSepIFcPMsTPi4kq0yIT3kLgOigKg7Vf3yZ5gq/ZP1BPj5agvQ==",
//   "item"=>{"1"=>"1"},
//   "list_id"=>"2",
//   "id"=>"1"
// }

// Parameters: {
//   "authenticity_token"=>"hlHCb/YRg8VhPfl1qitCnr3AJmtevYsEBqQKwNaeGgTP202sp0TRJF+yJm8HZNlV9G8xwGEvILWOsdOafqGa7g==",
//   "item"=>{"status"=>"0"},
//   "list_id"=>"5",
//   "id"=>"4"
// }
