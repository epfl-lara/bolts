; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25394 () Bool)

(assert start!25394)

(declare-fun res!129113 () Bool)

(declare-fun e!171411 () Bool)

(assert (=> start!25394 (=> (not res!129113) (not e!171411))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25394 (= res!129113 (validMask!0 mask!4002))))

(assert (=> start!25394 e!171411))

(assert (=> start!25394 true))

(declare-datatypes ((array!12690 0))(
  ( (array!12691 (arr!6004 (Array (_ BitVec 32) (_ BitVec 64))) (size!6356 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12690)

(declare-fun array_inv!3958 (array!12690) Bool)

(assert (=> start!25394 (array_inv!3958 a!3436)))

(declare-fun b!264562 () Bool)

(declare-fun res!129112 () Bool)

(assert (=> b!264562 (=> (not res!129112) (not e!171411))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264562 (= res!129112 (and (= (size!6356 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6356 a!3436))))))

(declare-fun b!264563 () Bool)

(declare-fun res!129114 () Bool)

(assert (=> b!264563 (=> (not res!129114) (not e!171411))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264563 (= res!129114 (validKeyInArray!0 k!2698))))

(declare-fun b!264564 () Bool)

(assert (=> b!264564 (= e!171411 (and (bvslt #b00000000000000000000000000000000 (size!6356 a!3436)) (bvsge (size!6356 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25394 res!129113) b!264562))

(assert (= (and b!264562 res!129112) b!264563))

(assert (= (and b!264563 res!129114) b!264564))

(declare-fun m!281621 () Bool)

(assert (=> start!25394 m!281621))

(declare-fun m!281623 () Bool)

(assert (=> start!25394 m!281623))

(declare-fun m!281625 () Bool)

(assert (=> b!264563 m!281625))

(push 1)

(assert (not b!264563))

(assert (not start!25394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

