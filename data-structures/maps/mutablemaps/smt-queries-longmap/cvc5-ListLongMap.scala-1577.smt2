; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30012 () Bool)

(assert start!30012)

(declare-fun b!300963 () Bool)

(declare-fun e!190006 () Bool)

(assert (=> b!300963 (= e!190006 false)))

(declare-datatypes ((array!15233 0))(
  ( (array!15234 (arr!7207 (Array (_ BitVec 32) (_ BitVec 64))) (size!7559 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15233)

(declare-datatypes ((SeekEntryResult!2358 0))(
  ( (MissingZero!2358 (index!11608 (_ BitVec 32))) (Found!2358 (index!11609 (_ BitVec 32))) (Intermediate!2358 (undefined!3170 Bool) (index!11610 (_ BitVec 32)) (x!29857 (_ BitVec 32))) (Undefined!2358) (MissingVacant!2358 (index!11611 (_ BitVec 32))) )
))
(declare-fun lt!149744 () SeekEntryResult!2358)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15233 (_ BitVec 32)) SeekEntryResult!2358)

(assert (=> b!300963 (= lt!149744 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(declare-fun res!158870 () Bool)

(assert (=> start!30012 (=> (not res!158870) (not e!190006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30012 (= res!158870 (validMask!0 mask!3709))))

(assert (=> start!30012 e!190006))

(assert (=> start!30012 true))

(declare-fun array_inv!5161 (array!15233) Bool)

(assert (=> start!30012 (array_inv!5161 a!3293)))

(declare-fun b!300962 () Bool)

(declare-fun res!158871 () Bool)

(assert (=> b!300962 (=> (not res!158871) (not e!190006))))

(declare-fun arrayContainsKey!0 (array!15233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300962 (= res!158871 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300961 () Bool)

(declare-fun res!158868 () Bool)

(assert (=> b!300961 (=> (not res!158868) (not e!190006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300961 (= res!158868 (validKeyInArray!0 k!2441))))

(declare-fun b!300960 () Bool)

(declare-fun res!158869 () Bool)

(assert (=> b!300960 (=> (not res!158869) (not e!190006))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300960 (= res!158869 (and (= (size!7559 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7559 a!3293))))))

(assert (= (and start!30012 res!158870) b!300960))

(assert (= (and b!300960 res!158869) b!300961))

(assert (= (and b!300961 res!158868) b!300962))

(assert (= (and b!300962 res!158871) b!300963))

(declare-fun m!312859 () Bool)

(assert (=> b!300963 m!312859))

(declare-fun m!312861 () Bool)

(assert (=> start!30012 m!312861))

(declare-fun m!312863 () Bool)

(assert (=> start!30012 m!312863))

(declare-fun m!312865 () Bool)

(assert (=> b!300962 m!312865))

(declare-fun m!312867 () Bool)

(assert (=> b!300961 m!312867))

(push 1)

(assert (not b!300963))

(assert (not b!300962))

(assert (not start!30012))

(assert (not b!300961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

