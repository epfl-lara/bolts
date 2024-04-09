; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114052 () Bool)

(assert start!114052)

(declare-fun b!1352876 () Bool)

(declare-fun res!898248 () Bool)

(declare-fun e!768955 () Bool)

(assert (=> b!1352876 (=> (not res!898248) (not e!768955))))

(declare-datatypes ((List!31743 0))(
  ( (Nil!31740) (Cons!31739 (h!32948 (_ BitVec 64)) (t!46408 List!31743)) )
))
(declare-fun acc!759 () List!31743)

(declare-fun noDuplicate!2187 (List!31743) Bool)

(assert (=> b!1352876 (= res!898248 (noDuplicate!2187 acc!759))))

(declare-fun b!1352877 () Bool)

(declare-fun e!768952 () Bool)

(assert (=> b!1352877 (= e!768955 e!768952)))

(declare-fun res!898249 () Bool)

(assert (=> b!1352877 (=> (not res!898249) (not e!768952))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352877 (= res!898249 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44330 0))(
  ( (Unit!44331) )
))
(declare-fun lt!597649 () Unit!44330)

(declare-fun e!768954 () Unit!44330)

(assert (=> b!1352877 (= lt!597649 e!768954)))

(declare-fun c!126757 () Bool)

(declare-datatypes ((array!92157 0))(
  ( (array!92158 (arr!44522 (Array (_ BitVec 32) (_ BitVec 64))) (size!45073 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92157)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352877 (= c!126757 (validKeyInArray!0 (select (arr!44522 a!3742) from!3120)))))

(declare-fun b!1352878 () Bool)

(declare-fun res!898257 () Bool)

(assert (=> b!1352878 (=> (not res!898257) (not e!768955))))

(assert (=> b!1352878 (= res!898257 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45073 a!3742))))))

(declare-fun b!1352879 () Bool)

(assert (=> b!1352879 (= e!768952 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun arrayNoDuplicates!0 (array!92157 (_ BitVec 32) List!31743) Bool)

(assert (=> b!1352879 (arrayNoDuplicates!0 (array!92158 (store (arr!44522 a!3742) i!1404 l!3587) (size!45073 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597650 () Unit!44330)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92157 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31743) Unit!44330)

(assert (=> b!1352879 (= lt!597650 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352880 () Bool)

(declare-fun lt!597648 () Unit!44330)

(assert (=> b!1352880 (= e!768954 lt!597648)))

(declare-fun lt!597647 () Unit!44330)

(declare-fun lemmaListSubSeqRefl!0 (List!31743) Unit!44330)

(assert (=> b!1352880 (= lt!597647 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!717 (List!31743 List!31743) Bool)

(assert (=> b!1352880 (subseq!717 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92157 List!31743 List!31743 (_ BitVec 32)) Unit!44330)

(declare-fun $colon$colon!734 (List!31743 (_ BitVec 64)) List!31743)

(assert (=> b!1352880 (= lt!597648 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!734 acc!759 (select (arr!44522 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352880 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352882 () Bool)

(declare-fun res!898247 () Bool)

(assert (=> b!1352882 (=> (not res!898247) (not e!768955))))

(declare-fun contains!9308 (List!31743 (_ BitVec 64)) Bool)

(assert (=> b!1352882 (= res!898247 (not (contains!9308 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352883 () Bool)

(declare-fun res!898252 () Bool)

(assert (=> b!1352883 (=> (not res!898252) (not e!768952))))

(assert (=> b!1352883 (= res!898252 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352884 () Bool)

(declare-fun res!898254 () Bool)

(assert (=> b!1352884 (=> (not res!898254) (not e!768955))))

(assert (=> b!1352884 (= res!898254 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352885 () Bool)

(declare-fun res!898251 () Bool)

(assert (=> b!1352885 (=> (not res!898251) (not e!768955))))

(assert (=> b!1352885 (= res!898251 (not (contains!9308 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352886 () Bool)

(declare-fun Unit!44332 () Unit!44330)

(assert (=> b!1352886 (= e!768954 Unit!44332)))

(declare-fun b!1352887 () Bool)

(declare-fun res!898255 () Bool)

(assert (=> b!1352887 (=> (not res!898255) (not e!768955))))

(assert (=> b!1352887 (= res!898255 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352888 () Bool)

(declare-fun res!898253 () Bool)

(assert (=> b!1352888 (=> (not res!898253) (not e!768955))))

(assert (=> b!1352888 (= res!898253 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45073 a!3742)))))

(declare-fun b!1352881 () Bool)

(declare-fun res!898250 () Bool)

(assert (=> b!1352881 (=> (not res!898250) (not e!768955))))

(assert (=> b!1352881 (= res!898250 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31740))))

(declare-fun res!898256 () Bool)

(assert (=> start!114052 (=> (not res!898256) (not e!768955))))

(assert (=> start!114052 (= res!898256 (and (bvslt (size!45073 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45073 a!3742))))))

(assert (=> start!114052 e!768955))

(assert (=> start!114052 true))

(declare-fun array_inv!33467 (array!92157) Bool)

(assert (=> start!114052 (array_inv!33467 a!3742)))

(assert (= (and start!114052 res!898256) b!1352876))

(assert (= (and b!1352876 res!898248) b!1352885))

(assert (= (and b!1352885 res!898251) b!1352882))

(assert (= (and b!1352882 res!898247) b!1352881))

(assert (= (and b!1352881 res!898250) b!1352884))

(assert (= (and b!1352884 res!898254) b!1352878))

(assert (= (and b!1352878 res!898257) b!1352887))

(assert (= (and b!1352887 res!898255) b!1352888))

(assert (= (and b!1352888 res!898253) b!1352877))

(assert (= (and b!1352877 c!126757) b!1352880))

(assert (= (and b!1352877 (not c!126757)) b!1352886))

(assert (= (and b!1352877 res!898249) b!1352883))

(assert (= (and b!1352883 res!898252) b!1352879))

(declare-fun m!1239635 () Bool)

(assert (=> b!1352885 m!1239635))

(declare-fun m!1239637 () Bool)

(assert (=> b!1352882 m!1239637))

(declare-fun m!1239639 () Bool)

(assert (=> b!1352884 m!1239639))

(declare-fun m!1239641 () Bool)

(assert (=> b!1352881 m!1239641))

(declare-fun m!1239643 () Bool)

(assert (=> start!114052 m!1239643))

(declare-fun m!1239645 () Bool)

(assert (=> b!1352887 m!1239645))

(declare-fun m!1239647 () Bool)

(assert (=> b!1352877 m!1239647))

(assert (=> b!1352877 m!1239647))

(declare-fun m!1239649 () Bool)

(assert (=> b!1352877 m!1239649))

(declare-fun m!1239651 () Bool)

(assert (=> b!1352880 m!1239651))

(assert (=> b!1352880 m!1239647))

(declare-fun m!1239653 () Bool)

(assert (=> b!1352880 m!1239653))

(declare-fun m!1239655 () Bool)

(assert (=> b!1352880 m!1239655))

(declare-fun m!1239657 () Bool)

(assert (=> b!1352880 m!1239657))

(assert (=> b!1352880 m!1239647))

(assert (=> b!1352880 m!1239653))

(declare-fun m!1239659 () Bool)

(assert (=> b!1352880 m!1239659))

(declare-fun m!1239661 () Bool)

(assert (=> b!1352879 m!1239661))

(declare-fun m!1239663 () Bool)

(assert (=> b!1352879 m!1239663))

(declare-fun m!1239665 () Bool)

(assert (=> b!1352879 m!1239665))

(assert (=> b!1352883 m!1239657))

(declare-fun m!1239667 () Bool)

(assert (=> b!1352876 m!1239667))

(check-sat (not start!114052) (not b!1352887) (not b!1352882) (not b!1352880) (not b!1352883) (not b!1352884) (not b!1352885) (not b!1352879) (not b!1352876) (not b!1352877) (not b!1352881))
(check-sat)
