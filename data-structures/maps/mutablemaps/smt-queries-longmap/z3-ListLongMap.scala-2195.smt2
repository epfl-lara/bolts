; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36538 () Bool)

(assert start!36538)

(declare-fun b!364805 () Bool)

(declare-fun res!204021 () Bool)

(declare-fun e!223317 () Bool)

(assert (=> b!364805 (=> (not res!204021) (not e!223317))))

(declare-datatypes ((array!20759 0))(
  ( (array!20760 (arr!9854 (Array (_ BitVec 32) (_ BitVec 64))) (size!10206 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20759)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364805 (= res!204021 (not (validKeyInArray!0 (select (arr!9854 a!4289) i!1472))))))

(declare-fun b!364806 () Bool)

(declare-fun e!223319 () Bool)

(assert (=> b!364806 (= e!223319 true)))

(declare-fun lt!169052 () array!20759)

(declare-fun arrayCountValidKeys!0 (array!20759 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364806 (= (arrayCountValidKeys!0 lt!169052 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11367 0))(
  ( (Unit!11368) )
))
(declare-fun lt!169050 () Unit!11367)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20759 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11367)

(assert (=> b!364806 (= lt!169050 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!364807 () Bool)

(declare-fun res!204020 () Bool)

(assert (=> b!364807 (=> (not res!204020) (not e!223317))))

(assert (=> b!364807 (= res!204020 (and (bvslt (size!10206 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10206 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364808 () Bool)

(declare-fun res!204025 () Bool)

(assert (=> b!364808 (=> (not res!204025) (not e!223317))))

(assert (=> b!364808 (= res!204025 (validKeyInArray!0 k0!2974))))

(declare-fun b!364809 () Bool)

(declare-fun e!223318 () Bool)

(assert (=> b!364809 (= e!223318 (not e!223319))))

(declare-fun res!204023 () Bool)

(assert (=> b!364809 (=> res!204023 e!223319)))

(declare-fun lt!169047 () (_ BitVec 32))

(declare-fun lt!169043 () (_ BitVec 32))

(assert (=> b!364809 (= res!204023 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10206 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!169043 (bvadd #b00000000000000000000000000000001 lt!169047)))))))

(declare-fun lt!169046 () (_ BitVec 32))

(declare-fun lt!169045 () (_ BitVec 32))

(assert (=> b!364809 (= (bvadd lt!169046 lt!169045) lt!169043)))

(assert (=> b!364809 (= lt!169043 (arrayCountValidKeys!0 lt!169052 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364809 (= lt!169046 (arrayCountValidKeys!0 lt!169052 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169051 () Unit!11367)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11367)

(assert (=> b!364809 (= lt!169051 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!169052 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!169044 () (_ BitVec 32))

(declare-fun lt!169049 () (_ BitVec 32))

(assert (=> b!364809 (= (bvadd lt!169044 lt!169049) lt!169047)))

(assert (=> b!364809 (= lt!169047 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364809 (= lt!169044 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169048 () Unit!11367)

(assert (=> b!364809 (= lt!169048 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364810 () Bool)

(assert (=> b!364810 (= e!223317 e!223318)))

(declare-fun res!204024 () Bool)

(assert (=> b!364810 (=> (not res!204024) (not e!223318))))

(assert (=> b!364810 (= res!204024 (and (= lt!169045 (bvadd #b00000000000000000000000000000001 lt!169049)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364810 (= lt!169045 (arrayCountValidKeys!0 lt!169052 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364810 (= lt!169049 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364810 (= lt!169052 (array!20760 (store (arr!9854 a!4289) i!1472 k0!2974) (size!10206 a!4289)))))

(declare-fun res!204022 () Bool)

(assert (=> start!36538 (=> (not res!204022) (not e!223317))))

(assert (=> start!36538 (= res!204022 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10206 a!4289))))))

(assert (=> start!36538 e!223317))

(assert (=> start!36538 true))

(declare-fun array_inv!7292 (array!20759) Bool)

(assert (=> start!36538 (array_inv!7292 a!4289)))

(assert (= (and start!36538 res!204022) b!364805))

(assert (= (and b!364805 res!204021) b!364808))

(assert (= (and b!364808 res!204025) b!364807))

(assert (= (and b!364807 res!204020) b!364810))

(assert (= (and b!364810 res!204024) b!364809))

(assert (= (and b!364809 (not res!204023)) b!364806))

(declare-fun m!362649 () Bool)

(assert (=> b!364806 m!362649))

(declare-fun m!362651 () Bool)

(assert (=> b!364806 m!362651))

(declare-fun m!362653 () Bool)

(assert (=> b!364806 m!362653))

(declare-fun m!362655 () Bool)

(assert (=> b!364809 m!362655))

(declare-fun m!362657 () Bool)

(assert (=> b!364809 m!362657))

(declare-fun m!362659 () Bool)

(assert (=> b!364809 m!362659))

(declare-fun m!362661 () Bool)

(assert (=> b!364809 m!362661))

(declare-fun m!362663 () Bool)

(assert (=> b!364809 m!362663))

(declare-fun m!362665 () Bool)

(assert (=> b!364809 m!362665))

(declare-fun m!362667 () Bool)

(assert (=> b!364810 m!362667))

(declare-fun m!362669 () Bool)

(assert (=> b!364810 m!362669))

(declare-fun m!362671 () Bool)

(assert (=> b!364810 m!362671))

(declare-fun m!362673 () Bool)

(assert (=> b!364808 m!362673))

(declare-fun m!362675 () Bool)

(assert (=> start!36538 m!362675))

(declare-fun m!362677 () Bool)

(assert (=> b!364805 m!362677))

(assert (=> b!364805 m!362677))

(declare-fun m!362679 () Bool)

(assert (=> b!364805 m!362679))

(check-sat (not b!364809) (not b!364808) (not b!364805) (not b!364806) (not start!36538) (not b!364810))
