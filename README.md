# Homebrew formulae for LinuxKit

---

This repository is folked from [linuxkit/homebrew-linuxkit](https://linuxkit/homebrew-linuxkit) for add [SakuraCloud](https://cloud.sakura.ad.jp/) support.

---

If you have installed the commands before, you will want to delete
them first as they will conflict with the `brew` installed ones.


You can add these to your homebrew install with
```
brew tap sacloud/linuxkit
```
then install with
```
brew install --HEAD moby
brew install --HEAD linuxkit
brew install --HEAD rtf
brew install --HEAD manifest-tool
```

If you already added `linuxkit/linuxkit`, please use the fully-qualified name with
```
brew install --HEAD sacloud/linuxki/moby
brew install --HEAD sacloud/linuxkit/linuxkit
brew install --HEAD sacloud/linuxkit/rtf
brew install --HEAD sacloud/linuxkit/manifest-tool
```

Currently only `HEAD` taps are available, but releases will be available later.

`HEAD` taps are a bit odd for upgrades, so upgrade with
```
brew reinstall --HEAD moby
brew reinstall --HEAD linuxkit
```

To remove
```
brew remove moby
brew remove linuxkit
brew untap linuxkit/linuxkit
```
