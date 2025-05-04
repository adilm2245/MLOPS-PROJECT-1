from setuptools import setup,find_packages

with open("requirements.txt") as f:
    requirments = f.read().splitlines()

setup(
    name="MLOPS-PROJECT-1",
    version=0.1,
    author="Adil",
    packages=find_packages(),
    install_requires = requirments,

)
