; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51718 () Bool)

(assert start!51718)

(declare-fun b!565298 () Bool)

(declare-fun e!325475 () Bool)

(declare-fun e!325476 () Bool)

(assert (=> b!565298 (= e!325475 e!325476)))

(declare-fun res!356418 () Bool)

(assert (=> b!565298 (=> (not res!356418) (not e!325476))))

(declare-datatypes ((SeekEntryResult!5491 0))(
  ( (MissingZero!5491 (index!24191 (_ BitVec 32))) (Found!5491 (index!24192 (_ BitVec 32))) (Intermediate!5491 (undefined!6303 Bool) (index!24193 (_ BitVec 32)) (x!53091 (_ BitVec 32))) (Undefined!5491) (MissingVacant!5491 (index!24194 (_ BitVec 32))) )
))
(declare-fun lt!257861 () SeekEntryResult!5491)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565298 (= res!356418 (or (= lt!257861 (MissingZero!5491 i!1132)) (= lt!257861 (MissingVacant!5491 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35480 0))(
  ( (array!35481 (arr!17035 (Array (_ BitVec 32) (_ BitVec 64))) (size!17399 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35480)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35480 (_ BitVec 32)) SeekEntryResult!5491)

(assert (=> b!565298 (= lt!257861 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565299 () Bool)

(declare-fun res!356425 () Bool)

(assert (=> b!565299 (=> (not res!356425) (not e!325475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565299 (= res!356425 (validKeyInArray!0 k0!1914))))

(declare-fun b!565300 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!325474 () Bool)

(assert (=> b!565300 (= e!325474 (= (seekEntryOrOpen!0 (select (arr!17035 a!3118) j!142) a!3118 mask!3119) (Found!5491 j!142)))))

(declare-fun b!565301 () Bool)

(declare-fun res!356424 () Bool)

(assert (=> b!565301 (=> (not res!356424) (not e!325476))))

(declare-datatypes ((List!11168 0))(
  ( (Nil!11165) (Cons!11164 (h!12170 (_ BitVec 64)) (t!17404 List!11168)) )
))
(declare-fun arrayNoDuplicates!0 (array!35480 (_ BitVec 32) List!11168) Bool)

(assert (=> b!565301 (= res!356424 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11165))))

(declare-fun b!565302 () Bool)

(assert (=> b!565302 (= e!325476 (not true))))

(assert (=> b!565302 e!325474))

(declare-fun res!356421 () Bool)

(assert (=> b!565302 (=> (not res!356421) (not e!325474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35480 (_ BitVec 32)) Bool)

(assert (=> b!565302 (= res!356421 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17684 0))(
  ( (Unit!17685) )
))
(declare-fun lt!257860 () Unit!17684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17684)

(assert (=> b!565302 (= lt!257860 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565303 () Bool)

(declare-fun res!356420 () Bool)

(assert (=> b!565303 (=> (not res!356420) (not e!325476))))

(assert (=> b!565303 (= res!356420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565304 () Bool)

(declare-fun res!356426 () Bool)

(assert (=> b!565304 (=> (not res!356426) (not e!325475))))

(assert (=> b!565304 (= res!356426 (validKeyInArray!0 (select (arr!17035 a!3118) j!142)))))

(declare-fun b!565305 () Bool)

(declare-fun res!356422 () Bool)

(assert (=> b!565305 (=> (not res!356422) (not e!325475))))

(declare-fun arrayContainsKey!0 (array!35480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565305 (= res!356422 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565307 () Bool)

(declare-fun res!356417 () Bool)

(assert (=> b!565307 (=> (not res!356417) (not e!325476))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35480 (_ BitVec 32)) SeekEntryResult!5491)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565307 (= res!356417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17035 a!3118) j!142) mask!3119) (select (arr!17035 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17035 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17035 a!3118) i!1132 k0!1914) j!142) (array!35481 (store (arr!17035 a!3118) i!1132 k0!1914) (size!17399 a!3118)) mask!3119)))))

(declare-fun res!356423 () Bool)

(assert (=> start!51718 (=> (not res!356423) (not e!325475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51718 (= res!356423 (validMask!0 mask!3119))))

(assert (=> start!51718 e!325475))

(assert (=> start!51718 true))

(declare-fun array_inv!12809 (array!35480) Bool)

(assert (=> start!51718 (array_inv!12809 a!3118)))

(declare-fun b!565306 () Bool)

(declare-fun res!356419 () Bool)

(assert (=> b!565306 (=> (not res!356419) (not e!325475))))

(assert (=> b!565306 (= res!356419 (and (= (size!17399 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17399 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17399 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51718 res!356423) b!565306))

(assert (= (and b!565306 res!356419) b!565304))

(assert (= (and b!565304 res!356426) b!565299))

(assert (= (and b!565299 res!356425) b!565305))

(assert (= (and b!565305 res!356422) b!565298))

(assert (= (and b!565298 res!356418) b!565303))

(assert (= (and b!565303 res!356420) b!565301))

(assert (= (and b!565301 res!356424) b!565307))

(assert (= (and b!565307 res!356417) b!565302))

(assert (= (and b!565302 res!356421) b!565300))

(declare-fun m!543805 () Bool)

(assert (=> b!565303 m!543805))

(declare-fun m!543807 () Bool)

(assert (=> b!565307 m!543807))

(declare-fun m!543809 () Bool)

(assert (=> b!565307 m!543809))

(assert (=> b!565307 m!543807))

(declare-fun m!543811 () Bool)

(assert (=> b!565307 m!543811))

(declare-fun m!543813 () Bool)

(assert (=> b!565307 m!543813))

(assert (=> b!565307 m!543811))

(declare-fun m!543815 () Bool)

(assert (=> b!565307 m!543815))

(assert (=> b!565307 m!543809))

(assert (=> b!565307 m!543807))

(declare-fun m!543817 () Bool)

(assert (=> b!565307 m!543817))

(declare-fun m!543819 () Bool)

(assert (=> b!565307 m!543819))

(assert (=> b!565307 m!543811))

(assert (=> b!565307 m!543813))

(assert (=> b!565300 m!543807))

(assert (=> b!565300 m!543807))

(declare-fun m!543821 () Bool)

(assert (=> b!565300 m!543821))

(declare-fun m!543823 () Bool)

(assert (=> b!565298 m!543823))

(declare-fun m!543825 () Bool)

(assert (=> b!565305 m!543825))

(declare-fun m!543827 () Bool)

(assert (=> start!51718 m!543827))

(declare-fun m!543829 () Bool)

(assert (=> start!51718 m!543829))

(declare-fun m!543831 () Bool)

(assert (=> b!565299 m!543831))

(declare-fun m!543833 () Bool)

(assert (=> b!565302 m!543833))

(declare-fun m!543835 () Bool)

(assert (=> b!565302 m!543835))

(declare-fun m!543837 () Bool)

(assert (=> b!565301 m!543837))

(assert (=> b!565304 m!543807))

(assert (=> b!565304 m!543807))

(declare-fun m!543839 () Bool)

(assert (=> b!565304 m!543839))

(check-sat (not b!565303) (not b!565304) (not b!565305) (not b!565300) (not b!565307) (not b!565301) (not b!565299) (not b!565302) (not start!51718) (not b!565298))
(check-sat)
