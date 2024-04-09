; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120140 () Bool)

(assert start!120140)

(declare-fun b!1398232 () Bool)

(declare-fun res!937259 () Bool)

(declare-fun e!791607 () Bool)

(assert (=> b!1398232 (=> (not res!937259) (not e!791607))))

(declare-datatypes ((array!95587 0))(
  ( (array!95588 (arr!46143 (Array (_ BitVec 32) (_ BitVec 64))) (size!46694 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95587)

(declare-datatypes ((List!32842 0))(
  ( (Nil!32839) (Cons!32838 (h!34080 (_ BitVec 64)) (t!47543 List!32842)) )
))
(declare-fun arrayNoDuplicates!0 (array!95587 (_ BitVec 32) List!32842) Bool)

(assert (=> b!1398232 (= res!937259 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32839))))

(declare-fun b!1398233 () Bool)

(declare-fun e!791605 () Bool)

(assert (=> b!1398233 (= e!791607 (not e!791605))))

(declare-fun res!937263 () Bool)

(assert (=> b!1398233 (=> res!937263 e!791605)))

(declare-datatypes ((SeekEntryResult!10482 0))(
  ( (MissingZero!10482 (index!44298 (_ BitVec 32))) (Found!10482 (index!44299 (_ BitVec 32))) (Intermediate!10482 (undefined!11294 Bool) (index!44300 (_ BitVec 32)) (x!125947 (_ BitVec 32))) (Undefined!10482) (MissingVacant!10482 (index!44301 (_ BitVec 32))) )
))
(declare-fun lt!614786 () SeekEntryResult!10482)

(assert (=> b!1398233 (= res!937263 (or (not (is-Intermediate!10482 lt!614786)) (undefined!11294 lt!614786)))))

(declare-fun e!791609 () Bool)

(assert (=> b!1398233 e!791609))

(declare-fun res!937262 () Bool)

(assert (=> b!1398233 (=> (not res!937262) (not e!791609))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95587 (_ BitVec 32)) Bool)

(assert (=> b!1398233 (= res!937262 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46918 0))(
  ( (Unit!46919) )
))
(declare-fun lt!614788 () Unit!46918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46918)

(assert (=> b!1398233 (= lt!614788 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614787 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95587 (_ BitVec 32)) SeekEntryResult!10482)

(assert (=> b!1398233 (= lt!614786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614787 (select (arr!46143 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398233 (= lt!614787 (toIndex!0 (select (arr!46143 a!2901) j!112) mask!2840))))

(declare-fun b!1398234 () Bool)

(declare-fun res!937254 () Bool)

(assert (=> b!1398234 (=> (not res!937254) (not e!791607))))

(assert (=> b!1398234 (= res!937254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398235 () Bool)

(declare-fun e!791606 () Bool)

(declare-fun e!791608 () Bool)

(assert (=> b!1398235 (= e!791606 e!791608)))

(declare-fun res!937261 () Bool)

(assert (=> b!1398235 (=> res!937261 e!791608)))

(assert (=> b!1398235 (= res!937261 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!614783 () SeekEntryResult!10482)

(assert (=> b!1398235 (and (not (undefined!11294 lt!614783)) (= (index!44300 lt!614783) i!1037) (bvslt (x!125947 lt!614783) (x!125947 lt!614786)) (= (select (store (arr!46143 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44300 lt!614783)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614784 () Unit!46918)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46918)

(assert (=> b!1398235 (= lt!614784 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614787 (x!125947 lt!614786) (index!44300 lt!614786) (x!125947 lt!614783) (index!44300 lt!614783) (undefined!11294 lt!614783) mask!2840))))

(declare-fun b!1398237 () Bool)

(declare-fun res!937260 () Bool)

(assert (=> b!1398237 (=> (not res!937260) (not e!791607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398237 (= res!937260 (validKeyInArray!0 (select (arr!46143 a!2901) j!112)))))

(declare-fun b!1398238 () Bool)

(declare-fun res!937256 () Bool)

(assert (=> b!1398238 (=> (not res!937256) (not e!791607))))

(assert (=> b!1398238 (= res!937256 (and (= (size!46694 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46694 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46694 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398239 () Bool)

(declare-fun lt!614785 () (_ BitVec 64))

(assert (=> b!1398239 (= e!791608 (validKeyInArray!0 lt!614785))))

(declare-fun b!1398236 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95587 (_ BitVec 32)) SeekEntryResult!10482)

(assert (=> b!1398236 (= e!791609 (= (seekEntryOrOpen!0 (select (arr!46143 a!2901) j!112) a!2901 mask!2840) (Found!10482 j!112)))))

(declare-fun res!937255 () Bool)

(assert (=> start!120140 (=> (not res!937255) (not e!791607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120140 (= res!937255 (validMask!0 mask!2840))))

(assert (=> start!120140 e!791607))

(assert (=> start!120140 true))

(declare-fun array_inv!35088 (array!95587) Bool)

(assert (=> start!120140 (array_inv!35088 a!2901)))

(declare-fun b!1398240 () Bool)

(assert (=> b!1398240 (= e!791605 e!791606)))

(declare-fun res!937258 () Bool)

(assert (=> b!1398240 (=> res!937258 e!791606)))

(assert (=> b!1398240 (= res!937258 (or (= lt!614786 lt!614783) (not (is-Intermediate!10482 lt!614783))))))

(assert (=> b!1398240 (= lt!614783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614785 mask!2840) lt!614785 (array!95588 (store (arr!46143 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46694 a!2901)) mask!2840))))

(assert (=> b!1398240 (= lt!614785 (select (store (arr!46143 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398241 () Bool)

(declare-fun res!937257 () Bool)

(assert (=> b!1398241 (=> (not res!937257) (not e!791607))))

(assert (=> b!1398241 (= res!937257 (validKeyInArray!0 (select (arr!46143 a!2901) i!1037)))))

(assert (= (and start!120140 res!937255) b!1398238))

(assert (= (and b!1398238 res!937256) b!1398241))

(assert (= (and b!1398241 res!937257) b!1398237))

(assert (= (and b!1398237 res!937260) b!1398234))

(assert (= (and b!1398234 res!937254) b!1398232))

(assert (= (and b!1398232 res!937259) b!1398233))

(assert (= (and b!1398233 res!937262) b!1398236))

(assert (= (and b!1398233 (not res!937263)) b!1398240))

(assert (= (and b!1398240 (not res!937258)) b!1398235))

(assert (= (and b!1398235 (not res!937261)) b!1398239))

(declare-fun m!1285369 () Bool)

(assert (=> b!1398235 m!1285369))

(declare-fun m!1285371 () Bool)

(assert (=> b!1398235 m!1285371))

(declare-fun m!1285373 () Bool)

(assert (=> b!1398235 m!1285373))

(declare-fun m!1285375 () Bool)

(assert (=> b!1398239 m!1285375))

(declare-fun m!1285377 () Bool)

(assert (=> b!1398236 m!1285377))

(assert (=> b!1398236 m!1285377))

(declare-fun m!1285379 () Bool)

(assert (=> b!1398236 m!1285379))

(declare-fun m!1285381 () Bool)

(assert (=> b!1398232 m!1285381))

(declare-fun m!1285383 () Bool)

(assert (=> b!1398234 m!1285383))

(declare-fun m!1285385 () Bool)

(assert (=> b!1398240 m!1285385))

(assert (=> b!1398240 m!1285369))

(assert (=> b!1398240 m!1285385))

(declare-fun m!1285387 () Bool)

(assert (=> b!1398240 m!1285387))

(declare-fun m!1285389 () Bool)

(assert (=> b!1398240 m!1285389))

(declare-fun m!1285391 () Bool)

(assert (=> start!120140 m!1285391))

(declare-fun m!1285393 () Bool)

(assert (=> start!120140 m!1285393))

(assert (=> b!1398237 m!1285377))

(assert (=> b!1398237 m!1285377))

(declare-fun m!1285395 () Bool)

(assert (=> b!1398237 m!1285395))

(declare-fun m!1285397 () Bool)

(assert (=> b!1398241 m!1285397))

(assert (=> b!1398241 m!1285397))

(declare-fun m!1285399 () Bool)

(assert (=> b!1398241 m!1285399))

(assert (=> b!1398233 m!1285377))

(declare-fun m!1285401 () Bool)

(assert (=> b!1398233 m!1285401))

(assert (=> b!1398233 m!1285377))

(assert (=> b!1398233 m!1285377))

(declare-fun m!1285403 () Bool)

(assert (=> b!1398233 m!1285403))

(declare-fun m!1285405 () Bool)

(assert (=> b!1398233 m!1285405))

(declare-fun m!1285407 () Bool)

(assert (=> b!1398233 m!1285407))

(push 1)

