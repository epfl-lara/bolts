; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30154 () Bool)

(assert start!30154)

(declare-fun b!301729 () Bool)

(declare-fun e!190342 () Bool)

(assert (=> b!301729 (= e!190342 false)))

(declare-datatypes ((array!15303 0))(
  ( (array!15304 (arr!7239 (Array (_ BitVec 32) (_ BitVec 64))) (size!7591 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15303)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2390 0))(
  ( (MissingZero!2390 (index!11736 (_ BitVec 32))) (Found!2390 (index!11737 (_ BitVec 32))) (Intermediate!2390 (undefined!3202 Bool) (index!11738 (_ BitVec 32)) (x!29972 (_ BitVec 32))) (Undefined!2390) (MissingVacant!2390 (index!11739 (_ BitVec 32))) )
))
(declare-fun lt!149939 () SeekEntryResult!2390)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15303 (_ BitVec 32)) SeekEntryResult!2390)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301729 (= lt!149939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!301730 () Bool)

(declare-fun res!159498 () Bool)

(assert (=> b!301730 (=> (not res!159498) (not e!190342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15303 (_ BitVec 32)) Bool)

(assert (=> b!301730 (= res!159498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!159496 () Bool)

(assert (=> start!30154 (=> (not res!159496) (not e!190342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30154 (= res!159496 (validMask!0 mask!3709))))

(assert (=> start!30154 e!190342))

(assert (=> start!30154 true))

(declare-fun array_inv!5193 (array!15303) Bool)

(assert (=> start!30154 (array_inv!5193 a!3293)))

(declare-fun b!301731 () Bool)

(declare-fun res!159500 () Bool)

(assert (=> b!301731 (=> (not res!159500) (not e!190342))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301731 (= res!159500 (and (= (size!7591 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7591 a!3293))))))

(declare-fun b!301732 () Bool)

(declare-fun res!159499 () Bool)

(assert (=> b!301732 (=> (not res!159499) (not e!190342))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15303 (_ BitVec 32)) SeekEntryResult!2390)

(assert (=> b!301732 (= res!159499 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2390 i!1240)))))

(declare-fun b!301733 () Bool)

(declare-fun res!159501 () Bool)

(assert (=> b!301733 (=> (not res!159501) (not e!190342))))

(declare-fun arrayContainsKey!0 (array!15303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301733 (= res!159501 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301734 () Bool)

(declare-fun res!159497 () Bool)

(assert (=> b!301734 (=> (not res!159497) (not e!190342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301734 (= res!159497 (validKeyInArray!0 k!2441))))

(assert (= (and start!30154 res!159496) b!301731))

(assert (= (and b!301731 res!159500) b!301734))

(assert (= (and b!301734 res!159497) b!301733))

(assert (= (and b!301733 res!159501) b!301732))

(assert (= (and b!301732 res!159499) b!301730))

(assert (= (and b!301730 res!159498) b!301729))

(declare-fun m!313437 () Bool)

(assert (=> b!301732 m!313437))

(declare-fun m!313439 () Bool)

(assert (=> start!30154 m!313439))

(declare-fun m!313441 () Bool)

(assert (=> start!30154 m!313441))

(declare-fun m!313443 () Bool)

(assert (=> b!301734 m!313443))

(declare-fun m!313445 () Bool)

(assert (=> b!301729 m!313445))

(assert (=> b!301729 m!313445))

(declare-fun m!313447 () Bool)

(assert (=> b!301729 m!313447))

(declare-fun m!313449 () Bool)

(assert (=> b!301733 m!313449))

(declare-fun m!313451 () Bool)

(assert (=> b!301730 m!313451))

(push 1)

(assert (not start!30154))

(assert (not b!301734))

(assert (not b!301732))

(assert (not b!301733))

(assert (not b!301730))

(assert (not b!301729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

