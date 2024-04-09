; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116950 () Bool)

(assert start!116950)

(declare-fun res!920305 () Bool)

(declare-fun e!780298 () Bool)

(assert (=> start!116950 (=> (not res!920305) (not e!780298))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93537 0))(
  ( (array!93538 (arr!45167 (Array (_ BitVec 32) (_ BitVec 64))) (size!45718 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93537)

(assert (=> start!116950 (= res!920305 (and (bvslt (size!45718 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45718 a!4212))))))

(assert (=> start!116950 e!780298))

(declare-fun array_inv!34112 (array!93537) Bool)

(assert (=> start!116950 (array_inv!34112 a!4212)))

(assert (=> start!116950 true))

(declare-fun b!1377470 () Bool)

(declare-fun res!920306 () Bool)

(assert (=> b!1377470 (=> (not res!920306) (not e!780298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377470 (= res!920306 (not (validKeyInArray!0 (select (arr!45167 a!4212) to!375))))))

(declare-fun b!1377471 () Bool)

(declare-fun res!920307 () Bool)

(assert (=> b!1377471 (=> (not res!920307) (not e!780298))))

(assert (=> b!1377471 (= res!920307 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377472 () Bool)

(assert (=> b!1377472 (= e!780298 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93537 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377472 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45637 0))(
  ( (Unit!45638) )
))
(declare-fun lt!606028 () Unit!45637)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45637)

(assert (=> b!1377472 (= lt!606028 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116950 res!920305) b!1377470))

(assert (= (and b!1377470 res!920306) b!1377471))

(assert (= (and b!1377471 res!920307) b!1377472))

(declare-fun m!1261859 () Bool)

(assert (=> start!116950 m!1261859))

(declare-fun m!1261861 () Bool)

(assert (=> b!1377470 m!1261861))

(assert (=> b!1377470 m!1261861))

(declare-fun m!1261863 () Bool)

(assert (=> b!1377470 m!1261863))

(declare-fun m!1261865 () Bool)

(assert (=> b!1377472 m!1261865))

(declare-fun m!1261867 () Bool)

(assert (=> b!1377472 m!1261867))

(declare-fun m!1261869 () Bool)

(assert (=> b!1377472 m!1261869))

(declare-fun m!1261871 () Bool)

(assert (=> b!1377472 m!1261871))

(check-sat (not b!1377470) (not start!116950) (not b!1377472))
