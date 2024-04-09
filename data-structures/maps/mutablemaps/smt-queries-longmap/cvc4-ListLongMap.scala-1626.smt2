; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30544 () Bool)

(assert start!30544)

(declare-fun b!305502 () Bool)

(declare-fun res!162778 () Bool)

(declare-fun e!191806 () Bool)

(assert (=> b!305502 (=> (not res!162778) (not e!191806))))

(declare-datatypes ((array!15546 0))(
  ( (array!15547 (arr!7356 (Array (_ BitVec 32) (_ BitVec 64))) (size!7708 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15546)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305502 (= res!162778 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7356 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305503 () Bool)

(assert (=> b!305503 false))

(declare-datatypes ((Unit!9413 0))(
  ( (Unit!9414) )
))
(declare-fun e!191807 () Unit!9413)

(declare-fun Unit!9415 () Unit!9413)

(assert (=> b!305503 (= e!191807 Unit!9415)))

(declare-fun b!305504 () Bool)

(declare-fun e!191809 () Bool)

(assert (=> b!305504 (= e!191809 e!191806)))

(declare-fun res!162784 () Bool)

(assert (=> b!305504 (=> (not res!162784) (not e!191806))))

(declare-datatypes ((SeekEntryResult!2507 0))(
  ( (MissingZero!2507 (index!12204 (_ BitVec 32))) (Found!2507 (index!12205 (_ BitVec 32))) (Intermediate!2507 (undefined!3319 Bool) (index!12206 (_ BitVec 32)) (x!30425 (_ BitVec 32))) (Undefined!2507) (MissingVacant!2507 (index!12207 (_ BitVec 32))) )
))
(declare-fun lt!150767 () SeekEntryResult!2507)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15546 (_ BitVec 32)) SeekEntryResult!2507)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305504 (= res!162784 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150767))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305504 (= lt!150767 (Intermediate!2507 false resIndex!52 resX!52))))

(declare-fun b!305505 () Bool)

(declare-fun e!191805 () Unit!9413)

(declare-fun Unit!9416 () Unit!9413)

(assert (=> b!305505 (= e!191805 Unit!9416)))

(declare-fun b!305506 () Bool)

(declare-fun res!162785 () Bool)

(assert (=> b!305506 (=> (not res!162785) (not e!191809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305506 (= res!162785 (validKeyInArray!0 k!2441))))

(declare-fun b!305507 () Bool)

(assert (=> b!305507 (= e!191806 (not (or (not (= (select (arr!7356 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(assert (=> b!305507 (= index!1781 resIndex!52)))

(declare-fun lt!150765 () Unit!9413)

(assert (=> b!305507 (= lt!150765 e!191805)))

(declare-fun c!48964 () Bool)

(assert (=> b!305507 (= c!48964 (not (= resIndex!52 index!1781)))))

(declare-fun b!305508 () Bool)

(assert (=> b!305508 (= e!191805 e!191807)))

(declare-fun c!48965 () Bool)

(assert (=> b!305508 (= c!48965 (or (= (select (arr!7356 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7356 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!162779 () Bool)

(assert (=> start!30544 (=> (not res!162779) (not e!191809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30544 (= res!162779 (validMask!0 mask!3709))))

(assert (=> start!30544 e!191809))

(declare-fun array_inv!5310 (array!15546) Bool)

(assert (=> start!30544 (array_inv!5310 a!3293)))

(assert (=> start!30544 true))

(declare-fun b!305501 () Bool)

(assert (=> b!305501 false))

(declare-fun lt!150766 () SeekEntryResult!2507)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305501 (= lt!150766 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9417 () Unit!9413)

(assert (=> b!305501 (= e!191807 Unit!9417)))

(declare-fun b!305509 () Bool)

(declare-fun res!162780 () Bool)

(assert (=> b!305509 (=> (not res!162780) (not e!191809))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15546 (_ BitVec 32)) SeekEntryResult!2507)

(assert (=> b!305509 (= res!162780 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2507 i!1240)))))

(declare-fun b!305510 () Bool)

(declare-fun res!162783 () Bool)

(assert (=> b!305510 (=> (not res!162783) (not e!191809))))

(declare-fun arrayContainsKey!0 (array!15546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305510 (= res!162783 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305511 () Bool)

(declare-fun res!162786 () Bool)

(assert (=> b!305511 (=> (not res!162786) (not e!191806))))

(assert (=> b!305511 (= res!162786 (and (= (select (arr!7356 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7708 a!3293))))))

(declare-fun b!305512 () Bool)

(declare-fun res!162781 () Bool)

(assert (=> b!305512 (=> (not res!162781) (not e!191809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15546 (_ BitVec 32)) Bool)

(assert (=> b!305512 (= res!162781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305513 () Bool)

(declare-fun res!162777 () Bool)

(assert (=> b!305513 (=> (not res!162777) (not e!191809))))

(assert (=> b!305513 (= res!162777 (and (= (size!7708 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7708 a!3293))))))

(declare-fun b!305514 () Bool)

(declare-fun res!162782 () Bool)

(assert (=> b!305514 (=> (not res!162782) (not e!191806))))

(assert (=> b!305514 (= res!162782 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150767))))

(assert (= (and start!30544 res!162779) b!305513))

(assert (= (and b!305513 res!162777) b!305506))

(assert (= (and b!305506 res!162785) b!305510))

(assert (= (and b!305510 res!162783) b!305509))

(assert (= (and b!305509 res!162780) b!305512))

(assert (= (and b!305512 res!162781) b!305504))

(assert (= (and b!305504 res!162784) b!305511))

(assert (= (and b!305511 res!162786) b!305514))

(assert (= (and b!305514 res!162782) b!305502))

(assert (= (and b!305502 res!162778) b!305507))

(assert (= (and b!305507 c!48964) b!305508))

(assert (= (and b!305507 (not c!48964)) b!305505))

(assert (= (and b!305508 c!48965) b!305503))

(assert (= (and b!305508 (not c!48965)) b!305501))

(declare-fun m!316415 () Bool)

(assert (=> b!305502 m!316415))

(declare-fun m!316417 () Bool)

(assert (=> b!305501 m!316417))

(assert (=> b!305501 m!316417))

(declare-fun m!316419 () Bool)

(assert (=> b!305501 m!316419))

(assert (=> b!305507 m!316415))

(declare-fun m!316421 () Bool)

(assert (=> b!305511 m!316421))

(declare-fun m!316423 () Bool)

(assert (=> b!305514 m!316423))

(declare-fun m!316425 () Bool)

(assert (=> b!305512 m!316425))

(declare-fun m!316427 () Bool)

(assert (=> b!305506 m!316427))

(declare-fun m!316429 () Bool)

(assert (=> b!305509 m!316429))

(assert (=> b!305508 m!316415))

(declare-fun m!316431 () Bool)

(assert (=> b!305504 m!316431))

(assert (=> b!305504 m!316431))

(declare-fun m!316433 () Bool)

(assert (=> b!305504 m!316433))

(declare-fun m!316435 () Bool)

(assert (=> start!30544 m!316435))

(declare-fun m!316437 () Bool)

(assert (=> start!30544 m!316437))

(declare-fun m!316439 () Bool)

(assert (=> b!305510 m!316439))

(push 1)

