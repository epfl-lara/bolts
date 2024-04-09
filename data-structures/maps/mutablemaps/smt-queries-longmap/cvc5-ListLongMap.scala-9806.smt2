; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116522 () Bool)

(assert start!116522)

(declare-fun b!1373998 () Bool)

(declare-fun e!778404 () Bool)

(declare-fun e!778403 () Bool)

(assert (=> b!1373998 (= e!778404 (not e!778403))))

(declare-fun res!917307 () Bool)

(assert (=> b!1373998 (=> res!917307 e!778403)))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373998 (= res!917307 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-datatypes ((array!93145 0))(
  ( (array!93146 (arr!44974 (Array (_ BitVec 32) (_ BitVec 64))) (size!45525 (_ BitVec 32))) )
))
(declare-fun lt!603173 () array!93145)

(declare-fun a!4142 () array!93145)

(declare-fun arrayCountValidKeys!0 (array!93145 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373998 (= (arrayCountValidKeys!0 lt!603173 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1373998 (= lt!603173 (array!93146 (store (arr!44974 a!4142) i!1457 k!2959) (size!45525 a!4142)))))

(declare-datatypes ((Unit!45347 0))(
  ( (Unit!45348) )
))
(declare-fun lt!603175 () Unit!45347)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93145 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45347)

(assert (=> b!1373998 (= lt!603175 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1373999 () Bool)

(declare-fun res!917303 () Bool)

(assert (=> b!1373999 (=> (not res!917303) (not e!778404))))

(assert (=> b!1373999 (= res!917303 (bvslt (size!45525 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374000 () Bool)

(declare-fun res!917305 () Bool)

(assert (=> b!1374000 (=> (not res!917305) (not e!778404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374000 (= res!917305 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374001 () Bool)

(assert (=> b!1374001 (= e!778403 true)))

(declare-fun lt!603176 () (_ BitVec 32))

(assert (=> b!1374001 (= lt!603176 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603174 () (_ BitVec 32))

(assert (=> b!1374001 (= lt!603174 (arrayCountValidKeys!0 lt!603173 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374002 () Bool)

(declare-fun res!917306 () Bool)

(assert (=> b!1374002 (=> (not res!917306) (not e!778404))))

(assert (=> b!1374002 (= res!917306 (validKeyInArray!0 (select (arr!44974 a!4142) i!1457)))))

(declare-fun res!917304 () Bool)

(assert (=> start!116522 (=> (not res!917304) (not e!778404))))

(assert (=> start!116522 (= res!917304 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45525 a!4142))))))

(assert (=> start!116522 e!778404))

(assert (=> start!116522 true))

(declare-fun array_inv!33919 (array!93145) Bool)

(assert (=> start!116522 (array_inv!33919 a!4142)))

(assert (= (and start!116522 res!917304) b!1374002))

(assert (= (and b!1374002 res!917306) b!1374000))

(assert (= (and b!1374000 res!917305) b!1373999))

(assert (= (and b!1373999 res!917303) b!1373998))

(assert (= (and b!1373998 (not res!917307)) b!1374001))

(declare-fun m!1257253 () Bool)

(assert (=> start!116522 m!1257253))

(declare-fun m!1257255 () Bool)

(assert (=> b!1374000 m!1257255))

(declare-fun m!1257257 () Bool)

(assert (=> b!1374002 m!1257257))

(assert (=> b!1374002 m!1257257))

(declare-fun m!1257259 () Bool)

(assert (=> b!1374002 m!1257259))

(declare-fun m!1257261 () Bool)

(assert (=> b!1374001 m!1257261))

(declare-fun m!1257263 () Bool)

(assert (=> b!1374001 m!1257263))

(declare-fun m!1257265 () Bool)

(assert (=> b!1373998 m!1257265))

(declare-fun m!1257267 () Bool)

(assert (=> b!1373998 m!1257267))

(declare-fun m!1257269 () Bool)

(assert (=> b!1373998 m!1257269))

(declare-fun m!1257271 () Bool)

(assert (=> b!1373998 m!1257271))

(push 1)

(assert (not b!1374002))

(assert (not start!116522))

(assert (not b!1374000))

(assert (not b!1374001))

(assert (not b!1373998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

