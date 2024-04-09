; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30166 () Bool)

(assert start!30166)

(declare-fun res!159615 () Bool)

(declare-fun e!190377 () Bool)

(assert (=> start!30166 (=> (not res!159615) (not e!190377))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30166 (= res!159615 (validMask!0 mask!3709))))

(assert (=> start!30166 e!190377))

(assert (=> start!30166 true))

(declare-datatypes ((array!15315 0))(
  ( (array!15316 (arr!7245 (Array (_ BitVec 32) (_ BitVec 64))) (size!7597 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15315)

(declare-fun array_inv!5199 (array!15315) Bool)

(assert (=> start!30166 (array_inv!5199 a!3293)))

(declare-fun b!301846 () Bool)

(declare-fun res!159617 () Bool)

(assert (=> b!301846 (=> (not res!159617) (not e!190377))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2396 0))(
  ( (MissingZero!2396 (index!11760 (_ BitVec 32))) (Found!2396 (index!11761 (_ BitVec 32))) (Intermediate!2396 (undefined!3208 Bool) (index!11762 (_ BitVec 32)) (x!29994 (_ BitVec 32))) (Undefined!2396) (MissingVacant!2396 (index!11763 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15315 (_ BitVec 32)) SeekEntryResult!2396)

(assert (=> b!301846 (= res!159617 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2396 i!1240)))))

(declare-fun b!301847 () Bool)

(assert (=> b!301847 (= e!190377 false)))

(declare-fun lt!149948 () SeekEntryResult!2396)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15315 (_ BitVec 32)) SeekEntryResult!2396)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301847 (= lt!149948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!301848 () Bool)

(declare-fun res!159613 () Bool)

(assert (=> b!301848 (=> (not res!159613) (not e!190377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301848 (= res!159613 (validKeyInArray!0 k!2441))))

(declare-fun b!301849 () Bool)

(declare-fun res!159616 () Bool)

(assert (=> b!301849 (=> (not res!159616) (not e!190377))))

(declare-fun arrayContainsKey!0 (array!15315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301849 (= res!159616 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301850 () Bool)

(declare-fun res!159618 () Bool)

(assert (=> b!301850 (=> (not res!159618) (not e!190377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15315 (_ BitVec 32)) Bool)

(assert (=> b!301850 (= res!159618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301851 () Bool)

(declare-fun res!159614 () Bool)

(assert (=> b!301851 (=> (not res!159614) (not e!190377))))

(assert (=> b!301851 (= res!159614 (and (= (size!7597 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7597 a!3293))))))

(assert (= (and start!30166 res!159615) b!301851))

(assert (= (and b!301851 res!159614) b!301848))

(assert (= (and b!301848 res!159613) b!301849))

(assert (= (and b!301849 res!159616) b!301846))

(assert (= (and b!301846 res!159617) b!301850))

(assert (= (and b!301850 res!159618) b!301847))

(declare-fun m!313539 () Bool)

(assert (=> b!301847 m!313539))

(assert (=> b!301847 m!313539))

(declare-fun m!313541 () Bool)

(assert (=> b!301847 m!313541))

(declare-fun m!313543 () Bool)

(assert (=> b!301848 m!313543))

(declare-fun m!313545 () Bool)

(assert (=> b!301846 m!313545))

(declare-fun m!313547 () Bool)

(assert (=> b!301850 m!313547))

(declare-fun m!313549 () Bool)

(assert (=> b!301849 m!313549))

(declare-fun m!313551 () Bool)

(assert (=> start!30166 m!313551))

(declare-fun m!313553 () Bool)

(assert (=> start!30166 m!313553))

(push 1)

(assert (not start!30166))

(assert (not b!301849))

(assert (not b!301848))

(assert (not b!301847))

(assert (not b!301850))

(assert (not b!301846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

