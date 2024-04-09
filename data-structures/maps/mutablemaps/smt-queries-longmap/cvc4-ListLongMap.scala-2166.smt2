; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36342 () Bool)

(assert start!36342)

(declare-fun res!202693 () Bool)

(declare-fun e!222509 () Bool)

(assert (=> start!36342 (=> (not res!202693) (not e!222509))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20584 0))(
  ( (array!20585 (arr!9768 (Array (_ BitVec 32) (_ BitVec 64))) (size!10120 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20584)

(assert (=> start!36342 (= res!202693 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10120 a!4289))))))

(assert (=> start!36342 e!222509))

(assert (=> start!36342 true))

(declare-fun array_inv!7206 (array!20584) Bool)

(assert (=> start!36342 (array_inv!7206 a!4289)))

(declare-fun b!363380 () Bool)

(declare-fun res!202692 () Bool)

(assert (=> b!363380 (=> (not res!202692) (not e!222509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363380 (= res!202692 (not (validKeyInArray!0 (select (arr!9768 a!4289) i!1472))))))

(declare-fun b!363381 () Bool)

(declare-fun res!202691 () Bool)

(assert (=> b!363381 (=> (not res!202691) (not e!222509))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363381 (= res!202691 (validKeyInArray!0 k!2974))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!363382 () Bool)

(assert (=> b!363382 (= e!222509 (and (bvslt (size!10120 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10120 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36342 res!202693) b!363380))

(assert (= (and b!363380 res!202692) b!363381))

(assert (= (and b!363381 res!202691) b!363382))

(declare-fun m!360545 () Bool)

(assert (=> start!36342 m!360545))

(declare-fun m!360547 () Bool)

(assert (=> b!363380 m!360547))

(assert (=> b!363380 m!360547))

(declare-fun m!360549 () Bool)

(assert (=> b!363380 m!360549))

(declare-fun m!360551 () Bool)

(assert (=> b!363381 m!360551))

(push 1)

(assert (not b!363381))

(assert (not start!36342))

(assert (not b!363380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

