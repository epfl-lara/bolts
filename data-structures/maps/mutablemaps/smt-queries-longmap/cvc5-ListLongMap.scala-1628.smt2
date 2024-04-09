; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30552 () Bool)

(assert start!30552)

(declare-fun b!305669 () Bool)

(declare-fun res!162897 () Bool)

(declare-fun e!191866 () Bool)

(assert (=> b!305669 (=> (not res!162897) (not e!191866))))

(declare-datatypes ((array!15554 0))(
  ( (array!15555 (arr!7360 (Array (_ BitVec 32) (_ BitVec 64))) (size!7712 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15554)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2511 0))(
  ( (MissingZero!2511 (index!12220 (_ BitVec 32))) (Found!2511 (index!12221 (_ BitVec 32))) (Intermediate!2511 (undefined!3323 Bool) (index!12222 (_ BitVec 32)) (x!30445 (_ BitVec 32))) (Undefined!2511) (MissingVacant!2511 (index!12223 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15554 (_ BitVec 32)) SeekEntryResult!2511)

(assert (=> b!305669 (= res!162897 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2511 i!1240)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun e!191868 () Bool)

(declare-fun b!305670 () Bool)

(assert (=> b!305670 (= e!191868 (not (or (not (= (select (arr!7360 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305670 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9433 0))(
  ( (Unit!9434) )
))
(declare-fun lt!150801 () Unit!9433)

(declare-fun e!191869 () Unit!9433)

(assert (=> b!305670 (= lt!150801 e!191869)))

(declare-fun c!48988 () Bool)

(assert (=> b!305670 (= c!48988 (not (= resIndex!52 index!1781)))))

(declare-fun b!305671 () Bool)

(declare-fun res!162905 () Bool)

(assert (=> b!305671 (=> (not res!162905) (not e!191866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305671 (= res!162905 (validKeyInArray!0 k!2441))))

(declare-fun b!305672 () Bool)

(declare-fun res!162900 () Bool)

(assert (=> b!305672 (=> (not res!162900) (not e!191868))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!305672 (= res!162900 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7360 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305674 () Bool)

(declare-fun res!162903 () Bool)

(assert (=> b!305674 (=> (not res!162903) (not e!191866))))

(assert (=> b!305674 (= res!162903 (and (= (size!7712 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7712 a!3293))))))

(declare-fun b!305675 () Bool)

(assert (=> b!305675 (= e!191866 e!191868)))

(declare-fun res!162904 () Bool)

(assert (=> b!305675 (=> (not res!162904) (not e!191868))))

(declare-fun lt!150803 () SeekEntryResult!2511)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15554 (_ BitVec 32)) SeekEntryResult!2511)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305675 (= res!162904 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150803))))

(assert (=> b!305675 (= lt!150803 (Intermediate!2511 false resIndex!52 resX!52))))

(declare-fun b!305676 () Bool)

(assert (=> b!305676 false))

(declare-fun e!191867 () Unit!9433)

(declare-fun Unit!9435 () Unit!9433)

(assert (=> b!305676 (= e!191867 Unit!9435)))

(declare-fun b!305677 () Bool)

(assert (=> b!305677 false))

(declare-fun lt!150802 () SeekEntryResult!2511)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305677 (= lt!150802 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9436 () Unit!9433)

(assert (=> b!305677 (= e!191867 Unit!9436)))

(declare-fun b!305678 () Bool)

(declare-fun res!162902 () Bool)

(assert (=> b!305678 (=> (not res!162902) (not e!191868))))

(assert (=> b!305678 (= res!162902 (and (= (select (arr!7360 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7712 a!3293))))))

(declare-fun res!162899 () Bool)

(assert (=> start!30552 (=> (not res!162899) (not e!191866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30552 (= res!162899 (validMask!0 mask!3709))))

(assert (=> start!30552 e!191866))

(declare-fun array_inv!5314 (array!15554) Bool)

(assert (=> start!30552 (array_inv!5314 a!3293)))

(assert (=> start!30552 true))

(declare-fun b!305673 () Bool)

(declare-fun res!162898 () Bool)

(assert (=> b!305673 (=> (not res!162898) (not e!191866))))

(declare-fun arrayContainsKey!0 (array!15554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305673 (= res!162898 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305679 () Bool)

(declare-fun res!162906 () Bool)

(assert (=> b!305679 (=> (not res!162906) (not e!191866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15554 (_ BitVec 32)) Bool)

(assert (=> b!305679 (= res!162906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305680 () Bool)

(declare-fun Unit!9437 () Unit!9433)

(assert (=> b!305680 (= e!191869 Unit!9437)))

(declare-fun b!305681 () Bool)

(declare-fun res!162901 () Bool)

(assert (=> b!305681 (=> (not res!162901) (not e!191868))))

(assert (=> b!305681 (= res!162901 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150803))))

(declare-fun b!305682 () Bool)

(assert (=> b!305682 (= e!191869 e!191867)))

(declare-fun c!48989 () Bool)

(assert (=> b!305682 (= c!48989 (or (= (select (arr!7360 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7360 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!30552 res!162899) b!305674))

(assert (= (and b!305674 res!162903) b!305671))

(assert (= (and b!305671 res!162905) b!305673))

(assert (= (and b!305673 res!162898) b!305669))

(assert (= (and b!305669 res!162897) b!305679))

(assert (= (and b!305679 res!162906) b!305675))

(assert (= (and b!305675 res!162904) b!305678))

(assert (= (and b!305678 res!162902) b!305681))

(assert (= (and b!305681 res!162901) b!305672))

(assert (= (and b!305672 res!162900) b!305670))

(assert (= (and b!305670 c!48988) b!305682))

(assert (= (and b!305670 (not c!48988)) b!305680))

(assert (= (and b!305682 c!48989) b!305676))

(assert (= (and b!305682 (not c!48989)) b!305677))

(declare-fun m!316519 () Bool)

(assert (=> b!305669 m!316519))

(declare-fun m!316521 () Bool)

(assert (=> b!305681 m!316521))

(declare-fun m!316523 () Bool)

(assert (=> b!305672 m!316523))

(declare-fun m!316525 () Bool)

(assert (=> b!305679 m!316525))

(assert (=> b!305682 m!316523))

(assert (=> b!305670 m!316523))

(declare-fun m!316527 () Bool)

(assert (=> b!305678 m!316527))

(declare-fun m!316529 () Bool)

(assert (=> b!305677 m!316529))

(assert (=> b!305677 m!316529))

(declare-fun m!316531 () Bool)

(assert (=> b!305677 m!316531))

(declare-fun m!316533 () Bool)

(assert (=> b!305673 m!316533))

(declare-fun m!316535 () Bool)

(assert (=> start!30552 m!316535))

(declare-fun m!316537 () Bool)

(assert (=> start!30552 m!316537))

(declare-fun m!316539 () Bool)

(assert (=> b!305675 m!316539))

(assert (=> b!305675 m!316539))

(declare-fun m!316541 () Bool)

(assert (=> b!305675 m!316541))

(declare-fun m!316543 () Bool)

(assert (=> b!305671 m!316543))

(push 1)

(assert (not b!305677))

(assert (not b!305671))

(assert (not b!305673))

(assert (not b!305669))

(assert (not b!305679))

(assert (not b!305681))

(assert (not b!305675))

(assert (not start!30552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

