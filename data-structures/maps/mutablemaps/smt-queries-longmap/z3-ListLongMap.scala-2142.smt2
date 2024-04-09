; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36154 () Bool)

(assert start!36154)

(declare-fun b!362286 () Bool)

(declare-fun res!201731 () Bool)

(declare-fun e!221893 () Bool)

(assert (=> b!362286 (=> (not res!201731) (not e!221893))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362286 (= res!201731 (validKeyInArray!0 k0!2980))))

(declare-fun b!362287 () Bool)

(declare-fun res!201730 () Bool)

(assert (=> b!362287 (=> (not res!201730) (not e!221893))))

(declare-datatypes ((array!20432 0))(
  ( (array!20433 (arr!9695 (Array (_ BitVec 32) (_ BitVec 64))) (size!10047 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20432)

(assert (=> b!362287 (= res!201730 (bvslt (size!10047 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362288 () Bool)

(declare-fun e!221894 () Bool)

(assert (=> b!362288 (= e!221894 true)))

(declare-fun lt!166722 () (_ BitVec 32))

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20432 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362288 (= lt!166722 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166721 () (_ BitVec 32))

(declare-fun lt!166723 () array!20432)

(assert (=> b!362288 (= lt!166721 (arrayCountValidKeys!0 lt!166723 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!201729 () Bool)

(assert (=> start!36154 (=> (not res!201729) (not e!221893))))

(assert (=> start!36154 (= res!201729 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10047 a!4337))))))

(assert (=> start!36154 e!221893))

(assert (=> start!36154 true))

(declare-fun array_inv!7133 (array!20432) Bool)

(assert (=> start!36154 (array_inv!7133 a!4337)))

(declare-fun b!362289 () Bool)

(assert (=> b!362289 (= e!221893 (not e!221894))))

(declare-fun res!201732 () Bool)

(assert (=> b!362289 (=> res!201732 e!221894)))

(assert (=> b!362289 (= res!201732 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362289 (= (arrayCountValidKeys!0 lt!166723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362289 (= lt!166723 (array!20433 (store (arr!9695 a!4337) i!1478 k0!2980) (size!10047 a!4337)))))

(declare-datatypes ((Unit!11115 0))(
  ( (Unit!11116) )
))
(declare-fun lt!166724 () Unit!11115)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11115)

(assert (=> b!362289 (= lt!166724 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362290 () Bool)

(declare-fun res!201733 () Bool)

(assert (=> b!362290 (=> (not res!201733) (not e!221893))))

(assert (=> b!362290 (= res!201733 (not (validKeyInArray!0 (select (arr!9695 a!4337) i!1478))))))

(assert (= (and start!36154 res!201729) b!362290))

(assert (= (and b!362290 res!201733) b!362286))

(assert (= (and b!362286 res!201731) b!362287))

(assert (= (and b!362287 res!201730) b!362289))

(assert (= (and b!362289 (not res!201732)) b!362288))

(declare-fun m!358875 () Bool)

(assert (=> start!36154 m!358875))

(declare-fun m!358877 () Bool)

(assert (=> b!362288 m!358877))

(declare-fun m!358879 () Bool)

(assert (=> b!362288 m!358879))

(declare-fun m!358881 () Bool)

(assert (=> b!362286 m!358881))

(declare-fun m!358883 () Bool)

(assert (=> b!362290 m!358883))

(assert (=> b!362290 m!358883))

(declare-fun m!358885 () Bool)

(assert (=> b!362290 m!358885))

(declare-fun m!358887 () Bool)

(assert (=> b!362289 m!358887))

(declare-fun m!358889 () Bool)

(assert (=> b!362289 m!358889))

(declare-fun m!358891 () Bool)

(assert (=> b!362289 m!358891))

(declare-fun m!358893 () Bool)

(assert (=> b!362289 m!358893))

(check-sat (not start!36154) (not b!362288) (not b!362289) (not b!362290) (not b!362286))
