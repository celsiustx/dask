#!/usr/bin/env python

from pathlib import Path
from subprocess import check_call as run

from cli import *


dir = Path(__file__).parent


@cmd()
@flag('--build', '-b', default=True)
@flag('--push', '-p')
@opt('-r', '--repository', default='runsascoded')
@opt('-v', '--dask_version', default='2.16.0')
@paths('-i', '--input', '--dockerfile', default=['clone', 'test', 'sum-crash', 'patched'])
def main(build, push, repository, dask_version, input):
    for name in input:
        tag = f'{repository}/dask-{name}:{dask_version}'
        if build:
            run([
                'docker', 'build',
                '-f', str(dir / f'Dockerfile.{name}'),
                '-t', tag,
                '--build-arg', f'dask_version={dask_version}',
                str(dir.parent),
            ])
        if push:
            run(['docker', 'push', tag])


if __name__ == '__main__':
    main()
