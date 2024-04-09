; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115028 () Bool)

(assert start!115028)

(declare-fun b!1362967 () Bool)

(declare-fun res!906964 () Bool)

(declare-fun e!773029 () Bool)

(assert (=> b!1362967 (=> (not res!906964) (not e!773029))))

(declare-datatypes ((array!92629 0))(
  ( (array!92630 (arr!44743 (Array (_ BitVec 32) (_ BitVec 64))) (size!45294 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92629)

(declare-datatypes ((List!31964 0))(
  ( (Nil!31961) (Cons!31960 (h!33169 (_ BitVec 64)) (t!46659 List!31964)) )
))
(declare-fun arrayNoDuplicates!0 (array!92629 (_ BitVec 32) List!31964) Bool)

(assert (=> b!1362967 (= res!906964 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31961))))

(declare-fun b!1362968 () Bool)

(declare-fun res!906972 () Bool)

(assert (=> b!1362968 (=> (not res!906972) (not e!773029))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1362968 (= res!906972 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45294 a!3742)))))

(declare-fun b!1362969 () Bool)

(assert (=> b!1362969 (= e!773029 false)))

(declare-datatypes ((Unit!44912 0))(
  ( (Unit!44913) )
))
(declare-fun lt!600599 () Unit!44912)

(declare-fun e!773028 () Unit!44912)

(assert (=> b!1362969 (= lt!600599 e!773028)))

(declare-fun c!127444 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362969 (= c!127444 (validKeyInArray!0 (select (arr!44743 a!3742) from!3120)))))

(declare-fun b!1362970 () Bool)

(declare-fun res!906971 () Bool)

(assert (=> b!1362970 (=> (not res!906971) (not e!773029))))

(declare-fun acc!759 () List!31964)

(declare-fun noDuplicate!2408 (List!31964) Bool)

(assert (=> b!1362970 (= res!906971 (noDuplicate!2408 acc!759))))

(declare-fun b!1362971 () Bool)

(declare-fun res!906966 () Bool)

(assert (=> b!1362971 (=> (not res!906966) (not e!773029))))

(declare-fun contains!9529 (List!31964 (_ BitVec 64)) Bool)

(assert (=> b!1362971 (= res!906966 (not (contains!9529 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362972 () Bool)

(declare-fun Unit!44914 () Unit!44912)

(assert (=> b!1362972 (= e!773028 Unit!44914)))

(declare-fun b!1362973 () Bool)

(declare-fun lt!600598 () Unit!44912)

(assert (=> b!1362973 (= e!773028 lt!600598)))

(declare-fun lt!600597 () Unit!44912)

(declare-fun lemmaListSubSeqRefl!0 (List!31964) Unit!44912)

(assert (=> b!1362973 (= lt!600597 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!920 (List!31964 List!31964) Bool)

(assert (=> b!1362973 (subseq!920 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92629 List!31964 List!31964 (_ BitVec 32)) Unit!44912)

(declare-fun $colon$colon!925 (List!31964 (_ BitVec 64)) List!31964)

(assert (=> b!1362973 (= lt!600598 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!925 acc!759 (select (arr!44743 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362973 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362974 () Bool)

(declare-fun res!906965 () Bool)

(assert (=> b!1362974 (=> (not res!906965) (not e!773029))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362974 (= res!906965 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362975 () Bool)

(declare-fun res!906970 () Bool)

(assert (=> b!1362975 (=> (not res!906970) (not e!773029))))

(assert (=> b!1362975 (= res!906970 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!906969 () Bool)

(assert (=> start!115028 (=> (not res!906969) (not e!773029))))

(assert (=> start!115028 (= res!906969 (and (bvslt (size!45294 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45294 a!3742))))))

(assert (=> start!115028 e!773029))

(assert (=> start!115028 true))

(declare-fun array_inv!33688 (array!92629) Bool)

(assert (=> start!115028 (array_inv!33688 a!3742)))

(declare-fun b!1362976 () Bool)

(declare-fun res!906967 () Bool)

(assert (=> b!1362976 (=> (not res!906967) (not e!773029))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362976 (= res!906967 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45294 a!3742))))))

(declare-fun b!1362977 () Bool)

(declare-fun res!906968 () Bool)

(assert (=> b!1362977 (=> (not res!906968) (not e!773029))))

(assert (=> b!1362977 (= res!906968 (not (contains!9529 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115028 res!906969) b!1362970))

(assert (= (and b!1362970 res!906971) b!1362977))

(assert (= (and b!1362977 res!906968) b!1362971))

(assert (= (and b!1362971 res!906966) b!1362967))

(assert (= (and b!1362967 res!906964) b!1362975))

(assert (= (and b!1362975 res!906970) b!1362976))

(assert (= (and b!1362976 res!906967) b!1362974))

(assert (= (and b!1362974 res!906965) b!1362968))

(assert (= (and b!1362968 res!906972) b!1362969))

(assert (= (and b!1362969 c!127444) b!1362973))

(assert (= (and b!1362969 (not c!127444)) b!1362972))

(declare-fun m!1247887 () Bool)

(assert (=> b!1362967 m!1247887))

(declare-fun m!1247889 () Bool)

(assert (=> b!1362974 m!1247889))

(declare-fun m!1247891 () Bool)

(assert (=> b!1362975 m!1247891))

(declare-fun m!1247893 () Bool)

(assert (=> b!1362970 m!1247893))

(declare-fun m!1247895 () Bool)

(assert (=> b!1362971 m!1247895))

(declare-fun m!1247897 () Bool)

(assert (=> b!1362973 m!1247897))

(declare-fun m!1247899 () Bool)

(assert (=> b!1362973 m!1247899))

(declare-fun m!1247901 () Bool)

(assert (=> b!1362973 m!1247901))

(declare-fun m!1247903 () Bool)

(assert (=> b!1362973 m!1247903))

(declare-fun m!1247905 () Bool)

(assert (=> b!1362973 m!1247905))

(assert (=> b!1362973 m!1247899))

(assert (=> b!1362973 m!1247901))

(declare-fun m!1247907 () Bool)

(assert (=> b!1362973 m!1247907))

(assert (=> b!1362969 m!1247899))

(assert (=> b!1362969 m!1247899))

(declare-fun m!1247909 () Bool)

(assert (=> b!1362969 m!1247909))

(declare-fun m!1247911 () Bool)

(assert (=> b!1362977 m!1247911))

(declare-fun m!1247913 () Bool)

(assert (=> start!115028 m!1247913))

(push 1)

(assert (not b!1362973))

(assert (not b!1362971))

(assert (not b!1362967))

(assert (not b!1362975))

(assert (not b!1362970))

(assert (not b!1362969))

(assert (not start!115028))

(assert (not b!1362974))

(assert (not b!1362977))

(check-sat)

