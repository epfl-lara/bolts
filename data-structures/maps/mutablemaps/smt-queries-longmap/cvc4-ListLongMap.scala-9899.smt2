; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117186 () Bool)

(assert start!117186)

(declare-fun b!1378662 () Bool)

(declare-fun res!921303 () Bool)

(declare-fun e!781040 () Bool)

(assert (=> b!1378662 (=> (not res!921303) (not e!781040))))

(declare-datatypes ((array!93719 0))(
  ( (array!93720 (arr!45255 (Array (_ BitVec 32) (_ BitVec 64))) (size!45806 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93719)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378662 (= res!921303 (and (bvslt (size!45806 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45806 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921304 () Bool)

(assert (=> start!117186 (=> (not res!921304) (not e!781040))))

(assert (=> start!117186 (= res!921304 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45806 a!4094))))))

(assert (=> start!117186 e!781040))

(assert (=> start!117186 true))

(declare-fun array_inv!34200 (array!93719) Bool)

(assert (=> start!117186 (array_inv!34200 a!4094)))

(declare-fun b!1378663 () Bool)

(assert (=> b!1378663 (= e!781040 false)))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lt!606916 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93719 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378663 (= lt!606916 (arrayCountValidKeys!0 (array!93720 (store (arr!45255 a!4094) i!1451 k!2953) (size!45806 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606915 () (_ BitVec 32))

(assert (=> b!1378663 (= lt!606915 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378660 () Bool)

(declare-fun res!921305 () Bool)

(assert (=> b!1378660 (=> (not res!921305) (not e!781040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378660 (= res!921305 (validKeyInArray!0 (select (arr!45255 a!4094) i!1451)))))

(declare-fun b!1378661 () Bool)

(declare-fun res!921306 () Bool)

(assert (=> b!1378661 (=> (not res!921306) (not e!781040))))

(assert (=> b!1378661 (= res!921306 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117186 res!921304) b!1378660))

(assert (= (and b!1378660 res!921305) b!1378661))

(assert (= (and b!1378661 res!921306) b!1378662))

(assert (= (and b!1378662 res!921303) b!1378663))

(declare-fun m!1263541 () Bool)

(assert (=> start!117186 m!1263541))

(declare-fun m!1263543 () Bool)

(assert (=> b!1378663 m!1263543))

(declare-fun m!1263545 () Bool)

(assert (=> b!1378663 m!1263545))

(declare-fun m!1263547 () Bool)

(assert (=> b!1378663 m!1263547))

(declare-fun m!1263549 () Bool)

(assert (=> b!1378660 m!1263549))

(assert (=> b!1378660 m!1263549))

(declare-fun m!1263551 () Bool)

(assert (=> b!1378660 m!1263551))

(declare-fun m!1263553 () Bool)

(assert (=> b!1378661 m!1263553))

(push 1)

(assert (not b!1378660))

(assert (not start!117186))

(assert (not b!1378663))

(assert (not b!1378661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

