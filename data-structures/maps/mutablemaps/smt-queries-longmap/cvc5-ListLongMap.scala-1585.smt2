; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30138 () Bool)

(assert start!30138)

(declare-fun b!301585 () Bool)

(declare-fun res!159356 () Bool)

(declare-fun e!190294 () Bool)

(assert (=> b!301585 (=> (not res!159356) (not e!190294))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15287 0))(
  ( (array!15288 (arr!7231 (Array (_ BitVec 32) (_ BitVec 64))) (size!7583 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15287)

(assert (=> b!301585 (= res!159356 (and (= (size!7583 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7583 a!3293))))))

(declare-fun b!301587 () Bool)

(declare-fun res!159357 () Bool)

(assert (=> b!301587 (=> (not res!159357) (not e!190294))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301587 (= res!159357 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301588 () Bool)

(assert (=> b!301588 (= e!190294 false)))

(declare-fun lt!149915 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301588 (= lt!149915 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301589 () Bool)

(declare-fun res!159355 () Bool)

(assert (=> b!301589 (=> (not res!159355) (not e!190294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15287 (_ BitVec 32)) Bool)

(assert (=> b!301589 (= res!159355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301590 () Bool)

(declare-fun res!159352 () Bool)

(assert (=> b!301590 (=> (not res!159352) (not e!190294))))

(declare-datatypes ((SeekEntryResult!2382 0))(
  ( (MissingZero!2382 (index!11704 (_ BitVec 32))) (Found!2382 (index!11705 (_ BitVec 32))) (Intermediate!2382 (undefined!3194 Bool) (index!11706 (_ BitVec 32)) (x!29948 (_ BitVec 32))) (Undefined!2382) (MissingVacant!2382 (index!11707 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15287 (_ BitVec 32)) SeekEntryResult!2382)

(assert (=> b!301590 (= res!159352 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2382 i!1240)))))

(declare-fun res!159354 () Bool)

(assert (=> start!30138 (=> (not res!159354) (not e!190294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30138 (= res!159354 (validMask!0 mask!3709))))

(assert (=> start!30138 e!190294))

(assert (=> start!30138 true))

(declare-fun array_inv!5185 (array!15287) Bool)

(assert (=> start!30138 (array_inv!5185 a!3293)))

(declare-fun b!301586 () Bool)

(declare-fun res!159353 () Bool)

(assert (=> b!301586 (=> (not res!159353) (not e!190294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301586 (= res!159353 (validKeyInArray!0 k!2441))))

(assert (= (and start!30138 res!159354) b!301585))

(assert (= (and b!301585 res!159356) b!301586))

(assert (= (and b!301586 res!159353) b!301587))

(assert (= (and b!301587 res!159357) b!301590))

(assert (= (and b!301590 res!159352) b!301589))

(assert (= (and b!301589 res!159355) b!301588))

(declare-fun m!313321 () Bool)

(assert (=> b!301587 m!313321))

(declare-fun m!313323 () Bool)

(assert (=> b!301586 m!313323))

(declare-fun m!313325 () Bool)

(assert (=> b!301588 m!313325))

(declare-fun m!313327 () Bool)

(assert (=> start!30138 m!313327))

(declare-fun m!313329 () Bool)

(assert (=> start!30138 m!313329))

(declare-fun m!313331 () Bool)

(assert (=> b!301590 m!313331))

(declare-fun m!313333 () Bool)

(assert (=> b!301589 m!313333))

(push 1)

(assert (not b!301586))

(assert (not b!301587))

(assert (not start!30138))

(assert (not b!301589))

(assert (not b!301588))

(assert (not b!301590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

