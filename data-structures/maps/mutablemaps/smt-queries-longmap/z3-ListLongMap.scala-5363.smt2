; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71802 () Bool)

(assert start!71802)

(declare-fun b!834072 () Bool)

(declare-fun res!567284 () Bool)

(declare-fun e!465371 () Bool)

(assert (=> b!834072 (=> (not res!567284) (not e!465371))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834072 (= res!567284 (validKeyInArray!0 k0!2968))))

(declare-fun b!834073 () Bool)

(declare-fun e!465370 () Bool)

(assert (=> b!834073 (= e!465371 e!465370)))

(declare-fun res!567286 () Bool)

(assert (=> b!834073 (=> (not res!567286) (not e!465370))))

(declare-datatypes ((array!46656 0))(
  ( (array!46657 (arr!22358 (Array (_ BitVec 32) (_ BitVec 64))) (size!22779 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46656)

(declare-fun lt!378779 () (_ BitVec 32))

(declare-fun lt!378780 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834073 (= res!567286 (and (= lt!378780 lt!378779) (not (= to!390 (size!22779 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46656 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834073 (= lt!378779 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834073 (= lt!378780 (arrayCountValidKeys!0 (array!46657 (store (arr!22358 a!4227) i!1466 k0!2968) (size!22779 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834074 () Bool)

(declare-fun res!567282 () Bool)

(assert (=> b!834074 (=> (not res!567282) (not e!465370))))

(assert (=> b!834074 (= res!567282 (not (validKeyInArray!0 (select (arr!22358 a!4227) to!390))))))

(declare-fun res!567281 () Bool)

(assert (=> start!71802 (=> (not res!567281) (not e!465371))))

(assert (=> start!71802 (= res!567281 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22779 a!4227))))))

(assert (=> start!71802 e!465371))

(assert (=> start!71802 true))

(declare-fun array_inv!17781 (array!46656) Bool)

(assert (=> start!71802 (array_inv!17781 a!4227)))

(declare-fun b!834075 () Bool)

(declare-fun res!567283 () Bool)

(assert (=> b!834075 (=> (not res!567283) (not e!465371))))

(assert (=> b!834075 (= res!567283 (not (validKeyInArray!0 (select (arr!22358 a!4227) i!1466))))))

(declare-fun b!834076 () Bool)

(assert (=> b!834076 (= e!465370 (not true))))

(assert (=> b!834076 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!378779)))

(declare-datatypes ((Unit!28642 0))(
  ( (Unit!28643) )
))
(declare-fun lt!378778 () Unit!28642)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46656 (_ BitVec 32) (_ BitVec 32)) Unit!28642)

(assert (=> b!834076 (= lt!378778 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834077 () Bool)

(declare-fun res!567285 () Bool)

(assert (=> b!834077 (=> (not res!567285) (not e!465371))))

(assert (=> b!834077 (= res!567285 (and (bvslt (size!22779 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22779 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71802 res!567281) b!834075))

(assert (= (and b!834075 res!567283) b!834072))

(assert (= (and b!834072 res!567284) b!834077))

(assert (= (and b!834077 res!567285) b!834073))

(assert (= (and b!834073 res!567286) b!834074))

(assert (= (and b!834074 res!567282) b!834076))

(declare-fun m!779111 () Bool)

(assert (=> b!834074 m!779111))

(assert (=> b!834074 m!779111))

(declare-fun m!779113 () Bool)

(assert (=> b!834074 m!779113))

(declare-fun m!779115 () Bool)

(assert (=> b!834075 m!779115))

(assert (=> b!834075 m!779115))

(declare-fun m!779117 () Bool)

(assert (=> b!834075 m!779117))

(declare-fun m!779119 () Bool)

(assert (=> b!834072 m!779119))

(declare-fun m!779121 () Bool)

(assert (=> b!834073 m!779121))

(declare-fun m!779123 () Bool)

(assert (=> b!834073 m!779123))

(declare-fun m!779125 () Bool)

(assert (=> b!834073 m!779125))

(declare-fun m!779127 () Bool)

(assert (=> b!834076 m!779127))

(declare-fun m!779129 () Bool)

(assert (=> b!834076 m!779129))

(declare-fun m!779131 () Bool)

(assert (=> start!71802 m!779131))

(check-sat (not b!834073) (not b!834076) (not b!834075) (not b!834072) (not start!71802) (not b!834074))
(check-sat)
