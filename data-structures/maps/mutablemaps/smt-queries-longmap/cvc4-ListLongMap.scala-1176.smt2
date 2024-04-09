; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25398 () Bool)

(assert start!25398)

(declare-fun res!129130 () Bool)

(declare-fun e!171424 () Bool)

(assert (=> start!25398 (=> (not res!129130) (not e!171424))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25398 (= res!129130 (validMask!0 mask!4002))))

(assert (=> start!25398 e!171424))

(assert (=> start!25398 true))

(declare-datatypes ((array!12694 0))(
  ( (array!12695 (arr!6006 (Array (_ BitVec 32) (_ BitVec 64))) (size!6358 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12694)

(declare-fun array_inv!3960 (array!12694) Bool)

(assert (=> start!25398 (array_inv!3960 a!3436)))

(declare-fun b!264580 () Bool)

(declare-fun res!129132 () Bool)

(assert (=> b!264580 (=> (not res!129132) (not e!171424))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264580 (= res!129132 (and (= (size!6358 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6358 a!3436))))))

(declare-fun b!264581 () Bool)

(declare-fun res!129131 () Bool)

(assert (=> b!264581 (=> (not res!129131) (not e!171424))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264581 (= res!129131 (validKeyInArray!0 k!2698))))

(declare-fun b!264582 () Bool)

(assert (=> b!264582 (= e!171424 (and (bvslt #b00000000000000000000000000000000 (size!6358 a!3436)) (bvsge (size!6358 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25398 res!129130) b!264580))

(assert (= (and b!264580 res!129132) b!264581))

(assert (= (and b!264581 res!129131) b!264582))

(declare-fun m!281633 () Bool)

(assert (=> start!25398 m!281633))

(declare-fun m!281635 () Bool)

(assert (=> start!25398 m!281635))

(declare-fun m!281637 () Bool)

(assert (=> b!264581 m!281637))

(push 1)

(assert (not b!264581))

(assert (not start!25398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

