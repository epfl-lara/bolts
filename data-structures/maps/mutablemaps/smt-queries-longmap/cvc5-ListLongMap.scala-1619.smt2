; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30444 () Bool)

(assert start!30444)

(declare-fun b!304552 () Bool)

(declare-fun res!162057 () Bool)

(declare-fun e!191368 () Bool)

(assert (=> b!304552 (=> (not res!162057) (not e!191368))))

(declare-datatypes ((array!15497 0))(
  ( (array!15498 (arr!7333 (Array (_ BitVec 32) (_ BitVec 64))) (size!7685 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15497)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2484 0))(
  ( (MissingZero!2484 (index!12112 (_ BitVec 32))) (Found!2484 (index!12113 (_ BitVec 32))) (Intermediate!2484 (undefined!3296 Bool) (index!12114 (_ BitVec 32)) (x!30337 (_ BitVec 32))) (Undefined!2484) (MissingVacant!2484 (index!12115 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15497 (_ BitVec 32)) SeekEntryResult!2484)

(assert (=> b!304552 (= res!162057 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2484 i!1240)))))

(declare-fun b!304553 () Bool)

(declare-fun res!162058 () Bool)

(assert (=> b!304553 (=> (not res!162058) (not e!191368))))

(declare-fun arrayContainsKey!0 (array!15497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304553 (= res!162058 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304554 () Bool)

(declare-fun e!191367 () Bool)

(assert (=> b!304554 (= e!191368 e!191367)))

(declare-fun res!162056 () Bool)

(assert (=> b!304554 (=> (not res!162056) (not e!191367))))

(declare-fun lt!150481 () SeekEntryResult!2484)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15497 (_ BitVec 32)) SeekEntryResult!2484)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304554 (= res!162056 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150481))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304554 (= lt!150481 (Intermediate!2484 false resIndex!52 resX!52))))

(declare-fun b!304555 () Bool)

(declare-fun e!191365 () Bool)

(assert (=> b!304555 (= e!191365 (not true))))

(declare-fun lt!150482 () SeekEntryResult!2484)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304555 (= lt!150482 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304556 () Bool)

(declare-fun res!162060 () Bool)

(assert (=> b!304556 (=> (not res!162060) (not e!191368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15497 (_ BitVec 32)) Bool)

(assert (=> b!304556 (= res!162060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!162055 () Bool)

(assert (=> start!30444 (=> (not res!162055) (not e!191368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30444 (= res!162055 (validMask!0 mask!3709))))

(assert (=> start!30444 e!191368))

(declare-fun array_inv!5287 (array!15497) Bool)

(assert (=> start!30444 (array_inv!5287 a!3293)))

(assert (=> start!30444 true))

(declare-fun b!304557 () Bool)

(assert (=> b!304557 (= e!191367 e!191365)))

(declare-fun res!162062 () Bool)

(assert (=> b!304557 (=> (not res!162062) (not e!191365))))

(assert (=> b!304557 (= res!162062 (and (= lt!150482 lt!150481) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7333 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7333 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7333 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304557 (= lt!150482 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304558 () Bool)

(declare-fun res!162061 () Bool)

(assert (=> b!304558 (=> (not res!162061) (not e!191367))))

(assert (=> b!304558 (= res!162061 (and (= (select (arr!7333 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7685 a!3293))))))

(declare-fun b!304559 () Bool)

(declare-fun res!162059 () Bool)

(assert (=> b!304559 (=> (not res!162059) (not e!191368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304559 (= res!162059 (validKeyInArray!0 k!2441))))

(declare-fun b!304560 () Bool)

(declare-fun res!162063 () Bool)

(assert (=> b!304560 (=> (not res!162063) (not e!191368))))

(assert (=> b!304560 (= res!162063 (and (= (size!7685 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7685 a!3293))))))

(assert (= (and start!30444 res!162055) b!304560))

(assert (= (and b!304560 res!162063) b!304559))

(assert (= (and b!304559 res!162059) b!304553))

(assert (= (and b!304553 res!162058) b!304552))

(assert (= (and b!304552 res!162057) b!304556))

(assert (= (and b!304556 res!162060) b!304554))

(assert (= (and b!304554 res!162056) b!304558))

(assert (= (and b!304558 res!162061) b!304557))

(assert (= (and b!304557 res!162062) b!304555))

(declare-fun m!315679 () Bool)

(assert (=> b!304553 m!315679))

(declare-fun m!315681 () Bool)

(assert (=> b!304557 m!315681))

(declare-fun m!315683 () Bool)

(assert (=> b!304557 m!315683))

(declare-fun m!315685 () Bool)

(assert (=> start!30444 m!315685))

(declare-fun m!315687 () Bool)

(assert (=> start!30444 m!315687))

(declare-fun m!315689 () Bool)

(assert (=> b!304558 m!315689))

(declare-fun m!315691 () Bool)

(assert (=> b!304554 m!315691))

(assert (=> b!304554 m!315691))

(declare-fun m!315693 () Bool)

(assert (=> b!304554 m!315693))

(declare-fun m!315695 () Bool)

(assert (=> b!304555 m!315695))

(assert (=> b!304555 m!315695))

(declare-fun m!315697 () Bool)

(assert (=> b!304555 m!315697))

(declare-fun m!315699 () Bool)

(assert (=> b!304552 m!315699))

(declare-fun m!315701 () Bool)

(assert (=> b!304559 m!315701))

(declare-fun m!315703 () Bool)

(assert (=> b!304556 m!315703))

(push 1)

