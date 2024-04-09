; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71930 () Bool)

(assert start!71930)

(declare-fun b!835385 () Bool)

(declare-fun res!568438 () Bool)

(declare-fun e!466054 () Bool)

(assert (=> b!835385 (=> (not res!568438) (not e!466054))))

(declare-datatypes ((array!46784 0))(
  ( (array!46785 (arr!22422 (Array (_ BitVec 32) (_ BitVec 64))) (size!22843 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46784)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835385 (= res!568438 (not (validKeyInArray!0 (select (arr!22422 a!4227) to!390))))))

(declare-fun res!568436 () Bool)

(declare-fun e!466052 () Bool)

(assert (=> start!71930 (=> (not res!568436) (not e!466052))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> start!71930 (= res!568436 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22843 a!4227))))))

(assert (=> start!71930 e!466052))

(assert (=> start!71930 true))

(declare-fun array_inv!17845 (array!46784) Bool)

(assert (=> start!71930 (array_inv!17845 a!4227)))

(declare-fun b!835386 () Bool)

(declare-fun e!466055 () Bool)

(assert (=> b!835386 (= e!466054 (not e!466055))))

(declare-fun res!568432 () Bool)

(assert (=> b!835386 (=> (not res!568432) (not e!466055))))

(assert (=> b!835386 (= res!568432 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22843 a!4227))))))

(declare-fun lt!379705 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46784 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835386 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379705)))

(declare-datatypes ((Unit!28722 0))(
  ( (Unit!28723) )
))
(declare-fun lt!379706 () Unit!28722)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46784 (_ BitVec 32) (_ BitVec 32)) Unit!28722)

(assert (=> b!835386 (= lt!379706 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835387 () Bool)

(declare-fun res!568434 () Bool)

(assert (=> b!835387 (=> (not res!568434) (not e!466052))))

(assert (=> b!835387 (= res!568434 (not (validKeyInArray!0 (select (arr!22422 a!4227) i!1466))))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun b!835388 () Bool)

(assert (=> b!835388 (= e!466055 (not (validKeyInArray!0 (select (store (arr!22422 a!4227) i!1466 k!2968) to!390))))))

(declare-fun b!835389 () Bool)

(assert (=> b!835389 (= e!466052 e!466054)))

(declare-fun res!568437 () Bool)

(assert (=> b!835389 (=> (not res!568437) (not e!466054))))

(declare-fun lt!379707 () (_ BitVec 32))

(assert (=> b!835389 (= res!568437 (and (= lt!379707 lt!379705) (not (= to!390 (size!22843 a!4227)))))))

(assert (=> b!835389 (= lt!379705 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835389 (= lt!379707 (arrayCountValidKeys!0 (array!46785 (store (arr!22422 a!4227) i!1466 k!2968) (size!22843 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835390 () Bool)

(declare-fun res!568435 () Bool)

(assert (=> b!835390 (=> (not res!568435) (not e!466052))))

(assert (=> b!835390 (= res!568435 (and (bvslt (size!22843 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22843 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835391 () Bool)

(declare-fun res!568433 () Bool)

(assert (=> b!835391 (=> (not res!568433) (not e!466052))))

(assert (=> b!835391 (= res!568433 (validKeyInArray!0 k!2968))))

(assert (= (and start!71930 res!568436) b!835387))

(assert (= (and b!835387 res!568434) b!835391))

(assert (= (and b!835391 res!568433) b!835390))

(assert (= (and b!835390 res!568435) b!835389))

(assert (= (and b!835389 res!568437) b!835385))

(assert (= (and b!835385 res!568438) b!835386))

(assert (= (and b!835386 res!568432) b!835388))

(declare-fun m!780683 () Bool)

(assert (=> b!835389 m!780683))

(declare-fun m!780685 () Bool)

(assert (=> b!835389 m!780685))

(declare-fun m!780687 () Bool)

(assert (=> b!835389 m!780687))

(declare-fun m!780689 () Bool)

(assert (=> b!835387 m!780689))

(assert (=> b!835387 m!780689))

(declare-fun m!780691 () Bool)

(assert (=> b!835387 m!780691))

(assert (=> b!835388 m!780685))

(declare-fun m!780693 () Bool)

(assert (=> b!835388 m!780693))

(assert (=> b!835388 m!780693))

(declare-fun m!780695 () Bool)

(assert (=> b!835388 m!780695))

(declare-fun m!780697 () Bool)

(assert (=> start!71930 m!780697))

(declare-fun m!780699 () Bool)

(assert (=> b!835385 m!780699))

(assert (=> b!835385 m!780699))

(declare-fun m!780701 () Bool)

(assert (=> b!835385 m!780701))

(declare-fun m!780703 () Bool)

(assert (=> b!835386 m!780703))

(declare-fun m!780705 () Bool)

(assert (=> b!835386 m!780705))

(declare-fun m!780707 () Bool)

(assert (=> b!835391 m!780707))

(push 1)

(assert (not b!835391))

(assert (not b!835386))

(assert (not b!835385))

(assert (not start!71930))

(assert (not b!835387))

(assert (not b!835389))

(assert (not b!835388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

