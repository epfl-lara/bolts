; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36460 () Bool)

(assert start!36460)

(declare-fun b!364286 () Bool)

(declare-fun res!203598 () Bool)

(declare-fun e!223012 () Bool)

(assert (=> b!364286 (=> (not res!203598) (not e!223012))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20702 0))(
  ( (array!20703 (arr!9827 (Array (_ BitVec 32) (_ BitVec 64))) (size!10179 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20702)

(assert (=> b!364286 (= res!203598 (and (bvslt (size!10179 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10179 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364287 () Bool)

(declare-fun res!203600 () Bool)

(assert (=> b!364287 (=> (not res!203600) (not e!223012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364287 (= res!203600 (not (validKeyInArray!0 (select (arr!9827 a!4289) i!1472))))))

(declare-fun b!364288 () Bool)

(declare-fun e!223011 () Bool)

(assert (=> b!364288 (= e!223011 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun lt!168473 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20702 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364288 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168473) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11313 0))(
  ( (Unit!11314) )
))
(declare-fun lt!168472 () Unit!11313)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20702 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11313)

(assert (=> b!364288 (= lt!168472 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364289 () Bool)

(assert (=> b!364289 (= e!223012 e!223011)))

(declare-fun res!203602 () Bool)

(assert (=> b!364289 (=> (not res!203602) (not e!223011))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364289 (= res!203602 (= (arrayCountValidKeys!0 (array!20703 (store (arr!9827 a!4289) i!1472 k0!2974) (size!10179 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168473)))))

(assert (=> b!364289 (= lt!168473 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364290 () Bool)

(declare-fun res!203599 () Bool)

(assert (=> b!364290 (=> (not res!203599) (not e!223012))))

(assert (=> b!364290 (= res!203599 (validKeyInArray!0 k0!2974))))

(declare-fun b!364291 () Bool)

(declare-fun res!203597 () Bool)

(assert (=> b!364291 (=> (not res!203597) (not e!223011))))

(assert (=> b!364291 (= res!203597 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun res!203601 () Bool)

(assert (=> start!36460 (=> (not res!203601) (not e!223012))))

(assert (=> start!36460 (= res!203601 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10179 a!4289))))))

(assert (=> start!36460 e!223012))

(assert (=> start!36460 true))

(declare-fun array_inv!7265 (array!20702) Bool)

(assert (=> start!36460 (array_inv!7265 a!4289)))

(assert (= (and start!36460 res!203601) b!364287))

(assert (= (and b!364287 res!203600) b!364290))

(assert (= (and b!364290 res!203599) b!364286))

(assert (= (and b!364286 res!203598) b!364289))

(assert (= (and b!364289 res!203602) b!364291))

(assert (= (and b!364291 res!203597) b!364288))

(declare-fun m!361839 () Bool)

(assert (=> b!364290 m!361839))

(declare-fun m!361841 () Bool)

(assert (=> b!364287 m!361841))

(assert (=> b!364287 m!361841))

(declare-fun m!361843 () Bool)

(assert (=> b!364287 m!361843))

(declare-fun m!361845 () Bool)

(assert (=> start!36460 m!361845))

(declare-fun m!361847 () Bool)

(assert (=> b!364288 m!361847))

(declare-fun m!361849 () Bool)

(assert (=> b!364288 m!361849))

(declare-fun m!361851 () Bool)

(assert (=> b!364288 m!361851))

(declare-fun m!361853 () Bool)

(assert (=> b!364289 m!361853))

(declare-fun m!361855 () Bool)

(assert (=> b!364289 m!361855))

(declare-fun m!361857 () Bool)

(assert (=> b!364289 m!361857))

(check-sat (not b!364287) (not b!364290) (not b!364288) (not start!36460) (not b!364289))
(check-sat)
