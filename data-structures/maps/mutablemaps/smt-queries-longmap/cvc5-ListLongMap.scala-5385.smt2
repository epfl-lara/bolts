; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71932 () Bool)

(assert start!71932)

(declare-fun b!835406 () Bool)

(declare-fun e!466065 () Bool)

(declare-fun e!466066 () Bool)

(assert (=> b!835406 (= e!466065 e!466066)))

(declare-fun res!568453 () Bool)

(assert (=> b!835406 (=> (not res!568453) (not e!466066))))

(declare-datatypes ((array!46786 0))(
  ( (array!46787 (arr!22423 (Array (_ BitVec 32) (_ BitVec 64))) (size!22844 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46786)

(declare-fun lt!379729 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379731 () (_ BitVec 32))

(assert (=> b!835406 (= res!568453 (and (= lt!379729 lt!379731) (not (= to!390 (size!22844 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46786 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835406 (= lt!379731 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379724 () array!46786)

(assert (=> b!835406 (= lt!379729 (arrayCountValidKeys!0 lt!379724 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835406 (= lt!379724 (array!46787 (store (arr!22423 a!4227) i!1466 k!2968) (size!22844 a!4227)))))

(declare-fun c!90874 () Bool)

(declare-fun call!36674 () (_ BitVec 32))

(declare-fun bm!36670 () Bool)

(assert (=> bm!36670 (= call!36674 (arrayCountValidKeys!0 (ite c!90874 a!4227 lt!379724) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun call!36673 () (_ BitVec 32))

(declare-fun bm!36671 () Bool)

(assert (=> bm!36671 (= call!36673 (arrayCountValidKeys!0 (ite c!90874 lt!379724 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835407 () Bool)

(declare-fun res!568451 () Bool)

(assert (=> b!835407 (=> (not res!568451) (not e!466065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835407 (= res!568451 (not (validKeyInArray!0 (select (arr!22423 a!4227) i!1466))))))

(declare-fun b!835408 () Bool)

(declare-fun res!568450 () Bool)

(assert (=> b!835408 (=> (not res!568450) (not e!466065))))

(assert (=> b!835408 (= res!568450 (and (bvslt (size!22844 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22844 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835409 () Bool)

(declare-datatypes ((Unit!28724 0))(
  ( (Unit!28725) )
))
(declare-fun e!466067 () Unit!28724)

(declare-fun lt!379730 () Unit!28724)

(assert (=> b!835409 (= e!466067 lt!379730)))

(declare-fun lt!379727 () Unit!28724)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46786 (_ BitVec 32) (_ BitVec 32)) Unit!28724)

(assert (=> b!835409 (= lt!379727 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835409 (= call!36673 lt!379731)))

(assert (=> b!835409 (= lt!379730 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379724 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835409 (= call!36674 lt!379729)))

(declare-fun res!568452 () Bool)

(assert (=> start!71932 (=> (not res!568452) (not e!466065))))

(assert (=> start!71932 (= res!568452 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22844 a!4227))))))

(assert (=> start!71932 e!466065))

(assert (=> start!71932 true))

(declare-fun array_inv!17846 (array!46786) Bool)

(assert (=> start!71932 (array_inv!17846 a!4227)))

(declare-fun b!835410 () Bool)

(declare-fun lt!379726 () Unit!28724)

(assert (=> b!835410 (= e!466067 lt!379726)))

(declare-fun lt!379725 () Unit!28724)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46786 (_ BitVec 32) (_ BitVec 32)) Unit!28724)

(assert (=> b!835410 (= lt!379725 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835410 (= call!36674 (bvadd #b00000000000000000000000000000001 lt!379731))))

(assert (=> b!835410 (= lt!379726 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379724 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835410 (= call!36673 (bvadd #b00000000000000000000000000000001 lt!379729))))

(declare-fun b!835411 () Bool)

(declare-fun res!568449 () Bool)

(assert (=> b!835411 (=> (not res!568449) (not e!466065))))

(assert (=> b!835411 (= res!568449 (validKeyInArray!0 k!2968))))

(declare-fun b!835412 () Bool)

(assert (=> b!835412 (= e!466066 false)))

(declare-fun lt!379728 () Unit!28724)

(assert (=> b!835412 (= lt!379728 e!466067)))

(assert (=> b!835412 (= c!90874 (validKeyInArray!0 (select (arr!22423 a!4227) to!390)))))

(assert (= (and start!71932 res!568452) b!835407))

(assert (= (and b!835407 res!568451) b!835411))

(assert (= (and b!835411 res!568449) b!835408))

(assert (= (and b!835408 res!568450) b!835406))

(assert (= (and b!835406 res!568453) b!835412))

(assert (= (and b!835412 c!90874) b!835410))

(assert (= (and b!835412 (not c!90874)) b!835409))

(assert (= (or b!835410 b!835409) bm!36670))

(assert (= (or b!835410 b!835409) bm!36671))

(declare-fun m!780709 () Bool)

(assert (=> b!835410 m!780709))

(declare-fun m!780711 () Bool)

(assert (=> b!835410 m!780711))

(declare-fun m!780713 () Bool)

(assert (=> b!835407 m!780713))

(assert (=> b!835407 m!780713))

(declare-fun m!780715 () Bool)

(assert (=> b!835407 m!780715))

(declare-fun m!780717 () Bool)

(assert (=> b!835409 m!780717))

(declare-fun m!780719 () Bool)

(assert (=> b!835409 m!780719))

(declare-fun m!780721 () Bool)

(assert (=> b!835406 m!780721))

(declare-fun m!780723 () Bool)

(assert (=> b!835406 m!780723))

(declare-fun m!780725 () Bool)

(assert (=> b!835406 m!780725))

(declare-fun m!780727 () Bool)

(assert (=> b!835411 m!780727))

(declare-fun m!780729 () Bool)

(assert (=> start!71932 m!780729))

(declare-fun m!780731 () Bool)

(assert (=> bm!36671 m!780731))

(declare-fun m!780733 () Bool)

(assert (=> b!835412 m!780733))

(assert (=> b!835412 m!780733))

(declare-fun m!780735 () Bool)

(assert (=> b!835412 m!780735))

(declare-fun m!780737 () Bool)

(assert (=> bm!36670 m!780737))

(push 1)

