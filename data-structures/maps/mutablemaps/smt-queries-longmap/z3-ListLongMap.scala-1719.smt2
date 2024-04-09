; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31718 () Bool)

(assert start!31718)

(declare-fun res!171616 () Bool)

(declare-fun e!196961 () Bool)

(assert (=> start!31718 (=> (not res!171616) (not e!196961))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31718 (= res!171616 (validMask!0 mask!3709))))

(assert (=> start!31718 e!196961))

(declare-datatypes ((array!16138 0))(
  ( (array!16139 (arr!7634 (Array (_ BitVec 32) (_ BitVec 64))) (size!7986 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16138)

(declare-fun array_inv!5588 (array!16138) Bool)

(assert (=> start!31718 (array_inv!5588 a!3293)))

(assert (=> start!31718 true))

(declare-fun b!316684 () Bool)

(declare-fun e!196960 () Bool)

(assert (=> b!316684 (= e!196960 (not true))))

(declare-datatypes ((SeekEntryResult!2785 0))(
  ( (MissingZero!2785 (index!13316 (_ BitVec 32))) (Found!2785 (index!13317 (_ BitVec 32))) (Intermediate!2785 (undefined!3597 Bool) (index!13318 (_ BitVec 32)) (x!31540 (_ BitVec 32))) (Undefined!2785) (MissingVacant!2785 (index!13319 (_ BitVec 32))) )
))
(declare-fun lt!154702 () SeekEntryResult!2785)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16138 (_ BitVec 32)) SeekEntryResult!2785)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316684 (= lt!154702 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!316685 () Bool)

(declare-fun res!171620 () Bool)

(assert (=> b!316685 (=> (not res!171620) (not e!196961))))

(declare-fun arrayContainsKey!0 (array!16138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316685 (= res!171620 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316686 () Bool)

(declare-fun res!171622 () Bool)

(declare-fun e!196962 () Bool)

(assert (=> b!316686 (=> (not res!171622) (not e!196962))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316686 (= res!171622 (and (= (select (arr!7634 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7986 a!3293))))))

(declare-fun b!316687 () Bool)

(declare-fun res!171621 () Bool)

(assert (=> b!316687 (=> (not res!171621) (not e!196961))))

(assert (=> b!316687 (= res!171621 (and (= (size!7986 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7986 a!3293))))))

(declare-fun b!316688 () Bool)

(assert (=> b!316688 (= e!196962 e!196960)))

(declare-fun res!171618 () Bool)

(assert (=> b!316688 (=> (not res!171618) (not e!196960))))

(declare-fun lt!154703 () SeekEntryResult!2785)

(assert (=> b!316688 (= res!171618 (and (= lt!154702 lt!154703) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7634 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316688 (= lt!154702 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!316689 () Bool)

(declare-fun res!171624 () Bool)

(assert (=> b!316689 (=> (not res!171624) (not e!196961))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16138 (_ BitVec 32)) SeekEntryResult!2785)

(assert (=> b!316689 (= res!171624 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2785 i!1240)))))

(declare-fun b!316690 () Bool)

(assert (=> b!316690 (= e!196961 e!196962)))

(declare-fun res!171623 () Bool)

(assert (=> b!316690 (=> (not res!171623) (not e!196962))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316690 (= res!171623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154703))))

(assert (=> b!316690 (= lt!154703 (Intermediate!2785 false resIndex!52 resX!52))))

(declare-fun b!316691 () Bool)

(declare-fun res!171619 () Bool)

(assert (=> b!316691 (=> (not res!171619) (not e!196961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316691 (= res!171619 (validKeyInArray!0 k0!2441))))

(declare-fun b!316692 () Bool)

(declare-fun res!171617 () Bool)

(assert (=> b!316692 (=> (not res!171617) (not e!196961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16138 (_ BitVec 32)) Bool)

(assert (=> b!316692 (= res!171617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31718 res!171616) b!316687))

(assert (= (and b!316687 res!171621) b!316691))

(assert (= (and b!316691 res!171619) b!316685))

(assert (= (and b!316685 res!171620) b!316689))

(assert (= (and b!316689 res!171624) b!316692))

(assert (= (and b!316692 res!171617) b!316690))

(assert (= (and b!316690 res!171623) b!316686))

(assert (= (and b!316686 res!171622) b!316688))

(assert (= (and b!316688 res!171618) b!316684))

(declare-fun m!325473 () Bool)

(assert (=> b!316685 m!325473))

(declare-fun m!325475 () Bool)

(assert (=> b!316690 m!325475))

(assert (=> b!316690 m!325475))

(declare-fun m!325477 () Bool)

(assert (=> b!316690 m!325477))

(declare-fun m!325479 () Bool)

(assert (=> start!31718 m!325479))

(declare-fun m!325481 () Bool)

(assert (=> start!31718 m!325481))

(declare-fun m!325483 () Bool)

(assert (=> b!316684 m!325483))

(assert (=> b!316684 m!325483))

(declare-fun m!325485 () Bool)

(assert (=> b!316684 m!325485))

(declare-fun m!325487 () Bool)

(assert (=> b!316688 m!325487))

(declare-fun m!325489 () Bool)

(assert (=> b!316688 m!325489))

(declare-fun m!325491 () Bool)

(assert (=> b!316691 m!325491))

(declare-fun m!325493 () Bool)

(assert (=> b!316692 m!325493))

(declare-fun m!325495 () Bool)

(assert (=> b!316686 m!325495))

(declare-fun m!325497 () Bool)

(assert (=> b!316689 m!325497))

(check-sat (not start!31718) (not b!316684) (not b!316685) (not b!316692) (not b!316688) (not b!316691) (not b!316690) (not b!316689))
(check-sat)
