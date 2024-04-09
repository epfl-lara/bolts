; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121218 () Bool)

(assert start!121218)

(declare-fun b!1408896 () Bool)

(declare-fun res!946729 () Bool)

(declare-fun e!797350 () Bool)

(assert (=> b!1408896 (=> (not res!946729) (not e!797350))))

(declare-datatypes ((array!96290 0))(
  ( (array!96291 (arr!46484 (Array (_ BitVec 32) (_ BitVec 64))) (size!47035 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96290)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408896 (= res!946729 (validKeyInArray!0 (select (arr!46484 a!2901) j!112)))))

(declare-fun res!946731 () Bool)

(assert (=> start!121218 (=> (not res!946731) (not e!797350))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121218 (= res!946731 (validMask!0 mask!2840))))

(assert (=> start!121218 e!797350))

(assert (=> start!121218 true))

(declare-fun array_inv!35429 (array!96290) Bool)

(assert (=> start!121218 (array_inv!35429 a!2901)))

(declare-fun b!1408897 () Bool)

(declare-fun e!797349 () Bool)

(assert (=> b!1408897 (= e!797349 true)))

(declare-datatypes ((SeekEntryResult!10817 0))(
  ( (MissingZero!10817 (index!45644 (_ BitVec 32))) (Found!10817 (index!45645 (_ BitVec 32))) (Intermediate!10817 (undefined!11629 Bool) (index!45646 (_ BitVec 32)) (x!127245 (_ BitVec 32))) (Undefined!10817) (MissingVacant!10817 (index!45647 (_ BitVec 32))) )
))
(declare-fun lt!620491 () SeekEntryResult!10817)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96290 (_ BitVec 32)) SeekEntryResult!10817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408897 (= lt!620491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46484 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46484 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96291 (store (arr!46484 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47035 a!2901)) mask!2840))))

(declare-fun b!1408898 () Bool)

(assert (=> b!1408898 (= e!797350 (not e!797349))))

(declare-fun res!946727 () Bool)

(assert (=> b!1408898 (=> res!946727 e!797349)))

(declare-fun lt!620490 () SeekEntryResult!10817)

(get-info :version)

(assert (=> b!1408898 (= res!946727 (or (not ((_ is Intermediate!10817) lt!620490)) (undefined!11629 lt!620490)))))

(declare-fun e!797351 () Bool)

(assert (=> b!1408898 e!797351))

(declare-fun res!946732 () Bool)

(assert (=> b!1408898 (=> (not res!946732) (not e!797351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96290 (_ BitVec 32)) Bool)

(assert (=> b!1408898 (= res!946732 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47558 0))(
  ( (Unit!47559) )
))
(declare-fun lt!620489 () Unit!47558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47558)

(assert (=> b!1408898 (= lt!620489 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408898 (= lt!620490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46484 a!2901) j!112) mask!2840) (select (arr!46484 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408899 () Bool)

(declare-fun res!946730 () Bool)

(assert (=> b!1408899 (=> (not res!946730) (not e!797350))))

(assert (=> b!1408899 (= res!946730 (and (= (size!47035 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47035 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47035 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408900 () Bool)

(declare-fun res!946728 () Bool)

(assert (=> b!1408900 (=> (not res!946728) (not e!797350))))

(declare-datatypes ((List!33183 0))(
  ( (Nil!33180) (Cons!33179 (h!34442 (_ BitVec 64)) (t!47884 List!33183)) )
))
(declare-fun arrayNoDuplicates!0 (array!96290 (_ BitVec 32) List!33183) Bool)

(assert (=> b!1408900 (= res!946728 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33180))))

(declare-fun b!1408901 () Bool)

(declare-fun res!946734 () Bool)

(assert (=> b!1408901 (=> (not res!946734) (not e!797350))))

(assert (=> b!1408901 (= res!946734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408902 () Bool)

(declare-fun res!946733 () Bool)

(assert (=> b!1408902 (=> (not res!946733) (not e!797350))))

(assert (=> b!1408902 (= res!946733 (validKeyInArray!0 (select (arr!46484 a!2901) i!1037)))))

(declare-fun b!1408903 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96290 (_ BitVec 32)) SeekEntryResult!10817)

(assert (=> b!1408903 (= e!797351 (= (seekEntryOrOpen!0 (select (arr!46484 a!2901) j!112) a!2901 mask!2840) (Found!10817 j!112)))))

(assert (= (and start!121218 res!946731) b!1408899))

(assert (= (and b!1408899 res!946730) b!1408902))

(assert (= (and b!1408902 res!946733) b!1408896))

(assert (= (and b!1408896 res!946729) b!1408901))

(assert (= (and b!1408901 res!946734) b!1408900))

(assert (= (and b!1408900 res!946728) b!1408898))

(assert (= (and b!1408898 res!946732) b!1408903))

(assert (= (and b!1408898 (not res!946727)) b!1408897))

(declare-fun m!1298481 () Bool)

(assert (=> b!1408896 m!1298481))

(assert (=> b!1408896 m!1298481))

(declare-fun m!1298483 () Bool)

(assert (=> b!1408896 m!1298483))

(declare-fun m!1298485 () Bool)

(assert (=> start!121218 m!1298485))

(declare-fun m!1298487 () Bool)

(assert (=> start!121218 m!1298487))

(declare-fun m!1298489 () Bool)

(assert (=> b!1408902 m!1298489))

(assert (=> b!1408902 m!1298489))

(declare-fun m!1298491 () Bool)

(assert (=> b!1408902 m!1298491))

(declare-fun m!1298493 () Bool)

(assert (=> b!1408901 m!1298493))

(assert (=> b!1408898 m!1298481))

(declare-fun m!1298495 () Bool)

(assert (=> b!1408898 m!1298495))

(assert (=> b!1408898 m!1298481))

(declare-fun m!1298497 () Bool)

(assert (=> b!1408898 m!1298497))

(assert (=> b!1408898 m!1298495))

(assert (=> b!1408898 m!1298481))

(declare-fun m!1298499 () Bool)

(assert (=> b!1408898 m!1298499))

(declare-fun m!1298501 () Bool)

(assert (=> b!1408898 m!1298501))

(declare-fun m!1298503 () Bool)

(assert (=> b!1408897 m!1298503))

(declare-fun m!1298505 () Bool)

(assert (=> b!1408897 m!1298505))

(assert (=> b!1408897 m!1298505))

(declare-fun m!1298507 () Bool)

(assert (=> b!1408897 m!1298507))

(assert (=> b!1408897 m!1298507))

(assert (=> b!1408897 m!1298505))

(declare-fun m!1298509 () Bool)

(assert (=> b!1408897 m!1298509))

(declare-fun m!1298511 () Bool)

(assert (=> b!1408900 m!1298511))

(assert (=> b!1408903 m!1298481))

(assert (=> b!1408903 m!1298481))

(declare-fun m!1298513 () Bool)

(assert (=> b!1408903 m!1298513))

(check-sat (not b!1408902) (not b!1408903) (not start!121218) (not b!1408896) (not b!1408897) (not b!1408900) (not b!1408901) (not b!1408898))
