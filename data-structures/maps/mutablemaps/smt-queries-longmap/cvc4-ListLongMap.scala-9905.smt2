; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117222 () Bool)

(assert start!117222)

(declare-fun res!921571 () Bool)

(declare-fun e!781164 () Bool)

(assert (=> start!117222 (=> (not res!921571) (not e!781164))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93755 0))(
  ( (array!93756 (arr!45273 (Array (_ BitVec 32) (_ BitVec 64))) (size!45824 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93755)

(assert (=> start!117222 (= res!921571 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45824 a!4094))))))

(assert (=> start!117222 e!781164))

(assert (=> start!117222 true))

(declare-fun array_inv!34218 (array!93755) Bool)

(assert (=> start!117222 (array_inv!34218 a!4094)))

(declare-fun b!1378928 () Bool)

(declare-fun res!921576 () Bool)

(assert (=> b!1378928 (=> (not res!921576) (not e!781164))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378928 (= res!921576 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378929 () Bool)

(declare-fun res!921575 () Bool)

(declare-fun e!781165 () Bool)

(assert (=> b!1378929 (=> (not res!921575) (not e!781165))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378929 (= res!921575 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378930 () Bool)

(declare-fun res!921574 () Bool)

(assert (=> b!1378930 (=> (not res!921574) (not e!781164))))

(assert (=> b!1378930 (= res!921574 (and (bvslt (size!45824 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45824 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378931 () Bool)

(assert (=> b!1378931 (= e!781165 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(declare-fun lt!606987 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93755 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378931 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606987) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45771 0))(
  ( (Unit!45772) )
))
(declare-fun lt!606988 () Unit!45771)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45771)

(assert (=> b!1378931 (= lt!606988 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378932 () Bool)

(assert (=> b!1378932 (= e!781164 e!781165)))

(declare-fun res!921573 () Bool)

(assert (=> b!1378932 (=> (not res!921573) (not e!781165))))

(assert (=> b!1378932 (= res!921573 (= (arrayCountValidKeys!0 (array!93756 (store (arr!45273 a!4094) i!1451 k!2953) (size!45824 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606987 #b00000000000000000000000000000001)))))

(assert (=> b!1378932 (= lt!606987 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378933 () Bool)

(declare-fun res!921572 () Bool)

(assert (=> b!1378933 (=> (not res!921572) (not e!781164))))

(assert (=> b!1378933 (= res!921572 (validKeyInArray!0 (select (arr!45273 a!4094) i!1451)))))

(assert (= (and start!117222 res!921571) b!1378933))

(assert (= (and b!1378933 res!921572) b!1378928))

(assert (= (and b!1378928 res!921576) b!1378930))

(assert (= (and b!1378930 res!921574) b!1378932))

(assert (= (and b!1378932 res!921573) b!1378929))

(assert (= (and b!1378929 res!921575) b!1378931))

(declare-fun m!1263823 () Bool)

(assert (=> b!1378928 m!1263823))

(declare-fun m!1263825 () Bool)

(assert (=> b!1378931 m!1263825))

(declare-fun m!1263827 () Bool)

(assert (=> b!1378931 m!1263827))

(declare-fun m!1263829 () Bool)

(assert (=> b!1378931 m!1263829))

(declare-fun m!1263831 () Bool)

(assert (=> b!1378932 m!1263831))

(declare-fun m!1263833 () Bool)

(assert (=> b!1378932 m!1263833))

(declare-fun m!1263835 () Bool)

(assert (=> b!1378932 m!1263835))

(declare-fun m!1263837 () Bool)

(assert (=> start!117222 m!1263837))

(declare-fun m!1263839 () Bool)

(assert (=> b!1378933 m!1263839))

(assert (=> b!1378933 m!1263839))

(declare-fun m!1263841 () Bool)

(assert (=> b!1378933 m!1263841))

(push 1)

(assert (not start!117222))

(assert (not b!1378931))

(assert (not b!1378932))

(assert (not b!1378933))

(assert (not b!1378928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

