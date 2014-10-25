glitter
-------

Personalize your git repository.

Do you have different names for personal and work development?
If so, you can configure the global git variables for name and email while
editing the local `.git/config` of a repository to use different credentials.

If you're really lazy, you can create a glitter file with the non-default
credentials you want to use and just run glitter to add the [user] field
to each repo before making any commits on it.

##How To

~/.glitter
````
[user]
	name = First Last
	email = address@email.com
````

In directory with `.git/`:

`$ glitter`
