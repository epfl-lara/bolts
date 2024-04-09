; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25392 () Bool)

(assert start!25392)

(declare-fun res!129103 () Bool)

(declare-fun e!171405 () Bool)

(assert (=> start!25392 (=> (not res!129103) (not e!171405))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25392 (= res!129103 (validMask!0 mask!4002))))

(assert (=> start!25392 e!171405))

(assert (=> start!25392 true))

(declare-datatypes ((array!12688 0))(
  ( (array!12689 (arr!6003 (Array (_ BitVec 32) (_ BitVec 64))) (size!6355 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12688)

(declare-fun array_inv!3957 (array!12688) Bool)

(assert (=> start!25392 (array_inv!3957 a!3436)))

(declare-fun b!264553 () Bool)

(declare-fun res!129104 () Bool)

(assert (=> b!264553 (=> (not res!129104) (not e!171405))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264553 (= res!129104 (and (= (size!6355 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6355 a!3436))))))

(declare-fun b!264554 () Bool)

(declare-fun res!129105 () Bool)

(assert (=> b!264554 (=> (not res!129105) (not e!171405))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264554 (= res!129105 (validKeyInArray!0 k!2698))))

(declare-fun b!264555 () Bool)

(assert (=> b!264555 (= e!171405 (bvsge #b00000000000000000000000000000000 (size!6355 a!3436)))))

(assert (= (and start!25392 res!129103) b!264553))

(assert (= (and b!264553 res!129104) b!264554))

(assert (= (and b!264554 res!129105) b!264555))

(declare-fun m!281615 () Bool)

(assert (=> start!25392 m!281615))

(declare-fun m!281617 () Bool)

(assert (=> start!25392 m!281617))

(declare-fun m!281619 () Bool)

(assert (=> b!264554 m!281619))

(push 1)

(assert (not start!25392))

(assert (not b!264554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

