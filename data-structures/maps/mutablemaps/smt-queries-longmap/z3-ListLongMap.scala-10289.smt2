; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120936 () Bool)

(assert start!120936)

(declare-fun b!1406610 () Bool)

(declare-fun res!944938 () Bool)

(declare-fun e!796154 () Bool)

(assert (=> b!1406610 (=> (not res!944938) (not e!796154))))

(declare-datatypes ((array!96161 0))(
  ( (array!96162 (arr!46424 (Array (_ BitVec 32) (_ BitVec 64))) (size!46975 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96161)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406610 (= res!944938 (validKeyInArray!0 (select (arr!46424 a!2901) j!112)))))

(declare-fun b!1406612 () Bool)

(declare-fun e!796153 () Bool)

(assert (=> b!1406612 (= e!796154 (not e!796153))))

(declare-fun res!944937 () Bool)

(assert (=> b!1406612 (=> res!944937 e!796153)))

(declare-datatypes ((SeekEntryResult!10757 0))(
  ( (MissingZero!10757 (index!45404 (_ BitVec 32))) (Found!10757 (index!45405 (_ BitVec 32))) (Intermediate!10757 (undefined!11569 Bool) (index!45406 (_ BitVec 32)) (x!127007 (_ BitVec 32))) (Undefined!10757) (MissingVacant!10757 (index!45407 (_ BitVec 32))) )
))
(declare-fun lt!619419 () SeekEntryResult!10757)

(get-info :version)

(assert (=> b!1406612 (= res!944937 (or (not ((_ is Intermediate!10757) lt!619419)) (undefined!11569 lt!619419)))))

(declare-fun e!796151 () Bool)

(assert (=> b!1406612 e!796151))

(declare-fun res!944943 () Bool)

(assert (=> b!1406612 (=> (not res!944943) (not e!796151))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96161 (_ BitVec 32)) Bool)

(assert (=> b!1406612 (= res!944943 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47438 0))(
  ( (Unit!47439) )
))
(declare-fun lt!619420 () Unit!47438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47438)

(assert (=> b!1406612 (= lt!619420 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96161 (_ BitVec 32)) SeekEntryResult!10757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406612 (= lt!619419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46424 a!2901) j!112) mask!2840) (select (arr!46424 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406613 () Bool)

(declare-fun res!944941 () Bool)

(assert (=> b!1406613 (=> (not res!944941) (not e!796154))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406613 (= res!944941 (and (= (size!46975 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46975 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46975 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406614 () Bool)

(declare-fun res!944936 () Bool)

(assert (=> b!1406614 (=> (not res!944936) (not e!796154))))

(declare-datatypes ((List!33123 0))(
  ( (Nil!33120) (Cons!33119 (h!34373 (_ BitVec 64)) (t!47824 List!33123)) )
))
(declare-fun arrayNoDuplicates!0 (array!96161 (_ BitVec 32) List!33123) Bool)

(assert (=> b!1406614 (= res!944936 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33120))))

(declare-fun b!1406615 () Bool)

(declare-fun res!944940 () Bool)

(assert (=> b!1406615 (=> (not res!944940) (not e!796154))))

(assert (=> b!1406615 (= res!944940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406616 () Bool)

(declare-fun res!944939 () Bool)

(assert (=> b!1406616 (=> (not res!944939) (not e!796154))))

(assert (=> b!1406616 (= res!944939 (validKeyInArray!0 (select (arr!46424 a!2901) i!1037)))))

(declare-fun b!1406617 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96161 (_ BitVec 32)) SeekEntryResult!10757)

(assert (=> b!1406617 (= e!796151 (= (seekEntryOrOpen!0 (select (arr!46424 a!2901) j!112) a!2901 mask!2840) (Found!10757 j!112)))))

(declare-fun res!944942 () Bool)

(assert (=> start!120936 (=> (not res!944942) (not e!796154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120936 (= res!944942 (validMask!0 mask!2840))))

(assert (=> start!120936 e!796154))

(assert (=> start!120936 true))

(declare-fun array_inv!35369 (array!96161) Bool)

(assert (=> start!120936 (array_inv!35369 a!2901)))

(declare-fun b!1406611 () Bool)

(assert (=> b!1406611 (= e!796153 true)))

(declare-fun lt!619418 () SeekEntryResult!10757)

(assert (=> b!1406611 (= lt!619418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46424 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46424 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96162 (store (arr!46424 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46975 a!2901)) mask!2840))))

(assert (= (and start!120936 res!944942) b!1406613))

(assert (= (and b!1406613 res!944941) b!1406616))

(assert (= (and b!1406616 res!944939) b!1406610))

(assert (= (and b!1406610 res!944938) b!1406615))

(assert (= (and b!1406615 res!944940) b!1406614))

(assert (= (and b!1406614 res!944936) b!1406612))

(assert (= (and b!1406612 res!944943) b!1406617))

(assert (= (and b!1406612 (not res!944937)) b!1406611))

(declare-fun m!1295919 () Bool)

(assert (=> b!1406617 m!1295919))

(assert (=> b!1406617 m!1295919))

(declare-fun m!1295921 () Bool)

(assert (=> b!1406617 m!1295921))

(declare-fun m!1295923 () Bool)

(assert (=> b!1406616 m!1295923))

(assert (=> b!1406616 m!1295923))

(declare-fun m!1295925 () Bool)

(assert (=> b!1406616 m!1295925))

(assert (=> b!1406612 m!1295919))

(declare-fun m!1295927 () Bool)

(assert (=> b!1406612 m!1295927))

(assert (=> b!1406612 m!1295919))

(declare-fun m!1295929 () Bool)

(assert (=> b!1406612 m!1295929))

(assert (=> b!1406612 m!1295927))

(assert (=> b!1406612 m!1295919))

(declare-fun m!1295931 () Bool)

(assert (=> b!1406612 m!1295931))

(declare-fun m!1295933 () Bool)

(assert (=> b!1406612 m!1295933))

(assert (=> b!1406610 m!1295919))

(assert (=> b!1406610 m!1295919))

(declare-fun m!1295935 () Bool)

(assert (=> b!1406610 m!1295935))

(declare-fun m!1295937 () Bool)

(assert (=> start!120936 m!1295937))

(declare-fun m!1295939 () Bool)

(assert (=> start!120936 m!1295939))

(declare-fun m!1295941 () Bool)

(assert (=> b!1406615 m!1295941))

(declare-fun m!1295943 () Bool)

(assert (=> b!1406614 m!1295943))

(declare-fun m!1295945 () Bool)

(assert (=> b!1406611 m!1295945))

(declare-fun m!1295947 () Bool)

(assert (=> b!1406611 m!1295947))

(assert (=> b!1406611 m!1295947))

(declare-fun m!1295949 () Bool)

(assert (=> b!1406611 m!1295949))

(assert (=> b!1406611 m!1295949))

(assert (=> b!1406611 m!1295947))

(declare-fun m!1295951 () Bool)

(assert (=> b!1406611 m!1295951))

(check-sat (not start!120936) (not b!1406617) (not b!1406611) (not b!1406615) (not b!1406616) (not b!1406612) (not b!1406614) (not b!1406610))
