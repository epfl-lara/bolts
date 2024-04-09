; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36490 () Bool)

(assert start!36490)

(declare-fun b!364515 () Bool)

(declare-fun res!203826 () Bool)

(declare-fun e!223148 () Bool)

(assert (=> b!364515 (=> (not res!203826) (not e!223148))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20732 0))(
  ( (array!20733 (arr!9842 (Array (_ BitVec 32) (_ BitVec 64))) (size!10194 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20732)

(assert (=> b!364515 (= res!203826 (and (bvslt (size!10194 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10194 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364516 () Bool)

(declare-fun res!203827 () Bool)

(assert (=> b!364516 (=> (not res!203827) (not e!223148))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364516 (= res!203827 (validKeyInArray!0 k0!2974))))

(declare-fun b!364517 () Bool)

(declare-fun e!223146 () Bool)

(assert (=> b!364517 (= e!223148 e!223146)))

(declare-fun res!203829 () Bool)

(assert (=> b!364517 (=> (not res!203829) (not e!223146))))

(declare-fun lt!168686 () (_ BitVec 32))

(declare-fun lt!168687 () (_ BitVec 32))

(assert (=> b!364517 (= res!203829 (and (= lt!168687 (bvadd #b00000000000000000000000000000001 lt!168686)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168688 () array!20732)

(declare-fun arrayCountValidKeys!0 (array!20732 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364517 (= lt!168687 (arrayCountValidKeys!0 lt!168688 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364517 (= lt!168686 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364517 (= lt!168688 (array!20733 (store (arr!9842 a!4289) i!1472 k0!2974) (size!10194 a!4289)))))

(declare-fun b!364518 () Bool)

(assert (=> b!364518 (= e!223146 (not (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (size!10194 a!4289)) (bvsge i!1472 (bvsub from!3650 #b00000000000000000000000000000001)))))))

(assert (=> b!364518 (= (bvadd (arrayCountValidKeys!0 lt!168688 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168687) (arrayCountValidKeys!0 lt!168688 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11343 0))(
  ( (Unit!11344) )
))
(declare-fun lt!168689 () Unit!11343)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11343)

(assert (=> b!364518 (= lt!168689 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168688 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364518 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168686) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168685 () Unit!11343)

(assert (=> b!364518 (= lt!168685 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364519 () Bool)

(declare-fun res!203830 () Bool)

(assert (=> b!364519 (=> (not res!203830) (not e!223148))))

(assert (=> b!364519 (= res!203830 (not (validKeyInArray!0 (select (arr!9842 a!4289) i!1472))))))

(declare-fun res!203828 () Bool)

(assert (=> start!36490 (=> (not res!203828) (not e!223148))))

(assert (=> start!36490 (= res!203828 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10194 a!4289))))))

(assert (=> start!36490 e!223148))

(assert (=> start!36490 true))

(declare-fun array_inv!7280 (array!20732) Bool)

(assert (=> start!36490 (array_inv!7280 a!4289)))

(assert (= (and start!36490 res!203828) b!364519))

(assert (= (and b!364519 res!203830) b!364516))

(assert (= (and b!364516 res!203827) b!364515))

(assert (= (and b!364515 res!203826) b!364517))

(assert (= (and b!364517 res!203829) b!364518))

(declare-fun m!362217 () Bool)

(assert (=> b!364516 m!362217))

(declare-fun m!362219 () Bool)

(assert (=> b!364517 m!362219))

(declare-fun m!362221 () Bool)

(assert (=> b!364517 m!362221))

(declare-fun m!362223 () Bool)

(assert (=> b!364517 m!362223))

(declare-fun m!362225 () Bool)

(assert (=> b!364518 m!362225))

(declare-fun m!362227 () Bool)

(assert (=> b!364518 m!362227))

(declare-fun m!362229 () Bool)

(assert (=> b!364518 m!362229))

(declare-fun m!362231 () Bool)

(assert (=> b!364518 m!362231))

(declare-fun m!362233 () Bool)

(assert (=> b!364518 m!362233))

(declare-fun m!362235 () Bool)

(assert (=> b!364518 m!362235))

(declare-fun m!362237 () Bool)

(assert (=> start!36490 m!362237))

(declare-fun m!362239 () Bool)

(assert (=> b!364519 m!362239))

(assert (=> b!364519 m!362239))

(declare-fun m!362241 () Bool)

(assert (=> b!364519 m!362241))

(check-sat (not start!36490) (not b!364517) (not b!364518) (not b!364516) (not b!364519))
(check-sat)
