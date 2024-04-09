; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47904 () Bool)

(assert start!47904)

(declare-fun b!527194 () Bool)

(declare-datatypes ((Unit!16614 0))(
  ( (Unit!16615) )
))
(declare-fun e!307273 () Unit!16614)

(declare-fun Unit!16616 () Unit!16614)

(assert (=> b!527194 (= e!307273 Unit!16616)))

(declare-fun b!527195 () Bool)

(declare-fun res!323682 () Bool)

(declare-fun e!307278 () Bool)

(assert (=> b!527195 (=> (not res!323682) (not e!307278))))

(declare-datatypes ((array!33432 0))(
  ( (array!33433 (arr!16063 (Array (_ BitVec 32) (_ BitVec 64))) (size!16427 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33432)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527195 (= res!323682 (validKeyInArray!0 (select (arr!16063 a!3235) j!176)))))

(declare-fun b!527196 () Bool)

(declare-fun res!323677 () Bool)

(assert (=> b!527196 (=> (not res!323677) (not e!307278))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527196 (= res!323677 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527197 () Bool)

(declare-fun res!323679 () Bool)

(assert (=> b!527197 (=> (not res!323679) (not e!307278))))

(assert (=> b!527197 (= res!323679 (validKeyInArray!0 k0!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!527198 () Bool)

(declare-fun e!307274 () Bool)

(declare-datatypes ((SeekEntryResult!4537 0))(
  ( (MissingZero!4537 (index!20366 (_ BitVec 32))) (Found!4537 (index!20367 (_ BitVec 32))) (Intermediate!4537 (undefined!5349 Bool) (index!20368 (_ BitVec 32)) (x!49365 (_ BitVec 32))) (Undefined!4537) (MissingVacant!4537 (index!20369 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33432 (_ BitVec 32)) SeekEntryResult!4537)

(assert (=> b!527198 (= e!307274 (= (seekEntryOrOpen!0 (select (arr!16063 a!3235) j!176) a!3235 mask!3524) (Found!4537 j!176)))))

(declare-fun b!527199 () Bool)

(declare-fun Unit!16617 () Unit!16614)

(assert (=> b!527199 (= e!307273 Unit!16617)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!242672 () SeekEntryResult!4537)

(declare-fun lt!242673 () (_ BitVec 32))

(declare-fun lt!242669 () Unit!16614)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16614)

(assert (=> b!527199 (= lt!242669 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242673 #b00000000000000000000000000000000 (index!20368 lt!242672) (x!49365 lt!242672) mask!3524))))

(declare-fun res!323685 () Bool)

(declare-fun lt!242674 () array!33432)

(declare-fun lt!242670 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33432 (_ BitVec 32)) SeekEntryResult!4537)

(assert (=> b!527199 (= res!323685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242673 lt!242670 lt!242674 mask!3524) (Intermediate!4537 false (index!20368 lt!242672) (x!49365 lt!242672))))))

(declare-fun e!307276 () Bool)

(assert (=> b!527199 (=> (not res!323685) (not e!307276))))

(assert (=> b!527199 e!307276))

(declare-fun res!323683 () Bool)

(assert (=> start!47904 (=> (not res!323683) (not e!307278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47904 (= res!323683 (validMask!0 mask!3524))))

(assert (=> start!47904 e!307278))

(assert (=> start!47904 true))

(declare-fun array_inv!11837 (array!33432) Bool)

(assert (=> start!47904 (array_inv!11837 a!3235)))

(declare-fun b!527200 () Bool)

(declare-fun res!323686 () Bool)

(declare-fun e!307279 () Bool)

(assert (=> b!527200 (=> (not res!323686) (not e!307279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33432 (_ BitVec 32)) Bool)

(assert (=> b!527200 (= res!323686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527201 () Bool)

(declare-fun e!307277 () Bool)

(assert (=> b!527201 (= e!307279 (not e!307277))))

(declare-fun res!323684 () Bool)

(assert (=> b!527201 (=> res!323684 e!307277)))

(declare-fun lt!242675 () (_ BitVec 32))

(assert (=> b!527201 (= res!323684 (= lt!242672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242675 lt!242670 lt!242674 mask!3524)))))

(assert (=> b!527201 (= lt!242672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242673 (select (arr!16063 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527201 (= lt!242675 (toIndex!0 lt!242670 mask!3524))))

(assert (=> b!527201 (= lt!242670 (select (store (arr!16063 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!527201 (= lt!242673 (toIndex!0 (select (arr!16063 a!3235) j!176) mask!3524))))

(assert (=> b!527201 (= lt!242674 (array!33433 (store (arr!16063 a!3235) i!1204 k0!2280) (size!16427 a!3235)))))

(assert (=> b!527201 e!307274))

(declare-fun res!323680 () Bool)

(assert (=> b!527201 (=> (not res!323680) (not e!307274))))

(assert (=> b!527201 (= res!323680 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242678 () Unit!16614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16614)

(assert (=> b!527201 (= lt!242678 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527202 () Bool)

(declare-fun res!323687 () Bool)

(assert (=> b!527202 (=> res!323687 e!307277)))

(get-info :version)

(assert (=> b!527202 (= res!323687 (or (undefined!5349 lt!242672) (not ((_ is Intermediate!4537) lt!242672))))))

(declare-fun b!527203 () Bool)

(declare-fun res!323678 () Bool)

(assert (=> b!527203 (=> (not res!323678) (not e!307279))))

(declare-datatypes ((List!10274 0))(
  ( (Nil!10271) (Cons!10270 (h!11204 (_ BitVec 64)) (t!16510 List!10274)) )
))
(declare-fun arrayNoDuplicates!0 (array!33432 (_ BitVec 32) List!10274) Bool)

(assert (=> b!527203 (= res!323678 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10271))))

(declare-fun b!527204 () Bool)

(assert (=> b!527204 (= e!307276 false)))

(declare-fun b!527205 () Bool)

(assert (=> b!527205 (= e!307277 (or (bvsgt (x!49365 lt!242672) #b01111111111111111111111111111110) (bvslt lt!242673 #b00000000000000000000000000000000) (bvsge lt!242673 (size!16427 a!3235)) (and (bvsge (index!20368 lt!242672) #b00000000000000000000000000000000) (bvslt (index!20368 lt!242672) (size!16427 a!3235)))))))

(assert (=> b!527205 (= (index!20368 lt!242672) i!1204)))

(declare-fun lt!242676 () Unit!16614)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16614)

(assert (=> b!527205 (= lt!242676 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242673 #b00000000000000000000000000000000 (index!20368 lt!242672) (x!49365 lt!242672) mask!3524))))

(assert (=> b!527205 (and (or (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242677 () Unit!16614)

(assert (=> b!527205 (= lt!242677 e!307273)))

(declare-fun c!62066 () Bool)

(assert (=> b!527205 (= c!62066 (= (select (arr!16063 a!3235) (index!20368 lt!242672)) (select (arr!16063 a!3235) j!176)))))

(assert (=> b!527205 (and (bvslt (x!49365 lt!242672) #b01111111111111111111111111111110) (or (= (select (arr!16063 a!3235) (index!20368 lt!242672)) (select (arr!16063 a!3235) j!176)) (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16063 a!3235) (index!20368 lt!242672)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527206 () Bool)

(assert (=> b!527206 (= e!307278 e!307279)))

(declare-fun res!323676 () Bool)

(assert (=> b!527206 (=> (not res!323676) (not e!307279))))

(declare-fun lt!242671 () SeekEntryResult!4537)

(assert (=> b!527206 (= res!323676 (or (= lt!242671 (MissingZero!4537 i!1204)) (= lt!242671 (MissingVacant!4537 i!1204))))))

(assert (=> b!527206 (= lt!242671 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!527207 () Bool)

(declare-fun res!323681 () Bool)

(assert (=> b!527207 (=> (not res!323681) (not e!307278))))

(assert (=> b!527207 (= res!323681 (and (= (size!16427 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16427 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16427 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47904 res!323683) b!527207))

(assert (= (and b!527207 res!323681) b!527195))

(assert (= (and b!527195 res!323682) b!527197))

(assert (= (and b!527197 res!323679) b!527196))

(assert (= (and b!527196 res!323677) b!527206))

(assert (= (and b!527206 res!323676) b!527200))

(assert (= (and b!527200 res!323686) b!527203))

(assert (= (and b!527203 res!323678) b!527201))

(assert (= (and b!527201 res!323680) b!527198))

(assert (= (and b!527201 (not res!323684)) b!527202))

(assert (= (and b!527202 (not res!323687)) b!527205))

(assert (= (and b!527205 c!62066) b!527199))

(assert (= (and b!527205 (not c!62066)) b!527194))

(assert (= (and b!527199 res!323685) b!527204))

(declare-fun m!507879 () Bool)

(assert (=> b!527203 m!507879))

(declare-fun m!507881 () Bool)

(assert (=> b!527201 m!507881))

(declare-fun m!507883 () Bool)

(assert (=> b!527201 m!507883))

(declare-fun m!507885 () Bool)

(assert (=> b!527201 m!507885))

(declare-fun m!507887 () Bool)

(assert (=> b!527201 m!507887))

(declare-fun m!507889 () Bool)

(assert (=> b!527201 m!507889))

(assert (=> b!527201 m!507887))

(declare-fun m!507891 () Bool)

(assert (=> b!527201 m!507891))

(assert (=> b!527201 m!507887))

(declare-fun m!507893 () Bool)

(assert (=> b!527201 m!507893))

(declare-fun m!507895 () Bool)

(assert (=> b!527201 m!507895))

(declare-fun m!507897 () Bool)

(assert (=> b!527201 m!507897))

(declare-fun m!507899 () Bool)

(assert (=> b!527205 m!507899))

(declare-fun m!507901 () Bool)

(assert (=> b!527205 m!507901))

(assert (=> b!527205 m!507887))

(declare-fun m!507903 () Bool)

(assert (=> b!527199 m!507903))

(declare-fun m!507905 () Bool)

(assert (=> b!527199 m!507905))

(declare-fun m!507907 () Bool)

(assert (=> start!47904 m!507907))

(declare-fun m!507909 () Bool)

(assert (=> start!47904 m!507909))

(declare-fun m!507911 () Bool)

(assert (=> b!527206 m!507911))

(declare-fun m!507913 () Bool)

(assert (=> b!527196 m!507913))

(declare-fun m!507915 () Bool)

(assert (=> b!527197 m!507915))

(assert (=> b!527195 m!507887))

(assert (=> b!527195 m!507887))

(declare-fun m!507917 () Bool)

(assert (=> b!527195 m!507917))

(assert (=> b!527198 m!507887))

(assert (=> b!527198 m!507887))

(declare-fun m!507919 () Bool)

(assert (=> b!527198 m!507919))

(declare-fun m!507921 () Bool)

(assert (=> b!527200 m!507921))

(check-sat (not b!527195) (not b!527205) (not b!527200) (not b!527198) (not b!527201) (not b!527199) (not b!527196) (not start!47904) (not b!527203) (not b!527206) (not b!527197))
(check-sat)
