; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36268 () Bool)

(assert start!36268)

(declare-fun res!202372 () Bool)

(declare-fun e!222286 () Bool)

(assert (=> start!36268 (=> (not res!202372) (not e!222286))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20531 0))(
  ( (array!20532 (arr!9743 (Array (_ BitVec 32) (_ BitVec 64))) (size!10095 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20531)

(assert (=> start!36268 (= res!202372 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10095 a!4337))))))

(assert (=> start!36268 e!222286))

(assert (=> start!36268 true))

(declare-fun array_inv!7181 (array!20531) Bool)

(assert (=> start!36268 (array_inv!7181 a!4337)))

(declare-fun b!362991 () Bool)

(declare-fun res!202374 () Bool)

(assert (=> b!362991 (=> (not res!202374) (not e!222286))))

(assert (=> b!362991 (= res!202374 (bvslt (size!10095 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362992 () Bool)

(assert (=> b!362992 (= e!222286 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1478) i!1478))))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20531 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362992 (= (arrayCountValidKeys!0 (array!20532 (store (arr!9743 a!4337) i!1478 k0!2980) (size!10095 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11199 0))(
  ( (Unit!11200) )
))
(declare-fun lt!167342 () Unit!11199)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11199)

(assert (=> b!362992 (= lt!167342 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362989 () Bool)

(declare-fun res!202373 () Bool)

(assert (=> b!362989 (=> (not res!202373) (not e!222286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362989 (= res!202373 (not (validKeyInArray!0 (select (arr!9743 a!4337) i!1478))))))

(declare-fun b!362990 () Bool)

(declare-fun res!202375 () Bool)

(assert (=> b!362990 (=> (not res!202375) (not e!222286))))

(assert (=> b!362990 (= res!202375 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36268 res!202372) b!362989))

(assert (= (and b!362989 res!202373) b!362990))

(assert (= (and b!362990 res!202375) b!362991))

(assert (= (and b!362991 res!202374) b!362992))

(declare-fun m!359921 () Bool)

(assert (=> start!36268 m!359921))

(declare-fun m!359923 () Bool)

(assert (=> b!362992 m!359923))

(declare-fun m!359925 () Bool)

(assert (=> b!362992 m!359925))

(declare-fun m!359927 () Bool)

(assert (=> b!362992 m!359927))

(declare-fun m!359929 () Bool)

(assert (=> b!362992 m!359929))

(declare-fun m!359931 () Bool)

(assert (=> b!362989 m!359931))

(assert (=> b!362989 m!359931))

(declare-fun m!359933 () Bool)

(assert (=> b!362989 m!359933))

(declare-fun m!359935 () Bool)

(assert (=> b!362990 m!359935))

(check-sat (not b!362992) (not b!362989) (not b!362990) (not start!36268))
(check-sat)
