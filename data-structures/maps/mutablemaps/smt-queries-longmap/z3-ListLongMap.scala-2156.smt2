; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36256 () Bool)

(assert start!36256)

(declare-fun b!362920 () Bool)

(declare-fun e!222250 () Bool)

(assert (=> b!362920 (= e!222250 (not true))))

(declare-datatypes ((array!20519 0))(
  ( (array!20520 (arr!9737 (Array (_ BitVec 32) (_ BitVec 64))) (size!10089 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20519)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20519 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362920 (= (arrayCountValidKeys!0 (array!20520 (store (arr!9737 a!4337) i!1478 k0!2980) (size!10089 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11187 0))(
  ( (Unit!11188) )
))
(declare-fun lt!167324 () Unit!11187)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20519 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11187)

(assert (=> b!362920 (= lt!167324 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362919 () Bool)

(declare-fun res!202301 () Bool)

(assert (=> b!362919 (=> (not res!202301) (not e!222250))))

(assert (=> b!362919 (= res!202301 (bvslt (size!10089 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202302 () Bool)

(assert (=> start!36256 (=> (not res!202302) (not e!222250))))

(assert (=> start!36256 (= res!202302 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10089 a!4337))))))

(assert (=> start!36256 e!222250))

(assert (=> start!36256 true))

(declare-fun array_inv!7175 (array!20519) Bool)

(assert (=> start!36256 (array_inv!7175 a!4337)))

(declare-fun b!362917 () Bool)

(declare-fun res!202300 () Bool)

(assert (=> b!362917 (=> (not res!202300) (not e!222250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362917 (= res!202300 (not (validKeyInArray!0 (select (arr!9737 a!4337) i!1478))))))

(declare-fun b!362918 () Bool)

(declare-fun res!202303 () Bool)

(assert (=> b!362918 (=> (not res!202303) (not e!222250))))

(assert (=> b!362918 (= res!202303 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36256 res!202302) b!362917))

(assert (= (and b!362917 res!202300) b!362918))

(assert (= (and b!362918 res!202303) b!362919))

(assert (= (and b!362919 res!202301) b!362920))

(declare-fun m!359825 () Bool)

(assert (=> b!362920 m!359825))

(declare-fun m!359827 () Bool)

(assert (=> b!362920 m!359827))

(declare-fun m!359829 () Bool)

(assert (=> b!362920 m!359829))

(declare-fun m!359831 () Bool)

(assert (=> b!362920 m!359831))

(declare-fun m!359833 () Bool)

(assert (=> start!36256 m!359833))

(declare-fun m!359835 () Bool)

(assert (=> b!362917 m!359835))

(assert (=> b!362917 m!359835))

(declare-fun m!359837 () Bool)

(assert (=> b!362917 m!359837))

(declare-fun m!359839 () Bool)

(assert (=> b!362918 m!359839))

(check-sat (not b!362917) (not b!362918) (not start!36256) (not b!362920))
