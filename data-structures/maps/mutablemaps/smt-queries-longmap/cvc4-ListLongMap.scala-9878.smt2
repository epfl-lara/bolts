; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117030 () Bool)

(assert start!117030)

(declare-fun res!920496 () Bool)

(declare-fun e!780487 () Bool)

(assert (=> start!117030 (=> (not res!920496) (not e!780487))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93590 0))(
  ( (array!93591 (arr!45192 (Array (_ BitVec 32) (_ BitVec 64))) (size!45743 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93590)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117030 (= res!920496 (and (bvslt (size!45743 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45743 a!4197))))))

(assert (=> start!117030 e!780487))

(declare-fun array_inv!34137 (array!93590) Bool)

(assert (=> start!117030 (array_inv!34137 a!4197)))

(assert (=> start!117030 true))

(declare-fun b!1377755 () Bool)

(declare-fun res!920495 () Bool)

(assert (=> b!1377755 (=> (not res!920495) (not e!780487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377755 (= res!920495 (validKeyInArray!0 (select (arr!45192 a!4197) to!360)))))

(declare-fun b!1377756 () Bool)

(declare-fun res!920494 () Bool)

(assert (=> b!1377756 (=> (not res!920494) (not e!780487))))

(assert (=> b!1377756 (= res!920494 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377757 () Bool)

(assert (=> b!1377757 (= e!780487 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93590 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377757 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45675 0))(
  ( (Unit!45676) )
))
(declare-fun lt!606145 () Unit!45675)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45675)

(assert (=> b!1377757 (= lt!606145 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117030 res!920496) b!1377755))

(assert (= (and b!1377755 res!920495) b!1377756))

(assert (= (and b!1377756 res!920494) b!1377757))

(declare-fun m!1262227 () Bool)

(assert (=> start!117030 m!1262227))

(declare-fun m!1262229 () Bool)

(assert (=> b!1377755 m!1262229))

(assert (=> b!1377755 m!1262229))

(declare-fun m!1262231 () Bool)

(assert (=> b!1377755 m!1262231))

(declare-fun m!1262233 () Bool)

(assert (=> b!1377757 m!1262233))

(declare-fun m!1262235 () Bool)

(assert (=> b!1377757 m!1262235))

(declare-fun m!1262237 () Bool)

(assert (=> b!1377757 m!1262237))

(declare-fun m!1262239 () Bool)

(assert (=> b!1377757 m!1262239))

(push 1)

(assert (not b!1377757))

(assert (not start!117030))

(assert (not b!1377755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

