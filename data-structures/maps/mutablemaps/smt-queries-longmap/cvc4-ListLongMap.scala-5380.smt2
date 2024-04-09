; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71906 () Bool)

(assert start!71906)

(declare-fun b!835143 () Bool)

(declare-fun res!568192 () Bool)

(declare-fun e!465938 () Bool)

(assert (=> b!835143 (=> (not res!568192) (not e!465938))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835143 (= res!568192 (validKeyInArray!0 k!2968))))

(declare-fun b!835144 () Bool)

(declare-fun res!568190 () Bool)

(assert (=> b!835144 (=> (not res!568190) (not e!465938))))

(declare-datatypes ((array!46760 0))(
  ( (array!46761 (arr!22410 (Array (_ BitVec 32) (_ BitVec 64))) (size!22831 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46760)

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!835144 (= res!568190 (not (validKeyInArray!0 (select (arr!22410 a!4227) i!1466))))))

(declare-fun res!568191 () Bool)

(assert (=> start!71906 (=> (not res!568191) (not e!465938))))

(assert (=> start!71906 (= res!568191 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22831 a!4227))))))

(assert (=> start!71906 e!465938))

(assert (=> start!71906 true))

(declare-fun array_inv!17833 (array!46760) Bool)

(assert (=> start!71906 (array_inv!17833 a!4227)))

(declare-fun b!835145 () Bool)

(declare-fun e!465937 () Bool)

(assert (=> b!835145 (= e!465938 e!465937)))

(declare-fun res!568195 () Bool)

(assert (=> b!835145 (=> (not res!568195) (not e!465937))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379626 () (_ BitVec 32))

(declare-fun lt!379624 () (_ BitVec 32))

(assert (=> b!835145 (= res!568195 (and (= lt!379626 lt!379624) (not (= to!390 (size!22831 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46760 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835145 (= lt!379624 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835145 (= lt!379626 (arrayCountValidKeys!0 (array!46761 (store (arr!22410 a!4227) i!1466 k!2968) (size!22831 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835146 () Bool)

(assert (=> b!835146 (= e!465937 (not true))))

(assert (=> b!835146 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379624))))

(declare-datatypes ((Unit!28704 0))(
  ( (Unit!28705) )
))
(declare-fun lt!379625 () Unit!28704)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46760 (_ BitVec 32) (_ BitVec 32)) Unit!28704)

(assert (=> b!835146 (= lt!379625 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835147 () Bool)

(declare-fun res!568194 () Bool)

(assert (=> b!835147 (=> (not res!568194) (not e!465937))))

(assert (=> b!835147 (= res!568194 (validKeyInArray!0 (select (arr!22410 a!4227) to!390)))))

(declare-fun b!835148 () Bool)

(declare-fun res!568193 () Bool)

(assert (=> b!835148 (=> (not res!568193) (not e!465938))))

(assert (=> b!835148 (= res!568193 (and (bvslt (size!22831 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22831 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71906 res!568191) b!835144))

(assert (= (and b!835144 res!568190) b!835143))

(assert (= (and b!835143 res!568192) b!835148))

(assert (= (and b!835148 res!568193) b!835145))

(assert (= (and b!835145 res!568195) b!835147))

(assert (= (and b!835147 res!568194) b!835146))

(declare-fun m!780411 () Bool)

(assert (=> b!835144 m!780411))

(assert (=> b!835144 m!780411))

(declare-fun m!780413 () Bool)

(assert (=> b!835144 m!780413))

(declare-fun m!780415 () Bool)

(assert (=> b!835145 m!780415))

(declare-fun m!780417 () Bool)

(assert (=> b!835145 m!780417))

(declare-fun m!780419 () Bool)

(assert (=> b!835145 m!780419))

(declare-fun m!780421 () Bool)

(assert (=> b!835147 m!780421))

(assert (=> b!835147 m!780421))

(declare-fun m!780423 () Bool)

(assert (=> b!835147 m!780423))

(declare-fun m!780425 () Bool)

(assert (=> b!835143 m!780425))

(declare-fun m!780427 () Bool)

(assert (=> start!71906 m!780427))

(declare-fun m!780429 () Bool)

(assert (=> b!835146 m!780429))

(declare-fun m!780431 () Bool)

(assert (=> b!835146 m!780431))

(push 1)

(assert (not b!835147))

(assert (not b!835145))

(assert (not b!835146))

(assert (not b!835144))

(assert (not b!835143))

(assert (not start!71906))

(check-sat)

