; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30022 () Bool)

(assert start!30022)

(declare-fun res!158938 () Bool)

(declare-fun e!190035 () Bool)

(assert (=> start!30022 (=> (not res!158938) (not e!190035))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30022 (= res!158938 (validMask!0 mask!3709))))

(assert (=> start!30022 e!190035))

(assert (=> start!30022 true))

(declare-datatypes ((array!15243 0))(
  ( (array!15244 (arr!7212 (Array (_ BitVec 32) (_ BitVec 64))) (size!7564 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15243)

(declare-fun array_inv!5166 (array!15243) Bool)

(assert (=> start!30022 (array_inv!5166 a!3293)))

(declare-fun b!301028 () Bool)

(declare-fun res!158939 () Bool)

(assert (=> b!301028 (=> (not res!158939) (not e!190035))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301028 (= res!158939 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301029 () Bool)

(declare-fun res!158937 () Bool)

(assert (=> b!301029 (=> (not res!158937) (not e!190035))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301029 (= res!158937 (and (= (size!7564 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7564 a!3293))))))

(declare-fun b!301030 () Bool)

(assert (=> b!301030 (= e!190035 (bvsgt #b00000000000000000000000000000000 (size!7564 a!3293)))))

(declare-fun b!301031 () Bool)

(declare-fun res!158940 () Bool)

(assert (=> b!301031 (=> (not res!158940) (not e!190035))))

(declare-datatypes ((SeekEntryResult!2363 0))(
  ( (MissingZero!2363 (index!11628 (_ BitVec 32))) (Found!2363 (index!11629 (_ BitVec 32))) (Intermediate!2363 (undefined!3175 Bool) (index!11630 (_ BitVec 32)) (x!29870 (_ BitVec 32))) (Undefined!2363) (MissingVacant!2363 (index!11631 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15243 (_ BitVec 32)) SeekEntryResult!2363)

(assert (=> b!301031 (= res!158940 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2363 i!1240)))))

(declare-fun b!301032 () Bool)

(declare-fun res!158936 () Bool)

(assert (=> b!301032 (=> (not res!158936) (not e!190035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301032 (= res!158936 (validKeyInArray!0 k!2441))))

(assert (= (and start!30022 res!158938) b!301029))

(assert (= (and b!301029 res!158937) b!301032))

(assert (= (and b!301032 res!158936) b!301028))

(assert (= (and b!301028 res!158939) b!301031))

(assert (= (and b!301031 res!158940) b!301030))

(declare-fun m!312909 () Bool)

(assert (=> start!30022 m!312909))

(declare-fun m!312911 () Bool)

(assert (=> start!30022 m!312911))

(declare-fun m!312913 () Bool)

(assert (=> b!301028 m!312913))

(declare-fun m!312915 () Bool)

(assert (=> b!301031 m!312915))

(declare-fun m!312917 () Bool)

(assert (=> b!301032 m!312917))

(push 1)

(assert (not b!301032))

(assert (not start!30022))

(assert (not b!301028))

(assert (not b!301031))

(check-sat)

(pop 1)

