; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71838 () Bool)

(assert start!71838)

(declare-fun b!834501 () Bool)

(declare-datatypes ((Unit!28678 0))(
  ( (Unit!28679) )
))
(declare-fun e!465634 () Unit!28678)

(declare-fun lt!379291 () Unit!28678)

(assert (=> b!834501 (= e!465634 lt!379291)))

(declare-datatypes ((array!46692 0))(
  ( (array!46693 (arr!22376 (Array (_ BitVec 32) (_ BitVec 64))) (size!22797 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46692)

(declare-fun lt!379290 () Unit!28678)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46692 (_ BitVec 32) (_ BitVec 32)) Unit!28678)

(assert (=> b!834501 (= lt!379290 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36608 () (_ BitVec 32))

(declare-fun lt!379285 () (_ BitVec 32))

(assert (=> b!834501 (= call!36608 lt!379285)))

(declare-fun lt!379287 () array!46692)

(assert (=> b!834501 (= lt!379291 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36607 () (_ BitVec 32))

(declare-fun lt!379293 () (_ BitVec 32))

(assert (=> b!834501 (= call!36607 lt!379293)))

(declare-fun b!834502 () Bool)

(declare-fun res!567614 () Bool)

(declare-fun e!465635 () Bool)

(assert (=> b!834502 (=> (not res!567614) (not e!465635))))

(declare-fun arrayCountValidKeys!0 (array!46692 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834502 (= res!567614 (= (arrayCountValidKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834503 () Bool)

(declare-fun e!465632 () Bool)

(assert (=> b!834503 (= e!465632 e!465635)))

(declare-fun res!567615 () Bool)

(assert (=> b!834503 (=> (not res!567615) (not e!465635))))

(assert (=> b!834503 (= res!567615 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22797 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379286 () Unit!28678)

(assert (=> b!834503 (= lt!379286 e!465634)))

(declare-fun c!90841 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834503 (= c!90841 (validKeyInArray!0 (select (arr!22376 a!4227) to!390)))))

(declare-fun bm!36604 () Bool)

(assert (=> bm!36604 (= call!36608 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567612 () Bool)

(declare-fun e!465631 () Bool)

(assert (=> start!71838 (=> (not res!567612) (not e!465631))))

(assert (=> start!71838 (= res!567612 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22797 a!4227))))))

(assert (=> start!71838 e!465631))

(assert (=> start!71838 true))

(declare-fun array_inv!17799 (array!46692) Bool)

(assert (=> start!71838 (array_inv!17799 a!4227)))

(declare-fun b!834504 () Bool)

(declare-fun res!567613 () Bool)

(assert (=> b!834504 (=> (not res!567613) (not e!465631))))

(assert (=> b!834504 (= res!567613 (and (bvslt (size!22797 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22797 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834505 () Bool)

(declare-fun lt!379292 () Unit!28678)

(assert (=> b!834505 (= e!465634 lt!379292)))

(declare-fun lt!379288 () Unit!28678)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46692 (_ BitVec 32) (_ BitVec 32)) Unit!28678)

(assert (=> b!834505 (= lt!379288 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834505 (= call!36608 (bvadd #b00000000000000000000000000000001 lt!379285))))

(assert (=> b!834505 (= lt!379292 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834505 (= call!36607 (bvadd #b00000000000000000000000000000001 lt!379293))))

(declare-fun bm!36605 () Bool)

(assert (=> bm!36605 (= call!36607 (arrayCountValidKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834506 () Bool)

(declare-fun res!567616 () Bool)

(assert (=> b!834506 (=> (not res!567616) (not e!465631))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834506 (= res!567616 (validKeyInArray!0 k0!2968))))

(declare-fun b!834507 () Bool)

(assert (=> b!834507 (= e!465635 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (=> b!834507 (= (arrayCountValidKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) (size!22797 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22797 a!4227)))))

(declare-fun lt!379289 () Unit!28678)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46692 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28678)

(assert (=> b!834507 (= lt!379289 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834508 () Bool)

(assert (=> b!834508 (= e!465631 e!465632)))

(declare-fun res!567611 () Bool)

(assert (=> b!834508 (=> (not res!567611) (not e!465632))))

(assert (=> b!834508 (= res!567611 (and (= lt!379293 lt!379285) (not (= to!390 (size!22797 a!4227)))))))

(assert (=> b!834508 (= lt!379285 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834508 (= lt!379293 (arrayCountValidKeys!0 lt!379287 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834508 (= lt!379287 (array!46693 (store (arr!22376 a!4227) i!1466 k0!2968) (size!22797 a!4227)))))

(declare-fun b!834509 () Bool)

(declare-fun res!567610 () Bool)

(assert (=> b!834509 (=> (not res!567610) (not e!465631))))

(assert (=> b!834509 (= res!567610 (not (validKeyInArray!0 (select (arr!22376 a!4227) i!1466))))))

(assert (= (and start!71838 res!567612) b!834509))

(assert (= (and b!834509 res!567610) b!834506))

(assert (= (and b!834506 res!567616) b!834504))

(assert (= (and b!834504 res!567613) b!834508))

(assert (= (and b!834508 res!567611) b!834503))

(assert (= (and b!834503 c!90841) b!834505))

(assert (= (and b!834503 (not c!90841)) b!834501))

(assert (= (or b!834505 b!834501) bm!36605))

(assert (= (or b!834505 b!834501) bm!36604))

(assert (= (and b!834503 res!567615) b!834502))

(assert (= (and b!834502 res!567614) b!834507))

(declare-fun m!779657 () Bool)

(assert (=> bm!36605 m!779657))

(assert (=> b!834502 m!779657))

(declare-fun m!779659 () Bool)

(assert (=> b!834502 m!779659))

(declare-fun m!779661 () Bool)

(assert (=> b!834503 m!779661))

(assert (=> b!834503 m!779661))

(declare-fun m!779663 () Bool)

(assert (=> b!834503 m!779663))

(declare-fun m!779665 () Bool)

(assert (=> b!834509 m!779665))

(assert (=> b!834509 m!779665))

(declare-fun m!779667 () Bool)

(assert (=> b!834509 m!779667))

(declare-fun m!779669 () Bool)

(assert (=> b!834505 m!779669))

(declare-fun m!779671 () Bool)

(assert (=> b!834505 m!779671))

(declare-fun m!779673 () Bool)

(assert (=> b!834507 m!779673))

(declare-fun m!779675 () Bool)

(assert (=> b!834507 m!779675))

(declare-fun m!779677 () Bool)

(assert (=> b!834507 m!779677))

(declare-fun m!779679 () Bool)

(assert (=> b!834508 m!779679))

(declare-fun m!779681 () Bool)

(assert (=> b!834508 m!779681))

(declare-fun m!779683 () Bool)

(assert (=> b!834508 m!779683))

(declare-fun m!779685 () Bool)

(assert (=> b!834506 m!779685))

(assert (=> bm!36604 m!779659))

(declare-fun m!779687 () Bool)

(assert (=> start!71838 m!779687))

(declare-fun m!779689 () Bool)

(assert (=> b!834501 m!779689))

(declare-fun m!779691 () Bool)

(assert (=> b!834501 m!779691))

(check-sat (not b!834502) (not b!834501) (not b!834509) (not b!834507) (not start!71838) (not b!834503) (not b!834505) (not b!834508) (not b!834506) (not bm!36605) (not bm!36604))
(check-sat)
