; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120150 () Bool)

(assert start!120150)

(declare-fun b!1398368 () Bool)

(declare-fun res!937395 () Bool)

(declare-fun e!791680 () Bool)

(assert (=> b!1398368 (=> (not res!937395) (not e!791680))))

(declare-datatypes ((array!95597 0))(
  ( (array!95598 (arr!46148 (Array (_ BitVec 32) (_ BitVec 64))) (size!46699 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95597)

(declare-datatypes ((List!32847 0))(
  ( (Nil!32844) (Cons!32843 (h!34085 (_ BitVec 64)) (t!47548 List!32847)) )
))
(declare-fun arrayNoDuplicates!0 (array!95597 (_ BitVec 32) List!32847) Bool)

(assert (=> b!1398368 (= res!937395 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32844))))

(declare-fun b!1398369 () Bool)

(declare-fun res!937396 () Bool)

(assert (=> b!1398369 (=> (not res!937396) (not e!791680))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398369 (= res!937396 (validKeyInArray!0 (select (arr!46148 a!2901) i!1037)))))

(declare-fun b!1398370 () Bool)

(declare-fun res!937390 () Bool)

(assert (=> b!1398370 (=> (not res!937390) (not e!791680))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398370 (= res!937390 (validKeyInArray!0 (select (arr!46148 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1398371 () Bool)

(declare-fun e!791683 () Bool)

(declare-datatypes ((SeekEntryResult!10487 0))(
  ( (MissingZero!10487 (index!44318 (_ BitVec 32))) (Found!10487 (index!44319 (_ BitVec 32))) (Intermediate!10487 (undefined!11299 Bool) (index!44320 (_ BitVec 32)) (x!125968 (_ BitVec 32))) (Undefined!10487) (MissingVacant!10487 (index!44321 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95597 (_ BitVec 32)) SeekEntryResult!10487)

(assert (=> b!1398371 (= e!791683 (= (seekEntryOrOpen!0 (select (arr!46148 a!2901) j!112) a!2901 mask!2840) (Found!10487 j!112)))))

(declare-fun res!937398 () Bool)

(assert (=> start!120150 (=> (not res!937398) (not e!791680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120150 (= res!937398 (validMask!0 mask!2840))))

(assert (=> start!120150 e!791680))

(assert (=> start!120150 true))

(declare-fun array_inv!35093 (array!95597) Bool)

(assert (=> start!120150 (array_inv!35093 a!2901)))

(declare-fun b!1398372 () Bool)

(declare-fun e!791684 () Bool)

(assert (=> b!1398372 (= e!791680 (not e!791684))))

(declare-fun res!937397 () Bool)

(assert (=> b!1398372 (=> res!937397 e!791684)))

(declare-fun lt!614875 () SeekEntryResult!10487)

(get-info :version)

(assert (=> b!1398372 (= res!937397 (or (not ((_ is Intermediate!10487) lt!614875)) (undefined!11299 lt!614875)))))

(assert (=> b!1398372 e!791683))

(declare-fun res!937393 () Bool)

(assert (=> b!1398372 (=> (not res!937393) (not e!791683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95597 (_ BitVec 32)) Bool)

(assert (=> b!1398372 (= res!937393 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46928 0))(
  ( (Unit!46929) )
))
(declare-fun lt!614878 () Unit!46928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46928)

(assert (=> b!1398372 (= lt!614878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614873 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95597 (_ BitVec 32)) SeekEntryResult!10487)

(assert (=> b!1398372 (= lt!614875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614873 (select (arr!46148 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398372 (= lt!614873 (toIndex!0 (select (arr!46148 a!2901) j!112) mask!2840))))

(declare-fun b!1398373 () Bool)

(declare-fun e!791681 () Bool)

(assert (=> b!1398373 (= e!791684 e!791681)))

(declare-fun res!937391 () Bool)

(assert (=> b!1398373 (=> res!937391 e!791681)))

(declare-fun lt!614877 () SeekEntryResult!10487)

(assert (=> b!1398373 (= res!937391 (or (= lt!614875 lt!614877) (not ((_ is Intermediate!10487) lt!614877))))))

(declare-fun lt!614874 () (_ BitVec 64))

(assert (=> b!1398373 (= lt!614877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614874 mask!2840) lt!614874 (array!95598 (store (arr!46148 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46699 a!2901)) mask!2840))))

(assert (=> b!1398373 (= lt!614874 (select (store (arr!46148 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398374 () Bool)

(declare-fun res!937392 () Bool)

(assert (=> b!1398374 (=> (not res!937392) (not e!791680))))

(assert (=> b!1398374 (= res!937392 (and (= (size!46699 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46699 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46699 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398375 () Bool)

(assert (=> b!1398375 (= e!791681 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398375 (and (not (undefined!11299 lt!614877)) (= (index!44320 lt!614877) i!1037) (bvslt (x!125968 lt!614877) (x!125968 lt!614875)) (= (select (store (arr!46148 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44320 lt!614877)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614876 () Unit!46928)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46928)

(assert (=> b!1398375 (= lt!614876 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614873 (x!125968 lt!614875) (index!44320 lt!614875) (x!125968 lt!614877) (index!44320 lt!614877) (undefined!11299 lt!614877) mask!2840))))

(declare-fun b!1398376 () Bool)

(declare-fun res!937394 () Bool)

(assert (=> b!1398376 (=> (not res!937394) (not e!791680))))

(assert (=> b!1398376 (= res!937394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120150 res!937398) b!1398374))

(assert (= (and b!1398374 res!937392) b!1398369))

(assert (= (and b!1398369 res!937396) b!1398370))

(assert (= (and b!1398370 res!937390) b!1398376))

(assert (= (and b!1398376 res!937394) b!1398368))

(assert (= (and b!1398368 res!937395) b!1398372))

(assert (= (and b!1398372 res!937393) b!1398371))

(assert (= (and b!1398372 (not res!937397)) b!1398373))

(assert (= (and b!1398373 (not res!937391)) b!1398375))

(declare-fun m!1285561 () Bool)

(assert (=> b!1398373 m!1285561))

(declare-fun m!1285563 () Bool)

(assert (=> b!1398373 m!1285563))

(assert (=> b!1398373 m!1285561))

(declare-fun m!1285565 () Bool)

(assert (=> b!1398373 m!1285565))

(declare-fun m!1285567 () Bool)

(assert (=> b!1398373 m!1285567))

(declare-fun m!1285569 () Bool)

(assert (=> b!1398376 m!1285569))

(declare-fun m!1285571 () Bool)

(assert (=> b!1398372 m!1285571))

(declare-fun m!1285573 () Bool)

(assert (=> b!1398372 m!1285573))

(assert (=> b!1398372 m!1285571))

(declare-fun m!1285575 () Bool)

(assert (=> b!1398372 m!1285575))

(declare-fun m!1285577 () Bool)

(assert (=> b!1398372 m!1285577))

(assert (=> b!1398372 m!1285571))

(declare-fun m!1285579 () Bool)

(assert (=> b!1398372 m!1285579))

(assert (=> b!1398370 m!1285571))

(assert (=> b!1398370 m!1285571))

(declare-fun m!1285581 () Bool)

(assert (=> b!1398370 m!1285581))

(assert (=> b!1398375 m!1285563))

(declare-fun m!1285583 () Bool)

(assert (=> b!1398375 m!1285583))

(declare-fun m!1285585 () Bool)

(assert (=> b!1398375 m!1285585))

(declare-fun m!1285587 () Bool)

(assert (=> b!1398368 m!1285587))

(assert (=> b!1398371 m!1285571))

(assert (=> b!1398371 m!1285571))

(declare-fun m!1285589 () Bool)

(assert (=> b!1398371 m!1285589))

(declare-fun m!1285591 () Bool)

(assert (=> start!120150 m!1285591))

(declare-fun m!1285593 () Bool)

(assert (=> start!120150 m!1285593))

(declare-fun m!1285595 () Bool)

(assert (=> b!1398369 m!1285595))

(assert (=> b!1398369 m!1285595))

(declare-fun m!1285597 () Bool)

(assert (=> b!1398369 m!1285597))

(check-sat (not b!1398368) (not b!1398371) (not b!1398370) (not b!1398372) (not b!1398369) (not b!1398373) (not start!120150) (not b!1398376) (not b!1398375))
(check-sat)
