; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45704 () Bool)

(assert start!45704)

(declare-fun b!504430 () Bool)

(declare-fun res!305741 () Bool)

(declare-fun e!295344 () Bool)

(assert (=> b!504430 (=> (not res!305741) (not e!295344))))

(declare-datatypes ((array!32420 0))(
  ( (array!32421 (arr!15587 (Array (_ BitVec 32) (_ BitVec 64))) (size!15951 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32420)

(declare-datatypes ((List!9798 0))(
  ( (Nil!9795) (Cons!9794 (h!10671 (_ BitVec 64)) (t!16034 List!9798)) )
))
(declare-fun arrayNoDuplicates!0 (array!32420 (_ BitVec 32) List!9798) Bool)

(assert (=> b!504430 (= res!305741 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9795))))

(declare-fun b!504431 () Bool)

(declare-fun res!305744 () Bool)

(declare-fun e!295347 () Bool)

(assert (=> b!504431 (=> (not res!305744) (not e!295347))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504431 (= res!305744 (and (= (size!15951 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15951 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15951 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504432 () Bool)

(declare-fun res!305746 () Bool)

(assert (=> b!504432 (=> (not res!305746) (not e!295347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504432 (= res!305746 (validKeyInArray!0 (select (arr!15587 a!3235) j!176)))))

(declare-fun b!504433 () Bool)

(declare-fun e!295346 () Bool)

(declare-fun lt!229759 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4061 0))(
  ( (MissingZero!4061 (index!18432 (_ BitVec 32))) (Found!4061 (index!18433 (_ BitVec 32))) (Intermediate!4061 (undefined!4873 Bool) (index!18434 (_ BitVec 32)) (x!47473 (_ BitVec 32))) (Undefined!4061) (MissingVacant!4061 (index!18435 (_ BitVec 32))) )
))
(declare-fun lt!229756 () SeekEntryResult!4061)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32420 (_ BitVec 32)) SeekEntryResult!4061)

(assert (=> b!504433 (= e!295346 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229759 (index!18434 lt!229756) (select (arr!15587 a!3235) j!176) a!3235 mask!3524) (Found!4061 j!176))))))

(declare-fun b!504434 () Bool)

(declare-fun e!295348 () Bool)

(assert (=> b!504434 (= e!295344 (not e!295348))))

(declare-fun res!305739 () Bool)

(assert (=> b!504434 (=> res!305739 e!295348)))

(declare-fun lt!229758 () array!32420)

(declare-fun lt!229757 () (_ BitVec 64))

(declare-fun lt!229755 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32420 (_ BitVec 32)) SeekEntryResult!4061)

(assert (=> b!504434 (= res!305739 (= lt!229756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229755 lt!229757 lt!229758 mask!3524)))))

(assert (=> b!504434 (= lt!229756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229759 (select (arr!15587 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504434 (= lt!229755 (toIndex!0 lt!229757 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!504434 (= lt!229757 (select (store (arr!15587 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504434 (= lt!229759 (toIndex!0 (select (arr!15587 a!3235) j!176) mask!3524))))

(assert (=> b!504434 (= lt!229758 (array!32421 (store (arr!15587 a!3235) i!1204 k!2280) (size!15951 a!3235)))))

(declare-fun e!295349 () Bool)

(assert (=> b!504434 e!295349))

(declare-fun res!305752 () Bool)

(assert (=> b!504434 (=> (not res!305752) (not e!295349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32420 (_ BitVec 32)) Bool)

(assert (=> b!504434 (= res!305752 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15334 0))(
  ( (Unit!15335) )
))
(declare-fun lt!229760 () Unit!15334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15334)

(assert (=> b!504434 (= lt!229760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!305745 () Bool)

(assert (=> start!45704 (=> (not res!305745) (not e!295347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45704 (= res!305745 (validMask!0 mask!3524))))

(assert (=> start!45704 e!295347))

(assert (=> start!45704 true))

(declare-fun array_inv!11361 (array!32420) Bool)

(assert (=> start!45704 (array_inv!11361 a!3235)))

(declare-fun b!504435 () Bool)

(declare-fun res!305747 () Bool)

(assert (=> b!504435 (=> (not res!305747) (not e!295347))))

(assert (=> b!504435 (= res!305747 (validKeyInArray!0 k!2280))))

(declare-fun b!504436 () Bool)

(declare-fun e!295343 () Bool)

(assert (=> b!504436 (= e!295343 true)))

(declare-fun lt!229761 () SeekEntryResult!4061)

(assert (=> b!504436 (= lt!229761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229759 lt!229757 lt!229758 mask!3524))))

(declare-fun b!504437 () Bool)

(declare-fun e!295345 () Unit!15334)

(declare-fun Unit!15336 () Unit!15334)

(assert (=> b!504437 (= e!295345 Unit!15336)))

(declare-fun b!504438 () Bool)

(assert (=> b!504438 (= e!295347 e!295344)))

(declare-fun res!305750 () Bool)

(assert (=> b!504438 (=> (not res!305750) (not e!295344))))

(declare-fun lt!229754 () SeekEntryResult!4061)

(assert (=> b!504438 (= res!305750 (or (= lt!229754 (MissingZero!4061 i!1204)) (= lt!229754 (MissingVacant!4061 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32420 (_ BitVec 32)) SeekEntryResult!4061)

(assert (=> b!504438 (= lt!229754 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504439 () Bool)

(declare-fun res!305748 () Bool)

(assert (=> b!504439 (=> (not res!305748) (not e!295344))))

(assert (=> b!504439 (= res!305748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504440 () Bool)

(declare-fun e!295350 () Bool)

(assert (=> b!504440 (= e!295350 false)))

(declare-fun b!504441 () Bool)

(declare-fun res!305751 () Bool)

(assert (=> b!504441 (=> res!305751 e!295348)))

(assert (=> b!504441 (= res!305751 (or (undefined!4873 lt!229756) (not (is-Intermediate!4061 lt!229756))))))

(declare-fun b!504442 () Bool)

(assert (=> b!504442 (= e!295348 e!295343)))

(declare-fun res!305749 () Bool)

(assert (=> b!504442 (=> res!305749 e!295343)))

(assert (=> b!504442 (= res!305749 (or (bvsgt (x!47473 lt!229756) #b01111111111111111111111111111110) (bvslt lt!229759 #b00000000000000000000000000000000) (bvsge lt!229759 (size!15951 a!3235)) (bvslt (index!18434 lt!229756) #b00000000000000000000000000000000) (bvsge (index!18434 lt!229756) (size!15951 a!3235)) (not (= lt!229756 (Intermediate!4061 false (index!18434 lt!229756) (x!47473 lt!229756))))))))

(assert (=> b!504442 (= (index!18434 lt!229756) i!1204)))

(declare-fun lt!229763 () Unit!15334)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32420 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15334)

(assert (=> b!504442 (= lt!229763 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229759 #b00000000000000000000000000000000 (index!18434 lt!229756) (x!47473 lt!229756) mask!3524))))

(assert (=> b!504442 (and (or (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229762 () Unit!15334)

(assert (=> b!504442 (= lt!229762 e!295345)))

(declare-fun c!59624 () Bool)

(assert (=> b!504442 (= c!59624 (= (select (arr!15587 a!3235) (index!18434 lt!229756)) (select (arr!15587 a!3235) j!176)))))

(assert (=> b!504442 (and (bvslt (x!47473 lt!229756) #b01111111111111111111111111111110) (or (= (select (arr!15587 a!3235) (index!18434 lt!229756)) (select (arr!15587 a!3235) j!176)) (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15587 a!3235) (index!18434 lt!229756)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504443 () Bool)

(declare-fun Unit!15337 () Unit!15334)

(assert (=> b!504443 (= e!295345 Unit!15337)))

(declare-fun lt!229753 () Unit!15334)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32420 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15334)

(assert (=> b!504443 (= lt!229753 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229759 #b00000000000000000000000000000000 (index!18434 lt!229756) (x!47473 lt!229756) mask!3524))))

(declare-fun res!305743 () Bool)

(assert (=> b!504443 (= res!305743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229759 lt!229757 lt!229758 mask!3524) (Intermediate!4061 false (index!18434 lt!229756) (x!47473 lt!229756))))))

(assert (=> b!504443 (=> (not res!305743) (not e!295350))))

(assert (=> b!504443 e!295350))

(declare-fun b!504444 () Bool)

(declare-fun res!305742 () Bool)

(assert (=> b!504444 (=> res!305742 e!295343)))

(assert (=> b!504444 (= res!305742 e!295346)))

(declare-fun res!305740 () Bool)

(assert (=> b!504444 (=> (not res!305740) (not e!295346))))

(assert (=> b!504444 (= res!305740 (bvsgt #b00000000000000000000000000000000 (x!47473 lt!229756)))))

(declare-fun b!504445 () Bool)

(declare-fun res!305753 () Bool)

(assert (=> b!504445 (=> (not res!305753) (not e!295347))))

(declare-fun arrayContainsKey!0 (array!32420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504445 (= res!305753 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504446 () Bool)

(assert (=> b!504446 (= e!295349 (= (seekEntryOrOpen!0 (select (arr!15587 a!3235) j!176) a!3235 mask!3524) (Found!4061 j!176)))))

(assert (= (and start!45704 res!305745) b!504431))

(assert (= (and b!504431 res!305744) b!504432))

(assert (= (and b!504432 res!305746) b!504435))

(assert (= (and b!504435 res!305747) b!504445))

(assert (= (and b!504445 res!305753) b!504438))

(assert (= (and b!504438 res!305750) b!504439))

(assert (= (and b!504439 res!305748) b!504430))

(assert (= (and b!504430 res!305741) b!504434))

(assert (= (and b!504434 res!305752) b!504446))

(assert (= (and b!504434 (not res!305739)) b!504441))

(assert (= (and b!504441 (not res!305751)) b!504442))

(assert (= (and b!504442 c!59624) b!504443))

(assert (= (and b!504442 (not c!59624)) b!504437))

(assert (= (and b!504443 res!305743) b!504440))

(assert (= (and b!504442 (not res!305749)) b!504444))

(assert (= (and b!504444 res!305740) b!504433))

(assert (= (and b!504444 (not res!305742)) b!504436))

(declare-fun m!485187 () Bool)

(assert (=> b!504438 m!485187))

(declare-fun m!485189 () Bool)

(assert (=> b!504442 m!485189))

(declare-fun m!485191 () Bool)

(assert (=> b!504442 m!485191))

(declare-fun m!485193 () Bool)

(assert (=> b!504442 m!485193))

(declare-fun m!485195 () Bool)

(assert (=> start!45704 m!485195))

(declare-fun m!485197 () Bool)

(assert (=> start!45704 m!485197))

(declare-fun m!485199 () Bool)

(assert (=> b!504435 m!485199))

(declare-fun m!485201 () Bool)

(assert (=> b!504436 m!485201))

(declare-fun m!485203 () Bool)

(assert (=> b!504443 m!485203))

(assert (=> b!504443 m!485201))

(declare-fun m!485205 () Bool)

(assert (=> b!504434 m!485205))

(declare-fun m!485207 () Bool)

(assert (=> b!504434 m!485207))

(declare-fun m!485209 () Bool)

(assert (=> b!504434 m!485209))

(declare-fun m!485211 () Bool)

(assert (=> b!504434 m!485211))

(assert (=> b!504434 m!485193))

(declare-fun m!485213 () Bool)

(assert (=> b!504434 m!485213))

(declare-fun m!485215 () Bool)

(assert (=> b!504434 m!485215))

(assert (=> b!504434 m!485193))

(declare-fun m!485217 () Bool)

(assert (=> b!504434 m!485217))

(declare-fun m!485219 () Bool)

(assert (=> b!504434 m!485219))

(assert (=> b!504434 m!485193))

(assert (=> b!504433 m!485193))

(assert (=> b!504433 m!485193))

(declare-fun m!485221 () Bool)

(assert (=> b!504433 m!485221))

(declare-fun m!485223 () Bool)

(assert (=> b!504439 m!485223))

(declare-fun m!485225 () Bool)

(assert (=> b!504430 m!485225))

(declare-fun m!485227 () Bool)

(assert (=> b!504445 m!485227))

(assert (=> b!504432 m!485193))

(assert (=> b!504432 m!485193))

(declare-fun m!485229 () Bool)

(assert (=> b!504432 m!485229))

(assert (=> b!504446 m!485193))

(assert (=> b!504446 m!485193))

(declare-fun m!485231 () Bool)

(assert (=> b!504446 m!485231))

(push 1)

