; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36526 () Bool)

(assert start!36526)

(declare-fun b!364701 () Bool)

(declare-fun res!203919 () Bool)

(declare-fun e!223250 () Bool)

(assert (=> b!364701 (=> (not res!203919) (not e!223250))))

(declare-datatypes ((array!20747 0))(
  ( (array!20748 (arr!9848 (Array (_ BitVec 32) (_ BitVec 64))) (size!10200 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20747)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364701 (= res!203919 (not (validKeyInArray!0 (select (arr!9848 a!4289) i!1472))))))

(declare-fun b!364702 () Bool)

(declare-fun res!203918 () Bool)

(assert (=> b!364702 (=> (not res!203918) (not e!223250))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364702 (= res!203918 (validKeyInArray!0 k0!2974))))

(declare-fun b!364703 () Bool)

(declare-fun res!203920 () Bool)

(assert (=> b!364703 (=> (not res!203920) (not e!223250))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364703 (= res!203920 (and (bvslt (size!10200 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10200 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364704 () Bool)

(declare-fun lt!168868 () (_ BitVec 32))

(declare-fun lt!168872 () (_ BitVec 32))

(declare-fun e!223248 () Bool)

(assert (=> b!364704 (= e!223248 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10200 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168868 (bvadd #b00000000000000000000000000000001 lt!168872))) (bvslt (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))))

(declare-fun lt!168874 () (_ BitVec 32))

(declare-fun lt!168871 () (_ BitVec 32))

(assert (=> b!364704 (= (bvadd lt!168874 lt!168871) lt!168868)))

(declare-fun lt!168867 () array!20747)

(declare-fun arrayCountValidKeys!0 (array!20747 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364704 (= lt!168868 (arrayCountValidKeys!0 lt!168867 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364704 (= lt!168874 (arrayCountValidKeys!0 lt!168867 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11355 0))(
  ( (Unit!11356) )
))
(declare-fun lt!168875 () Unit!11355)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11355)

(assert (=> b!364704 (= lt!168875 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168867 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168870 () (_ BitVec 32))

(declare-fun lt!168873 () (_ BitVec 32))

(assert (=> b!364704 (= (bvadd lt!168870 lt!168873) lt!168872)))

(assert (=> b!364704 (= lt!168872 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364704 (= lt!168870 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168869 () Unit!11355)

(assert (=> b!364704 (= lt!168869 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203917 () Bool)

(assert (=> start!36526 (=> (not res!203917) (not e!223250))))

(assert (=> start!36526 (= res!203917 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10200 a!4289))))))

(assert (=> start!36526 e!223250))

(assert (=> start!36526 true))

(declare-fun array_inv!7286 (array!20747) Bool)

(assert (=> start!36526 (array_inv!7286 a!4289)))

(declare-fun b!364705 () Bool)

(assert (=> b!364705 (= e!223250 e!223248)))

(declare-fun res!203916 () Bool)

(assert (=> b!364705 (=> (not res!203916) (not e!223248))))

(assert (=> b!364705 (= res!203916 (and (= lt!168871 (bvadd #b00000000000000000000000000000001 lt!168873)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364705 (= lt!168871 (arrayCountValidKeys!0 lt!168867 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364705 (= lt!168873 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364705 (= lt!168867 (array!20748 (store (arr!9848 a!4289) i!1472 k0!2974) (size!10200 a!4289)))))

(assert (= (and start!36526 res!203917) b!364701))

(assert (= (and b!364701 res!203919) b!364702))

(assert (= (and b!364702 res!203918) b!364703))

(assert (= (and b!364703 res!203920) b!364705))

(assert (= (and b!364705 res!203916) b!364704))

(declare-fun m!362469 () Bool)

(assert (=> start!36526 m!362469))

(declare-fun m!362471 () Bool)

(assert (=> b!364701 m!362471))

(assert (=> b!364701 m!362471))

(declare-fun m!362473 () Bool)

(assert (=> b!364701 m!362473))

(declare-fun m!362475 () Bool)

(assert (=> b!364705 m!362475))

(declare-fun m!362477 () Bool)

(assert (=> b!364705 m!362477))

(declare-fun m!362479 () Bool)

(assert (=> b!364705 m!362479))

(declare-fun m!362481 () Bool)

(assert (=> b!364702 m!362481))

(declare-fun m!362483 () Bool)

(assert (=> b!364704 m!362483))

(declare-fun m!362485 () Bool)

(assert (=> b!364704 m!362485))

(declare-fun m!362487 () Bool)

(assert (=> b!364704 m!362487))

(declare-fun m!362489 () Bool)

(assert (=> b!364704 m!362489))

(declare-fun m!362491 () Bool)

(assert (=> b!364704 m!362491))

(declare-fun m!362493 () Bool)

(assert (=> b!364704 m!362493))

(check-sat (not b!364702) (not b!364704) (not b!364701) (not start!36526) (not b!364705))
(check-sat)
