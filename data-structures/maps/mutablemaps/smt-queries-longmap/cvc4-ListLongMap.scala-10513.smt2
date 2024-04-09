; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123938 () Bool)

(assert start!123938)

(declare-fun b!1435758 () Bool)

(declare-fun res!968873 () Bool)

(declare-fun e!810281 () Bool)

(assert (=> b!1435758 (=> (not res!968873) (not e!810281))))

(declare-datatypes ((array!97600 0))(
  ( (array!97601 (arr!47097 (Array (_ BitVec 32) (_ BitVec 64))) (size!47648 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97600)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435758 (= res!968873 (validKeyInArray!0 (select (arr!47097 a!2862) j!93)))))

(declare-fun res!968876 () Bool)

(assert (=> start!123938 (=> (not res!968876) (not e!810281))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123938 (= res!968876 (validMask!0 mask!2687))))

(assert (=> start!123938 e!810281))

(assert (=> start!123938 true))

(declare-fun array_inv!36042 (array!97600) Bool)

(assert (=> start!123938 (array_inv!36042 a!2862)))

(declare-fun b!1435759 () Bool)

(assert (=> b!1435759 (= e!810281 (and (bvsle #b00000000000000000000000000000000 (size!47648 a!2862)) (bvsge (size!47648 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435760 () Bool)

(declare-fun res!968877 () Bool)

(assert (=> b!1435760 (=> (not res!968877) (not e!810281))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435760 (= res!968877 (validKeyInArray!0 (select (arr!47097 a!2862) i!1006)))))

(declare-fun b!1435761 () Bool)

(declare-fun res!968875 () Bool)

(assert (=> b!1435761 (=> (not res!968875) (not e!810281))))

(assert (=> b!1435761 (= res!968875 (and (= (size!47648 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47648 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47648 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435762 () Bool)

(declare-fun res!968874 () Bool)

(assert (=> b!1435762 (=> (not res!968874) (not e!810281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97600 (_ BitVec 32)) Bool)

(assert (=> b!1435762 (= res!968874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!123938 res!968876) b!1435761))

(assert (= (and b!1435761 res!968875) b!1435760))

(assert (= (and b!1435760 res!968877) b!1435758))

(assert (= (and b!1435758 res!968873) b!1435762))

(assert (= (and b!1435762 res!968874) b!1435759))

(declare-fun m!1325181 () Bool)

(assert (=> b!1435758 m!1325181))

(assert (=> b!1435758 m!1325181))

(declare-fun m!1325183 () Bool)

(assert (=> b!1435758 m!1325183))

(declare-fun m!1325185 () Bool)

(assert (=> start!123938 m!1325185))

(declare-fun m!1325187 () Bool)

(assert (=> start!123938 m!1325187))

(declare-fun m!1325189 () Bool)

(assert (=> b!1435760 m!1325189))

(assert (=> b!1435760 m!1325189))

(declare-fun m!1325191 () Bool)

(assert (=> b!1435760 m!1325191))

(declare-fun m!1325193 () Bool)

(assert (=> b!1435762 m!1325193))

(push 1)

(assert (not b!1435760))

(assert (not b!1435762))

(assert (not start!123938))

(assert (not b!1435758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154349 () Bool)

(assert (=> d!154349 (= (validKeyInArray!0 (select (arr!47097 a!2862) i!1006)) (and (not (= (select (arr!47097 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47097 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435760 d!154349))

(declare-fun b!1435783 () Bool)

(declare-fun e!810297 () Bool)

(declare-fun call!67566 () Bool)

(assert (=> b!1435783 (= e!810297 call!67566)))

(declare-fun b!1435784 () Bool)

(declare-fun e!810299 () Bool)

(assert (=> b!1435784 (= e!810299 e!810297)))

(declare-fun lt!631947 () (_ BitVec 64))

(assert (=> b!1435784 (= lt!631947 (select (arr!47097 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48476 0))(
  ( (Unit!48477) )
))
(declare-fun lt!631946 () Unit!48476)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97600 (_ BitVec 64) (_ BitVec 32)) Unit!48476)

(assert (=> b!1435784 (= lt!631946 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631947 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435784 (arrayContainsKey!0 a!2862 lt!631947 #b00000000000000000000000000000000)))

(declare-fun lt!631948 () Unit!48476)

(assert (=> b!1435784 (= lt!631948 lt!631946)))

(declare-fun res!968888 () Bool)

(declare-datatypes ((SeekEntryResult!11391 0))(
  ( (MissingZero!11391 (index!47955 (_ BitVec 32))) (Found!11391 (index!47956 (_ BitVec 32))) (Intermediate!11391 (undefined!12203 Bool) (index!47957 (_ BitVec 32)) (x!129640 (_ BitVec 32))) (Undefined!11391) (MissingVacant!11391 (index!47958 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97600 (_ BitVec 32)) SeekEntryResult!11391)

(assert (=> b!1435784 (= res!968888 (= (seekEntryOrOpen!0 (select (arr!47097 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11391 #b00000000000000000000000000000000)))))

(assert (=> b!1435784 (=> (not res!968888) (not e!810297))))

(declare-fun bm!67563 () Bool)

(assert (=> bm!67563 (= call!67566 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!154351 () Bool)

(declare-fun res!968889 () Bool)

(declare-fun e!810298 () Bool)

(assert (=> d!154351 (=> res!968889 e!810298)))

