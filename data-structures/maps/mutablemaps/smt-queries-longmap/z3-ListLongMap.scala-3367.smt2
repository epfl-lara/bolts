; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46266 () Bool)

(assert start!46266)

(declare-fun res!312953 () Bool)

(declare-fun e!299114 () Bool)

(assert (=> start!46266 (=> (not res!312953) (not e!299114))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46266 (= res!312953 (validMask!0 mask!3524))))

(assert (=> start!46266 e!299114))

(assert (=> start!46266 true))

(declare-datatypes ((array!32880 0))(
  ( (array!32881 (arr!15814 (Array (_ BitVec 32) (_ BitVec 64))) (size!16178 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32880)

(declare-fun array_inv!11588 (array!32880) Bool)

(assert (=> start!46266 (array_inv!11588 a!3235)))

(declare-fun b!512135 () Bool)

(declare-fun res!312948 () Bool)

(assert (=> b!512135 (=> (not res!312948) (not e!299114))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512135 (= res!312948 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512136 () Bool)

(declare-fun res!312952 () Bool)

(declare-fun e!299116 () Bool)

(assert (=> b!512136 (=> (not res!312952) (not e!299116))))

(declare-datatypes ((List!10025 0))(
  ( (Nil!10022) (Cons!10021 (h!10901 (_ BitVec 64)) (t!16261 List!10025)) )
))
(declare-fun arrayNoDuplicates!0 (array!32880 (_ BitVec 32) List!10025) Bool)

(assert (=> b!512136 (= res!312952 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10022))))

(declare-fun b!512137 () Bool)

(declare-fun res!312947 () Bool)

(assert (=> b!512137 (=> (not res!312947) (not e!299114))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512137 (= res!312947 (validKeyInArray!0 (select (arr!15814 a!3235) j!176)))))

(declare-fun b!512138 () Bool)

(declare-fun res!312949 () Bool)

(declare-fun e!299115 () Bool)

(assert (=> b!512138 (=> res!312949 e!299115)))

(declare-datatypes ((SeekEntryResult!4288 0))(
  ( (MissingZero!4288 (index!19340 (_ BitVec 32))) (Found!4288 (index!19341 (_ BitVec 32))) (Intermediate!4288 (undefined!5100 Bool) (index!19342 (_ BitVec 32)) (x!48314 (_ BitVec 32))) (Undefined!4288) (MissingVacant!4288 (index!19343 (_ BitVec 32))) )
))
(declare-fun lt!234480 () SeekEntryResult!4288)

(get-info :version)

(assert (=> b!512138 (= res!312949 (or (not ((_ is Intermediate!4288) lt!234480)) (not (undefined!5100 lt!234480))))))

(declare-fun b!512139 () Bool)

(assert (=> b!512139 (= e!299114 e!299116)))

(declare-fun res!312954 () Bool)

(assert (=> b!512139 (=> (not res!312954) (not e!299116))))

(declare-fun lt!234478 () SeekEntryResult!4288)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512139 (= res!312954 (or (= lt!234478 (MissingZero!4288 i!1204)) (= lt!234478 (MissingVacant!4288 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32880 (_ BitVec 32)) SeekEntryResult!4288)

(assert (=> b!512139 (= lt!234478 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512140 () Bool)

(assert (=> b!512140 (= e!299116 (not e!299115))))

(declare-fun res!312950 () Bool)

(assert (=> b!512140 (=> res!312950 e!299115)))

(declare-fun lt!234479 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32880 (_ BitVec 32)) SeekEntryResult!4288)

(assert (=> b!512140 (= res!312950 (= lt!234480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234479 (select (store (arr!15814 a!3235) i!1204 k0!2280) j!176) (array!32881 (store (arr!15814 a!3235) i!1204 k0!2280) (size!16178 a!3235)) mask!3524)))))

(declare-fun lt!234481 () (_ BitVec 32))

(assert (=> b!512140 (= lt!234480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234481 (select (arr!15814 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512140 (= lt!234479 (toIndex!0 (select (store (arr!15814 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512140 (= lt!234481 (toIndex!0 (select (arr!15814 a!3235) j!176) mask!3524))))

(declare-fun lt!234482 () SeekEntryResult!4288)

(assert (=> b!512140 (= lt!234482 (Found!4288 j!176))))

(assert (=> b!512140 (= lt!234482 (seekEntryOrOpen!0 (select (arr!15814 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32880 (_ BitVec 32)) Bool)

(assert (=> b!512140 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15826 0))(
  ( (Unit!15827) )
))
(declare-fun lt!234477 () Unit!15826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15826)

(assert (=> b!512140 (= lt!234477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512141 () Bool)

(declare-fun res!312956 () Bool)

(assert (=> b!512141 (=> (not res!312956) (not e!299114))))

(assert (=> b!512141 (= res!312956 (and (= (size!16178 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16178 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16178 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512142 () Bool)

(declare-fun res!312955 () Bool)

(assert (=> b!512142 (=> (not res!312955) (not e!299116))))

(assert (=> b!512142 (= res!312955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512143 () Bool)

(assert (=> b!512143 (= e!299115 true)))

(assert (=> b!512143 (= lt!234482 Undefined!4288)))

(declare-fun b!512144 () Bool)

(declare-fun res!312951 () Bool)

(assert (=> b!512144 (=> (not res!312951) (not e!299114))))

(assert (=> b!512144 (= res!312951 (validKeyInArray!0 k0!2280))))

(assert (= (and start!46266 res!312953) b!512141))

(assert (= (and b!512141 res!312956) b!512137))

(assert (= (and b!512137 res!312947) b!512144))

(assert (= (and b!512144 res!312951) b!512135))

(assert (= (and b!512135 res!312948) b!512139))

(assert (= (and b!512139 res!312954) b!512142))

(assert (= (and b!512142 res!312955) b!512136))

(assert (= (and b!512136 res!312952) b!512140))

(assert (= (and b!512140 (not res!312950)) b!512138))

(assert (= (and b!512138 (not res!312949)) b!512143))

(declare-fun m!493807 () Bool)

(assert (=> b!512135 m!493807))

(declare-fun m!493809 () Bool)

(assert (=> start!46266 m!493809))

(declare-fun m!493811 () Bool)

(assert (=> start!46266 m!493811))

(declare-fun m!493813 () Bool)

(assert (=> b!512137 m!493813))

(assert (=> b!512137 m!493813))

(declare-fun m!493815 () Bool)

(assert (=> b!512137 m!493815))

(declare-fun m!493817 () Bool)

(assert (=> b!512144 m!493817))

(declare-fun m!493819 () Bool)

(assert (=> b!512142 m!493819))

(declare-fun m!493821 () Bool)

(assert (=> b!512140 m!493821))

(declare-fun m!493823 () Bool)

(assert (=> b!512140 m!493823))

(declare-fun m!493825 () Bool)

(assert (=> b!512140 m!493825))

(assert (=> b!512140 m!493813))

(declare-fun m!493827 () Bool)

(assert (=> b!512140 m!493827))

(assert (=> b!512140 m!493825))

(declare-fun m!493829 () Bool)

(assert (=> b!512140 m!493829))

(assert (=> b!512140 m!493813))

(declare-fun m!493831 () Bool)

(assert (=> b!512140 m!493831))

(assert (=> b!512140 m!493813))

(declare-fun m!493833 () Bool)

(assert (=> b!512140 m!493833))

(assert (=> b!512140 m!493825))

(declare-fun m!493835 () Bool)

(assert (=> b!512140 m!493835))

(assert (=> b!512140 m!493813))

(declare-fun m!493837 () Bool)

(assert (=> b!512140 m!493837))

(declare-fun m!493839 () Bool)

(assert (=> b!512139 m!493839))

(declare-fun m!493841 () Bool)

(assert (=> b!512136 m!493841))

(check-sat (not b!512137) (not b!512140) (not b!512144) (not b!512136) (not b!512142) (not b!512139) (not start!46266) (not b!512135))
(check-sat)
