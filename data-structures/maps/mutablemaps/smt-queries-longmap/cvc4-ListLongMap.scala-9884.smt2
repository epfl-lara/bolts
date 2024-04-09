; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117096 () Bool)

(assert start!117096)

(declare-fun res!920621 () Bool)

(declare-fun e!780635 () Bool)

(assert (=> start!117096 (=> (not res!920621) (not e!780635))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93629 0))(
  ( (array!93630 (arr!45210 (Array (_ BitVec 32) (_ BitVec 64))) (size!45761 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93629)

(assert (=> start!117096 (= res!920621 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45761 a!4094))))))

(assert (=> start!117096 e!780635))

(assert (=> start!117096 true))

(declare-fun array_inv!34155 (array!93629) Bool)

(assert (=> start!117096 (array_inv!34155 a!4094)))

(declare-fun b!1377977 () Bool)

(declare-fun res!920622 () Bool)

(assert (=> b!1377977 (=> (not res!920622) (not e!780635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377977 (= res!920622 (validKeyInArray!0 (select (arr!45210 a!4094) i!1451)))))

(declare-fun b!1377978 () Bool)

(declare-fun res!920620 () Bool)

(assert (=> b!1377978 (=> (not res!920620) (not e!780635))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1377978 (= res!920620 (not (validKeyInArray!0 k!2953)))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun b!1377979 () Bool)

(assert (=> b!1377979 (= e!780635 (and (bvslt (size!45761 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45761 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117096 res!920621) b!1377977))

(assert (= (and b!1377977 res!920622) b!1377978))

(assert (= (and b!1377978 res!920620) b!1377979))

(declare-fun m!1262485 () Bool)

(assert (=> start!117096 m!1262485))

(declare-fun m!1262487 () Bool)

(assert (=> b!1377977 m!1262487))

(assert (=> b!1377977 m!1262487))

(declare-fun m!1262489 () Bool)

(assert (=> b!1377977 m!1262489))

(declare-fun m!1262491 () Bool)

(assert (=> b!1377978 m!1262491))

(push 1)

(assert (not start!117096))

(assert (not b!1377978))

(assert (not b!1377977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

