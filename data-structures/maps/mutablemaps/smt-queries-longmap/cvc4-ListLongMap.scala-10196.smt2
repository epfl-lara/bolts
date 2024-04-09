; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120146 () Bool)

(assert start!120146)

(declare-fun b!1398314 () Bool)

(declare-fun res!937341 () Bool)

(declare-fun e!791653 () Bool)

(assert (=> b!1398314 (=> (not res!937341) (not e!791653))))

(declare-datatypes ((array!95593 0))(
  ( (array!95594 (arr!46146 (Array (_ BitVec 32) (_ BitVec 64))) (size!46697 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95593)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95593 (_ BitVec 32)) Bool)

(assert (=> b!1398314 (= res!937341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398315 () Bool)

(declare-fun res!937344 () Bool)

(assert (=> b!1398315 (=> (not res!937344) (not e!791653))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398315 (= res!937344 (validKeyInArray!0 (select (arr!46146 a!2901) j!112)))))

(declare-fun b!1398316 () Bool)

(declare-fun e!791650 () Bool)

(declare-datatypes ((SeekEntryResult!10485 0))(
  ( (MissingZero!10485 (index!44310 (_ BitVec 32))) (Found!10485 (index!44311 (_ BitVec 32))) (Intermediate!10485 (undefined!11297 Bool) (index!44312 (_ BitVec 32)) (x!125958 (_ BitVec 32))) (Undefined!10485) (MissingVacant!10485 (index!44313 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95593 (_ BitVec 32)) SeekEntryResult!10485)

(assert (=> b!1398316 (= e!791650 (= (seekEntryOrOpen!0 (select (arr!46146 a!2901) j!112) a!2901 mask!2840) (Found!10485 j!112)))))

(declare-fun b!1398317 () Bool)

(declare-fun res!937343 () Bool)

(assert (=> b!1398317 (=> (not res!937343) (not e!791653))))

(declare-datatypes ((List!32845 0))(
  ( (Nil!32842) (Cons!32841 (h!34083 (_ BitVec 64)) (t!47546 List!32845)) )
))
(declare-fun arrayNoDuplicates!0 (array!95593 (_ BitVec 32) List!32845) Bool)

(assert (=> b!1398317 (= res!937343 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32842))))

(declare-fun b!1398318 () Bool)

(declare-fun e!791651 () Bool)

(assert (=> b!1398318 (= e!791653 (not e!791651))))

(declare-fun res!937339 () Bool)

(assert (=> b!1398318 (=> res!937339 e!791651)))

(declare-fun lt!614838 () SeekEntryResult!10485)

(assert (=> b!1398318 (= res!937339 (or (not (is-Intermediate!10485 lt!614838)) (undefined!11297 lt!614838)))))

(assert (=> b!1398318 e!791650))

(declare-fun res!937338 () Bool)

(assert (=> b!1398318 (=> (not res!937338) (not e!791650))))

(assert (=> b!1398318 (= res!937338 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46924 0))(
  ( (Unit!46925) )
))
(declare-fun lt!614840 () Unit!46924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46924)

(assert (=> b!1398318 (= lt!614840 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614839 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95593 (_ BitVec 32)) SeekEntryResult!10485)

(assert (=> b!1398318 (= lt!614838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614839 (select (arr!46146 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398318 (= lt!614839 (toIndex!0 (select (arr!46146 a!2901) j!112) mask!2840))))

(declare-fun b!1398319 () Bool)

(declare-fun res!937336 () Bool)

(assert (=> b!1398319 (=> (not res!937336) (not e!791653))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398319 (= res!937336 (validKeyInArray!0 (select (arr!46146 a!2901) i!1037)))))

(declare-fun b!1398320 () Bool)

(declare-fun res!937340 () Bool)

(assert (=> b!1398320 (=> (not res!937340) (not e!791653))))

(assert (=> b!1398320 (= res!937340 (and (= (size!46697 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46697 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46697 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937342 () Bool)

(assert (=> start!120146 (=> (not res!937342) (not e!791653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120146 (= res!937342 (validMask!0 mask!2840))))

(assert (=> start!120146 e!791653))

(assert (=> start!120146 true))

(declare-fun array_inv!35091 (array!95593) Bool)

(assert (=> start!120146 (array_inv!35091 a!2901)))

(declare-fun b!1398321 () Bool)

(declare-fun e!791652 () Bool)

(assert (=> b!1398321 (= e!791652 true)))

(declare-fun lt!614842 () SeekEntryResult!10485)

(assert (=> b!1398321 (and (not (undefined!11297 lt!614842)) (= (index!44312 lt!614842) i!1037) (bvslt (x!125958 lt!614842) (x!125958 lt!614838)) (= (select (store (arr!46146 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44312 lt!614842)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614841 () Unit!46924)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46924)

(assert (=> b!1398321 (= lt!614841 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614839 (x!125958 lt!614838) (index!44312 lt!614838) (x!125958 lt!614842) (index!44312 lt!614842) (undefined!11297 lt!614842) mask!2840))))

(declare-fun b!1398322 () Bool)

(assert (=> b!1398322 (= e!791651 e!791652)))

(declare-fun res!937337 () Bool)

(assert (=> b!1398322 (=> res!937337 e!791652)))

(assert (=> b!1398322 (= res!937337 (or (= lt!614838 lt!614842) (not (is-Intermediate!10485 lt!614842))))))

(declare-fun lt!614837 () (_ BitVec 64))

(assert (=> b!1398322 (= lt!614842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614837 mask!2840) lt!614837 (array!95594 (store (arr!46146 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46697 a!2901)) mask!2840))))

(assert (=> b!1398322 (= lt!614837 (select (store (arr!46146 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (= (and start!120146 res!937342) b!1398320))

(assert (= (and b!1398320 res!937340) b!1398319))

(assert (= (and b!1398319 res!937336) b!1398315))

(assert (= (and b!1398315 res!937344) b!1398314))

(assert (= (and b!1398314 res!937341) b!1398317))

(assert (= (and b!1398317 res!937343) b!1398318))

(assert (= (and b!1398318 res!937338) b!1398316))

(assert (= (and b!1398318 (not res!937339)) b!1398322))

(assert (= (and b!1398322 (not res!937337)) b!1398321))

(declare-fun m!1285485 () Bool)

(assert (=> b!1398314 m!1285485))

(declare-fun m!1285487 () Bool)

(assert (=> b!1398317 m!1285487))

(declare-fun m!1285489 () Bool)

(assert (=> b!1398319 m!1285489))

(assert (=> b!1398319 m!1285489))

(declare-fun m!1285491 () Bool)

(assert (=> b!1398319 m!1285491))

(declare-fun m!1285493 () Bool)

(assert (=> b!1398316 m!1285493))

(assert (=> b!1398316 m!1285493))

(declare-fun m!1285495 () Bool)

(assert (=> b!1398316 m!1285495))

(declare-fun m!1285497 () Bool)

(assert (=> b!1398321 m!1285497))

(declare-fun m!1285499 () Bool)

(assert (=> b!1398321 m!1285499))

(declare-fun m!1285501 () Bool)

(assert (=> b!1398321 m!1285501))

(assert (=> b!1398318 m!1285493))

(declare-fun m!1285503 () Bool)

(assert (=> b!1398318 m!1285503))

(assert (=> b!1398318 m!1285493))

(declare-fun m!1285505 () Bool)

(assert (=> b!1398318 m!1285505))

(assert (=> b!1398318 m!1285493))

(declare-fun m!1285507 () Bool)

(assert (=> b!1398318 m!1285507))

(declare-fun m!1285509 () Bool)

(assert (=> b!1398318 m!1285509))

(assert (=> b!1398315 m!1285493))

(assert (=> b!1398315 m!1285493))

(declare-fun m!1285511 () Bool)

(assert (=> b!1398315 m!1285511))

(declare-fun m!1285513 () Bool)

(assert (=> b!1398322 m!1285513))

(assert (=> b!1398322 m!1285497))

(assert (=> b!1398322 m!1285513))

(declare-fun m!1285515 () Bool)

(assert (=> b!1398322 m!1285515))

(declare-fun m!1285517 () Bool)

(assert (=> b!1398322 m!1285517))

(declare-fun m!1285519 () Bool)

(assert (=> start!120146 m!1285519))

(declare-fun m!1285521 () Bool)

(assert (=> start!120146 m!1285521))

(push 1)

