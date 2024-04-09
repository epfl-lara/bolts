; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71902 () Bool)

(assert start!71902)

(declare-fun b!835107 () Bool)

(declare-fun res!568155 () Bool)

(declare-fun e!465920 () Bool)

(assert (=> b!835107 (=> (not res!568155) (not e!465920))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46756 0))(
  ( (array!46757 (arr!22408 (Array (_ BitVec 32) (_ BitVec 64))) (size!22829 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46756)

(assert (=> b!835107 (= res!568155 (and (bvslt (size!22829 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22829 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835108 () Bool)

(declare-fun res!568159 () Bool)

(declare-fun e!465918 () Bool)

(assert (=> b!835108 (=> (not res!568159) (not e!465918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835108 (= res!568159 (validKeyInArray!0 (select (arr!22408 a!4227) to!390)))))

(declare-fun b!835109 () Bool)

(declare-fun res!568154 () Bool)

(assert (=> b!835109 (=> (not res!568154) (not e!465920))))

(assert (=> b!835109 (= res!568154 (not (validKeyInArray!0 (select (arr!22408 a!4227) i!1466))))))

(declare-fun b!835111 () Bool)

(assert (=> b!835111 (= e!465918 (not true))))

(declare-fun lt!379607 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46756 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835111 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379607))))

(declare-datatypes ((Unit!28700 0))(
  ( (Unit!28701) )
))
(declare-fun lt!379606 () Unit!28700)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46756 (_ BitVec 32) (_ BitVec 32)) Unit!28700)

(assert (=> b!835111 (= lt!379606 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835112 () Bool)

(declare-fun res!568157 () Bool)

(assert (=> b!835112 (=> (not res!568157) (not e!465920))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835112 (= res!568157 (validKeyInArray!0 k!2968))))

(declare-fun res!568158 () Bool)

(assert (=> start!71902 (=> (not res!568158) (not e!465920))))

(assert (=> start!71902 (= res!568158 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22829 a!4227))))))

(assert (=> start!71902 e!465920))

(assert (=> start!71902 true))

(declare-fun array_inv!17831 (array!46756) Bool)

(assert (=> start!71902 (array_inv!17831 a!4227)))

(declare-fun b!835110 () Bool)

(assert (=> b!835110 (= e!465920 e!465918)))

(declare-fun res!568156 () Bool)

(assert (=> b!835110 (=> (not res!568156) (not e!465918))))

(declare-fun lt!379608 () (_ BitVec 32))

(assert (=> b!835110 (= res!568156 (and (= lt!379608 lt!379607) (not (= to!390 (size!22829 a!4227)))))))

(assert (=> b!835110 (= lt!379607 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835110 (= lt!379608 (arrayCountValidKeys!0 (array!46757 (store (arr!22408 a!4227) i!1466 k!2968) (size!22829 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (= (and start!71902 res!568158) b!835109))

(assert (= (and b!835109 res!568154) b!835112))

(assert (= (and b!835112 res!568157) b!835107))

(assert (= (and b!835107 res!568155) b!835110))

(assert (= (and b!835110 res!568156) b!835108))

(assert (= (and b!835108 res!568159) b!835111))

(declare-fun m!780367 () Bool)

(assert (=> b!835111 m!780367))

(declare-fun m!780369 () Bool)

(assert (=> b!835111 m!780369))

(declare-fun m!780371 () Bool)

(assert (=> start!71902 m!780371))

(declare-fun m!780373 () Bool)

(assert (=> b!835108 m!780373))

(assert (=> b!835108 m!780373))

(declare-fun m!780375 () Bool)

(assert (=> b!835108 m!780375))

(declare-fun m!780377 () Bool)

(assert (=> b!835109 m!780377))

(assert (=> b!835109 m!780377))

(declare-fun m!780379 () Bool)

(assert (=> b!835109 m!780379))

(declare-fun m!780381 () Bool)

(assert (=> b!835110 m!780381))

(declare-fun m!780383 () Bool)

(assert (=> b!835110 m!780383))

(declare-fun m!780385 () Bool)

(assert (=> b!835110 m!780385))

(declare-fun m!780387 () Bool)

(assert (=> b!835112 m!780387))

(push 1)

(assert (not b!835110))

(assert (not b!835112))

(assert (not b!835109))

(assert (not b!835108))

(assert (not start!71902))

