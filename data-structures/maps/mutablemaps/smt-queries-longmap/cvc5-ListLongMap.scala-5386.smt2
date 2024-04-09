; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71938 () Bool)

(assert start!71938)

(declare-fun call!36692 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46792 0))(
  ( (array!46793 (arr!22426 (Array (_ BitVec 32) (_ BitVec 64))) (size!22847 (_ BitVec 32))) )
))
(declare-fun lt!379800 () array!46792)

(declare-fun bm!36688 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46792 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36688 (= call!36692 (arrayCountValidKeys!0 lt!379800 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835469 () Bool)

(declare-fun e!466101 () Bool)

(declare-fun e!466100 () Bool)

(assert (=> b!835469 (= e!466101 e!466100)))

(declare-fun res!568498 () Bool)

(assert (=> b!835469 (=> (not res!568498) (not e!466100))))

(declare-fun a!4227 () array!46792)

(declare-fun lt!379799 () (_ BitVec 32))

(declare-fun lt!379798 () (_ BitVec 32))

(assert (=> b!835469 (= res!568498 (and (= lt!379799 lt!379798) (not (= to!390 (size!22847 a!4227)))))))

(assert (=> b!835469 (= lt!379798 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835469 (= lt!379799 (arrayCountValidKeys!0 lt!379800 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835469 (= lt!379800 (array!46793 (store (arr!22426 a!4227) i!1466 k!2968) (size!22847 a!4227)))))

(declare-fun bm!36689 () Bool)

(declare-fun call!36691 () (_ BitVec 32))

(assert (=> bm!36689 (= call!36691 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835470 () Bool)

(declare-fun res!568497 () Bool)

(assert (=> b!835470 (=> (not res!568497) (not e!466101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835470 (= res!568497 (validKeyInArray!0 k!2968))))

(declare-fun b!835471 () Bool)

(declare-fun res!568495 () Bool)

(assert (=> b!835471 (=> (not res!568495) (not e!466101))))

(assert (=> b!835471 (= res!568495 (not (validKeyInArray!0 (select (arr!22426 a!4227) i!1466))))))

(declare-fun b!835472 () Bool)

(declare-fun res!568494 () Bool)

(assert (=> b!835472 (=> (not res!568494) (not e!466101))))

(assert (=> b!835472 (= res!568494 (and (bvslt (size!22847 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22847 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835473 () Bool)

(declare-datatypes ((Unit!28730 0))(
  ( (Unit!28731) )
))
(declare-fun e!466103 () Unit!28730)

(declare-fun lt!379801 () Unit!28730)

(assert (=> b!835473 (= e!466103 lt!379801)))

(declare-fun lt!379797 () Unit!28730)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46792 (_ BitVec 32) (_ BitVec 32)) Unit!28730)

(assert (=> b!835473 (= lt!379797 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835473 (= call!36691 lt!379798)))

(assert (=> b!835473 (= lt!379801 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379800 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835473 (= call!36692 lt!379799)))

(declare-fun res!568496 () Bool)

(assert (=> start!71938 (=> (not res!568496) (not e!466101))))

(assert (=> start!71938 (= res!568496 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22847 a!4227))))))

(assert (=> start!71938 e!466101))

(assert (=> start!71938 true))

(declare-fun array_inv!17849 (array!46792) Bool)

(assert (=> start!71938 (array_inv!17849 a!4227)))

(declare-fun b!835474 () Bool)

(assert (=> b!835474 (= e!466100 false)))

(declare-fun lt!379802 () Unit!28730)

(assert (=> b!835474 (= lt!379802 e!466103)))

(declare-fun c!90883 () Bool)

(assert (=> b!835474 (= c!90883 (validKeyInArray!0 (select (arr!22426 a!4227) to!390)))))

(declare-fun b!835475 () Bool)

(declare-fun lt!379803 () Unit!28730)

(assert (=> b!835475 (= e!466103 lt!379803)))

(declare-fun lt!379796 () Unit!28730)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46792 (_ BitVec 32) (_ BitVec 32)) Unit!28730)

(assert (=> b!835475 (= lt!379796 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835475 (= call!36691 (bvadd #b00000000000000000000000000000001 lt!379798))))

(assert (=> b!835475 (= lt!379803 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379800 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835475 (= call!36692 (bvadd #b00000000000000000000000000000001 lt!379799))))

(assert (= (and start!71938 res!568496) b!835471))

(assert (= (and b!835471 res!568495) b!835470))

(assert (= (and b!835470 res!568497) b!835472))

(assert (= (and b!835472 res!568494) b!835469))

(assert (= (and b!835469 res!568498) b!835474))

(assert (= (and b!835474 c!90883) b!835475))

(assert (= (and b!835474 (not c!90883)) b!835473))

(assert (= (or b!835475 b!835473) bm!36688))

(assert (= (or b!835475 b!835473) bm!36689))

(declare-fun m!780799 () Bool)

(assert (=> b!835469 m!780799))

(declare-fun m!780801 () Bool)

(assert (=> b!835469 m!780801))

(declare-fun m!780803 () Bool)

(assert (=> b!835469 m!780803))

(declare-fun m!780805 () Bool)

(assert (=> bm!36689 m!780805))

(declare-fun m!780807 () Bool)

(assert (=> b!835473 m!780807))

(declare-fun m!780809 () Bool)

(assert (=> b!835473 m!780809))

(declare-fun m!780811 () Bool)

(assert (=> b!835475 m!780811))

(declare-fun m!780813 () Bool)

(assert (=> b!835475 m!780813))

(declare-fun m!780815 () Bool)

(assert (=> b!835470 m!780815))

(declare-fun m!780817 () Bool)

(assert (=> b!835474 m!780817))

(assert (=> b!835474 m!780817))

(declare-fun m!780819 () Bool)

(assert (=> b!835474 m!780819))

(declare-fun m!780821 () Bool)

(assert (=> start!71938 m!780821))

(declare-fun m!780823 () Bool)

(assert (=> b!835471 m!780823))

(assert (=> b!835471 m!780823))

(declare-fun m!780825 () Bool)

(assert (=> b!835471 m!780825))

(declare-fun m!780827 () Bool)

(assert (=> bm!36688 m!780827))

(push 1)

