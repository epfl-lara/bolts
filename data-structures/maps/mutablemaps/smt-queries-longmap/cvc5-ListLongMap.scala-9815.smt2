; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116576 () Bool)

(assert start!116576)

(declare-fun res!917691 () Bool)

(declare-fun e!778630 () Bool)

(assert (=> start!116576 (=> (not res!917691) (not e!778630))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93199 0))(
  ( (array!93200 (arr!45001 (Array (_ BitVec 32) (_ BitVec 64))) (size!45552 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93199)

(assert (=> start!116576 (= res!917691 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45552 a!4142))))))

(assert (=> start!116576 e!778630))

(assert (=> start!116576 true))

(declare-fun array_inv!33946 (array!93199) Bool)

(assert (=> start!116576 (array_inv!33946 a!4142)))

(declare-fun b!1374385 () Bool)

(declare-fun e!778629 () Bool)

(assert (=> b!1374385 (= e!778630 (not e!778629))))

(declare-fun res!917692 () Bool)

(assert (=> b!1374385 (=> res!917692 e!778629)))

(assert (=> b!1374385 (= res!917692 (or (bvslt (size!45552 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603570 () (_ BitVec 32))

(declare-fun lt!603577 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93199 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374385 (= (bvadd lt!603570 lt!603577) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45552 a!4142)))))

(declare-datatypes ((Unit!45401 0))(
  ( (Unit!45402) )
))
(declare-fun lt!603578 () Unit!45401)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45401)

(assert (=> b!1374385 (= lt!603578 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45552 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603576 () (_ BitVec 32))

(assert (=> b!1374385 (= lt!603576 lt!603577)))

(assert (=> b!1374385 (= lt!603577 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45552 a!4142)))))

(declare-fun lt!603574 () array!93199)

(assert (=> b!1374385 (= lt!603576 (arrayCountValidKeys!0 lt!603574 (bvadd #b00000000000000000000000000000001 i!1457) (size!45552 a!4142)))))

(declare-fun lt!603571 () Unit!45401)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93199 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45401)

(assert (=> b!1374385 (= lt!603571 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603572 () (_ BitVec 32))

(assert (=> b!1374385 (= lt!603572 (bvsub lt!603570 #b00000000000000000000000000000001))))

(assert (=> b!1374385 (= lt!603572 (arrayCountValidKeys!0 lt!603574 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374385 (= lt!603570 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374385 (= lt!603574 (array!93200 (store (arr!45001 a!4142) i!1457 k!2959) (size!45552 a!4142)))))

(declare-fun lt!603575 () Unit!45401)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93199 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45401)

(assert (=> b!1374385 (= lt!603575 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374386 () Bool)

(declare-fun res!917694 () Bool)

(assert (=> b!1374386 (=> (not res!917694) (not e!778630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374386 (= res!917694 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374387 () Bool)

(declare-fun res!917693 () Bool)

(assert (=> b!1374387 (=> (not res!917693) (not e!778630))))

(assert (=> b!1374387 (= res!917693 (bvslt (size!45552 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374388 () Bool)

(assert (=> b!1374388 (= e!778629 true)))

(assert (=> b!1374388 (= (bvadd lt!603572 lt!603576) (arrayCountValidKeys!0 lt!603574 #b00000000000000000000000000000000 (size!45552 a!4142)))))

(declare-fun lt!603573 () Unit!45401)

(assert (=> b!1374388 (= lt!603573 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603574 #b00000000000000000000000000000000 (size!45552 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374389 () Bool)

(declare-fun res!917690 () Bool)

(assert (=> b!1374389 (=> (not res!917690) (not e!778630))))

(assert (=> b!1374389 (= res!917690 (validKeyInArray!0 (select (arr!45001 a!4142) i!1457)))))

(assert (= (and start!116576 res!917691) b!1374389))

(assert (= (and b!1374389 res!917690) b!1374386))

(assert (= (and b!1374386 res!917694) b!1374387))

(assert (= (and b!1374387 res!917693) b!1374385))

(assert (= (and b!1374385 (not res!917692)) b!1374388))

(declare-fun m!1257847 () Bool)

(assert (=> start!116576 m!1257847))

(declare-fun m!1257849 () Bool)

(assert (=> b!1374385 m!1257849))

(declare-fun m!1257851 () Bool)

(assert (=> b!1374385 m!1257851))

(declare-fun m!1257853 () Bool)

(assert (=> b!1374385 m!1257853))

(declare-fun m!1257855 () Bool)

(assert (=> b!1374385 m!1257855))

(declare-fun m!1257857 () Bool)

(assert (=> b!1374385 m!1257857))

(declare-fun m!1257859 () Bool)

(assert (=> b!1374385 m!1257859))

(declare-fun m!1257861 () Bool)

(assert (=> b!1374385 m!1257861))

(declare-fun m!1257863 () Bool)

(assert (=> b!1374385 m!1257863))

(declare-fun m!1257865 () Bool)

(assert (=> b!1374385 m!1257865))

(declare-fun m!1257867 () Bool)

(assert (=> b!1374389 m!1257867))

(assert (=> b!1374389 m!1257867))

(declare-fun m!1257869 () Bool)

(assert (=> b!1374389 m!1257869))

(declare-fun m!1257871 () Bool)

(assert (=> b!1374386 m!1257871))

(declare-fun m!1257873 () Bool)

(assert (=> b!1374388 m!1257873))

(declare-fun m!1257875 () Bool)

(assert (=> b!1374388 m!1257875))

(push 1)

(assert (not start!116576))

(assert (not b!1374389))

(assert (not b!1374388))

(assert (not b!1374385))

(assert (not b!1374386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

