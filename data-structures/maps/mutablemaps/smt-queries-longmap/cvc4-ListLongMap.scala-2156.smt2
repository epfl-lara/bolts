; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36258 () Bool)

(assert start!36258)

(declare-fun b!362932 () Bool)

(declare-fun e!222257 () Bool)

(assert (=> b!362932 (= e!222257 (not true))))

(declare-datatypes ((array!20521 0))(
  ( (array!20522 (arr!9738 (Array (_ BitVec 32) (_ BitVec 64))) (size!10090 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20521)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20521 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362932 (= (arrayCountValidKeys!0 (array!20522 (store (arr!9738 a!4337) i!1478 k!2980) (size!10090 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11189 0))(
  ( (Unit!11190) )
))
(declare-fun lt!167327 () Unit!11189)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20521 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11189)

(assert (=> b!362932 (= lt!167327 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362929 () Bool)

(declare-fun res!202315 () Bool)

(assert (=> b!362929 (=> (not res!202315) (not e!222257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362929 (= res!202315 (not (validKeyInArray!0 (select (arr!9738 a!4337) i!1478))))))

(declare-fun b!362931 () Bool)

(declare-fun res!202313 () Bool)

(assert (=> b!362931 (=> (not res!202313) (not e!222257))))

(assert (=> b!362931 (= res!202313 (bvslt (size!10090 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202312 () Bool)

(assert (=> start!36258 (=> (not res!202312) (not e!222257))))

(assert (=> start!36258 (= res!202312 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10090 a!4337))))))

(assert (=> start!36258 e!222257))

(assert (=> start!36258 true))

(declare-fun array_inv!7176 (array!20521) Bool)

(assert (=> start!36258 (array_inv!7176 a!4337)))

(declare-fun b!362930 () Bool)

(declare-fun res!202314 () Bool)

(assert (=> b!362930 (=> (not res!202314) (not e!222257))))

(assert (=> b!362930 (= res!202314 (validKeyInArray!0 k!2980))))

(assert (= (and start!36258 res!202312) b!362929))

(assert (= (and b!362929 res!202315) b!362930))

(assert (= (and b!362930 res!202314) b!362931))

(assert (= (and b!362931 res!202313) b!362932))

(declare-fun m!359841 () Bool)

(assert (=> b!362932 m!359841))

(declare-fun m!359843 () Bool)

(assert (=> b!362932 m!359843))

(declare-fun m!359845 () Bool)

(assert (=> b!362932 m!359845))

(declare-fun m!359847 () Bool)

(assert (=> b!362932 m!359847))

(declare-fun m!359849 () Bool)

(assert (=> b!362929 m!359849))

(assert (=> b!362929 m!359849))

(declare-fun m!359851 () Bool)

(assert (=> b!362929 m!359851))

(declare-fun m!359853 () Bool)

(assert (=> start!36258 m!359853))

(declare-fun m!359855 () Bool)

(assert (=> b!362930 m!359855))

(push 1)

(assert (not b!362929))

(assert (not b!362930))

(assert (not start!36258))

(assert (not b!362932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

