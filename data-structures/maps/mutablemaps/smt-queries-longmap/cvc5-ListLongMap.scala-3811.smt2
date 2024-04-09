; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52304 () Bool)

(assert start!52304)

(declare-fun b!570328 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!328023 () Bool)

(declare-datatypes ((SeekEntryResult!5601 0))(
  ( (MissingZero!5601 (index!24631 (_ BitVec 32))) (Found!5601 (index!24632 (_ BitVec 32))) (Intermediate!5601 (undefined!6413 Bool) (index!24633 (_ BitVec 32)) (x!53536 (_ BitVec 32))) (Undefined!5601) (MissingVacant!5601 (index!24634 (_ BitVec 32))) )
))
(declare-fun lt!260045 () SeekEntryResult!5601)

(declare-datatypes ((array!35718 0))(
  ( (array!35719 (arr!17145 (Array (_ BitVec 32) (_ BitVec 64))) (size!17509 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35718)

(declare-fun lt!260041 () SeekEntryResult!5601)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35718 (_ BitVec 32)) SeekEntryResult!5601)

(assert (=> b!570328 (= e!328023 (= lt!260045 (seekKeyOrZeroReturnVacant!0 (x!53536 lt!260041) (index!24633 lt!260041) (index!24633 lt!260041) (select (arr!17145 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570329 () Bool)

(declare-fun res!360265 () Bool)

(declare-fun e!328027 () Bool)

(assert (=> b!570329 (=> (not res!360265) (not e!328027))))

(declare-datatypes ((List!11278 0))(
  ( (Nil!11275) (Cons!11274 (h!12298 (_ BitVec 64)) (t!17514 List!11278)) )
))
(declare-fun arrayNoDuplicates!0 (array!35718 (_ BitVec 32) List!11278) Bool)

(assert (=> b!570329 (= res!360265 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11275))))

(declare-fun b!570330 () Bool)

(declare-fun e!328025 () Bool)

(assert (=> b!570330 (= e!328025 (not true))))

(declare-fun e!328026 () Bool)

(assert (=> b!570330 e!328026))

(declare-fun res!360263 () Bool)

(assert (=> b!570330 (=> (not res!360263) (not e!328026))))

(assert (=> b!570330 (= res!360263 (= lt!260045 (Found!5601 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35718 (_ BitVec 32)) SeekEntryResult!5601)

(assert (=> b!570330 (= lt!260045 (seekEntryOrOpen!0 (select (arr!17145 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35718 (_ BitVec 32)) Bool)

(assert (=> b!570330 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17904 0))(
  ( (Unit!17905) )
))
(declare-fun lt!260042 () Unit!17904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17904)

(assert (=> b!570330 (= lt!260042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570331 () Bool)

(declare-fun res!360266 () Bool)

(assert (=> b!570331 (=> (not res!360266) (not e!328027))))

(assert (=> b!570331 (= res!360266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570332 () Bool)

(assert (=> b!570332 (= e!328027 e!328025)))

(declare-fun res!360264 () Bool)

(assert (=> b!570332 (=> (not res!360264) (not e!328025))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!260040 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35718 (_ BitVec 32)) SeekEntryResult!5601)

(assert (=> b!570332 (= res!360264 (= lt!260041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260040 (select (store (arr!17145 a!3118) i!1132 k!1914) j!142) (array!35719 (store (arr!17145 a!3118) i!1132 k!1914) (size!17509 a!3118)) mask!3119)))))

(declare-fun lt!260044 () (_ BitVec 32))

(assert (=> b!570332 (= lt!260041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260044 (select (arr!17145 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570332 (= lt!260040 (toIndex!0 (select (store (arr!17145 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570332 (= lt!260044 (toIndex!0 (select (arr!17145 a!3118) j!142) mask!3119))))

(declare-fun b!570333 () Bool)

(declare-fun res!360268 () Bool)

(declare-fun e!328022 () Bool)

(assert (=> b!570333 (=> (not res!360268) (not e!328022))))

(assert (=> b!570333 (= res!360268 (and (= (size!17509 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17509 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17509 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570334 () Bool)

(assert (=> b!570334 (= e!328026 e!328023)))

(declare-fun res!360269 () Bool)

(assert (=> b!570334 (=> res!360269 e!328023)))

(assert (=> b!570334 (= res!360269 (or (undefined!6413 lt!260041) (not (is-Intermediate!5601 lt!260041)) (= (select (arr!17145 a!3118) (index!24633 lt!260041)) (select (arr!17145 a!3118) j!142)) (= (select (arr!17145 a!3118) (index!24633 lt!260041)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570335 () Bool)

(declare-fun res!360267 () Bool)

(assert (=> b!570335 (=> (not res!360267) (not e!328022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570335 (= res!360267 (validKeyInArray!0 k!1914))))

(declare-fun b!570336 () Bool)

(assert (=> b!570336 (= e!328022 e!328027)))

(declare-fun res!360259 () Bool)

(assert (=> b!570336 (=> (not res!360259) (not e!328027))))

(declare-fun lt!260043 () SeekEntryResult!5601)

(assert (=> b!570336 (= res!360259 (or (= lt!260043 (MissingZero!5601 i!1132)) (= lt!260043 (MissingVacant!5601 i!1132))))))

(assert (=> b!570336 (= lt!260043 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!360261 () Bool)

(assert (=> start!52304 (=> (not res!360261) (not e!328022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52304 (= res!360261 (validMask!0 mask!3119))))

(assert (=> start!52304 e!328022))

(assert (=> start!52304 true))

(declare-fun array_inv!12919 (array!35718) Bool)

(assert (=> start!52304 (array_inv!12919 a!3118)))

(declare-fun b!570337 () Bool)

(declare-fun res!360262 () Bool)

(assert (=> b!570337 (=> (not res!360262) (not e!328022))))

(assert (=> b!570337 (= res!360262 (validKeyInArray!0 (select (arr!17145 a!3118) j!142)))))

(declare-fun b!570338 () Bool)

(declare-fun res!360260 () Bool)

(assert (=> b!570338 (=> (not res!360260) (not e!328022))))

(declare-fun arrayContainsKey!0 (array!35718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570338 (= res!360260 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52304 res!360261) b!570333))

(assert (= (and b!570333 res!360268) b!570337))

(assert (= (and b!570337 res!360262) b!570335))

(assert (= (and b!570335 res!360267) b!570338))

(assert (= (and b!570338 res!360260) b!570336))

(assert (= (and b!570336 res!360259) b!570331))

(assert (= (and b!570331 res!360266) b!570329))

(assert (= (and b!570329 res!360265) b!570332))

(assert (= (and b!570332 res!360264) b!570330))

(assert (= (and b!570330 res!360263) b!570334))

(assert (= (and b!570334 (not res!360269)) b!570328))

(declare-fun m!549211 () Bool)

(assert (=> b!570338 m!549211))

(declare-fun m!549213 () Bool)

(assert (=> b!570336 m!549213))

(declare-fun m!549215 () Bool)

(assert (=> b!570328 m!549215))

(assert (=> b!570328 m!549215))

(declare-fun m!549217 () Bool)

(assert (=> b!570328 m!549217))

(declare-fun m!549219 () Bool)

(assert (=> b!570334 m!549219))

(assert (=> b!570334 m!549215))

(declare-fun m!549221 () Bool)

(assert (=> b!570329 m!549221))

(declare-fun m!549223 () Bool)

(assert (=> start!52304 m!549223))

(declare-fun m!549225 () Bool)

(assert (=> start!52304 m!549225))

(declare-fun m!549227 () Bool)

(assert (=> b!570331 m!549227))

(assert (=> b!570332 m!549215))

(declare-fun m!549229 () Bool)

(assert (=> b!570332 m!549229))

(assert (=> b!570332 m!549215))

(declare-fun m!549231 () Bool)

(assert (=> b!570332 m!549231))

(declare-fun m!549233 () Bool)

(assert (=> b!570332 m!549233))

(assert (=> b!570332 m!549231))

(assert (=> b!570332 m!549215))

(declare-fun m!549235 () Bool)

(assert (=> b!570332 m!549235))

(declare-fun m!549237 () Bool)

(assert (=> b!570332 m!549237))

(assert (=> b!570332 m!549231))

(declare-fun m!549239 () Bool)

(assert (=> b!570332 m!549239))

(declare-fun m!549241 () Bool)

(assert (=> b!570335 m!549241))

(assert (=> b!570330 m!549215))

(assert (=> b!570330 m!549215))

(declare-fun m!549243 () Bool)

(assert (=> b!570330 m!549243))

(declare-fun m!549245 () Bool)

(assert (=> b!570330 m!549245))

(declare-fun m!549247 () Bool)

(assert (=> b!570330 m!549247))

(assert (=> b!570337 m!549215))

(assert (=> b!570337 m!549215))

(declare-fun m!549249 () Bool)

(assert (=> b!570337 m!549249))

(push 1)

