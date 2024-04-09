; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116550 () Bool)

(assert start!116550)

(declare-fun b!1374208 () Bool)

(declare-fun res!917513 () Bool)

(declare-fun e!778529 () Bool)

(assert (=> b!1374208 (=> (not res!917513) (not e!778529))))

(declare-datatypes ((array!93173 0))(
  ( (array!93174 (arr!44988 (Array (_ BitVec 32) (_ BitVec 64))) (size!45539 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93173)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374208 (= res!917513 (validKeyInArray!0 (select (arr!44988 a!4142) i!1457)))))

(declare-fun res!917516 () Bool)

(assert (=> start!116550 (=> (not res!917516) (not e!778529))))

(assert (=> start!116550 (= res!917516 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45539 a!4142))))))

(assert (=> start!116550 e!778529))

(assert (=> start!116550 true))

(declare-fun array_inv!33933 (array!93173) Bool)

(assert (=> start!116550 (array_inv!33933 a!4142)))

(declare-fun b!1374209 () Bool)

(declare-fun e!778530 () Bool)

(assert (=> b!1374209 (= e!778530 true)))

(declare-fun lt!603342 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93173 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374209 (= lt!603342 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603341 () (_ BitVec 32))

(declare-fun lt!603344 () array!93173)

(assert (=> b!1374209 (= lt!603341 (arrayCountValidKeys!0 lt!603344 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374210 () Bool)

(declare-fun res!917515 () Bool)

(assert (=> b!1374210 (=> (not res!917515) (not e!778529))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374210 (= res!917515 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374211 () Bool)

(declare-fun res!917514 () Bool)

(assert (=> b!1374211 (=> (not res!917514) (not e!778529))))

(assert (=> b!1374211 (= res!917514 (bvslt (size!45539 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374212 () Bool)

(assert (=> b!1374212 (= e!778529 (not e!778530))))

(declare-fun res!917517 () Bool)

(assert (=> b!1374212 (=> res!917517 e!778530)))

(assert (=> b!1374212 (= res!917517 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374212 (= (arrayCountValidKeys!0 lt!603344 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374212 (= lt!603344 (array!93174 (store (arr!44988 a!4142) i!1457 k!2959) (size!45539 a!4142)))))

(declare-datatypes ((Unit!45375 0))(
  ( (Unit!45376) )
))
(declare-fun lt!603343 () Unit!45375)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45375)

(assert (=> b!1374212 (= lt!603343 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116550 res!917516) b!1374208))

(assert (= (and b!1374208 res!917513) b!1374210))

(assert (= (and b!1374210 res!917515) b!1374211))

(assert (= (and b!1374211 res!917514) b!1374212))

(assert (= (and b!1374212 (not res!917517)) b!1374209))

(declare-fun m!1257533 () Bool)

(assert (=> b!1374208 m!1257533))

(assert (=> b!1374208 m!1257533))

(declare-fun m!1257535 () Bool)

(assert (=> b!1374208 m!1257535))

(declare-fun m!1257537 () Bool)

(assert (=> start!116550 m!1257537))

(declare-fun m!1257539 () Bool)

(assert (=> b!1374209 m!1257539))

(declare-fun m!1257541 () Bool)

(assert (=> b!1374209 m!1257541))

(declare-fun m!1257543 () Bool)

(assert (=> b!1374212 m!1257543))

(declare-fun m!1257545 () Bool)

(assert (=> b!1374212 m!1257545))

(declare-fun m!1257547 () Bool)

(assert (=> b!1374212 m!1257547))

(declare-fun m!1257549 () Bool)

(assert (=> b!1374212 m!1257549))

(declare-fun m!1257551 () Bool)

(assert (=> b!1374210 m!1257551))

(push 1)

(assert (not b!1374209))

(assert (not b!1374210))

(assert (not b!1374208))

(assert (not b!1374212))

(assert (not start!116550))

(check-sat)

(pop 1)

