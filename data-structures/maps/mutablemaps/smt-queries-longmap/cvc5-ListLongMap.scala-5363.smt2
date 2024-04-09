; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71800 () Bool)

(assert start!71800)

(declare-fun res!567267 () Bool)

(declare-fun e!465362 () Bool)

(assert (=> start!71800 (=> (not res!567267) (not e!465362))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46654 0))(
  ( (array!46655 (arr!22357 (Array (_ BitVec 32) (_ BitVec 64))) (size!22778 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46654)

(assert (=> start!71800 (= res!567267 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22778 a!4227))))))

(assert (=> start!71800 e!465362))

(assert (=> start!71800 true))

(declare-fun array_inv!17780 (array!46654) Bool)

(assert (=> start!71800 (array_inv!17780 a!4227)))

(declare-fun b!834054 () Bool)

(declare-fun res!567264 () Bool)

(assert (=> b!834054 (=> (not res!567264) (not e!465362))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834054 (= res!567264 (validKeyInArray!0 k!2968))))

(declare-fun b!834055 () Bool)

(declare-fun res!567266 () Bool)

(declare-fun e!465360 () Bool)

(assert (=> b!834055 (=> (not res!567266) (not e!465360))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834055 (= res!567266 (not (validKeyInArray!0 (select (arr!22357 a!4227) to!390))))))

(declare-fun b!834056 () Bool)

(assert (=> b!834056 (= e!465360 (not true))))

(declare-fun lt!378770 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46654 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834056 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!378770)))

(declare-datatypes ((Unit!28640 0))(
  ( (Unit!28641) )
))
(declare-fun lt!378769 () Unit!28640)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46654 (_ BitVec 32) (_ BitVec 32)) Unit!28640)

(assert (=> b!834056 (= lt!378769 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834057 () Bool)

(declare-fun res!567265 () Bool)

(assert (=> b!834057 (=> (not res!567265) (not e!465362))))

(assert (=> b!834057 (= res!567265 (not (validKeyInArray!0 (select (arr!22357 a!4227) i!1466))))))

(declare-fun b!834058 () Bool)

(assert (=> b!834058 (= e!465362 e!465360)))

(declare-fun res!567268 () Bool)

(assert (=> b!834058 (=> (not res!567268) (not e!465360))))

(declare-fun lt!378771 () (_ BitVec 32))

(assert (=> b!834058 (= res!567268 (and (= lt!378771 lt!378770) (not (= to!390 (size!22778 a!4227)))))))

(assert (=> b!834058 (= lt!378770 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834058 (= lt!378771 (arrayCountValidKeys!0 (array!46655 (store (arr!22357 a!4227) i!1466 k!2968) (size!22778 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834059 () Bool)

(declare-fun res!567263 () Bool)

(assert (=> b!834059 (=> (not res!567263) (not e!465362))))

(assert (=> b!834059 (= res!567263 (and (bvslt (size!22778 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22778 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71800 res!567267) b!834057))

(assert (= (and b!834057 res!567265) b!834054))

(assert (= (and b!834054 res!567264) b!834059))

(assert (= (and b!834059 res!567263) b!834058))

(assert (= (and b!834058 res!567268) b!834055))

(assert (= (and b!834055 res!567266) b!834056))

(declare-fun m!779089 () Bool)

(assert (=> b!834057 m!779089))

(assert (=> b!834057 m!779089))

(declare-fun m!779091 () Bool)

(assert (=> b!834057 m!779091))

(declare-fun m!779093 () Bool)

(assert (=> b!834056 m!779093))

(declare-fun m!779095 () Bool)

(assert (=> b!834056 m!779095))

(declare-fun m!779097 () Bool)

(assert (=> start!71800 m!779097))

(declare-fun m!779099 () Bool)

(assert (=> b!834058 m!779099))

(declare-fun m!779101 () Bool)

(assert (=> b!834058 m!779101))

(declare-fun m!779103 () Bool)

(assert (=> b!834058 m!779103))

(declare-fun m!779105 () Bool)

(assert (=> b!834054 m!779105))

(declare-fun m!779107 () Bool)

(assert (=> b!834055 m!779107))

(assert (=> b!834055 m!779107))

(declare-fun m!779109 () Bool)

(assert (=> b!834055 m!779109))

(push 1)

