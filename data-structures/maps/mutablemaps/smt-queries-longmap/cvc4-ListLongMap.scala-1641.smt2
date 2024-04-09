; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30634 () Bool)

(assert start!30634)

(declare-fun b!307153 () Bool)

(declare-fun res!164066 () Bool)

(declare-fun e!192375 () Bool)

(assert (=> b!307153 (=> (not res!164066) (not e!192375))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307153 (= res!164066 (validKeyInArray!0 k!2441))))

(declare-fun b!307154 () Bool)

(declare-fun res!164069 () Bool)

(assert (=> b!307154 (=> (not res!164069) (not e!192375))))

(declare-datatypes ((array!15636 0))(
  ( (array!15637 (arr!7401 (Array (_ BitVec 32) (_ BitVec 64))) (size!7753 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15636)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15636 (_ BitVec 32)) Bool)

(assert (=> b!307154 (= res!164069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!164065 () Bool)

(assert (=> start!30634 (=> (not res!164065) (not e!192375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30634 (= res!164065 (validMask!0 mask!3709))))

(assert (=> start!30634 e!192375))

(declare-fun array_inv!5355 (array!15636) Bool)

(assert (=> start!30634 (array_inv!5355 a!3293)))

(assert (=> start!30634 true))

(declare-fun b!307155 () Bool)

(declare-fun res!164067 () Bool)

(assert (=> b!307155 (=> (not res!164067) (not e!192375))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2552 0))(
  ( (MissingZero!2552 (index!12384 (_ BitVec 32))) (Found!2552 (index!12385 (_ BitVec 32))) (Intermediate!2552 (undefined!3364 Bool) (index!12386 (_ BitVec 32)) (x!30590 (_ BitVec 32))) (Undefined!2552) (MissingVacant!2552 (index!12387 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15636 (_ BitVec 32)) SeekEntryResult!2552)

(assert (=> b!307155 (= res!164067 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2552 i!1240)))))

(declare-fun b!307156 () Bool)

(declare-fun res!164073 () Bool)

(declare-fun e!192374 () Bool)

(assert (=> b!307156 (=> (not res!164073) (not e!192374))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307156 (= res!164073 (and (= (select (arr!7401 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7753 a!3293))))))

(declare-fun b!307157 () Bool)

(assert (=> b!307157 (= e!192374 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7401 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307158 () Bool)

(declare-fun res!164068 () Bool)

(assert (=> b!307158 (=> (not res!164068) (not e!192375))))

(declare-fun arrayContainsKey!0 (array!15636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307158 (= res!164068 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307159 () Bool)

(declare-fun res!164072 () Bool)

(assert (=> b!307159 (=> (not res!164072) (not e!192375))))

(assert (=> b!307159 (= res!164072 (and (= (size!7753 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7753 a!3293))))))

(declare-fun b!307160 () Bool)

(assert (=> b!307160 (= e!192375 e!192374)))

(declare-fun res!164070 () Bool)

(assert (=> b!307160 (=> (not res!164070) (not e!192374))))

(declare-fun lt!151082 () SeekEntryResult!2552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15636 (_ BitVec 32)) SeekEntryResult!2552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307160 (= res!164070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151082))))

(assert (=> b!307160 (= lt!151082 (Intermediate!2552 false resIndex!52 resX!52))))

(declare-fun b!307161 () Bool)

(declare-fun res!164071 () Bool)

(assert (=> b!307161 (=> (not res!164071) (not e!192374))))

(assert (=> b!307161 (= res!164071 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151082))))

(assert (= (and start!30634 res!164065) b!307159))

(assert (= (and b!307159 res!164072) b!307153))

(assert (= (and b!307153 res!164066) b!307158))

(assert (= (and b!307158 res!164068) b!307155))

(assert (= (and b!307155 res!164067) b!307154))

(assert (= (and b!307154 res!164069) b!307160))

(assert (= (and b!307160 res!164070) b!307156))

(assert (= (and b!307156 res!164073) b!307161))

(assert (= (and b!307161 res!164071) b!307157))

(declare-fun m!317517 () Bool)

(assert (=> start!30634 m!317517))

(declare-fun m!317519 () Bool)

(assert (=> start!30634 m!317519))

(declare-fun m!317521 () Bool)

(assert (=> b!307154 m!317521))

(declare-fun m!317523 () Bool)

(assert (=> b!307161 m!317523))

(declare-fun m!317525 () Bool)

(assert (=> b!307160 m!317525))

(assert (=> b!307160 m!317525))

(declare-fun m!317527 () Bool)

(assert (=> b!307160 m!317527))

(declare-fun m!317529 () Bool)

(assert (=> b!307156 m!317529))

(declare-fun m!317531 () Bool)

(assert (=> b!307158 m!317531))

(declare-fun m!317533 () Bool)

(assert (=> b!307153 m!317533))

(declare-fun m!317535 () Bool)

(assert (=> b!307157 m!317535))

(declare-fun m!317537 () Bool)

(assert (=> b!307155 m!317537))

(push 1)

(assert (not b!307155))

(assert (not b!307154))

(assert (not b!307160))

(assert (not b!307158))

(assert (not b!307161))

(assert (not b!307153))

(assert (not start!30634))

(check-sat)

