(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection
		   (list
		    (expand-file-name "~/graphiql/node_modules/.bin/graphql")
		    "server"
		    "--schema"
		    "http://localhost:7200/api/graphql"))
  :major-modes '(graphql-mode)
  :server-id 'graphql))

(add-to-list 'lsp-language-id-configuration '(graphql-mode . "graphql"))
