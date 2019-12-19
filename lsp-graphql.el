(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection
		   (list
		    "gql-language-server"
		    "--stdio"
		    "--config-dir"
		    (expand-file-name "~/lsp-graphql")
		    "--gql-path"
		    (expand-file-name
		     "~/lsp-graphql/node_modules/@playlyfe/gql")))
  :major-modes '(graphql-mode)
  :server-id 'graphql))

(add-to-list 'lsp-language-id-configuration '(graphql-mode . "graphql"))
