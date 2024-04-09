; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71924 () Bool)

(assert start!71924)

(declare-fun b!835323 () Bool)

(declare-fun res!568372 () Bool)

(declare-fun e!466019 () Bool)

(assert (=> b!835323 (=> (not res!568372) (not e!466019))))

(declare-datatypes ((array!46778 0))(
  ( (array!46779 (arr!22419 (Array (_ BitVec 32) (_ BitVec 64))) (size!22840 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46778)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835323 (= res!568372 (not (validKeyInArray!0 (select (arr!22419 a!4227) i!1466))))))

(declare-fun res!568374 () Bool)

(assert (=> start!71924 (=> (not res!568374) (not e!466019))))

(assert (=> start!71924 (= res!568374 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22840 a!4227))))))

(assert (=> start!71924 e!466019))

(assert (=> start!71924 true))

(declare-fun array_inv!17842 (array!46778) Bool)

(assert (=> start!71924 (array_inv!17842 a!4227)))

(declare-fun b!835324 () Bool)

(declare-fun e!466017 () Bool)

(assert (=> b!835324 (= e!466017 (not true))))

(declare-fun lt!379680 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46778 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835324 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379680)))

(declare-datatypes ((Unit!28716 0))(
  ( (Unit!28717) )
))
(declare-fun lt!379679 () Unit!28716)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46778 (_ BitVec 32) (_ BitVec 32)) Unit!28716)

(assert (=> b!835324 (= lt!379679 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835325 () Bool)

(declare-fun res!568370 () Bool)

(assert (=> b!835325 (=> (not res!568370) (not e!466019))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835325 (= res!568370 (validKeyInArray!0 k!2968))))

(declare-fun b!835326 () Bool)

(declare-fun res!568371 () Bool)

(assert (=> b!835326 (=> (not res!568371) (not e!466019))))

(assert (=> b!835326 (= res!568371 (and (bvslt (size!22840 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22840 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835327 () Bool)

(assert (=> b!835327 (= e!466019 e!466017)))

(declare-fun res!568373 () Bool)

(assert (=> b!835327 (=> (not res!568373) (not e!466017))))

(declare-fun lt!379678 () (_ BitVec 32))

(assert (=> b!835327 (= res!568373 (and (= lt!379678 lt!379680) (not (= to!390 (size!22840 a!4227)))))))

(assert (=> b!835327 (= lt!379680 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835327 (= lt!379678 (arrayCountValidKeys!0 (array!46779 (store (arr!22419 a!4227) i!1466 k!2968) (size!22840 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835328 () Bool)

(declare-fun res!568375 () Bool)

(assert (=> b!835328 (=> (not res!568375) (not e!466017))))

(assert (=> b!835328 (= res!568375 (not (validKeyInArray!0 (select (arr!22419 a!4227) to!390))))))

(assert (= (and start!71924 res!568374) b!835323))

(assert (= (and b!835323 res!568372) b!835325))

(assert (= (and b!835325 res!568370) b!835326))

(assert (= (and b!835326 res!568371) b!835327))

(assert (= (and b!835327 res!568373) b!835328))

(assert (= (and b!835328 res!568375) b!835324))

(declare-fun m!780609 () Bool)

(assert (=> b!835325 m!780609))

(declare-fun m!780611 () Bool)

(assert (=> b!835327 m!780611))

(declare-fun m!780613 () Bool)

(assert (=> b!835327 m!780613))

(declare-fun m!780615 () Bool)

(assert (=> b!835327 m!780615))

(declare-fun m!780617 () Bool)

(assert (=> b!835324 m!780617))

(declare-fun m!780619 () Bool)

(assert (=> b!835324 m!780619))

(declare-fun m!780621 () Bool)

(assert (=> b!835328 m!780621))

(assert (=> b!835328 m!780621))

(declare-fun m!780623 () Bool)

(assert (=> b!835328 m!780623))

(declare-fun m!780625 () Bool)

(assert (=> b!835323 m!780625))

(assert (=> b!835323 m!780625))

(declare-fun m!780627 () Bool)

(assert (=> b!835323 m!780627))

(declare-fun m!780629 () Bool)

(assert (=> start!71924 m!780629))

(push 1)

(assert (not b!835325))

(assert (not b!835324))

(assert (not b!835323))

(assert (not b!835328))

(assert (not start!71924))

(assert (not b!835327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

