; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114622 () Bool)

(assert start!114622)

(declare-fun b!1359584 () Bool)

(declare-fun res!904143 () Bool)

(declare-fun e!771457 () Bool)

(assert (=> b!1359584 (=> (not res!904143) (not e!771457))))

(declare-datatypes ((array!92490 0))(
  ( (array!92491 (arr!44681 (Array (_ BitVec 32) (_ BitVec 64))) (size!45232 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92490)

(declare-datatypes ((List!31902 0))(
  ( (Nil!31899) (Cons!31898 (h!33107 (_ BitVec 64)) (t!46582 List!31902)) )
))
(declare-fun arrayNoDuplicates!0 (array!92490 (_ BitVec 32) List!31902) Bool)

(assert (=> b!1359584 (= res!904143 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31899))))

(declare-fun b!1359585 () Bool)

(declare-fun res!904141 () Bool)

(assert (=> b!1359585 (=> (not res!904141) (not e!771457))))

(declare-fun acc!759 () List!31902)

(declare-fun contains!9467 (List!31902 (_ BitVec 64)) Bool)

(assert (=> b!1359585 (= res!904141 (not (contains!9467 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359586 () Bool)

(declare-fun res!904140 () Bool)

(assert (=> b!1359586 (=> (not res!904140) (not e!771457))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1359586 (= res!904140 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45232 a!3742)))))

(declare-fun b!1359587 () Bool)

(declare-fun e!771456 () Bool)

(assert (=> b!1359587 (= e!771457 e!771456)))

(declare-fun res!904146 () Bool)

(assert (=> b!1359587 (=> (not res!904146) (not e!771456))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359587 (= res!904146 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44726 0))(
  ( (Unit!44727) )
))
(declare-fun lt!599606 () Unit!44726)

(declare-fun e!771455 () Unit!44726)

(assert (=> b!1359587 (= lt!599606 e!771455)))

(declare-fun c!127165 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359587 (= c!127165 (validKeyInArray!0 (select (arr!44681 a!3742) from!3120)))))

(declare-fun b!1359588 () Bool)

(declare-fun res!904147 () Bool)

(assert (=> b!1359588 (=> (not res!904147) (not e!771457))))

(assert (=> b!1359588 (= res!904147 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45232 a!3742))))))

(declare-fun b!1359589 () Bool)

(declare-fun res!904139 () Bool)

(assert (=> b!1359589 (=> (not res!904139) (not e!771457))))

(assert (=> b!1359589 (= res!904139 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!904149 () Bool)

(assert (=> start!114622 (=> (not res!904149) (not e!771457))))

(assert (=> start!114622 (= res!904149 (and (bvslt (size!45232 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45232 a!3742))))))

(assert (=> start!114622 e!771457))

(assert (=> start!114622 true))

(declare-fun array_inv!33626 (array!92490) Bool)

(assert (=> start!114622 (array_inv!33626 a!3742)))

(declare-fun b!1359590 () Bool)

(declare-fun res!904148 () Bool)

(assert (=> b!1359590 (=> (not res!904148) (not e!771457))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359590 (= res!904148 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359591 () Bool)

(declare-fun res!904142 () Bool)

(assert (=> b!1359591 (=> (not res!904142) (not e!771456))))

(assert (=> b!1359591 (= res!904142 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359592 () Bool)

(declare-fun Unit!44728 () Unit!44726)

(assert (=> b!1359592 (= e!771455 Unit!44728)))

(declare-fun b!1359593 () Bool)

(declare-fun res!904144 () Bool)

(assert (=> b!1359593 (=> (not res!904144) (not e!771457))))

(assert (=> b!1359593 (= res!904144 (not (contains!9467 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359594 () Bool)

(declare-fun lt!599608 () Unit!44726)

(assert (=> b!1359594 (= e!771455 lt!599608)))

(declare-fun lt!599609 () Unit!44726)

(declare-fun lemmaListSubSeqRefl!0 (List!31902) Unit!44726)

(assert (=> b!1359594 (= lt!599609 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!858 (List!31902 List!31902) Bool)

(assert (=> b!1359594 (subseq!858 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92490 List!31902 List!31902 (_ BitVec 32)) Unit!44726)

(declare-fun $colon$colon!863 (List!31902 (_ BitVec 64)) List!31902)

(assert (=> b!1359594 (= lt!599608 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!863 acc!759 (select (arr!44681 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359594 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359595 () Bool)

(assert (=> b!1359595 (= e!771456 (not true))))

(assert (=> b!1359595 (arrayNoDuplicates!0 (array!92491 (store (arr!44681 a!3742) i!1404 l!3587) (size!45232 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599607 () Unit!44726)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92490 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31902) Unit!44726)

(assert (=> b!1359595 (= lt!599607 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359596 () Bool)

(declare-fun res!904145 () Bool)

(assert (=> b!1359596 (=> (not res!904145) (not e!771457))))

(declare-fun noDuplicate!2346 (List!31902) Bool)

(assert (=> b!1359596 (= res!904145 (noDuplicate!2346 acc!759))))

(assert (= (and start!114622 res!904149) b!1359596))

(assert (= (and b!1359596 res!904145) b!1359593))

(assert (= (and b!1359593 res!904144) b!1359585))

(assert (= (and b!1359585 res!904141) b!1359584))

(assert (= (and b!1359584 res!904143) b!1359589))

(assert (= (and b!1359589 res!904139) b!1359588))

(assert (= (and b!1359588 res!904147) b!1359590))

(assert (= (and b!1359590 res!904148) b!1359586))

(assert (= (and b!1359586 res!904140) b!1359587))

(assert (= (and b!1359587 c!127165) b!1359594))

(assert (= (and b!1359587 (not c!127165)) b!1359592))

(assert (= (and b!1359587 res!904146) b!1359591))

(assert (= (and b!1359591 res!904142) b!1359595))

(declare-fun m!1244975 () Bool)

(assert (=> b!1359596 m!1244975))

(declare-fun m!1244977 () Bool)

(assert (=> b!1359591 m!1244977))

(declare-fun m!1244979 () Bool)

(assert (=> b!1359595 m!1244979))

(declare-fun m!1244981 () Bool)

(assert (=> b!1359595 m!1244981))

(declare-fun m!1244983 () Bool)

(assert (=> b!1359595 m!1244983))

(declare-fun m!1244985 () Bool)

(assert (=> b!1359594 m!1244985))

(declare-fun m!1244987 () Bool)

(assert (=> b!1359594 m!1244987))

(declare-fun m!1244989 () Bool)

(assert (=> b!1359594 m!1244989))

(declare-fun m!1244991 () Bool)

(assert (=> b!1359594 m!1244991))

(assert (=> b!1359594 m!1244977))

(assert (=> b!1359594 m!1244987))

(assert (=> b!1359594 m!1244989))

(declare-fun m!1244993 () Bool)

(assert (=> b!1359594 m!1244993))

(declare-fun m!1244995 () Bool)

(assert (=> b!1359590 m!1244995))

(declare-fun m!1244997 () Bool)

(assert (=> b!1359585 m!1244997))

(declare-fun m!1244999 () Bool)

(assert (=> start!114622 m!1244999))

(declare-fun m!1245001 () Bool)

(assert (=> b!1359593 m!1245001))

(declare-fun m!1245003 () Bool)

(assert (=> b!1359589 m!1245003))

(assert (=> b!1359587 m!1244987))

(assert (=> b!1359587 m!1244987))

(declare-fun m!1245005 () Bool)

(assert (=> b!1359587 m!1245005))

(declare-fun m!1245007 () Bool)

(assert (=> b!1359584 m!1245007))

(check-sat (not b!1359584) (not b!1359585) (not b!1359594) (not b!1359590) (not b!1359591) (not b!1359593) (not start!114622) (not b!1359596) (not b!1359595) (not b!1359587) (not b!1359589))
(check-sat)
