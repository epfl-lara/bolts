; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122824 () Bool)

(assert start!122824)

(declare-fun b!1423369 () Bool)

(declare-fun res!958922 () Bool)

(declare-fun e!804570 () Bool)

(assert (=> b!1423369 (=> (not res!958922) (not e!804570))))

(declare-datatypes ((array!97107 0))(
  ( (array!97108 (arr!46867 (Array (_ BitVec 32) (_ BitVec 64))) (size!47418 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97107)

(declare-datatypes ((List!33557 0))(
  ( (Nil!33554) (Cons!33553 (h!34855 (_ BitVec 64)) (t!48258 List!33557)) )
))
(declare-fun arrayNoDuplicates!0 (array!97107 (_ BitVec 32) List!33557) Bool)

(assert (=> b!1423369 (= res!958922 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33554))))

(declare-fun b!1423370 () Bool)

(declare-fun e!804567 () Bool)

(declare-fun e!804572 () Bool)

(assert (=> b!1423370 (= e!804567 e!804572)))

(declare-fun res!958920 () Bool)

(assert (=> b!1423370 (=> (not res!958920) (not e!804572))))

(declare-fun lt!627058 () array!97107)

(declare-datatypes ((SeekEntryResult!11174 0))(
  ( (MissingZero!11174 (index!47087 (_ BitVec 32))) (Found!11174 (index!47088 (_ BitVec 32))) (Intermediate!11174 (undefined!11986 Bool) (index!47089 (_ BitVec 32)) (x!128731 (_ BitVec 32))) (Undefined!11174) (MissingVacant!11174 (index!47090 (_ BitVec 32))) )
))
(declare-fun lt!627061 () SeekEntryResult!11174)

(declare-fun lt!627059 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97107 (_ BitVec 32)) SeekEntryResult!11174)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423370 (= res!958920 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627059 mask!2608) lt!627059 lt!627058 mask!2608) lt!627061))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423370 (= lt!627061 (Intermediate!11174 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423370 (= lt!627059 (select (store (arr!46867 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423370 (= lt!627058 (array!97108 (store (arr!46867 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47418 a!2831)))))

(declare-fun b!1423372 () Bool)

(declare-fun res!958911 () Bool)

(assert (=> b!1423372 (=> (not res!958911) (not e!804570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423372 (= res!958911 (validKeyInArray!0 (select (arr!46867 a!2831) i!982)))))

(declare-fun b!1423373 () Bool)

(declare-fun e!804566 () Bool)

(declare-fun e!804571 () Bool)

(assert (=> b!1423373 (= e!804566 e!804571)))

(declare-fun res!958919 () Bool)

(assert (=> b!1423373 (=> res!958919 e!804571)))

(declare-fun lt!627062 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1423373 (= res!958919 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627062 #b00000000000000000000000000000000) (bvsge lt!627062 (size!47418 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423373 (= lt!627062 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423374 () Bool)

(declare-fun res!958923 () Bool)

(assert (=> b!1423374 (=> (not res!958923) (not e!804570))))

(assert (=> b!1423374 (= res!958923 (and (= (size!47418 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47418 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47418 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423375 () Bool)

(assert (=> b!1423375 (= e!804570 e!804567)))

(declare-fun res!958917 () Bool)

(assert (=> b!1423375 (=> (not res!958917) (not e!804567))))

(declare-fun lt!627060 () SeekEntryResult!11174)

(assert (=> b!1423375 (= res!958917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46867 a!2831) j!81) mask!2608) (select (arr!46867 a!2831) j!81) a!2831 mask!2608) lt!627060))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423375 (= lt!627060 (Intermediate!11174 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423376 () Bool)

(declare-fun res!958926 () Bool)

(assert (=> b!1423376 (=> res!958926 e!804571)))

(assert (=> b!1423376 (= res!958926 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627062 (select (arr!46867 a!2831) j!81) a!2831 mask!2608) lt!627060)))))

(declare-fun b!1423377 () Bool)

(declare-fun res!958914 () Bool)

(assert (=> b!1423377 (=> (not res!958914) (not e!804570))))

(assert (=> b!1423377 (= res!958914 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47418 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47418 a!2831))))))

(declare-fun b!1423378 () Bool)

(assert (=> b!1423378 (= e!804572 (not e!804566))))

(declare-fun res!958918 () Bool)

(assert (=> b!1423378 (=> res!958918 e!804566)))

(assert (=> b!1423378 (= res!958918 (or (= (select (arr!46867 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46867 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46867 a!2831) index!585) (select (arr!46867 a!2831) j!81)) (= (select (store (arr!46867 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804568 () Bool)

(assert (=> b!1423378 e!804568))

(declare-fun res!958915 () Bool)

(assert (=> b!1423378 (=> (not res!958915) (not e!804568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97107 (_ BitVec 32)) Bool)

(assert (=> b!1423378 (= res!958915 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48132 0))(
  ( (Unit!48133) )
))
(declare-fun lt!627063 () Unit!48132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48132)

(assert (=> b!1423378 (= lt!627063 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423379 () Bool)

(declare-fun res!958925 () Bool)

(assert (=> b!1423379 (=> (not res!958925) (not e!804572))))

(assert (=> b!1423379 (= res!958925 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423380 () Bool)

(declare-fun res!958921 () Bool)

(assert (=> b!1423380 (=> (not res!958921) (not e!804572))))

(assert (=> b!1423380 (= res!958921 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46867 a!2831) j!81) a!2831 mask!2608) lt!627060))))

(declare-fun b!1423371 () Bool)

(declare-fun res!958913 () Bool)

(assert (=> b!1423371 (=> (not res!958913) (not e!804572))))

(assert (=> b!1423371 (= res!958913 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627059 lt!627058 mask!2608) lt!627061))))

(declare-fun res!958916 () Bool)

(assert (=> start!122824 (=> (not res!958916) (not e!804570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122824 (= res!958916 (validMask!0 mask!2608))))

(assert (=> start!122824 e!804570))

(assert (=> start!122824 true))

(declare-fun array_inv!35812 (array!97107) Bool)

(assert (=> start!122824 (array_inv!35812 a!2831)))

(declare-fun b!1423381 () Bool)

(declare-fun res!958912 () Bool)

(assert (=> b!1423381 (=> (not res!958912) (not e!804570))))

(assert (=> b!1423381 (= res!958912 (validKeyInArray!0 (select (arr!46867 a!2831) j!81)))))

(declare-fun b!1423382 () Bool)

(declare-fun res!958924 () Bool)

(assert (=> b!1423382 (=> (not res!958924) (not e!804570))))

(assert (=> b!1423382 (= res!958924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423383 () Bool)

(assert (=> b!1423383 (= e!804571 true)))

(declare-fun lt!627064 () SeekEntryResult!11174)

(assert (=> b!1423383 (= lt!627064 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627062 lt!627059 lt!627058 mask!2608))))

(declare-fun b!1423384 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97107 (_ BitVec 32)) SeekEntryResult!11174)

(assert (=> b!1423384 (= e!804568 (= (seekEntryOrOpen!0 (select (arr!46867 a!2831) j!81) a!2831 mask!2608) (Found!11174 j!81)))))

(assert (= (and start!122824 res!958916) b!1423374))

(assert (= (and b!1423374 res!958923) b!1423372))

(assert (= (and b!1423372 res!958911) b!1423381))

(assert (= (and b!1423381 res!958912) b!1423382))

(assert (= (and b!1423382 res!958924) b!1423369))

(assert (= (and b!1423369 res!958922) b!1423377))

(assert (= (and b!1423377 res!958914) b!1423375))

(assert (= (and b!1423375 res!958917) b!1423370))

(assert (= (and b!1423370 res!958920) b!1423380))

(assert (= (and b!1423380 res!958921) b!1423371))

(assert (= (and b!1423371 res!958913) b!1423379))

(assert (= (and b!1423379 res!958925) b!1423378))

(assert (= (and b!1423378 res!958915) b!1423384))

(assert (= (and b!1423378 (not res!958918)) b!1423373))

(assert (= (and b!1423373 (not res!958919)) b!1423376))

(assert (= (and b!1423376 (not res!958926)) b!1423383))

(declare-fun m!1313975 () Bool)

(assert (=> b!1423373 m!1313975))

(declare-fun m!1313977 () Bool)

(assert (=> b!1423382 m!1313977))

(declare-fun m!1313979 () Bool)

(assert (=> start!122824 m!1313979))

(declare-fun m!1313981 () Bool)

(assert (=> start!122824 m!1313981))

(declare-fun m!1313983 () Bool)

(assert (=> b!1423375 m!1313983))

(assert (=> b!1423375 m!1313983))

(declare-fun m!1313985 () Bool)

(assert (=> b!1423375 m!1313985))

(assert (=> b!1423375 m!1313985))

(assert (=> b!1423375 m!1313983))

(declare-fun m!1313987 () Bool)

(assert (=> b!1423375 m!1313987))

(declare-fun m!1313989 () Bool)

(assert (=> b!1423370 m!1313989))

(assert (=> b!1423370 m!1313989))

(declare-fun m!1313991 () Bool)

(assert (=> b!1423370 m!1313991))

(declare-fun m!1313993 () Bool)

(assert (=> b!1423370 m!1313993))

(declare-fun m!1313995 () Bool)

(assert (=> b!1423370 m!1313995))

(declare-fun m!1313997 () Bool)

(assert (=> b!1423369 m!1313997))

(assert (=> b!1423378 m!1313993))

(declare-fun m!1313999 () Bool)

(assert (=> b!1423378 m!1313999))

(declare-fun m!1314001 () Bool)

(assert (=> b!1423378 m!1314001))

(declare-fun m!1314003 () Bool)

(assert (=> b!1423378 m!1314003))

(assert (=> b!1423378 m!1313983))

(declare-fun m!1314005 () Bool)

(assert (=> b!1423378 m!1314005))

(declare-fun m!1314007 () Bool)

(assert (=> b!1423372 m!1314007))

(assert (=> b!1423372 m!1314007))

(declare-fun m!1314009 () Bool)

(assert (=> b!1423372 m!1314009))

(declare-fun m!1314011 () Bool)

(assert (=> b!1423383 m!1314011))

(assert (=> b!1423380 m!1313983))

(assert (=> b!1423380 m!1313983))

(declare-fun m!1314013 () Bool)

(assert (=> b!1423380 m!1314013))

(assert (=> b!1423381 m!1313983))

(assert (=> b!1423381 m!1313983))

(declare-fun m!1314015 () Bool)

(assert (=> b!1423381 m!1314015))

(declare-fun m!1314017 () Bool)

(assert (=> b!1423371 m!1314017))

(assert (=> b!1423384 m!1313983))

(assert (=> b!1423384 m!1313983))

(declare-fun m!1314019 () Bool)

(assert (=> b!1423384 m!1314019))

(assert (=> b!1423376 m!1313983))

(assert (=> b!1423376 m!1313983))

(declare-fun m!1314021 () Bool)

(assert (=> b!1423376 m!1314021))

(push 1)

