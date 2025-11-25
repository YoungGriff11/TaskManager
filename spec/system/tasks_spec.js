const { test, expect } = require('@playwright/test');

test('full user flow: login, create task, logout', async ({ page }) => {
  // Login
  await page.goto('http://localhost:3000/users/sign_in');
  await page.fill('input[name="user[email]"]', 'test@example.com');
  await page.fill('input[name="user[password]"]', 'password123');
  await page.click('input[type="submit"]');
  await expect(page).toHaveURL('http://localhost:3000/tasks');

  // Create task
  await page.click('text=New Task');
  await page.fill('input[name="task[title]"]', 'Deploy to AWS');
  await page.fill('textarea[name="task[description]"]', 'Using Elastic Beanstalk');
  await page.click('input[value="Create Task"]');
  await expect(page.locator('body')).toContainText('Task was successfully created.');

  // Logout
  await page.click('button:has-text("Logout")');
  await expect(page).toHaveURL('http://localhost:3000/users/sign_in');
});

