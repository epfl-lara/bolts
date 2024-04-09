; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117038 () Bool)

(assert start!117038)

(declare-fun res!920530 () Bool)

(declare-fun e!780512 () Bool)

(assert (=> start!117038 (=> (not res!920530) (not e!780512))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93598 0))(
  ( (array!93599 (arr!45196 (Array (_ BitVec 32) (_ BitVec 64))) (size!45747 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93598)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117038 (= res!920530 (and (bvslt (size!45747 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45747 a!4197))))))

(assert (=> start!117038 e!780512))

(declare-fun array_inv!34141 (array!93598) Bool)

(assert (=> start!117038 (array_inv!34141 a!4197)))

(assert (=> start!117038 true))

(declare-fun b!1377791 () Bool)

(declare-fun res!920531 () Bool)

(assert (=> b!1377791 (=> (not res!920531) (not e!780512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377791 (= res!920531 (validKeyInArray!0 (select (arr!45196 a!4197) to!360)))))

(declare-fun b!1377792 () Bool)

(declare-fun res!920532 () Bool)

(assert (=> b!1377792 (=> (not res!920532) (not e!780512))))

(assert (=> b!1377792 (= res!920532 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377793 () Bool)

(assert (=> b!1377793 (= e!780512 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93598 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377793 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45683 0))(
  ( (Unit!45684) )
))
(declare-fun lt!606157 () Unit!45683)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45683)

(assert (=> b!1377793 (= lt!606157 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117038 res!920530) b!1377791))

(assert (= (and b!1377791 res!920531) b!1377792))

(assert (= (and b!1377792 res!920532) b!1377793))

(declare-fun m!1262283 () Bool)

(assert (=> start!117038 m!1262283))

(declare-fun m!1262285 () Bool)

(assert (=> b!1377791 m!1262285))

(assert (=> b!1377791 m!1262285))

(declare-fun m!1262287 () Bool)

(assert (=> b!1377791 m!1262287))

(declare-fun m!1262289 () Bool)

(assert (=> b!1377793 m!1262289))

(declare-fun m!1262291 () Bool)

(assert (=> b!1377793 m!1262291))

(declare-fun m!1262293 () Bool)

(assert (=> b!1377793 m!1262293))

(declare-fun m!1262295 () Bool)

(assert (=> b!1377793 m!1262295))

(push 1)

(assert (not b!1377791))

(assert (not start!117038))

(assert (not b!1377793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

