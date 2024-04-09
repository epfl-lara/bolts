; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36466 () Bool)

(assert start!36466)

(declare-fun b!364335 () Bool)

(declare-fun res!203646 () Bool)

(declare-fun e!223038 () Bool)

(assert (=> b!364335 (=> (not res!203646) (not e!223038))))

(declare-datatypes ((array!20708 0))(
  ( (array!20709 (arr!9830 (Array (_ BitVec 32) (_ BitVec 64))) (size!10182 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20708)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364335 (= res!203646 (not (validKeyInArray!0 (select (arr!9830 a!4289) i!1472))))))

(declare-fun b!364336 () Bool)

(declare-fun e!223039 () Bool)

(assert (=> b!364336 (= e!223038 e!223039)))

(declare-fun res!203648 () Bool)

(assert (=> b!364336 (=> (not res!203648) (not e!223039))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168509 () (_ BitVec 32))

(declare-fun lt!168505 () (_ BitVec 32))

(assert (=> b!364336 (= res!203648 (and (= lt!168505 (bvadd #b00000000000000000000000000000001 lt!168509)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168508 () array!20708)

(declare-fun arrayCountValidKeys!0 (array!20708 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364336 (= lt!168505 (arrayCountValidKeys!0 lt!168508 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364336 (= lt!168509 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364336 (= lt!168508 (array!20709 (store (arr!9830 a!4289) i!1472 k0!2974) (size!10182 a!4289)))))

(declare-fun b!364338 () Bool)

(declare-fun res!203649 () Bool)

(assert (=> b!364338 (=> (not res!203649) (not e!223038))))

(assert (=> b!364338 (= res!203649 (and (bvslt (size!10182 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10182 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364339 () Bool)

(assert (=> b!364339 (= e!223039 (not true))))

(assert (=> b!364339 (= (bvadd (arrayCountValidKeys!0 lt!168508 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168505) (arrayCountValidKeys!0 lt!168508 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11319 0))(
  ( (Unit!11320) )
))
(declare-fun lt!168507 () Unit!11319)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11319)

(assert (=> b!364339 (= lt!168507 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168508 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364339 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168509) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168506 () Unit!11319)

(assert (=> b!364339 (= lt!168506 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203647 () Bool)

(assert (=> start!36466 (=> (not res!203647) (not e!223038))))

(assert (=> start!36466 (= res!203647 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10182 a!4289))))))

(assert (=> start!36466 e!223038))

(assert (=> start!36466 true))

(declare-fun array_inv!7268 (array!20708) Bool)

(assert (=> start!36466 (array_inv!7268 a!4289)))

(declare-fun b!364337 () Bool)

(declare-fun res!203650 () Bool)

(assert (=> b!364337 (=> (not res!203650) (not e!223038))))

(assert (=> b!364337 (= res!203650 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36466 res!203647) b!364335))

(assert (= (and b!364335 res!203646) b!364337))

(assert (= (and b!364337 res!203650) b!364338))

(assert (= (and b!364338 res!203649) b!364336))

(assert (= (and b!364336 res!203648) b!364339))

(declare-fun m!361905 () Bool)

(assert (=> b!364337 m!361905))

(declare-fun m!361907 () Bool)

(assert (=> start!36466 m!361907))

(declare-fun m!361909 () Bool)

(assert (=> b!364335 m!361909))

(assert (=> b!364335 m!361909))

(declare-fun m!361911 () Bool)

(assert (=> b!364335 m!361911))

(declare-fun m!361913 () Bool)

(assert (=> b!364336 m!361913))

(declare-fun m!361915 () Bool)

(assert (=> b!364336 m!361915))

(declare-fun m!361917 () Bool)

(assert (=> b!364336 m!361917))

(declare-fun m!361919 () Bool)

(assert (=> b!364339 m!361919))

(declare-fun m!361921 () Bool)

(assert (=> b!364339 m!361921))

(declare-fun m!361923 () Bool)

(assert (=> b!364339 m!361923))

(declare-fun m!361925 () Bool)

(assert (=> b!364339 m!361925))

(declare-fun m!361927 () Bool)

(assert (=> b!364339 m!361927))

(declare-fun m!361929 () Bool)

(assert (=> b!364339 m!361929))

(check-sat (not b!364337) (not b!364339) (not b!364335) (not start!36466) (not b!364336))
(check-sat)
