; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71934 () Bool)

(assert start!71934)

(declare-fun b!835427 () Bool)

(declare-fun e!466076 () Bool)

(declare-fun e!466079 () Bool)

(assert (=> b!835427 (= e!466076 e!466079)))

(declare-fun res!568466 () Bool)

(assert (=> b!835427 (=> (not res!568466) (not e!466079))))

(declare-datatypes ((array!46788 0))(
  ( (array!46789 (arr!22424 (Array (_ BitVec 32) (_ BitVec 64))) (size!22845 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46788)

(declare-fun lt!379755 () (_ BitVec 32))

(declare-fun lt!379751 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835427 (= res!568466 (and (= lt!379755 lt!379751) (not (= to!390 (size!22845 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46788 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835427 (= lt!379751 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379752 () array!46788)

(assert (=> b!835427 (= lt!379755 (arrayCountValidKeys!0 lt!379752 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835427 (= lt!379752 (array!46789 (store (arr!22424 a!4227) i!1466 k0!2968) (size!22845 a!4227)))))

(declare-fun bm!36676 () Bool)

(declare-fun call!36679 () (_ BitVec 32))

(assert (=> bm!36676 (= call!36679 (arrayCountValidKeys!0 lt!379752 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun call!36680 () (_ BitVec 32))

(declare-fun bm!36677 () Bool)

(assert (=> bm!36677 (= call!36680 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835428 () Bool)

(declare-fun res!568465 () Bool)

(assert (=> b!835428 (=> (not res!568465) (not e!466076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835428 (= res!568465 (validKeyInArray!0 k0!2968))))

(declare-fun b!835429 () Bool)

(declare-datatypes ((Unit!28726 0))(
  ( (Unit!28727) )
))
(declare-fun e!466077 () Unit!28726)

(declare-fun lt!379753 () Unit!28726)

(assert (=> b!835429 (= e!466077 lt!379753)))

(declare-fun lt!379748 () Unit!28726)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46788 (_ BitVec 32) (_ BitVec 32)) Unit!28726)

(assert (=> b!835429 (= lt!379748 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835429 (= call!36680 lt!379751)))

(assert (=> b!835429 (= lt!379753 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379752 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835429 (= call!36679 lt!379755)))

(declare-fun res!568468 () Bool)

(assert (=> start!71934 (=> (not res!568468) (not e!466076))))

(assert (=> start!71934 (= res!568468 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22845 a!4227))))))

(assert (=> start!71934 e!466076))

(assert (=> start!71934 true))

(declare-fun array_inv!17847 (array!46788) Bool)

(assert (=> start!71934 (array_inv!17847 a!4227)))

(declare-fun b!835430 () Bool)

(declare-fun res!568464 () Bool)

(assert (=> b!835430 (=> (not res!568464) (not e!466076))))

(assert (=> b!835430 (= res!568464 (not (validKeyInArray!0 (select (arr!22424 a!4227) i!1466))))))

(declare-fun b!835431 () Bool)

(assert (=> b!835431 (= e!466079 false)))

(declare-fun lt!379754 () Unit!28726)

(assert (=> b!835431 (= lt!379754 e!466077)))

(declare-fun c!90877 () Bool)

(assert (=> b!835431 (= c!90877 (validKeyInArray!0 (select (arr!22424 a!4227) to!390)))))

(declare-fun b!835432 () Bool)

(declare-fun lt!379749 () Unit!28726)

(assert (=> b!835432 (= e!466077 lt!379749)))

(declare-fun lt!379750 () Unit!28726)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46788 (_ BitVec 32) (_ BitVec 32)) Unit!28726)

(assert (=> b!835432 (= lt!379750 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835432 (= call!36680 (bvadd #b00000000000000000000000000000001 lt!379751))))

(assert (=> b!835432 (= lt!379749 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379752 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835432 (= call!36679 (bvadd #b00000000000000000000000000000001 lt!379755))))

(declare-fun b!835433 () Bool)

(declare-fun res!568467 () Bool)

(assert (=> b!835433 (=> (not res!568467) (not e!466076))))

(assert (=> b!835433 (= res!568467 (and (bvslt (size!22845 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22845 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71934 res!568468) b!835430))

(assert (= (and b!835430 res!568464) b!835428))

(assert (= (and b!835428 res!568465) b!835433))

(assert (= (and b!835433 res!568467) b!835427))

(assert (= (and b!835427 res!568466) b!835431))

(assert (= (and b!835431 c!90877) b!835432))

(assert (= (and b!835431 (not c!90877)) b!835429))

(assert (= (or b!835432 b!835429) bm!36676))

(assert (= (or b!835432 b!835429) bm!36677))

(declare-fun m!780739 () Bool)

(assert (=> b!835429 m!780739))

(declare-fun m!780741 () Bool)

(assert (=> b!835429 m!780741))

(declare-fun m!780743 () Bool)

(assert (=> b!835431 m!780743))

(assert (=> b!835431 m!780743))

(declare-fun m!780745 () Bool)

(assert (=> b!835431 m!780745))

(declare-fun m!780747 () Bool)

(assert (=> bm!36677 m!780747))

(declare-fun m!780749 () Bool)

(assert (=> b!835428 m!780749))

(declare-fun m!780751 () Bool)

(assert (=> b!835432 m!780751))

(declare-fun m!780753 () Bool)

(assert (=> b!835432 m!780753))

(declare-fun m!780755 () Bool)

(assert (=> bm!36676 m!780755))

(declare-fun m!780757 () Bool)

(assert (=> start!71934 m!780757))

(declare-fun m!780759 () Bool)

(assert (=> b!835427 m!780759))

(declare-fun m!780761 () Bool)

(assert (=> b!835427 m!780761))

(declare-fun m!780763 () Bool)

(assert (=> b!835427 m!780763))

(declare-fun m!780765 () Bool)

(assert (=> b!835430 m!780765))

(assert (=> b!835430 m!780765))

(declare-fun m!780767 () Bool)

(assert (=> b!835430 m!780767))

(check-sat (not b!835429) (not start!71934) (not bm!36676) (not b!835431) (not bm!36677) (not b!835432) (not b!835427) (not b!835430) (not b!835428))
(check-sat)
