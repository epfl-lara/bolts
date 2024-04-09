; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71926 () Bool)

(assert start!71926)

(declare-fun b!835344 () Bool)

(declare-fun e!466029 () Bool)

(declare-fun e!466030 () Bool)

(assert (=> b!835344 (= e!466029 e!466030)))

(declare-fun res!568394 () Bool)

(assert (=> b!835344 (=> (not res!568394) (not e!466030))))

(declare-datatypes ((array!46780 0))(
  ( (array!46781 (arr!22420 (Array (_ BitVec 32) (_ BitVec 64))) (size!22841 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46780)

(declare-fun lt!379689 () (_ BitVec 32))

(declare-fun lt!379688 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835344 (= res!568394 (and (= lt!379688 lt!379689) (not (= to!390 (size!22841 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46780 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835344 (= lt!379689 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835344 (= lt!379688 (arrayCountValidKeys!0 (array!46781 (store (arr!22420 a!4227) i!1466 k!2968) (size!22841 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835345 () Bool)

(declare-fun res!568391 () Bool)

(assert (=> b!835345 (=> (not res!568391) (not e!466029))))

(assert (=> b!835345 (= res!568391 (and (bvslt (size!22841 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22841 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835346 () Bool)

(declare-fun e!466031 () Bool)

(assert (=> b!835346 (= e!466030 (not e!466031))))

(declare-fun res!568393 () Bool)

(assert (=> b!835346 (=> (not res!568393) (not e!466031))))

(assert (=> b!835346 (= res!568393 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22841 a!4227))))))

(assert (=> b!835346 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379689)))

(declare-datatypes ((Unit!28718 0))(
  ( (Unit!28719) )
))
(declare-fun lt!379687 () Unit!28718)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46780 (_ BitVec 32) (_ BitVec 32)) Unit!28718)

(assert (=> b!835346 (= lt!379687 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835347 () Bool)

(declare-fun res!568396 () Bool)

(assert (=> b!835347 (=> (not res!568396) (not e!466029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835347 (= res!568396 (not (validKeyInArray!0 (select (arr!22420 a!4227) i!1466))))))

(declare-fun b!835348 () Bool)

(declare-fun res!568395 () Bool)

(assert (=> b!835348 (=> (not res!568395) (not e!466030))))

(assert (=> b!835348 (= res!568395 (not (validKeyInArray!0 (select (arr!22420 a!4227) to!390))))))

(declare-fun b!835349 () Bool)

(assert (=> b!835349 (= e!466031 (not (validKeyInArray!0 (select (store (arr!22420 a!4227) i!1466 k!2968) to!390))))))

(declare-fun b!835343 () Bool)

(declare-fun res!568392 () Bool)

(assert (=> b!835343 (=> (not res!568392) (not e!466029))))

(assert (=> b!835343 (= res!568392 (validKeyInArray!0 k!2968))))

(declare-fun res!568390 () Bool)

(assert (=> start!71926 (=> (not res!568390) (not e!466029))))

(assert (=> start!71926 (= res!568390 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22841 a!4227))))))

(assert (=> start!71926 e!466029))

(assert (=> start!71926 true))

(declare-fun array_inv!17843 (array!46780) Bool)

(assert (=> start!71926 (array_inv!17843 a!4227)))

(assert (= (and start!71926 res!568390) b!835347))

(assert (= (and b!835347 res!568396) b!835343))

(assert (= (and b!835343 res!568392) b!835345))

(assert (= (and b!835345 res!568391) b!835344))

(assert (= (and b!835344 res!568394) b!835348))

(assert (= (and b!835348 res!568395) b!835346))

(assert (= (and b!835346 res!568393) b!835349))

(declare-fun m!780631 () Bool)

(assert (=> b!835349 m!780631))

(declare-fun m!780633 () Bool)

(assert (=> b!835349 m!780633))

(assert (=> b!835349 m!780633))

(declare-fun m!780635 () Bool)

(assert (=> b!835349 m!780635))

(declare-fun m!780637 () Bool)

(assert (=> b!835347 m!780637))

(assert (=> b!835347 m!780637))

(declare-fun m!780639 () Bool)

(assert (=> b!835347 m!780639))

(declare-fun m!780641 () Bool)

(assert (=> b!835344 m!780641))

(assert (=> b!835344 m!780631))

(declare-fun m!780643 () Bool)

(assert (=> b!835344 m!780643))

(declare-fun m!780645 () Bool)

(assert (=> b!835346 m!780645))

(declare-fun m!780647 () Bool)

(assert (=> b!835346 m!780647))

(declare-fun m!780649 () Bool)

(assert (=> b!835343 m!780649))

(declare-fun m!780651 () Bool)

(assert (=> b!835348 m!780651))

(assert (=> b!835348 m!780651))

(declare-fun m!780653 () Bool)

(assert (=> b!835348 m!780653))

(declare-fun m!780655 () Bool)

(assert (=> start!71926 m!780655))

(push 1)

(assert (not b!835348))

(assert (not b!835347))

(assert (not b!835344))

(assert (not b!835346))

(assert (not b!835349))

(assert (not start!71926))

(assert (not b!835343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

