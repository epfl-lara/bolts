; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60014 () Bool)

(assert start!60014)

(declare-fun b!666284 () Bool)

(declare-datatypes ((Unit!23280 0))(
  ( (Unit!23281) )
))
(declare-fun e!381580 () Unit!23280)

(declare-fun Unit!23282 () Unit!23280)

(assert (=> b!666284 (= e!381580 Unit!23282)))

(declare-fun b!666285 () Bool)

(declare-fun res!433819 () Bool)

(declare-fun e!381579 () Bool)

(assert (=> b!666285 (=> (not res!433819) (not e!381579))))

(declare-datatypes ((array!39017 0))(
  ( (array!39018 (arr!18697 (Array (_ BitVec 32) (_ BitVec 64))) (size!19061 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39017)

(declare-datatypes ((List!12791 0))(
  ( (Nil!12788) (Cons!12787 (h!13832 (_ BitVec 64)) (t!19027 List!12791)) )
))
(declare-fun arrayNoDuplicates!0 (array!39017 (_ BitVec 32) List!12791) Bool)

(assert (=> b!666285 (= res!433819 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12788))))

(declare-fun b!666286 () Bool)

(declare-fun res!433835 () Bool)

(declare-fun e!381586 () Bool)

(assert (=> b!666286 (=> res!433835 e!381586)))

(declare-fun acc!681 () List!12791)

(declare-fun lt!310387 () List!12791)

(declare-fun subseq!72 (List!12791 List!12791) Bool)

(assert (=> b!666286 (= res!433835 (not (subseq!72 acc!681 lt!310387)))))

(declare-fun b!666287 () Bool)

(declare-fun res!433837 () Bool)

(assert (=> b!666287 (=> (not res!433837) (not e!381579))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!666287 (= res!433837 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666288 () Bool)

(assert (=> b!666288 (= e!381586 true)))

(declare-fun lt!310384 () Bool)

(declare-fun contains!3334 (List!12791 (_ BitVec 64)) Bool)

(assert (=> b!666288 (= lt!310384 (contains!3334 lt!310387 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!433822 () Bool)

(assert (=> start!60014 (=> (not res!433822) (not e!381579))))

(assert (=> start!60014 (= res!433822 (and (bvslt (size!19061 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19061 a!3626))))))

(assert (=> start!60014 e!381579))

(assert (=> start!60014 true))

(declare-fun array_inv!14471 (array!39017) Bool)

(assert (=> start!60014 (array_inv!14471 a!3626)))

(declare-fun b!666289 () Bool)

(declare-fun res!433833 () Bool)

(assert (=> b!666289 (=> (not res!433833) (not e!381579))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666289 (= res!433833 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19061 a!3626))))))

(declare-fun b!666290 () Bool)

(declare-fun res!433826 () Bool)

(assert (=> b!666290 (=> (not res!433826) (not e!381579))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666290 (= res!433826 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666291 () Bool)

(declare-fun e!381582 () Unit!23280)

(declare-fun Unit!23283 () Unit!23280)

(assert (=> b!666291 (= e!381582 Unit!23283)))

(declare-fun lt!310390 () Unit!23280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39017 (_ BitVec 64) (_ BitVec 32)) Unit!23280)

(assert (=> b!666291 (= lt!310390 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!666291 false))

(declare-fun b!666292 () Bool)

(declare-fun e!381585 () Bool)

(declare-fun e!381584 () Bool)

(assert (=> b!666292 (= e!381585 e!381584)))

(declare-fun res!433825 () Bool)

(assert (=> b!666292 (=> (not res!433825) (not e!381584))))

(assert (=> b!666292 (= res!433825 (bvsle from!3004 i!1382))))

(declare-fun b!666293 () Bool)

(declare-fun res!433818 () Bool)

(assert (=> b!666293 (=> (not res!433818) (not e!381579))))

(declare-fun noDuplicate!581 (List!12791) Bool)

(assert (=> b!666293 (= res!433818 (noDuplicate!581 acc!681))))

(declare-fun b!666294 () Bool)

(declare-fun res!433831 () Bool)

(assert (=> b!666294 (=> (not res!433831) (not e!381579))))

(assert (=> b!666294 (= res!433831 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19061 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666295 () Bool)

(declare-fun res!433829 () Bool)

(assert (=> b!666295 (=> (not res!433829) (not e!381579))))

(assert (=> b!666295 (= res!433829 e!381585)))

(declare-fun res!433834 () Bool)

(assert (=> b!666295 (=> res!433834 e!381585)))

(declare-fun e!381583 () Bool)

(assert (=> b!666295 (= res!433834 e!381583)))

(declare-fun res!433827 () Bool)

(assert (=> b!666295 (=> (not res!433827) (not e!381583))))

(assert (=> b!666295 (= res!433827 (bvsgt from!3004 i!1382))))

(declare-fun b!666296 () Bool)

(declare-fun res!433824 () Bool)

(assert (=> b!666296 (=> res!433824 e!381586)))

(assert (=> b!666296 (= res!433824 (contains!3334 acc!681 k0!2843))))

(declare-fun b!666297 () Bool)

(declare-fun res!433836 () Bool)

(assert (=> b!666297 (=> (not res!433836) (not e!381579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666297 (= res!433836 (validKeyInArray!0 k0!2843))))

(declare-fun b!666298 () Bool)

(declare-fun lt!310386 () Unit!23280)

(assert (=> b!666298 (= e!381580 lt!310386)))

(declare-fun lt!310388 () Unit!23280)

(declare-fun lemmaListSubSeqRefl!0 (List!12791) Unit!23280)

(assert (=> b!666298 (= lt!310388 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666298 (subseq!72 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39017 List!12791 List!12791 (_ BitVec 32)) Unit!23280)

(declare-fun $colon$colon!203 (List!12791 (_ BitVec 64)) List!12791)

(assert (=> b!666298 (= lt!310386 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!203 acc!681 (select (arr!18697 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666298 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666299 () Bool)

(declare-fun res!433828 () Bool)

(assert (=> b!666299 (=> res!433828 e!381586)))

(declare-fun lt!310391 () Bool)

(assert (=> b!666299 (= res!433828 lt!310391)))

(declare-fun b!666300 () Bool)

(declare-fun res!433820 () Bool)

(assert (=> b!666300 (=> (not res!433820) (not e!381579))))

(assert (=> b!666300 (= res!433820 (not (contains!3334 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666301 () Bool)

(declare-fun res!433832 () Bool)

(assert (=> b!666301 (=> (not res!433832) (not e!381579))))

(assert (=> b!666301 (= res!433832 (not (contains!3334 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666302 () Bool)

(assert (=> b!666302 (= e!381579 (not e!381586))))

(declare-fun res!433821 () Bool)

(assert (=> b!666302 (=> res!433821 e!381586)))

(assert (=> b!666302 (= res!433821 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!70 (List!12791 (_ BitVec 64)) List!12791)

(assert (=> b!666302 (= (-!70 lt!310387 k0!2843) acc!681)))

(assert (=> b!666302 (= lt!310387 ($colon$colon!203 acc!681 k0!2843))))

(declare-fun lt!310392 () Unit!23280)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12791) Unit!23280)

(assert (=> b!666302 (= lt!310392 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!666302 (subseq!72 acc!681 acc!681)))

(declare-fun lt!310385 () Unit!23280)

(assert (=> b!666302 (= lt!310385 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666302 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310383 () Unit!23280)

(assert (=> b!666302 (= lt!310383 e!381580)))

(declare-fun c!76601 () Bool)

(assert (=> b!666302 (= c!76601 (validKeyInArray!0 (select (arr!18697 a!3626) from!3004)))))

(declare-fun lt!310389 () Unit!23280)

(assert (=> b!666302 (= lt!310389 e!381582)))

(declare-fun c!76600 () Bool)

(assert (=> b!666302 (= c!76600 lt!310391)))

(assert (=> b!666302 (= lt!310391 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666302 (arrayContainsKey!0 (array!39018 (store (arr!18697 a!3626) i!1382 k0!2843) (size!19061 a!3626)) k0!2843 from!3004)))

(declare-fun b!666303 () Bool)

(declare-fun res!433830 () Bool)

(assert (=> b!666303 (=> res!433830 e!381586)))

(assert (=> b!666303 (= res!433830 (not (noDuplicate!581 lt!310387)))))

(declare-fun b!666304 () Bool)

(declare-fun res!433823 () Bool)

(assert (=> b!666304 (=> res!433823 e!381586)))

(assert (=> b!666304 (= res!433823 (contains!3334 lt!310387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666305 () Bool)

(declare-fun res!433838 () Bool)

(assert (=> b!666305 (=> res!433838 e!381586)))

(assert (=> b!666305 (= res!433838 (not (contains!3334 lt!310387 k0!2843)))))

(declare-fun b!666306 () Bool)

(assert (=> b!666306 (= e!381584 (not (contains!3334 acc!681 k0!2843)))))

(declare-fun b!666307 () Bool)

(declare-fun Unit!23284 () Unit!23280)

(assert (=> b!666307 (= e!381582 Unit!23284)))

(declare-fun b!666308 () Bool)

(assert (=> b!666308 (= e!381583 (contains!3334 acc!681 k0!2843))))

(assert (= (and start!60014 res!433822) b!666293))

(assert (= (and b!666293 res!433818) b!666301))

(assert (= (and b!666301 res!433832) b!666300))

(assert (= (and b!666300 res!433820) b!666295))

(assert (= (and b!666295 res!433827) b!666308))

(assert (= (and b!666295 (not res!433834)) b!666292))

(assert (= (and b!666292 res!433825) b!666306))

(assert (= (and b!666295 res!433829) b!666285))

(assert (= (and b!666285 res!433819) b!666287))

(assert (= (and b!666287 res!433837) b!666289))

(assert (= (and b!666289 res!433833) b!666297))

(assert (= (and b!666297 res!433836) b!666290))

(assert (= (and b!666290 res!433826) b!666294))

(assert (= (and b!666294 res!433831) b!666302))

(assert (= (and b!666302 c!76600) b!666291))

(assert (= (and b!666302 (not c!76600)) b!666307))

(assert (= (and b!666302 c!76601) b!666298))

(assert (= (and b!666302 (not c!76601)) b!666284))

(assert (= (and b!666302 (not res!433821)) b!666303))

(assert (= (and b!666303 (not res!433830)) b!666299))

(assert (= (and b!666299 (not res!433828)) b!666296))

(assert (= (and b!666296 (not res!433824)) b!666286))

(assert (= (and b!666286 (not res!433835)) b!666305))

(assert (= (and b!666305 (not res!433838)) b!666304))

(assert (= (and b!666304 (not res!433823)) b!666288))

(declare-fun m!637139 () Bool)

(assert (=> b!666303 m!637139))

(declare-fun m!637141 () Bool)

(assert (=> b!666293 m!637141))

(declare-fun m!637143 () Bool)

(assert (=> b!666300 m!637143))

(declare-fun m!637145 () Bool)

(assert (=> b!666308 m!637145))

(declare-fun m!637147 () Bool)

(assert (=> b!666301 m!637147))

(assert (=> b!666306 m!637145))

(declare-fun m!637149 () Bool)

(assert (=> b!666288 m!637149))

(declare-fun m!637151 () Bool)

(assert (=> start!60014 m!637151))

(declare-fun m!637153 () Bool)

(assert (=> b!666298 m!637153))

(declare-fun m!637155 () Bool)

(assert (=> b!666298 m!637155))

(declare-fun m!637157 () Bool)

(assert (=> b!666298 m!637157))

(declare-fun m!637159 () Bool)

(assert (=> b!666298 m!637159))

(assert (=> b!666298 m!637155))

(assert (=> b!666298 m!637157))

(declare-fun m!637161 () Bool)

(assert (=> b!666298 m!637161))

(declare-fun m!637163 () Bool)

(assert (=> b!666298 m!637163))

(declare-fun m!637165 () Bool)

(assert (=> b!666297 m!637165))

(declare-fun m!637167 () Bool)

(assert (=> b!666286 m!637167))

(declare-fun m!637169 () Bool)

(assert (=> b!666290 m!637169))

(assert (=> b!666302 m!637153))

(assert (=> b!666302 m!637155))

(declare-fun m!637171 () Bool)

(assert (=> b!666302 m!637171))

(declare-fun m!637173 () Bool)

(assert (=> b!666302 m!637173))

(assert (=> b!666302 m!637161))

(declare-fun m!637175 () Bool)

(assert (=> b!666302 m!637175))

(declare-fun m!637177 () Bool)

(assert (=> b!666302 m!637177))

(assert (=> b!666302 m!637155))

(declare-fun m!637179 () Bool)

(assert (=> b!666302 m!637179))

(declare-fun m!637181 () Bool)

(assert (=> b!666302 m!637181))

(declare-fun m!637183 () Bool)

(assert (=> b!666302 m!637183))

(assert (=> b!666302 m!637163))

(assert (=> b!666296 m!637145))

(declare-fun m!637185 () Bool)

(assert (=> b!666291 m!637185))

(declare-fun m!637187 () Bool)

(assert (=> b!666305 m!637187))

(declare-fun m!637189 () Bool)

(assert (=> b!666287 m!637189))

(declare-fun m!637191 () Bool)

(assert (=> b!666304 m!637191))

(declare-fun m!637193 () Bool)

(assert (=> b!666285 m!637193))

(check-sat (not b!666303) (not b!666308) (not b!666305) (not b!666288) (not b!666306) (not b!666287) (not b!666297) (not b!666290) (not b!666286) (not b!666285) (not b!666296) (not b!666293) (not b!666302) (not b!666300) (not b!666298) (not start!60014) (not b!666291) (not b!666304) (not b!666301))
(check-sat)
