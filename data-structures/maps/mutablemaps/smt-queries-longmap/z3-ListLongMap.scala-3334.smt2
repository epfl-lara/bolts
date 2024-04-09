; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46008 () Bool)

(assert start!46008)

(declare-fun b!509076 () Bool)

(declare-fun e!297739 () Bool)

(assert (=> b!509076 (= e!297739 (not true))))

(declare-datatypes ((SeekEntryResult!4189 0))(
  ( (MissingZero!4189 (index!18944 (_ BitVec 32))) (Found!4189 (index!18945 (_ BitVec 32))) (Intermediate!4189 (undefined!5001 Bool) (index!18946 (_ BitVec 32)) (x!47945 (_ BitVec 32))) (Undefined!4189) (MissingVacant!4189 (index!18947 (_ BitVec 32))) )
))
(declare-fun lt!232571 () SeekEntryResult!4189)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32679 0))(
  ( (array!32680 (arr!15715 (Array (_ BitVec 32) (_ BitVec 64))) (size!16079 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32679)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!232568 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32679 (_ BitVec 32)) SeekEntryResult!4189)

(assert (=> b!509076 (= lt!232571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232568 (select (store (arr!15715 a!3235) i!1204 k0!2280) j!176) (array!32680 (store (arr!15715 a!3235) i!1204 k0!2280) (size!16079 a!3235)) mask!3524))))

(declare-fun lt!232570 () (_ BitVec 32))

(declare-fun lt!232567 () SeekEntryResult!4189)

(assert (=> b!509076 (= lt!232567 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232570 (select (arr!15715 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509076 (= lt!232568 (toIndex!0 (select (store (arr!15715 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509076 (= lt!232570 (toIndex!0 (select (arr!15715 a!3235) j!176) mask!3524))))

(declare-fun e!297741 () Bool)

(assert (=> b!509076 e!297741))

(declare-fun res!310076 () Bool)

(assert (=> b!509076 (=> (not res!310076) (not e!297741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32679 (_ BitVec 32)) Bool)

(assert (=> b!509076 (= res!310076 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15628 0))(
  ( (Unit!15629) )
))
(declare-fun lt!232566 () Unit!15628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15628)

(assert (=> b!509076 (= lt!232566 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509077 () Bool)

(declare-fun res!310077 () Bool)

(declare-fun e!297740 () Bool)

(assert (=> b!509077 (=> (not res!310077) (not e!297740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509077 (= res!310077 (validKeyInArray!0 k0!2280))))

(declare-fun res!310078 () Bool)

(assert (=> start!46008 (=> (not res!310078) (not e!297740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46008 (= res!310078 (validMask!0 mask!3524))))

(assert (=> start!46008 e!297740))

(assert (=> start!46008 true))

(declare-fun array_inv!11489 (array!32679) Bool)

(assert (=> start!46008 (array_inv!11489 a!3235)))

(declare-fun b!509078 () Bool)

(declare-fun res!310072 () Bool)

(assert (=> b!509078 (=> (not res!310072) (not e!297739))))

(declare-datatypes ((List!9926 0))(
  ( (Nil!9923) (Cons!9922 (h!10799 (_ BitVec 64)) (t!16162 List!9926)) )
))
(declare-fun arrayNoDuplicates!0 (array!32679 (_ BitVec 32) List!9926) Bool)

(assert (=> b!509078 (= res!310072 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9923))))

(declare-fun b!509079 () Bool)

(declare-fun res!310074 () Bool)

(assert (=> b!509079 (=> (not res!310074) (not e!297740))))

(assert (=> b!509079 (= res!310074 (and (= (size!16079 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16079 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16079 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509080 () Bool)

(declare-fun res!310079 () Bool)

(assert (=> b!509080 (=> (not res!310079) (not e!297740))))

(declare-fun arrayContainsKey!0 (array!32679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509080 (= res!310079 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509081 () Bool)

(assert (=> b!509081 (= e!297740 e!297739)))

(declare-fun res!310075 () Bool)

(assert (=> b!509081 (=> (not res!310075) (not e!297739))))

(declare-fun lt!232569 () SeekEntryResult!4189)

(assert (=> b!509081 (= res!310075 (or (= lt!232569 (MissingZero!4189 i!1204)) (= lt!232569 (MissingVacant!4189 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32679 (_ BitVec 32)) SeekEntryResult!4189)

(assert (=> b!509081 (= lt!232569 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509082 () Bool)

(declare-fun res!310073 () Bool)

(assert (=> b!509082 (=> (not res!310073) (not e!297739))))

(assert (=> b!509082 (= res!310073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509083 () Bool)

(declare-fun res!310071 () Bool)

(assert (=> b!509083 (=> (not res!310071) (not e!297740))))

(assert (=> b!509083 (= res!310071 (validKeyInArray!0 (select (arr!15715 a!3235) j!176)))))

(declare-fun b!509084 () Bool)

(assert (=> b!509084 (= e!297741 (= (seekEntryOrOpen!0 (select (arr!15715 a!3235) j!176) a!3235 mask!3524) (Found!4189 j!176)))))

(assert (= (and start!46008 res!310078) b!509079))

(assert (= (and b!509079 res!310074) b!509083))

(assert (= (and b!509083 res!310071) b!509077))

(assert (= (and b!509077 res!310077) b!509080))

(assert (= (and b!509080 res!310079) b!509081))

(assert (= (and b!509081 res!310075) b!509082))

(assert (= (and b!509082 res!310073) b!509078))

(assert (= (and b!509078 res!310072) b!509076))

(assert (= (and b!509076 res!310076) b!509084))

(declare-fun m!489943 () Bool)

(assert (=> b!509084 m!489943))

(assert (=> b!509084 m!489943))

(declare-fun m!489945 () Bool)

(assert (=> b!509084 m!489945))

(assert (=> b!509083 m!489943))

(assert (=> b!509083 m!489943))

(declare-fun m!489947 () Bool)

(assert (=> b!509083 m!489947))

(declare-fun m!489949 () Bool)

(assert (=> start!46008 m!489949))

(declare-fun m!489951 () Bool)

(assert (=> start!46008 m!489951))

(declare-fun m!489953 () Bool)

(assert (=> b!509082 m!489953))

(declare-fun m!489955 () Bool)

(assert (=> b!509078 m!489955))

(declare-fun m!489957 () Bool)

(assert (=> b!509077 m!489957))

(declare-fun m!489959 () Bool)

(assert (=> b!509076 m!489959))

(declare-fun m!489961 () Bool)

(assert (=> b!509076 m!489961))

(declare-fun m!489963 () Bool)

(assert (=> b!509076 m!489963))

(assert (=> b!509076 m!489959))

(assert (=> b!509076 m!489943))

(declare-fun m!489965 () Bool)

(assert (=> b!509076 m!489965))

(assert (=> b!509076 m!489943))

(declare-fun m!489967 () Bool)

(assert (=> b!509076 m!489967))

(assert (=> b!509076 m!489959))

(declare-fun m!489969 () Bool)

(assert (=> b!509076 m!489969))

(assert (=> b!509076 m!489943))

(declare-fun m!489971 () Bool)

(assert (=> b!509076 m!489971))

(declare-fun m!489973 () Bool)

(assert (=> b!509076 m!489973))

(declare-fun m!489975 () Bool)

(assert (=> b!509081 m!489975))

(declare-fun m!489977 () Bool)

(assert (=> b!509080 m!489977))

(check-sat (not b!509084) (not start!46008) (not b!509077) (not b!509080) (not b!509076) (not b!509082) (not b!509081) (not b!509083) (not b!509078))
(check-sat)
