; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71936 () Bool)

(assert start!71936)

(declare-fun b!835448 () Bool)

(declare-fun res!568482 () Bool)

(declare-fun e!466091 () Bool)

(assert (=> b!835448 (=> (not res!568482) (not e!466091))))

(declare-datatypes ((array!46790 0))(
  ( (array!46791 (arr!22425 (Array (_ BitVec 32) (_ BitVec 64))) (size!22846 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46790)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835448 (= res!568482 (not (validKeyInArray!0 (select (arr!22425 a!4227) i!1466))))))

(declare-fun b!835449 () Bool)

(declare-fun res!568481 () Bool)

(assert (=> b!835449 (=> (not res!568481) (not e!466091))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835449 (= res!568481 (validKeyInArray!0 k!2968))))

(declare-fun b!835450 () Bool)

(declare-fun res!568483 () Bool)

(assert (=> b!835450 (=> (not res!568483) (not e!466091))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835450 (= res!568483 (and (bvslt (size!22846 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22846 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun call!36686 () (_ BitVec 32))

(declare-fun bm!36683 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46790 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36683 (= call!36686 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835451 () Bool)

(declare-fun e!466089 () Bool)

(assert (=> b!835451 (= e!466091 e!466089)))

(declare-fun res!568480 () Bool)

(assert (=> b!835451 (=> (not res!568480) (not e!466089))))

(declare-fun lt!379772 () (_ BitVec 32))

(declare-fun lt!379779 () (_ BitVec 32))

(assert (=> b!835451 (= res!568480 (and (= lt!379772 lt!379779) (not (= to!390 (size!22846 a!4227)))))))

(assert (=> b!835451 (= lt!379779 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379777 () array!46790)

(assert (=> b!835451 (= lt!379772 (arrayCountValidKeys!0 lt!379777 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835451 (= lt!379777 (array!46791 (store (arr!22425 a!4227) i!1466 k!2968) (size!22846 a!4227)))))

(declare-fun b!835452 () Bool)

(declare-datatypes ((Unit!28728 0))(
  ( (Unit!28729) )
))
(declare-fun e!466090 () Unit!28728)

(declare-fun lt!379776 () Unit!28728)

(assert (=> b!835452 (= e!466090 lt!379776)))

(declare-fun lt!379778 () Unit!28728)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46790 (_ BitVec 32) (_ BitVec 32)) Unit!28728)

(assert (=> b!835452 (= lt!379778 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835452 (= call!36686 (bvadd #b00000000000000000000000000000001 lt!379779))))

(assert (=> b!835452 (= lt!379776 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379777 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36685 () (_ BitVec 32))

(assert (=> b!835452 (= call!36685 (bvadd #b00000000000000000000000000000001 lt!379772))))

(declare-fun res!568479 () Bool)

(assert (=> start!71936 (=> (not res!568479) (not e!466091))))

(assert (=> start!71936 (= res!568479 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22846 a!4227))))))

(assert (=> start!71936 e!466091))

(assert (=> start!71936 true))

(declare-fun array_inv!17848 (array!46790) Bool)

(assert (=> start!71936 (array_inv!17848 a!4227)))

(declare-fun bm!36682 () Bool)

(assert (=> bm!36682 (= call!36685 (arrayCountValidKeys!0 lt!379777 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835453 () Bool)

(declare-fun lt!379773 () Unit!28728)

(assert (=> b!835453 (= e!466090 lt!379773)))

(declare-fun lt!379775 () Unit!28728)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46790 (_ BitVec 32) (_ BitVec 32)) Unit!28728)

(assert (=> b!835453 (= lt!379775 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835453 (= call!36686 lt!379779)))

(assert (=> b!835453 (= lt!379773 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379777 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835453 (= call!36685 lt!379772)))

(declare-fun b!835454 () Bool)

(assert (=> b!835454 (= e!466089 false)))

(declare-fun lt!379774 () Unit!28728)

(assert (=> b!835454 (= lt!379774 e!466090)))

(declare-fun c!90880 () Bool)

(assert (=> b!835454 (= c!90880 (validKeyInArray!0 (select (arr!22425 a!4227) to!390)))))

(assert (= (and start!71936 res!568479) b!835448))

(assert (= (and b!835448 res!568482) b!835449))

(assert (= (and b!835449 res!568481) b!835450))

(assert (= (and b!835450 res!568483) b!835451))

(assert (= (and b!835451 res!568480) b!835454))

(assert (= (and b!835454 c!90880) b!835452))

(assert (= (and b!835454 (not c!90880)) b!835453))

(assert (= (or b!835452 b!835453) bm!36682))

(assert (= (or b!835452 b!835453) bm!36683))

(declare-fun m!780769 () Bool)

(assert (=> b!835454 m!780769))

(assert (=> b!835454 m!780769))

(declare-fun m!780771 () Bool)

(assert (=> b!835454 m!780771))

(declare-fun m!780773 () Bool)

(assert (=> bm!36682 m!780773))

(declare-fun m!780775 () Bool)

(assert (=> b!835449 m!780775))

(declare-fun m!780777 () Bool)

(assert (=> b!835452 m!780777))

(declare-fun m!780779 () Bool)

(assert (=> b!835452 m!780779))

(declare-fun m!780781 () Bool)

(assert (=> b!835448 m!780781))

(assert (=> b!835448 m!780781))

(declare-fun m!780783 () Bool)

(assert (=> b!835448 m!780783))

(declare-fun m!780785 () Bool)

(assert (=> b!835453 m!780785))

(declare-fun m!780787 () Bool)

(assert (=> b!835453 m!780787))

(declare-fun m!780789 () Bool)

(assert (=> bm!36683 m!780789))

(declare-fun m!780791 () Bool)

(assert (=> b!835451 m!780791))

(declare-fun m!780793 () Bool)

(assert (=> b!835451 m!780793))

(declare-fun m!780795 () Bool)

(assert (=> b!835451 m!780795))

(declare-fun m!780797 () Bool)

(assert (=> start!71936 m!780797))

(push 1)

(assert (not start!71936))

