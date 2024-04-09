; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30548 () Bool)

(assert start!30548)

(declare-fun b!305585 () Bool)

(declare-fun res!162841 () Bool)

(declare-fun e!191839 () Bool)

(assert (=> b!305585 (=> (not res!162841) (not e!191839))))

(declare-datatypes ((array!15550 0))(
  ( (array!15551 (arr!7358 (Array (_ BitVec 32) (_ BitVec 64))) (size!7710 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15550)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305585 (= res!162841 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7358 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305586 () Bool)

(declare-fun res!162842 () Bool)

(assert (=> b!305586 (=> (not res!162842) (not e!191839))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305586 (= res!162842 (and (= (select (arr!7358 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7710 a!3293))))))

(declare-fun b!305587 () Bool)

(declare-fun res!162840 () Bool)

(declare-fun e!191838 () Bool)

(assert (=> b!305587 (=> (not res!162840) (not e!191838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305587 (= res!162840 (validKeyInArray!0 k0!2441))))

(declare-fun b!305588 () Bool)

(declare-datatypes ((Unit!9423 0))(
  ( (Unit!9424) )
))
(declare-fun e!191836 () Unit!9423)

(declare-fun e!191837 () Unit!9423)

(assert (=> b!305588 (= e!191836 e!191837)))

(declare-fun c!48976 () Bool)

(assert (=> b!305588 (= c!48976 (or (= (select (arr!7358 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7358 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305589 () Bool)

(declare-fun res!162837 () Bool)

(assert (=> b!305589 (=> (not res!162837) (not e!191839))))

(declare-datatypes ((SeekEntryResult!2509 0))(
  ( (MissingZero!2509 (index!12212 (_ BitVec 32))) (Found!2509 (index!12213 (_ BitVec 32))) (Intermediate!2509 (undefined!3321 Bool) (index!12214 (_ BitVec 32)) (x!30435 (_ BitVec 32))) (Undefined!2509) (MissingVacant!2509 (index!12215 (_ BitVec 32))) )
))
(declare-fun lt!150783 () SeekEntryResult!2509)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15550 (_ BitVec 32)) SeekEntryResult!2509)

(assert (=> b!305589 (= res!162837 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150783))))

(declare-fun b!305590 () Bool)

(declare-fun res!162845 () Bool)

(assert (=> b!305590 (=> (not res!162845) (not e!191838))))

(assert (=> b!305590 (= res!162845 (and (= (size!7710 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7710 a!3293))))))

(declare-fun b!305591 () Bool)

(declare-fun res!162846 () Bool)

(assert (=> b!305591 (=> (not res!162846) (not e!191838))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15550 (_ BitVec 32)) SeekEntryResult!2509)

(assert (=> b!305591 (= res!162846 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2509 i!1240)))))

(declare-fun b!305592 () Bool)

(assert (=> b!305592 (= e!191839 (not true))))

(assert (=> b!305592 (= index!1781 resIndex!52)))

(declare-fun lt!150784 () Unit!9423)

(assert (=> b!305592 (= lt!150784 e!191836)))

(declare-fun c!48977 () Bool)

(assert (=> b!305592 (= c!48977 (not (= resIndex!52 index!1781)))))

(declare-fun b!305593 () Bool)

(assert (=> b!305593 false))

(declare-fun lt!150785 () SeekEntryResult!2509)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305593 (= lt!150785 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9425 () Unit!9423)

(assert (=> b!305593 (= e!191837 Unit!9425)))

(declare-fun b!305594 () Bool)

(declare-fun res!162838 () Bool)

(assert (=> b!305594 (=> (not res!162838) (not e!191838))))

(declare-fun arrayContainsKey!0 (array!15550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305594 (= res!162838 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!162844 () Bool)

(assert (=> start!30548 (=> (not res!162844) (not e!191838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30548 (= res!162844 (validMask!0 mask!3709))))

(assert (=> start!30548 e!191838))

(declare-fun array_inv!5312 (array!15550) Bool)

(assert (=> start!30548 (array_inv!5312 a!3293)))

(assert (=> start!30548 true))

(declare-fun b!305595 () Bool)

(declare-fun res!162843 () Bool)

(assert (=> b!305595 (=> (not res!162843) (not e!191838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15550 (_ BitVec 32)) Bool)

(assert (=> b!305595 (= res!162843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305596 () Bool)

(assert (=> b!305596 false))

(declare-fun Unit!9426 () Unit!9423)

(assert (=> b!305596 (= e!191837 Unit!9426)))

(declare-fun b!305597 () Bool)

(assert (=> b!305597 (= e!191838 e!191839)))

(declare-fun res!162839 () Bool)

(assert (=> b!305597 (=> (not res!162839) (not e!191839))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305597 (= res!162839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150783))))

(assert (=> b!305597 (= lt!150783 (Intermediate!2509 false resIndex!52 resX!52))))

(declare-fun b!305598 () Bool)

(declare-fun Unit!9427 () Unit!9423)

(assert (=> b!305598 (= e!191836 Unit!9427)))

(assert (= (and start!30548 res!162844) b!305590))

(assert (= (and b!305590 res!162845) b!305587))

(assert (= (and b!305587 res!162840) b!305594))

(assert (= (and b!305594 res!162838) b!305591))

(assert (= (and b!305591 res!162846) b!305595))

(assert (= (and b!305595 res!162843) b!305597))

(assert (= (and b!305597 res!162839) b!305586))

(assert (= (and b!305586 res!162842) b!305589))

(assert (= (and b!305589 res!162837) b!305585))

(assert (= (and b!305585 res!162841) b!305592))

(assert (= (and b!305592 c!48977) b!305588))

(assert (= (and b!305592 (not c!48977)) b!305598))

(assert (= (and b!305588 c!48976) b!305596))

(assert (= (and b!305588 (not c!48976)) b!305593))

(declare-fun m!316467 () Bool)

(assert (=> b!305593 m!316467))

(assert (=> b!305593 m!316467))

(declare-fun m!316469 () Bool)

(assert (=> b!305593 m!316469))

(declare-fun m!316471 () Bool)

(assert (=> b!305595 m!316471))

(declare-fun m!316473 () Bool)

(assert (=> b!305585 m!316473))

(declare-fun m!316475 () Bool)

(assert (=> b!305594 m!316475))

(assert (=> b!305588 m!316473))

(declare-fun m!316477 () Bool)

(assert (=> b!305589 m!316477))

(declare-fun m!316479 () Bool)

(assert (=> b!305591 m!316479))

(declare-fun m!316481 () Bool)

(assert (=> start!30548 m!316481))

(declare-fun m!316483 () Bool)

(assert (=> start!30548 m!316483))

(declare-fun m!316485 () Bool)

(assert (=> b!305586 m!316485))

(declare-fun m!316487 () Bool)

(assert (=> b!305597 m!316487))

(assert (=> b!305597 m!316487))

(declare-fun m!316489 () Bool)

(assert (=> b!305597 m!316489))

(declare-fun m!316491 () Bool)

(assert (=> b!305587 m!316491))

(check-sat (not b!305593) (not b!305597) (not b!305589) (not b!305595) (not b!305587) (not start!30548) (not b!305591) (not b!305594))
(check-sat)
