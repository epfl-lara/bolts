; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36338 () Bool)

(assert start!36338)

(declare-fun res!202675 () Bool)

(declare-fun e!222497 () Bool)

(assert (=> start!36338 (=> (not res!202675) (not e!222497))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20580 0))(
  ( (array!20581 (arr!9766 (Array (_ BitVec 32) (_ BitVec 64))) (size!10118 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20580)

(assert (=> start!36338 (= res!202675 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10118 a!4289))))))

(assert (=> start!36338 e!222497))

(assert (=> start!36338 true))

(declare-fun array_inv!7204 (array!20580) Bool)

(assert (=> start!36338 (array_inv!7204 a!4289)))

(declare-fun b!363362 () Bool)

(declare-fun res!202674 () Bool)

(assert (=> b!363362 (=> (not res!202674) (not e!222497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363362 (= res!202674 (not (validKeyInArray!0 (select (arr!9766 a!4289) i!1472))))))

(declare-fun b!363363 () Bool)

(declare-fun res!202673 () Bool)

(assert (=> b!363363 (=> (not res!202673) (not e!222497))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363363 (= res!202673 (validKeyInArray!0 k!2974))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!363364 () Bool)

(assert (=> b!363364 (= e!222497 (and (bvslt (size!10118 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10118 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36338 res!202675) b!363362))

(assert (= (and b!363362 res!202674) b!363363))

(assert (= (and b!363363 res!202673) b!363364))

(declare-fun m!360529 () Bool)

(assert (=> start!36338 m!360529))

(declare-fun m!360531 () Bool)

(assert (=> b!363362 m!360531))

(assert (=> b!363362 m!360531))

(declare-fun m!360533 () Bool)

(assert (=> b!363362 m!360533))

(declare-fun m!360535 () Bool)

(assert (=> b!363363 m!360535))

(push 1)

(assert (not b!363363))

(assert (not b!363362))

(assert (not start!36338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

