; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25702 () Bool)

(assert start!25702)

(declare-fun b!266360 () Bool)

(declare-fun res!130699 () Bool)

(declare-fun e!172366 () Bool)

(assert (=> b!266360 (=> (not res!130699) (not e!172366))))

(declare-datatypes ((array!12868 0))(
  ( (array!12869 (arr!6088 (Array (_ BitVec 32) (_ BitVec 64))) (size!6440 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12868)

(assert (=> b!266360 (= res!130699 (bvslt #b00000000000000000000000000000000 (size!6440 a!3436)))))

(declare-fun b!266361 () Bool)

(declare-fun res!130697 () Bool)

(declare-fun e!172364 () Bool)

(assert (=> b!266361 (=> (not res!130697) (not e!172364))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266361 (= res!130697 (validKeyInArray!0 k!2698))))

(declare-fun b!266362 () Bool)

(assert (=> b!266362 (= e!172366 (not true))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12868 (_ BitVec 32)) Bool)

(assert (=> b!266362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12869 (store (arr!6088 a!3436) i!1355 k!2698) (size!6440 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8280 0))(
  ( (Unit!8281) )
))
(declare-fun lt!134438 () Unit!8280)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12868 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8280)

(assert (=> b!266362 (= lt!134438 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266363 () Bool)

(assert (=> b!266363 (= e!172364 e!172366)))

(declare-fun res!130694 () Bool)

(assert (=> b!266363 (=> (not res!130694) (not e!172366))))

(declare-datatypes ((SeekEntryResult!1290 0))(
  ( (MissingZero!1290 (index!7330 (_ BitVec 32))) (Found!1290 (index!7331 (_ BitVec 32))) (Intermediate!1290 (undefined!2102 Bool) (index!7332 (_ BitVec 32)) (x!25607 (_ BitVec 32))) (Undefined!1290) (MissingVacant!1290 (index!7333 (_ BitVec 32))) )
))
(declare-fun lt!134437 () SeekEntryResult!1290)

(assert (=> b!266363 (= res!130694 (or (= lt!134437 (MissingZero!1290 i!1355)) (= lt!134437 (MissingVacant!1290 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12868 (_ BitVec 32)) SeekEntryResult!1290)

(assert (=> b!266363 (= lt!134437 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266364 () Bool)

(declare-fun res!130695 () Bool)

(assert (=> b!266364 (=> (not res!130695) (not e!172364))))

(declare-fun arrayContainsKey!0 (array!12868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266364 (= res!130695 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266366 () Bool)

(declare-fun res!130701 () Bool)

(assert (=> b!266366 (=> (not res!130701) (not e!172366))))

(assert (=> b!266366 (= res!130701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266367 () Bool)

(declare-fun res!130698 () Bool)

(assert (=> b!266367 (=> (not res!130698) (not e!172364))))

(assert (=> b!266367 (= res!130698 (and (= (size!6440 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6440 a!3436))))))

(declare-fun res!130700 () Bool)

(assert (=> start!25702 (=> (not res!130700) (not e!172364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25702 (= res!130700 (validMask!0 mask!4002))))

(assert (=> start!25702 e!172364))

(assert (=> start!25702 true))

(declare-fun array_inv!4042 (array!12868) Bool)

(assert (=> start!25702 (array_inv!4042 a!3436)))

(declare-fun b!266365 () Bool)

(declare-fun res!130696 () Bool)

(assert (=> b!266365 (=> (not res!130696) (not e!172366))))

(declare-datatypes ((List!3923 0))(
  ( (Nil!3920) (Cons!3919 (h!4586 (_ BitVec 64)) (t!9013 List!3923)) )
))
(declare-fun arrayNoDuplicates!0 (array!12868 (_ BitVec 32) List!3923) Bool)

(assert (=> b!266365 (= res!130696 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3920))))

(assert (= (and start!25702 res!130700) b!266367))

(assert (= (and b!266367 res!130698) b!266361))

(assert (= (and b!266361 res!130697) b!266364))

(assert (= (and b!266364 res!130695) b!266363))

(assert (= (and b!266363 res!130694) b!266366))

(assert (= (and b!266366 res!130701) b!266365))

(assert (= (and b!266365 res!130696) b!266360))

(assert (= (and b!266360 res!130699) b!266362))

(declare-fun m!283001 () Bool)

(assert (=> b!266365 m!283001))

(declare-fun m!283003 () Bool)

(assert (=> b!266362 m!283003))

(declare-fun m!283005 () Bool)

(assert (=> b!266362 m!283005))

(declare-fun m!283007 () Bool)

(assert (=> b!266362 m!283007))

(declare-fun m!283009 () Bool)

(assert (=> b!266361 m!283009))

(declare-fun m!283011 () Bool)

(assert (=> b!266366 m!283011))

(declare-fun m!283013 () Bool)

(assert (=> start!25702 m!283013))

(declare-fun m!283015 () Bool)

(assert (=> start!25702 m!283015))

(declare-fun m!283017 () Bool)

(assert (=> b!266364 m!283017))

(declare-fun m!283019 () Bool)

(assert (=> b!266363 m!283019))

(push 1)

