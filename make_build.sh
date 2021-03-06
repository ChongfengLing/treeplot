echo "Cleaning previous builds first.."
rm -rf *.dot
rm -rf *.pdf
rm -rf *.png
rm -rf dist
rm -rf build
rm -rf .pytest_cache
rm -rf treeplot.egg-info
rm -rf treeplot//RESOURCES//graphviz-2.38
rm -rf treeplot//RESOURCES//graphviz-2.38.zip

echo "Making new wheel.."
echo ""
python setup.py bdist_wheel
echo ""

echo "Making source build .."
echo ""
python setup.py sdist
echo ""

read -p "Press [Enter] to install the pip package..."
pip install -U dist/treeplot-0.1.7-py3-none-any.whl
echo ""

read -p ">twine upload dist/* TO UPLOAD TO PYPI..."
echo ""

read -p "Press [Enter] key to close window..."
