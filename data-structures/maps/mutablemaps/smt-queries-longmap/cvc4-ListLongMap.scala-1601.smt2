; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30286 () Bool)

(assert start!30286)

(declare-fun b!302897 () Bool)

(declare-fun res!160543 () Bool)

(declare-fun e!190746 () Bool)

(assert (=> b!302897 (=> (not res!160543) (not e!190746))))

(declare-datatypes ((array!15390 0))(
  ( (array!15391 (arr!7281 (Array (_ BitVec 32) (_ BitVec 64))) (size!7633 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15390)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2432 0))(
  ( (MissingZero!2432 (index!11904 (_ BitVec 32))) (Found!2432 (index!11905 (_ BitVec 32))) (Intermediate!2432 (undefined!3244 Bool) (index!11906 (_ BitVec 32)) (x!30132 (_ BitVec 32))) (Undefined!2432) (MissingVacant!2432 (index!11907 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15390 (_ BitVec 32)) SeekEntryResult!2432)

(assert (=> b!302897 (= res!160543 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2432 i!1240)))))

(declare-fun b!302898 () Bool)

(declare-fun res!160547 () Bool)

(assert (=> b!302898 (=> (not res!160547) (not e!190746))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302898 (= res!160547 (and (= (select (arr!7281 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7633 a!3293))))))

(declare-fun b!302899 () Bool)

(assert (=> b!302899 (= e!190746 false)))

(declare-fun lt!150128 () SeekEntryResult!2432)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15390 (_ BitVec 32)) SeekEntryResult!2432)

(assert (=> b!302899 (= lt!150128 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302900 () Bool)

(declare-fun res!160541 () Bool)

(assert (=> b!302900 (=> (not res!160541) (not e!190746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302900 (= res!160541 (validKeyInArray!0 k!2441))))

(declare-fun b!302901 () Bool)

(declare-fun res!160546 () Bool)

(assert (=> b!302901 (=> (not res!160546) (not e!190746))))

(assert (=> b!302901 (= res!160546 (and (= (size!7633 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7633 a!3293))))))

(declare-fun res!160545 () Bool)

(assert (=> start!30286 (=> (not res!160545) (not e!190746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30286 (= res!160545 (validMask!0 mask!3709))))

(assert (=> start!30286 e!190746))

(declare-fun array_inv!5235 (array!15390) Bool)

(assert (=> start!30286 (array_inv!5235 a!3293)))

(assert (=> start!30286 true))

(declare-fun b!302902 () Bool)

(declare-fun res!160542 () Bool)

(assert (=> b!302902 (=> (not res!160542) (not e!190746))))

(declare-fun arrayContainsKey!0 (array!15390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302902 (= res!160542 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302903 () Bool)

(declare-fun res!160548 () Bool)

(assert (=> b!302903 (=> (not res!160548) (not e!190746))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302903 (= res!160548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2432 false resIndex!52 resX!52)))))

(declare-fun b!302904 () Bool)

(declare-fun res!160544 () Bool)

(assert (=> b!302904 (=> (not res!160544) (not e!190746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15390 (_ BitVec 32)) Bool)

(assert (=> b!302904 (= res!160544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30286 res!160545) b!302901))

(assert (= (and b!302901 res!160546) b!302900))

(assert (= (and b!302900 res!160541) b!302902))

(assert (= (and b!302902 res!160542) b!302897))

(assert (= (and b!302897 res!160543) b!302904))

(assert (= (and b!302904 res!160544) b!302903))

(assert (= (and b!302903 res!160548) b!302898))

(assert (= (and b!302898 res!160547) b!302899))

(declare-fun m!314351 () Bool)

(assert (=> b!302897 m!314351))

(declare-fun m!314353 () Bool)

(assert (=> b!302900 m!314353))

(declare-fun m!314355 () Bool)

(assert (=> b!302904 m!314355))

(declare-fun m!314357 () Bool)

(assert (=> b!302903 m!314357))

(assert (=> b!302903 m!314357))

(declare-fun m!314359 () Bool)

(assert (=> b!302903 m!314359))

(declare-fun m!314361 () Bool)

(assert (=> start!30286 m!314361))

(declare-fun m!314363 () Bool)

(assert (=> start!30286 m!314363))

(declare-fun m!314365 () Bool)

(assert (=> b!302902 m!314365))

(declare-fun m!314367 () Bool)

(assert (=> b!302899 m!314367))

(declare-fun m!314369 () Bool)

(assert (=> b!302898 m!314369))

(push 1)

(assert (not b!302904))

(assert (not start!30286))

(assert (not b!302899))

(assert (not b!302900))

(assert (not b!302903))

(assert (not b!302897))

(assert (not b!302902))

(check-sat)

