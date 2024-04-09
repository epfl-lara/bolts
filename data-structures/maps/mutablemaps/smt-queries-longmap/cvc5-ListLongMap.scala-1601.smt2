; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30282 () Bool)

(assert start!30282)

(declare-fun b!302850 () Bool)

(declare-fun res!160494 () Bool)

(declare-fun e!190734 () Bool)

(assert (=> b!302850 (=> (not res!160494) (not e!190734))))

(declare-datatypes ((array!15386 0))(
  ( (array!15387 (arr!7279 (Array (_ BitVec 32) (_ BitVec 64))) (size!7631 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15386)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302850 (= res!160494 (and (= (select (arr!7279 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7631 a!3293))))))

(declare-fun b!302851 () Bool)

(declare-fun res!160496 () Bool)

(assert (=> b!302851 (=> (not res!160496) (not e!190734))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302851 (= res!160496 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302852 () Bool)

(assert (=> b!302852 (= e!190734 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2430 0))(
  ( (MissingZero!2430 (index!11896 (_ BitVec 32))) (Found!2430 (index!11897 (_ BitVec 32))) (Intermediate!2430 (undefined!3242 Bool) (index!11898 (_ BitVec 32)) (x!30130 (_ BitVec 32))) (Undefined!2430) (MissingVacant!2430 (index!11899 (_ BitVec 32))) )
))
(declare-fun lt!150122 () SeekEntryResult!2430)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15386 (_ BitVec 32)) SeekEntryResult!2430)

(assert (=> b!302852 (= lt!150122 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302853 () Bool)

(declare-fun res!160498 () Bool)

(assert (=> b!302853 (=> (not res!160498) (not e!190734))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15386 (_ BitVec 32)) SeekEntryResult!2430)

(assert (=> b!302853 (= res!160498 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2430 i!1240)))))

(declare-fun b!302854 () Bool)

(declare-fun res!160499 () Bool)

(assert (=> b!302854 (=> (not res!160499) (not e!190734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302854 (= res!160499 (validKeyInArray!0 k!2441))))

(declare-fun b!302855 () Bool)

(declare-fun res!160493 () Bool)

(assert (=> b!302855 (=> (not res!160493) (not e!190734))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302855 (= res!160493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2430 false resIndex!52 resX!52)))))

(declare-fun b!302856 () Bool)

(declare-fun res!160497 () Bool)

(assert (=> b!302856 (=> (not res!160497) (not e!190734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15386 (_ BitVec 32)) Bool)

(assert (=> b!302856 (= res!160497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160495 () Bool)

(assert (=> start!30282 (=> (not res!160495) (not e!190734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30282 (= res!160495 (validMask!0 mask!3709))))

(assert (=> start!30282 e!190734))

(declare-fun array_inv!5233 (array!15386) Bool)

(assert (=> start!30282 (array_inv!5233 a!3293)))

(assert (=> start!30282 true))

(declare-fun b!302849 () Bool)

(declare-fun res!160500 () Bool)

(assert (=> b!302849 (=> (not res!160500) (not e!190734))))

(assert (=> b!302849 (= res!160500 (and (= (size!7631 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7631 a!3293))))))

(assert (= (and start!30282 res!160495) b!302849))

(assert (= (and b!302849 res!160500) b!302854))

(assert (= (and b!302854 res!160499) b!302851))

(assert (= (and b!302851 res!160496) b!302853))

(assert (= (and b!302853 res!160498) b!302856))

(assert (= (and b!302856 res!160497) b!302855))

(assert (= (and b!302855 res!160493) b!302850))

(assert (= (and b!302850 res!160494) b!302852))

(declare-fun m!314311 () Bool)

(assert (=> b!302855 m!314311))

(assert (=> b!302855 m!314311))

(declare-fun m!314313 () Bool)

(assert (=> b!302855 m!314313))

(declare-fun m!314315 () Bool)

(assert (=> b!302853 m!314315))

(declare-fun m!314317 () Bool)

(assert (=> b!302856 m!314317))

(declare-fun m!314319 () Bool)

(assert (=> b!302854 m!314319))

(declare-fun m!314321 () Bool)

(assert (=> b!302851 m!314321))

(declare-fun m!314323 () Bool)

(assert (=> b!302852 m!314323))

(declare-fun m!314325 () Bool)

(assert (=> start!30282 m!314325))

(declare-fun m!314327 () Bool)

(assert (=> start!30282 m!314327))

(declare-fun m!314329 () Bool)

(assert (=> b!302850 m!314329))

(push 1)

(assert (not b!302855))

(assert (not start!30282))

(assert (not b!302856))

(assert (not b!302852))

(assert (not b!302851))

(assert (not b!302853))

(assert (not b!302854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

