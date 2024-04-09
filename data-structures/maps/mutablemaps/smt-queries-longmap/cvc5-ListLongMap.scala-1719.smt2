; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31716 () Bool)

(assert start!31716)

(declare-fun b!316657 () Bool)

(declare-fun res!171592 () Bool)

(declare-fun e!196951 () Bool)

(assert (=> b!316657 (=> (not res!171592) (not e!196951))))

(declare-datatypes ((array!16136 0))(
  ( (array!16137 (arr!7633 (Array (_ BitVec 32) (_ BitVec 64))) (size!7985 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16136)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2784 0))(
  ( (MissingZero!2784 (index!13312 (_ BitVec 32))) (Found!2784 (index!13313 (_ BitVec 32))) (Intermediate!2784 (undefined!3596 Bool) (index!13314 (_ BitVec 32)) (x!31539 (_ BitVec 32))) (Undefined!2784) (MissingVacant!2784 (index!13315 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16136 (_ BitVec 32)) SeekEntryResult!2784)

(assert (=> b!316657 (= res!171592 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2784 i!1240)))))

(declare-fun b!316658 () Bool)

(declare-fun res!171595 () Bool)

(assert (=> b!316658 (=> (not res!171595) (not e!196951))))

(assert (=> b!316658 (= res!171595 (and (= (size!7985 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7985 a!3293))))))

(declare-fun b!316659 () Bool)

(declare-fun e!196949 () Bool)

(assert (=> b!316659 (= e!196951 e!196949)))

(declare-fun res!171596 () Bool)

(assert (=> b!316659 (=> (not res!171596) (not e!196949))))

(declare-fun lt!154697 () SeekEntryResult!2784)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16136 (_ BitVec 32)) SeekEntryResult!2784)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316659 (= res!171596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154697))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316659 (= lt!154697 (Intermediate!2784 false resIndex!52 resX!52))))

(declare-fun b!316660 () Bool)

(declare-fun res!171590 () Bool)

(assert (=> b!316660 (=> (not res!171590) (not e!196951))))

(declare-fun arrayContainsKey!0 (array!16136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316660 (= res!171590 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316661 () Bool)

(declare-fun res!171597 () Bool)

(assert (=> b!316661 (=> (not res!171597) (not e!196951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316661 (= res!171597 (validKeyInArray!0 k!2441))))

(declare-fun b!316662 () Bool)

(declare-fun e!196948 () Bool)

(assert (=> b!316662 (= e!196948 (not true))))

(declare-fun lt!154696 () SeekEntryResult!2784)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316662 (= lt!154696 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316663 () Bool)

(assert (=> b!316663 (= e!196949 e!196948)))

(declare-fun res!171591 () Bool)

(assert (=> b!316663 (=> (not res!171591) (not e!196948))))

(assert (=> b!316663 (= res!171591 (and (= lt!154696 lt!154697) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7633 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316663 (= lt!154696 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316664 () Bool)

(declare-fun res!171594 () Bool)

(assert (=> b!316664 (=> (not res!171594) (not e!196949))))

(assert (=> b!316664 (= res!171594 (and (= (select (arr!7633 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7985 a!3293))))))

(declare-fun b!316665 () Bool)

(declare-fun res!171589 () Bool)

(assert (=> b!316665 (=> (not res!171589) (not e!196951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16136 (_ BitVec 32)) Bool)

(assert (=> b!316665 (= res!171589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!171593 () Bool)

(assert (=> start!31716 (=> (not res!171593) (not e!196951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31716 (= res!171593 (validMask!0 mask!3709))))

(assert (=> start!31716 e!196951))

(declare-fun array_inv!5587 (array!16136) Bool)

(assert (=> start!31716 (array_inv!5587 a!3293)))

(assert (=> start!31716 true))

(assert (= (and start!31716 res!171593) b!316658))

(assert (= (and b!316658 res!171595) b!316661))

(assert (= (and b!316661 res!171597) b!316660))

(assert (= (and b!316660 res!171590) b!316657))

(assert (= (and b!316657 res!171592) b!316665))

(assert (= (and b!316665 res!171589) b!316659))

(assert (= (and b!316659 res!171596) b!316664))

(assert (= (and b!316664 res!171594) b!316663))

(assert (= (and b!316663 res!171591) b!316662))

(declare-fun m!325447 () Bool)

(assert (=> b!316664 m!325447))

(declare-fun m!325449 () Bool)

(assert (=> b!316659 m!325449))

(assert (=> b!316659 m!325449))

(declare-fun m!325451 () Bool)

(assert (=> b!316659 m!325451))

(declare-fun m!325453 () Bool)

(assert (=> b!316657 m!325453))

(declare-fun m!325455 () Bool)

(assert (=> b!316660 m!325455))

(declare-fun m!325457 () Bool)

(assert (=> b!316663 m!325457))

(declare-fun m!325459 () Bool)

(assert (=> b!316663 m!325459))

(declare-fun m!325461 () Bool)

(assert (=> b!316661 m!325461))

(declare-fun m!325463 () Bool)

(assert (=> b!316662 m!325463))

(assert (=> b!316662 m!325463))

(declare-fun m!325465 () Bool)

(assert (=> b!316662 m!325465))

(declare-fun m!325467 () Bool)

(assert (=> start!31716 m!325467))

(declare-fun m!325469 () Bool)

(assert (=> start!31716 m!325469))

(declare-fun m!325471 () Bool)

(assert (=> b!316665 m!325471))

(push 1)

