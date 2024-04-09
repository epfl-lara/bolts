; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117240 () Bool)

(assert start!117240)

(declare-fun b!1379064 () Bool)

(declare-fun res!921711 () Bool)

(declare-fun e!781245 () Bool)

(assert (=> b!1379064 (=> (not res!921711) (not e!781245))))

(declare-datatypes ((array!93773 0))(
  ( (array!93774 (arr!45282 (Array (_ BitVec 32) (_ BitVec 64))) (size!45833 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93773)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379064 (= res!921711 (validKeyInArray!0 (select (arr!45282 a!4094) i!1451)))))

(declare-fun b!1379065 () Bool)

(declare-fun res!921709 () Bool)

(assert (=> b!1379065 (=> (not res!921709) (not e!781245))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379065 (= res!921709 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379066 () Bool)

(declare-fun e!781246 () Bool)

(assert (=> b!1379066 (= e!781245 e!781246)))

(declare-fun res!921710 () Bool)

(assert (=> b!1379066 (=> (not res!921710) (not e!781246))))

(declare-fun lt!607122 () (_ BitVec 32))

(declare-fun lt!607120 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379066 (= res!921710 (and (= lt!607120 (bvsub lt!607122 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607119 () array!93773)

(declare-fun arrayCountValidKeys!0 (array!93773 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379066 (= lt!607120 (arrayCountValidKeys!0 lt!607119 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379066 (= lt!607122 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379066 (= lt!607119 (array!93774 (store (arr!45282 a!4094) i!1451 k!2953) (size!45833 a!4094)))))

(declare-fun res!921707 () Bool)

(assert (=> start!117240 (=> (not res!921707) (not e!781245))))

(assert (=> start!117240 (= res!921707 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45833 a!4094))))))

(assert (=> start!117240 e!781245))

(assert (=> start!117240 true))

(declare-fun array_inv!34227 (array!93773) Bool)

(assert (=> start!117240 (array_inv!34227 a!4094)))

(declare-fun b!1379067 () Bool)

(declare-fun res!921708 () Bool)

(assert (=> b!1379067 (=> (not res!921708) (not e!781245))))

(assert (=> b!1379067 (= res!921708 (and (bvslt (size!45833 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45833 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379068 () Bool)

(assert (=> b!1379068 (= e!781246 (not true))))

(assert (=> b!1379068 (= (bvadd (arrayCountValidKeys!0 lt!607119 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607120) (arrayCountValidKeys!0 lt!607119 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45789 0))(
  ( (Unit!45790) )
))
(declare-fun lt!607121 () Unit!45789)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45789)

(assert (=> b!1379068 (= lt!607121 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607119 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379068 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607122) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607123 () Unit!45789)

(assert (=> b!1379068 (= lt!607123 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117240 res!921707) b!1379064))

(assert (= (and b!1379064 res!921711) b!1379065))

(assert (= (and b!1379065 res!921709) b!1379067))

(assert (= (and b!1379067 res!921708) b!1379066))

(assert (= (and b!1379066 res!921710) b!1379068))

(declare-fun m!1264051 () Bool)

(assert (=> start!117240 m!1264051))

(declare-fun m!1264053 () Bool)

(assert (=> b!1379065 m!1264053))

(declare-fun m!1264055 () Bool)

(assert (=> b!1379068 m!1264055))

(declare-fun m!1264057 () Bool)

(assert (=> b!1379068 m!1264057))

(declare-fun m!1264059 () Bool)

(assert (=> b!1379068 m!1264059))

(declare-fun m!1264061 () Bool)

(assert (=> b!1379068 m!1264061))

(declare-fun m!1264063 () Bool)

(assert (=> b!1379068 m!1264063))

(declare-fun m!1264065 () Bool)

(assert (=> b!1379068 m!1264065))

(declare-fun m!1264067 () Bool)

(assert (=> b!1379066 m!1264067))

(declare-fun m!1264069 () Bool)

(assert (=> b!1379066 m!1264069))

(declare-fun m!1264071 () Bool)

(assert (=> b!1379066 m!1264071))

(declare-fun m!1264073 () Bool)

(assert (=> b!1379064 m!1264073))

(assert (=> b!1379064 m!1264073))

(declare-fun m!1264075 () Bool)

(assert (=> b!1379064 m!1264075))

(push 1)

(assert (not b!1379065))

(assert (not start!117240))

(assert (not b!1379064))

(assert (not b!1379068))

(assert (not b!1379066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

