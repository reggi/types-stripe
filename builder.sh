TARPATH=`npm view @types/stripe dist.tarball`
TARNAME=`basename $TARPATH`
npm pack @types/stripe
tar -xvf ./types-$TARNAME
mv ./stripe/package.json ./package.json
rm -rf ./stripe
rm ./types-$TARNAME
sed -i '' 's/@types\/stripe/@reggi\/types-stripe/g' package.json
