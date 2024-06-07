export default function (plop) {

  plop.setHelper('copyrightYear', function () {
    return new Date().getFullYear();
  });

  plop.setGenerator('python-cli', {
      description: 'Python CLI Plop',
      prompts: [
        {
          type: 'input',
          name: 'project_id',
          message: 'Project ID'
        },
        {
          type: 'input',
          name: 'project_name',
          message: 'Project Name'
        },
        {
          type: 'input',
          name: 'project_desc',
          message: 'Project Description '
        },
        {
          type: 'input',
          name: 'author_name',
          message: 'Author Name'
        },
        {
          type: 'input',
          name: 'author_email',
          message: 'Author Email'
        }
      ],
      actions: [
        {
          type: 'addMany',
          destination: 'stage',
          templateFiles: [
            'templates/python-cli/**/.*',
            'templates/python-cli/**/*'
          ]
        }
      ]
  });
};