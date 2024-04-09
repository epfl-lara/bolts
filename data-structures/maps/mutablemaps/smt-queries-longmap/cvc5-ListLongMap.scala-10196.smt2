; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120142 () Bool)

(assert start!120142)

(declare-fun e!791623 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95589 0))(
  ( (array!95590 (arr!46144 (Array (_ BitVec 32) (_ BitVec 64))) (size!46695 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95589)

(declare-fun b!1398260 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10483 0))(
  ( (MissingZero!10483 (index!44302 (_ BitVec 32))) (Found!10483 (index!44303 (_ BitVec 32))) (Intermediate!10483 (undefined!11295 Bool) (index!44304 (_ BitVec 32)) (x!125956 (_ BitVec 32))) (Undefined!10483) (MissingVacant!10483 (index!44305 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95589 (_ BitVec 32)) SeekEntryResult!10483)

(assert (=> b!1398260 (= e!791623 (= (seekEntryOrOpen!0 (select (arr!46144 a!2901) j!112) a!2901 mask!2840) (Found!10483 j!112)))))

(declare-fun b!1398261 () Bool)

(declare-fun res!937283 () Bool)

(declare-fun e!791622 () Bool)

(assert (=> b!1398261 (=> (not res!937283) (not e!791622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95589 (_ BitVec 32)) Bool)

(assert (=> b!1398261 (= res!937283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398262 () Bool)

(declare-fun e!791620 () Bool)

(declare-fun e!791624 () Bool)

(assert (=> b!1398262 (= e!791620 e!791624)))

(declare-fun res!937289 () Bool)

(assert (=> b!1398262 (=> res!937289 e!791624)))

(declare-fun lt!614805 () SeekEntryResult!10483)

(declare-fun lt!614801 () SeekEntryResult!10483)

(assert (=> b!1398262 (= res!937289 (or (= lt!614805 lt!614801) (not (is-Intermediate!10483 lt!614801))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!614802 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95589 (_ BitVec 32)) SeekEntryResult!10483)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398262 (= lt!614801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614802 mask!2840) lt!614802 (array!95590 (store (arr!46144 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46695 a!2901)) mask!2840))))

(assert (=> b!1398262 (= lt!614802 (select (store (arr!46144 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398264 () Bool)

(assert (=> b!1398264 (= e!791624 true)))

(assert (=> b!1398264 (and (not (undefined!11295 lt!614801)) (= (index!44304 lt!614801) i!1037) (bvslt (x!125956 lt!614801) (x!125956 lt!614805)) (= (select (store (arr!46144 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44304 lt!614801)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614806 () (_ BitVec 32))

(declare-datatypes ((Unit!46920 0))(
  ( (Unit!46921) )
))
(declare-fun lt!614803 () Unit!46920)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46920)

(assert (=> b!1398264 (= lt!614803 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614806 (x!125956 lt!614805) (index!44304 lt!614805) (x!125956 lt!614801) (index!44304 lt!614801) (undefined!11295 lt!614801) mask!2840))))

(declare-fun b!1398265 () Bool)

(assert (=> b!1398265 (= e!791622 (not e!791620))))

(declare-fun res!937282 () Bool)

(assert (=> b!1398265 (=> res!937282 e!791620)))

(assert (=> b!1398265 (= res!937282 (or (not (is-Intermediate!10483 lt!614805)) (undefined!11295 lt!614805)))))

(assert (=> b!1398265 e!791623))

(declare-fun res!937290 () Bool)

(assert (=> b!1398265 (=> (not res!937290) (not e!791623))))

(assert (=> b!1398265 (= res!937290 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614804 () Unit!46920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46920)

(assert (=> b!1398265 (= lt!614804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398265 (= lt!614805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614806 (select (arr!46144 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398265 (= lt!614806 (toIndex!0 (select (arr!46144 a!2901) j!112) mask!2840))))

(declare-fun b!1398266 () Bool)

(declare-fun res!937286 () Bool)

(assert (=> b!1398266 (=> (not res!937286) (not e!791622))))

(assert (=> b!1398266 (= res!937286 (and (= (size!46695 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46695 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46695 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398267 () Bool)

(declare-fun res!937285 () Bool)

(assert (=> b!1398267 (=> (not res!937285) (not e!791622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398267 (= res!937285 (validKeyInArray!0 (select (arr!46144 a!2901) i!1037)))))

(declare-fun b!1398268 () Bool)

(declare-fun res!937284 () Bool)

(assert (=> b!1398268 (=> (not res!937284) (not e!791622))))

(declare-datatypes ((List!32843 0))(
  ( (Nil!32840) (Cons!32839 (h!34081 (_ BitVec 64)) (t!47544 List!32843)) )
))
(declare-fun arrayNoDuplicates!0 (array!95589 (_ BitVec 32) List!32843) Bool)

(assert (=> b!1398268 (= res!937284 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32840))))

(declare-fun b!1398263 () Bool)

(declare-fun res!937288 () Bool)

(assert (=> b!1398263 (=> (not res!937288) (not e!791622))))

(assert (=> b!1398263 (= res!937288 (validKeyInArray!0 (select (arr!46144 a!2901) j!112)))))

(declare-fun res!937287 () Bool)

(assert (=> start!120142 (=> (not res!937287) (not e!791622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120142 (= res!937287 (validMask!0 mask!2840))))

(assert (=> start!120142 e!791622))

(assert (=> start!120142 true))

(declare-fun array_inv!35089 (array!95589) Bool)

(assert (=> start!120142 (array_inv!35089 a!2901)))

(assert (= (and start!120142 res!937287) b!1398266))

(assert (= (and b!1398266 res!937286) b!1398267))

(assert (= (and b!1398267 res!937285) b!1398263))

(assert (= (and b!1398263 res!937288) b!1398261))

(assert (= (and b!1398261 res!937283) b!1398268))

(assert (= (and b!1398268 res!937284) b!1398265))

(assert (= (and b!1398265 res!937290) b!1398260))

(assert (= (and b!1398265 (not res!937282)) b!1398262))

(assert (= (and b!1398262 (not res!937289)) b!1398264))

(declare-fun m!1285409 () Bool)

(assert (=> b!1398264 m!1285409))

(declare-fun m!1285411 () Bool)

(assert (=> b!1398264 m!1285411))

(declare-fun m!1285413 () Bool)

(assert (=> b!1398264 m!1285413))

(declare-fun m!1285415 () Bool)

(assert (=> b!1398262 m!1285415))

(assert (=> b!1398262 m!1285409))

(assert (=> b!1398262 m!1285415))

(declare-fun m!1285417 () Bool)

(assert (=> b!1398262 m!1285417))

(declare-fun m!1285419 () Bool)

(assert (=> b!1398262 m!1285419))

(declare-fun m!1285421 () Bool)

(assert (=> b!1398263 m!1285421))

(assert (=> b!1398263 m!1285421))

(declare-fun m!1285423 () Bool)

(assert (=> b!1398263 m!1285423))

(declare-fun m!1285425 () Bool)

(assert (=> b!1398267 m!1285425))

(assert (=> b!1398267 m!1285425))

(declare-fun m!1285427 () Bool)

(assert (=> b!1398267 m!1285427))

(declare-fun m!1285429 () Bool)

(assert (=> b!1398261 m!1285429))

(assert (=> b!1398260 m!1285421))

(assert (=> b!1398260 m!1285421))

(declare-fun m!1285431 () Bool)

(assert (=> b!1398260 m!1285431))

(declare-fun m!1285433 () Bool)

(assert (=> b!1398268 m!1285433))

(declare-fun m!1285435 () Bool)

(assert (=> start!120142 m!1285435))

(declare-fun m!1285437 () Bool)

(assert (=> start!120142 m!1285437))

(assert (=> b!1398265 m!1285421))

(declare-fun m!1285439 () Bool)

(assert (=> b!1398265 m!1285439))

(assert (=> b!1398265 m!1285421))

(declare-fun m!1285441 () Bool)

(assert (=> b!1398265 m!1285441))

(declare-fun m!1285443 () Bool)

(assert (=> b!1398265 m!1285443))

(assert (=> b!1398265 m!1285421))

(declare-fun m!1285445 () Bool)

(assert (=> b!1398265 m!1285445))

(push 1)

