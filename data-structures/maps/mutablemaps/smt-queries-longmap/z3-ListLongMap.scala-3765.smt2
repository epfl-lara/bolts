; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51604 () Bool)

(assert start!51604)

(declare-fun b!564295 () Bool)

(declare-fun e!325031 () Bool)

(declare-fun e!325032 () Bool)

(assert (=> b!564295 (= e!325031 e!325032)))

(declare-fun res!355597 () Bool)

(assert (=> b!564295 (=> (not res!355597) (not e!325032))))

(declare-datatypes ((SeekEntryResult!5464 0))(
  ( (MissingZero!5464 (index!24083 (_ BitVec 32))) (Found!5464 (index!24084 (_ BitVec 32))) (Intermediate!5464 (undefined!6276 Bool) (index!24085 (_ BitVec 32)) (x!52986 (_ BitVec 32))) (Undefined!5464) (MissingVacant!5464 (index!24086 (_ BitVec 32))) )
))
(declare-fun lt!257507 () SeekEntryResult!5464)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564295 (= res!355597 (or (= lt!257507 (MissingZero!5464 i!1132)) (= lt!257507 (MissingVacant!5464 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35423 0))(
  ( (array!35424 (arr!17008 (Array (_ BitVec 32) (_ BitVec 64))) (size!17372 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35423)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35423 (_ BitVec 32)) SeekEntryResult!5464)

(assert (=> b!564295 (= lt!257507 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564296 () Bool)

(declare-fun res!355598 () Bool)

(assert (=> b!564296 (=> (not res!355598) (not e!325032))))

(declare-datatypes ((List!11141 0))(
  ( (Nil!11138) (Cons!11137 (h!12140 (_ BitVec 64)) (t!17377 List!11141)) )
))
(declare-fun arrayNoDuplicates!0 (array!35423 (_ BitVec 32) List!11141) Bool)

(assert (=> b!564296 (= res!355598 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11138))))

(declare-fun res!355602 () Bool)

(assert (=> start!51604 (=> (not res!355602) (not e!325031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51604 (= res!355602 (validMask!0 mask!3119))))

(assert (=> start!51604 e!325031))

(assert (=> start!51604 true))

(declare-fun array_inv!12782 (array!35423) Bool)

(assert (=> start!51604 (array_inv!12782 a!3118)))

(declare-fun b!564297 () Bool)

(declare-fun res!355600 () Bool)

(assert (=> b!564297 (=> (not res!355600) (not e!325032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35423 (_ BitVec 32)) Bool)

(assert (=> b!564297 (= res!355600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564298 () Bool)

(declare-fun res!355604 () Bool)

(assert (=> b!564298 (=> (not res!355604) (not e!325031))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564298 (= res!355604 (and (= (size!17372 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17372 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17372 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564299 () Bool)

(assert (=> b!564299 (= e!325032 false)))

(declare-fun lt!257506 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564299 (= lt!257506 (toIndex!0 (select (store (arr!17008 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!564300 () Bool)

(declare-fun res!355599 () Bool)

(assert (=> b!564300 (=> (not res!355599) (not e!325031))))

(declare-fun arrayContainsKey!0 (array!35423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564300 (= res!355599 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564301 () Bool)

(declare-fun res!355601 () Bool)

(assert (=> b!564301 (=> (not res!355601) (not e!325031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564301 (= res!355601 (validKeyInArray!0 (select (arr!17008 a!3118) j!142)))))

(declare-fun b!564302 () Bool)

(declare-fun res!355603 () Bool)

(assert (=> b!564302 (=> (not res!355603) (not e!325031))))

(assert (=> b!564302 (= res!355603 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51604 res!355602) b!564298))

(assert (= (and b!564298 res!355604) b!564301))

(assert (= (and b!564301 res!355601) b!564302))

(assert (= (and b!564302 res!355603) b!564300))

(assert (= (and b!564300 res!355599) b!564295))

(assert (= (and b!564295 res!355597) b!564297))

(assert (= (and b!564297 res!355600) b!564296))

(assert (= (and b!564296 res!355598) b!564299))

(declare-fun m!542755 () Bool)

(assert (=> b!564301 m!542755))

(assert (=> b!564301 m!542755))

(declare-fun m!542757 () Bool)

(assert (=> b!564301 m!542757))

(declare-fun m!542759 () Bool)

(assert (=> b!564302 m!542759))

(declare-fun m!542761 () Bool)

(assert (=> b!564300 m!542761))

(declare-fun m!542763 () Bool)

(assert (=> b!564297 m!542763))

(declare-fun m!542765 () Bool)

(assert (=> b!564296 m!542765))

(declare-fun m!542767 () Bool)

(assert (=> b!564295 m!542767))

(declare-fun m!542769 () Bool)

(assert (=> b!564299 m!542769))

(declare-fun m!542771 () Bool)

(assert (=> b!564299 m!542771))

(assert (=> b!564299 m!542771))

(declare-fun m!542773 () Bool)

(assert (=> b!564299 m!542773))

(declare-fun m!542775 () Bool)

(assert (=> start!51604 m!542775))

(declare-fun m!542777 () Bool)

(assert (=> start!51604 m!542777))

(check-sat (not b!564299) (not b!564295) (not start!51604) (not b!564300) (not b!564302) (not b!564301) (not b!564297) (not b!564296))
(check-sat)
