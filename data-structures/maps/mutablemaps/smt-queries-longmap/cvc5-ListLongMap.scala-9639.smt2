; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114008 () Bool)

(assert start!114008)

(declare-fun b!1352061 () Bool)

(declare-datatypes ((Unit!44264 0))(
  ( (Unit!44265) )
))
(declare-fun e!768689 () Unit!44264)

(declare-fun lt!597385 () Unit!44264)

(assert (=> b!1352061 (= e!768689 lt!597385)))

(declare-fun lt!597386 () Unit!44264)

(declare-datatypes ((List!31721 0))(
  ( (Nil!31718) (Cons!31717 (h!32926 (_ BitVec 64)) (t!46386 List!31721)) )
))
(declare-fun acc!759 () List!31721)

(declare-fun lemmaListSubSeqRefl!0 (List!31721) Unit!44264)

(assert (=> b!1352061 (= lt!597386 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!695 (List!31721 List!31721) Bool)

(assert (=> b!1352061 (subseq!695 acc!759 acc!759)))

(declare-datatypes ((array!92113 0))(
  ( (array!92114 (arr!44500 (Array (_ BitVec 32) (_ BitVec 64))) (size!45051 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92113)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92113 List!31721 List!31721 (_ BitVec 32)) Unit!44264)

(declare-fun $colon$colon!712 (List!31721 (_ BitVec 64)) List!31721)

(assert (=> b!1352061 (= lt!597385 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!712 acc!759 (select (arr!44500 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92113 (_ BitVec 32) List!31721) Bool)

(assert (=> b!1352061 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352062 () Bool)

(declare-fun res!897570 () Bool)

(declare-fun e!768688 () Bool)

(assert (=> b!1352062 (=> (not res!897570) (not e!768688))))

(declare-fun contains!9286 (List!31721 (_ BitVec 64)) Bool)

(assert (=> b!1352062 (= res!897570 (not (contains!9286 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352063 () Bool)

(declare-fun Unit!44266 () Unit!44264)

(assert (=> b!1352063 (= e!768689 Unit!44266)))

(declare-fun b!1352064 () Bool)

(declare-fun res!897569 () Bool)

(assert (=> b!1352064 (=> (not res!897569) (not e!768688))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352064 (= res!897569 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45051 a!3742))))))

(declare-fun b!1352065 () Bool)

(declare-fun res!897564 () Bool)

(assert (=> b!1352065 (=> (not res!897564) (not e!768688))))

(assert (=> b!1352065 (= res!897564 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31718))))

(declare-fun res!897572 () Bool)

(assert (=> start!114008 (=> (not res!897572) (not e!768688))))

(assert (=> start!114008 (= res!897572 (and (bvslt (size!45051 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45051 a!3742))))))

(assert (=> start!114008 e!768688))

(assert (=> start!114008 true))

(declare-fun array_inv!33445 (array!92113) Bool)

(assert (=> start!114008 (array_inv!33445 a!3742)))

(declare-fun b!1352066 () Bool)

(declare-fun res!897566 () Bool)

(assert (=> b!1352066 (=> (not res!897566) (not e!768688))))

(assert (=> b!1352066 (= res!897566 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45051 a!3742)))))

(declare-fun b!1352067 () Bool)

(declare-fun res!897568 () Bool)

(assert (=> b!1352067 (=> (not res!897568) (not e!768688))))

(assert (=> b!1352067 (= res!897568 (not (contains!9286 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352068 () Bool)

(declare-fun res!897567 () Bool)

(assert (=> b!1352068 (=> (not res!897567) (not e!768688))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352068 (= res!897567 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352069 () Bool)

(declare-fun e!768690 () Bool)

(assert (=> b!1352069 (= e!768690 false)))

(declare-fun lt!597384 () Bool)

(assert (=> b!1352069 (= lt!597384 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352070 () Bool)

(declare-fun res!897571 () Bool)

(assert (=> b!1352070 (=> (not res!897571) (not e!768688))))

(assert (=> b!1352070 (= res!897571 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352071 () Bool)

(assert (=> b!1352071 (= e!768688 e!768690)))

(declare-fun res!897565 () Bool)

(assert (=> b!1352071 (=> (not res!897565) (not e!768690))))

(assert (=> b!1352071 (= res!897565 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597383 () Unit!44264)

(assert (=> b!1352071 (= lt!597383 e!768689)))

(declare-fun c!126691 () Bool)

(assert (=> b!1352071 (= c!126691 (validKeyInArray!0 (select (arr!44500 a!3742) from!3120)))))

(declare-fun b!1352072 () Bool)

(declare-fun res!897573 () Bool)

(assert (=> b!1352072 (=> (not res!897573) (not e!768688))))

(declare-fun noDuplicate!2165 (List!31721) Bool)

(assert (=> b!1352072 (= res!897573 (noDuplicate!2165 acc!759))))

(assert (= (and start!114008 res!897572) b!1352072))

(assert (= (and b!1352072 res!897573) b!1352067))

(assert (= (and b!1352067 res!897568) b!1352062))

(assert (= (and b!1352062 res!897570) b!1352065))

(assert (= (and b!1352065 res!897564) b!1352070))

(assert (= (and b!1352070 res!897571) b!1352064))

(assert (= (and b!1352064 res!897569) b!1352068))

(assert (= (and b!1352068 res!897567) b!1352066))

(assert (= (and b!1352066 res!897566) b!1352071))

(assert (= (and b!1352071 c!126691) b!1352061))

(assert (= (and b!1352071 (not c!126691)) b!1352063))

(assert (= (and b!1352071 res!897565) b!1352069))

(declare-fun m!1238977 () Bool)

(assert (=> b!1352062 m!1238977))

(declare-fun m!1238979 () Bool)

(assert (=> b!1352071 m!1238979))

(assert (=> b!1352071 m!1238979))

(declare-fun m!1238981 () Bool)

(assert (=> b!1352071 m!1238981))

(declare-fun m!1238983 () Bool)

(assert (=> b!1352067 m!1238983))

(declare-fun m!1238985 () Bool)

(assert (=> b!1352069 m!1238985))

(declare-fun m!1238987 () Bool)

(assert (=> b!1352072 m!1238987))

(declare-fun m!1238989 () Bool)

(assert (=> b!1352065 m!1238989))

(declare-fun m!1238991 () Bool)

(assert (=> b!1352070 m!1238991))

(declare-fun m!1238993 () Bool)

(assert (=> b!1352068 m!1238993))

(declare-fun m!1238995 () Bool)

(assert (=> b!1352061 m!1238995))

(assert (=> b!1352061 m!1238979))

(declare-fun m!1238997 () Bool)

(assert (=> b!1352061 m!1238997))

(declare-fun m!1238999 () Bool)

(assert (=> b!1352061 m!1238999))

(assert (=> b!1352061 m!1238985))

(assert (=> b!1352061 m!1238979))

(assert (=> b!1352061 m!1238997))

(declare-fun m!1239001 () Bool)

(assert (=> b!1352061 m!1239001))

(declare-fun m!1239003 () Bool)

(assert (=> start!114008 m!1239003))

(push 1)

