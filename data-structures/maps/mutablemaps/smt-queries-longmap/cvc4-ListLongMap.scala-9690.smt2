; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114516 () Bool)

(assert start!114516)

(declare-fun b!1358518 () Bool)

(declare-fun res!903262 () Bool)

(declare-fun e!771043 () Bool)

(assert (=> b!1358518 (=> (not res!903262) (not e!771043))))

(declare-datatypes ((array!92435 0))(
  ( (array!92436 (arr!44655 (Array (_ BitVec 32) (_ BitVec 64))) (size!45206 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92435)

(declare-datatypes ((List!31876 0))(
  ( (Nil!31873) (Cons!31872 (h!33081 (_ BitVec 64)) (t!46553 List!31876)) )
))
(declare-fun arrayNoDuplicates!0 (array!92435 (_ BitVec 32) List!31876) Bool)

(assert (=> b!1358518 (= res!903262 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31873))))

(declare-fun b!1358519 () Bool)

(declare-fun res!903260 () Bool)

(assert (=> b!1358519 (=> (not res!903260) (not e!771043))))

(declare-fun acc!759 () List!31876)

(declare-fun contains!9441 (List!31876 (_ BitVec 64)) Bool)

(assert (=> b!1358519 (= res!903260 (not (contains!9441 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358520 () Bool)

(declare-datatypes ((Unit!44648 0))(
  ( (Unit!44649) )
))
(declare-fun e!771042 () Unit!44648)

(declare-fun Unit!44650 () Unit!44648)

(assert (=> b!1358520 (= e!771042 Unit!44650)))

(declare-fun b!1358521 () Bool)

(declare-fun res!903264 () Bool)

(assert (=> b!1358521 (=> (not res!903264) (not e!771043))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1358521 (= res!903264 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45206 a!3742)))))

(declare-fun b!1358522 () Bool)

(declare-fun lt!599320 () Unit!44648)

(assert (=> b!1358522 (= e!771042 lt!599320)))

(declare-fun lt!599319 () Unit!44648)

(declare-fun lemmaListSubSeqRefl!0 (List!31876) Unit!44648)

(assert (=> b!1358522 (= lt!599319 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!832 (List!31876 List!31876) Bool)

(assert (=> b!1358522 (subseq!832 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92435 List!31876 List!31876 (_ BitVec 32)) Unit!44648)

(declare-fun $colon$colon!837 (List!31876 (_ BitVec 64)) List!31876)

(assert (=> b!1358522 (= lt!599320 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!837 acc!759 (select (arr!44655 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358522 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358524 () Bool)

(declare-fun res!903265 () Bool)

(assert (=> b!1358524 (=> (not res!903265) (not e!771043))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358524 (= res!903265 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45206 a!3742))))))

(declare-fun b!1358525 () Bool)

(declare-fun res!903267 () Bool)

(assert (=> b!1358525 (=> (not res!903267) (not e!771043))))

(declare-fun noDuplicate!2320 (List!31876) Bool)

(assert (=> b!1358525 (= res!903267 (noDuplicate!2320 acc!759))))

(declare-fun b!1358526 () Bool)

(declare-fun res!903266 () Bool)

(assert (=> b!1358526 (=> (not res!903266) (not e!771043))))

(assert (=> b!1358526 (= res!903266 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358527 () Bool)

(assert (=> b!1358527 (= e!771043 (and (= from!3120 i!1404) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599321 () Unit!44648)

(assert (=> b!1358527 (= lt!599321 e!771042)))

(declare-fun c!127072 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358527 (= c!127072 (validKeyInArray!0 (select (arr!44655 a!3742) from!3120)))))

(declare-fun b!1358528 () Bool)

(declare-fun res!903259 () Bool)

(assert (=> b!1358528 (=> (not res!903259) (not e!771043))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358528 (= res!903259 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358523 () Bool)

(declare-fun res!903261 () Bool)

(assert (=> b!1358523 (=> (not res!903261) (not e!771043))))

(assert (=> b!1358523 (= res!903261 (not (contains!9441 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!903263 () Bool)

(assert (=> start!114516 (=> (not res!903263) (not e!771043))))

(assert (=> start!114516 (= res!903263 (and (bvslt (size!45206 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45206 a!3742))))))

(assert (=> start!114516 e!771043))

(assert (=> start!114516 true))

(declare-fun array_inv!33600 (array!92435) Bool)

(assert (=> start!114516 (array_inv!33600 a!3742)))

(assert (= (and start!114516 res!903263) b!1358525))

(assert (= (and b!1358525 res!903267) b!1358519))

(assert (= (and b!1358519 res!903260) b!1358523))

(assert (= (and b!1358523 res!903261) b!1358518))

(assert (= (and b!1358518 res!903262) b!1358526))

(assert (= (and b!1358526 res!903266) b!1358524))

(assert (= (and b!1358524 res!903265) b!1358528))

(assert (= (and b!1358528 res!903259) b!1358521))

(assert (= (and b!1358521 res!903264) b!1358527))

(assert (= (and b!1358527 c!127072) b!1358522))

(assert (= (and b!1358527 (not c!127072)) b!1358520))

(declare-fun m!1244115 () Bool)

(assert (=> b!1358523 m!1244115))

(declare-fun m!1244117 () Bool)

(assert (=> b!1358528 m!1244117))

(declare-fun m!1244119 () Bool)

(assert (=> b!1358519 m!1244119))

(declare-fun m!1244121 () Bool)

(assert (=> b!1358525 m!1244121))

(declare-fun m!1244123 () Bool)

(assert (=> b!1358527 m!1244123))

(assert (=> b!1358527 m!1244123))

(declare-fun m!1244125 () Bool)

(assert (=> b!1358527 m!1244125))

(declare-fun m!1244127 () Bool)

(assert (=> b!1358518 m!1244127))

(declare-fun m!1244129 () Bool)

(assert (=> b!1358526 m!1244129))

(declare-fun m!1244131 () Bool)

(assert (=> b!1358522 m!1244131))

(assert (=> b!1358522 m!1244123))

(declare-fun m!1244133 () Bool)

(assert (=> b!1358522 m!1244133))

(declare-fun m!1244135 () Bool)

(assert (=> b!1358522 m!1244135))

(declare-fun m!1244137 () Bool)

(assert (=> b!1358522 m!1244137))

(assert (=> b!1358522 m!1244123))

(assert (=> b!1358522 m!1244133))

(declare-fun m!1244139 () Bool)

(assert (=> b!1358522 m!1244139))

(declare-fun m!1244141 () Bool)

(assert (=> start!114516 m!1244141))

(push 1)

(assert (not b!1358523))

(assert (not b!1358519))

(assert (not b!1358525))

