; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114118 () Bool)

(assert start!114118)

(declare-fun b!1354426 () Bool)

(declare-datatypes ((Unit!44429 0))(
  ( (Unit!44430) )
))
(declare-fun e!769434 () Unit!44429)

(declare-fun lt!598216 () Unit!44429)

(assert (=> b!1354426 (= e!769434 lt!598216)))

(declare-fun lt!598218 () Unit!44429)

(declare-datatypes ((List!31776 0))(
  ( (Nil!31773) (Cons!31772 (h!32981 (_ BitVec 64)) (t!46441 List!31776)) )
))
(declare-fun acc!759 () List!31776)

(declare-fun lemmaListSubSeqRefl!0 (List!31776) Unit!44429)

(assert (=> b!1354426 (= lt!598218 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!750 (List!31776 List!31776) Bool)

(assert (=> b!1354426 (subseq!750 acc!759 acc!759)))

(declare-datatypes ((array!92223 0))(
  ( (array!92224 (arr!44555 (Array (_ BitVec 32) (_ BitVec 64))) (size!45106 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92223)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92223 List!31776 List!31776 (_ BitVec 32)) Unit!44429)

(declare-fun $colon$colon!767 (List!31776 (_ BitVec 64)) List!31776)

(assert (=> b!1354426 (= lt!598216 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!767 acc!759 (select (arr!44555 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92223 (_ BitVec 32) List!31776) Bool)

(assert (=> b!1354426 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354427 () Bool)

(declare-fun res!899599 () Bool)

(declare-fun e!769437 () Bool)

(assert (=> b!1354427 (=> (not res!899599) (not e!769437))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354427 (= res!899599 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354428 () Bool)

(declare-fun res!899602 () Bool)

(assert (=> b!1354428 (=> (not res!899602) (not e!769437))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354428 (= res!899602 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45106 a!3742))))))

(declare-fun b!1354429 () Bool)

(declare-fun res!899609 () Bool)

(declare-fun e!769436 () Bool)

(assert (=> b!1354429 (=> (not res!899609) (not e!769436))))

(declare-fun lt!598217 () List!31776)

(assert (=> b!1354429 (= res!899609 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598217))))

(declare-fun b!1354431 () Bool)

(declare-fun res!899612 () Bool)

(assert (=> b!1354431 (=> (not res!899612) (not e!769437))))

(assert (=> b!1354431 (= res!899612 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31773))))

(declare-fun b!1354432 () Bool)

(declare-fun res!899603 () Bool)

(assert (=> b!1354432 (=> (not res!899603) (not e!769437))))

(assert (=> b!1354432 (= res!899603 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45106 a!3742)))))

(declare-fun b!1354433 () Bool)

(declare-fun e!769438 () Bool)

(assert (=> b!1354433 (= e!769438 e!769436)))

(declare-fun res!899601 () Bool)

(assert (=> b!1354433 (=> (not res!899601) (not e!769436))))

(assert (=> b!1354433 (= res!899601 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354433 (= lt!598217 ($colon$colon!767 acc!759 (select (arr!44555 a!3742) from!3120)))))

(declare-fun b!1354434 () Bool)

(declare-fun res!899605 () Bool)

(assert (=> b!1354434 (=> (not res!899605) (not e!769436))))

(declare-fun contains!9341 (List!31776 (_ BitVec 64)) Bool)

(assert (=> b!1354434 (= res!899605 (not (contains!9341 lt!598217 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354435 () Bool)

(assert (=> b!1354435 (= e!769436 (not (bvsle from!3120 (size!45106 a!3742))))))

(assert (=> b!1354435 (arrayNoDuplicates!0 (array!92224 (store (arr!44555 a!3742) i!1404 l!3587) (size!45106 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598217)))

(declare-fun lt!598215 () Unit!44429)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92223 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31776) Unit!44429)

(assert (=> b!1354435 (= lt!598215 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598217))))

(declare-fun b!1354436 () Bool)

(declare-fun res!899606 () Bool)

(assert (=> b!1354436 (=> (not res!899606) (not e!769437))))

(assert (=> b!1354436 (= res!899606 (not (contains!9341 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354437 () Bool)

(declare-fun res!899611 () Bool)

(assert (=> b!1354437 (=> (not res!899611) (not e!769436))))

(assert (=> b!1354437 (= res!899611 (not (contains!9341 lt!598217 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354438 () Bool)

(assert (=> b!1354438 (= e!769437 e!769438)))

(declare-fun res!899610 () Bool)

(assert (=> b!1354438 (=> (not res!899610) (not e!769438))))

(declare-fun lt!598219 () Bool)

(assert (=> b!1354438 (= res!899610 (and (not (= from!3120 i!1404)) lt!598219))))

(declare-fun lt!598220 () Unit!44429)

(assert (=> b!1354438 (= lt!598220 e!769434)))

(declare-fun c!126856 () Bool)

(assert (=> b!1354438 (= c!126856 lt!598219)))

(assert (=> b!1354438 (= lt!598219 (validKeyInArray!0 (select (arr!44555 a!3742) from!3120)))))

(declare-fun b!1354439 () Bool)

(declare-fun Unit!44431 () Unit!44429)

(assert (=> b!1354439 (= e!769434 Unit!44431)))

(declare-fun b!1354440 () Bool)

(declare-fun res!899607 () Bool)

(assert (=> b!1354440 (=> (not res!899607) (not e!769436))))

(declare-fun noDuplicate!2220 (List!31776) Bool)

(assert (=> b!1354440 (= res!899607 (noDuplicate!2220 lt!598217))))

(declare-fun b!1354441 () Bool)

(declare-fun res!899600 () Bool)

(assert (=> b!1354441 (=> (not res!899600) (not e!769437))))

(assert (=> b!1354441 (= res!899600 (not (contains!9341 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354442 () Bool)

(declare-fun res!899613 () Bool)

(assert (=> b!1354442 (=> (not res!899613) (not e!769437))))

(assert (=> b!1354442 (= res!899613 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354430 () Bool)

(declare-fun res!899608 () Bool)

(assert (=> b!1354430 (=> (not res!899608) (not e!769437))))

(assert (=> b!1354430 (= res!899608 (noDuplicate!2220 acc!759))))

(declare-fun res!899604 () Bool)

(assert (=> start!114118 (=> (not res!899604) (not e!769437))))

(assert (=> start!114118 (= res!899604 (and (bvslt (size!45106 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45106 a!3742))))))

(assert (=> start!114118 e!769437))

(assert (=> start!114118 true))

(declare-fun array_inv!33500 (array!92223) Bool)

(assert (=> start!114118 (array_inv!33500 a!3742)))

(assert (= (and start!114118 res!899604) b!1354430))

(assert (= (and b!1354430 res!899608) b!1354441))

(assert (= (and b!1354441 res!899600) b!1354436))

(assert (= (and b!1354436 res!899606) b!1354431))

(assert (= (and b!1354431 res!899612) b!1354442))

(assert (= (and b!1354442 res!899613) b!1354428))

(assert (= (and b!1354428 res!899602) b!1354427))

(assert (= (and b!1354427 res!899599) b!1354432))

(assert (= (and b!1354432 res!899603) b!1354438))

(assert (= (and b!1354438 c!126856) b!1354426))

(assert (= (and b!1354438 (not c!126856)) b!1354439))

(assert (= (and b!1354438 res!899610) b!1354433))

(assert (= (and b!1354433 res!899601) b!1354440))

(assert (= (and b!1354440 res!899607) b!1354434))

(assert (= (and b!1354434 res!899605) b!1354437))

(assert (= (and b!1354437 res!899611) b!1354429))

(assert (= (and b!1354429 res!899609) b!1354435))

(declare-fun m!1240819 () Bool)

(assert (=> b!1354438 m!1240819))

(assert (=> b!1354438 m!1240819))

(declare-fun m!1240821 () Bool)

(assert (=> b!1354438 m!1240821))

(declare-fun m!1240823 () Bool)

(assert (=> b!1354436 m!1240823))

(declare-fun m!1240825 () Bool)

(assert (=> b!1354441 m!1240825))

(declare-fun m!1240827 () Bool)

(assert (=> b!1354437 m!1240827))

(declare-fun m!1240829 () Bool)

(assert (=> b!1354435 m!1240829))

(declare-fun m!1240831 () Bool)

(assert (=> b!1354435 m!1240831))

(declare-fun m!1240833 () Bool)

(assert (=> b!1354435 m!1240833))

(declare-fun m!1240835 () Bool)

(assert (=> b!1354434 m!1240835))

(declare-fun m!1240837 () Bool)

(assert (=> b!1354429 m!1240837))

(declare-fun m!1240839 () Bool)

(assert (=> b!1354431 m!1240839))

(declare-fun m!1240841 () Bool)

(assert (=> b!1354440 m!1240841))

(assert (=> b!1354433 m!1240819))

(assert (=> b!1354433 m!1240819))

(declare-fun m!1240843 () Bool)

(assert (=> b!1354433 m!1240843))

(declare-fun m!1240845 () Bool)

(assert (=> b!1354442 m!1240845))

(declare-fun m!1240847 () Bool)

(assert (=> b!1354426 m!1240847))

(assert (=> b!1354426 m!1240819))

(assert (=> b!1354426 m!1240843))

(declare-fun m!1240849 () Bool)

(assert (=> b!1354426 m!1240849))

(declare-fun m!1240851 () Bool)

(assert (=> b!1354426 m!1240851))

(assert (=> b!1354426 m!1240819))

(assert (=> b!1354426 m!1240843))

(declare-fun m!1240853 () Bool)

(assert (=> b!1354426 m!1240853))

(declare-fun m!1240855 () Bool)

(assert (=> b!1354427 m!1240855))

(declare-fun m!1240857 () Bool)

(assert (=> start!114118 m!1240857))

(declare-fun m!1240859 () Bool)

(assert (=> b!1354430 m!1240859))

(check-sat (not b!1354436) (not b!1354430) (not b!1354427) (not b!1354433) (not b!1354442) (not start!114118) (not b!1354440) (not b!1354441) (not b!1354435) (not b!1354437) (not b!1354438) (not b!1354434) (not b!1354429) (not b!1354431) (not b!1354426))
(check-sat)
