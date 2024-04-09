; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30250 () Bool)

(assert start!30250)

(declare-fun b!302438 () Bool)

(declare-fun res!160085 () Bool)

(declare-fun e!190612 () Bool)

(assert (=> b!302438 (=> (not res!160085) (not e!190612))))

(declare-datatypes ((array!15354 0))(
  ( (array!15355 (arr!7263 (Array (_ BitVec 32) (_ BitVec 64))) (size!7615 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15354)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302438 (= res!160085 (and (= (select (arr!7263 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7615 a!3293))))))

(declare-fun b!302439 () Bool)

(declare-fun res!160089 () Bool)

(assert (=> b!302439 (=> (not res!160089) (not e!190612))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2414 0))(
  ( (MissingZero!2414 (index!11832 (_ BitVec 32))) (Found!2414 (index!11833 (_ BitVec 32))) (Intermediate!2414 (undefined!3226 Bool) (index!11834 (_ BitVec 32)) (x!30066 (_ BitVec 32))) (Undefined!2414) (MissingVacant!2414 (index!11835 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15354 (_ BitVec 32)) SeekEntryResult!2414)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302439 (= res!160089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2414 false resIndex!52 resX!52)))))

(declare-fun b!302440 () Bool)

(declare-fun res!160086 () Bool)

(assert (=> b!302440 (=> (not res!160086) (not e!190612))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15354 (_ BitVec 32)) SeekEntryResult!2414)

(assert (=> b!302440 (= res!160086 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2414 i!1240)))))

(declare-fun b!302441 () Bool)

(declare-fun res!160084 () Bool)

(assert (=> b!302441 (=> (not res!160084) (not e!190612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15354 (_ BitVec 32)) Bool)

(assert (=> b!302441 (= res!160084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302442 () Bool)

(declare-fun res!160087 () Bool)

(assert (=> b!302442 (=> (not res!160087) (not e!190612))))

(assert (=> b!302442 (= res!160087 (and (= (size!7615 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7615 a!3293))))))

(declare-fun b!302444 () Bool)

(declare-fun res!160082 () Bool)

(assert (=> b!302444 (=> (not res!160082) (not e!190612))))

(declare-fun arrayContainsKey!0 (array!15354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302444 (= res!160082 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302445 () Bool)

(declare-fun res!160083 () Bool)

(assert (=> b!302445 (=> (not res!160083) (not e!190612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302445 (= res!160083 (validKeyInArray!0 k!2441))))

(declare-fun b!302443 () Bool)

(assert (=> b!302443 (= e!190612 false)))

(declare-fun lt!150074 () SeekEntryResult!2414)

(assert (=> b!302443 (= lt!150074 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!160088 () Bool)

(assert (=> start!30250 (=> (not res!160088) (not e!190612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30250 (= res!160088 (validMask!0 mask!3709))))

(assert (=> start!30250 e!190612))

(declare-fun array_inv!5217 (array!15354) Bool)

(assert (=> start!30250 (array_inv!5217 a!3293)))

(assert (=> start!30250 true))

(assert (= (and start!30250 res!160088) b!302442))

(assert (= (and b!302442 res!160087) b!302445))

(assert (= (and b!302445 res!160083) b!302444))

(assert (= (and b!302444 res!160082) b!302440))

(assert (= (and b!302440 res!160086) b!302441))

(assert (= (and b!302441 res!160084) b!302439))

(assert (= (and b!302439 res!160089) b!302438))

(assert (= (and b!302438 res!160085) b!302443))

(declare-fun m!313973 () Bool)

(assert (=> start!30250 m!313973))

(declare-fun m!313975 () Bool)

(assert (=> start!30250 m!313975))

(declare-fun m!313977 () Bool)

(assert (=> b!302438 m!313977))

(declare-fun m!313979 () Bool)

(assert (=> b!302445 m!313979))

(declare-fun m!313981 () Bool)

(assert (=> b!302444 m!313981))

(declare-fun m!313983 () Bool)

(assert (=> b!302443 m!313983))

(declare-fun m!313985 () Bool)

(assert (=> b!302441 m!313985))

(declare-fun m!313987 () Bool)

(assert (=> b!302440 m!313987))

(declare-fun m!313989 () Bool)

(assert (=> b!302439 m!313989))

(assert (=> b!302439 m!313989))

(declare-fun m!313991 () Bool)

(assert (=> b!302439 m!313991))

(push 1)

(assert (not b!302440))

(assert (not b!302444))

(assert (not start!30250))

(assert (not b!302445))

(assert (not b!302441))

(assert (not b!302443))

(assert (not b!302439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

