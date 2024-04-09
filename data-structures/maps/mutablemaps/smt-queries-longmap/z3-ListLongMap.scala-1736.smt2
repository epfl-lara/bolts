; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31928 () Bool)

(assert start!31928)

(declare-fun b!318786 () Bool)

(declare-fun res!173334 () Bool)

(declare-fun e!198061 () Bool)

(assert (=> b!318786 (=> (not res!173334) (not e!198061))))

(declare-datatypes ((array!16246 0))(
  ( (array!16247 (arr!7685 (Array (_ BitVec 32) (_ BitVec 64))) (size!8037 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16246)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318786 (= res!173334 (and (= (size!8037 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8037 a!3293))))))

(declare-fun b!318787 () Bool)

(declare-fun lt!155541 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155540 () array!16246)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun e!198060 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2836 0))(
  ( (MissingZero!2836 (index!13520 (_ BitVec 32))) (Found!2836 (index!13521 (_ BitVec 32))) (Intermediate!2836 (undefined!3648 Bool) (index!13522 (_ BitVec 32)) (x!31745 (_ BitVec 32))) (Undefined!2836) (MissingVacant!2836 (index!13523 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16246 (_ BitVec 32)) SeekEntryResult!2836)

(assert (=> b!318787 (= e!198060 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155540 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155541 k0!2441 lt!155540 mask!3709)))))

(assert (=> b!318787 (= lt!155540 (array!16247 (store (arr!7685 a!3293) i!1240 k0!2441) (size!8037 a!3293)))))

(declare-fun b!318788 () Bool)

(declare-fun res!173335 () Bool)

(declare-fun e!198058 () Bool)

(assert (=> b!318788 (=> (not res!173335) (not e!198058))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318788 (= res!173335 (and (= (select (arr!7685 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8037 a!3293))))))

(declare-fun res!173337 () Bool)

(assert (=> start!31928 (=> (not res!173337) (not e!198061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31928 (= res!173337 (validMask!0 mask!3709))))

(assert (=> start!31928 e!198061))

(declare-fun array_inv!5639 (array!16246) Bool)

(assert (=> start!31928 (array_inv!5639 a!3293)))

(assert (=> start!31928 true))

(declare-fun b!318789 () Bool)

(assert (=> b!318789 (= e!198061 e!198058)))

(declare-fun res!173330 () Bool)

(assert (=> b!318789 (=> (not res!173330) (not e!198058))))

(declare-fun lt!155542 () SeekEntryResult!2836)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318789 (= res!173330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155542))))

(assert (=> b!318789 (= lt!155542 (Intermediate!2836 false resIndex!52 resX!52))))

(declare-fun b!318790 () Bool)

(declare-fun res!173331 () Bool)

(assert (=> b!318790 (=> (not res!173331) (not e!198061))))

(declare-fun arrayContainsKey!0 (array!16246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318790 (= res!173331 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318791 () Bool)

(declare-fun res!173333 () Bool)

(assert (=> b!318791 (=> (not res!173333) (not e!198061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16246 (_ BitVec 32)) Bool)

(assert (=> b!318791 (= res!173333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318792 () Bool)

(declare-fun lt!155543 () SeekEntryResult!2836)

(declare-fun e!198057 () Bool)

(assert (=> b!318792 (= e!198057 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155541 #b00000000000000000000000000000000) (bvsge lt!155541 (size!8037 a!3293)) (= lt!155543 lt!155542))))))

(assert (=> b!318792 e!198060))

(declare-fun res!173332 () Bool)

(assert (=> b!318792 (=> (not res!173332) (not e!198060))))

(declare-fun lt!155539 () SeekEntryResult!2836)

(assert (=> b!318792 (= res!173332 (= lt!155539 lt!155543))))

(assert (=> b!318792 (= lt!155543 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155541 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318792 (= lt!155541 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318793 () Bool)

(assert (=> b!318793 (= e!198058 e!198057)))

(declare-fun res!173329 () Bool)

(assert (=> b!318793 (=> (not res!173329) (not e!198057))))

(assert (=> b!318793 (= res!173329 (and (= lt!155539 lt!155542) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7685 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318793 (= lt!155539 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318794 () Bool)

(declare-fun res!173336 () Bool)

(assert (=> b!318794 (=> (not res!173336) (not e!198061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318794 (= res!173336 (validKeyInArray!0 k0!2441))))

(declare-fun b!318795 () Bool)

(declare-fun res!173328 () Bool)

(assert (=> b!318795 (=> (not res!173328) (not e!198061))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16246 (_ BitVec 32)) SeekEntryResult!2836)

(assert (=> b!318795 (= res!173328 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2836 i!1240)))))

(assert (= (and start!31928 res!173337) b!318786))

(assert (= (and b!318786 res!173334) b!318794))

(assert (= (and b!318794 res!173336) b!318790))

(assert (= (and b!318790 res!173331) b!318795))

(assert (= (and b!318795 res!173328) b!318791))

(assert (= (and b!318791 res!173333) b!318789))

(assert (= (and b!318789 res!173330) b!318788))

(assert (= (and b!318788 res!173335) b!318793))

(assert (= (and b!318793 res!173329) b!318792))

(assert (= (and b!318792 res!173332) b!318787))

(declare-fun m!327423 () Bool)

(assert (=> b!318793 m!327423))

(declare-fun m!327425 () Bool)

(assert (=> b!318793 m!327425))

(declare-fun m!327427 () Bool)

(assert (=> b!318790 m!327427))

(declare-fun m!327429 () Bool)

(assert (=> b!318788 m!327429))

(declare-fun m!327431 () Bool)

(assert (=> b!318789 m!327431))

(assert (=> b!318789 m!327431))

(declare-fun m!327433 () Bool)

(assert (=> b!318789 m!327433))

(declare-fun m!327435 () Bool)

(assert (=> b!318795 m!327435))

(declare-fun m!327437 () Bool)

(assert (=> b!318794 m!327437))

(declare-fun m!327439 () Bool)

(assert (=> b!318787 m!327439))

(declare-fun m!327441 () Bool)

(assert (=> b!318787 m!327441))

(declare-fun m!327443 () Bool)

(assert (=> b!318787 m!327443))

(declare-fun m!327445 () Bool)

(assert (=> b!318791 m!327445))

(declare-fun m!327447 () Bool)

(assert (=> start!31928 m!327447))

(declare-fun m!327449 () Bool)

(assert (=> start!31928 m!327449))

(declare-fun m!327451 () Bool)

(assert (=> b!318792 m!327451))

(declare-fun m!327453 () Bool)

(assert (=> b!318792 m!327453))

(check-sat (not b!318791) (not b!318787) (not b!318793) (not b!318789) (not b!318794) (not start!31928) (not b!318795) (not b!318792) (not b!318790))
(check-sat)
