; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30430 () Bool)

(assert start!30430)

(declare-fun b!304363 () Bool)

(declare-fun res!161869 () Bool)

(declare-fun e!191282 () Bool)

(assert (=> b!304363 (=> (not res!161869) (not e!191282))))

(declare-datatypes ((array!15483 0))(
  ( (array!15484 (arr!7326 (Array (_ BitVec 32) (_ BitVec 64))) (size!7678 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15483)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304363 (= res!161869 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304364 () Bool)

(declare-fun res!161870 () Bool)

(assert (=> b!304364 (=> (not res!161870) (not e!191282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304364 (= res!161870 (validKeyInArray!0 k!2441))))

(declare-fun b!304365 () Bool)

(declare-fun e!191284 () Bool)

(assert (=> b!304365 (= e!191282 e!191284)))

(declare-fun res!161873 () Bool)

(assert (=> b!304365 (=> (not res!161873) (not e!191284))))

(declare-datatypes ((SeekEntryResult!2477 0))(
  ( (MissingZero!2477 (index!12084 (_ BitVec 32))) (Found!2477 (index!12085 (_ BitVec 32))) (Intermediate!2477 (undefined!3289 Bool) (index!12086 (_ BitVec 32)) (x!30306 (_ BitVec 32))) (Undefined!2477) (MissingVacant!2477 (index!12087 (_ BitVec 32))) )
))
(declare-fun lt!150440 () SeekEntryResult!2477)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15483 (_ BitVec 32)) SeekEntryResult!2477)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304365 (= res!161873 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150440))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304365 (= lt!150440 (Intermediate!2477 false resIndex!52 resX!52))))

(declare-fun b!304366 () Bool)

(declare-fun res!161868 () Bool)

(assert (=> b!304366 (=> (not res!161868) (not e!191282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15483 (_ BitVec 32)) Bool)

(assert (=> b!304366 (= res!161868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304367 () Bool)

(declare-fun e!191283 () Bool)

(assert (=> b!304367 (= e!191283 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun lt!150439 () SeekEntryResult!2477)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304367 (= lt!150439 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304368 () Bool)

(assert (=> b!304368 (= e!191284 e!191283)))

(declare-fun res!161871 () Bool)

(assert (=> b!304368 (=> (not res!161871) (not e!191283))))

(assert (=> b!304368 (= res!161871 (and (= lt!150439 lt!150440) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7326 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7326 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7326 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304368 (= lt!150439 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304369 () Bool)

(declare-fun res!161872 () Bool)

(assert (=> b!304369 (=> (not res!161872) (not e!191284))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304369 (= res!161872 (and (= (select (arr!7326 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7678 a!3293))))))

(declare-fun b!304370 () Bool)

(declare-fun res!161866 () Bool)

(assert (=> b!304370 (=> (not res!161866) (not e!191282))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15483 (_ BitVec 32)) SeekEntryResult!2477)

(assert (=> b!304370 (= res!161866 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2477 i!1240)))))

(declare-fun res!161874 () Bool)

(assert (=> start!30430 (=> (not res!161874) (not e!191282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30430 (= res!161874 (validMask!0 mask!3709))))

(assert (=> start!30430 e!191282))

(declare-fun array_inv!5280 (array!15483) Bool)

(assert (=> start!30430 (array_inv!5280 a!3293)))

(assert (=> start!30430 true))

(declare-fun b!304371 () Bool)

(declare-fun res!161867 () Bool)

(assert (=> b!304371 (=> (not res!161867) (not e!191282))))

(assert (=> b!304371 (= res!161867 (and (= (size!7678 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7678 a!3293))))))

(assert (= (and start!30430 res!161874) b!304371))

(assert (= (and b!304371 res!161867) b!304364))

(assert (= (and b!304364 res!161870) b!304363))

(assert (= (and b!304363 res!161869) b!304370))

(assert (= (and b!304370 res!161866) b!304366))

(assert (= (and b!304366 res!161868) b!304365))

(assert (= (and b!304365 res!161873) b!304369))

(assert (= (and b!304369 res!161872) b!304368))

(assert (= (and b!304368 res!161871) b!304367))

(declare-fun m!315497 () Bool)

(assert (=> start!30430 m!315497))

(declare-fun m!315499 () Bool)

(assert (=> start!30430 m!315499))

(declare-fun m!315501 () Bool)

(assert (=> b!304365 m!315501))

(assert (=> b!304365 m!315501))

(declare-fun m!315503 () Bool)

(assert (=> b!304365 m!315503))

(declare-fun m!315505 () Bool)

(assert (=> b!304370 m!315505))

(declare-fun m!315507 () Bool)

(assert (=> b!304367 m!315507))

(assert (=> b!304367 m!315507))

(declare-fun m!315509 () Bool)

(assert (=> b!304367 m!315509))

(declare-fun m!315511 () Bool)

(assert (=> b!304364 m!315511))

(declare-fun m!315513 () Bool)

(assert (=> b!304368 m!315513))

(declare-fun m!315515 () Bool)

(assert (=> b!304368 m!315515))

(declare-fun m!315517 () Bool)

(assert (=> b!304369 m!315517))

(declare-fun m!315519 () Bool)

(assert (=> b!304366 m!315519))

(declare-fun m!315521 () Bool)

(assert (=> b!304363 m!315521))

(push 1)

(assert (not b!304370))

(assert (not b!304364))

(assert (not b!304365))

(assert (not start!30430))

(assert (not b!304363))

(assert (not b!304366))

(assert (not b!304368))

(assert (not b!304367))

(check-sat)

