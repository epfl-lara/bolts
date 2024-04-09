; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32362 () Bool)

(assert start!32362)

(declare-fun b!321957 () Bool)

(declare-fun res!176103 () Bool)

(declare-fun e!199349 () Bool)

(assert (=> b!321957 (=> (not res!176103) (not e!199349))))

(declare-datatypes ((array!16497 0))(
  ( (array!16498 (arr!7803 (Array (_ BitVec 32) (_ BitVec 64))) (size!8155 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16497)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16497 (_ BitVec 32)) Bool)

(assert (=> b!321957 (= res!176103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321958 () Bool)

(declare-fun res!176096 () Bool)

(declare-fun e!199350 () Bool)

(assert (=> b!321958 (=> (not res!176096) (not e!199350))))

(declare-datatypes ((SeekEntryResult!2945 0))(
  ( (MissingZero!2945 (index!13956 (_ BitVec 32))) (Found!2945 (index!13957 (_ BitVec 32))) (Intermediate!2945 (undefined!3757 Bool) (index!13958 (_ BitVec 32)) (x!32184 (_ BitVec 32))) (Undefined!2945) (MissingVacant!2945 (index!13959 (_ BitVec 32))) )
))
(declare-fun lt!156356 () SeekEntryResult!2945)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16497 (_ BitVec 32)) SeekEntryResult!2945)

(assert (=> b!321958 (= res!176096 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156356))))

(declare-fun b!321959 () Bool)

(declare-fun res!176094 () Bool)

(assert (=> b!321959 (=> (not res!176094) (not e!199349))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321959 (= res!176094 (and (= (size!8155 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8155 a!3305))))))

(declare-fun b!321960 () Bool)

(declare-fun res!176102 () Bool)

(assert (=> b!321960 (=> (not res!176102) (not e!199349))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16497 (_ BitVec 32)) SeekEntryResult!2945)

(assert (=> b!321960 (= res!176102 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2945 i!1250)))))

(declare-fun b!321961 () Bool)

(declare-fun res!176098 () Bool)

(assert (=> b!321961 (=> (not res!176098) (not e!199349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321961 (= res!176098 (validKeyInArray!0 k!2497))))

(declare-fun b!321962 () Bool)

(declare-fun res!176100 () Bool)

(assert (=> b!321962 (=> (not res!176100) (not e!199350))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321962 (= res!176100 (and (= (select (arr!7803 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8155 a!3305))))))

(declare-fun res!176099 () Bool)

(assert (=> start!32362 (=> (not res!176099) (not e!199349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32362 (= res!176099 (validMask!0 mask!3777))))

(assert (=> start!32362 e!199349))

(declare-fun array_inv!5757 (array!16497) Bool)

(assert (=> start!32362 (array_inv!5757 a!3305)))

(assert (=> start!32362 true))

(declare-fun b!321963 () Bool)

(declare-fun lt!156355 () (_ BitVec 32))

(assert (=> b!321963 (= e!199350 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge lt!156355 #b00000000000000000000000000000000) (bvslt lt!156355 (bvadd #b00000000000000000000000000000001 mask!3777)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321963 (= lt!156355 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321964 () Bool)

(declare-fun res!176097 () Bool)

(assert (=> b!321964 (=> (not res!176097) (not e!199350))))

(assert (=> b!321964 (= res!176097 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7803 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7803 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7803 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321965 () Bool)

(declare-fun res!176101 () Bool)

(assert (=> b!321965 (=> (not res!176101) (not e!199349))))

(declare-fun arrayContainsKey!0 (array!16497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321965 (= res!176101 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321966 () Bool)

(assert (=> b!321966 (= e!199349 e!199350)))

(declare-fun res!176095 () Bool)

(assert (=> b!321966 (=> (not res!176095) (not e!199350))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321966 (= res!176095 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156356))))

(assert (=> b!321966 (= lt!156356 (Intermediate!2945 false resIndex!58 resX!58))))

(assert (= (and start!32362 res!176099) b!321959))

(assert (= (and b!321959 res!176094) b!321961))

(assert (= (and b!321961 res!176098) b!321965))

(assert (= (and b!321965 res!176101) b!321960))

(assert (= (and b!321960 res!176102) b!321957))

(assert (= (and b!321957 res!176103) b!321966))

(assert (= (and b!321966 res!176095) b!321962))

(assert (= (and b!321962 res!176100) b!321958))

(assert (= (and b!321958 res!176096) b!321964))

(assert (= (and b!321964 res!176097) b!321963))

(declare-fun m!329941 () Bool)

(assert (=> b!321962 m!329941))

(declare-fun m!329943 () Bool)

(assert (=> b!321957 m!329943))

(declare-fun m!329945 () Bool)

(assert (=> b!321960 m!329945))

(declare-fun m!329947 () Bool)

(assert (=> b!321961 m!329947))

(declare-fun m!329949 () Bool)

(assert (=> b!321963 m!329949))

(declare-fun m!329951 () Bool)

(assert (=> b!321966 m!329951))

(assert (=> b!321966 m!329951))

(declare-fun m!329953 () Bool)

(assert (=> b!321966 m!329953))

(declare-fun m!329955 () Bool)

(assert (=> b!321958 m!329955))

(declare-fun m!329957 () Bool)

(assert (=> b!321964 m!329957))

(declare-fun m!329959 () Bool)

(assert (=> start!32362 m!329959))

(declare-fun m!329961 () Bool)

(assert (=> start!32362 m!329961))

(declare-fun m!329963 () Bool)

(assert (=> b!321965 m!329963))

(push 1)

(assert (not b!321963))

(assert (not b!321960))

(assert (not b!321966))

(assert (not b!321965))

(assert (not b!321961))

(assert (not start!32362))

(assert (not b!321958))

(assert (not b!321957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

