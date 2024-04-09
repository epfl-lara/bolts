; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117026 () Bool)

(assert start!117026)

(declare-fun res!920478 () Bool)

(declare-fun e!780476 () Bool)

(assert (=> start!117026 (=> (not res!920478) (not e!780476))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93586 0))(
  ( (array!93587 (arr!45190 (Array (_ BitVec 32) (_ BitVec 64))) (size!45741 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93586)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117026 (= res!920478 (and (bvslt (size!45741 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45741 a!4197))))))

(assert (=> start!117026 e!780476))

(declare-fun array_inv!34135 (array!93586) Bool)

(assert (=> start!117026 (array_inv!34135 a!4197)))

(assert (=> start!117026 true))

(declare-fun b!1377737 () Bool)

(declare-fun res!920477 () Bool)

(assert (=> b!1377737 (=> (not res!920477) (not e!780476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377737 (= res!920477 (validKeyInArray!0 (select (arr!45190 a!4197) to!360)))))

(declare-fun b!1377738 () Bool)

(declare-fun res!920476 () Bool)

(assert (=> b!1377738 (=> (not res!920476) (not e!780476))))

(assert (=> b!1377738 (= res!920476 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377739 () Bool)

(assert (=> b!1377739 (= e!780476 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93586 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377739 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45671 0))(
  ( (Unit!45672) )
))
(declare-fun lt!606139 () Unit!45671)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45671)

(assert (=> b!1377739 (= lt!606139 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117026 res!920478) b!1377737))

(assert (= (and b!1377737 res!920477) b!1377738))

(assert (= (and b!1377738 res!920476) b!1377739))

(declare-fun m!1262199 () Bool)

(assert (=> start!117026 m!1262199))

(declare-fun m!1262201 () Bool)

(assert (=> b!1377737 m!1262201))

(assert (=> b!1377737 m!1262201))

(declare-fun m!1262203 () Bool)

(assert (=> b!1377737 m!1262203))

(declare-fun m!1262205 () Bool)

(assert (=> b!1377739 m!1262205))

(declare-fun m!1262207 () Bool)

(assert (=> b!1377739 m!1262207))

(declare-fun m!1262209 () Bool)

(assert (=> b!1377739 m!1262209))

(declare-fun m!1262211 () Bool)

(assert (=> b!1377739 m!1262211))

(push 1)

(assert (not b!1377739))

(assert (not start!117026))

(assert (not b!1377737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

