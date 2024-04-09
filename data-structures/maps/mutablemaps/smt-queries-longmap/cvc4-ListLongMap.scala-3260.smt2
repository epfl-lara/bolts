; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45446 () Bool)

(assert start!45446)

(declare-fun b!499578 () Bool)

(declare-fun res!301657 () Bool)

(declare-fun e!292740 () Bool)

(assert (=> b!499578 (=> (not res!301657) (not e!292740))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499578 (= res!301657 (validKeyInArray!0 k!2280))))

(declare-fun b!499579 () Bool)

(declare-datatypes ((Unit!14962 0))(
  ( (Unit!14963) )
))
(declare-fun e!292742 () Unit!14962)

(declare-fun Unit!14964 () Unit!14962)

(assert (=> b!499579 (= e!292742 Unit!14964)))

(declare-fun b!499580 () Bool)

(declare-fun res!301648 () Bool)

(assert (=> b!499580 (=> (not res!301648) (not e!292740))))

(declare-datatypes ((array!32231 0))(
  ( (array!32232 (arr!15494 (Array (_ BitVec 32) (_ BitVec 64))) (size!15858 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32231)

(declare-fun arrayContainsKey!0 (array!32231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499580 (= res!301648 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499581 () Bool)

(declare-fun res!301651 () Bool)

(declare-fun e!292745 () Bool)

(assert (=> b!499581 (=> (not res!301651) (not e!292745))))

(declare-datatypes ((List!9705 0))(
  ( (Nil!9702) (Cons!9701 (h!10575 (_ BitVec 64)) (t!15941 List!9705)) )
))
(declare-fun arrayNoDuplicates!0 (array!32231 (_ BitVec 32) List!9705) Bool)

(assert (=> b!499581 (= res!301651 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9702))))

(declare-fun b!499582 () Bool)

(assert (=> b!499582 (= e!292740 e!292745)))

(declare-fun res!301652 () Bool)

(assert (=> b!499582 (=> (not res!301652) (not e!292745))))

(declare-datatypes ((SeekEntryResult!3968 0))(
  ( (MissingZero!3968 (index!18054 (_ BitVec 32))) (Found!3968 (index!18055 (_ BitVec 32))) (Intermediate!3968 (undefined!4780 Bool) (index!18056 (_ BitVec 32)) (x!47120 (_ BitVec 32))) (Undefined!3968) (MissingVacant!3968 (index!18057 (_ BitVec 32))) )
))
(declare-fun lt!226639 () SeekEntryResult!3968)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499582 (= res!301652 (or (= lt!226639 (MissingZero!3968 i!1204)) (= lt!226639 (MissingVacant!3968 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32231 (_ BitVec 32)) SeekEntryResult!3968)

(assert (=> b!499582 (= lt!226639 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499583 () Bool)

(declare-fun Unit!14965 () Unit!14962)

(assert (=> b!499583 (= e!292742 Unit!14965)))

(declare-fun lt!226632 () SeekEntryResult!3968)

(declare-fun lt!226637 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!226631 () Unit!14962)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32231 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14962)

(assert (=> b!499583 (= lt!226631 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226637 #b00000000000000000000000000000000 (index!18056 lt!226632) (x!47120 lt!226632) mask!3524))))

(declare-fun lt!226640 () (_ BitVec 64))

(declare-fun lt!226633 () array!32231)

(declare-fun res!301654 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32231 (_ BitVec 32)) SeekEntryResult!3968)

(assert (=> b!499583 (= res!301654 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226637 lt!226640 lt!226633 mask!3524) (Intermediate!3968 false (index!18056 lt!226632) (x!47120 lt!226632))))))

(declare-fun e!292743 () Bool)

(assert (=> b!499583 (=> (not res!301654) (not e!292743))))

(assert (=> b!499583 e!292743))

(declare-fun b!499584 () Bool)

(declare-fun res!301649 () Bool)

(declare-fun e!292747 () Bool)

(assert (=> b!499584 (=> res!301649 e!292747)))

(assert (=> b!499584 (= res!301649 (or (undefined!4780 lt!226632) (not (is-Intermediate!3968 lt!226632))))))

(declare-fun b!499585 () Bool)

(assert (=> b!499585 (= e!292743 false)))

(declare-fun b!499586 () Bool)

(declare-fun e!292741 () Bool)

(assert (=> b!499586 (= e!292747 e!292741)))

(declare-fun res!301650 () Bool)

(assert (=> b!499586 (=> res!301650 e!292741)))

(assert (=> b!499586 (= res!301650 (or (bvsgt #b00000000000000000000000000000000 (x!47120 lt!226632)) (bvsgt (x!47120 lt!226632) #b01111111111111111111111111111110) (bvslt lt!226637 #b00000000000000000000000000000000) (bvsge lt!226637 (size!15858 a!3235)) (bvslt (index!18056 lt!226632) #b00000000000000000000000000000000) (bvsge (index!18056 lt!226632) (size!15858 a!3235)) (not (= lt!226632 (Intermediate!3968 false (index!18056 lt!226632) (x!47120 lt!226632))))))))

(assert (=> b!499586 (and (or (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226635 () Unit!14962)

(assert (=> b!499586 (= lt!226635 e!292742)))

(declare-fun c!59243 () Bool)

(assert (=> b!499586 (= c!59243 (= (select (arr!15494 a!3235) (index!18056 lt!226632)) (select (arr!15494 a!3235) j!176)))))

(assert (=> b!499586 (and (bvslt (x!47120 lt!226632) #b01111111111111111111111111111110) (or (= (select (arr!15494 a!3235) (index!18056 lt!226632)) (select (arr!15494 a!3235) j!176)) (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15494 a!3235) (index!18056 lt!226632)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499587 () Bool)

(declare-fun e!292746 () Bool)

(assert (=> b!499587 (= e!292746 (= (seekEntryOrOpen!0 (select (arr!15494 a!3235) j!176) a!3235 mask!3524) (Found!3968 j!176)))))

(declare-fun b!499588 () Bool)

(declare-fun res!301656 () Bool)

(assert (=> b!499588 (=> (not res!301656) (not e!292740))))

(assert (=> b!499588 (= res!301656 (validKeyInArray!0 (select (arr!15494 a!3235) j!176)))))

(declare-fun b!499589 () Bool)

(assert (=> b!499589 (= e!292745 (not e!292747))))

(declare-fun res!301655 () Bool)

(assert (=> b!499589 (=> res!301655 e!292747)))

(declare-fun lt!226638 () (_ BitVec 32))

(assert (=> b!499589 (= res!301655 (= lt!226632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226638 lt!226640 lt!226633 mask!3524)))))

(assert (=> b!499589 (= lt!226632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226637 (select (arr!15494 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499589 (= lt!226638 (toIndex!0 lt!226640 mask!3524))))

(assert (=> b!499589 (= lt!226640 (select (store (arr!15494 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499589 (= lt!226637 (toIndex!0 (select (arr!15494 a!3235) j!176) mask!3524))))

(assert (=> b!499589 (= lt!226633 (array!32232 (store (arr!15494 a!3235) i!1204 k!2280) (size!15858 a!3235)))))

(assert (=> b!499589 e!292746))

(declare-fun res!301658 () Bool)

(assert (=> b!499589 (=> (not res!301658) (not e!292746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32231 (_ BitVec 32)) Bool)

(assert (=> b!499589 (= res!301658 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226634 () Unit!14962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32231 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14962)

(assert (=> b!499589 (= lt!226634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!301647 () Bool)

(assert (=> start!45446 (=> (not res!301647) (not e!292740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45446 (= res!301647 (validMask!0 mask!3524))))

(assert (=> start!45446 e!292740))

(assert (=> start!45446 true))

(declare-fun array_inv!11268 (array!32231) Bool)

(assert (=> start!45446 (array_inv!11268 a!3235)))

(declare-fun b!499590 () Bool)

(declare-fun res!301646 () Bool)

(assert (=> b!499590 (=> (not res!301646) (not e!292740))))

(assert (=> b!499590 (= res!301646 (and (= (size!15858 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15858 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15858 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499591 () Bool)

(declare-fun res!301653 () Bool)

(assert (=> b!499591 (=> (not res!301653) (not e!292745))))

(assert (=> b!499591 (= res!301653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499592 () Bool)

(assert (=> b!499592 (= e!292741 true)))

(declare-fun lt!226636 () SeekEntryResult!3968)

(assert (=> b!499592 (= lt!226636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226637 lt!226640 lt!226633 mask!3524))))

(assert (= (and start!45446 res!301647) b!499590))

(assert (= (and b!499590 res!301646) b!499588))

(assert (= (and b!499588 res!301656) b!499578))

(assert (= (and b!499578 res!301657) b!499580))

(assert (= (and b!499580 res!301648) b!499582))

(assert (= (and b!499582 res!301652) b!499591))

(assert (= (and b!499591 res!301653) b!499581))

(assert (= (and b!499581 res!301651) b!499589))

(assert (= (and b!499589 res!301658) b!499587))

(assert (= (and b!499589 (not res!301655)) b!499584))

(assert (= (and b!499584 (not res!301649)) b!499586))

(assert (= (and b!499586 c!59243) b!499583))

(assert (= (and b!499586 (not c!59243)) b!499579))

(assert (= (and b!499583 res!301654) b!499585))

(assert (= (and b!499586 (not res!301650)) b!499592))

(declare-fun m!480793 () Bool)

(assert (=> b!499583 m!480793))

(declare-fun m!480795 () Bool)

(assert (=> b!499583 m!480795))

(declare-fun m!480797 () Bool)

(assert (=> b!499589 m!480797))

(declare-fun m!480799 () Bool)

(assert (=> b!499589 m!480799))

(declare-fun m!480801 () Bool)

(assert (=> b!499589 m!480801))

(declare-fun m!480803 () Bool)

(assert (=> b!499589 m!480803))

(declare-fun m!480805 () Bool)

(assert (=> b!499589 m!480805))

(declare-fun m!480807 () Bool)

(assert (=> b!499589 m!480807))

(assert (=> b!499589 m!480799))

(declare-fun m!480809 () Bool)

(assert (=> b!499589 m!480809))

(declare-fun m!480811 () Bool)

(assert (=> b!499589 m!480811))

(declare-fun m!480813 () Bool)

(assert (=> b!499589 m!480813))

(assert (=> b!499589 m!480799))

(declare-fun m!480815 () Bool)

(assert (=> b!499578 m!480815))

(declare-fun m!480817 () Bool)

(assert (=> b!499591 m!480817))

(assert (=> b!499587 m!480799))

(assert (=> b!499587 m!480799))

(declare-fun m!480819 () Bool)

(assert (=> b!499587 m!480819))

(declare-fun m!480821 () Bool)

(assert (=> b!499582 m!480821))

(assert (=> b!499588 m!480799))

(assert (=> b!499588 m!480799))

(declare-fun m!480823 () Bool)

(assert (=> b!499588 m!480823))

(declare-fun m!480825 () Bool)

(assert (=> b!499580 m!480825))

(declare-fun m!480827 () Bool)

(assert (=> b!499581 m!480827))

(assert (=> b!499592 m!480795))

(declare-fun m!480829 () Bool)

(assert (=> start!45446 m!480829))

(declare-fun m!480831 () Bool)

(assert (=> start!45446 m!480831))

(declare-fun m!480833 () Bool)

(assert (=> b!499586 m!480833))

(assert (=> b!499586 m!480799))

(push 1)

