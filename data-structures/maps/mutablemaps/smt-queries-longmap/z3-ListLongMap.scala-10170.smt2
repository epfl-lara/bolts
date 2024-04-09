; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119934 () Bool)

(assert start!119934)

(declare-fun b!1395930 () Bool)

(declare-fun res!935117 () Bool)

(declare-fun e!790311 () Bool)

(assert (=> b!1395930 (=> (not res!935117) (not e!790311))))

(declare-datatypes ((array!95432 0))(
  ( (array!95433 (arr!46067 (Array (_ BitVec 32) (_ BitVec 64))) (size!46618 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95432)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395930 (= res!935117 (validKeyInArray!0 (select (arr!46067 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!790312 () Bool)

(declare-fun b!1395931 () Bool)

(declare-datatypes ((SeekEntryResult!10406 0))(
  ( (MissingZero!10406 (index!43994 (_ BitVec 32))) (Found!10406 (index!43995 (_ BitVec 32))) (Intermediate!10406 (undefined!11218 Bool) (index!43996 (_ BitVec 32)) (x!125665 (_ BitVec 32))) (Undefined!10406) (MissingVacant!10406 (index!43997 (_ BitVec 32))) )
))
(declare-fun lt!613154 () SeekEntryResult!10406)

(declare-fun lt!613155 () SeekEntryResult!10406)

(get-info :version)

(assert (=> b!1395931 (= e!790312 (or (= lt!613155 lt!613154) (not ((_ is Intermediate!10406) lt!613154)) (bvsge mask!2840 #b00000000000000000000000000000000)))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95432 (_ BitVec 32)) SeekEntryResult!10406)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395931 (= lt!613154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46067 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46067 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95433 (store (arr!46067 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46618 a!2901)) mask!2840))))

(declare-fun b!1395932 () Bool)

(declare-fun res!935124 () Bool)

(assert (=> b!1395932 (=> (not res!935124) (not e!790311))))

(assert (=> b!1395932 (= res!935124 (and (= (size!46618 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46618 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46618 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!935123 () Bool)

(assert (=> start!119934 (=> (not res!935123) (not e!790311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119934 (= res!935123 (validMask!0 mask!2840))))

(assert (=> start!119934 e!790311))

(assert (=> start!119934 true))

(declare-fun array_inv!35012 (array!95432) Bool)

(assert (=> start!119934 (array_inv!35012 a!2901)))

(declare-fun b!1395933 () Bool)

(declare-fun res!935119 () Bool)

(assert (=> b!1395933 (=> (not res!935119) (not e!790311))))

(declare-datatypes ((List!32766 0))(
  ( (Nil!32763) (Cons!32762 (h!34001 (_ BitVec 64)) (t!47467 List!32766)) )
))
(declare-fun arrayNoDuplicates!0 (array!95432 (_ BitVec 32) List!32766) Bool)

(assert (=> b!1395933 (= res!935119 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32763))))

(declare-fun b!1395934 () Bool)

(declare-fun res!935120 () Bool)

(assert (=> b!1395934 (=> (not res!935120) (not e!790311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95432 (_ BitVec 32)) Bool)

(assert (=> b!1395934 (= res!935120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395935 () Bool)

(declare-fun res!935122 () Bool)

(assert (=> b!1395935 (=> (not res!935122) (not e!790311))))

(assert (=> b!1395935 (= res!935122 (validKeyInArray!0 (select (arr!46067 a!2901) i!1037)))))

(declare-fun b!1395936 () Bool)

(assert (=> b!1395936 (= e!790311 (not e!790312))))

(declare-fun res!935121 () Bool)

(assert (=> b!1395936 (=> res!935121 e!790312)))

(assert (=> b!1395936 (= res!935121 (or (not ((_ is Intermediate!10406) lt!613155)) (undefined!11218 lt!613155)))))

(declare-fun e!790313 () Bool)

(assert (=> b!1395936 e!790313))

(declare-fun res!935118 () Bool)

(assert (=> b!1395936 (=> (not res!935118) (not e!790313))))

(assert (=> b!1395936 (= res!935118 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46766 0))(
  ( (Unit!46767) )
))
(declare-fun lt!613156 () Unit!46766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46766)

(assert (=> b!1395936 (= lt!613156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395936 (= lt!613155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46067 a!2901) j!112) mask!2840) (select (arr!46067 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395937 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95432 (_ BitVec 32)) SeekEntryResult!10406)

(assert (=> b!1395937 (= e!790313 (= (seekEntryOrOpen!0 (select (arr!46067 a!2901) j!112) a!2901 mask!2840) (Found!10406 j!112)))))

(assert (= (and start!119934 res!935123) b!1395932))

(assert (= (and b!1395932 res!935124) b!1395935))

(assert (= (and b!1395935 res!935122) b!1395930))

(assert (= (and b!1395930 res!935117) b!1395934))

(assert (= (and b!1395934 res!935120) b!1395933))

(assert (= (and b!1395933 res!935119) b!1395936))

(assert (= (and b!1395936 res!935118) b!1395937))

(assert (= (and b!1395936 (not res!935121)) b!1395931))

(declare-fun m!1282467 () Bool)

(assert (=> b!1395936 m!1282467))

(declare-fun m!1282469 () Bool)

(assert (=> b!1395936 m!1282469))

(assert (=> b!1395936 m!1282467))

(declare-fun m!1282471 () Bool)

(assert (=> b!1395936 m!1282471))

(assert (=> b!1395936 m!1282469))

(assert (=> b!1395936 m!1282467))

(declare-fun m!1282473 () Bool)

(assert (=> b!1395936 m!1282473))

(declare-fun m!1282475 () Bool)

(assert (=> b!1395936 m!1282475))

(declare-fun m!1282477 () Bool)

(assert (=> b!1395931 m!1282477))

(declare-fun m!1282479 () Bool)

(assert (=> b!1395931 m!1282479))

(assert (=> b!1395931 m!1282479))

(declare-fun m!1282481 () Bool)

(assert (=> b!1395931 m!1282481))

(assert (=> b!1395931 m!1282481))

(assert (=> b!1395931 m!1282479))

(declare-fun m!1282483 () Bool)

(assert (=> b!1395931 m!1282483))

(declare-fun m!1282485 () Bool)

(assert (=> start!119934 m!1282485))

(declare-fun m!1282487 () Bool)

(assert (=> start!119934 m!1282487))

(declare-fun m!1282489 () Bool)

(assert (=> b!1395933 m!1282489))

(declare-fun m!1282491 () Bool)

(assert (=> b!1395935 m!1282491))

(assert (=> b!1395935 m!1282491))

(declare-fun m!1282493 () Bool)

(assert (=> b!1395935 m!1282493))

(assert (=> b!1395937 m!1282467))

(assert (=> b!1395937 m!1282467))

(declare-fun m!1282495 () Bool)

(assert (=> b!1395937 m!1282495))

(declare-fun m!1282497 () Bool)

(assert (=> b!1395934 m!1282497))

(assert (=> b!1395930 m!1282467))

(assert (=> b!1395930 m!1282467))

(declare-fun m!1282499 () Bool)

(assert (=> b!1395930 m!1282499))

(check-sat (not b!1395937) (not b!1395934) (not b!1395935) (not b!1395936) (not b!1395930) (not b!1395931) (not b!1395933) (not start!119934))
(check-sat)
