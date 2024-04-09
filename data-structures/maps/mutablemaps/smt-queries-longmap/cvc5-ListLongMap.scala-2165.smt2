; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36332 () Bool)

(assert start!36332)

(declare-fun res!202646 () Bool)

(declare-fun e!222479 () Bool)

(assert (=> start!36332 (=> (not res!202646) (not e!222479))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20574 0))(
  ( (array!20575 (arr!9763 (Array (_ BitVec 32) (_ BitVec 64))) (size!10115 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20574)

(assert (=> start!36332 (= res!202646 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10115 a!4289))))))

(assert (=> start!36332 e!222479))

(assert (=> start!36332 true))

(declare-fun array_inv!7201 (array!20574) Bool)

(assert (=> start!36332 (array_inv!7201 a!4289)))

(declare-fun b!363335 () Bool)

(declare-fun res!202648 () Bool)

(assert (=> b!363335 (=> (not res!202648) (not e!222479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363335 (= res!202648 (not (validKeyInArray!0 (select (arr!9763 a!4289) i!1472))))))

(declare-fun b!363336 () Bool)

(declare-fun res!202647 () Bool)

(assert (=> b!363336 (=> (not res!202647) (not e!222479))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363336 (= res!202647 (validKeyInArray!0 k!2974))))

(declare-fun b!363337 () Bool)

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363337 (= e!222479 (and (bvslt (size!10115 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10115 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36332 res!202646) b!363335))

(assert (= (and b!363335 res!202648) b!363336))

(assert (= (and b!363336 res!202647) b!363337))

(declare-fun m!360505 () Bool)

(assert (=> start!36332 m!360505))

(declare-fun m!360507 () Bool)

(assert (=> b!363335 m!360507))

(assert (=> b!363335 m!360507))

(declare-fun m!360509 () Bool)

(assert (=> b!363335 m!360509))

(declare-fun m!360511 () Bool)

(assert (=> b!363336 m!360511))

(push 1)

(assert (not b!363336))

(assert (not b!363335))

(assert (not start!36332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

