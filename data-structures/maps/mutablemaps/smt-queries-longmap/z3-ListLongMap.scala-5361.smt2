; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71790 () Bool)

(assert start!71790)

(declare-fun res!567191 () Bool)

(declare-fun e!465325 () Bool)

(assert (=> start!71790 (=> (not res!567191) (not e!465325))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46644 0))(
  ( (array!46645 (arr!22352 (Array (_ BitVec 32) (_ BitVec 64))) (size!22773 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46644)

(assert (=> start!71790 (= res!567191 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22773 a!4227))))))

(assert (=> start!71790 e!465325))

(assert (=> start!71790 true))

(declare-fun array_inv!17775 (array!46644) Bool)

(assert (=> start!71790 (array_inv!17775 a!4227)))

(declare-fun b!833982 () Bool)

(declare-fun res!567194 () Bool)

(assert (=> b!833982 (=> (not res!567194) (not e!465325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833982 (= res!567194 (not (validKeyInArray!0 (select (arr!22352 a!4227) i!1466))))))

(declare-fun b!833983 () Bool)

(declare-fun res!567196 () Bool)

(assert (=> b!833983 (=> (not res!567196) (not e!465325))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833983 (= res!567196 (and (bvslt (size!22773 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22773 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!833984 () Bool)

(declare-fun e!465326 () Bool)

(assert (=> b!833984 (= e!465325 e!465326)))

(declare-fun res!567193 () Bool)

(assert (=> b!833984 (=> (not res!567193) (not e!465326))))

(declare-fun lt!378733 () (_ BitVec 32))

(declare-fun lt!378735 () (_ BitVec 32))

(assert (=> b!833984 (= res!567193 (and (= lt!378735 lt!378733) (not (= to!390 (size!22773 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!833984 (= lt!378733 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!833984 (= lt!378735 (arrayCountValidKeys!0 (array!46645 (store (arr!22352 a!4227) i!1466 k0!2968) (size!22773 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!833985 () Bool)

(declare-fun res!567192 () Bool)

(assert (=> b!833985 (=> (not res!567192) (not e!465325))))

(assert (=> b!833985 (= res!567192 (validKeyInArray!0 k0!2968))))

(declare-fun b!833986 () Bool)

(assert (=> b!833986 (= e!465326 (not true))))

(assert (=> b!833986 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!378733))))

(declare-datatypes ((Unit!28636 0))(
  ( (Unit!28637) )
))
(declare-fun lt!378734 () Unit!28636)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46644 (_ BitVec 32) (_ BitVec 32)) Unit!28636)

(assert (=> b!833986 (= lt!378734 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!833987 () Bool)

(declare-fun res!567195 () Bool)

(assert (=> b!833987 (=> (not res!567195) (not e!465326))))

(assert (=> b!833987 (= res!567195 (validKeyInArray!0 (select (arr!22352 a!4227) to!390)))))

(assert (= (and start!71790 res!567191) b!833982))

(assert (= (and b!833982 res!567194) b!833985))

(assert (= (and b!833985 res!567192) b!833983))

(assert (= (and b!833983 res!567196) b!833984))

(assert (= (and b!833984 res!567193) b!833987))

(assert (= (and b!833987 res!567195) b!833986))

(declare-fun m!779003 () Bool)

(assert (=> b!833986 m!779003))

(declare-fun m!779005 () Bool)

(assert (=> b!833986 m!779005))

(declare-fun m!779007 () Bool)

(assert (=> start!71790 m!779007))

(declare-fun m!779009 () Bool)

(assert (=> b!833982 m!779009))

(assert (=> b!833982 m!779009))

(declare-fun m!779011 () Bool)

(assert (=> b!833982 m!779011))

(declare-fun m!779013 () Bool)

(assert (=> b!833984 m!779013))

(declare-fun m!779015 () Bool)

(assert (=> b!833984 m!779015))

(declare-fun m!779017 () Bool)

(assert (=> b!833984 m!779017))

(declare-fun m!779019 () Bool)

(assert (=> b!833985 m!779019))

(declare-fun m!779021 () Bool)

(assert (=> b!833987 m!779021))

(assert (=> b!833987 m!779021))

(declare-fun m!779023 () Bool)

(assert (=> b!833987 m!779023))

(check-sat (not b!833987) (not start!71790) (not b!833982) (not b!833986) (not b!833985) (not b!833984))
