; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114124 () Bool)

(assert start!114124)

(declare-fun b!1354579 () Bool)

(declare-fun res!899748 () Bool)

(declare-fun e!769481 () Bool)

(assert (=> b!1354579 (=> (not res!899748) (not e!769481))))

(declare-datatypes ((List!31779 0))(
  ( (Nil!31776) (Cons!31775 (h!32984 (_ BitVec 64)) (t!46444 List!31779)) )
))
(declare-fun lt!598274 () List!31779)

(declare-fun contains!9344 (List!31779 (_ BitVec 64)) Bool)

(assert (=> b!1354579 (= res!899748 (not (contains!9344 lt!598274 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354580 () Bool)

(declare-fun res!899742 () Bool)

(declare-fun e!769483 () Bool)

(assert (=> b!1354580 (=> (not res!899742) (not e!769483))))

(declare-fun acc!759 () List!31779)

(assert (=> b!1354580 (= res!899742 (not (contains!9344 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354581 () Bool)

(declare-datatypes ((Unit!44438 0))(
  ( (Unit!44439) )
))
(declare-fun e!769482 () Unit!44438)

(declare-fun lt!598269 () Unit!44438)

(assert (=> b!1354581 (= e!769482 lt!598269)))

(declare-fun lt!598270 () Unit!44438)

(declare-fun lemmaListSubSeqRefl!0 (List!31779) Unit!44438)

(assert (=> b!1354581 (= lt!598270 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!753 (List!31779 List!31779) Bool)

(assert (=> b!1354581 (subseq!753 acc!759 acc!759)))

(declare-datatypes ((array!92229 0))(
  ( (array!92230 (arr!44558 (Array (_ BitVec 32) (_ BitVec 64))) (size!45109 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92229)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92229 List!31779 List!31779 (_ BitVec 32)) Unit!44438)

(declare-fun $colon$colon!770 (List!31779 (_ BitVec 64)) List!31779)

(assert (=> b!1354581 (= lt!598269 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!770 acc!759 (select (arr!44558 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92229 (_ BitVec 32) List!31779) Bool)

(assert (=> b!1354581 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!899740 () Bool)

(assert (=> start!114124 (=> (not res!899740) (not e!769483))))

(assert (=> start!114124 (= res!899740 (and (bvslt (size!45109 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45109 a!3742))))))

(assert (=> start!114124 e!769483))

(assert (=> start!114124 true))

(declare-fun array_inv!33503 (array!92229) Bool)

(assert (=> start!114124 (array_inv!33503 a!3742)))

(declare-fun b!1354582 () Bool)

(declare-fun res!899736 () Bool)

(assert (=> b!1354582 (=> (not res!899736) (not e!769483))))

(assert (=> b!1354582 (= res!899736 (not (contains!9344 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354583 () Bool)

(declare-fun res!899739 () Bool)

(assert (=> b!1354583 (=> (not res!899739) (not e!769481))))

(assert (=> b!1354583 (= res!899739 (not (contains!9344 lt!598274 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354584 () Bool)

(declare-fun res!899746 () Bool)

(assert (=> b!1354584 (=> (not res!899746) (not e!769483))))

(assert (=> b!1354584 (= res!899746 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354585 () Bool)

(declare-fun res!899734 () Bool)

(assert (=> b!1354585 (=> (not res!899734) (not e!769483))))

(assert (=> b!1354585 (= res!899734 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45109 a!3742)))))

(declare-fun b!1354586 () Bool)

(declare-fun res!899747 () Bool)

(assert (=> b!1354586 (=> (not res!899747) (not e!769483))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354586 (= res!899747 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354587 () Bool)

(declare-fun res!899745 () Bool)

(assert (=> b!1354587 (=> (not res!899745) (not e!769483))))

(assert (=> b!1354587 (= res!899745 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31776))))

(declare-fun b!1354588 () Bool)

(declare-fun res!899737 () Bool)

(assert (=> b!1354588 (=> (not res!899737) (not e!769481))))

(declare-fun noDuplicate!2223 (List!31779) Bool)

(assert (=> b!1354588 (= res!899737 (noDuplicate!2223 lt!598274))))

(declare-fun b!1354589 () Bool)

(declare-fun Unit!44440 () Unit!44438)

(assert (=> b!1354589 (= e!769482 Unit!44440)))

(declare-fun b!1354590 () Bool)

(declare-fun e!769479 () Bool)

(assert (=> b!1354590 (= e!769479 e!769481)))

(declare-fun res!899741 () Bool)

(assert (=> b!1354590 (=> (not res!899741) (not e!769481))))

(assert (=> b!1354590 (= res!899741 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354590 (= lt!598274 ($colon$colon!770 acc!759 (select (arr!44558 a!3742) from!3120)))))

(declare-fun b!1354591 () Bool)

(declare-fun res!899735 () Bool)

(assert (=> b!1354591 (=> (not res!899735) (not e!769481))))

(assert (=> b!1354591 (= res!899735 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598274))))

(declare-fun b!1354592 () Bool)

(assert (=> b!1354592 (= e!769483 e!769479)))

(declare-fun res!899743 () Bool)

(assert (=> b!1354592 (=> (not res!899743) (not e!769479))))

(declare-fun lt!598272 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354592 (= res!899743 (and (not (= from!3120 i!1404)) lt!598272))))

(declare-fun lt!598273 () Unit!44438)

(assert (=> b!1354592 (= lt!598273 e!769482)))

(declare-fun c!126865 () Bool)

(assert (=> b!1354592 (= c!126865 lt!598272)))

(assert (=> b!1354592 (= lt!598272 (validKeyInArray!0 (select (arr!44558 a!3742) from!3120)))))

(declare-fun b!1354593 () Bool)

(declare-fun res!899738 () Bool)

(assert (=> b!1354593 (=> (not res!899738) (not e!769483))))

(assert (=> b!1354593 (= res!899738 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45109 a!3742))))))

(declare-fun b!1354594 () Bool)

(assert (=> b!1354594 (= e!769481 (not true))))

(assert (=> b!1354594 (arrayNoDuplicates!0 (array!92230 (store (arr!44558 a!3742) i!1404 l!3587) (size!45109 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598274)))

(declare-fun lt!598271 () Unit!44438)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92229 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31779) Unit!44438)

(assert (=> b!1354594 (= lt!598271 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598274))))

(declare-fun b!1354595 () Bool)

(declare-fun res!899744 () Bool)

(assert (=> b!1354595 (=> (not res!899744) (not e!769483))))

(assert (=> b!1354595 (= res!899744 (noDuplicate!2223 acc!759))))

(assert (= (and start!114124 res!899740) b!1354595))

(assert (= (and b!1354595 res!899744) b!1354582))

(assert (= (and b!1354582 res!899736) b!1354580))

(assert (= (and b!1354580 res!899742) b!1354587))

(assert (= (and b!1354587 res!899745) b!1354584))

(assert (= (and b!1354584 res!899746) b!1354593))

(assert (= (and b!1354593 res!899738) b!1354586))

(assert (= (and b!1354586 res!899747) b!1354585))

(assert (= (and b!1354585 res!899734) b!1354592))

(assert (= (and b!1354592 c!126865) b!1354581))

(assert (= (and b!1354592 (not c!126865)) b!1354589))

(assert (= (and b!1354592 res!899743) b!1354590))

(assert (= (and b!1354590 res!899741) b!1354588))

(assert (= (and b!1354588 res!899737) b!1354583))

(assert (= (and b!1354583 res!899739) b!1354579))

(assert (= (and b!1354579 res!899748) b!1354591))

(assert (= (and b!1354591 res!899735) b!1354594))

(declare-fun m!1240945 () Bool)

(assert (=> start!114124 m!1240945))

(declare-fun m!1240947 () Bool)

(assert (=> b!1354590 m!1240947))

(assert (=> b!1354590 m!1240947))

(declare-fun m!1240949 () Bool)

(assert (=> b!1354590 m!1240949))

(declare-fun m!1240951 () Bool)

(assert (=> b!1354584 m!1240951))

(declare-fun m!1240953 () Bool)

(assert (=> b!1354581 m!1240953))

(assert (=> b!1354581 m!1240947))

(assert (=> b!1354581 m!1240949))

(declare-fun m!1240955 () Bool)

(assert (=> b!1354581 m!1240955))

(declare-fun m!1240957 () Bool)

(assert (=> b!1354581 m!1240957))

(assert (=> b!1354581 m!1240947))

(assert (=> b!1354581 m!1240949))

(declare-fun m!1240959 () Bool)

(assert (=> b!1354581 m!1240959))

(declare-fun m!1240961 () Bool)

(assert (=> b!1354579 m!1240961))

(declare-fun m!1240963 () Bool)

(assert (=> b!1354591 m!1240963))

(declare-fun m!1240965 () Bool)

(assert (=> b!1354588 m!1240965))

(declare-fun m!1240967 () Bool)

(assert (=> b!1354583 m!1240967))

(declare-fun m!1240969 () Bool)

(assert (=> b!1354586 m!1240969))

(declare-fun m!1240971 () Bool)

(assert (=> b!1354582 m!1240971))

(declare-fun m!1240973 () Bool)

(assert (=> b!1354587 m!1240973))

(declare-fun m!1240975 () Bool)

(assert (=> b!1354594 m!1240975))

(declare-fun m!1240977 () Bool)

(assert (=> b!1354594 m!1240977))

(declare-fun m!1240979 () Bool)

(assert (=> b!1354594 m!1240979))

(declare-fun m!1240981 () Bool)

(assert (=> b!1354595 m!1240981))

(assert (=> b!1354592 m!1240947))

(assert (=> b!1354592 m!1240947))

(declare-fun m!1240983 () Bool)

(assert (=> b!1354592 m!1240983))

(declare-fun m!1240985 () Bool)

(assert (=> b!1354580 m!1240985))

(check-sat (not b!1354580) (not b!1354592) (not start!114124) (not b!1354594) (not b!1354584) (not b!1354590) (not b!1354579) (not b!1354586) (not b!1354582) (not b!1354581) (not b!1354587) (not b!1354583) (not b!1354595) (not b!1354591) (not b!1354588))
(check-sat)
