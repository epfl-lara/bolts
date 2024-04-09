; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30438 () Bool)

(assert start!30438)

(declare-fun b!304471 () Bool)

(declare-fun res!161980 () Bool)

(declare-fun e!191331 () Bool)

(assert (=> b!304471 (=> (not res!161980) (not e!191331))))

(declare-datatypes ((array!15491 0))(
  ( (array!15492 (arr!7330 (Array (_ BitVec 32) (_ BitVec 64))) (size!7682 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15491)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!304471 (= res!161980 (and (= (select (arr!7330 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7682 a!3293))))))

(declare-fun b!304472 () Bool)

(declare-fun e!191330 () Bool)

(assert (=> b!304472 (= e!191330 e!191331)))

(declare-fun res!161976 () Bool)

(assert (=> b!304472 (=> (not res!161976) (not e!191331))))

(declare-datatypes ((SeekEntryResult!2481 0))(
  ( (MissingZero!2481 (index!12100 (_ BitVec 32))) (Found!2481 (index!12101 (_ BitVec 32))) (Intermediate!2481 (undefined!3293 Bool) (index!12102 (_ BitVec 32)) (x!30326 (_ BitVec 32))) (Undefined!2481) (MissingVacant!2481 (index!12103 (_ BitVec 32))) )
))
(declare-fun lt!150464 () SeekEntryResult!2481)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15491 (_ BitVec 32)) SeekEntryResult!2481)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304472 (= res!161976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150464))))

(assert (=> b!304472 (= lt!150464 (Intermediate!2481 false resIndex!52 resX!52))))

(declare-fun b!304473 () Bool)

(declare-fun res!161982 () Bool)

(assert (=> b!304473 (=> (not res!161982) (not e!191330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15491 (_ BitVec 32)) Bool)

(assert (=> b!304473 (= res!161982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!161979 () Bool)

(assert (=> start!30438 (=> (not res!161979) (not e!191330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30438 (= res!161979 (validMask!0 mask!3709))))

(assert (=> start!30438 e!191330))

(declare-fun array_inv!5284 (array!15491) Bool)

(assert (=> start!30438 (array_inv!5284 a!3293)))

(assert (=> start!30438 true))

(declare-fun b!304474 () Bool)

(declare-fun res!161978 () Bool)

(assert (=> b!304474 (=> (not res!161978) (not e!191330))))

(declare-fun arrayContainsKey!0 (array!15491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304474 (= res!161978 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304475 () Bool)

(declare-fun res!161977 () Bool)

(assert (=> b!304475 (=> (not res!161977) (not e!191330))))

(assert (=> b!304475 (= res!161977 (and (= (size!7682 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7682 a!3293))))))

(declare-fun b!304476 () Bool)

(declare-fun e!191329 () Bool)

(assert (=> b!304476 (= e!191331 e!191329)))

(declare-fun res!161975 () Bool)

(assert (=> b!304476 (=> (not res!161975) (not e!191329))))

(declare-fun lt!150463 () SeekEntryResult!2481)

(assert (=> b!304476 (= res!161975 (and (= lt!150463 lt!150464) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7330 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7330 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7330 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304476 (= lt!150463 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304477 () Bool)

(declare-fun res!161981 () Bool)

(assert (=> b!304477 (=> (not res!161981) (not e!191330))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15491 (_ BitVec 32)) SeekEntryResult!2481)

(assert (=> b!304477 (= res!161981 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2481 i!1240)))))

(declare-fun b!304478 () Bool)

(declare-fun res!161974 () Bool)

(assert (=> b!304478 (=> (not res!161974) (not e!191330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304478 (= res!161974 (validKeyInArray!0 k!2441))))

(declare-fun b!304479 () Bool)

(assert (=> b!304479 (= e!191329 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304479 (= lt!150463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30438 res!161979) b!304475))

(assert (= (and b!304475 res!161977) b!304478))

(assert (= (and b!304478 res!161974) b!304474))

(assert (= (and b!304474 res!161978) b!304477))

(assert (= (and b!304477 res!161981) b!304473))

(assert (= (and b!304473 res!161982) b!304472))

(assert (= (and b!304472 res!161976) b!304471))

(assert (= (and b!304471 res!161980) b!304476))

(assert (= (and b!304476 res!161975) b!304479))

(declare-fun m!315601 () Bool)

(assert (=> b!304472 m!315601))

(assert (=> b!304472 m!315601))

(declare-fun m!315603 () Bool)

(assert (=> b!304472 m!315603))

(declare-fun m!315605 () Bool)

(assert (=> b!304479 m!315605))

(assert (=> b!304479 m!315605))

(declare-fun m!315607 () Bool)

(assert (=> b!304479 m!315607))

(declare-fun m!315609 () Bool)

(assert (=> b!304478 m!315609))

(declare-fun m!315611 () Bool)

(assert (=> b!304474 m!315611))

(declare-fun m!315613 () Bool)

(assert (=> b!304477 m!315613))

(declare-fun m!315615 () Bool)

(assert (=> b!304473 m!315615))

(declare-fun m!315617 () Bool)

(assert (=> b!304476 m!315617))

(declare-fun m!315619 () Bool)

(assert (=> b!304476 m!315619))

(declare-fun m!315621 () Bool)

(assert (=> b!304471 m!315621))

(declare-fun m!315623 () Bool)

(assert (=> start!30438 m!315623))

(declare-fun m!315625 () Bool)

(assert (=> start!30438 m!315625))

(push 1)

