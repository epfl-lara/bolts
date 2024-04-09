; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71922 () Bool)

(assert start!71922)

(declare-fun b!835305 () Bool)

(declare-fun res!568357 () Bool)

(declare-fun e!466009 () Bool)

(assert (=> b!835305 (=> (not res!568357) (not e!466009))))

(declare-datatypes ((array!46776 0))(
  ( (array!46777 (arr!22418 (Array (_ BitVec 32) (_ BitVec 64))) (size!22839 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46776)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835305 (= res!568357 (and (bvslt (size!22839 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22839 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835306 () Bool)

(declare-fun res!568354 () Bool)

(assert (=> b!835306 (=> (not res!568354) (not e!466009))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835306 (= res!568354 (validKeyInArray!0 k0!2968))))

(declare-fun b!835307 () Bool)

(declare-fun res!568352 () Bool)

(assert (=> b!835307 (=> (not res!568352) (not e!466009))))

(assert (=> b!835307 (= res!568352 (not (validKeyInArray!0 (select (arr!22418 a!4227) i!1466))))))

(declare-fun b!835308 () Bool)

(declare-fun e!466008 () Bool)

(assert (=> b!835308 (= e!466008 (not true))))

(declare-fun lt!379671 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46776 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835308 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379671)))

(declare-datatypes ((Unit!28714 0))(
  ( (Unit!28715) )
))
(declare-fun lt!379670 () Unit!28714)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46776 (_ BitVec 32) (_ BitVec 32)) Unit!28714)

(assert (=> b!835308 (= lt!379670 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835309 () Bool)

(declare-fun res!568356 () Bool)

(assert (=> b!835309 (=> (not res!568356) (not e!466008))))

(assert (=> b!835309 (= res!568356 (not (validKeyInArray!0 (select (arr!22418 a!4227) to!390))))))

(declare-fun res!568355 () Bool)

(assert (=> start!71922 (=> (not res!568355) (not e!466009))))

(assert (=> start!71922 (= res!568355 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22839 a!4227))))))

(assert (=> start!71922 e!466009))

(assert (=> start!71922 true))

(declare-fun array_inv!17841 (array!46776) Bool)

(assert (=> start!71922 (array_inv!17841 a!4227)))

(declare-fun b!835310 () Bool)

(assert (=> b!835310 (= e!466009 e!466008)))

(declare-fun res!568353 () Bool)

(assert (=> b!835310 (=> (not res!568353) (not e!466008))))

(declare-fun lt!379669 () (_ BitVec 32))

(assert (=> b!835310 (= res!568353 (and (= lt!379669 lt!379671) (not (= to!390 (size!22839 a!4227)))))))

(assert (=> b!835310 (= lt!379671 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835310 (= lt!379669 (arrayCountValidKeys!0 (array!46777 (store (arr!22418 a!4227) i!1466 k0!2968) (size!22839 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (= (and start!71922 res!568355) b!835307))

(assert (= (and b!835307 res!568352) b!835306))

(assert (= (and b!835306 res!568354) b!835305))

(assert (= (and b!835305 res!568357) b!835310))

(assert (= (and b!835310 res!568353) b!835309))

(assert (= (and b!835309 res!568356) b!835308))

(declare-fun m!780587 () Bool)

(assert (=> b!835307 m!780587))

(assert (=> b!835307 m!780587))

(declare-fun m!780589 () Bool)

(assert (=> b!835307 m!780589))

(declare-fun m!780591 () Bool)

(assert (=> b!835310 m!780591))

(declare-fun m!780593 () Bool)

(assert (=> b!835310 m!780593))

(declare-fun m!780595 () Bool)

(assert (=> b!835310 m!780595))

(declare-fun m!780597 () Bool)

(assert (=> start!71922 m!780597))

(declare-fun m!780599 () Bool)

(assert (=> b!835309 m!780599))

(assert (=> b!835309 m!780599))

(declare-fun m!780601 () Bool)

(assert (=> b!835309 m!780601))

(declare-fun m!780603 () Bool)

(assert (=> b!835308 m!780603))

(declare-fun m!780605 () Bool)

(assert (=> b!835308 m!780605))

(declare-fun m!780607 () Bool)

(assert (=> b!835306 m!780607))

(check-sat (not b!835307) (not b!835310) (not b!835308) (not start!71922) (not b!835309) (not b!835306))
