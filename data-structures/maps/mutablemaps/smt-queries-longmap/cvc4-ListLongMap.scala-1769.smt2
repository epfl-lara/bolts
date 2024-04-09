; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32272 () Bool)

(assert start!32272)

(declare-fun b!321211 () Bool)

(declare-fun res!175494 () Bool)

(declare-fun e!199055 () Bool)

(assert (=> b!321211 (=> (not res!175494) (not e!199055))))

(declare-datatypes ((array!16458 0))(
  ( (array!16459 (arr!7785 (Array (_ BitVec 32) (_ BitVec 64))) (size!8137 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16458)

(declare-datatypes ((SeekEntryResult!2927 0))(
  ( (MissingZero!2927 (index!13884 (_ BitVec 32))) (Found!2927 (index!13885 (_ BitVec 32))) (Intermediate!2927 (undefined!3739 Bool) (index!13886 (_ BitVec 32)) (x!32109 (_ BitVec 32))) (Undefined!2927) (MissingVacant!2927 (index!13887 (_ BitVec 32))) )
))
(declare-fun lt!156152 () SeekEntryResult!2927)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16458 (_ BitVec 32)) SeekEntryResult!2927)

(assert (=> b!321211 (= res!175494 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156152))))

(declare-fun b!321213 () Bool)

(declare-fun res!175489 () Bool)

(declare-fun e!199056 () Bool)

(assert (=> b!321213 (=> (not res!175489) (not e!199056))))

(declare-fun arrayContainsKey!0 (array!16458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321213 (= res!175489 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321214 () Bool)

(declare-fun res!175491 () Bool)

(assert (=> b!321214 (=> (not res!175491) (not e!199056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16458 (_ BitVec 32)) Bool)

(assert (=> b!321214 (= res!175491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321215 () Bool)

(assert (=> b!321215 (= e!199056 e!199055)))

(declare-fun res!175496 () Bool)

(assert (=> b!321215 (=> (not res!175496) (not e!199055))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321215 (= res!175496 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156152))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321215 (= lt!156152 (Intermediate!2927 false resIndex!58 resX!58))))

(declare-fun b!321216 () Bool)

(assert (=> b!321216 (= e!199055 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7785 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7785 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7785 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!321217 () Bool)

(declare-fun res!175497 () Bool)

(assert (=> b!321217 (=> (not res!175497) (not e!199056))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321217 (= res!175497 (and (= (size!8137 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8137 a!3305))))))

(declare-fun b!321218 () Bool)

(declare-fun res!175495 () Bool)

(assert (=> b!321218 (=> (not res!175495) (not e!199056))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16458 (_ BitVec 32)) SeekEntryResult!2927)

(assert (=> b!321218 (= res!175495 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2927 i!1250)))))

(declare-fun b!321219 () Bool)

(declare-fun res!175493 () Bool)

(assert (=> b!321219 (=> (not res!175493) (not e!199056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321219 (= res!175493 (validKeyInArray!0 k!2497))))

(declare-fun b!321212 () Bool)

(declare-fun res!175492 () Bool)

(assert (=> b!321212 (=> (not res!175492) (not e!199055))))

(assert (=> b!321212 (= res!175492 (and (= (select (arr!7785 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8137 a!3305))))))

(declare-fun res!175490 () Bool)

(assert (=> start!32272 (=> (not res!175490) (not e!199056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32272 (= res!175490 (validMask!0 mask!3777))))

(assert (=> start!32272 e!199056))

(declare-fun array_inv!5739 (array!16458) Bool)

(assert (=> start!32272 (array_inv!5739 a!3305)))

(assert (=> start!32272 true))

(assert (= (and start!32272 res!175490) b!321217))

(assert (= (and b!321217 res!175497) b!321219))

(assert (= (and b!321219 res!175493) b!321213))

(assert (= (and b!321213 res!175489) b!321218))

(assert (= (and b!321218 res!175495) b!321214))

(assert (= (and b!321214 res!175491) b!321215))

(assert (= (and b!321215 res!175496) b!321212))

(assert (= (and b!321212 res!175492) b!321211))

(assert (= (and b!321211 res!175494) b!321216))

(declare-fun m!329403 () Bool)

(assert (=> b!321211 m!329403))

(declare-fun m!329405 () Bool)

(assert (=> b!321212 m!329405))

(declare-fun m!329407 () Bool)

(assert (=> b!321219 m!329407))

(declare-fun m!329409 () Bool)

(assert (=> b!321213 m!329409))

(declare-fun m!329411 () Bool)

(assert (=> b!321218 m!329411))

(declare-fun m!329413 () Bool)

(assert (=> start!32272 m!329413))

(declare-fun m!329415 () Bool)

(assert (=> start!32272 m!329415))

(declare-fun m!329417 () Bool)

(assert (=> b!321214 m!329417))

(declare-fun m!329419 () Bool)

(assert (=> b!321216 m!329419))

(declare-fun m!329421 () Bool)

(assert (=> b!321215 m!329421))

(assert (=> b!321215 m!329421))

(declare-fun m!329423 () Bool)

(assert (=> b!321215 m!329423))

(push 1)

(assert (not b!321214))

(assert (not b!321213))

(assert (not b!321219))

(assert (not b!321211))

(assert (not start!32272))

(assert (not b!321215))

(assert (not b!321218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

