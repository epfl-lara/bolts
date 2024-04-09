; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120876 () Bool)

(assert start!120876)

(declare-fun b!1405890 () Bool)

(declare-fun res!944216 () Bool)

(declare-fun e!795793 () Bool)

(assert (=> b!1405890 (=> (not res!944216) (not e!795793))))

(declare-datatypes ((array!96101 0))(
  ( (array!96102 (arr!46394 (Array (_ BitVec 32) (_ BitVec 64))) (size!46945 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96101)

(declare-datatypes ((List!33093 0))(
  ( (Nil!33090) (Cons!33089 (h!34343 (_ BitVec 64)) (t!47794 List!33093)) )
))
(declare-fun arrayNoDuplicates!0 (array!96101 (_ BitVec 32) List!33093) Bool)

(assert (=> b!1405890 (= res!944216 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33090))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!795792 () Bool)

(declare-fun b!1405891 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10727 0))(
  ( (MissingZero!10727 (index!45284 (_ BitVec 32))) (Found!10727 (index!45285 (_ BitVec 32))) (Intermediate!10727 (undefined!11539 Bool) (index!45286 (_ BitVec 32)) (x!126897 (_ BitVec 32))) (Undefined!10727) (MissingVacant!10727 (index!45287 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96101 (_ BitVec 32)) SeekEntryResult!10727)

(assert (=> b!1405891 (= e!795792 (= (seekEntryOrOpen!0 (select (arr!46394 a!2901) j!112) a!2901 mask!2840) (Found!10727 j!112)))))

(declare-fun b!1405892 () Bool)

(declare-fun res!944223 () Bool)

(assert (=> b!1405892 (=> (not res!944223) (not e!795793))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405892 (= res!944223 (and (= (size!46945 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46945 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46945 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405893 () Bool)

(declare-fun res!944222 () Bool)

(assert (=> b!1405893 (=> (not res!944222) (not e!795793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405893 (= res!944222 (validKeyInArray!0 (select (arr!46394 a!2901) i!1037)))))

(declare-fun b!1405894 () Bool)

(declare-fun res!944221 () Bool)

(assert (=> b!1405894 (=> (not res!944221) (not e!795793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96101 (_ BitVec 32)) Bool)

(assert (=> b!1405894 (= res!944221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405895 () Bool)

(declare-fun res!944220 () Bool)

(assert (=> b!1405895 (=> (not res!944220) (not e!795793))))

(assert (=> b!1405895 (= res!944220 (validKeyInArray!0 (select (arr!46394 a!2901) j!112)))))

(declare-fun b!1405896 () Bool)

(declare-fun e!795791 () Bool)

(assert (=> b!1405896 (= e!795791 true)))

(declare-fun lt!619149 () SeekEntryResult!10727)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96101 (_ BitVec 32)) SeekEntryResult!10727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405896 (= lt!619149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46394 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46394 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96102 (store (arr!46394 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46945 a!2901)) mask!2840))))

(declare-fun b!1405897 () Bool)

(assert (=> b!1405897 (= e!795793 (not e!795791))))

(declare-fun res!944218 () Bool)

(assert (=> b!1405897 (=> res!944218 e!795791)))

(declare-fun lt!619150 () SeekEntryResult!10727)

(get-info :version)

(assert (=> b!1405897 (= res!944218 (or (not ((_ is Intermediate!10727) lt!619150)) (undefined!11539 lt!619150)))))

(assert (=> b!1405897 e!795792))

(declare-fun res!944217 () Bool)

(assert (=> b!1405897 (=> (not res!944217) (not e!795792))))

(assert (=> b!1405897 (= res!944217 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47378 0))(
  ( (Unit!47379) )
))
(declare-fun lt!619148 () Unit!47378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47378)

(assert (=> b!1405897 (= lt!619148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405897 (= lt!619150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46394 a!2901) j!112) mask!2840) (select (arr!46394 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944219 () Bool)

(assert (=> start!120876 (=> (not res!944219) (not e!795793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120876 (= res!944219 (validMask!0 mask!2840))))

(assert (=> start!120876 e!795793))

(assert (=> start!120876 true))

(declare-fun array_inv!35339 (array!96101) Bool)

(assert (=> start!120876 (array_inv!35339 a!2901)))

(assert (= (and start!120876 res!944219) b!1405892))

(assert (= (and b!1405892 res!944223) b!1405893))

(assert (= (and b!1405893 res!944222) b!1405895))

(assert (= (and b!1405895 res!944220) b!1405894))

(assert (= (and b!1405894 res!944221) b!1405890))

(assert (= (and b!1405890 res!944216) b!1405897))

(assert (= (and b!1405897 res!944217) b!1405891))

(assert (= (and b!1405897 (not res!944218)) b!1405896))

(declare-fun m!1294899 () Bool)

(assert (=> b!1405890 m!1294899))

(declare-fun m!1294901 () Bool)

(assert (=> b!1405891 m!1294901))

(assert (=> b!1405891 m!1294901))

(declare-fun m!1294903 () Bool)

(assert (=> b!1405891 m!1294903))

(declare-fun m!1294905 () Bool)

(assert (=> start!120876 m!1294905))

(declare-fun m!1294907 () Bool)

(assert (=> start!120876 m!1294907))

(assert (=> b!1405897 m!1294901))

(declare-fun m!1294909 () Bool)

(assert (=> b!1405897 m!1294909))

(assert (=> b!1405897 m!1294901))

(declare-fun m!1294911 () Bool)

(assert (=> b!1405897 m!1294911))

(assert (=> b!1405897 m!1294909))

(assert (=> b!1405897 m!1294901))

(declare-fun m!1294913 () Bool)

(assert (=> b!1405897 m!1294913))

(declare-fun m!1294915 () Bool)

(assert (=> b!1405897 m!1294915))

(assert (=> b!1405895 m!1294901))

(assert (=> b!1405895 m!1294901))

(declare-fun m!1294917 () Bool)

(assert (=> b!1405895 m!1294917))

(declare-fun m!1294919 () Bool)

(assert (=> b!1405894 m!1294919))

(declare-fun m!1294921 () Bool)

(assert (=> b!1405893 m!1294921))

(assert (=> b!1405893 m!1294921))

(declare-fun m!1294923 () Bool)

(assert (=> b!1405893 m!1294923))

(declare-fun m!1294925 () Bool)

(assert (=> b!1405896 m!1294925))

(declare-fun m!1294927 () Bool)

(assert (=> b!1405896 m!1294927))

(assert (=> b!1405896 m!1294927))

(declare-fun m!1294929 () Bool)

(assert (=> b!1405896 m!1294929))

(assert (=> b!1405896 m!1294929))

(assert (=> b!1405896 m!1294927))

(declare-fun m!1294931 () Bool)

(assert (=> b!1405896 m!1294931))

(check-sat (not start!120876) (not b!1405893) (not b!1405896) (not b!1405891) (not b!1405894) (not b!1405897) (not b!1405895) (not b!1405890))
