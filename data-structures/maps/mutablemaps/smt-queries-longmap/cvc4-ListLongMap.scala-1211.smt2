; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25748 () Bool)

(assert start!25748)

(declare-fun b!266814 () Bool)

(declare-fun e!172572 () Bool)

(declare-fun e!172573 () Bool)

(assert (=> b!266814 (= e!172572 e!172573)))

(declare-fun res!131152 () Bool)

(assert (=> b!266814 (=> (not res!131152) (not e!172573))))

(declare-datatypes ((SeekEntryResult!1313 0))(
  ( (MissingZero!1313 (index!7422 (_ BitVec 32))) (Found!1313 (index!7423 (_ BitVec 32))) (Intermediate!1313 (undefined!2125 Bool) (index!7424 (_ BitVec 32)) (x!25686 (_ BitVec 32))) (Undefined!1313) (MissingVacant!1313 (index!7425 (_ BitVec 32))) )
))
(declare-fun lt!134567 () SeekEntryResult!1313)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266814 (= res!131152 (or (= lt!134567 (MissingZero!1313 i!1355)) (= lt!134567 (MissingVacant!1313 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12914 0))(
  ( (array!12915 (arr!6111 (Array (_ BitVec 32) (_ BitVec 64))) (size!6463 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12914)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12914 (_ BitVec 32)) SeekEntryResult!1313)

(assert (=> b!266814 (= lt!134567 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266815 () Bool)

(declare-fun res!131148 () Bool)

(assert (=> b!266815 (=> (not res!131148) (not e!172573))))

(declare-datatypes ((List!3946 0))(
  ( (Nil!3943) (Cons!3942 (h!4609 (_ BitVec 64)) (t!9036 List!3946)) )
))
(declare-fun arrayNoDuplicates!0 (array!12914 (_ BitVec 32) List!3946) Bool)

(assert (=> b!266815 (= res!131148 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3943))))

(declare-fun b!266816 () Bool)

(declare-fun res!131151 () Bool)

(assert (=> b!266816 (=> (not res!131151) (not e!172572))))

(assert (=> b!266816 (= res!131151 (and (= (size!6463 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6463 a!3436))))))

(declare-fun res!131149 () Bool)

(assert (=> start!25748 (=> (not res!131149) (not e!172572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25748 (= res!131149 (validMask!0 mask!4002))))

(assert (=> start!25748 e!172572))

(assert (=> start!25748 true))

(declare-fun array_inv!4065 (array!12914) Bool)

(assert (=> start!25748 (array_inv!4065 a!3436)))

(declare-fun b!266817 () Bool)

(assert (=> b!266817 (= e!172573 (bvsge #b00000000000000000000000000000000 (size!6463 a!3436)))))

(declare-fun b!266818 () Bool)

(declare-fun res!131150 () Bool)

(assert (=> b!266818 (=> (not res!131150) (not e!172572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266818 (= res!131150 (validKeyInArray!0 k!2698))))

(declare-fun b!266819 () Bool)

(declare-fun res!131154 () Bool)

(assert (=> b!266819 (=> (not res!131154) (not e!172573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12914 (_ BitVec 32)) Bool)

(assert (=> b!266819 (= res!131154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266820 () Bool)

(declare-fun res!131153 () Bool)

(assert (=> b!266820 (=> (not res!131153) (not e!172572))))

(declare-fun arrayContainsKey!0 (array!12914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266820 (= res!131153 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25748 res!131149) b!266816))

(assert (= (and b!266816 res!131151) b!266818))

(assert (= (and b!266818 res!131150) b!266820))

(assert (= (and b!266820 res!131153) b!266814))

(assert (= (and b!266814 res!131152) b!266819))

(assert (= (and b!266819 res!131154) b!266815))

(assert (= (and b!266815 res!131148) b!266817))

(declare-fun m!283359 () Bool)

(assert (=> start!25748 m!283359))

(declare-fun m!283361 () Bool)

(assert (=> start!25748 m!283361))

(declare-fun m!283363 () Bool)

(assert (=> b!266819 m!283363))

(declare-fun m!283365 () Bool)

(assert (=> b!266815 m!283365))

(declare-fun m!283367 () Bool)

(assert (=> b!266820 m!283367))

(declare-fun m!283369 () Bool)

(assert (=> b!266818 m!283369))

(declare-fun m!283371 () Bool)

(assert (=> b!266814 m!283371))

(push 1)

(assert (not b!266819))

(assert (not start!25748))

(assert (not b!266820))

(assert (not b!266814))

(assert (not b!266815))

