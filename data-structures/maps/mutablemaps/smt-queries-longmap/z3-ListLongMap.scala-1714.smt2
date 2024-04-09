; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31580 () Bool)

(assert start!31580)

(declare-fun b!315611 () Bool)

(declare-fun res!171009 () Bool)

(declare-fun e!196423 () Bool)

(assert (=> b!315611 (=> (not res!171009) (not e!196423))))

(declare-datatypes ((array!16102 0))(
  ( (array!16103 (arr!7619 (Array (_ BitVec 32) (_ BitVec 64))) (size!7971 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16102)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16102 (_ BitVec 32)) Bool)

(assert (=> b!315611 (= res!171009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315612 () Bool)

(declare-datatypes ((Unit!9720 0))(
  ( (Unit!9721) )
))
(declare-fun e!196426 () Unit!9720)

(declare-fun e!196422 () Unit!9720)

(assert (=> b!315612 (= e!196426 e!196422)))

(declare-fun c!49921 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315612 (= c!49921 (or (= (select (arr!7619 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7619 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315613 () Bool)

(declare-fun res!171012 () Bool)

(assert (=> b!315613 (=> (not res!171012) (not e!196423))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2770 0))(
  ( (MissingZero!2770 (index!13256 (_ BitVec 32))) (Found!2770 (index!13257 (_ BitVec 32))) (Intermediate!2770 (undefined!3582 Bool) (index!13258 (_ BitVec 32)) (x!31467 (_ BitVec 32))) (Undefined!2770) (MissingVacant!2770 (index!13259 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16102 (_ BitVec 32)) SeekEntryResult!2770)

(assert (=> b!315613 (= res!171012 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2770 i!1240)))))

(declare-fun b!315614 () Bool)

(declare-fun e!196425 () Bool)

(assert (=> b!315614 (= e!196425 (not true))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315614 (= index!1781 resIndex!52)))

(declare-fun lt!154344 () Unit!9720)

(assert (=> b!315614 (= lt!154344 e!196426)))

(declare-fun c!49922 () Bool)

(assert (=> b!315614 (= c!49922 (not (= resIndex!52 index!1781)))))

(declare-fun b!315615 () Bool)

(declare-fun res!171010 () Bool)

(assert (=> b!315615 (=> (not res!171010) (not e!196423))))

(declare-fun arrayContainsKey!0 (array!16102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315615 (= res!171010 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!171003 () Bool)

(assert (=> start!31580 (=> (not res!171003) (not e!196423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31580 (= res!171003 (validMask!0 mask!3709))))

(assert (=> start!31580 e!196423))

(declare-fun array_inv!5573 (array!16102) Bool)

(assert (=> start!31580 (array_inv!5573 a!3293)))

(assert (=> start!31580 true))

(declare-fun b!315616 () Bool)

(declare-fun res!171005 () Bool)

(assert (=> b!315616 (=> (not res!171005) (not e!196425))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!315616 (= res!171005 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7619 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!315617 () Bool)

(declare-fun res!171006 () Bool)

(assert (=> b!315617 (=> (not res!171006) (not e!196423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315617 (= res!171006 (validKeyInArray!0 k0!2441))))

(declare-fun b!315618 () Bool)

(assert (=> b!315618 false))

(declare-fun lt!154345 () SeekEntryResult!2770)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16102 (_ BitVec 32)) SeekEntryResult!2770)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315618 (= lt!154345 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9722 () Unit!9720)

(assert (=> b!315618 (= e!196422 Unit!9722)))

(declare-fun b!315619 () Bool)

(declare-fun res!171011 () Bool)

(assert (=> b!315619 (=> (not res!171011) (not e!196425))))

(declare-fun lt!154346 () SeekEntryResult!2770)

(assert (=> b!315619 (= res!171011 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154346))))

(declare-fun b!315620 () Bool)

(assert (=> b!315620 false))

(declare-fun Unit!9723 () Unit!9720)

(assert (=> b!315620 (= e!196422 Unit!9723)))

(declare-fun b!315621 () Bool)

(declare-fun Unit!9724 () Unit!9720)

(assert (=> b!315621 (= e!196426 Unit!9724)))

(declare-fun b!315622 () Bool)

(declare-fun res!171008 () Bool)

(assert (=> b!315622 (=> (not res!171008) (not e!196425))))

(assert (=> b!315622 (= res!171008 (and (= (select (arr!7619 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7971 a!3293))))))

(declare-fun b!315623 () Bool)

(assert (=> b!315623 (= e!196423 e!196425)))

(declare-fun res!171004 () Bool)

(assert (=> b!315623 (=> (not res!171004) (not e!196425))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315623 (= res!171004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154346))))

(assert (=> b!315623 (= lt!154346 (Intermediate!2770 false resIndex!52 resX!52))))

(declare-fun b!315624 () Bool)

(declare-fun res!171007 () Bool)

(assert (=> b!315624 (=> (not res!171007) (not e!196423))))

(assert (=> b!315624 (= res!171007 (and (= (size!7971 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7971 a!3293))))))

(assert (= (and start!31580 res!171003) b!315624))

(assert (= (and b!315624 res!171007) b!315617))

(assert (= (and b!315617 res!171006) b!315615))

(assert (= (and b!315615 res!171010) b!315613))

(assert (= (and b!315613 res!171012) b!315611))

(assert (= (and b!315611 res!171009) b!315623))

(assert (= (and b!315623 res!171004) b!315622))

(assert (= (and b!315622 res!171008) b!315619))

(assert (= (and b!315619 res!171011) b!315616))

(assert (= (and b!315616 res!171005) b!315614))

(assert (= (and b!315614 c!49922) b!315612))

(assert (= (and b!315614 (not c!49922)) b!315621))

(assert (= (and b!315612 c!49921) b!315620))

(assert (= (and b!315612 (not c!49921)) b!315618))

(declare-fun m!324777 () Bool)

(assert (=> b!315611 m!324777))

(declare-fun m!324779 () Bool)

(assert (=> b!315622 m!324779))

(declare-fun m!324781 () Bool)

(assert (=> b!315615 m!324781))

(declare-fun m!324783 () Bool)

(assert (=> b!315616 m!324783))

(declare-fun m!324785 () Bool)

(assert (=> start!31580 m!324785))

(declare-fun m!324787 () Bool)

(assert (=> start!31580 m!324787))

(declare-fun m!324789 () Bool)

(assert (=> b!315618 m!324789))

(assert (=> b!315618 m!324789))

(declare-fun m!324791 () Bool)

(assert (=> b!315618 m!324791))

(declare-fun m!324793 () Bool)

(assert (=> b!315623 m!324793))

(assert (=> b!315623 m!324793))

(declare-fun m!324795 () Bool)

(assert (=> b!315623 m!324795))

(declare-fun m!324797 () Bool)

(assert (=> b!315619 m!324797))

(assert (=> b!315612 m!324783))

(declare-fun m!324799 () Bool)

(assert (=> b!315613 m!324799))

(declare-fun m!324801 () Bool)

(assert (=> b!315617 m!324801))

(check-sat (not b!315613) (not b!315619) (not b!315611) (not b!315617) (not b!315615) (not b!315623) (not b!315618) (not start!31580))
(check-sat)
