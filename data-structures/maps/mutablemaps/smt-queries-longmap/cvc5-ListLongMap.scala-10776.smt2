; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126196 () Bool)

(assert start!126196)

(declare-fun b!1477052 () Bool)

(declare-fun res!1003333 () Bool)

(declare-fun e!828679 () Bool)

(assert (=> b!1477052 (=> (not res!1003333) (not e!828679))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12147 0))(
  ( (MissingZero!12147 (index!50979 (_ BitVec 32))) (Found!12147 (index!50980 (_ BitVec 32))) (Intermediate!12147 (undefined!12959 Bool) (index!50981 (_ BitVec 32)) (x!132581 (_ BitVec 32))) (Undefined!12147) (MissingVacant!12147 (index!50982 (_ BitVec 32))) )
))
(declare-fun lt!645188 () SeekEntryResult!12147)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99219 0))(
  ( (array!99220 (arr!47884 (Array (_ BitVec 32) (_ BitVec 64))) (size!48435 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99219)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99219 (_ BitVec 32)) SeekEntryResult!12147)

(assert (=> b!1477052 (= res!1003333 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47884 a!2862) j!93) a!2862 mask!2687) lt!645188))))

(declare-fun b!1477053 () Bool)

(declare-fun lt!645186 () (_ BitVec 64))

(declare-fun e!828682 () Bool)

(declare-fun lt!645189 () array!99219)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99219 (_ BitVec 32)) SeekEntryResult!12147)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99219 (_ BitVec 32)) SeekEntryResult!12147)

(assert (=> b!1477053 (= e!828682 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645186 lt!645189 mask!2687) (seekEntryOrOpen!0 lt!645186 lt!645189 mask!2687)))))

(declare-fun b!1477054 () Bool)

(declare-fun e!828676 () Bool)

(declare-fun e!828675 () Bool)

(assert (=> b!1477054 (= e!828676 e!828675)))

(declare-fun res!1003325 () Bool)

(assert (=> b!1477054 (=> res!1003325 e!828675)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477054 (= res!1003325 (or (and (= (select (arr!47884 a!2862) index!646) (select (store (arr!47884 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47884 a!2862) index!646) (select (arr!47884 a!2862) j!93))) (not (= (select (arr!47884 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1003332 () Bool)

(declare-fun e!828680 () Bool)

(assert (=> start!126196 (=> (not res!1003332) (not e!828680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126196 (= res!1003332 (validMask!0 mask!2687))))

(assert (=> start!126196 e!828680))

(assert (=> start!126196 true))

(declare-fun array_inv!36829 (array!99219) Bool)

(assert (=> start!126196 (array_inv!36829 a!2862)))

(declare-fun b!1477055 () Bool)

(declare-fun res!1003331 () Bool)

(assert (=> b!1477055 (=> (not res!1003331) (not e!828680))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477055 (= res!1003331 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48435 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48435 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48435 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477056 () Bool)

(declare-fun res!1003323 () Bool)

(assert (=> b!1477056 (=> (not res!1003323) (not e!828680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477056 (= res!1003323 (validKeyInArray!0 (select (arr!47884 a!2862) j!93)))))

(declare-fun b!1477057 () Bool)

(declare-fun res!1003324 () Bool)

(assert (=> b!1477057 (=> (not res!1003324) (not e!828680))))

(assert (=> b!1477057 (= res!1003324 (and (= (size!48435 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48435 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48435 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477058 () Bool)

(declare-fun e!828681 () Bool)

(assert (=> b!1477058 (= e!828681 (not true))))

(assert (=> b!1477058 e!828676))

(declare-fun res!1003326 () Bool)

(assert (=> b!1477058 (=> (not res!1003326) (not e!828676))))

(declare-fun lt!645190 () SeekEntryResult!12147)

(assert (=> b!1477058 (= res!1003326 (and (= lt!645190 (Found!12147 j!93)) (or (= (select (arr!47884 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47884 a!2862) intermediateBeforeIndex!19) (select (arr!47884 a!2862) j!93)))))))

(assert (=> b!1477058 (= lt!645190 (seekEntryOrOpen!0 (select (arr!47884 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99219 (_ BitVec 32)) Bool)

(assert (=> b!1477058 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49582 0))(
  ( (Unit!49583) )
))
(declare-fun lt!645185 () Unit!49582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99219 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49582)

(assert (=> b!1477058 (= lt!645185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477059 () Bool)

(assert (=> b!1477059 (= e!828679 e!828681)))

(declare-fun res!1003320 () Bool)

(assert (=> b!1477059 (=> (not res!1003320) (not e!828681))))

(declare-fun lt!645187 () SeekEntryResult!12147)

(assert (=> b!1477059 (= res!1003320 (= lt!645187 (Intermediate!12147 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477059 (= lt!645187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645186 mask!2687) lt!645186 lt!645189 mask!2687))))

(assert (=> b!1477059 (= lt!645186 (select (store (arr!47884 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477060 () Bool)

(declare-fun res!1003330 () Bool)

(assert (=> b!1477060 (=> (not res!1003330) (not e!828681))))

(assert (=> b!1477060 (= res!1003330 e!828682)))

(declare-fun c!136388 () Bool)

(assert (=> b!1477060 (= c!136388 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477061 () Bool)

(declare-fun e!828683 () Bool)

(assert (=> b!1477061 (= e!828680 e!828683)))

(declare-fun res!1003322 () Bool)

(assert (=> b!1477061 (=> (not res!1003322) (not e!828683))))

(assert (=> b!1477061 (= res!1003322 (= (select (store (arr!47884 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477061 (= lt!645189 (array!99220 (store (arr!47884 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48435 a!2862)))))

(declare-fun b!1477062 () Bool)

(assert (=> b!1477062 (= e!828683 e!828679)))

(declare-fun res!1003321 () Bool)

(assert (=> b!1477062 (=> (not res!1003321) (not e!828679))))

(assert (=> b!1477062 (= res!1003321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47884 a!2862) j!93) mask!2687) (select (arr!47884 a!2862) j!93) a!2862 mask!2687) lt!645188))))

(assert (=> b!1477062 (= lt!645188 (Intermediate!12147 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477063 () Bool)

(declare-fun res!1003329 () Bool)

(assert (=> b!1477063 (=> (not res!1003329) (not e!828681))))

(assert (=> b!1477063 (= res!1003329 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477064 () Bool)

(declare-fun res!1003335 () Bool)

(assert (=> b!1477064 (=> (not res!1003335) (not e!828680))))

(assert (=> b!1477064 (= res!1003335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477065 () Bool)

(declare-fun e!828678 () Bool)

(assert (=> b!1477065 (= e!828675 e!828678)))

(declare-fun res!1003327 () Bool)

(assert (=> b!1477065 (=> (not res!1003327) (not e!828678))))

(assert (=> b!1477065 (= res!1003327 (= lt!645190 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47884 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477066 () Bool)

(declare-fun res!1003328 () Bool)

(assert (=> b!1477066 (=> (not res!1003328) (not e!828680))))

(assert (=> b!1477066 (= res!1003328 (validKeyInArray!0 (select (arr!47884 a!2862) i!1006)))))

(declare-fun b!1477067 () Bool)

(assert (=> b!1477067 (= e!828678 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477068 () Bool)

(declare-fun res!1003334 () Bool)

(assert (=> b!1477068 (=> (not res!1003334) (not e!828680))))

(declare-datatypes ((List!34565 0))(
  ( (Nil!34562) (Cons!34561 (h!35929 (_ BitVec 64)) (t!49266 List!34565)) )
))
(declare-fun arrayNoDuplicates!0 (array!99219 (_ BitVec 32) List!34565) Bool)

(assert (=> b!1477068 (= res!1003334 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34562))))

(declare-fun b!1477069 () Bool)

(assert (=> b!1477069 (= e!828682 (= lt!645187 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645186 lt!645189 mask!2687)))))

(assert (= (and start!126196 res!1003332) b!1477057))

(assert (= (and b!1477057 res!1003324) b!1477066))

(assert (= (and b!1477066 res!1003328) b!1477056))

(assert (= (and b!1477056 res!1003323) b!1477064))

(assert (= (and b!1477064 res!1003335) b!1477068))

(assert (= (and b!1477068 res!1003334) b!1477055))

(assert (= (and b!1477055 res!1003331) b!1477061))

(assert (= (and b!1477061 res!1003322) b!1477062))

(assert (= (and b!1477062 res!1003321) b!1477052))

(assert (= (and b!1477052 res!1003333) b!1477059))

(assert (= (and b!1477059 res!1003320) b!1477060))

(assert (= (and b!1477060 c!136388) b!1477069))

(assert (= (and b!1477060 (not c!136388)) b!1477053))

(assert (= (and b!1477060 res!1003330) b!1477063))

(assert (= (and b!1477063 res!1003329) b!1477058))

(assert (= (and b!1477058 res!1003326) b!1477054))

(assert (= (and b!1477054 (not res!1003325)) b!1477065))

(assert (= (and b!1477065 res!1003327) b!1477067))

(declare-fun m!1363071 () Bool)

(assert (=> b!1477056 m!1363071))

(assert (=> b!1477056 m!1363071))

(declare-fun m!1363073 () Bool)

(assert (=> b!1477056 m!1363073))

(declare-fun m!1363075 () Bool)

(assert (=> b!1477068 m!1363075))

(declare-fun m!1363077 () Bool)

(assert (=> b!1477059 m!1363077))

(assert (=> b!1477059 m!1363077))

(declare-fun m!1363079 () Bool)

(assert (=> b!1477059 m!1363079))

(declare-fun m!1363081 () Bool)

(assert (=> b!1477059 m!1363081))

(declare-fun m!1363083 () Bool)

(assert (=> b!1477059 m!1363083))

(declare-fun m!1363085 () Bool)

(assert (=> b!1477053 m!1363085))

(declare-fun m!1363087 () Bool)

(assert (=> b!1477053 m!1363087))

(assert (=> b!1477065 m!1363071))

(assert (=> b!1477065 m!1363071))

(declare-fun m!1363089 () Bool)

(assert (=> b!1477065 m!1363089))

(assert (=> b!1477052 m!1363071))

(assert (=> b!1477052 m!1363071))

(declare-fun m!1363091 () Bool)

(assert (=> b!1477052 m!1363091))

(declare-fun m!1363093 () Bool)

(assert (=> b!1477066 m!1363093))

(assert (=> b!1477066 m!1363093))

(declare-fun m!1363095 () Bool)

(assert (=> b!1477066 m!1363095))

(declare-fun m!1363097 () Bool)

(assert (=> b!1477054 m!1363097))

(assert (=> b!1477054 m!1363081))

(declare-fun m!1363099 () Bool)

(assert (=> b!1477054 m!1363099))

(assert (=> b!1477054 m!1363071))

(assert (=> b!1477062 m!1363071))

(assert (=> b!1477062 m!1363071))

(declare-fun m!1363101 () Bool)

(assert (=> b!1477062 m!1363101))

(assert (=> b!1477062 m!1363101))

(assert (=> b!1477062 m!1363071))

(declare-fun m!1363103 () Bool)

(assert (=> b!1477062 m!1363103))

(assert (=> b!1477061 m!1363081))

(declare-fun m!1363105 () Bool)

(assert (=> b!1477061 m!1363105))

(declare-fun m!1363107 () Bool)

(assert (=> b!1477069 m!1363107))

(declare-fun m!1363109 () Bool)

(assert (=> b!1477058 m!1363109))

(declare-fun m!1363111 () Bool)

(assert (=> b!1477058 m!1363111))

(assert (=> b!1477058 m!1363071))

(declare-fun m!1363113 () Bool)

(assert (=> b!1477058 m!1363113))

(declare-fun m!1363115 () Bool)

(assert (=> b!1477058 m!1363115))

(assert (=> b!1477058 m!1363071))

(declare-fun m!1363117 () Bool)

(assert (=> start!126196 m!1363117))

(declare-fun m!1363119 () Bool)

(assert (=> start!126196 m!1363119))

(declare-fun m!1363121 () Bool)

(assert (=> b!1477064 m!1363121))

(push 1)

