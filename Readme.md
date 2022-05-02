# FE3 Translation Patch update.

This is an update to Quirino's (and thus also VincentASM/RPGuy96's) FE3 translation patches.

The purpose is to fix bugs that went unfixed int hose patches. 

**No other translation work will be done as part of this patch.**

This repository may also be used as a base for future translation patch project.
## Applying the Patch

Please check the releases tab and follow the included readme.

## Generating Patches

### Setup

You will need to acquire headered and unheaderd roms for FE3 revisions 1.0 and 1.1

1. Create some folder somewhere you can work in.
2. Inside that folder, clone this repo.
    * Use `git clone https://github.com/RobertTheSable/fe3-translation.git` if you don't intent to contribute or fork this repo.
    * Use `git clone git@github.com:RobertTheSable/fe3-translation.git` if you intent to contribute to this translation and/or create your own fork.
4. Create and `fe3-translation/roms` subfolder and copy or move your roms there.
    * Make sure their  names match the "file" keys for each rom entry in [config.yml](https://github.com/RobertTheSable/fe3-translation/blob/master/config.yml#L36)
3. Download [Sable](https://github.com/RobertTheSable/sable-text-converter) (at least version [1.2.1](https://github.com/RobertTheSable/sable-text-converter/releases/tag/1.2.1))
4. Unzip sable.exe and the bunled asar.dll file into the parent folder that this repository was cloned into.
5. In a command line prompt, navigate to the folder you unzipped sable into.
6. Run `sable.exe --project fe3-translation`
    * You can also pass an absolute path (i.e. C:\\\\Users\\\\you\\\\etc....) to the folder this repository was cloned into.

This will generate translated ROMs in the `roms` folder. You will need to generate IPS patches of these yourself.

## Credits and Changelog

The credits and changelog can be found in the doc folder.

## Branches

This repository has two branches - master and out-of-scope

* master is the branch used for releases, and will only be updated to fix bugs.
* out-of-scope may contain some additional assembly documentation to help with future translation projects.
