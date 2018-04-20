# Point Tracker

## API

- GET /api/points
  - Gets the current points for every team.
  - Returned json example:

```json
{
  [
    team: "Team A",
    points: 100
  ],
  [
    team: "Team B",
    points: 250
  ]
}
```

- POST /api/points
  - Adds or removes a team's points.
  - If the team does not exist, it will be created.
  - Expected json example:

```json
{
  team: "Team A",
  points: -5
}
```

- DELETE /api/points/{teamName}
  - Removes the provided teamName and their points.

## Developer Guide

### Setup

- Install [VS Code](https://code.visualstudio.com/Download)
  - Open the Command Palette (C-S-p) and search/run `Shell Command: Install 'code' command in PATH`
    - Source your terminal to use the new PATH (`source ~/.bashrc`)
  - Run the following to install the recommended plugins for VS Code:
  `code --install-extension rebornix.Ruby  --install-extension misogi.ruby-rubocop --install-extension DavidAnson.vscode-markdownlint`
- Install [Ruby v2.5.*](https://www.ruby-lang.org/en/downloads/)
- Run `gem install bundler`
  - Run `bundle install` to install the required dependencies

### Run

```bash
ruby app.rb
```

### Documentation

Generate docs by calling `rdoc`.
