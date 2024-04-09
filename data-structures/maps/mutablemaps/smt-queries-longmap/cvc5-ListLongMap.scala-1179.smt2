; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25426 () Bool)

(assert start!25426)

(declare-fun b!264665 () Bool)

(declare-fun res!129217 () Bool)

(declare-fun e!171466 () Bool)

(assert (=> b!264665 (=> (not res!129217) (not e!171466))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264665 (= res!129217 (validKeyInArray!0 k!2698))))

(declare-fun b!264666 () Bool)

(declare-fun res!129215 () Bool)

(assert (=> b!264666 (=> (not res!129215) (not e!171466))))

(declare-datatypes ((array!12709 0))(
  ( (array!12710 (arr!6013 (Array (_ BitVec 32) (_ BitVec 64))) (size!6365 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12709)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1215 0))(
  ( (MissingZero!1215 (index!7030 (_ BitVec 32))) (Found!1215 (index!7031 (_ BitVec 32))) (Intermediate!1215 (undefined!2027 Bool) (index!7032 (_ BitVec 32)) (x!25332 (_ BitVec 32))) (Undefined!1215) (MissingVacant!1215 (index!7033 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12709 (_ BitVec 32)) SeekEntryResult!1215)

(assert (=> b!264666 (= res!129215 (not (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) (MissingZero!1215 i!1355))))))

(declare-fun b!264667 () Bool)

(assert (=> b!264667 (= e!171466 (bvslt mask!4002 #b00000000000000000000000000000000))))

(declare-fun b!264668 () Bool)

(declare-fun res!129218 () Bool)

(assert (=> b!264668 (=> (not res!129218) (not e!171466))))

(declare-fun arrayContainsKey!0 (array!12709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264668 (= res!129218 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264669 () Bool)

(declare-fun res!129219 () Bool)

(assert (=> b!264669 (=> (not res!129219) (not e!171466))))

(assert (=> b!264669 (= res!129219 (and (= (size!6365 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6365 a!3436))))))

(declare-fun res!129216 () Bool)

(assert (=> start!25426 (=> (not res!129216) (not e!171466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25426 (= res!129216 (validMask!0 mask!4002))))

(assert (=> start!25426 e!171466))

(assert (=> start!25426 true))

(declare-fun array_inv!3967 (array!12709) Bool)

(assert (=> start!25426 (array_inv!3967 a!3436)))

(assert (= (and start!25426 res!129216) b!264669))

(assert (= (and b!264669 res!129219) b!264665))

(assert (= (and b!264665 res!129217) b!264668))

(assert (= (and b!264668 res!129218) b!264666))

(assert (= (and b!264666 res!129215) b!264667))

(declare-fun m!281693 () Bool)

(assert (=> b!264665 m!281693))

(declare-fun m!281695 () Bool)

(assert (=> b!264666 m!281695))

(declare-fun m!281697 () Bool)

(assert (=> b!264668 m!281697))

(declare-fun m!281699 () Bool)

(assert (=> start!25426 m!281699))

(declare-fun m!281701 () Bool)

(assert (=> start!25426 m!281701))

(push 1)

(assert (not b!264665))

(assert (not start!25426))

(assert (not b!264666))

(assert (not b!264668))

(check-sat)

(pop 1)

