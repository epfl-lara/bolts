; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65736 () Bool)

(assert start!65736)

(declare-fun b!754054 () Bool)

(declare-fun res!509599 () Bool)

(declare-fun e!420576 () Bool)

(assert (=> b!754054 (=> (not res!509599) (not e!420576))))

(declare-datatypes ((array!41862 0))(
  ( (array!41863 (arr!20041 (Array (_ BitVec 32) (_ BitVec 64))) (size!20462 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41862)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754054 (= res!509599 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754055 () Bool)

(declare-fun res!509598 () Bool)

(declare-fun e!420580 () Bool)

(assert (=> b!754055 (=> (not res!509598) (not e!420580))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754055 (= res!509598 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20041 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!509596 () Bool)

(assert (=> start!65736 (=> (not res!509596) (not e!420576))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65736 (= res!509596 (validMask!0 mask!3328))))

(assert (=> start!65736 e!420576))

(assert (=> start!65736 true))

(declare-fun array_inv!15815 (array!41862) Bool)

(assert (=> start!65736 (array_inv!15815 a!3186)))

(declare-fun b!754056 () Bool)

(declare-fun e!420571 () Bool)

(declare-fun e!420575 () Bool)

(assert (=> b!754056 (= e!420571 e!420575)))

(declare-fun res!509602 () Bool)

(assert (=> b!754056 (=> res!509602 e!420575)))

(declare-fun lt!335572 () (_ BitVec 64))

(declare-fun lt!335575 () (_ BitVec 64))

(assert (=> b!754056 (= res!509602 (= lt!335572 lt!335575))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!754056 (= lt!335572 (select (store (arr!20041 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!754057 () Bool)

(declare-fun res!509594 () Bool)

(assert (=> b!754057 (=> (not res!509594) (not e!420576))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754057 (= res!509594 (validKeyInArray!0 (select (arr!20041 a!3186) j!159)))))

(declare-fun b!754058 () Bool)

(declare-datatypes ((SeekEntryResult!7648 0))(
  ( (MissingZero!7648 (index!32959 (_ BitVec 32))) (Found!7648 (index!32960 (_ BitVec 32))) (Intermediate!7648 (undefined!8460 Bool) (index!32961 (_ BitVec 32)) (x!63895 (_ BitVec 32))) (Undefined!7648) (MissingVacant!7648 (index!32962 (_ BitVec 32))) )
))
(declare-fun lt!335580 () SeekEntryResult!7648)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!420581 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41862 (_ BitVec 32)) SeekEntryResult!7648)

(assert (=> b!754058 (= e!420581 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20041 a!3186) j!159) a!3186 mask!3328) lt!335580))))

(declare-fun b!754059 () Bool)

(declare-fun res!509604 () Bool)

(assert (=> b!754059 (=> (not res!509604) (not e!420580))))

(declare-fun e!420577 () Bool)

(assert (=> b!754059 (= res!509604 e!420577)))

(declare-fun c!82614 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!754059 (= c!82614 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754060 () Bool)

(declare-datatypes ((Unit!25994 0))(
  ( (Unit!25995) )
))
(declare-fun e!420572 () Unit!25994)

(declare-fun Unit!25996 () Unit!25994)

(assert (=> b!754060 (= e!420572 Unit!25996)))

(assert (=> b!754060 false))

(declare-fun b!754061 () Bool)

(declare-fun e!420573 () Bool)

(declare-fun e!420578 () Bool)

(assert (=> b!754061 (= e!420573 (not e!420578))))

(declare-fun res!509600 () Bool)

(assert (=> b!754061 (=> res!509600 e!420578)))

(declare-fun lt!335571 () SeekEntryResult!7648)

(get-info :version)

(assert (=> b!754061 (= res!509600 (or (not ((_ is Intermediate!7648) lt!335571)) (bvslt x!1131 (x!63895 lt!335571)) (not (= x!1131 (x!63895 lt!335571))) (not (= index!1321 (index!32961 lt!335571)))))))

(assert (=> b!754061 e!420581))

(declare-fun res!509590 () Bool)

(assert (=> b!754061 (=> (not res!509590) (not e!420581))))

(declare-fun lt!335577 () SeekEntryResult!7648)

(assert (=> b!754061 (= res!509590 (= lt!335577 lt!335580))))

(assert (=> b!754061 (= lt!335580 (Found!7648 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41862 (_ BitVec 32)) SeekEntryResult!7648)

(assert (=> b!754061 (= lt!335577 (seekEntryOrOpen!0 (select (arr!20041 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41862 (_ BitVec 32)) Bool)

(assert (=> b!754061 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335576 () Unit!25994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25994)

(assert (=> b!754061 (= lt!335576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754062 () Bool)

(assert (=> b!754062 (= e!420578 e!420571)))

(declare-fun res!509605 () Bool)

(assert (=> b!754062 (=> res!509605 e!420571)))

(declare-fun lt!335581 () SeekEntryResult!7648)

(assert (=> b!754062 (= res!509605 (not (= lt!335581 lt!335580)))))

(assert (=> b!754062 (= lt!335581 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20041 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754063 () Bool)

(declare-fun res!509601 () Bool)

(assert (=> b!754063 (=> (not res!509601) (not e!420576))))

(assert (=> b!754063 (= res!509601 (and (= (size!20462 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20462 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20462 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754064 () Bool)

(declare-fun e!420579 () Bool)

(assert (=> b!754064 (= e!420579 e!420580)))

(declare-fun res!509595 () Bool)

(assert (=> b!754064 (=> (not res!509595) (not e!420580))))

(declare-fun lt!335579 () SeekEntryResult!7648)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41862 (_ BitVec 32)) SeekEntryResult!7648)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754064 (= res!509595 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20041 a!3186) j!159) mask!3328) (select (arr!20041 a!3186) j!159) a!3186 mask!3328) lt!335579))))

(assert (=> b!754064 (= lt!335579 (Intermediate!7648 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754065 () Bool)

(assert (=> b!754065 (= e!420576 e!420579)))

(declare-fun res!509591 () Bool)

(assert (=> b!754065 (=> (not res!509591) (not e!420579))))

(declare-fun lt!335578 () SeekEntryResult!7648)

(assert (=> b!754065 (= res!509591 (or (= lt!335578 (MissingZero!7648 i!1173)) (= lt!335578 (MissingVacant!7648 i!1173))))))

(assert (=> b!754065 (= lt!335578 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!754066 () Bool)

(assert (=> b!754066 (= e!420577 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20041 a!3186) j!159) a!3186 mask!3328) (Found!7648 j!159)))))

(declare-fun b!754067 () Bool)

(declare-fun res!509607 () Bool)

(assert (=> b!754067 (=> (not res!509607) (not e!420576))))

(assert (=> b!754067 (= res!509607 (validKeyInArray!0 k0!2102))))

(declare-fun b!754068 () Bool)

(assert (=> b!754068 (= e!420580 e!420573)))

(declare-fun res!509593 () Bool)

(assert (=> b!754068 (=> (not res!509593) (not e!420573))))

(declare-fun lt!335582 () SeekEntryResult!7648)

(assert (=> b!754068 (= res!509593 (= lt!335582 lt!335571))))

(declare-fun lt!335574 () array!41862)

(assert (=> b!754068 (= lt!335571 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335575 lt!335574 mask!3328))))

(assert (=> b!754068 (= lt!335582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335575 mask!3328) lt!335575 lt!335574 mask!3328))))

(assert (=> b!754068 (= lt!335575 (select (store (arr!20041 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!754068 (= lt!335574 (array!41863 (store (arr!20041 a!3186) i!1173 k0!2102) (size!20462 a!3186)))))

(declare-fun b!754069 () Bool)

(declare-fun res!509603 () Bool)

(assert (=> b!754069 (=> (not res!509603) (not e!420579))))

(declare-datatypes ((List!14096 0))(
  ( (Nil!14093) (Cons!14092 (h!15164 (_ BitVec 64)) (t!20419 List!14096)) )
))
(declare-fun arrayNoDuplicates!0 (array!41862 (_ BitVec 32) List!14096) Bool)

(assert (=> b!754069 (= res!509603 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14093))))

(declare-fun b!754070 () Bool)

(declare-fun e!420574 () Bool)

(assert (=> b!754070 (= e!420574 (= lt!335577 lt!335581))))

(declare-fun b!754071 () Bool)

(declare-fun Unit!25997 () Unit!25994)

(assert (=> b!754071 (= e!420572 Unit!25997)))

(declare-fun b!754072 () Bool)

(declare-fun res!509597 () Bool)

(assert (=> b!754072 (=> (not res!509597) (not e!420579))))

(assert (=> b!754072 (= res!509597 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20462 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20462 a!3186))))))

(declare-fun b!754073 () Bool)

(declare-fun res!509589 () Bool)

(assert (=> b!754073 (=> (not res!509589) (not e!420574))))

(assert (=> b!754073 (= res!509589 (= (seekEntryOrOpen!0 lt!335575 lt!335574 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335575 lt!335574 mask!3328)))))

(declare-fun b!754074 () Bool)

(assert (=> b!754074 (= e!420577 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20041 a!3186) j!159) a!3186 mask!3328) lt!335579))))

(declare-fun b!754075 () Bool)

(assert (=> b!754075 (= e!420575 true)))

(assert (=> b!754075 e!420574))

(declare-fun res!509606 () Bool)

(assert (=> b!754075 (=> (not res!509606) (not e!420574))))

(assert (=> b!754075 (= res!509606 (= lt!335572 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335573 () Unit!25994)

(assert (=> b!754075 (= lt!335573 e!420572)))

(declare-fun c!82613 () Bool)

(assert (=> b!754075 (= c!82613 (= lt!335572 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754076 () Bool)

(declare-fun res!509592 () Bool)

(assert (=> b!754076 (=> (not res!509592) (not e!420579))))

(assert (=> b!754076 (= res!509592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65736 res!509596) b!754063))

(assert (= (and b!754063 res!509601) b!754057))

(assert (= (and b!754057 res!509594) b!754067))

(assert (= (and b!754067 res!509607) b!754054))

(assert (= (and b!754054 res!509599) b!754065))

(assert (= (and b!754065 res!509591) b!754076))

(assert (= (and b!754076 res!509592) b!754069))

(assert (= (and b!754069 res!509603) b!754072))

(assert (= (and b!754072 res!509597) b!754064))

(assert (= (and b!754064 res!509595) b!754055))

(assert (= (and b!754055 res!509598) b!754059))

(assert (= (and b!754059 c!82614) b!754074))

(assert (= (and b!754059 (not c!82614)) b!754066))

(assert (= (and b!754059 res!509604) b!754068))

(assert (= (and b!754068 res!509593) b!754061))

(assert (= (and b!754061 res!509590) b!754058))

(assert (= (and b!754061 (not res!509600)) b!754062))

(assert (= (and b!754062 (not res!509605)) b!754056))

(assert (= (and b!754056 (not res!509602)) b!754075))

(assert (= (and b!754075 c!82613) b!754060))

(assert (= (and b!754075 (not c!82613)) b!754071))

(assert (= (and b!754075 res!509606) b!754073))

(assert (= (and b!754073 res!509589) b!754070))

(declare-fun m!702665 () Bool)

(assert (=> b!754064 m!702665))

(assert (=> b!754064 m!702665))

(declare-fun m!702667 () Bool)

(assert (=> b!754064 m!702667))

(assert (=> b!754064 m!702667))

(assert (=> b!754064 m!702665))

(declare-fun m!702669 () Bool)

(assert (=> b!754064 m!702669))

(declare-fun m!702671 () Bool)

(assert (=> b!754073 m!702671))

(declare-fun m!702673 () Bool)

(assert (=> b!754073 m!702673))

(declare-fun m!702675 () Bool)

(assert (=> start!65736 m!702675))

(declare-fun m!702677 () Bool)

(assert (=> start!65736 m!702677))

(declare-fun m!702679 () Bool)

(assert (=> b!754069 m!702679))

(assert (=> b!754057 m!702665))

(assert (=> b!754057 m!702665))

(declare-fun m!702681 () Bool)

(assert (=> b!754057 m!702681))

(assert (=> b!754074 m!702665))

(assert (=> b!754074 m!702665))

(declare-fun m!702683 () Bool)

(assert (=> b!754074 m!702683))

(declare-fun m!702685 () Bool)

(assert (=> b!754067 m!702685))

(assert (=> b!754066 m!702665))

(assert (=> b!754066 m!702665))

(declare-fun m!702687 () Bool)

(assert (=> b!754066 m!702687))

(assert (=> b!754061 m!702665))

(assert (=> b!754061 m!702665))

(declare-fun m!702689 () Bool)

(assert (=> b!754061 m!702689))

(declare-fun m!702691 () Bool)

(assert (=> b!754061 m!702691))

(declare-fun m!702693 () Bool)

(assert (=> b!754061 m!702693))

(assert (=> b!754062 m!702665))

(assert (=> b!754062 m!702665))

(assert (=> b!754062 m!702687))

(declare-fun m!702695 () Bool)

(assert (=> b!754055 m!702695))

(declare-fun m!702697 () Bool)

(assert (=> b!754056 m!702697))

(declare-fun m!702699 () Bool)

(assert (=> b!754056 m!702699))

(declare-fun m!702701 () Bool)

(assert (=> b!754054 m!702701))

(declare-fun m!702703 () Bool)

(assert (=> b!754076 m!702703))

(declare-fun m!702705 () Bool)

(assert (=> b!754068 m!702705))

(declare-fun m!702707 () Bool)

(assert (=> b!754068 m!702707))

(declare-fun m!702709 () Bool)

(assert (=> b!754068 m!702709))

(assert (=> b!754068 m!702707))

(assert (=> b!754068 m!702697))

(declare-fun m!702711 () Bool)

(assert (=> b!754068 m!702711))

(assert (=> b!754058 m!702665))

(assert (=> b!754058 m!702665))

(declare-fun m!702713 () Bool)

(assert (=> b!754058 m!702713))

(declare-fun m!702715 () Bool)

(assert (=> b!754065 m!702715))

(check-sat (not b!754076) (not b!754062) (not b!754069) (not b!754058) (not b!754067) (not b!754073) (not b!754061) (not b!754064) (not b!754054) (not b!754057) (not b!754065) (not b!754066) (not start!65736) (not b!754074) (not b!754068))
(check-sat)
