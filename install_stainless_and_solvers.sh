TEMP_DIR="temp"
SOLVERS_DIR="$1"
STAINLESS_DIR="$2"
SBT_DIR=$SOLVERS_DIR

mkdir -p "$SOLVERS_DIR"
mkdir -p "$TEMP_DIR"
mkdir -p "$STAINLESS_DIR"
mkdir -p "$SBT_DIR"

echo "************** cvc5 **************"
# cvc5
wget https://github.com/cvc5/cvc5/releases/download/cvc5-1.1.2/cvc5-Linux-static.zip -O "$TEMP_DIR/downloaded.zip" --no-verbose
unzip -q "$TEMP_DIR/downloaded.zip" -d "$TEMP_DIR" 
CVC5_DIR=$(ls "$TEMP_DIR" | grep cvc5)
mv "$TEMP_DIR/$CVC5_DIR/bin/cvc5" "$SOLVERS_DIR/cvc5"
chmod +x "$SOLVERS_DIR/cvc5"
rm -rf "$TEMP_DIR"

echo "************** cvc4 **************"
wget https://cvc4.cs.stanford.edu/downloads/builds/x86_64-linux-opt/cvc4-1.8-x86_64-linux-opt -O "$SOLVERS_DIR/cvc4" --no-verbose
chmod +x "$SOLVERS_DIR/cvc4"

echo "************** z3 **************"
mkdir -p "$TEMP_DIR"
wget https://github.com/Z3Prover/z3/releases/download/z3-4.13.0/z3-4.13.0-x64-glibc-2.35.zip -O "$TEMP_DIR/downloaded.zip" --no-verbose
unzip -q "$TEMP_DIR/downloaded.zip" -d "$TEMP_DIR" 
Z3_DIR=$(ls "$TEMP_DIR" | grep z3)
mv "$TEMP_DIR/$Z3_DIR/bin/z3" "$SOLVERS_DIR/z3"
chmod +x "$SOLVERS_DIR/z3"
rm -rf "$TEMP_DIR"

echo "************** sbt **************"
mkdir -p $SBT_DIR
SBT_NAME="sbt-1.10.1.tgz"
wget https://github.com/sbt/sbt/releases/download/v1.10.1/$SBT_NAME -O $SBT_DIR/$SBT_NAME --no-verbose
echo "  unpack $SBT_NAME"
cd $SBT_DIR
echo "  now I am in " `pwd`
tar xfz $SBT_NAME

echo "************** stainless **************"
cd "$STAINLESS_DIR"
if [ -d "stainless" ]; then
    cd stainless
    git pull
    git submodule update --init --recursive
else
    git clone --recurse-submodules https://github.com/epfl-lara/stainless
    cd stainless
fi
${SBT_DIR}/sbt/bin/sbt universal:stage
