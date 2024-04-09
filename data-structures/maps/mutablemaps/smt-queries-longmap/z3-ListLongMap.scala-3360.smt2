; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46224 () Bool)

(assert start!46224)

(declare-fun b!511505 () Bool)

(declare-fun res!312320 () Bool)

(declare-fun e!298861 () Bool)

(assert (=> b!511505 (=> (not res!312320) (not e!298861))))

(declare-datatypes ((array!32838 0))(
  ( (array!32839 (arr!15793 (Array (_ BitVec 32) (_ BitVec 64))) (size!16157 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32838)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511505 (= res!312320 (validKeyInArray!0 (select (arr!15793 a!3235) j!176)))))

(declare-fun b!511506 () Bool)

(declare-fun e!298864 () Bool)

(assert (=> b!511506 (= e!298864 (or (bvsgt #b00000000000000000000000000000000 (size!16157 a!3235)) (bvsle j!176 (size!16157 a!3235))))))

(declare-datatypes ((SeekEntryResult!4267 0))(
  ( (MissingZero!4267 (index!19256 (_ BitVec 32))) (Found!4267 (index!19257 (_ BitVec 32))) (Intermediate!4267 (undefined!5079 Bool) (index!19258 (_ BitVec 32)) (x!48237 (_ BitVec 32))) (Undefined!4267) (MissingVacant!4267 (index!19259 (_ BitVec 32))) )
))
(declare-fun lt!234099 () SeekEntryResult!4267)

(assert (=> b!511506 (= lt!234099 Undefined!4267)))

(declare-fun b!511507 () Bool)

(declare-fun e!298862 () Bool)

(assert (=> b!511507 (= e!298861 e!298862)))

(declare-fun res!312317 () Bool)

(assert (=> b!511507 (=> (not res!312317) (not e!298862))))

(declare-fun lt!234100 () SeekEntryResult!4267)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511507 (= res!312317 (or (= lt!234100 (MissingZero!4267 i!1204)) (= lt!234100 (MissingVacant!4267 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32838 (_ BitVec 32)) SeekEntryResult!4267)

(assert (=> b!511507 (= lt!234100 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511508 () Bool)

(declare-fun res!312326 () Bool)

(assert (=> b!511508 (=> (not res!312326) (not e!298862))))

(declare-datatypes ((List!10004 0))(
  ( (Nil!10001) (Cons!10000 (h!10880 (_ BitVec 64)) (t!16240 List!10004)) )
))
(declare-fun arrayNoDuplicates!0 (array!32838 (_ BitVec 32) List!10004) Bool)

(assert (=> b!511508 (= res!312326 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10001))))

(declare-fun b!511509 () Bool)

(declare-fun res!312322 () Bool)

(assert (=> b!511509 (=> (not res!312322) (not e!298861))))

(assert (=> b!511509 (= res!312322 (and (= (size!16157 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16157 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16157 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511510 () Bool)

(declare-fun res!312324 () Bool)

(assert (=> b!511510 (=> (not res!312324) (not e!298862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32838 (_ BitVec 32)) Bool)

(assert (=> b!511510 (= res!312324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!312321 () Bool)

(assert (=> start!46224 (=> (not res!312321) (not e!298861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46224 (= res!312321 (validMask!0 mask!3524))))

(assert (=> start!46224 e!298861))

(assert (=> start!46224 true))

(declare-fun array_inv!11567 (array!32838) Bool)

(assert (=> start!46224 (array_inv!11567 a!3235)))

(declare-fun b!511511 () Bool)

(assert (=> b!511511 (= e!298862 (not e!298864))))

(declare-fun res!312319 () Bool)

(assert (=> b!511511 (=> res!312319 e!298864)))

(declare-fun lt!234101 () SeekEntryResult!4267)

(declare-fun lt!234103 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32838 (_ BitVec 32)) SeekEntryResult!4267)

(assert (=> b!511511 (= res!312319 (= lt!234101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234103 (select (store (arr!15793 a!3235) i!1204 k0!2280) j!176) (array!32839 (store (arr!15793 a!3235) i!1204 k0!2280) (size!16157 a!3235)) mask!3524)))))

(declare-fun lt!234104 () (_ BitVec 32))

(assert (=> b!511511 (= lt!234101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234104 (select (arr!15793 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511511 (= lt!234103 (toIndex!0 (select (store (arr!15793 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511511 (= lt!234104 (toIndex!0 (select (arr!15793 a!3235) j!176) mask!3524))))

(assert (=> b!511511 (= lt!234099 (Found!4267 j!176))))

(assert (=> b!511511 (= lt!234099 (seekEntryOrOpen!0 (select (arr!15793 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511511 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15784 0))(
  ( (Unit!15785) )
))
(declare-fun lt!234102 () Unit!15784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15784)

(assert (=> b!511511 (= lt!234102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511512 () Bool)

(declare-fun res!312323 () Bool)

(assert (=> b!511512 (=> (not res!312323) (not e!298861))))

(assert (=> b!511512 (= res!312323 (validKeyInArray!0 k0!2280))))

(declare-fun b!511513 () Bool)

(declare-fun res!312325 () Bool)

(assert (=> b!511513 (=> res!312325 e!298864)))

(get-info :version)

(assert (=> b!511513 (= res!312325 (or (not ((_ is Intermediate!4267) lt!234101)) (not (undefined!5079 lt!234101))))))

(declare-fun b!511514 () Bool)

(declare-fun res!312318 () Bool)

(assert (=> b!511514 (=> (not res!312318) (not e!298861))))

(declare-fun arrayContainsKey!0 (array!32838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511514 (= res!312318 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46224 res!312321) b!511509))

(assert (= (and b!511509 res!312322) b!511505))

(assert (= (and b!511505 res!312320) b!511512))

(assert (= (and b!511512 res!312323) b!511514))

(assert (= (and b!511514 res!312318) b!511507))

(assert (= (and b!511507 res!312317) b!511510))

(assert (= (and b!511510 res!312324) b!511508))

(assert (= (and b!511508 res!312326) b!511511))

(assert (= (and b!511511 (not res!312319)) b!511513))

(assert (= (and b!511513 (not res!312325)) b!511506))

(declare-fun m!493051 () Bool)

(assert (=> b!511514 m!493051))

(declare-fun m!493053 () Bool)

(assert (=> b!511508 m!493053))

(declare-fun m!493055 () Bool)

(assert (=> b!511512 m!493055))

(declare-fun m!493057 () Bool)

(assert (=> b!511511 m!493057))

(declare-fun m!493059 () Bool)

(assert (=> b!511511 m!493059))

(declare-fun m!493061 () Bool)

(assert (=> b!511511 m!493061))

(declare-fun m!493063 () Bool)

(assert (=> b!511511 m!493063))

(declare-fun m!493065 () Bool)

(assert (=> b!511511 m!493065))

(assert (=> b!511511 m!493063))

(declare-fun m!493067 () Bool)

(assert (=> b!511511 m!493067))

(declare-fun m!493069 () Bool)

(assert (=> b!511511 m!493069))

(assert (=> b!511511 m!493063))

(declare-fun m!493071 () Bool)

(assert (=> b!511511 m!493071))

(assert (=> b!511511 m!493061))

(declare-fun m!493073 () Bool)

(assert (=> b!511511 m!493073))

(assert (=> b!511511 m!493061))

(declare-fun m!493075 () Bool)

(assert (=> b!511511 m!493075))

(assert (=> b!511511 m!493063))

(declare-fun m!493077 () Bool)

(assert (=> start!46224 m!493077))

(declare-fun m!493079 () Bool)

(assert (=> start!46224 m!493079))

(declare-fun m!493081 () Bool)

(assert (=> b!511510 m!493081))

(assert (=> b!511505 m!493063))

(assert (=> b!511505 m!493063))

(declare-fun m!493083 () Bool)

(assert (=> b!511505 m!493083))

(declare-fun m!493085 () Bool)

(assert (=> b!511507 m!493085))

(check-sat (not b!511512) (not b!511514) (not start!46224) (not b!511508) (not b!511511) (not b!511507) (not b!511510) (not b!511505))
(check-sat)
