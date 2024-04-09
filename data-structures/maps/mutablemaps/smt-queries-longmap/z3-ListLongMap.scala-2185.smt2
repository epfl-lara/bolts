; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36454 () Bool)

(assert start!36454)

(declare-fun b!364232 () Bool)

(declare-fun res!203546 () Bool)

(declare-fun e!222985 () Bool)

(assert (=> b!364232 (=> (not res!203546) (not e!222985))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364232 (= res!203546 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun res!203543 () Bool)

(declare-fun e!222984 () Bool)

(assert (=> start!36454 (=> (not res!203543) (not e!222984))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20696 0))(
  ( (array!20697 (arr!9824 (Array (_ BitVec 32) (_ BitVec 64))) (size!10176 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20696)

(assert (=> start!36454 (= res!203543 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10176 a!4289))))))

(assert (=> start!36454 e!222984))

(assert (=> start!36454 true))

(declare-fun array_inv!7262 (array!20696) Bool)

(assert (=> start!36454 (array_inv!7262 a!4289)))

(declare-fun b!364233 () Bool)

(assert (=> b!364233 (= e!222985 (not true))))

(declare-fun lt!168455 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20696 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364233 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168455) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11307 0))(
  ( (Unit!11308) )
))
(declare-fun lt!168454 () Unit!11307)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11307)

(assert (=> b!364233 (= lt!168454 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364234 () Bool)

(declare-fun res!203548 () Bool)

(assert (=> b!364234 (=> (not res!203548) (not e!222984))))

(assert (=> b!364234 (= res!203548 (and (bvslt (size!10176 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10176 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364235 () Bool)

(declare-fun res!203544 () Bool)

(assert (=> b!364235 (=> (not res!203544) (not e!222984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364235 (= res!203544 (not (validKeyInArray!0 (select (arr!9824 a!4289) i!1472))))))

(declare-fun b!364236 () Bool)

(declare-fun res!203545 () Bool)

(assert (=> b!364236 (=> (not res!203545) (not e!222984))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364236 (= res!203545 (validKeyInArray!0 k0!2974))))

(declare-fun b!364237 () Bool)

(assert (=> b!364237 (= e!222984 e!222985)))

(declare-fun res!203547 () Bool)

(assert (=> b!364237 (=> (not res!203547) (not e!222985))))

(assert (=> b!364237 (= res!203547 (= (arrayCountValidKeys!0 (array!20697 (store (arr!9824 a!4289) i!1472 k0!2974) (size!10176 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168455)))))

(assert (=> b!364237 (= lt!168455 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36454 res!203543) b!364235))

(assert (= (and b!364235 res!203544) b!364236))

(assert (= (and b!364236 res!203545) b!364234))

(assert (= (and b!364234 res!203548) b!364237))

(assert (= (and b!364237 res!203547) b!364232))

(assert (= (and b!364232 res!203546) b!364233))

(declare-fun m!361779 () Bool)

(assert (=> b!364237 m!361779))

(declare-fun m!361781 () Bool)

(assert (=> b!364237 m!361781))

(declare-fun m!361783 () Bool)

(assert (=> b!364237 m!361783))

(declare-fun m!361785 () Bool)

(assert (=> start!36454 m!361785))

(declare-fun m!361787 () Bool)

(assert (=> b!364235 m!361787))

(assert (=> b!364235 m!361787))

(declare-fun m!361789 () Bool)

(assert (=> b!364235 m!361789))

(declare-fun m!361791 () Bool)

(assert (=> b!364236 m!361791))

(declare-fun m!361793 () Bool)

(assert (=> b!364233 m!361793))

(declare-fun m!361795 () Bool)

(assert (=> b!364233 m!361795))

(declare-fun m!361797 () Bool)

(assert (=> b!364233 m!361797))

(check-sat (not b!364235) (not b!364236) (not b!364237) (not b!364233) (not start!36454))
