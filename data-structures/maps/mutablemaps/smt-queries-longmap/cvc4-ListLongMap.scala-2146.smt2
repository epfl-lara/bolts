; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36180 () Bool)

(assert start!36180)

(declare-fun b!362481 () Bool)

(declare-fun e!222009 () Bool)

(declare-fun e!222010 () Bool)

(assert (=> b!362481 (= e!222009 (not e!222010))))

(declare-fun res!201927 () Bool)

(assert (=> b!362481 (=> res!201927 e!222010)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362481 (= res!201927 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-datatypes ((array!20458 0))(
  ( (array!20459 (arr!9708 (Array (_ BitVec 32) (_ BitVec 64))) (size!10060 (_ BitVec 32))) )
))
(declare-fun lt!166878 () array!20458)

(declare-fun a!4337 () array!20458)

(declare-fun arrayCountValidKeys!0 (array!20458 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362481 (= (arrayCountValidKeys!0 lt!166878 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362481 (= lt!166878 (array!20459 (store (arr!9708 a!4337) i!1478 k!2980) (size!10060 a!4337)))))

(declare-datatypes ((Unit!11141 0))(
  ( (Unit!11142) )
))
(declare-fun lt!166879 () Unit!11141)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11141)

(assert (=> b!362481 (= lt!166879 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362482 () Bool)

(declare-fun res!201928 () Bool)

(assert (=> b!362482 (=> (not res!201928) (not e!222009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362482 (= res!201928 (validKeyInArray!0 k!2980))))

(declare-fun b!362483 () Bool)

(declare-fun res!201925 () Bool)

(assert (=> b!362483 (=> (not res!201925) (not e!222009))))

(assert (=> b!362483 (= res!201925 (bvslt (size!10060 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362484 () Bool)

(declare-fun res!201924 () Bool)

(assert (=> b!362484 (=> (not res!201924) (not e!222009))))

(assert (=> b!362484 (= res!201924 (not (validKeyInArray!0 (select (arr!9708 a!4337) i!1478))))))

(declare-fun res!201926 () Bool)

(assert (=> start!36180 (=> (not res!201926) (not e!222009))))

(assert (=> start!36180 (= res!201926 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10060 a!4337))))))

(assert (=> start!36180 e!222009))

(assert (=> start!36180 true))

(declare-fun array_inv!7146 (array!20458) Bool)

(assert (=> start!36180 (array_inv!7146 a!4337)))

(declare-fun b!362485 () Bool)

(assert (=> b!362485 (= e!222010 true)))

(declare-fun lt!166880 () (_ BitVec 32))

(assert (=> b!362485 (= lt!166880 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166877 () (_ BitVec 32))

(assert (=> b!362485 (= lt!166877 (arrayCountValidKeys!0 lt!166878 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36180 res!201926) b!362484))

(assert (= (and b!362484 res!201924) b!362482))

(assert (= (and b!362482 res!201928) b!362483))

(assert (= (and b!362483 res!201925) b!362481))

(assert (= (and b!362481 (not res!201927)) b!362485))

(declare-fun m!359135 () Bool)

(assert (=> b!362484 m!359135))

(assert (=> b!362484 m!359135))

(declare-fun m!359137 () Bool)

(assert (=> b!362484 m!359137))

(declare-fun m!359139 () Bool)

(assert (=> b!362482 m!359139))

(declare-fun m!359141 () Bool)

(assert (=> b!362485 m!359141))

(declare-fun m!359143 () Bool)

(assert (=> b!362485 m!359143))

(declare-fun m!359145 () Bool)

(assert (=> start!36180 m!359145))

(declare-fun m!359147 () Bool)

(assert (=> b!362481 m!359147))

(declare-fun m!359149 () Bool)

(assert (=> b!362481 m!359149))

(declare-fun m!359151 () Bool)

(assert (=> b!362481 m!359151))

(declare-fun m!359153 () Bool)

(assert (=> b!362481 m!359153))

(push 1)

(assert (not start!36180))

(assert (not b!362482))

(assert (not b!362485))

(assert (not b!362484))

(assert (not b!362481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

