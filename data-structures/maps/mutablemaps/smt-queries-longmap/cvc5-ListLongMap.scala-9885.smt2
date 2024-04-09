; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117098 () Bool)

(assert start!117098)

(declare-fun res!920629 () Bool)

(declare-fun e!780641 () Bool)

(assert (=> start!117098 (=> (not res!920629) (not e!780641))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93631 0))(
  ( (array!93632 (arr!45211 (Array (_ BitVec 32) (_ BitVec 64))) (size!45762 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93631)

(assert (=> start!117098 (= res!920629 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45762 a!4094))))))

(assert (=> start!117098 e!780641))

(assert (=> start!117098 true))

(declare-fun array_inv!34156 (array!93631) Bool)

(assert (=> start!117098 (array_inv!34156 a!4094)))

(declare-fun b!1377986 () Bool)

(declare-fun res!920630 () Bool)

(assert (=> b!1377986 (=> (not res!920630) (not e!780641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377986 (= res!920630 (validKeyInArray!0 (select (arr!45211 a!4094) i!1451)))))

(declare-fun b!1377987 () Bool)

(declare-fun res!920631 () Bool)

(assert (=> b!1377987 (=> (not res!920631) (not e!780641))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1377987 (= res!920631 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1377988 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1377988 (= e!780641 (and (bvslt (size!45762 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45762 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117098 res!920629) b!1377986))

(assert (= (and b!1377986 res!920630) b!1377987))

(assert (= (and b!1377987 res!920631) b!1377988))

(declare-fun m!1262493 () Bool)

(assert (=> start!117098 m!1262493))

(declare-fun m!1262495 () Bool)

(assert (=> b!1377986 m!1262495))

(assert (=> b!1377986 m!1262495))

(declare-fun m!1262497 () Bool)

(assert (=> b!1377986 m!1262497))

(declare-fun m!1262499 () Bool)

(assert (=> b!1377987 m!1262499))

(push 1)

(assert (not b!1377986))

(assert (not b!1377987))

(assert (not start!117098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

