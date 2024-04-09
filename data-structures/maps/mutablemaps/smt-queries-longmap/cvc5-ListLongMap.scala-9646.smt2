; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114050 () Bool)

(assert start!114050)

(declare-fun b!1352837 () Bool)

(declare-fun res!898217 () Bool)

(declare-fun e!768943 () Bool)

(assert (=> b!1352837 (=> (not res!898217) (not e!768943))))

(declare-datatypes ((List!31742 0))(
  ( (Nil!31739) (Cons!31738 (h!32947 (_ BitVec 64)) (t!46407 List!31742)) )
))
(declare-fun acc!759 () List!31742)

(declare-fun contains!9307 (List!31742 (_ BitVec 64)) Bool)

(assert (=> b!1352837 (= res!898217 (not (contains!9307 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352838 () Bool)

(declare-fun res!898216 () Bool)

(assert (=> b!1352838 (=> (not res!898216) (not e!768943))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92155 0))(
  ( (array!92156 (arr!44521 (Array (_ BitVec 32) (_ BitVec 64))) (size!45072 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92155)

(assert (=> b!1352838 (= res!898216 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45072 a!3742)))))

(declare-fun b!1352839 () Bool)

(declare-fun res!898220 () Bool)

(declare-fun e!768941 () Bool)

(assert (=> b!1352839 (=> (not res!898220) (not e!768941))))

(declare-fun arrayNoDuplicates!0 (array!92155 (_ BitVec 32) List!31742) Bool)

(assert (=> b!1352839 (= res!898220 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352840 () Bool)

(assert (=> b!1352840 (= e!768943 e!768941)))

(declare-fun res!898215 () Bool)

(assert (=> b!1352840 (=> (not res!898215) (not e!768941))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352840 (= res!898215 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44327 0))(
  ( (Unit!44328) )
))
(declare-fun lt!597635 () Unit!44327)

(declare-fun e!768940 () Unit!44327)

(assert (=> b!1352840 (= lt!597635 e!768940)))

(declare-fun c!126754 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352840 (= c!126754 (validKeyInArray!0 (select (arr!44521 a!3742) from!3120)))))

(declare-fun b!1352841 () Bool)

(declare-fun res!898222 () Bool)

(assert (=> b!1352841 (=> (not res!898222) (not e!768943))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352841 (= res!898222 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352842 () Bool)

(declare-fun Unit!44329 () Unit!44327)

(assert (=> b!1352842 (= e!768940 Unit!44329)))

(declare-fun b!1352843 () Bool)

(declare-fun res!898223 () Bool)

(assert (=> b!1352843 (=> (not res!898223) (not e!768943))))

(assert (=> b!1352843 (= res!898223 (not (contains!9307 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352844 () Bool)

(declare-fun lt!597638 () Unit!44327)

(assert (=> b!1352844 (= e!768940 lt!597638)))

(declare-fun lt!597637 () Unit!44327)

(declare-fun lemmaListSubSeqRefl!0 (List!31742) Unit!44327)

(assert (=> b!1352844 (= lt!597637 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!716 (List!31742 List!31742) Bool)

(assert (=> b!1352844 (subseq!716 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92155 List!31742 List!31742 (_ BitVec 32)) Unit!44327)

(declare-fun $colon$colon!733 (List!31742 (_ BitVec 64)) List!31742)

(assert (=> b!1352844 (= lt!597638 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!733 acc!759 (select (arr!44521 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352844 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352845 () Bool)

(declare-fun res!898214 () Bool)

(assert (=> b!1352845 (=> (not res!898214) (not e!768943))))

(declare-fun noDuplicate!2186 (List!31742) Bool)

(assert (=> b!1352845 (= res!898214 (noDuplicate!2186 acc!759))))

(declare-fun b!1352847 () Bool)

(declare-fun res!898219 () Bool)

(assert (=> b!1352847 (=> (not res!898219) (not e!768943))))

(assert (=> b!1352847 (= res!898219 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31739))))

(declare-fun b!1352848 () Bool)

(assert (=> b!1352848 (= e!768941 (not true))))

(assert (=> b!1352848 (arrayNoDuplicates!0 (array!92156 (store (arr!44521 a!3742) i!1404 l!3587) (size!45072 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597636 () Unit!44327)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92155 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31742) Unit!44327)

(assert (=> b!1352848 (= lt!597636 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352849 () Bool)

(declare-fun res!898224 () Bool)

(assert (=> b!1352849 (=> (not res!898224) (not e!768943))))

(assert (=> b!1352849 (= res!898224 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45072 a!3742))))))

(declare-fun res!898221 () Bool)

(assert (=> start!114050 (=> (not res!898221) (not e!768943))))

(assert (=> start!114050 (= res!898221 (and (bvslt (size!45072 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45072 a!3742))))))

(assert (=> start!114050 e!768943))

(assert (=> start!114050 true))

(declare-fun array_inv!33466 (array!92155) Bool)

(assert (=> start!114050 (array_inv!33466 a!3742)))

(declare-fun b!1352846 () Bool)

(declare-fun res!898218 () Bool)

(assert (=> b!1352846 (=> (not res!898218) (not e!768943))))

(assert (=> b!1352846 (= res!898218 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114050 res!898221) b!1352845))

(assert (= (and b!1352845 res!898214) b!1352837))

(assert (= (and b!1352837 res!898217) b!1352843))

(assert (= (and b!1352843 res!898223) b!1352847))

(assert (= (and b!1352847 res!898219) b!1352846))

(assert (= (and b!1352846 res!898218) b!1352849))

(assert (= (and b!1352849 res!898224) b!1352841))

(assert (= (and b!1352841 res!898222) b!1352838))

(assert (= (and b!1352838 res!898216) b!1352840))

(assert (= (and b!1352840 c!126754) b!1352844))

(assert (= (and b!1352840 (not c!126754)) b!1352842))

(assert (= (and b!1352840 res!898215) b!1352839))

(assert (= (and b!1352839 res!898220) b!1352848))

(declare-fun m!1239601 () Bool)

(assert (=> start!114050 m!1239601))

(declare-fun m!1239603 () Bool)

(assert (=> b!1352843 m!1239603))

(declare-fun m!1239605 () Bool)

(assert (=> b!1352848 m!1239605))

(declare-fun m!1239607 () Bool)

(assert (=> b!1352848 m!1239607))

(declare-fun m!1239609 () Bool)

(assert (=> b!1352848 m!1239609))

(declare-fun m!1239611 () Bool)

(assert (=> b!1352844 m!1239611))

(declare-fun m!1239613 () Bool)

(assert (=> b!1352844 m!1239613))

(declare-fun m!1239615 () Bool)

(assert (=> b!1352844 m!1239615))

(declare-fun m!1239617 () Bool)

(assert (=> b!1352844 m!1239617))

(declare-fun m!1239619 () Bool)

(assert (=> b!1352844 m!1239619))

(assert (=> b!1352844 m!1239613))

(assert (=> b!1352844 m!1239615))

(declare-fun m!1239621 () Bool)

(assert (=> b!1352844 m!1239621))

(declare-fun m!1239623 () Bool)

(assert (=> b!1352846 m!1239623))

(declare-fun m!1239625 () Bool)

(assert (=> b!1352847 m!1239625))

(declare-fun m!1239627 () Bool)

(assert (=> b!1352841 m!1239627))

(declare-fun m!1239629 () Bool)

(assert (=> b!1352837 m!1239629))

(declare-fun m!1239631 () Bool)

(assert (=> b!1352845 m!1239631))

(assert (=> b!1352840 m!1239613))

(assert (=> b!1352840 m!1239613))

(declare-fun m!1239633 () Bool)

(assert (=> b!1352840 m!1239633))

(assert (=> b!1352839 m!1239619))

(push 1)

