; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36532 () Bool)

(assert start!36532)

(declare-fun b!364751 () Bool)

(declare-fun res!203971 () Bool)

(declare-fun e!223280 () Bool)

(assert (=> b!364751 (=> (not res!203971) (not e!223280))))

(declare-datatypes ((array!20753 0))(
  ( (array!20754 (arr!9851 (Array (_ BitVec 32) (_ BitVec 64))) (size!10203 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20753)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364751 (= res!203971 (not (validKeyInArray!0 (select (arr!9851 a!4289) i!1472))))))

(declare-fun b!364752 () Bool)

(declare-fun res!203970 () Bool)

(assert (=> b!364752 (=> (not res!203970) (not e!223280))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364752 (= res!203970 (validKeyInArray!0 k0!2974))))

(declare-fun b!364753 () Bool)

(declare-fun e!223282 () Bool)

(declare-fun e!223283 () Bool)

(assert (=> b!364753 (= e!223282 (not e!223283))))

(declare-fun res!203966 () Bool)

(assert (=> b!364753 (=> res!203966 e!223283)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168961 () (_ BitVec 32))

(declare-fun lt!168959 () (_ BitVec 32))

(assert (=> b!364753 (= res!203966 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10203 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168959 (bvadd #b00000000000000000000000000000001 lt!168961)))))))

(declare-fun lt!168960 () (_ BitVec 32))

(declare-fun lt!168956 () (_ BitVec 32))

(assert (=> b!364753 (= (bvadd lt!168960 lt!168956) lt!168959)))

(declare-fun lt!168958 () array!20753)

(declare-fun arrayCountValidKeys!0 (array!20753 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364753 (= lt!168959 (arrayCountValidKeys!0 lt!168958 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364753 (= lt!168960 (arrayCountValidKeys!0 lt!168958 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11361 0))(
  ( (Unit!11362) )
))
(declare-fun lt!168957 () Unit!11361)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11361)

(assert (=> b!364753 (= lt!168957 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168958 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168962 () (_ BitVec 32))

(declare-fun lt!168953 () (_ BitVec 32))

(assert (=> b!364753 (= (bvadd lt!168962 lt!168953) lt!168961)))

(assert (=> b!364753 (= lt!168961 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364753 (= lt!168962 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168954 () Unit!11361)

(assert (=> b!364753 (= lt!168954 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203968 () Bool)

(assert (=> start!36532 (=> (not res!203968) (not e!223280))))

(assert (=> start!36532 (= res!203968 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10203 a!4289))))))

(assert (=> start!36532 e!223280))

(assert (=> start!36532 true))

(declare-fun array_inv!7289 (array!20753) Bool)

(assert (=> start!36532 (array_inv!7289 a!4289)))

(declare-fun b!364754 () Bool)

(declare-fun res!203969 () Bool)

(assert (=> b!364754 (=> (not res!203969) (not e!223280))))

(assert (=> b!364754 (= res!203969 (and (bvslt (size!10203 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10203 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364755 () Bool)

(assert (=> b!364755 (= e!223283 true)))

(assert (=> b!364755 (= (arrayCountValidKeys!0 lt!168958 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168955 () Unit!11361)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20753 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11361)

(assert (=> b!364755 (= lt!168955 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!364756 () Bool)

(assert (=> b!364756 (= e!223280 e!223282)))

(declare-fun res!203967 () Bool)

(assert (=> b!364756 (=> (not res!203967) (not e!223282))))

(assert (=> b!364756 (= res!203967 (and (= lt!168956 (bvadd #b00000000000000000000000000000001 lt!168953)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364756 (= lt!168956 (arrayCountValidKeys!0 lt!168958 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364756 (= lt!168953 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364756 (= lt!168958 (array!20754 (store (arr!9851 a!4289) i!1472 k0!2974) (size!10203 a!4289)))))

(assert (= (and start!36532 res!203968) b!364751))

(assert (= (and b!364751 res!203971) b!364752))

(assert (= (and b!364752 res!203970) b!364754))

(assert (= (and b!364754 res!203969) b!364756))

(assert (= (and b!364756 res!203967) b!364753))

(assert (= (and b!364753 (not res!203966)) b!364755))

(declare-fun m!362553 () Bool)

(assert (=> b!364755 m!362553))

(declare-fun m!362555 () Bool)

(assert (=> b!364755 m!362555))

(declare-fun m!362557 () Bool)

(assert (=> b!364755 m!362557))

(declare-fun m!362559 () Bool)

(assert (=> start!36532 m!362559))

(declare-fun m!362561 () Bool)

(assert (=> b!364753 m!362561))

(declare-fun m!362563 () Bool)

(assert (=> b!364753 m!362563))

(declare-fun m!362565 () Bool)

(assert (=> b!364753 m!362565))

(declare-fun m!362567 () Bool)

(assert (=> b!364753 m!362567))

(declare-fun m!362569 () Bool)

(assert (=> b!364753 m!362569))

(declare-fun m!362571 () Bool)

(assert (=> b!364753 m!362571))

(declare-fun m!362573 () Bool)

(assert (=> b!364752 m!362573))

(declare-fun m!362575 () Bool)

(assert (=> b!364751 m!362575))

(assert (=> b!364751 m!362575))

(declare-fun m!362577 () Bool)

(assert (=> b!364751 m!362577))

(declare-fun m!362579 () Bool)

(assert (=> b!364756 m!362579))

(declare-fun m!362581 () Bool)

(assert (=> b!364756 m!362581))

(declare-fun m!362583 () Bool)

(assert (=> b!364756 m!362583))

(check-sat (not b!364755) (not b!364756) (not start!36532) (not b!364752) (not b!364753) (not b!364751))
(check-sat)
