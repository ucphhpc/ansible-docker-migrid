# ansible-docker-migrid
A collection of tools for automating docker-migrid deployment on a physical or virtual machibe with ansible

## Linting

To make the codebase clean, you can use `ansible-lint` to apply certain standards. A good example is using the `shared` profile.

```
# commit all previous changes in git to have a clean state

# run ansible-lint and let it autochange all findings
ansible-lint --profile shared --write

# show changes
git diff
```
