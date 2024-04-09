; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52900 () Bool)

(assert start!52900)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35942 0))(
  ( (array!35943 (arr!17248 (Array (_ BitVec 32) (_ BitVec 64))) (size!17612 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35942)

(declare-fun e!331551 () Bool)

(declare-fun b!576287 () Bool)

(declare-datatypes ((SeekEntryResult!5704 0))(
  ( (MissingZero!5704 (index!25043 (_ BitVec 32))) (Found!5704 (index!25044 (_ BitVec 32))) (Intermediate!5704 (undefined!6516 Bool) (index!25045 (_ BitVec 32)) (x!53962 (_ BitVec 32))) (Undefined!5704) (MissingVacant!5704 (index!25046 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35942 (_ BitVec 32)) SeekEntryResult!5704)

(assert (=> b!576287 (= e!331551 (= (seekEntryOrOpen!0 (select (arr!17248 a!3118) j!142) a!3118 mask!3119) (Found!5704 j!142)))))

(declare-fun b!576288 () Bool)

(declare-fun e!331550 () Bool)

(assert (=> b!576288 (= e!331550 (not true))))

(assert (=> b!576288 e!331551))

(declare-fun res!364678 () Bool)

(assert (=> b!576288 (=> (not res!364678) (not e!331551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35942 (_ BitVec 32)) Bool)

(assert (=> b!576288 (= res!364678 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18110 0))(
  ( (Unit!18111) )
))
(declare-fun lt!263633 () Unit!18110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18110)

(assert (=> b!576288 (= lt!263633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576289 () Bool)

(declare-fun res!364671 () Bool)

(assert (=> b!576289 (=> (not res!364671) (not e!331550))))

(assert (=> b!576289 (= res!364671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576290 () Bool)

(declare-fun res!364677 () Bool)

(assert (=> b!576290 (=> (not res!364677) (not e!331550))))

(declare-datatypes ((List!11381 0))(
  ( (Nil!11378) (Cons!11377 (h!12419 (_ BitVec 64)) (t!17617 List!11381)) )
))
(declare-fun arrayNoDuplicates!0 (array!35942 (_ BitVec 32) List!11381) Bool)

(assert (=> b!576290 (= res!364677 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11378))))

(declare-fun b!576291 () Bool)

(declare-fun res!364672 () Bool)

(declare-fun e!331549 () Bool)

(assert (=> b!576291 (=> (not res!364672) (not e!331549))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576291 (= res!364672 (and (= (size!17612 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17612 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17612 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!364676 () Bool)

(assert (=> start!52900 (=> (not res!364676) (not e!331549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52900 (= res!364676 (validMask!0 mask!3119))))

(assert (=> start!52900 e!331549))

(assert (=> start!52900 true))

(declare-fun array_inv!13022 (array!35942) Bool)

(assert (=> start!52900 (array_inv!13022 a!3118)))

(declare-fun b!576292 () Bool)

(declare-fun res!364675 () Bool)

(assert (=> b!576292 (=> (not res!364675) (not e!331549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576292 (= res!364675 (validKeyInArray!0 (select (arr!17248 a!3118) j!142)))))

(declare-fun b!576293 () Bool)

(declare-fun res!364670 () Bool)

(assert (=> b!576293 (=> (not res!364670) (not e!331550))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35942 (_ BitVec 32)) SeekEntryResult!5704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576293 (= res!364670 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17248 a!3118) j!142) mask!3119) (select (arr!17248 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17248 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17248 a!3118) i!1132 k0!1914) j!142) (array!35943 (store (arr!17248 a!3118) i!1132 k0!1914) (size!17612 a!3118)) mask!3119)))))

(declare-fun b!576294 () Bool)

(assert (=> b!576294 (= e!331549 e!331550)))

(declare-fun res!364673 () Bool)

(assert (=> b!576294 (=> (not res!364673) (not e!331550))))

(declare-fun lt!263632 () SeekEntryResult!5704)

(assert (=> b!576294 (= res!364673 (or (= lt!263632 (MissingZero!5704 i!1132)) (= lt!263632 (MissingVacant!5704 i!1132))))))

(assert (=> b!576294 (= lt!263632 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!576295 () Bool)

(declare-fun res!364679 () Bool)

(assert (=> b!576295 (=> (not res!364679) (not e!331549))))

(declare-fun arrayContainsKey!0 (array!35942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576295 (= res!364679 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576296 () Bool)

(declare-fun res!364674 () Bool)

(assert (=> b!576296 (=> (not res!364674) (not e!331549))))

(assert (=> b!576296 (= res!364674 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52900 res!364676) b!576291))

(assert (= (and b!576291 res!364672) b!576292))

(assert (= (and b!576292 res!364675) b!576296))

(assert (= (and b!576296 res!364674) b!576295))

(assert (= (and b!576295 res!364679) b!576294))

(assert (= (and b!576294 res!364673) b!576289))

(assert (= (and b!576289 res!364671) b!576290))

(assert (= (and b!576290 res!364677) b!576293))

(assert (= (and b!576293 res!364670) b!576288))

(assert (= (and b!576288 res!364678) b!576287))

(declare-fun m!555295 () Bool)

(assert (=> b!576288 m!555295))

(declare-fun m!555297 () Bool)

(assert (=> b!576288 m!555297))

(declare-fun m!555299 () Bool)

(assert (=> b!576296 m!555299))

(declare-fun m!555301 () Bool)

(assert (=> b!576287 m!555301))

(assert (=> b!576287 m!555301))

(declare-fun m!555303 () Bool)

(assert (=> b!576287 m!555303))

(declare-fun m!555305 () Bool)

(assert (=> b!576295 m!555305))

(assert (=> b!576292 m!555301))

(assert (=> b!576292 m!555301))

(declare-fun m!555307 () Bool)

(assert (=> b!576292 m!555307))

(declare-fun m!555309 () Bool)

(assert (=> b!576289 m!555309))

(declare-fun m!555311 () Bool)

(assert (=> b!576294 m!555311))

(declare-fun m!555313 () Bool)

(assert (=> start!52900 m!555313))

(declare-fun m!555315 () Bool)

(assert (=> start!52900 m!555315))

(declare-fun m!555317 () Bool)

(assert (=> b!576290 m!555317))

(assert (=> b!576293 m!555301))

(declare-fun m!555319 () Bool)

(assert (=> b!576293 m!555319))

(assert (=> b!576293 m!555301))

(declare-fun m!555321 () Bool)

(assert (=> b!576293 m!555321))

(declare-fun m!555323 () Bool)

(assert (=> b!576293 m!555323))

(assert (=> b!576293 m!555321))

(declare-fun m!555325 () Bool)

(assert (=> b!576293 m!555325))

(assert (=> b!576293 m!555319))

(assert (=> b!576293 m!555301))

(declare-fun m!555327 () Bool)

(assert (=> b!576293 m!555327))

(declare-fun m!555329 () Bool)

(assert (=> b!576293 m!555329))

(assert (=> b!576293 m!555321))

(assert (=> b!576293 m!555323))

(check-sat (not b!576288) (not b!576296) (not b!576287) (not b!576289) (not b!576293) (not b!576294) (not start!52900) (not b!576290) (not b!576295) (not b!576292))
(check-sat)
