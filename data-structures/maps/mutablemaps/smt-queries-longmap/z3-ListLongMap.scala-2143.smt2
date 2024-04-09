; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36160 () Bool)

(assert start!36160)

(declare-fun b!362331 () Bool)

(declare-fun res!201774 () Bool)

(declare-fun e!221920 () Bool)

(assert (=> b!362331 (=> (not res!201774) (not e!221920))))

(declare-datatypes ((array!20438 0))(
  ( (array!20439 (arr!9698 (Array (_ BitVec 32) (_ BitVec 64))) (size!10050 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20438)

(assert (=> b!362331 (= res!201774 (bvslt (size!10050 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362332 () Bool)

(declare-fun res!201778 () Bool)

(assert (=> b!362332 (=> (not res!201778) (not e!221920))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362332 (= res!201778 (validKeyInArray!0 k0!2980))))

(declare-fun res!201776 () Bool)

(assert (=> start!36160 (=> (not res!201776) (not e!221920))))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> start!36160 (= res!201776 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10050 a!4337))))))

(assert (=> start!36160 e!221920))

(assert (=> start!36160 true))

(declare-fun array_inv!7136 (array!20438) Bool)

(assert (=> start!36160 (array_inv!7136 a!4337)))

(declare-fun b!362333 () Bool)

(declare-fun e!221921 () Bool)

(assert (=> b!362333 (= e!221920 (not e!221921))))

(declare-fun res!201775 () Bool)

(assert (=> b!362333 (=> res!201775 e!221921)))

(assert (=> b!362333 (= res!201775 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-fun lt!166760 () array!20438)

(declare-fun arrayCountValidKeys!0 (array!20438 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362333 (= (arrayCountValidKeys!0 lt!166760 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362333 (= lt!166760 (array!20439 (store (arr!9698 a!4337) i!1478 k0!2980) (size!10050 a!4337)))))

(declare-datatypes ((Unit!11121 0))(
  ( (Unit!11122) )
))
(declare-fun lt!166758 () Unit!11121)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11121)

(assert (=> b!362333 (= lt!166758 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362334 () Bool)

(assert (=> b!362334 (= e!221921 true)))

(declare-fun lt!166759 () (_ BitVec 32))

(assert (=> b!362334 (= lt!166759 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166757 () (_ BitVec 32))

(assert (=> b!362334 (= lt!166757 (arrayCountValidKeys!0 lt!166760 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362335 () Bool)

(declare-fun res!201777 () Bool)

(assert (=> b!362335 (=> (not res!201777) (not e!221920))))

(assert (=> b!362335 (= res!201777 (not (validKeyInArray!0 (select (arr!9698 a!4337) i!1478))))))

(assert (= (and start!36160 res!201776) b!362335))

(assert (= (and b!362335 res!201777) b!362332))

(assert (= (and b!362332 res!201778) b!362331))

(assert (= (and b!362331 res!201774) b!362333))

(assert (= (and b!362333 (not res!201775)) b!362334))

(declare-fun m!358935 () Bool)

(assert (=> b!362335 m!358935))

(assert (=> b!362335 m!358935))

(declare-fun m!358937 () Bool)

(assert (=> b!362335 m!358937))

(declare-fun m!358939 () Bool)

(assert (=> b!362334 m!358939))

(declare-fun m!358941 () Bool)

(assert (=> b!362334 m!358941))

(declare-fun m!358943 () Bool)

(assert (=> b!362333 m!358943))

(declare-fun m!358945 () Bool)

(assert (=> b!362333 m!358945))

(declare-fun m!358947 () Bool)

(assert (=> b!362333 m!358947))

(declare-fun m!358949 () Bool)

(assert (=> b!362333 m!358949))

(declare-fun m!358951 () Bool)

(assert (=> b!362332 m!358951))

(declare-fun m!358953 () Bool)

(assert (=> start!36160 m!358953))

(check-sat (not start!36160) (not b!362334) (not b!362333) (not b!362332) (not b!362335))
