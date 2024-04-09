; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117050 () Bool)

(assert start!117050)

(declare-fun res!920555 () Bool)

(declare-fun e!780538 () Bool)

(assert (=> start!117050 (=> (not res!920555) (not e!780538))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93610 0))(
  ( (array!93611 (arr!45202 (Array (_ BitVec 32) (_ BitVec 64))) (size!45753 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93610)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117050 (= res!920555 (and (bvslt (size!45753 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45753 a!4197))))))

(assert (=> start!117050 e!780538))

(declare-fun array_inv!34147 (array!93610) Bool)

(assert (=> start!117050 (array_inv!34147 a!4197)))

(assert (=> start!117050 true))

(declare-fun b!1377816 () Bool)

(declare-fun res!920556 () Bool)

(assert (=> b!1377816 (=> (not res!920556) (not e!780538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377816 (= res!920556 (validKeyInArray!0 (select (arr!45202 a!4197) to!360)))))

(declare-fun b!1377817 () Bool)

(assert (=> b!1377817 (= e!780538 (or (bvslt (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsgt to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(assert (= (and start!117050 res!920555) b!1377816))

(assert (= (and b!1377816 res!920556) b!1377817))

(declare-fun m!1262331 () Bool)

(assert (=> start!117050 m!1262331))

(declare-fun m!1262333 () Bool)

(assert (=> b!1377816 m!1262333))

(assert (=> b!1377816 m!1262333))

(declare-fun m!1262335 () Bool)

(assert (=> b!1377816 m!1262335))

(push 1)

(assert (not start!117050))

(assert (not b!1377816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

