; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31938 () Bool)

(assert start!31938)

(declare-fun b!318936 () Bool)

(declare-fun res!173482 () Bool)

(declare-fun e!198134 () Bool)

(assert (=> b!318936 (=> (not res!173482) (not e!198134))))

(declare-datatypes ((array!16256 0))(
  ( (array!16257 (arr!7690 (Array (_ BitVec 32) (_ BitVec 64))) (size!8042 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16256)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318936 (= res!173482 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318938 () Bool)

(declare-fun res!173481 () Bool)

(assert (=> b!318938 (=> (not res!173481) (not e!198134))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2841 0))(
  ( (MissingZero!2841 (index!13540 (_ BitVec 32))) (Found!2841 (index!13541 (_ BitVec 32))) (Intermediate!2841 (undefined!3653 Bool) (index!13542 (_ BitVec 32)) (x!31766 (_ BitVec 32))) (Undefined!2841) (MissingVacant!2841 (index!13543 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16256 (_ BitVec 32)) SeekEntryResult!2841)

(assert (=> b!318938 (= res!173481 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2841 i!1240)))))

(declare-fun b!318939 () Bool)

(declare-fun res!173484 () Bool)

(declare-fun e!198135 () Bool)

(assert (=> b!318939 (=> (not res!173484) (not e!198135))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318939 (= res!173484 (and (= (select (arr!7690 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8042 a!3293))))))

(declare-fun b!318940 () Bool)

(declare-fun res!173483 () Bool)

(assert (=> b!318940 (=> (not res!173483) (not e!198134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16256 (_ BitVec 32)) Bool)

(assert (=> b!318940 (= res!173483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318941 () Bool)

(declare-fun e!198136 () Bool)

(declare-fun e!198133 () Bool)

(assert (=> b!318941 (= e!198136 (not e!198133))))

(declare-fun res!173485 () Bool)

(assert (=> b!318941 (=> res!173485 e!198133)))

(declare-fun lt!155627 () SeekEntryResult!2841)

(declare-fun lt!155625 () SeekEntryResult!2841)

(declare-fun lt!155623 () (_ BitVec 32))

(assert (=> b!318941 (= res!173485 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155623 #b00000000000000000000000000000000) (bvsge lt!155623 (size!8042 a!3293)) (not (= lt!155625 lt!155627))))))

(declare-fun lt!155626 () SeekEntryResult!2841)

(declare-fun lt!155622 () SeekEntryResult!2841)

(assert (=> b!318941 (= lt!155626 lt!155622)))

(declare-fun lt!155620 () array!16256)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16256 (_ BitVec 32)) SeekEntryResult!2841)

(assert (=> b!318941 (= lt!155622 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155623 k!2441 lt!155620 mask!3709))))

(assert (=> b!318941 (= lt!155626 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155620 mask!3709))))

(assert (=> b!318941 (= lt!155620 (array!16257 (store (arr!7690 a!3293) i!1240 k!2441) (size!8042 a!3293)))))

(declare-fun lt!155621 () SeekEntryResult!2841)

(assert (=> b!318941 (= lt!155621 lt!155625)))

(assert (=> b!318941 (= lt!155625 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155623 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318941 (= lt!155623 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!173487 () Bool)

(assert (=> start!31938 (=> (not res!173487) (not e!198134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31938 (= res!173487 (validMask!0 mask!3709))))

(assert (=> start!31938 e!198134))

(declare-fun array_inv!5644 (array!16256) Bool)

(assert (=> start!31938 (array_inv!5644 a!3293)))

(assert (=> start!31938 true))

(declare-fun b!318937 () Bool)

(assert (=> b!318937 (= e!198134 e!198135)))

(declare-fun res!173479 () Bool)

(assert (=> b!318937 (=> (not res!173479) (not e!198135))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318937 (= res!173479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155627))))

(assert (=> b!318937 (= lt!155627 (Intermediate!2841 false resIndex!52 resX!52))))

(declare-fun b!318942 () Bool)

(declare-fun res!173478 () Bool)

(assert (=> b!318942 (=> (not res!173478) (not e!198134))))

(assert (=> b!318942 (= res!173478 (and (= (size!8042 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8042 a!3293))))))

(declare-fun b!318943 () Bool)

(assert (=> b!318943 (= e!198135 e!198136)))

(declare-fun res!173486 () Bool)

(assert (=> b!318943 (=> (not res!173486) (not e!198136))))

(assert (=> b!318943 (= res!173486 (and (= lt!155621 lt!155627) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7690 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318943 (= lt!155621 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318944 () Bool)

(assert (=> b!318944 (= e!198133 true)))

(assert (=> b!318944 (= lt!155622 lt!155625)))

(declare-datatypes ((Unit!9793 0))(
  ( (Unit!9794) )
))
(declare-fun lt!155624 () Unit!9793)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9793)

(assert (=> b!318944 (= lt!155624 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155623 resIndex!52 resX!52 mask!3709))))

(declare-fun b!318945 () Bool)

(declare-fun res!173480 () Bool)

(assert (=> b!318945 (=> (not res!173480) (not e!198134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318945 (= res!173480 (validKeyInArray!0 k!2441))))

(assert (= (and start!31938 res!173487) b!318942))

(assert (= (and b!318942 res!173478) b!318945))

(assert (= (and b!318945 res!173480) b!318936))

(assert (= (and b!318936 res!173482) b!318938))

(assert (= (and b!318938 res!173481) b!318940))

(assert (= (and b!318940 res!173483) b!318937))

(assert (= (and b!318937 res!173479) b!318939))

(assert (= (and b!318939 res!173484) b!318943))

(assert (= (and b!318943 res!173486) b!318941))

(assert (= (and b!318941 (not res!173485)) b!318944))

(declare-fun m!327583 () Bool)

(assert (=> b!318938 m!327583))

(declare-fun m!327585 () Bool)

(assert (=> b!318940 m!327585))

(declare-fun m!327587 () Bool)

(assert (=> b!318939 m!327587))

(declare-fun m!327589 () Bool)

(assert (=> b!318937 m!327589))

(assert (=> b!318937 m!327589))

(declare-fun m!327591 () Bool)

(assert (=> b!318937 m!327591))

(declare-fun m!327593 () Bool)

(assert (=> b!318943 m!327593))

(declare-fun m!327595 () Bool)

(assert (=> b!318943 m!327595))

(declare-fun m!327597 () Bool)

(assert (=> start!31938 m!327597))

(declare-fun m!327599 () Bool)

(assert (=> start!31938 m!327599))

(declare-fun m!327601 () Bool)

(assert (=> b!318941 m!327601))

(declare-fun m!327603 () Bool)

(assert (=> b!318941 m!327603))

(declare-fun m!327605 () Bool)

(assert (=> b!318941 m!327605))

(declare-fun m!327607 () Bool)

(assert (=> b!318941 m!327607))

(declare-fun m!327609 () Bool)

(assert (=> b!318941 m!327609))

(declare-fun m!327611 () Bool)

(assert (=> b!318944 m!327611))

(declare-fun m!327613 () Bool)

(assert (=> b!318945 m!327613))

(declare-fun m!327615 () Bool)

(assert (=> b!318936 m!327615))

(push 1)

