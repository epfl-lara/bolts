; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36158 () Bool)

(assert start!36158)

(declare-fun b!362316 () Bool)

(declare-fun e!221912 () Bool)

(declare-fun e!221910 () Bool)

(assert (=> b!362316 (= e!221912 (not e!221910))))

(declare-fun res!201763 () Bool)

(assert (=> b!362316 (=> res!201763 e!221910)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362316 (= res!201763 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-datatypes ((array!20436 0))(
  ( (array!20437 (arr!9697 (Array (_ BitVec 32) (_ BitVec 64))) (size!10049 (_ BitVec 32))) )
))
(declare-fun lt!166748 () array!20436)

(declare-fun a!4337 () array!20436)

(declare-fun arrayCountValidKeys!0 (array!20436 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362316 (= (arrayCountValidKeys!0 lt!166748 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362316 (= lt!166748 (array!20437 (store (arr!9697 a!4337) i!1478 k!2980) (size!10049 a!4337)))))

(declare-datatypes ((Unit!11119 0))(
  ( (Unit!11120) )
))
(declare-fun lt!166746 () Unit!11119)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11119)

(assert (=> b!362316 (= lt!166746 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362317 () Bool)

(declare-fun res!201761 () Bool)

(assert (=> b!362317 (=> (not res!201761) (not e!221912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362317 (= res!201761 (validKeyInArray!0 k!2980))))

(declare-fun b!362318 () Bool)

(declare-fun res!201759 () Bool)

(assert (=> b!362318 (=> (not res!201759) (not e!221912))))

(assert (=> b!362318 (= res!201759 (not (validKeyInArray!0 (select (arr!9697 a!4337) i!1478))))))

(declare-fun b!362319 () Bool)

(assert (=> b!362319 (= e!221910 true)))

(declare-fun lt!166745 () (_ BitVec 32))

(assert (=> b!362319 (= lt!166745 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166747 () (_ BitVec 32))

(assert (=> b!362319 (= lt!166747 (arrayCountValidKeys!0 lt!166748 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362320 () Bool)

(declare-fun res!201760 () Bool)

(assert (=> b!362320 (=> (not res!201760) (not e!221912))))

(assert (=> b!362320 (= res!201760 (bvslt (size!10049 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!201762 () Bool)

(assert (=> start!36158 (=> (not res!201762) (not e!221912))))

(assert (=> start!36158 (= res!201762 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10049 a!4337))))))

(assert (=> start!36158 e!221912))

(assert (=> start!36158 true))

(declare-fun array_inv!7135 (array!20436) Bool)

(assert (=> start!36158 (array_inv!7135 a!4337)))

(assert (= (and start!36158 res!201762) b!362318))

(assert (= (and b!362318 res!201759) b!362317))

(assert (= (and b!362317 res!201761) b!362320))

(assert (= (and b!362320 res!201760) b!362316))

(assert (= (and b!362316 (not res!201763)) b!362319))

(declare-fun m!358915 () Bool)

(assert (=> start!36158 m!358915))

(declare-fun m!358917 () Bool)

(assert (=> b!362319 m!358917))

(declare-fun m!358919 () Bool)

(assert (=> b!362319 m!358919))

(declare-fun m!358921 () Bool)

(assert (=> b!362317 m!358921))

(declare-fun m!358923 () Bool)

(assert (=> b!362316 m!358923))

(declare-fun m!358925 () Bool)

(assert (=> b!362316 m!358925))

(declare-fun m!358927 () Bool)

(assert (=> b!362316 m!358927))

(declare-fun m!358929 () Bool)

(assert (=> b!362316 m!358929))

(declare-fun m!358931 () Bool)

(assert (=> b!362318 m!358931))

(assert (=> b!362318 m!358931))

(declare-fun m!358933 () Bool)

(assert (=> b!362318 m!358933))

(push 1)

(assert (not b!362317))

(assert (not b!362316))

(assert (not start!36158))

(assert (not b!362319))

(assert (not b!362318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

