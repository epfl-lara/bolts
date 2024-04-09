; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36166 () Bool)

(assert start!36166)

(declare-fun res!201819 () Bool)

(declare-fun e!221946 () Bool)

(assert (=> start!36166 (=> (not res!201819) (not e!221946))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20444 0))(
  ( (array!20445 (arr!9701 (Array (_ BitVec 32) (_ BitVec 64))) (size!10053 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20444)

(assert (=> start!36166 (= res!201819 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10053 a!4337))))))

(assert (=> start!36166 e!221946))

(assert (=> start!36166 true))

(declare-fun array_inv!7139 (array!20444) Bool)

(assert (=> start!36166 (array_inv!7139 a!4337)))

(declare-fun b!362376 () Bool)

(declare-fun res!201823 () Bool)

(assert (=> b!362376 (=> (not res!201823) (not e!221946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362376 (= res!201823 (not (validKeyInArray!0 (select (arr!9701 a!4337) i!1478))))))

(declare-fun b!362377 () Bool)

(declare-fun res!201821 () Bool)

(assert (=> b!362377 (=> (not res!201821) (not e!221946))))

(assert (=> b!362377 (= res!201821 (bvslt (size!10053 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362378 () Bool)

(declare-fun res!201822 () Bool)

(assert (=> b!362378 (=> (not res!201822) (not e!221946))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362378 (= res!201822 (validKeyInArray!0 k0!2980))))

(declare-fun b!362379 () Bool)

(declare-fun e!221948 () Bool)

(assert (=> b!362379 (= e!221948 true)))

(declare-fun lt!166793 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20444 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362379 (= lt!166793 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166795 () (_ BitVec 32))

(declare-fun lt!166796 () array!20444)

(assert (=> b!362379 (= lt!166795 (arrayCountValidKeys!0 lt!166796 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362380 () Bool)

(assert (=> b!362380 (= e!221946 (not e!221948))))

(declare-fun res!201820 () Bool)

(assert (=> b!362380 (=> res!201820 e!221948)))

(assert (=> b!362380 (= res!201820 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362380 (= (arrayCountValidKeys!0 lt!166796 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362380 (= lt!166796 (array!20445 (store (arr!9701 a!4337) i!1478 k0!2980) (size!10053 a!4337)))))

(declare-datatypes ((Unit!11127 0))(
  ( (Unit!11128) )
))
(declare-fun lt!166794 () Unit!11127)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11127)

(assert (=> b!362380 (= lt!166794 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(assert (= (and start!36166 res!201819) b!362376))

(assert (= (and b!362376 res!201823) b!362378))

(assert (= (and b!362378 res!201822) b!362377))

(assert (= (and b!362377 res!201821) b!362380))

(assert (= (and b!362380 (not res!201820)) b!362379))

(declare-fun m!358995 () Bool)

(assert (=> b!362378 m!358995))

(declare-fun m!358997 () Bool)

(assert (=> b!362376 m!358997))

(assert (=> b!362376 m!358997))

(declare-fun m!358999 () Bool)

(assert (=> b!362376 m!358999))

(declare-fun m!359001 () Bool)

(assert (=> b!362380 m!359001))

(declare-fun m!359003 () Bool)

(assert (=> b!362380 m!359003))

(declare-fun m!359005 () Bool)

(assert (=> b!362380 m!359005))

(declare-fun m!359007 () Bool)

(assert (=> b!362380 m!359007))

(declare-fun m!359009 () Bool)

(assert (=> b!362379 m!359009))

(declare-fun m!359011 () Bool)

(assert (=> b!362379 m!359011))

(declare-fun m!359013 () Bool)

(assert (=> start!36166 m!359013))

(check-sat (not b!362379) (not b!362376) (not start!36166) (not b!362380) (not b!362378))
