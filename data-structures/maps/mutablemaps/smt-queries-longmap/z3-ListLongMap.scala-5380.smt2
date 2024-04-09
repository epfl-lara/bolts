; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71904 () Bool)

(assert start!71904)

(declare-fun b!835125 () Bool)

(declare-fun res!568174 () Bool)

(declare-fun e!465929 () Bool)

(assert (=> b!835125 (=> (not res!568174) (not e!465929))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835125 (= res!568174 (validKeyInArray!0 k0!2968))))

(declare-fun b!835126 () Bool)

(declare-fun res!568172 () Bool)

(declare-fun e!465928 () Bool)

(assert (=> b!835126 (=> (not res!568172) (not e!465928))))

(declare-datatypes ((array!46758 0))(
  ( (array!46759 (arr!22409 (Array (_ BitVec 32) (_ BitVec 64))) (size!22830 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46758)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835126 (= res!568172 (validKeyInArray!0 (select (arr!22409 a!4227) to!390)))))

(declare-fun res!568176 () Bool)

(assert (=> start!71904 (=> (not res!568176) (not e!465929))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> start!71904 (= res!568176 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22830 a!4227))))))

(assert (=> start!71904 e!465929))

(assert (=> start!71904 true))

(declare-fun array_inv!17832 (array!46758) Bool)

(assert (=> start!71904 (array_inv!17832 a!4227)))

(declare-fun b!835127 () Bool)

(declare-fun res!568173 () Bool)

(assert (=> b!835127 (=> (not res!568173) (not e!465929))))

(assert (=> b!835127 (= res!568173 (not (validKeyInArray!0 (select (arr!22409 a!4227) i!1466))))))

(declare-fun b!835128 () Bool)

(assert (=> b!835128 (= e!465928 (not true))))

(declare-fun lt!379615 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46758 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835128 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379615))))

(declare-datatypes ((Unit!28702 0))(
  ( (Unit!28703) )
))
(declare-fun lt!379616 () Unit!28702)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46758 (_ BitVec 32) (_ BitVec 32)) Unit!28702)

(assert (=> b!835128 (= lt!379616 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835129 () Bool)

(assert (=> b!835129 (= e!465929 e!465928)))

(declare-fun res!568177 () Bool)

(assert (=> b!835129 (=> (not res!568177) (not e!465928))))

(declare-fun lt!379617 () (_ BitVec 32))

(assert (=> b!835129 (= res!568177 (and (= lt!379617 lt!379615) (not (= to!390 (size!22830 a!4227)))))))

(assert (=> b!835129 (= lt!379615 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835129 (= lt!379617 (arrayCountValidKeys!0 (array!46759 (store (arr!22409 a!4227) i!1466 k0!2968) (size!22830 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835130 () Bool)

(declare-fun res!568175 () Bool)

(assert (=> b!835130 (=> (not res!568175) (not e!465929))))

(assert (=> b!835130 (= res!568175 (and (bvslt (size!22830 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22830 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71904 res!568176) b!835127))

(assert (= (and b!835127 res!568173) b!835125))

(assert (= (and b!835125 res!568174) b!835130))

(assert (= (and b!835130 res!568175) b!835129))

(assert (= (and b!835129 res!568177) b!835126))

(assert (= (and b!835126 res!568172) b!835128))

(declare-fun m!780389 () Bool)

(assert (=> b!835125 m!780389))

(declare-fun m!780391 () Bool)

(assert (=> b!835128 m!780391))

(declare-fun m!780393 () Bool)

(assert (=> b!835128 m!780393))

(declare-fun m!780395 () Bool)

(assert (=> b!835126 m!780395))

(assert (=> b!835126 m!780395))

(declare-fun m!780397 () Bool)

(assert (=> b!835126 m!780397))

(declare-fun m!780399 () Bool)

(assert (=> start!71904 m!780399))

(declare-fun m!780401 () Bool)

(assert (=> b!835129 m!780401))

(declare-fun m!780403 () Bool)

(assert (=> b!835129 m!780403))

(declare-fun m!780405 () Bool)

(assert (=> b!835129 m!780405))

(declare-fun m!780407 () Bool)

(assert (=> b!835127 m!780407))

(assert (=> b!835127 m!780407))

(declare-fun m!780409 () Bool)

(assert (=> b!835127 m!780409))

(check-sat (not start!71904) (not b!835129) (not b!835128) (not b!835126) (not b!835125) (not b!835127))
(check-sat)
