; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30300 () Bool)

(assert start!30300)

(declare-fun b!303083 () Bool)

(declare-fun res!160727 () Bool)

(declare-fun e!190806 () Bool)

(assert (=> b!303083 (=> (not res!160727) (not e!190806))))

(declare-datatypes ((array!15404 0))(
  ( (array!15405 (arr!7288 (Array (_ BitVec 32) (_ BitVec 64))) (size!7640 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15404)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303083 (= res!160727 (and (= (select (arr!7288 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7640 a!3293))))))

(declare-fun b!303084 () Bool)

(declare-fun res!160734 () Bool)

(assert (=> b!303084 (=> (not res!160734) (not e!190806))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!303084 (= res!160734 (and (= (size!7640 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7640 a!3293))))))

(declare-fun b!303085 () Bool)

(declare-fun res!160733 () Bool)

(assert (=> b!303085 (=> (not res!160733) (not e!190806))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2439 0))(
  ( (MissingZero!2439 (index!11932 (_ BitVec 32))) (Found!2439 (index!11933 (_ BitVec 32))) (Intermediate!2439 (undefined!3251 Bool) (index!11934 (_ BitVec 32)) (x!30163 (_ BitVec 32))) (Undefined!2439) (MissingVacant!2439 (index!11935 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15404 (_ BitVec 32)) SeekEntryResult!2439)

(assert (=> b!303085 (= res!160733 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2439 i!1240)))))

(declare-fun res!160730 () Bool)

(assert (=> start!30300 (=> (not res!160730) (not e!190806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30300 (= res!160730 (validMask!0 mask!3709))))

(assert (=> start!30300 e!190806))

(declare-fun array_inv!5242 (array!15404) Bool)

(assert (=> start!30300 (array_inv!5242 a!3293)))

(assert (=> start!30300 true))

(declare-fun b!303086 () Bool)

(declare-fun res!160731 () Bool)

(assert (=> b!303086 (=> (not res!160731) (not e!190806))))

(declare-fun arrayContainsKey!0 (array!15404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303086 (= res!160731 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303087 () Bool)

(declare-fun res!160732 () Bool)

(assert (=> b!303087 (=> (not res!160732) (not e!190806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15404 (_ BitVec 32)) Bool)

(assert (=> b!303087 (= res!160732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303088 () Bool)

(declare-fun res!160728 () Bool)

(assert (=> b!303088 (=> (not res!160728) (not e!190806))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15404 (_ BitVec 32)) SeekEntryResult!2439)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303088 (= res!160728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2439 false resIndex!52 resX!52)))))

(declare-fun b!303089 () Bool)

(declare-fun res!160729 () Bool)

(assert (=> b!303089 (=> (not res!160729) (not e!190806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303089 (= res!160729 (validKeyInArray!0 k!2441))))

(declare-fun b!303090 () Bool)

(assert (=> b!303090 (= e!190806 false)))

(declare-fun lt!150149 () SeekEntryResult!2439)

(assert (=> b!303090 (= lt!150149 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30300 res!160730) b!303084))

(assert (= (and b!303084 res!160734) b!303089))

(assert (= (and b!303089 res!160729) b!303086))

(assert (= (and b!303086 res!160731) b!303085))

(assert (= (and b!303085 res!160733) b!303087))

(assert (= (and b!303087 res!160732) b!303088))

(assert (= (and b!303088 res!160728) b!303083))

(assert (= (and b!303083 res!160727) b!303090))

(declare-fun m!314503 () Bool)

(assert (=> b!303083 m!314503))

(declare-fun m!314505 () Bool)

(assert (=> start!30300 m!314505))

(declare-fun m!314507 () Bool)

(assert (=> start!30300 m!314507))

(declare-fun m!314509 () Bool)

(assert (=> b!303090 m!314509))

(declare-fun m!314511 () Bool)

(assert (=> b!303087 m!314511))

(declare-fun m!314513 () Bool)

(assert (=> b!303086 m!314513))

(declare-fun m!314515 () Bool)

(assert (=> b!303085 m!314515))

(declare-fun m!314517 () Bool)

(assert (=> b!303089 m!314517))

(declare-fun m!314519 () Bool)

(assert (=> b!303088 m!314519))

(assert (=> b!303088 m!314519))

(declare-fun m!314521 () Bool)

(assert (=> b!303088 m!314521))

(push 1)

(assert (not b!303087))

(assert (not b!303090))

(assert (not b!303088))

(assert (not start!30300))

(assert (not b!303086))

(assert (not b!303089))

(assert (not b!303085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

