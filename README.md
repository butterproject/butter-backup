# butter-backup

A tool to easly backup the entire `butterproject` organization.

An now you're asking yourself : __God ! How do I do that ?__

## Usage

### Manual

```
# Install github-backup (warning: python 2 only !)
pip install github-backup

# Run it
github-backup --token ******************** --output-directory ../butter-backup-data -O --all butterproject
```

The backup will be stored in `../butter-backup-data`.

The token ca be generated from https://github.com/settings/tokens.

### Docker

You can also use Docker and Compose !

```
 Build Docker image
docker build -t backup-butter

# Create backup folder
mkdir ../butter-backup-data

# Launch docker command
docker run -ti --rm --env TOKEN=******************** -v $(pwd)/../butter-backup-data:/backup-data butter-backup
```

The backup will be stored in `../butter-backup-data`.

The token ca be generated from https://github.com/settings/tokens.

## Future

- It would be smart to also include future forum and blog in the backup.
- Instructions to automate it (with `cron` for example)
