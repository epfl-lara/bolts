; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60210 () Bool)

(assert start!60210)

(declare-fun b!672979 () Bool)

(declare-fun e!384352 () Bool)

(assert (=> b!672979 (= e!384352 false)))

(declare-datatypes ((List!12889 0))(
  ( (Nil!12886) (Cons!12885 (h!13930 (_ BitVec 64)) (t!19125 List!12889)) )
))
(declare-fun lt!312368 () List!12889)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!312369 () Bool)

(declare-datatypes ((array!39213 0))(
  ( (array!39214 (arr!18795 (Array (_ BitVec 32) (_ BitVec 64))) (size!19159 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39213)

(declare-fun arrayNoDuplicates!0 (array!39213 (_ BitVec 32) List!12889) Bool)

(assert (=> b!672979 (= lt!312369 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312368))))

(declare-fun b!672980 () Bool)

(declare-fun res!439732 () Bool)

(declare-fun e!384344 () Bool)

(assert (=> b!672980 (=> (not res!439732) (not e!384344))))

(declare-fun acc!681 () List!12889)

(assert (=> b!672980 (= res!439732 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672981 () Bool)

(declare-fun res!439726 () Bool)

(assert (=> b!672981 (=> (not res!439726) (not e!384344))))

(declare-fun e!384347 () Bool)

(assert (=> b!672981 (= res!439726 e!384347)))

(declare-fun res!439727 () Bool)

(assert (=> b!672981 (=> res!439727 e!384347)))

(declare-fun e!384351 () Bool)

(assert (=> b!672981 (= res!439727 e!384351)))

(declare-fun res!439723 () Bool)

(assert (=> b!672981 (=> (not res!439723) (not e!384351))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672981 (= res!439723 (bvsgt from!3004 i!1382))))

(declare-fun b!672982 () Bool)

(declare-fun e!384350 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3432 (List!12889 (_ BitVec 64)) Bool)

(assert (=> b!672982 (= e!384350 (not (contains!3432 acc!681 k!2843)))))

(declare-fun b!672983 () Bool)

(declare-fun e!384349 () Bool)

(assert (=> b!672983 (= e!384349 (contains!3432 lt!312368 k!2843))))

(declare-fun b!672984 () Bool)

(declare-fun res!439736 () Bool)

(assert (=> b!672984 (=> (not res!439736) (not e!384344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672984 (= res!439736 (validKeyInArray!0 (select (arr!18795 a!3626) from!3004)))))

(declare-fun b!672985 () Bool)

(declare-fun res!439735 () Bool)

(assert (=> b!672985 (=> (not res!439735) (not e!384344))))

(declare-fun arrayContainsKey!0 (array!39213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672985 (= res!439735 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672986 () Bool)

(declare-fun res!439731 () Bool)

(assert (=> b!672986 (=> (not res!439731) (not e!384344))))

(assert (=> b!672986 (= res!439731 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12886))))

(declare-fun b!672987 () Bool)

(declare-fun res!439740 () Bool)

(assert (=> b!672987 (=> (not res!439740) (not e!384344))))

(assert (=> b!672987 (= res!439740 (not (contains!3432 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672988 () Bool)

(declare-fun res!439739 () Bool)

(assert (=> b!672988 (=> (not res!439739) (not e!384352))))

(assert (=> b!672988 (= res!439739 (not (contains!3432 lt!312368 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672989 () Bool)

(declare-fun e!384345 () Bool)

(declare-fun e!384348 () Bool)

(assert (=> b!672989 (= e!384345 e!384348)))

(declare-fun res!439737 () Bool)

(assert (=> b!672989 (=> (not res!439737) (not e!384348))))

(assert (=> b!672989 (= res!439737 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672990 () Bool)

(declare-fun res!439724 () Bool)

(assert (=> b!672990 (=> (not res!439724) (not e!384344))))

(assert (=> b!672990 (= res!439724 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19159 a!3626))))))

(declare-fun b!672991 () Bool)

(declare-fun res!439738 () Bool)

(assert (=> b!672991 (=> (not res!439738) (not e!384344))))

(declare-fun noDuplicate!679 (List!12889) Bool)

(assert (=> b!672991 (= res!439738 (noDuplicate!679 acc!681))))

(declare-fun b!672992 () Bool)

(declare-fun res!439734 () Bool)

(assert (=> b!672992 (=> (not res!439734) (not e!384344))))

(assert (=> b!672992 (= res!439734 (validKeyInArray!0 k!2843))))

(declare-fun b!672993 () Bool)

(declare-fun res!439729 () Bool)

(assert (=> b!672993 (=> (not res!439729) (not e!384352))))

(assert (=> b!672993 (= res!439729 e!384345)))

(declare-fun res!439730 () Bool)

(assert (=> b!672993 (=> res!439730 e!384345)))

(assert (=> b!672993 (= res!439730 e!384349)))

(declare-fun res!439719 () Bool)

(assert (=> b!672993 (=> (not res!439719) (not e!384349))))

(assert (=> b!672993 (= res!439719 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672994 () Bool)

(assert (=> b!672994 (= e!384347 e!384350)))

(declare-fun res!439722 () Bool)

(assert (=> b!672994 (=> (not res!439722) (not e!384350))))

(assert (=> b!672994 (= res!439722 (bvsle from!3004 i!1382))))

(declare-fun b!672995 () Bool)

(declare-datatypes ((Unit!23644 0))(
  ( (Unit!23645) )
))
(declare-fun e!384346 () Unit!23644)

(declare-fun Unit!23646 () Unit!23644)

(assert (=> b!672995 (= e!384346 Unit!23646)))

(assert (=> b!672995 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312367 () Unit!23644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39213 (_ BitVec 64) (_ BitVec 32)) Unit!23644)

(assert (=> b!672995 (= lt!312367 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672995 false))

(declare-fun res!439741 () Bool)

(assert (=> start!60210 (=> (not res!439741) (not e!384344))))

(assert (=> start!60210 (= res!439741 (and (bvslt (size!19159 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19159 a!3626))))))

(assert (=> start!60210 e!384344))

(assert (=> start!60210 true))

(declare-fun array_inv!14569 (array!39213) Bool)

(assert (=> start!60210 (array_inv!14569 a!3626)))

(declare-fun b!672996 () Bool)

(declare-fun res!439733 () Bool)

(assert (=> b!672996 (=> (not res!439733) (not e!384344))))

(assert (=> b!672996 (= res!439733 (not (contains!3432 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672997 () Bool)

(assert (=> b!672997 (= e!384351 (contains!3432 acc!681 k!2843))))

(declare-fun b!672998 () Bool)

(declare-fun res!439728 () Bool)

(assert (=> b!672998 (=> (not res!439728) (not e!384344))))

(assert (=> b!672998 (= res!439728 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19159 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672999 () Bool)

(declare-fun Unit!23647 () Unit!23644)

(assert (=> b!672999 (= e!384346 Unit!23647)))

(declare-fun b!673000 () Bool)

(declare-fun res!439725 () Bool)

(assert (=> b!673000 (=> (not res!439725) (not e!384352))))

(assert (=> b!673000 (= res!439725 (not (contains!3432 lt!312368 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673001 () Bool)

(declare-fun e!384342 () Bool)

(assert (=> b!673001 (= e!384342 e!384352)))

(declare-fun res!439742 () Bool)

(assert (=> b!673001 (=> (not res!439742) (not e!384352))))

(assert (=> b!673001 (= res!439742 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!280 (List!12889 (_ BitVec 64)) List!12889)

(assert (=> b!673001 (= lt!312368 ($colon$colon!280 acc!681 (select (arr!18795 a!3626) from!3004)))))

(declare-fun b!673002 () Bool)

(declare-fun res!439720 () Bool)

(assert (=> b!673002 (=> (not res!439720) (not e!384352))))

(assert (=> b!673002 (= res!439720 (noDuplicate!679 lt!312368))))

(declare-fun b!673003 () Bool)

(assert (=> b!673003 (= e!384348 (not (contains!3432 lt!312368 k!2843)))))

(declare-fun b!673004 () Bool)

(assert (=> b!673004 (= e!384344 e!384342)))

(declare-fun res!439721 () Bool)

(assert (=> b!673004 (=> (not res!439721) (not e!384342))))

(assert (=> b!673004 (= res!439721 (not (= (select (arr!18795 a!3626) from!3004) k!2843)))))

(declare-fun lt!312366 () Unit!23644)

(assert (=> b!673004 (= lt!312366 e!384346)))

(declare-fun c!76997 () Bool)

(assert (=> b!673004 (= c!76997 (= (select (arr!18795 a!3626) from!3004) k!2843))))

(assert (= (and start!60210 res!439741) b!672991))

(assert (= (and b!672991 res!439738) b!672987))

(assert (= (and b!672987 res!439740) b!672996))

(assert (= (and b!672996 res!439733) b!672981))

(assert (= (and b!672981 res!439723) b!672997))

(assert (= (and b!672981 (not res!439727)) b!672994))

(assert (= (and b!672994 res!439722) b!672982))

(assert (= (and b!672981 res!439726) b!672986))

(assert (= (and b!672986 res!439731) b!672980))

(assert (= (and b!672980 res!439732) b!672990))

(assert (= (and b!672990 res!439724) b!672992))

(assert (= (and b!672992 res!439734) b!672985))

(assert (= (and b!672985 res!439735) b!672998))

(assert (= (and b!672998 res!439728) b!672984))

(assert (= (and b!672984 res!439736) b!673004))

(assert (= (and b!673004 c!76997) b!672995))

(assert (= (and b!673004 (not c!76997)) b!672999))

(assert (= (and b!673004 res!439721) b!673001))

(assert (= (and b!673001 res!439742) b!673002))

(assert (= (and b!673002 res!439720) b!672988))

(assert (= (and b!672988 res!439739) b!673000))

(assert (= (and b!673000 res!439725) b!672993))

(assert (= (and b!672993 res!439719) b!672983))

(assert (= (and b!672993 (not res!439730)) b!672989))

(assert (= (and b!672989 res!439737) b!673003))

(assert (= (and b!672993 res!439729) b!672979))

(declare-fun m!641625 () Bool)

(assert (=> b!672988 m!641625))

(declare-fun m!641627 () Bool)

(assert (=> b!672979 m!641627))

(declare-fun m!641629 () Bool)

(assert (=> b!672992 m!641629))

(declare-fun m!641631 () Bool)

(assert (=> b!673003 m!641631))

(declare-fun m!641633 () Bool)

(assert (=> b!672995 m!641633))

(declare-fun m!641635 () Bool)

(assert (=> b!672995 m!641635))

(declare-fun m!641637 () Bool)

(assert (=> b!673000 m!641637))

(declare-fun m!641639 () Bool)

(assert (=> b!672982 m!641639))

(declare-fun m!641641 () Bool)

(assert (=> b!673004 m!641641))

(declare-fun m!641643 () Bool)

(assert (=> b!673002 m!641643))

(declare-fun m!641645 () Bool)

(assert (=> b!672991 m!641645))

(assert (=> b!672984 m!641641))

(assert (=> b!672984 m!641641))

(declare-fun m!641647 () Bool)

(assert (=> b!672984 m!641647))

(declare-fun m!641649 () Bool)

(assert (=> b!672985 m!641649))

(declare-fun m!641651 () Bool)

(assert (=> b!672996 m!641651))

(assert (=> b!672983 m!641631))

(declare-fun m!641653 () Bool)

(assert (=> start!60210 m!641653))

(assert (=> b!672997 m!641639))

(declare-fun m!641655 () Bool)

(assert (=> b!672986 m!641655))

(declare-fun m!641657 () Bool)

(assert (=> b!672980 m!641657))

(assert (=> b!673001 m!641641))

(assert (=> b!673001 m!641641))

(declare-fun m!641659 () Bool)

(assert (=> b!673001 m!641659))

(declare-fun m!641661 () Bool)

(assert (=> b!672987 m!641661))

(push 1)

