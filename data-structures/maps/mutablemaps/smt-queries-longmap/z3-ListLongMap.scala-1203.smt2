; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25698 () Bool)

(assert start!25698)

(declare-fun res!130650 () Bool)

(declare-fun e!172346 () Bool)

(assert (=> start!25698 (=> (not res!130650) (not e!172346))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25698 (= res!130650 (validMask!0 mask!4002))))

(assert (=> start!25698 e!172346))

(assert (=> start!25698 true))

(declare-datatypes ((array!12864 0))(
  ( (array!12865 (arr!6086 (Array (_ BitVec 32) (_ BitVec 64))) (size!6438 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12864)

(declare-fun array_inv!4040 (array!12864) Bool)

(assert (=> start!25698 (array_inv!4040 a!3436)))

(declare-fun b!266312 () Bool)

(declare-fun res!130649 () Bool)

(declare-fun e!172348 () Bool)

(assert (=> b!266312 (=> (not res!130649) (not e!172348))))

(assert (=> b!266312 (= res!130649 (bvslt #b00000000000000000000000000000000 (size!6438 a!3436)))))

(declare-fun b!266313 () Bool)

(declare-fun res!130646 () Bool)

(assert (=> b!266313 (=> (not res!130646) (not e!172348))))

(declare-datatypes ((List!3921 0))(
  ( (Nil!3918) (Cons!3917 (h!4584 (_ BitVec 64)) (t!9011 List!3921)) )
))
(declare-fun arrayNoDuplicates!0 (array!12864 (_ BitVec 32) List!3921) Bool)

(assert (=> b!266313 (= res!130646 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3918))))

(declare-fun b!266314 () Bool)

(declare-fun res!130648 () Bool)

(assert (=> b!266314 (=> (not res!130648) (not e!172346))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266314 (= res!130648 (and (= (size!6438 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6438 a!3436))))))

(declare-fun b!266315 () Bool)

(declare-fun res!130653 () Bool)

(assert (=> b!266315 (=> (not res!130653) (not e!172346))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266315 (= res!130653 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266316 () Bool)

(declare-fun res!130647 () Bool)

(assert (=> b!266316 (=> (not res!130647) (not e!172346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266316 (= res!130647 (validKeyInArray!0 k0!2698))))

(declare-fun b!266317 () Bool)

(assert (=> b!266317 (= e!172346 e!172348)))

(declare-fun res!130652 () Bool)

(assert (=> b!266317 (=> (not res!130652) (not e!172348))))

(declare-datatypes ((SeekEntryResult!1288 0))(
  ( (MissingZero!1288 (index!7322 (_ BitVec 32))) (Found!1288 (index!7323 (_ BitVec 32))) (Intermediate!1288 (undefined!2100 Bool) (index!7324 (_ BitVec 32)) (x!25597 (_ BitVec 32))) (Undefined!1288) (MissingVacant!1288 (index!7325 (_ BitVec 32))) )
))
(declare-fun lt!134426 () SeekEntryResult!1288)

(assert (=> b!266317 (= res!130652 (or (= lt!134426 (MissingZero!1288 i!1355)) (= lt!134426 (MissingVacant!1288 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12864 (_ BitVec 32)) SeekEntryResult!1288)

(assert (=> b!266317 (= lt!134426 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266318 () Bool)

(assert (=> b!266318 (= e!172348 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12864 (_ BitVec 32)) Bool)

(assert (=> b!266318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12865 (store (arr!6086 a!3436) i!1355 k0!2698) (size!6438 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8276 0))(
  ( (Unit!8277) )
))
(declare-fun lt!134425 () Unit!8276)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12864 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8276)

(assert (=> b!266318 (= lt!134425 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266319 () Bool)

(declare-fun res!130651 () Bool)

(assert (=> b!266319 (=> (not res!130651) (not e!172348))))

(assert (=> b!266319 (= res!130651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25698 res!130650) b!266314))

(assert (= (and b!266314 res!130648) b!266316))

(assert (= (and b!266316 res!130647) b!266315))

(assert (= (and b!266315 res!130653) b!266317))

(assert (= (and b!266317 res!130652) b!266319))

(assert (= (and b!266319 res!130651) b!266313))

(assert (= (and b!266313 res!130646) b!266312))

(assert (= (and b!266312 res!130649) b!266318))

(declare-fun m!282961 () Bool)

(assert (=> b!266316 m!282961))

(declare-fun m!282963 () Bool)

(assert (=> b!266313 m!282963))

(declare-fun m!282965 () Bool)

(assert (=> b!266319 m!282965))

(declare-fun m!282967 () Bool)

(assert (=> b!266315 m!282967))

(declare-fun m!282969 () Bool)

(assert (=> b!266317 m!282969))

(declare-fun m!282971 () Bool)

(assert (=> b!266318 m!282971))

(declare-fun m!282973 () Bool)

(assert (=> b!266318 m!282973))

(declare-fun m!282975 () Bool)

(assert (=> b!266318 m!282975))

(declare-fun m!282977 () Bool)

(assert (=> start!25698 m!282977))

(declare-fun m!282979 () Bool)

(assert (=> start!25698 m!282979))

(check-sat (not b!266313) (not b!266316) (not b!266318) (not b!266319) (not start!25698) (not b!266317) (not b!266315))
(check-sat)
