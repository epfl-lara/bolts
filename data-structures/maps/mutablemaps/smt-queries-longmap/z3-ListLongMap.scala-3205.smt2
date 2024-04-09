; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44988 () Bool)

(assert start!44988)

(declare-fun b!493125 () Bool)

(declare-fun e!289627 () Bool)

(assert (=> b!493125 (= e!289627 (not true))))

(declare-fun lt!223064 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31893 0))(
  ( (array!31894 (arr!15328 (Array (_ BitVec 32) (_ BitVec 64))) (size!15692 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31893)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3802 0))(
  ( (MissingZero!3802 (index!17387 (_ BitVec 32))) (Found!3802 (index!17388 (_ BitVec 32))) (Intermediate!3802 (undefined!4614 Bool) (index!17389 (_ BitVec 32)) (x!46499 (_ BitVec 32))) (Undefined!3802) (MissingVacant!3802 (index!17390 (_ BitVec 32))) )
))
(declare-fun lt!223063 () SeekEntryResult!3802)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31893 (_ BitVec 32)) SeekEntryResult!3802)

(assert (=> b!493125 (= lt!223063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223064 (select (store (arr!15328 a!3235) i!1204 k0!2280) j!176) (array!31894 (store (arr!15328 a!3235) i!1204 k0!2280) (size!15692 a!3235)) mask!3524))))

(declare-fun lt!223060 () SeekEntryResult!3802)

(declare-fun lt!223061 () (_ BitVec 32))

(assert (=> b!493125 (= lt!223060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223061 (select (arr!15328 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493125 (= lt!223064 (toIndex!0 (select (store (arr!15328 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493125 (= lt!223061 (toIndex!0 (select (arr!15328 a!3235) j!176) mask!3524))))

(declare-fun e!289628 () Bool)

(assert (=> b!493125 e!289628))

(declare-fun res!295852 () Bool)

(assert (=> b!493125 (=> (not res!295852) (not e!289628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31893 (_ BitVec 32)) Bool)

(assert (=> b!493125 (= res!295852 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14542 0))(
  ( (Unit!14543) )
))
(declare-fun lt!223059 () Unit!14542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14542)

(assert (=> b!493125 (= lt!223059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493126 () Bool)

(declare-fun e!289629 () Bool)

(assert (=> b!493126 (= e!289629 e!289627)))

(declare-fun res!295848 () Bool)

(assert (=> b!493126 (=> (not res!295848) (not e!289627))))

(declare-fun lt!223062 () SeekEntryResult!3802)

(assert (=> b!493126 (= res!295848 (or (= lt!223062 (MissingZero!3802 i!1204)) (= lt!223062 (MissingVacant!3802 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31893 (_ BitVec 32)) SeekEntryResult!3802)

(assert (=> b!493126 (= lt!223062 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493127 () Bool)

(declare-fun res!295853 () Bool)

(assert (=> b!493127 (=> (not res!295853) (not e!289629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493127 (= res!295853 (validKeyInArray!0 k0!2280))))

(declare-fun b!493128 () Bool)

(assert (=> b!493128 (= e!289628 (= (seekEntryOrOpen!0 (select (arr!15328 a!3235) j!176) a!3235 mask!3524) (Found!3802 j!176)))))

(declare-fun b!493129 () Bool)

(declare-fun res!295851 () Bool)

(assert (=> b!493129 (=> (not res!295851) (not e!289629))))

(assert (=> b!493129 (= res!295851 (and (= (size!15692 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15692 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15692 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493130 () Bool)

(declare-fun res!295846 () Bool)

(assert (=> b!493130 (=> (not res!295846) (not e!289627))))

(declare-datatypes ((List!9539 0))(
  ( (Nil!9536) (Cons!9535 (h!10403 (_ BitVec 64)) (t!15775 List!9539)) )
))
(declare-fun arrayNoDuplicates!0 (array!31893 (_ BitVec 32) List!9539) Bool)

(assert (=> b!493130 (= res!295846 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9536))))

(declare-fun b!493131 () Bool)

(declare-fun res!295850 () Bool)

(assert (=> b!493131 (=> (not res!295850) (not e!289627))))

(assert (=> b!493131 (= res!295850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!295849 () Bool)

(assert (=> start!44988 (=> (not res!295849) (not e!289629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44988 (= res!295849 (validMask!0 mask!3524))))

(assert (=> start!44988 e!289629))

(assert (=> start!44988 true))

(declare-fun array_inv!11102 (array!31893) Bool)

(assert (=> start!44988 (array_inv!11102 a!3235)))

(declare-fun b!493132 () Bool)

(declare-fun res!295847 () Bool)

(assert (=> b!493132 (=> (not res!295847) (not e!289629))))

(assert (=> b!493132 (= res!295847 (validKeyInArray!0 (select (arr!15328 a!3235) j!176)))))

(declare-fun b!493133 () Bool)

(declare-fun res!295845 () Bool)

(assert (=> b!493133 (=> (not res!295845) (not e!289629))))

(declare-fun arrayContainsKey!0 (array!31893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493133 (= res!295845 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44988 res!295849) b!493129))

(assert (= (and b!493129 res!295851) b!493132))

(assert (= (and b!493132 res!295847) b!493127))

(assert (= (and b!493127 res!295853) b!493133))

(assert (= (and b!493133 res!295845) b!493126))

(assert (= (and b!493126 res!295848) b!493131))

(assert (= (and b!493131 res!295850) b!493130))

(assert (= (and b!493130 res!295846) b!493125))

(assert (= (and b!493125 res!295852) b!493128))

(declare-fun m!473977 () Bool)

(assert (=> b!493125 m!473977))

(declare-fun m!473979 () Bool)

(assert (=> b!493125 m!473979))

(declare-fun m!473981 () Bool)

(assert (=> b!493125 m!473981))

(declare-fun m!473983 () Bool)

(assert (=> b!493125 m!473983))

(declare-fun m!473985 () Bool)

(assert (=> b!493125 m!473985))

(assert (=> b!493125 m!473985))

(declare-fun m!473987 () Bool)

(assert (=> b!493125 m!473987))

(assert (=> b!493125 m!473979))

(declare-fun m!473989 () Bool)

(assert (=> b!493125 m!473989))

(assert (=> b!493125 m!473979))

(declare-fun m!473991 () Bool)

(assert (=> b!493125 m!473991))

(assert (=> b!493125 m!473985))

(declare-fun m!473993 () Bool)

(assert (=> b!493125 m!473993))

(declare-fun m!473995 () Bool)

(assert (=> start!44988 m!473995))

(declare-fun m!473997 () Bool)

(assert (=> start!44988 m!473997))

(declare-fun m!473999 () Bool)

(assert (=> b!493131 m!473999))

(declare-fun m!474001 () Bool)

(assert (=> b!493127 m!474001))

(declare-fun m!474003 () Bool)

(assert (=> b!493126 m!474003))

(assert (=> b!493128 m!473979))

(assert (=> b!493128 m!473979))

(declare-fun m!474005 () Bool)

(assert (=> b!493128 m!474005))

(declare-fun m!474007 () Bool)

(assert (=> b!493133 m!474007))

(declare-fun m!474009 () Bool)

(assert (=> b!493130 m!474009))

(assert (=> b!493132 m!473979))

(assert (=> b!493132 m!473979))

(declare-fun m!474011 () Bool)

(assert (=> b!493132 m!474011))

(check-sat (not b!493132) (not b!493133) (not b!493128) (not b!493127) (not b!493126) (not b!493125) (not start!44988) (not b!493130) (not b!493131))
(check-sat)
