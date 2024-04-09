; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30446 () Bool)

(assert start!30446)

(declare-fun b!304579 () Bool)

(declare-fun e!191379 () Bool)

(assert (=> b!304579 (= e!191379 (not true))))

(declare-datatypes ((array!15499 0))(
  ( (array!15500 (arr!7334 (Array (_ BitVec 32) (_ BitVec 64))) (size!7686 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15499)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2485 0))(
  ( (MissingZero!2485 (index!12116 (_ BitVec 32))) (Found!2485 (index!12117 (_ BitVec 32))) (Intermediate!2485 (undefined!3297 Bool) (index!12118 (_ BitVec 32)) (x!30338 (_ BitVec 32))) (Undefined!2485) (MissingVacant!2485 (index!12119 (_ BitVec 32))) )
))
(declare-fun lt!150487 () SeekEntryResult!2485)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15499 (_ BitVec 32)) SeekEntryResult!2485)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304579 (= lt!150487 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304580 () Bool)

(declare-fun e!191377 () Bool)

(assert (=> b!304580 (= e!191377 e!191379)))

(declare-fun res!162090 () Bool)

(assert (=> b!304580 (=> (not res!162090) (not e!191379))))

(declare-fun lt!150488 () SeekEntryResult!2485)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304580 (= res!162090 (and (= lt!150487 lt!150488) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7334 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7334 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7334 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304580 (= lt!150487 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!304581 () Bool)

(declare-fun res!162083 () Bool)

(assert (=> b!304581 (=> (not res!162083) (not e!191377))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304581 (= res!162083 (and (= (select (arr!7334 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7686 a!3293))))))

(declare-fun b!304582 () Bool)

(declare-fun res!162084 () Bool)

(declare-fun e!191378 () Bool)

(assert (=> b!304582 (=> (not res!162084) (not e!191378))))

(assert (=> b!304582 (= res!162084 (and (= (size!7686 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7686 a!3293))))))

(declare-fun b!304583 () Bool)

(assert (=> b!304583 (= e!191378 e!191377)))

(declare-fun res!162088 () Bool)

(assert (=> b!304583 (=> (not res!162088) (not e!191377))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304583 (= res!162088 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150488))))

(assert (=> b!304583 (= lt!150488 (Intermediate!2485 false resIndex!52 resX!52))))

(declare-fun b!304584 () Bool)

(declare-fun res!162087 () Bool)

(assert (=> b!304584 (=> (not res!162087) (not e!191378))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15499 (_ BitVec 32)) SeekEntryResult!2485)

(assert (=> b!304584 (= res!162087 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2485 i!1240)))))

(declare-fun b!304585 () Bool)

(declare-fun res!162085 () Bool)

(assert (=> b!304585 (=> (not res!162085) (not e!191378))))

(declare-fun arrayContainsKey!0 (array!15499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304585 (= res!162085 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!162086 () Bool)

(assert (=> start!30446 (=> (not res!162086) (not e!191378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30446 (= res!162086 (validMask!0 mask!3709))))

(assert (=> start!30446 e!191378))

(declare-fun array_inv!5288 (array!15499) Bool)

(assert (=> start!30446 (array_inv!5288 a!3293)))

(assert (=> start!30446 true))

(declare-fun b!304586 () Bool)

(declare-fun res!162089 () Bool)

(assert (=> b!304586 (=> (not res!162089) (not e!191378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304586 (= res!162089 (validKeyInArray!0 k0!2441))))

(declare-fun b!304587 () Bool)

(declare-fun res!162082 () Bool)

(assert (=> b!304587 (=> (not res!162082) (not e!191378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15499 (_ BitVec 32)) Bool)

(assert (=> b!304587 (= res!162082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30446 res!162086) b!304582))

(assert (= (and b!304582 res!162084) b!304586))

(assert (= (and b!304586 res!162089) b!304585))

(assert (= (and b!304585 res!162085) b!304584))

(assert (= (and b!304584 res!162087) b!304587))

(assert (= (and b!304587 res!162082) b!304583))

(assert (= (and b!304583 res!162088) b!304581))

(assert (= (and b!304581 res!162083) b!304580))

(assert (= (and b!304580 res!162090) b!304579))

(declare-fun m!315705 () Bool)

(assert (=> start!30446 m!315705))

(declare-fun m!315707 () Bool)

(assert (=> start!30446 m!315707))

(declare-fun m!315709 () Bool)

(assert (=> b!304580 m!315709))

(declare-fun m!315711 () Bool)

(assert (=> b!304580 m!315711))

(declare-fun m!315713 () Bool)

(assert (=> b!304584 m!315713))

(declare-fun m!315715 () Bool)

(assert (=> b!304586 m!315715))

(declare-fun m!315717 () Bool)

(assert (=> b!304585 m!315717))

(declare-fun m!315719 () Bool)

(assert (=> b!304581 m!315719))

(declare-fun m!315721 () Bool)

(assert (=> b!304583 m!315721))

(assert (=> b!304583 m!315721))

(declare-fun m!315723 () Bool)

(assert (=> b!304583 m!315723))

(declare-fun m!315725 () Bool)

(assert (=> b!304579 m!315725))

(assert (=> b!304579 m!315725))

(declare-fun m!315727 () Bool)

(assert (=> b!304579 m!315727))

(declare-fun m!315729 () Bool)

(assert (=> b!304587 m!315729))

(check-sat (not b!304583) (not start!30446) (not b!304579) (not b!304586) (not b!304585) (not b!304587) (not b!304584) (not b!304580))
(check-sat)
