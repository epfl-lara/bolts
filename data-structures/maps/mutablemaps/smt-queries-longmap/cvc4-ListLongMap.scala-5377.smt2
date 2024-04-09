; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71888 () Bool)

(assert start!71888)

(declare-fun b!834982 () Bool)

(declare-fun res!568029 () Bool)

(declare-fun e!465875 () Bool)

(assert (=> b!834982 (=> (not res!568029) (not e!465875))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834982 (= res!568029 (validKeyInArray!0 k!2968))))

(declare-fun res!568031 () Bool)

(assert (=> start!71888 (=> (not res!568031) (not e!465875))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46742 0))(
  ( (array!46743 (arr!22401 (Array (_ BitVec 32) (_ BitVec 64))) (size!22822 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46742)

(assert (=> start!71888 (= res!568031 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22822 a!4227))))))

(assert (=> start!71888 e!465875))

(assert (=> start!71888 true))

(declare-fun array_inv!17824 (array!46742) Bool)

(assert (=> start!71888 (array_inv!17824 a!4227)))

(declare-fun b!834983 () Bool)

(declare-fun res!568030 () Bool)

(assert (=> b!834983 (=> (not res!568030) (not e!465875))))

(assert (=> b!834983 (= res!568030 (not (validKeyInArray!0 (select (arr!22401 a!4227) i!1466))))))

(declare-fun b!834984 () Bool)

(declare-fun res!568033 () Bool)

(assert (=> b!834984 (=> (not res!568033) (not e!465875))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46742 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834984 (= res!568033 (= (arrayCountValidKeys!0 (array!46743 (store (arr!22401 a!4227) i!1466 k!2968) (size!22822 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834985 () Bool)

(assert (=> b!834985 (= e!465875 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!22822 a!4227)) to!390) #b00000000000000000000000000000000))))

(declare-fun b!834986 () Bool)

(declare-fun res!568032 () Bool)

(assert (=> b!834986 (=> (not res!568032) (not e!465875))))

(assert (=> b!834986 (= res!568032 (and (bvslt (size!22822 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22822 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71888 res!568031) b!834983))

(assert (= (and b!834983 res!568030) b!834982))

(assert (= (and b!834982 res!568029) b!834986))

(assert (= (and b!834986 res!568032) b!834984))

(assert (= (and b!834984 res!568033) b!834985))

(declare-fun m!780257 () Bool)

(assert (=> b!834982 m!780257))

(declare-fun m!780259 () Bool)

(assert (=> start!71888 m!780259))

(declare-fun m!780261 () Bool)

(assert (=> b!834983 m!780261))

(assert (=> b!834983 m!780261))

(declare-fun m!780263 () Bool)

(assert (=> b!834983 m!780263))

(declare-fun m!780265 () Bool)

(assert (=> b!834984 m!780265))

(declare-fun m!780267 () Bool)

(assert (=> b!834984 m!780267))

(declare-fun m!780269 () Bool)

(assert (=> b!834984 m!780269))

(push 1)

(assert (not b!834984))

(assert (not b!834983))

(assert (not b!834982))

(assert (not start!71888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

