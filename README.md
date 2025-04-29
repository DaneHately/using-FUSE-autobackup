# Automatic bucket backup using FUSE

## Automate GCP Backups with Cloud Storage as Local Files

**my-ace-backup** streamlines Google Cloud Platform (GCP) backups by mounting Cloud Storage buckets as local filesystems and automating file transfers.

### Features
- **FUSE Integration**: Mounts GCS buckets (e.g., `mock-client-data`) using `gcsfuse`.
- **Automated Backups**: `backup.sh` script for scheduled file backups with logging and error handling.
- **GCP Ready**: Built for Google Associate Cloud Engineer certification and real-world cloud tasks.

### Benefits
- Reliable, automated backups to GCP Cloud Storage.
- Local-like access to cloud storage for easy integration.
- Ideal for businesses needing scalable backup solutions.

### How It Works
1. Mounts `mock-client-data` using `gcsfuse`.
2. Copies files from a source directory to the bucket.
3. Logs operations for monitoring.

### Get Started
1. Clone: `git clone https://github.com/yourusername/my-ace-backup.git`
2. Configure `backup.sh` with your bucket and source directory.
3. Run `./backup.sh` or schedule with cron.

### Contact
Need GCP automation? Contact Dane Hately at hatelydane@gmail.com for freelance cloud infrastructure services.

*By Dane Hately, aspiring Cloud Infrastructure Engineer.*
