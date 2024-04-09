; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45718 () Bool)

(assert start!45718)

(declare-fun res!306060 () Bool)

(declare-fun e!295535 () Bool)

(assert (=> start!45718 (=> (not res!306060) (not e!295535))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45718 (= res!306060 (validMask!0 mask!3524))))

(assert (=> start!45718 e!295535))

(assert (=> start!45718 true))

(declare-datatypes ((array!32434 0))(
  ( (array!32435 (arr!15594 (Array (_ BitVec 32) (_ BitVec 64))) (size!15958 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32434)

(declare-fun array_inv!11368 (array!32434) Bool)

(assert (=> start!45718 (array_inv!11368 a!3235)))

(declare-fun b!504787 () Bool)

(declare-fun res!306061 () Bool)

(declare-fun e!295536 () Bool)

(assert (=> b!504787 (=> res!306061 e!295536)))

(declare-fun e!295538 () Bool)

(assert (=> b!504787 (= res!306061 e!295538)))

(declare-fun res!306066 () Bool)

(assert (=> b!504787 (=> (not res!306066) (not e!295538))))

(declare-datatypes ((SeekEntryResult!4068 0))(
  ( (MissingZero!4068 (index!18460 (_ BitVec 32))) (Found!4068 (index!18461 (_ BitVec 32))) (Intermediate!4068 (undefined!4880 Bool) (index!18462 (_ BitVec 32)) (x!47504 (_ BitVec 32))) (Undefined!4068) (MissingVacant!4068 (index!18463 (_ BitVec 32))) )
))
(declare-fun lt!229989 () SeekEntryResult!4068)

(assert (=> b!504787 (= res!306066 (bvsgt #b00000000000000000000000000000000 (x!47504 lt!229989)))))

(declare-fun b!504788 () Bool)

(declare-fun e!295540 () Bool)

(declare-fun e!295537 () Bool)

(assert (=> b!504788 (= e!295540 (not e!295537))))

(declare-fun res!306058 () Bool)

(assert (=> b!504788 (=> res!306058 e!295537)))

(declare-fun lt!229987 () array!32434)

(declare-fun lt!229991 () (_ BitVec 64))

(declare-fun lt!229992 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32434 (_ BitVec 32)) SeekEntryResult!4068)

(assert (=> b!504788 (= res!306058 (= lt!229989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229992 lt!229991 lt!229987 mask!3524)))))

(declare-fun lt!229985 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504788 (= lt!229989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229985 (select (arr!15594 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504788 (= lt!229992 (toIndex!0 lt!229991 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504788 (= lt!229991 (select (store (arr!15594 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504788 (= lt!229985 (toIndex!0 (select (arr!15594 a!3235) j!176) mask!3524))))

(assert (=> b!504788 (= lt!229987 (array!32435 (store (arr!15594 a!3235) i!1204 k!2280) (size!15958 a!3235)))))

(declare-fun e!295539 () Bool)

(assert (=> b!504788 e!295539))

(declare-fun res!306067 () Bool)

(assert (=> b!504788 (=> (not res!306067) (not e!295539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32434 (_ BitVec 32)) Bool)

(assert (=> b!504788 (= res!306067 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15362 0))(
  ( (Unit!15363) )
))
(declare-fun lt!229990 () Unit!15362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15362)

(assert (=> b!504788 (= lt!229990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504789 () Bool)

(assert (=> b!504789 (= e!295535 e!295540)))

(declare-fun res!306063 () Bool)

(assert (=> b!504789 (=> (not res!306063) (not e!295540))))

(declare-fun lt!229984 () SeekEntryResult!4068)

(assert (=> b!504789 (= res!306063 (or (= lt!229984 (MissingZero!4068 i!1204)) (= lt!229984 (MissingVacant!4068 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32434 (_ BitVec 32)) SeekEntryResult!4068)

(assert (=> b!504789 (= lt!229984 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504790 () Bool)

(declare-fun e!295534 () Unit!15362)

(declare-fun Unit!15364 () Unit!15362)

(assert (=> b!504790 (= e!295534 Unit!15364)))

(declare-fun lt!229993 () Unit!15362)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15362)

(assert (=> b!504790 (= lt!229993 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229985 #b00000000000000000000000000000000 (index!18462 lt!229989) (x!47504 lt!229989) mask!3524))))

(declare-fun res!306056 () Bool)

(assert (=> b!504790 (= res!306056 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229985 lt!229991 lt!229987 mask!3524) (Intermediate!4068 false (index!18462 lt!229989) (x!47504 lt!229989))))))

(declare-fun e!295532 () Bool)

(assert (=> b!504790 (=> (not res!306056) (not e!295532))))

(assert (=> b!504790 e!295532))

(declare-fun b!504791 () Bool)

(assert (=> b!504791 (= e!295537 e!295536)))

(declare-fun res!306065 () Bool)

(assert (=> b!504791 (=> res!306065 e!295536)))

(assert (=> b!504791 (= res!306065 (or (bvsgt (x!47504 lt!229989) #b01111111111111111111111111111110) (bvslt lt!229985 #b00000000000000000000000000000000) (bvsge lt!229985 (size!15958 a!3235)) (bvslt (index!18462 lt!229989) #b00000000000000000000000000000000) (bvsge (index!18462 lt!229989) (size!15958 a!3235)) (not (= lt!229989 (Intermediate!4068 false (index!18462 lt!229989) (x!47504 lt!229989))))))))

(assert (=> b!504791 (= (index!18462 lt!229989) i!1204)))

(declare-fun lt!229994 () Unit!15362)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15362)

(assert (=> b!504791 (= lt!229994 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229985 #b00000000000000000000000000000000 (index!18462 lt!229989) (x!47504 lt!229989) mask!3524))))

(assert (=> b!504791 (and (or (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229986 () Unit!15362)

(assert (=> b!504791 (= lt!229986 e!295534)))

(declare-fun c!59645 () Bool)

(assert (=> b!504791 (= c!59645 (= (select (arr!15594 a!3235) (index!18462 lt!229989)) (select (arr!15594 a!3235) j!176)))))

(assert (=> b!504791 (and (bvslt (x!47504 lt!229989) #b01111111111111111111111111111110) (or (= (select (arr!15594 a!3235) (index!18462 lt!229989)) (select (arr!15594 a!3235) j!176)) (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15594 a!3235) (index!18462 lt!229989)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504792 () Bool)

(declare-fun res!306055 () Bool)

(assert (=> b!504792 (=> (not res!306055) (not e!295540))))

(declare-datatypes ((List!9805 0))(
  ( (Nil!9802) (Cons!9801 (h!10678 (_ BitVec 64)) (t!16041 List!9805)) )
))
(declare-fun arrayNoDuplicates!0 (array!32434 (_ BitVec 32) List!9805) Bool)

(assert (=> b!504792 (= res!306055 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9802))))

(declare-fun b!504793 () Bool)

(assert (=> b!504793 (= e!295536 true)))

(declare-fun lt!229988 () SeekEntryResult!4068)

(assert (=> b!504793 (= lt!229988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229985 lt!229991 lt!229987 mask!3524))))

(declare-fun b!504794 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32434 (_ BitVec 32)) SeekEntryResult!4068)

(assert (=> b!504794 (= e!295538 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229985 (index!18462 lt!229989) (select (arr!15594 a!3235) j!176) a!3235 mask!3524) (Found!4068 j!176))))))

(declare-fun b!504795 () Bool)

(assert (=> b!504795 (= e!295532 false)))

(declare-fun b!504796 () Bool)

(declare-fun Unit!15365 () Unit!15362)

(assert (=> b!504796 (= e!295534 Unit!15365)))

(declare-fun b!504797 () Bool)

(declare-fun res!306057 () Bool)

(assert (=> b!504797 (=> (not res!306057) (not e!295535))))

(assert (=> b!504797 (= res!306057 (and (= (size!15958 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15958 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15958 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504798 () Bool)

(assert (=> b!504798 (= e!295539 (= (seekEntryOrOpen!0 (select (arr!15594 a!3235) j!176) a!3235 mask!3524) (Found!4068 j!176)))))

(declare-fun b!504799 () Bool)

(declare-fun res!306064 () Bool)

(assert (=> b!504799 (=> res!306064 e!295537)))

(assert (=> b!504799 (= res!306064 (or (undefined!4880 lt!229989) (not (is-Intermediate!4068 lt!229989))))))

(declare-fun b!504800 () Bool)

(declare-fun res!306068 () Bool)

(assert (=> b!504800 (=> (not res!306068) (not e!295535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504800 (= res!306068 (validKeyInArray!0 (select (arr!15594 a!3235) j!176)))))

(declare-fun b!504801 () Bool)

(declare-fun res!306062 () Bool)

(assert (=> b!504801 (=> (not res!306062) (not e!295535))))

(declare-fun arrayContainsKey!0 (array!32434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504801 (= res!306062 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504802 () Bool)

(declare-fun res!306054 () Bool)

(assert (=> b!504802 (=> (not res!306054) (not e!295535))))

(assert (=> b!504802 (= res!306054 (validKeyInArray!0 k!2280))))

(declare-fun b!504803 () Bool)

(declare-fun res!306059 () Bool)

(assert (=> b!504803 (=> (not res!306059) (not e!295540))))

(assert (=> b!504803 (= res!306059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45718 res!306060) b!504797))

(assert (= (and b!504797 res!306057) b!504800))

(assert (= (and b!504800 res!306068) b!504802))

(assert (= (and b!504802 res!306054) b!504801))

(assert (= (and b!504801 res!306062) b!504789))

(assert (= (and b!504789 res!306063) b!504803))

(assert (= (and b!504803 res!306059) b!504792))

(assert (= (and b!504792 res!306055) b!504788))

(assert (= (and b!504788 res!306067) b!504798))

(assert (= (and b!504788 (not res!306058)) b!504799))

(assert (= (and b!504799 (not res!306064)) b!504791))

(assert (= (and b!504791 c!59645) b!504790))

(assert (= (and b!504791 (not c!59645)) b!504796))

(assert (= (and b!504790 res!306056) b!504795))

(assert (= (and b!504791 (not res!306065)) b!504787))

(assert (= (and b!504787 res!306066) b!504794))

(assert (= (and b!504787 (not res!306061)) b!504793))

(declare-fun m!485509 () Bool)

(assert (=> b!504798 m!485509))

(assert (=> b!504798 m!485509))

(declare-fun m!485511 () Bool)

(assert (=> b!504798 m!485511))

(declare-fun m!485513 () Bool)

(assert (=> b!504803 m!485513))

(declare-fun m!485515 () Bool)

(assert (=> b!504802 m!485515))

(declare-fun m!485517 () Bool)

(assert (=> b!504791 m!485517))

(declare-fun m!485519 () Bool)

(assert (=> b!504791 m!485519))

(assert (=> b!504791 m!485509))

(declare-fun m!485521 () Bool)

(assert (=> b!504788 m!485521))

(declare-fun m!485523 () Bool)

(assert (=> b!504788 m!485523))

(declare-fun m!485525 () Bool)

(assert (=> b!504788 m!485525))

(assert (=> b!504788 m!485509))

(declare-fun m!485527 () Bool)

(assert (=> b!504788 m!485527))

(declare-fun m!485529 () Bool)

(assert (=> b!504788 m!485529))

(assert (=> b!504788 m!485509))

(declare-fun m!485531 () Bool)

(assert (=> b!504788 m!485531))

(assert (=> b!504788 m!485509))

(declare-fun m!485533 () Bool)

(assert (=> b!504788 m!485533))

(declare-fun m!485535 () Bool)

(assert (=> b!504788 m!485535))

(assert (=> b!504800 m!485509))

(assert (=> b!504800 m!485509))

(declare-fun m!485537 () Bool)

(assert (=> b!504800 m!485537))

(declare-fun m!485539 () Bool)

(assert (=> b!504792 m!485539))

(assert (=> b!504794 m!485509))

(assert (=> b!504794 m!485509))

(declare-fun m!485541 () Bool)

(assert (=> b!504794 m!485541))

(declare-fun m!485543 () Bool)

(assert (=> b!504801 m!485543))

(declare-fun m!485545 () Bool)

(assert (=> b!504793 m!485545))

(declare-fun m!485547 () Bool)

(assert (=> b!504789 m!485547))

(declare-fun m!485549 () Bool)

(assert (=> b!504790 m!485549))

(assert (=> b!504790 m!485545))

(declare-fun m!485551 () Bool)

(assert (=> start!45718 m!485551))

(declare-fun m!485553 () Bool)

(assert (=> start!45718 m!485553))

(push 1)

