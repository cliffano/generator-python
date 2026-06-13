export default function (plop) {

  plop.setHelper('copyrightYear', function () {
    return new Date().getFullYear();
  });

  plop.setHelper('titlecase', function (text) {
    return text.charAt(0).toUpperCase() + text.slice(1);
  });

  plop.setHelper('underline', function (char, length) {
    return char.repeat(length);
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
        },
        {
          type: 'input',
          name: 'github_repo',
          message: 'GitHub Repository'
        },
        {
          type: 'input',
          name: 'github_token_prefix',
          message: 'GitHub Actions token prefix'
        }
      ],
      actions: [
        {
          type: 'addMany',
          destination: 'stage',
          templateFiles: [
            'templates/python-cli/.*/*/*/*',
            'templates/python-cli/.*/*/*',
            'templates/python-cli/.*/*',
            'templates/python-cli/**/.*',
            'templates/python-cli/**/*'
          ]
        }
      ]
  });

  plop.setGenerator('python-cli-partials', {
      description: 'Python CLI partials template',
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
        },
        {
          type: 'input',
          name: 'github_repo',
          message: 'GitHub Repository'
        },
        {
          type: 'input',
          name: 'github_token_prefix',
          message: 'GitHub Actions token prefix'
        }
      ],
      actions: [
        {
          type: 'addMany',
          destination: 'stage/python-cli-partials',
          templateFiles: [
            'templates/python-cli-partials/*'
          ],
          base: 'templates/python-cli-partials'
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
      },
      {
        type: 'input',
        name: 'github_repo',
        message: 'GitHub Repository'
      },
      {
        type: 'input',
        name: 'github_token_prefix',
        message: 'GitHub Actions token prefix'
      }
    ],
    actions: [
      {
        type: 'addMany',
        destination: 'stage',
        templateFiles: [
          'templates/python-lib/.*/*/*/*',
          'templates/python-lib/.*/*/*',
          'templates/python-lib/.*/*',
          'templates/python-lib/**/.*',
          'templates/python-lib/**/*'
        ]
      }
    ]
});

  plop.setGenerator('python-lib-partials', {
    description: 'Python library partials template',
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
      },
      {
        type: 'input',
        name: 'github_repo',
        message: 'GitHub Repository'
      },
      {
        type: 'input',
        name: 'github_token_prefix',
        message: 'GitHub Actions token prefix'
      }
    ],
    actions: [
      {
        type: 'addMany',
        destination: 'stage/python-lib-partials',
        templateFiles: [
          'templates/python-lib-partials/*'
        ],
        base: 'templates/python-lib-partials'
      }
    ]
  });
};