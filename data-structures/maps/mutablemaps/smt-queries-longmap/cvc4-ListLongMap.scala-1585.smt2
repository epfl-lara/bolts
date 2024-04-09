; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30142 () Bool)

(assert start!30142)

(declare-fun b!301621 () Bool)

(declare-fun e!190306 () Bool)

(assert (=> b!301621 (= e!190306 false)))

(declare-fun lt!149921 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301621 (= lt!149921 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301622 () Bool)

(declare-fun res!159393 () Bool)

(assert (=> b!301622 (=> (not res!159393) (not e!190306))))

(declare-datatypes ((array!15291 0))(
  ( (array!15292 (arr!7233 (Array (_ BitVec 32) (_ BitVec 64))) (size!7585 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15291)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15291 (_ BitVec 32)) Bool)

(assert (=> b!301622 (= res!159393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301623 () Bool)

(declare-fun res!159392 () Bool)

(assert (=> b!301623 (=> (not res!159392) (not e!190306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301623 (= res!159392 (validKeyInArray!0 k!2441))))

(declare-fun res!159390 () Bool)

(assert (=> start!30142 (=> (not res!159390) (not e!190306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30142 (= res!159390 (validMask!0 mask!3709))))

(assert (=> start!30142 e!190306))

(assert (=> start!30142 true))

(declare-fun array_inv!5187 (array!15291) Bool)

(assert (=> start!30142 (array_inv!5187 a!3293)))

(declare-fun b!301624 () Bool)

(declare-fun res!159388 () Bool)

(assert (=> b!301624 (=> (not res!159388) (not e!190306))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301624 (= res!159388 (and (= (size!7585 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7585 a!3293))))))

(declare-fun b!301625 () Bool)

(declare-fun res!159389 () Bool)

(assert (=> b!301625 (=> (not res!159389) (not e!190306))))

(declare-fun arrayContainsKey!0 (array!15291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301625 (= res!159389 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301626 () Bool)

(declare-fun res!159391 () Bool)

(assert (=> b!301626 (=> (not res!159391) (not e!190306))))

(declare-datatypes ((SeekEntryResult!2384 0))(
  ( (MissingZero!2384 (index!11712 (_ BitVec 32))) (Found!2384 (index!11713 (_ BitVec 32))) (Intermediate!2384 (undefined!3196 Bool) (index!11714 (_ BitVec 32)) (x!29950 (_ BitVec 32))) (Undefined!2384) (MissingVacant!2384 (index!11715 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15291 (_ BitVec 32)) SeekEntryResult!2384)

(assert (=> b!301626 (= res!159391 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2384 i!1240)))))

(assert (= (and start!30142 res!159390) b!301624))

(assert (= (and b!301624 res!159388) b!301623))

(assert (= (and b!301623 res!159392) b!301625))

(assert (= (and b!301625 res!159389) b!301626))

(assert (= (and b!301626 res!159391) b!301622))

(assert (= (and b!301622 res!159393) b!301621))

(declare-fun m!313349 () Bool)

(assert (=> b!301622 m!313349))

(declare-fun m!313351 () Bool)

(assert (=> b!301623 m!313351))

(declare-fun m!313353 () Bool)

(assert (=> b!301625 m!313353))

(declare-fun m!313355 () Bool)

(assert (=> start!30142 m!313355))

(declare-fun m!313357 () Bool)

(assert (=> start!30142 m!313357))

(declare-fun m!313359 () Bool)

(assert (=> b!301626 m!313359))

(declare-fun m!313361 () Bool)

(assert (=> b!301621 m!313361))

(push 1)

(assert (not b!301622))

(assert (not b!301621))

(assert (not start!30142))

(assert (not b!301623))

(assert (not b!301626))

(assert (not b!301625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

