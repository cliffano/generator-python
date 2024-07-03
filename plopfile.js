export default function (plop) {

  plop.setHelper('copyrightYear', function () {
    return new Date().getFullYear();
  });

  plop.setHelper('underline', function (char, length) {
    return char.repeat(length);
  });

  plop.setHelper('titlecase', function (text) {
    return text.charAt(0).toUpperCase() + text.slice(1);
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
        },
        {
          type: 'input',
          name: 'github_id',
          message: 'GitHub ID'
        }
      ],
      actions: [
        {
          type: 'addMany',
          destination: 'stage',
          templateFiles: [
            'templates/python-cli/.*/*/*/*',
            'templates/python-cli/.*/*/*',
            'templates/python-cli/**/.*',
            'templates/python-cli/**/*'
          ]
        }
      ]
  });

  plop.setGenerator('python-lib', {
    description: 'Python library Plop',
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
      },
      {
        type: 'input',
        name: 'github_id',
        message: 'GitHub ID'
      }
    ],
    actions: [
      {
        type: 'addMany',
        destination: 'stage',
        templateFiles: [
          'templates/python-lib/.*/*/*/*',
          'templates/python-lib/.*/*/*',
          'templates/python-lib/**/.*',
          'templates/python-lib/**/*'
        ]
      }
    ]
});
};