; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114268 () Bool)

(assert start!114268)

(declare-fun b!1356947 () Bool)

(declare-fun res!901827 () Bool)

(declare-fun e!770211 () Bool)

(assert (=> b!1356947 (=> (not res!901827) (not e!770211))))

(declare-datatypes ((array!92373 0))(
  ( (array!92374 (arr!44630 (Array (_ BitVec 32) (_ BitVec 64))) (size!45181 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92373)

(declare-datatypes ((List!31851 0))(
  ( (Nil!31848) (Cons!31847 (h!33056 (_ BitVec 64)) (t!46516 List!31851)) )
))
(declare-fun arrayNoDuplicates!0 (array!92373 (_ BitVec 32) List!31851) Bool)

(assert (=> b!1356947 (= res!901827 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31848))))

(declare-fun res!901832 () Bool)

(assert (=> start!114268 (=> (not res!901832) (not e!770211))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114268 (= res!901832 (and (bvslt (size!45181 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45181 a!3742))))))

(assert (=> start!114268 e!770211))

(assert (=> start!114268 true))

(declare-fun array_inv!33575 (array!92373) Bool)

(assert (=> start!114268 (array_inv!33575 a!3742)))

(declare-fun b!1356948 () Bool)

(declare-fun res!901830 () Bool)

(assert (=> b!1356948 (=> (not res!901830) (not e!770211))))

(assert (=> b!1356948 (= res!901830 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45181 a!3742)))))

(declare-fun b!1356949 () Bool)

(declare-fun res!901826 () Bool)

(assert (=> b!1356949 (=> (not res!901826) (not e!770211))))

(declare-fun acc!759 () List!31851)

(declare-fun contains!9416 (List!31851 (_ BitVec 64)) Bool)

(assert (=> b!1356949 (= res!901826 (not (contains!9416 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356950 () Bool)

(declare-fun res!901829 () Bool)

(assert (=> b!1356950 (=> (not res!901829) (not e!770211))))

(declare-fun noDuplicate!2295 (List!31851) Bool)

(assert (=> b!1356950 (= res!901829 (noDuplicate!2295 acc!759))))

(declare-fun b!1356951 () Bool)

(declare-fun res!901831 () Bool)

(assert (=> b!1356951 (=> (not res!901831) (not e!770211))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356951 (= res!901831 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356952 () Bool)

(declare-fun res!901828 () Bool)

(assert (=> b!1356952 (=> (not res!901828) (not e!770211))))

(assert (=> b!1356952 (= res!901828 (validKeyInArray!0 (select (arr!44630 a!3742) from!3120)))))

(declare-fun b!1356953 () Bool)

(declare-fun res!901825 () Bool)

(assert (=> b!1356953 (=> (not res!901825) (not e!770211))))

(assert (=> b!1356953 (= res!901825 (not (contains!9416 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356954 () Bool)

(assert (=> b!1356954 (= e!770211 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun subseq!807 (List!31851 List!31851) Bool)

(assert (=> b!1356954 (subseq!807 acc!759 acc!759)))

(declare-datatypes ((Unit!44593 0))(
  ( (Unit!44594) )
))
(declare-fun lt!599045 () Unit!44593)

(declare-fun lemmaListSubSeqRefl!0 (List!31851) Unit!44593)

(assert (=> b!1356954 (= lt!599045 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356955 () Bool)

(declare-fun res!901833 () Bool)

(assert (=> b!1356955 (=> (not res!901833) (not e!770211))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356955 (= res!901833 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45181 a!3742))))))

(declare-fun b!1356956 () Bool)

(declare-fun res!901824 () Bool)

(assert (=> b!1356956 (=> (not res!901824) (not e!770211))))

(assert (=> b!1356956 (= res!901824 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114268 res!901832) b!1356950))

(assert (= (and b!1356950 res!901829) b!1356953))

(assert (= (and b!1356953 res!901825) b!1356949))

(assert (= (and b!1356949 res!901826) b!1356947))

(assert (= (and b!1356947 res!901827) b!1356956))

(assert (= (and b!1356956 res!901824) b!1356955))

(assert (= (and b!1356955 res!901833) b!1356951))

(assert (= (and b!1356951 res!901831) b!1356948))

(assert (= (and b!1356948 res!901830) b!1356952))

(assert (= (and b!1356952 res!901828) b!1356954))

(declare-fun m!1242827 () Bool)

(assert (=> b!1356953 m!1242827))

(declare-fun m!1242829 () Bool)

(assert (=> b!1356951 m!1242829))

(declare-fun m!1242831 () Bool)

(assert (=> b!1356956 m!1242831))

(declare-fun m!1242833 () Bool)

(assert (=> b!1356954 m!1242833))

(declare-fun m!1242835 () Bool)

(assert (=> b!1356954 m!1242835))

(declare-fun m!1242837 () Bool)

(assert (=> b!1356952 m!1242837))

(assert (=> b!1356952 m!1242837))

(declare-fun m!1242839 () Bool)

(assert (=> b!1356952 m!1242839))

(declare-fun m!1242841 () Bool)

(assert (=> start!114268 m!1242841))

(declare-fun m!1242843 () Bool)

(assert (=> b!1356950 m!1242843))

(declare-fun m!1242845 () Bool)

(assert (=> b!1356949 m!1242845))

(declare-fun m!1242847 () Bool)

(assert (=> b!1356947 m!1242847))

(check-sat (not b!1356949) (not b!1356947) (not b!1356952) (not b!1356953) (not b!1356950) (not b!1356956) (not b!1356951) (not start!114268) (not b!1356954))
(check-sat)
