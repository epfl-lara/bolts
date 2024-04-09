; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114922 () Bool)

(assert start!114922)

(declare-fun b!1361851 () Bool)

(declare-fun e!772578 () Bool)

(declare-datatypes ((array!92580 0))(
  ( (array!92581 (arr!44720 (Array (_ BitVec 32) (_ BitVec 64))) (size!45271 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92580)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1361851 (= e!772578 (bvsge (bvsub (size!45271 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45271 a!3742) from!3120)))))

(declare-fun b!1361852 () Bool)

(declare-fun e!772579 () Bool)

(declare-fun e!772576 () Bool)

(assert (=> b!1361852 (= e!772579 e!772576)))

(declare-fun res!906035 () Bool)

(assert (=> b!1361852 (=> (not res!906035) (not e!772576))))

(declare-fun lt!600267 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361852 (= res!906035 (and (not (= from!3120 i!1404)) lt!600267))))

(declare-datatypes ((Unit!44843 0))(
  ( (Unit!44844) )
))
(declare-fun lt!600266 () Unit!44843)

(declare-fun e!772577 () Unit!44843)

(assert (=> b!1361852 (= lt!600266 e!772577)))

(declare-fun c!127351 () Bool)

(assert (=> b!1361852 (= c!127351 lt!600267)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361852 (= lt!600267 (validKeyInArray!0 (select (arr!44720 a!3742) from!3120)))))

(declare-fun b!1361853 () Bool)

(declare-fun Unit!44845 () Unit!44843)

(assert (=> b!1361853 (= e!772577 Unit!44845)))

(declare-fun b!1361854 () Bool)

(declare-fun lt!600265 () Unit!44843)

(assert (=> b!1361854 (= e!772577 lt!600265)))

(declare-fun lt!600268 () Unit!44843)

(declare-datatypes ((List!31941 0))(
  ( (Nil!31938) (Cons!31937 (h!33146 (_ BitVec 64)) (t!46633 List!31941)) )
))
(declare-fun acc!759 () List!31941)

(declare-fun lemmaListSubSeqRefl!0 (List!31941) Unit!44843)

(assert (=> b!1361854 (= lt!600268 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!897 (List!31941 List!31941) Bool)

(assert (=> b!1361854 (subseq!897 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92580 List!31941 List!31941 (_ BitVec 32)) Unit!44843)

(declare-fun $colon$colon!902 (List!31941 (_ BitVec 64)) List!31941)

(assert (=> b!1361854 (= lt!600265 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!902 acc!759 (select (arr!44720 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92580 (_ BitVec 32) List!31941) Bool)

(assert (=> b!1361854 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361855 () Bool)

(declare-fun res!906039 () Bool)

(assert (=> b!1361855 (=> (not res!906039) (not e!772579))))

(assert (=> b!1361855 (= res!906039 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361856 () Bool)

(declare-fun res!906043 () Bool)

(assert (=> b!1361856 (=> (not res!906043) (not e!772579))))

(declare-fun contains!9506 (List!31941 (_ BitVec 64)) Bool)

(assert (=> b!1361856 (= res!906043 (not (contains!9506 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361858 () Bool)

(declare-fun res!906046 () Bool)

(assert (=> b!1361858 (=> (not res!906046) (not e!772579))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361858 (= res!906046 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361859 () Bool)

(declare-fun res!906038 () Bool)

(assert (=> b!1361859 (=> (not res!906038) (not e!772579))))

(assert (=> b!1361859 (= res!906038 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45271 a!3742)))))

(declare-fun b!1361860 () Bool)

(declare-fun res!906044 () Bool)

(assert (=> b!1361860 (=> (not res!906044) (not e!772579))))

(assert (=> b!1361860 (= res!906044 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31938))))

(declare-fun b!1361861 () Bool)

(assert (=> b!1361861 (= e!772576 e!772578)))

(declare-fun res!906042 () Bool)

(assert (=> b!1361861 (=> (not res!906042) (not e!772578))))

(assert (=> b!1361861 (= res!906042 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!600269 () List!31941)

(assert (=> b!1361861 (= lt!600269 ($colon$colon!902 acc!759 (select (arr!44720 a!3742) from!3120)))))

(declare-fun b!1361862 () Bool)

(declare-fun res!906047 () Bool)

(assert (=> b!1361862 (=> (not res!906047) (not e!772578))))

(assert (=> b!1361862 (= res!906047 (not (contains!9506 lt!600269 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361863 () Bool)

(declare-fun res!906048 () Bool)

(assert (=> b!1361863 (=> (not res!906048) (not e!772578))))

(declare-fun noDuplicate!2385 (List!31941) Bool)

(assert (=> b!1361863 (= res!906048 (noDuplicate!2385 lt!600269))))

(declare-fun b!1361864 () Bool)

(declare-fun res!906037 () Bool)

(assert (=> b!1361864 (=> (not res!906037) (not e!772578))))

(assert (=> b!1361864 (= res!906037 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600269))))

(declare-fun b!1361865 () Bool)

(declare-fun res!906045 () Bool)

(assert (=> b!1361865 (=> (not res!906045) (not e!772579))))

(assert (=> b!1361865 (= res!906045 (noDuplicate!2385 acc!759))))

(declare-fun res!906036 () Bool)

(assert (=> start!114922 (=> (not res!906036) (not e!772579))))

(assert (=> start!114922 (= res!906036 (and (bvslt (size!45271 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45271 a!3742))))))

(assert (=> start!114922 e!772579))

(assert (=> start!114922 true))

(declare-fun array_inv!33665 (array!92580) Bool)

(assert (=> start!114922 (array_inv!33665 a!3742)))

(declare-fun b!1361857 () Bool)

(declare-fun res!906034 () Bool)

(assert (=> b!1361857 (=> (not res!906034) (not e!772579))))

(assert (=> b!1361857 (= res!906034 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45271 a!3742))))))

(declare-fun b!1361866 () Bool)

(declare-fun res!906041 () Bool)

(assert (=> b!1361866 (=> (not res!906041) (not e!772578))))

(assert (=> b!1361866 (= res!906041 (not (contains!9506 lt!600269 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361867 () Bool)

(declare-fun res!906040 () Bool)

(assert (=> b!1361867 (=> (not res!906040) (not e!772579))))

(assert (=> b!1361867 (= res!906040 (not (contains!9506 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114922 res!906036) b!1361865))

(assert (= (and b!1361865 res!906045) b!1361856))

(assert (= (and b!1361856 res!906043) b!1361867))

(assert (= (and b!1361867 res!906040) b!1361860))

(assert (= (and b!1361860 res!906044) b!1361855))

(assert (= (and b!1361855 res!906039) b!1361857))

(assert (= (and b!1361857 res!906034) b!1361858))

(assert (= (and b!1361858 res!906046) b!1361859))

(assert (= (and b!1361859 res!906038) b!1361852))

(assert (= (and b!1361852 c!127351) b!1361854))

(assert (= (and b!1361852 (not c!127351)) b!1361853))

(assert (= (and b!1361852 res!906035) b!1361861))

(assert (= (and b!1361861 res!906042) b!1361863))

(assert (= (and b!1361863 res!906048) b!1361862))

(assert (= (and b!1361862 res!906047) b!1361866))

(assert (= (and b!1361866 res!906041) b!1361864))

(assert (= (and b!1361864 res!906037) b!1361851))

(declare-fun m!1246897 () Bool)

(assert (=> b!1361860 m!1246897))

(declare-fun m!1246899 () Bool)

(assert (=> b!1361855 m!1246899))

(declare-fun m!1246901 () Bool)

(assert (=> b!1361854 m!1246901))

(declare-fun m!1246903 () Bool)

(assert (=> b!1361854 m!1246903))

(declare-fun m!1246905 () Bool)

(assert (=> b!1361854 m!1246905))

(declare-fun m!1246907 () Bool)

(assert (=> b!1361854 m!1246907))

(declare-fun m!1246909 () Bool)

(assert (=> b!1361854 m!1246909))

(assert (=> b!1361854 m!1246903))

(assert (=> b!1361854 m!1246905))

(declare-fun m!1246911 () Bool)

(assert (=> b!1361854 m!1246911))

(declare-fun m!1246913 () Bool)

(assert (=> b!1361866 m!1246913))

(assert (=> b!1361861 m!1246903))

(assert (=> b!1361861 m!1246903))

(assert (=> b!1361861 m!1246905))

(declare-fun m!1246915 () Bool)

(assert (=> b!1361863 m!1246915))

(assert (=> b!1361852 m!1246903))

(assert (=> b!1361852 m!1246903))

(declare-fun m!1246917 () Bool)

(assert (=> b!1361852 m!1246917))

(declare-fun m!1246919 () Bool)

(assert (=> b!1361862 m!1246919))

(declare-fun m!1246921 () Bool)

(assert (=> start!114922 m!1246921))

(declare-fun m!1246923 () Bool)

(assert (=> b!1361867 m!1246923))

(declare-fun m!1246925 () Bool)

(assert (=> b!1361858 m!1246925))

(declare-fun m!1246927 () Bool)

(assert (=> b!1361864 m!1246927))

(declare-fun m!1246929 () Bool)

(assert (=> b!1361865 m!1246929))

(declare-fun m!1246931 () Bool)

(assert (=> b!1361856 m!1246931))

(check-sat (not b!1361856) (not start!114922) (not b!1361863) (not b!1361860) (not b!1361858) (not b!1361864) (not b!1361862) (not b!1361865) (not b!1361861) (not b!1361866) (not b!1361854) (not b!1361852) (not b!1361855) (not b!1361867))
(check-sat)
