; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116958 () Bool)

(assert start!116958)

(declare-fun res!920341 () Bool)

(declare-fun e!780322 () Bool)

(assert (=> start!116958 (=> (not res!920341) (not e!780322))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93545 0))(
  ( (array!93546 (arr!45171 (Array (_ BitVec 32) (_ BitVec 64))) (size!45722 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93545)

(assert (=> start!116958 (= res!920341 (and (bvslt (size!45722 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45722 a!4212))))))

(assert (=> start!116958 e!780322))

(declare-fun array_inv!34116 (array!93545) Bool)

(assert (=> start!116958 (array_inv!34116 a!4212)))

(assert (=> start!116958 true))

(declare-fun b!1377506 () Bool)

(declare-fun res!920342 () Bool)

(assert (=> b!1377506 (=> (not res!920342) (not e!780322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377506 (= res!920342 (not (validKeyInArray!0 (select (arr!45171 a!4212) to!375))))))

(declare-fun b!1377507 () Bool)

(declare-fun res!920343 () Bool)

(assert (=> b!1377507 (=> (not res!920343) (not e!780322))))

(assert (=> b!1377507 (= res!920343 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377508 () Bool)

(assert (=> b!1377508 (= e!780322 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93545 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377508 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45645 0))(
  ( (Unit!45646) )
))
(declare-fun lt!606040 () Unit!45645)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45645)

(assert (=> b!1377508 (= lt!606040 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116958 res!920341) b!1377506))

(assert (= (and b!1377506 res!920342) b!1377507))

(assert (= (and b!1377507 res!920343) b!1377508))

(declare-fun m!1261915 () Bool)

(assert (=> start!116958 m!1261915))

(declare-fun m!1261917 () Bool)

(assert (=> b!1377506 m!1261917))

(assert (=> b!1377506 m!1261917))

(declare-fun m!1261919 () Bool)

(assert (=> b!1377506 m!1261919))

(declare-fun m!1261921 () Bool)

(assert (=> b!1377508 m!1261921))

(declare-fun m!1261923 () Bool)

(assert (=> b!1377508 m!1261923))

(declare-fun m!1261925 () Bool)

(assert (=> b!1377508 m!1261925))

(declare-fun m!1261927 () Bool)

(assert (=> b!1377508 m!1261927))

(push 1)

(assert (not b!1377506))

(assert (not start!116958))

(assert (not b!1377508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

