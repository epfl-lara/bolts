; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61282 () Bool)

(assert start!61282)

(declare-fun b!686052 () Bool)

(declare-fun e!390727 () Bool)

(declare-datatypes ((List!13077 0))(
  ( (Nil!13074) (Cons!13073 (h!14118 (_ BitVec 64)) (t!19340 List!13077)) )
))
(declare-fun acc!681 () List!13077)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3620 (List!13077 (_ BitVec 64)) Bool)

(assert (=> b!686052 (= e!390727 (contains!3620 acc!681 k!2843))))

(declare-fun b!686053 () Bool)

(declare-fun res!451410 () Bool)

(declare-fun e!390721 () Bool)

(assert (=> b!686053 (=> (not res!451410) (not e!390721))))

(declare-datatypes ((array!39622 0))(
  ( (array!39623 (arr!18983 (Array (_ BitVec 32) (_ BitVec 64))) (size!19356 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39622)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39622 (_ BitVec 32) List!13077) Bool)

(assert (=> b!686053 (= res!451410 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686054 () Bool)

(declare-fun res!451403 () Bool)

(assert (=> b!686054 (=> (not res!451403) (not e!390721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686054 (= res!451403 (validKeyInArray!0 k!2843))))

(declare-fun b!686055 () Bool)

(declare-datatypes ((Unit!24152 0))(
  ( (Unit!24153) )
))
(declare-fun e!390724 () Unit!24152)

(declare-fun Unit!24154 () Unit!24152)

(assert (=> b!686055 (= e!390724 Unit!24154)))

(declare-fun b!686056 () Bool)

(declare-fun res!451415 () Bool)

(assert (=> b!686056 (=> (not res!451415) (not e!390721))))

(assert (=> b!686056 (= res!451415 (not (contains!3620 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686057 () Bool)

(declare-fun e!390723 () Unit!24152)

(declare-fun lt!314900 () Unit!24152)

(assert (=> b!686057 (= e!390723 lt!314900)))

(declare-fun lt!314901 () Unit!24152)

(declare-fun lemmaListSubSeqRefl!0 (List!13077) Unit!24152)

(assert (=> b!686057 (= lt!314901 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!205 (List!13077 List!13077) Bool)

(assert (=> b!686057 (subseq!205 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39622 List!13077 List!13077 (_ BitVec 32)) Unit!24152)

(declare-fun $colon$colon!369 (List!13077 (_ BitVec 64)) List!13077)

(assert (=> b!686057 (= lt!314900 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!369 acc!681 (select (arr!18983 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686057 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686058 () Bool)

(declare-fun res!451411 () Bool)

(assert (=> b!686058 (=> (not res!451411) (not e!390721))))

(assert (=> b!686058 (= res!451411 (not (contains!3620 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686059 () Bool)

(declare-fun res!451406 () Bool)

(assert (=> b!686059 (=> (not res!451406) (not e!390721))))

(assert (=> b!686059 (= res!451406 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13074))))

(declare-fun res!451409 () Bool)

(assert (=> start!61282 (=> (not res!451409) (not e!390721))))

(assert (=> start!61282 (= res!451409 (and (bvslt (size!19356 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19356 a!3626))))))

(assert (=> start!61282 e!390721))

(assert (=> start!61282 true))

(declare-fun array_inv!14757 (array!39622) Bool)

(assert (=> start!61282 (array_inv!14757 a!3626)))

(declare-fun b!686060 () Bool)

(declare-fun res!451405 () Bool)

(assert (=> b!686060 (=> (not res!451405) (not e!390721))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686060 (= res!451405 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19356 a!3626))))))

(declare-fun b!686061 () Bool)

(assert (=> b!686061 (= e!390721 (not true))))

(declare-fun lt!314897 () List!13077)

(assert (=> b!686061 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314897)))

(declare-fun lt!314898 () Unit!24152)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39622 (_ BitVec 64) (_ BitVec 32) List!13077 List!13077) Unit!24152)

(assert (=> b!686061 (= lt!314898 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314897))))

(declare-fun -!170 (List!13077 (_ BitVec 64)) List!13077)

(assert (=> b!686061 (= (-!170 lt!314897 k!2843) acc!681)))

(assert (=> b!686061 (= lt!314897 ($colon$colon!369 acc!681 k!2843))))

(declare-fun lt!314893 () Unit!24152)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13077) Unit!24152)

(assert (=> b!686061 (= lt!314893 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686061 (subseq!205 acc!681 acc!681)))

(declare-fun lt!314896 () Unit!24152)

(assert (=> b!686061 (= lt!314896 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686061 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314895 () Unit!24152)

(assert (=> b!686061 (= lt!314895 e!390723)))

(declare-fun c!77693 () Bool)

(assert (=> b!686061 (= c!77693 (validKeyInArray!0 (select (arr!18983 a!3626) from!3004)))))

(declare-fun lt!314894 () Unit!24152)

(assert (=> b!686061 (= lt!314894 e!390724)))

(declare-fun c!77692 () Bool)

(declare-fun arrayContainsKey!0 (array!39622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686061 (= c!77692 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686061 (arrayContainsKey!0 (array!39623 (store (arr!18983 a!3626) i!1382 k!2843) (size!19356 a!3626)) k!2843 from!3004)))

(declare-fun b!686062 () Bool)

(declare-fun res!451408 () Bool)

(assert (=> b!686062 (=> (not res!451408) (not e!390721))))

(assert (=> b!686062 (= res!451408 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686063 () Bool)

(declare-fun e!390725 () Bool)

(assert (=> b!686063 (= e!390725 (not (contains!3620 acc!681 k!2843)))))

(declare-fun b!686064 () Bool)

(declare-fun e!390722 () Bool)

(assert (=> b!686064 (= e!390722 e!390725)))

(declare-fun res!451412 () Bool)

(assert (=> b!686064 (=> (not res!451412) (not e!390725))))

(assert (=> b!686064 (= res!451412 (bvsle from!3004 i!1382))))

(declare-fun b!686065 () Bool)

(declare-fun Unit!24155 () Unit!24152)

(assert (=> b!686065 (= e!390724 Unit!24155)))

(declare-fun lt!314899 () Unit!24152)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39622 (_ BitVec 64) (_ BitVec 32)) Unit!24152)

(assert (=> b!686065 (= lt!314899 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686065 false))

(declare-fun b!686066 () Bool)

(declare-fun Unit!24156 () Unit!24152)

(assert (=> b!686066 (= e!390723 Unit!24156)))

(declare-fun b!686067 () Bool)

(declare-fun res!451413 () Bool)

(assert (=> b!686067 (=> (not res!451413) (not e!390721))))

(assert (=> b!686067 (= res!451413 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19356 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686068 () Bool)

(declare-fun res!451404 () Bool)

(assert (=> b!686068 (=> (not res!451404) (not e!390721))))

(declare-fun noDuplicate!867 (List!13077) Bool)

(assert (=> b!686068 (= res!451404 (noDuplicate!867 acc!681))))

(declare-fun b!686069 () Bool)

(declare-fun res!451402 () Bool)

(assert (=> b!686069 (=> (not res!451402) (not e!390721))))

(assert (=> b!686069 (= res!451402 e!390722)))

(declare-fun res!451407 () Bool)

(assert (=> b!686069 (=> res!451407 e!390722)))

(assert (=> b!686069 (= res!451407 e!390727)))

(declare-fun res!451414 () Bool)

(assert (=> b!686069 (=> (not res!451414) (not e!390727))))

(assert (=> b!686069 (= res!451414 (bvsgt from!3004 i!1382))))

(assert (= (and start!61282 res!451409) b!686068))

(assert (= (and b!686068 res!451404) b!686058))

(assert (= (and b!686058 res!451411) b!686056))

(assert (= (and b!686056 res!451415) b!686069))

(assert (= (and b!686069 res!451414) b!686052))

(assert (= (and b!686069 (not res!451407)) b!686064))

(assert (= (and b!686064 res!451412) b!686063))

(assert (= (and b!686069 res!451402) b!686059))

(assert (= (and b!686059 res!451406) b!686053))

(assert (= (and b!686053 res!451410) b!686060))

(assert (= (and b!686060 res!451405) b!686054))

(assert (= (and b!686054 res!451403) b!686062))

(assert (= (and b!686062 res!451408) b!686067))

(assert (= (and b!686067 res!451413) b!686061))

(assert (= (and b!686061 c!77692) b!686065))

(assert (= (and b!686061 (not c!77692)) b!686055))

(assert (= (and b!686061 c!77693) b!686057))

(assert (= (and b!686061 (not c!77693)) b!686066))

(declare-fun m!650233 () Bool)

(assert (=> b!686059 m!650233))

(declare-fun m!650235 () Bool)

(assert (=> b!686058 m!650235))

(declare-fun m!650237 () Bool)

(assert (=> start!61282 m!650237))

(declare-fun m!650239 () Bool)

(assert (=> b!686063 m!650239))

(declare-fun m!650241 () Bool)

(assert (=> b!686053 m!650241))

(declare-fun m!650243 () Bool)

(assert (=> b!686068 m!650243))

(assert (=> b!686052 m!650239))

(declare-fun m!650245 () Bool)

(assert (=> b!686057 m!650245))

(declare-fun m!650247 () Bool)

(assert (=> b!686057 m!650247))

(declare-fun m!650249 () Bool)

(assert (=> b!686057 m!650249))

(declare-fun m!650251 () Bool)

(assert (=> b!686057 m!650251))

(assert (=> b!686057 m!650247))

(assert (=> b!686057 m!650249))

(declare-fun m!650253 () Bool)

(assert (=> b!686057 m!650253))

(declare-fun m!650255 () Bool)

(assert (=> b!686057 m!650255))

(declare-fun m!650257 () Bool)

(assert (=> b!686054 m!650257))

(declare-fun m!650259 () Bool)

(assert (=> b!686062 m!650259))

(assert (=> b!686061 m!650245))

(assert (=> b!686061 m!650247))

(declare-fun m!650261 () Bool)

(assert (=> b!686061 m!650261))

(declare-fun m!650263 () Bool)

(assert (=> b!686061 m!650263))

(declare-fun m!650265 () Bool)

(assert (=> b!686061 m!650265))

(assert (=> b!686061 m!650253))

(declare-fun m!650267 () Bool)

(assert (=> b!686061 m!650267))

(declare-fun m!650269 () Bool)

(assert (=> b!686061 m!650269))

(assert (=> b!686061 m!650247))

(declare-fun m!650271 () Bool)

(assert (=> b!686061 m!650271))

(declare-fun m!650273 () Bool)

(assert (=> b!686061 m!650273))

(declare-fun m!650275 () Bool)

(assert (=> b!686061 m!650275))

(declare-fun m!650277 () Bool)

(assert (=> b!686061 m!650277))

(assert (=> b!686061 m!650255))

(declare-fun m!650279 () Bool)

(assert (=> b!686056 m!650279))

(declare-fun m!650281 () Bool)

(assert (=> b!686065 m!650281))

(push 1)

(assert (not b!686052))

(assert (not b!686057))

(assert (not b!686053))

(assert (not b!686065))

(assert (not b!686068))

(assert (not b!686062))

(assert (not b!686054))

(assert (not b!686061))

(assert (not start!61282))

(assert (not b!686056))

(assert (not b!686058))

(assert (not b!686063))

(assert (not b!686059))

(check-sat)

