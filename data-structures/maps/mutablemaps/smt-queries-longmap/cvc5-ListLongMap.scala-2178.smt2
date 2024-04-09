; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36410 () Bool)

(assert start!36410)

(declare-fun b!363917 () Bool)

(declare-fun res!203228 () Bool)

(declare-fun e!222836 () Bool)

(assert (=> b!363917 (=> (not res!203228) (not e!222836))))

(declare-datatypes ((array!20652 0))(
  ( (array!20653 (arr!9802 (Array (_ BitVec 32) (_ BitVec 64))) (size!10154 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20652)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363917 (= res!203228 (not (validKeyInArray!0 (select (arr!9802 a!4289) i!1472))))))

(declare-fun b!363918 () Bool)

(declare-fun res!203233 () Bool)

(assert (=> b!363918 (=> (not res!203233) (not e!222836))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363918 (= res!203233 (validKeyInArray!0 k!2974))))

(declare-fun b!363919 () Bool)

(declare-fun e!222834 () Bool)

(assert (=> b!363919 (= e!222834 true)))

(declare-fun lt!168329 () array!20652)

(declare-fun arrayCountValidKeys!0 (array!20652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363919 (= (arrayCountValidKeys!0 lt!168329 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-datatypes ((Unit!11299 0))(
  ( (Unit!11300) )
))
(declare-fun lt!168322 () Unit!11299)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20652 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11299)

(assert (=> b!363919 (= lt!168322 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363920 () Bool)

(declare-fun res!203231 () Bool)

(assert (=> b!363920 (=> (not res!203231) (not e!222836))))

(assert (=> b!363920 (= res!203231 (and (bvslt (size!10154 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10154 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203229 () Bool)

(assert (=> start!36410 (=> (not res!203229) (not e!222836))))

(assert (=> start!36410 (= res!203229 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10154 a!4289))))))

(assert (=> start!36410 e!222836))

(assert (=> start!36410 true))

(declare-fun array_inv!7240 (array!20652) Bool)

(assert (=> start!36410 (array_inv!7240 a!4289)))

(declare-fun b!363921 () Bool)

(declare-fun e!222833 () Bool)

(assert (=> b!363921 (= e!222833 (not e!222834))))

(declare-fun res!203230 () Bool)

(assert (=> b!363921 (=> res!203230 e!222834)))

(declare-fun lt!168320 () (_ BitVec 32))

(declare-fun lt!168324 () (_ BitVec 32))

(assert (=> b!363921 (= res!203230 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10154 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168324 (bvadd #b00000000000000000000000000000001 lt!168320)))))))

(declare-fun lt!168325 () (_ BitVec 32))

(declare-fun lt!168326 () (_ BitVec 32))

(assert (=> b!363921 (= (bvadd lt!168325 lt!168326) lt!168324)))

(assert (=> b!363921 (= lt!168324 (arrayCountValidKeys!0 lt!168329 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363921 (= lt!168325 (arrayCountValidKeys!0 lt!168329 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168328 () Unit!11299)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11299)

(assert (=> b!363921 (= lt!168328 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168329 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168327 () (_ BitVec 32))

(declare-fun lt!168321 () (_ BitVec 32))

(assert (=> b!363921 (= (bvadd lt!168327 lt!168321) lt!168320)))

(assert (=> b!363921 (= lt!168320 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363921 (= lt!168327 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168323 () Unit!11299)

(assert (=> b!363921 (= lt!168323 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363922 () Bool)

(assert (=> b!363922 (= e!222836 e!222833)))

(declare-fun res!203232 () Bool)

(assert (=> b!363922 (=> (not res!203232) (not e!222833))))

(assert (=> b!363922 (= res!203232 (and (= lt!168326 (bvadd #b00000000000000000000000000000001 lt!168321)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363922 (= lt!168326 (arrayCountValidKeys!0 lt!168329 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363922 (= lt!168321 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363922 (= lt!168329 (array!20653 (store (arr!9802 a!4289) i!1472 k!2974) (size!10154 a!4289)))))

(assert (= (and start!36410 res!203229) b!363917))

(assert (= (and b!363917 res!203228) b!363918))

(assert (= (and b!363918 res!203233) b!363920))

(assert (= (and b!363920 res!203231) b!363922))

(assert (= (and b!363922 res!203232) b!363921))

(assert (= (and b!363921 (not res!203230)) b!363919))

(declare-fun m!361411 () Bool)

(assert (=> start!36410 m!361411))

(declare-fun m!361413 () Bool)

(assert (=> b!363918 m!361413))

(declare-fun m!361415 () Bool)

(assert (=> b!363922 m!361415))

(declare-fun m!361417 () Bool)

(assert (=> b!363922 m!361417))

(declare-fun m!361419 () Bool)

(assert (=> b!363922 m!361419))

(declare-fun m!361421 () Bool)

(assert (=> b!363917 m!361421))

(assert (=> b!363917 m!361421))

(declare-fun m!361423 () Bool)

(assert (=> b!363917 m!361423))

(declare-fun m!361425 () Bool)

(assert (=> b!363919 m!361425))

(declare-fun m!361427 () Bool)

(assert (=> b!363919 m!361427))

(declare-fun m!361429 () Bool)

(assert (=> b!363919 m!361429))

(declare-fun m!361431 () Bool)

(assert (=> b!363921 m!361431))

(declare-fun m!361433 () Bool)

(assert (=> b!363921 m!361433))

(declare-fun m!361435 () Bool)

(assert (=> b!363921 m!361435))

(declare-fun m!361437 () Bool)

(assert (=> b!363921 m!361437))

(declare-fun m!361439 () Bool)

(assert (=> b!363921 m!361439))

(declare-fun m!361441 () Bool)

(assert (=> b!363921 m!361441))

(push 1)

(assert (not b!363918))

(assert (not b!363917))

(assert (not b!363921))

(assert (not b!363919))

(assert (not start!36410))

(assert (not b!363922))

(check-sat)

