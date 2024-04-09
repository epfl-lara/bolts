; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71840 () Bool)

(assert start!71840)

(declare-datatypes ((array!46694 0))(
  ( (array!46695 (arr!22377 (Array (_ BitVec 32) (_ BitVec 64))) (size!22798 (_ BitVec 32))) )
))
(declare-fun lt!379313 () array!46694)

(declare-fun call!36614 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun bm!36610 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46694 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36610 (= call!36614 (arrayCountValidKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834528 () Bool)

(declare-datatypes ((Unit!28680 0))(
  ( (Unit!28681) )
))
(declare-fun e!465647 () Unit!28680)

(declare-fun lt!379320 () Unit!28680)

(assert (=> b!834528 (= e!465647 lt!379320)))

(declare-fun lt!379317 () Unit!28680)

(declare-fun a!4227 () array!46694)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46694 (_ BitVec 32) (_ BitVec 32)) Unit!28680)

(assert (=> b!834528 (= lt!379317 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36613 () (_ BitVec 32))

(declare-fun lt!379314 () (_ BitVec 32))

(assert (=> b!834528 (= call!36613 lt!379314)))

(assert (=> b!834528 (= lt!379320 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379319 () (_ BitVec 32))

(assert (=> b!834528 (= call!36614 lt!379319)))

(declare-fun bm!36611 () Bool)

(assert (=> bm!36611 (= call!36613 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834529 () Bool)

(declare-fun lt!379312 () Unit!28680)

(assert (=> b!834529 (= e!465647 lt!379312)))

(declare-fun lt!379315 () Unit!28680)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46694 (_ BitVec 32) (_ BitVec 32)) Unit!28680)

(assert (=> b!834529 (= lt!379315 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834529 (= call!36613 (bvadd #b00000000000000000000000000000001 lt!379314))))

(assert (=> b!834529 (= lt!379312 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834529 (= call!36614 (bvadd #b00000000000000000000000000000001 lt!379319))))

(declare-fun b!834530 () Bool)

(declare-fun e!465649 () Bool)

(declare-fun e!465650 () Bool)

(assert (=> b!834530 (= e!465649 e!465650)))

(declare-fun res!567631 () Bool)

(assert (=> b!834530 (=> (not res!567631) (not e!465650))))

(assert (=> b!834530 (= res!567631 (and (= lt!379319 lt!379314) (not (= to!390 (size!22798 a!4227)))))))

(assert (=> b!834530 (= lt!379314 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834530 (= lt!379319 (arrayCountValidKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834530 (= lt!379313 (array!46695 (store (arr!22377 a!4227) i!1466 k!2968) (size!22798 a!4227)))))

(declare-fun b!834531 () Bool)

(declare-fun e!465646 () Bool)

(assert (=> b!834531 (= e!465650 e!465646)))

(declare-fun res!567635 () Bool)

(assert (=> b!834531 (=> (not res!567635) (not e!465646))))

(assert (=> b!834531 (= res!567635 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22798 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379316 () Unit!28680)

(assert (=> b!834531 (= lt!379316 e!465647)))

(declare-fun c!90844 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834531 (= c!90844 (validKeyInArray!0 (select (arr!22377 a!4227) to!390)))))

(declare-fun b!834532 () Bool)

(declare-fun res!567636 () Bool)

(assert (=> b!834532 (=> (not res!567636) (not e!465649))))

(assert (=> b!834532 (= res!567636 (and (bvslt (size!22798 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22798 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834533 () Bool)

(declare-fun res!567634 () Bool)

(assert (=> b!834533 (=> (not res!567634) (not e!465649))))

(assert (=> b!834533 (= res!567634 (not (validKeyInArray!0 (select (arr!22377 a!4227) i!1466))))))

(declare-fun b!834534 () Bool)

(declare-fun res!567632 () Bool)

(assert (=> b!834534 (=> (not res!567632) (not e!465646))))

(assert (=> b!834534 (= res!567632 (= (arrayCountValidKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834535 () Bool)

(assert (=> b!834535 (= e!465646 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (=> b!834535 (= (arrayCountValidKeys!0 lt!379313 (bvadd #b00000000000000000000000000000001 i!1466) (size!22798 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22798 a!4227)))))

(declare-fun lt!379318 () Unit!28680)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46694 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28680)

(assert (=> b!834535 (= lt!379318 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567633 () Bool)

(assert (=> start!71840 (=> (not res!567633) (not e!465649))))

(assert (=> start!71840 (= res!567633 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22798 a!4227))))))

(assert (=> start!71840 e!465649))

(assert (=> start!71840 true))

(declare-fun array_inv!17800 (array!46694) Bool)

(assert (=> start!71840 (array_inv!17800 a!4227)))

(declare-fun b!834536 () Bool)

(declare-fun res!567637 () Bool)

(assert (=> b!834536 (=> (not res!567637) (not e!465649))))

(assert (=> b!834536 (= res!567637 (validKeyInArray!0 k!2968))))

(assert (= (and start!71840 res!567633) b!834533))

(assert (= (and b!834533 res!567634) b!834536))

(assert (= (and b!834536 res!567637) b!834532))

(assert (= (and b!834532 res!567636) b!834530))

(assert (= (and b!834530 res!567631) b!834531))

(assert (= (and b!834531 c!90844) b!834529))

(assert (= (and b!834531 (not c!90844)) b!834528))

(assert (= (or b!834529 b!834528) bm!36610))

(assert (= (or b!834529 b!834528) bm!36611))

(assert (= (and b!834531 res!567635) b!834534))

(assert (= (and b!834534 res!567632) b!834535))

(declare-fun m!779693 () Bool)

(assert (=> b!834534 m!779693))

(declare-fun m!779695 () Bool)

(assert (=> b!834534 m!779695))

(declare-fun m!779697 () Bool)

(assert (=> b!834530 m!779697))

(declare-fun m!779699 () Bool)

(assert (=> b!834530 m!779699))

(declare-fun m!779701 () Bool)

(assert (=> b!834530 m!779701))

(declare-fun m!779703 () Bool)

(assert (=> b!834533 m!779703))

(assert (=> b!834533 m!779703))

(declare-fun m!779705 () Bool)

(assert (=> b!834533 m!779705))

(assert (=> bm!36610 m!779693))

(declare-fun m!779707 () Bool)

(assert (=> b!834529 m!779707))

(declare-fun m!779709 () Bool)

(assert (=> b!834529 m!779709))

(declare-fun m!779711 () Bool)

(assert (=> b!834536 m!779711))

(declare-fun m!779713 () Bool)

(assert (=> start!71840 m!779713))

(declare-fun m!779715 () Bool)

(assert (=> b!834531 m!779715))

(assert (=> b!834531 m!779715))

(declare-fun m!779717 () Bool)

(assert (=> b!834531 m!779717))

(declare-fun m!779719 () Bool)

(assert (=> b!834528 m!779719))

(declare-fun m!779721 () Bool)

(assert (=> b!834528 m!779721))

(declare-fun m!779723 () Bool)

(assert (=> b!834535 m!779723))

(declare-fun m!779725 () Bool)

(assert (=> b!834535 m!779725))

(declare-fun m!779727 () Bool)

(assert (=> b!834535 m!779727))

(assert (=> bm!36611 m!779695))

(push 1)

(assert (not b!834531))

(assert (not b!834535))

(assert (not bm!36610))

(assert (not b!834533))

(assert (not b!834529))

