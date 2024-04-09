; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51114 () Bool)

(assert start!51114)

(declare-fun b!558259 () Bool)

(declare-fun res!350272 () Bool)

(declare-fun e!321600 () Bool)

(assert (=> b!558259 (=> (not res!350272) (not e!321600))))

(declare-datatypes ((array!35122 0))(
  ( (array!35123 (arr!16862 (Array (_ BitVec 32) (_ BitVec 64))) (size!17226 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35122)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558259 (= res!350272 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5318 0))(
  ( (MissingZero!5318 (index!23499 (_ BitVec 32))) (Found!5318 (index!23500 (_ BitVec 32))) (Intermediate!5318 (undefined!6130 Bool) (index!23501 (_ BitVec 32)) (x!52421 (_ BitVec 32))) (Undefined!5318) (MissingVacant!5318 (index!23502 (_ BitVec 32))) )
))
(declare-fun lt!253747 () SeekEntryResult!5318)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!321601 () Bool)

(declare-fun lt!253748 () SeekEntryResult!5318)

(declare-fun b!558260 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35122 (_ BitVec 32)) SeekEntryResult!5318)

(assert (=> b!558260 (= e!321601 (= lt!253748 (seekKeyOrZeroReturnVacant!0 (x!52421 lt!253747) (index!23501 lt!253747) (index!23501 lt!253747) (select (arr!16862 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558261 () Bool)

(declare-fun e!321599 () Bool)

(assert (=> b!558261 (= e!321600 e!321599)))

(declare-fun res!350279 () Bool)

(assert (=> b!558261 (=> (not res!350279) (not e!321599))))

(declare-fun lt!253746 () SeekEntryResult!5318)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558261 (= res!350279 (or (= lt!253746 (MissingZero!5318 i!1132)) (= lt!253746 (MissingVacant!5318 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35122 (_ BitVec 32)) SeekEntryResult!5318)

(assert (=> b!558261 (= lt!253746 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558262 () Bool)

(declare-fun res!350280 () Bool)

(assert (=> b!558262 (=> (not res!350280) (not e!321600))))

(assert (=> b!558262 (= res!350280 (and (= (size!17226 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17226 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17226 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558263 () Bool)

(declare-fun res!350274 () Bool)

(assert (=> b!558263 (=> (not res!350274) (not e!321599))))

(declare-datatypes ((List!10995 0))(
  ( (Nil!10992) (Cons!10991 (h!11985 (_ BitVec 64)) (t!17231 List!10995)) )
))
(declare-fun arrayNoDuplicates!0 (array!35122 (_ BitVec 32) List!10995) Bool)

(assert (=> b!558263 (= res!350274 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10992))))

(declare-fun e!321602 () Bool)

(declare-fun b!558264 () Bool)

(assert (=> b!558264 (= e!321602 (not (or (undefined!6130 lt!253747) (not (is-Intermediate!5318 lt!253747)) (= (select (arr!16862 a!3118) (index!23501 lt!253747)) (select (arr!16862 a!3118) j!142)) (= (select (arr!16862 a!3118) (index!23501 lt!253747)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!321603 () Bool)

(assert (=> b!558264 e!321603))

(declare-fun res!350278 () Bool)

(assert (=> b!558264 (=> (not res!350278) (not e!321603))))

(assert (=> b!558264 (= res!350278 (= lt!253748 (Found!5318 j!142)))))

(assert (=> b!558264 (= lt!253748 (seekEntryOrOpen!0 (select (arr!16862 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35122 (_ BitVec 32)) Bool)

(assert (=> b!558264 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17410 0))(
  ( (Unit!17411) )
))
(declare-fun lt!253750 () Unit!17410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17410)

(assert (=> b!558264 (= lt!253750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558265 () Bool)

(declare-fun res!350276 () Bool)

(assert (=> b!558265 (=> (not res!350276) (not e!321600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558265 (= res!350276 (validKeyInArray!0 (select (arr!16862 a!3118) j!142)))))

(declare-fun b!558266 () Bool)

(declare-fun res!350275 () Bool)

(assert (=> b!558266 (=> (not res!350275) (not e!321599))))

(assert (=> b!558266 (= res!350275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558267 () Bool)

(assert (=> b!558267 (= e!321603 e!321601)))

(declare-fun res!350273 () Bool)

(assert (=> b!558267 (=> res!350273 e!321601)))

(assert (=> b!558267 (= res!350273 (or (undefined!6130 lt!253747) (not (is-Intermediate!5318 lt!253747)) (= (select (arr!16862 a!3118) (index!23501 lt!253747)) (select (arr!16862 a!3118) j!142)) (= (select (arr!16862 a!3118) (index!23501 lt!253747)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558269 () Bool)

(declare-fun res!350277 () Bool)

(assert (=> b!558269 (=> (not res!350277) (not e!321600))))

(assert (=> b!558269 (= res!350277 (validKeyInArray!0 k!1914))))

(declare-fun b!558268 () Bool)

(assert (=> b!558268 (= e!321599 e!321602)))

(declare-fun res!350282 () Bool)

(assert (=> b!558268 (=> (not res!350282) (not e!321602))))

(declare-fun lt!253751 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35122 (_ BitVec 32)) SeekEntryResult!5318)

(assert (=> b!558268 (= res!350282 (= lt!253747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253751 (select (store (arr!16862 a!3118) i!1132 k!1914) j!142) (array!35123 (store (arr!16862 a!3118) i!1132 k!1914) (size!17226 a!3118)) mask!3119)))))

(declare-fun lt!253749 () (_ BitVec 32))

(assert (=> b!558268 (= lt!253747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253749 (select (arr!16862 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558268 (= lt!253751 (toIndex!0 (select (store (arr!16862 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558268 (= lt!253749 (toIndex!0 (select (arr!16862 a!3118) j!142) mask!3119))))

(declare-fun res!350281 () Bool)

(assert (=> start!51114 (=> (not res!350281) (not e!321600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51114 (= res!350281 (validMask!0 mask!3119))))

(assert (=> start!51114 e!321600))

(assert (=> start!51114 true))

(declare-fun array_inv!12636 (array!35122) Bool)

(assert (=> start!51114 (array_inv!12636 a!3118)))

(assert (= (and start!51114 res!350281) b!558262))

(assert (= (and b!558262 res!350280) b!558265))

(assert (= (and b!558265 res!350276) b!558269))

(assert (= (and b!558269 res!350277) b!558259))

(assert (= (and b!558259 res!350272) b!558261))

(assert (= (and b!558261 res!350279) b!558266))

(assert (= (and b!558266 res!350275) b!558263))

(assert (= (and b!558263 res!350274) b!558268))

(assert (= (and b!558268 res!350282) b!558264))

(assert (= (and b!558264 res!350278) b!558267))

(assert (= (and b!558267 (not res!350273)) b!558260))

(declare-fun m!536277 () Bool)

(assert (=> b!558267 m!536277))

(declare-fun m!536279 () Bool)

(assert (=> b!558267 m!536279))

(assert (=> b!558260 m!536279))

(assert (=> b!558260 m!536279))

(declare-fun m!536281 () Bool)

(assert (=> b!558260 m!536281))

(declare-fun m!536283 () Bool)

(assert (=> b!558266 m!536283))

(declare-fun m!536285 () Bool)

(assert (=> b!558264 m!536285))

(declare-fun m!536287 () Bool)

(assert (=> b!558264 m!536287))

(assert (=> b!558264 m!536279))

(declare-fun m!536289 () Bool)

(assert (=> b!558264 m!536289))

(assert (=> b!558264 m!536277))

(assert (=> b!558264 m!536279))

(declare-fun m!536291 () Bool)

(assert (=> b!558259 m!536291))

(declare-fun m!536293 () Bool)

(assert (=> b!558261 m!536293))

(declare-fun m!536295 () Bool)

(assert (=> b!558269 m!536295))

(assert (=> b!558265 m!536279))

(assert (=> b!558265 m!536279))

(declare-fun m!536297 () Bool)

(assert (=> b!558265 m!536297))

(declare-fun m!536299 () Bool)

(assert (=> b!558263 m!536299))

(declare-fun m!536301 () Bool)

(assert (=> start!51114 m!536301))

(declare-fun m!536303 () Bool)

(assert (=> start!51114 m!536303))

(assert (=> b!558268 m!536279))

(declare-fun m!536305 () Bool)

(assert (=> b!558268 m!536305))

(assert (=> b!558268 m!536279))

(declare-fun m!536307 () Bool)

(assert (=> b!558268 m!536307))

(assert (=> b!558268 m!536279))

(declare-fun m!536309 () Bool)

(assert (=> b!558268 m!536309))

(assert (=> b!558268 m!536309))

(declare-fun m!536311 () Bool)

(assert (=> b!558268 m!536311))

(declare-fun m!536313 () Bool)

(assert (=> b!558268 m!536313))

(assert (=> b!558268 m!536309))

(declare-fun m!536315 () Bool)

(assert (=> b!558268 m!536315))

(push 1)

