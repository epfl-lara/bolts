; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114194 () Bool)

(assert start!114194)

(declare-fun b!1355951 () Bool)

(declare-fun res!900900 () Bool)

(declare-fun e!769923 () Bool)

(assert (=> b!1355951 (=> (not res!900900) (not e!769923))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355951 (= res!900900 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355952 () Bool)

(declare-fun res!900898 () Bool)

(assert (=> b!1355952 (=> (not res!900898) (not e!769923))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92299 0))(
  ( (array!92300 (arr!44593 (Array (_ BitVec 32) (_ BitVec 64))) (size!45144 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92299)

(assert (=> b!1355952 (= res!900898 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45144 a!3742)))))

(declare-fun b!1355953 () Bool)

(declare-fun res!900905 () Bool)

(declare-fun e!769921 () Bool)

(assert (=> b!1355953 (=> (not res!900905) (not e!769921))))

(declare-datatypes ((List!31814 0))(
  ( (Nil!31811) (Cons!31810 (h!33019 (_ BitVec 64)) (t!46479 List!31814)) )
))
(declare-fun acc!759 () List!31814)

(declare-fun arrayNoDuplicates!0 (array!92299 (_ BitVec 32) List!31814) Bool)

(assert (=> b!1355953 (= res!900905 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355954 () Bool)

(declare-fun res!900902 () Bool)

(assert (=> b!1355954 (=> (not res!900902) (not e!769923))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355954 (= res!900902 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45144 a!3742))))))

(declare-fun b!1355955 () Bool)

(assert (=> b!1355955 (= e!769921 (not (bvsle from!3120 (size!45144 a!3742))))))

(assert (=> b!1355955 (arrayNoDuplicates!0 (array!92300 (store (arr!44593 a!3742) i!1404 l!3587) (size!45144 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44543 0))(
  ( (Unit!44544) )
))
(declare-fun lt!598818 () Unit!44543)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92299 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31814) Unit!44543)

(assert (=> b!1355955 (= lt!598818 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355956 () Bool)

(declare-fun res!900899 () Bool)

(assert (=> b!1355956 (=> (not res!900899) (not e!769923))))

(assert (=> b!1355956 (= res!900899 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355957 () Bool)

(declare-fun res!900903 () Bool)

(assert (=> b!1355957 (=> (not res!900903) (not e!769923))))

(declare-fun noDuplicate!2258 (List!31814) Bool)

(assert (=> b!1355957 (= res!900903 (noDuplicate!2258 acc!759))))

(declare-fun b!1355959 () Bool)

(declare-fun res!900901 () Bool)

(assert (=> b!1355959 (=> (not res!900901) (not e!769923))))

(declare-fun contains!9379 (List!31814 (_ BitVec 64)) Bool)

(assert (=> b!1355959 (= res!900901 (not (contains!9379 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355960 () Bool)

(declare-fun res!900897 () Bool)

(assert (=> b!1355960 (=> (not res!900897) (not e!769923))))

(assert (=> b!1355960 (= res!900897 (not (contains!9379 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900896 () Bool)

(assert (=> start!114194 (=> (not res!900896) (not e!769923))))

(assert (=> start!114194 (= res!900896 (and (bvslt (size!45144 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45144 a!3742))))))

(assert (=> start!114194 e!769923))

(assert (=> start!114194 true))

(declare-fun array_inv!33538 (array!92299) Bool)

(assert (=> start!114194 (array_inv!33538 a!3742)))

(declare-fun b!1355958 () Bool)

(declare-fun e!769922 () Unit!44543)

(declare-fun Unit!44545 () Unit!44543)

(assert (=> b!1355958 (= e!769922 Unit!44545)))

(declare-fun b!1355961 () Bool)

(assert (=> b!1355961 (= e!769923 e!769921)))

(declare-fun res!900906 () Bool)

(assert (=> b!1355961 (=> (not res!900906) (not e!769921))))

(declare-fun lt!598819 () Bool)

(assert (=> b!1355961 (= res!900906 (and (not (= from!3120 i!1404)) (not lt!598819) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598820 () Unit!44543)

(assert (=> b!1355961 (= lt!598820 e!769922)))

(declare-fun c!126970 () Bool)

(assert (=> b!1355961 (= c!126970 lt!598819)))

(assert (=> b!1355961 (= lt!598819 (validKeyInArray!0 (select (arr!44593 a!3742) from!3120)))))

(declare-fun b!1355962 () Bool)

(declare-fun res!900904 () Bool)

(assert (=> b!1355962 (=> (not res!900904) (not e!769923))))

(assert (=> b!1355962 (= res!900904 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31811))))

(declare-fun b!1355963 () Bool)

(declare-fun lt!598817 () Unit!44543)

(assert (=> b!1355963 (= e!769922 lt!598817)))

(declare-fun lt!598816 () Unit!44543)

(declare-fun lemmaListSubSeqRefl!0 (List!31814) Unit!44543)

(assert (=> b!1355963 (= lt!598816 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!788 (List!31814 List!31814) Bool)

(assert (=> b!1355963 (subseq!788 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92299 List!31814 List!31814 (_ BitVec 32)) Unit!44543)

(declare-fun $colon$colon!805 (List!31814 (_ BitVec 64)) List!31814)

(assert (=> b!1355963 (= lt!598817 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!805 acc!759 (select (arr!44593 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355963 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114194 res!900896) b!1355957))

(assert (= (and b!1355957 res!900903) b!1355959))

(assert (= (and b!1355959 res!900901) b!1355960))

(assert (= (and b!1355960 res!900897) b!1355962))

(assert (= (and b!1355962 res!900904) b!1355956))

(assert (= (and b!1355956 res!900899) b!1355954))

(assert (= (and b!1355954 res!900902) b!1355951))

(assert (= (and b!1355951 res!900900) b!1355952))

(assert (= (and b!1355952 res!900898) b!1355961))

(assert (= (and b!1355961 c!126970) b!1355963))

(assert (= (and b!1355961 (not c!126970)) b!1355958))

(assert (= (and b!1355961 res!900906) b!1355953))

(assert (= (and b!1355953 res!900905) b!1355955))

(declare-fun m!1242037 () Bool)

(assert (=> b!1355961 m!1242037))

(assert (=> b!1355961 m!1242037))

(declare-fun m!1242039 () Bool)

(assert (=> b!1355961 m!1242039))

(declare-fun m!1242041 () Bool)

(assert (=> b!1355962 m!1242041))

(declare-fun m!1242043 () Bool)

(assert (=> b!1355955 m!1242043))

(declare-fun m!1242045 () Bool)

(assert (=> b!1355955 m!1242045))

(declare-fun m!1242047 () Bool)

(assert (=> b!1355955 m!1242047))

(declare-fun m!1242049 () Bool)

(assert (=> b!1355956 m!1242049))

(declare-fun m!1242051 () Bool)

(assert (=> b!1355951 m!1242051))

(declare-fun m!1242053 () Bool)

(assert (=> b!1355960 m!1242053))

(declare-fun m!1242055 () Bool)

(assert (=> b!1355957 m!1242055))

(declare-fun m!1242057 () Bool)

(assert (=> b!1355959 m!1242057))

(declare-fun m!1242059 () Bool)

(assert (=> start!114194 m!1242059))

(declare-fun m!1242061 () Bool)

(assert (=> b!1355953 m!1242061))

(declare-fun m!1242063 () Bool)

(assert (=> b!1355963 m!1242063))

(assert (=> b!1355963 m!1242037))

(declare-fun m!1242065 () Bool)

(assert (=> b!1355963 m!1242065))

(declare-fun m!1242067 () Bool)

(assert (=> b!1355963 m!1242067))

(assert (=> b!1355963 m!1242061))

(assert (=> b!1355963 m!1242037))

(assert (=> b!1355963 m!1242065))

(declare-fun m!1242069 () Bool)

(assert (=> b!1355963 m!1242069))

(push 1)

(assert (not b!1355960))

(assert (not b!1355962))

(assert (not b!1355951))

(assert (not b!1355956))

(assert (not b!1355959))

(assert (not b!1355955))

(assert (not start!114194))

(assert (not b!1355957))

(assert (not b!1355953))

(assert (not b!1355963))

(assert (not b!1355961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

