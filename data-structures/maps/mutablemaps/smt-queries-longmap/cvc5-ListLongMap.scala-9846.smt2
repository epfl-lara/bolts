; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116804 () Bool)

(assert start!116804)

(declare-fun b!1376060 () Bool)

(declare-datatypes ((Unit!45551 0))(
  ( (Unit!45552) )
))
(declare-fun e!779582 () Unit!45551)

(declare-fun lt!605125 () Unit!45551)

(assert (=> b!1376060 (= e!779582 lt!605125)))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93391 0))(
  ( (array!93392 (arr!45094 (Array (_ BitVec 32) (_ BitVec 64))) (size!45645 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93391)

(declare-fun lt!605131 () Unit!45551)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93391 (_ BitVec 32) (_ BitVec 32)) Unit!45551)

(assert (=> b!1376060 (= lt!605131 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65838 () (_ BitVec 32))

(declare-fun lt!605124 () (_ BitVec 32))

(assert (=> b!1376060 (= call!65838 lt!605124)))

(declare-fun lt!605127 () array!93391)

(assert (=> b!1376060 (= lt!605125 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65837 () (_ BitVec 32))

(declare-fun lt!605126 () (_ BitVec 32))

(assert (=> b!1376060 (= call!65837 lt!605126)))

(declare-fun bm!65834 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93391 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65834 (= call!65837 (arrayCountValidKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376061 () Bool)

(declare-fun e!779580 () Bool)

(declare-fun e!779578 () Bool)

(assert (=> b!1376061 (= e!779580 e!779578)))

(declare-fun res!919077 () Bool)

(assert (=> b!1376061 (=> (not res!919077) (not e!779578))))

(assert (=> b!1376061 (= res!919077 (and (= lt!605126 lt!605124) (not (= to!206 (size!45645 a!4032)))))))

(assert (=> b!1376061 (= lt!605124 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376061 (= lt!605126 (arrayCountValidKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376061 (= lt!605127 (array!93392 (store (arr!45094 a!4032) i!1445 k!2947) (size!45645 a!4032)))))

(declare-fun bm!65835 () Bool)

(assert (=> bm!65835 (= call!65838 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376062 () Bool)

(declare-fun res!919072 () Bool)

(assert (=> b!1376062 (=> (not res!919072) (not e!779580))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376062 (= res!919072 (validKeyInArray!0 (select (arr!45094 a!4032) i!1445)))))

(declare-fun res!919073 () Bool)

(assert (=> start!116804 (=> (not res!919073) (not e!779580))))

(assert (=> start!116804 (= res!919073 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45645 a!4032))))))

(assert (=> start!116804 e!779580))

(assert (=> start!116804 true))

(declare-fun array_inv!34039 (array!93391) Bool)

(assert (=> start!116804 (array_inv!34039 a!4032)))

(declare-fun b!1376063 () Bool)

(declare-fun res!919071 () Bool)

(assert (=> b!1376063 (=> (not res!919071) (not e!779580))))

(assert (=> b!1376063 (= res!919071 (and (bvslt (size!45645 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45645 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376064 () Bool)

(declare-fun res!919076 () Bool)

(declare-fun e!779581 () Bool)

(assert (=> b!1376064 (=> (not res!919076) (not e!779581))))

(assert (=> b!1376064 (= res!919076 (= (arrayCountValidKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1376065 () Bool)

(declare-fun lt!605128 () Unit!45551)

(assert (=> b!1376065 (= e!779582 lt!605128)))

(declare-fun lt!605123 () Unit!45551)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93391 (_ BitVec 32) (_ BitVec 32)) Unit!45551)

(assert (=> b!1376065 (= lt!605123 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376065 (= call!65838 (bvadd #b00000000000000000000000000000001 lt!605124))))

(assert (=> b!1376065 (= lt!605128 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376065 (= call!65837 (bvadd #b00000000000000000000000000000001 lt!605126))))

(declare-fun b!1376066 () Bool)

(assert (=> b!1376066 (= e!779578 e!779581)))

(declare-fun res!919075 () Bool)

(assert (=> b!1376066 (=> (not res!919075) (not e!779581))))

(assert (=> b!1376066 (= res!919075 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45645 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605130 () Unit!45551)

(assert (=> b!1376066 (= lt!605130 e!779582)))

(declare-fun c!127937 () Bool)

(assert (=> b!1376066 (= c!127937 (validKeyInArray!0 (select (arr!45094 a!4032) to!206)))))

(declare-fun b!1376067 () Bool)

(assert (=> b!1376067 (= e!779581 (not true))))

(assert (=> b!1376067 (= (arrayCountValidKeys!0 lt!605127 (bvadd #b00000000000000000000000000000001 i!1445) (size!45645 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45645 a!4032)))))

(declare-fun lt!605129 () Unit!45551)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45551)

(assert (=> b!1376067 (= lt!605129 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376068 () Bool)

(declare-fun res!919074 () Bool)

(assert (=> b!1376068 (=> (not res!919074) (not e!779580))))

(assert (=> b!1376068 (= res!919074 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116804 res!919073) b!1376062))

(assert (= (and b!1376062 res!919072) b!1376068))

(assert (= (and b!1376068 res!919074) b!1376063))

(assert (= (and b!1376063 res!919071) b!1376061))

(assert (= (and b!1376061 res!919077) b!1376066))

(assert (= (and b!1376066 c!127937) b!1376065))

(assert (= (and b!1376066 (not c!127937)) b!1376060))

(assert (= (or b!1376065 b!1376060) bm!65834))

(assert (= (or b!1376065 b!1376060) bm!65835))

(assert (= (and b!1376066 res!919075) b!1376064))

(assert (= (and b!1376064 res!919076) b!1376067))

(declare-fun m!1260143 () Bool)

(assert (=> bm!65834 m!1260143))

(declare-fun m!1260145 () Bool)

(assert (=> b!1376068 m!1260145))

(declare-fun m!1260147 () Bool)

(assert (=> b!1376067 m!1260147))

(declare-fun m!1260149 () Bool)

(assert (=> b!1376067 m!1260149))

(declare-fun m!1260151 () Bool)

(assert (=> b!1376067 m!1260151))

(declare-fun m!1260153 () Bool)

(assert (=> b!1376060 m!1260153))

(declare-fun m!1260155 () Bool)

(assert (=> b!1376060 m!1260155))

(declare-fun m!1260157 () Bool)

(assert (=> b!1376065 m!1260157))

(declare-fun m!1260159 () Bool)

(assert (=> b!1376065 m!1260159))

(assert (=> b!1376064 m!1260143))

(declare-fun m!1260161 () Bool)

(assert (=> b!1376064 m!1260161))

(declare-fun m!1260163 () Bool)

(assert (=> b!1376066 m!1260163))

(assert (=> b!1376066 m!1260163))

(declare-fun m!1260165 () Bool)

(assert (=> b!1376066 m!1260165))

(declare-fun m!1260167 () Bool)

(assert (=> b!1376062 m!1260167))

(assert (=> b!1376062 m!1260167))

(declare-fun m!1260169 () Bool)

(assert (=> b!1376062 m!1260169))

(declare-fun m!1260171 () Bool)

(assert (=> start!116804 m!1260171))

(declare-fun m!1260173 () Bool)

(assert (=> b!1376061 m!1260173))

(declare-fun m!1260175 () Bool)

(assert (=> b!1376061 m!1260175))

(declare-fun m!1260177 () Bool)

(assert (=> b!1376061 m!1260177))

(assert (=> bm!65835 m!1260161))

(push 1)

