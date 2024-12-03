# [DevOpsFarm Backstage]([https://backstage.io](https://www.devopsfarm.in/))

This is your newly scaffolded Backstage App, Good Luck!

To start the app, run:

```sh
yarn install
yarn dev
```

Sign in using GitHub

   -     yarn --cwd packages/backend add @backstage/   plugin-auth-backend-module-github-provider


  -  import in packages/backend/src/index.ts :-

        ```sh
        backend.add(import('@backstage/plugin-auth-backend-module-github-provider'));
        ```

  -  add in packages/app/src/App.tsx :-
    
     ```sh
        import { githubAuthApiRef } from '@backstage/core-plugin-api';
        import { SignInPage } from '@backstage/core-components';

        const app = createApp({
        components: {
            SignInPage: props => (
            <SignInPage
                {...props}
                auto
                provider={{
                id: 'github-auth-provider',
                title: 'GitHub',
                message: 'Sign in using GitHub',
                apiRef: githubAuthApiRef,
                }}
            />
            ), },    
        });
     ```
       
  - backstage/app-config.local.yaml
        # Backstage override configuration for your local development environment

     ```sh
            auth:
            environment: development
            providers:
                guest: {}
                github:
                development:
                    clientId: clientId
                    clientSecret: clientSecret
                    signIn:
                    resolvers:
                        - resolver: usernameMatchingUserEntityName
     ```
    
            integrations:
            github:
                - host: github.com
                apiBaseUrl: https://api.github.com
                rawBaseUrl: https://raw.githubusercontent.com
                token: token

# Backstage-templates
