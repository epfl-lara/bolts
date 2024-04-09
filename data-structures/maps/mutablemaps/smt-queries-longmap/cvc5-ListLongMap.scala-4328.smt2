; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60012 () Bool)

(assert start!60012)

(declare-fun b!666209 () Bool)

(declare-fun e!381560 () Bool)

(declare-fun e!381562 () Bool)

(assert (=> b!666209 (= e!381560 e!381562)))

(declare-fun res!433763 () Bool)

(assert (=> b!666209 (=> (not res!433763) (not e!381562))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666209 (= res!433763 (bvsle from!3004 i!1382))))

(declare-fun b!666210 () Bool)

(declare-datatypes ((List!12790 0))(
  ( (Nil!12787) (Cons!12786 (h!13831 (_ BitVec 64)) (t!19026 List!12790)) )
))
(declare-fun acc!681 () List!12790)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3333 (List!12790 (_ BitVec 64)) Bool)

(assert (=> b!666210 (= e!381562 (not (contains!3333 acc!681 k!2843)))))

(declare-fun b!666211 () Bool)

(declare-fun res!433771 () Bool)

(declare-fun e!381559 () Bool)

(assert (=> b!666211 (=> res!433771 e!381559)))

(declare-fun lt!310359 () Bool)

(assert (=> b!666211 (= res!433771 lt!310359)))

(declare-fun b!666212 () Bool)

(declare-fun res!433758 () Bool)

(declare-fun e!381555 () Bool)

(assert (=> b!666212 (=> (not res!433758) (not e!381555))))

(declare-fun noDuplicate!580 (List!12790) Bool)

(assert (=> b!666212 (= res!433758 (noDuplicate!580 acc!681))))

(declare-fun b!666213 () Bool)

(declare-fun res!433768 () Bool)

(assert (=> b!666213 (=> (not res!433768) (not e!381555))))

(assert (=> b!666213 (= res!433768 e!381560)))

(declare-fun res!433769 () Bool)

(assert (=> b!666213 (=> res!433769 e!381560)))

(declare-fun e!381557 () Bool)

(assert (=> b!666213 (= res!433769 e!381557)))

(declare-fun res!433756 () Bool)

(assert (=> b!666213 (=> (not res!433756) (not e!381557))))

(assert (=> b!666213 (= res!433756 (bvsgt from!3004 i!1382))))

(declare-fun b!666214 () Bool)

(declare-fun res!433755 () Bool)

(assert (=> b!666214 (=> res!433755 e!381559)))

(assert (=> b!666214 (= res!433755 (contains!3333 acc!681 k!2843))))

(declare-fun b!666215 () Bool)

(declare-fun res!433761 () Bool)

(assert (=> b!666215 (=> (not res!433761) (not e!381555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666215 (= res!433761 (validKeyInArray!0 k!2843))))

(declare-fun b!666216 () Bool)

(declare-fun res!433773 () Bool)

(assert (=> b!666216 (=> res!433773 e!381559)))

(declare-fun lt!310360 () List!12790)

(assert (=> b!666216 (= res!433773 (not (contains!3333 lt!310360 k!2843)))))

(declare-fun b!666217 () Bool)

(declare-fun res!433772 () Bool)

(assert (=> b!666217 (=> (not res!433772) (not e!381555))))

(assert (=> b!666217 (= res!433772 (not (contains!3333 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666218 () Bool)

(declare-datatypes ((Unit!23275 0))(
  ( (Unit!23276) )
))
(declare-fun e!381561 () Unit!23275)

(declare-fun Unit!23277 () Unit!23275)

(assert (=> b!666218 (= e!381561 Unit!23277)))

(declare-fun lt!310353 () Unit!23275)

(declare-datatypes ((array!39015 0))(
  ( (array!39016 (arr!18696 (Array (_ BitVec 32) (_ BitVec 64))) (size!19060 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39015)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39015 (_ BitVec 64) (_ BitVec 32)) Unit!23275)

(assert (=> b!666218 (= lt!310353 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666218 false))

(declare-fun b!666219 () Bool)

(assert (=> b!666219 (= e!381559 true)))

(declare-fun lt!310362 () Bool)

(assert (=> b!666219 (= lt!310362 (contains!3333 lt!310360 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666220 () Bool)

(assert (=> b!666220 (= e!381555 (not e!381559))))

(declare-fun res!433757 () Bool)

(assert (=> b!666220 (=> res!433757 e!381559)))

(assert (=> b!666220 (= res!433757 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!69 (List!12790 (_ BitVec 64)) List!12790)

(assert (=> b!666220 (= (-!69 lt!310360 k!2843) acc!681)))

(declare-fun $colon$colon!202 (List!12790 (_ BitVec 64)) List!12790)

(assert (=> b!666220 (= lt!310360 ($colon$colon!202 acc!681 k!2843))))

(declare-fun lt!310356 () Unit!23275)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12790) Unit!23275)

(assert (=> b!666220 (= lt!310356 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!71 (List!12790 List!12790) Bool)

(assert (=> b!666220 (subseq!71 acc!681 acc!681)))

(declare-fun lt!310361 () Unit!23275)

(declare-fun lemmaListSubSeqRefl!0 (List!12790) Unit!23275)

(assert (=> b!666220 (= lt!310361 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39015 (_ BitVec 32) List!12790) Bool)

(assert (=> b!666220 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310355 () Unit!23275)

(declare-fun e!381556 () Unit!23275)

(assert (=> b!666220 (= lt!310355 e!381556)))

(declare-fun c!76594 () Bool)

(assert (=> b!666220 (= c!76594 (validKeyInArray!0 (select (arr!18696 a!3626) from!3004)))))

(declare-fun lt!310354 () Unit!23275)

(assert (=> b!666220 (= lt!310354 e!381561)))

(declare-fun c!76595 () Bool)

(assert (=> b!666220 (= c!76595 lt!310359)))

(declare-fun arrayContainsKey!0 (array!39015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666220 (= lt!310359 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666220 (arrayContainsKey!0 (array!39016 (store (arr!18696 a!3626) i!1382 k!2843) (size!19060 a!3626)) k!2843 from!3004)))

(declare-fun b!666221 () Bool)

(declare-fun res!433775 () Bool)

(assert (=> b!666221 (=> (not res!433775) (not e!381555))))

(assert (=> b!666221 (= res!433775 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12787))))

(declare-fun b!666223 () Bool)

(declare-fun Unit!23278 () Unit!23275)

(assert (=> b!666223 (= e!381561 Unit!23278)))

(declare-fun b!666224 () Bool)

(declare-fun res!433774 () Bool)

(assert (=> b!666224 (=> (not res!433774) (not e!381555))))

(assert (=> b!666224 (= res!433774 (not (contains!3333 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666225 () Bool)

(declare-fun Unit!23279 () Unit!23275)

(assert (=> b!666225 (= e!381556 Unit!23279)))

(declare-fun b!666226 () Bool)

(declare-fun res!433760 () Bool)

(assert (=> b!666226 (=> (not res!433760) (not e!381555))))

(assert (=> b!666226 (= res!433760 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666227 () Bool)

(assert (=> b!666227 (= e!381557 (contains!3333 acc!681 k!2843))))

(declare-fun b!666228 () Bool)

(declare-fun res!433765 () Bool)

(assert (=> b!666228 (=> res!433765 e!381559)))

(assert (=> b!666228 (= res!433765 (contains!3333 lt!310360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666229 () Bool)

(declare-fun res!433766 () Bool)

(assert (=> b!666229 (=> (not res!433766) (not e!381555))))

(assert (=> b!666229 (= res!433766 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19060 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666230 () Bool)

(declare-fun res!433759 () Bool)

(assert (=> b!666230 (=> (not res!433759) (not e!381555))))

(assert (=> b!666230 (= res!433759 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19060 a!3626))))))

(declare-fun b!666231 () Bool)

(declare-fun lt!310358 () Unit!23275)

(assert (=> b!666231 (= e!381556 lt!310358)))

(declare-fun lt!310357 () Unit!23275)

(assert (=> b!666231 (= lt!310357 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666231 (subseq!71 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39015 List!12790 List!12790 (_ BitVec 32)) Unit!23275)

(assert (=> b!666231 (= lt!310358 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!202 acc!681 (select (arr!18696 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666231 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666232 () Bool)

(declare-fun res!433770 () Bool)

(assert (=> b!666232 (=> res!433770 e!381559)))

(assert (=> b!666232 (= res!433770 (not (subseq!71 acc!681 lt!310360)))))

(declare-fun b!666233 () Bool)

(declare-fun res!433767 () Bool)

(assert (=> b!666233 (=> res!433767 e!381559)))

(assert (=> b!666233 (= res!433767 (not (noDuplicate!580 lt!310360)))))

(declare-fun b!666222 () Bool)

(declare-fun res!433764 () Bool)

(assert (=> b!666222 (=> (not res!433764) (not e!381555))))

(assert (=> b!666222 (= res!433764 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!433762 () Bool)

(assert (=> start!60012 (=> (not res!433762) (not e!381555))))

(assert (=> start!60012 (= res!433762 (and (bvslt (size!19060 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19060 a!3626))))))

(assert (=> start!60012 e!381555))

(assert (=> start!60012 true))

(declare-fun array_inv!14470 (array!39015) Bool)

(assert (=> start!60012 (array_inv!14470 a!3626)))

(assert (= (and start!60012 res!433762) b!666212))

(assert (= (and b!666212 res!433758) b!666217))

(assert (= (and b!666217 res!433772) b!666224))

(assert (= (and b!666224 res!433774) b!666213))

(assert (= (and b!666213 res!433756) b!666227))

(assert (= (and b!666213 (not res!433769)) b!666209))

(assert (= (and b!666209 res!433763) b!666210))

(assert (= (and b!666213 res!433768) b!666221))

(assert (= (and b!666221 res!433775) b!666226))

(assert (= (and b!666226 res!433760) b!666230))

(assert (= (and b!666230 res!433759) b!666215))

(assert (= (and b!666215 res!433761) b!666222))

(assert (= (and b!666222 res!433764) b!666229))

(assert (= (and b!666229 res!433766) b!666220))

(assert (= (and b!666220 c!76595) b!666218))

(assert (= (and b!666220 (not c!76595)) b!666223))

(assert (= (and b!666220 c!76594) b!666231))

(assert (= (and b!666220 (not c!76594)) b!666225))

(assert (= (and b!666220 (not res!433757)) b!666233))

(assert (= (and b!666233 (not res!433767)) b!666211))

(assert (= (and b!666211 (not res!433771)) b!666214))

(assert (= (and b!666214 (not res!433755)) b!666232))

(assert (= (and b!666232 (not res!433770)) b!666216))

(assert (= (and b!666216 (not res!433773)) b!666228))

(assert (= (and b!666228 (not res!433765)) b!666219))

(declare-fun m!637083 () Bool)

(assert (=> b!666226 m!637083))

(declare-fun m!637085 () Bool)

(assert (=> b!666214 m!637085))

(assert (=> b!666210 m!637085))

(declare-fun m!637087 () Bool)

(assert (=> b!666219 m!637087))

(declare-fun m!637089 () Bool)

(assert (=> b!666212 m!637089))

(declare-fun m!637091 () Bool)

(assert (=> b!666231 m!637091))

(declare-fun m!637093 () Bool)

(assert (=> b!666231 m!637093))

(declare-fun m!637095 () Bool)

(assert (=> b!666231 m!637095))

(declare-fun m!637097 () Bool)

(assert (=> b!666231 m!637097))

(assert (=> b!666231 m!637093))

(assert (=> b!666231 m!637095))

(declare-fun m!637099 () Bool)

(assert (=> b!666231 m!637099))

(declare-fun m!637101 () Bool)

(assert (=> b!666231 m!637101))

(declare-fun m!637103 () Bool)

(assert (=> b!666220 m!637103))

(assert (=> b!666220 m!637091))

(assert (=> b!666220 m!637093))

(declare-fun m!637105 () Bool)

(assert (=> b!666220 m!637105))

(declare-fun m!637107 () Bool)

(assert (=> b!666220 m!637107))

(assert (=> b!666220 m!637099))

(declare-fun m!637109 () Bool)

(assert (=> b!666220 m!637109))

(declare-fun m!637111 () Bool)

(assert (=> b!666220 m!637111))

(assert (=> b!666220 m!637093))

(declare-fun m!637113 () Bool)

(assert (=> b!666220 m!637113))

(declare-fun m!637115 () Bool)

(assert (=> b!666220 m!637115))

(assert (=> b!666220 m!637101))

(declare-fun m!637117 () Bool)

(assert (=> b!666216 m!637117))

(declare-fun m!637119 () Bool)

(assert (=> b!666233 m!637119))

(assert (=> b!666227 m!637085))

(declare-fun m!637121 () Bool)

(assert (=> b!666224 m!637121))

(declare-fun m!637123 () Bool)

(assert (=> b!666232 m!637123))

(declare-fun m!637125 () Bool)

(assert (=> b!666222 m!637125))

(declare-fun m!637127 () Bool)

(assert (=> b!666215 m!637127))

(declare-fun m!637129 () Bool)

(assert (=> b!666228 m!637129))

(declare-fun m!637131 () Bool)

(assert (=> start!60012 m!637131))

(declare-fun m!637133 () Bool)

(assert (=> b!666217 m!637133))

(declare-fun m!637135 () Bool)

(assert (=> b!666218 m!637135))

(declare-fun m!637137 () Bool)

(assert (=> b!666221 m!637137))

(push 1)

(assert (not b!666227))

(assert (not b!666212))

(assert (not start!60012))

(assert (not b!666221))

(assert (not b!666226))

(assert (not b!666218))

(assert (not b!666224))

(assert (not b!666220))

(assert (not b!666215))

(assert (not b!666228))

(assert (not b!666232))

(assert (not b!666216))

(assert (not b!666210))

(assert (not b!666219))

(assert (not b!666233))

(assert (not b!666222))

(assert (not b!666217))

(assert (not b!666231))

(assert (not b!666214))

(check-sat)

(pop 1)

