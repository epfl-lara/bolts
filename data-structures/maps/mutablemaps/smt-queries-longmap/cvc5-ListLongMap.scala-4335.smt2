; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60054 () Bool)

(assert start!60054)

(declare-fun b!667784 () Bool)

(declare-fun res!435097 () Bool)

(declare-fun e!382155 () Bool)

(assert (=> b!667784 (=> (not res!435097) (not e!382155))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39057 0))(
  ( (array!39058 (arr!18717 (Array (_ BitVec 32) (_ BitVec 64))) (size!19081 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39057)

(assert (=> b!667784 (= res!435097 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19081 a!3626))))))

(declare-fun b!667785 () Bool)

(declare-fun res!435085 () Bool)

(assert (=> b!667785 (=> (not res!435085) (not e!382155))))

(declare-datatypes ((List!12811 0))(
  ( (Nil!12808) (Cons!12807 (h!13852 (_ BitVec 64)) (t!19047 List!12811)) )
))
(declare-fun acc!681 () List!12811)

(declare-fun noDuplicate!601 (List!12811) Bool)

(assert (=> b!667785 (= res!435085 (noDuplicate!601 acc!681))))

(declare-fun b!667786 () Bool)

(declare-fun res!435089 () Bool)

(assert (=> b!667786 (=> (not res!435089) (not e!382155))))

(declare-fun contains!3354 (List!12811 (_ BitVec 64)) Bool)

(assert (=> b!667786 (= res!435089 (not (contains!3354 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667787 () Bool)

(declare-datatypes ((Unit!23380 0))(
  ( (Unit!23381) )
))
(declare-fun e!382149 () Unit!23380)

(declare-fun Unit!23382 () Unit!23380)

(assert (=> b!667787 (= e!382149 Unit!23382)))

(declare-fun res!435079 () Bool)

(assert (=> start!60054 (=> (not res!435079) (not e!382155))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60054 (= res!435079 (and (bvslt (size!19081 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19081 a!3626))))))

(assert (=> start!60054 e!382155))

(assert (=> start!60054 true))

(declare-fun array_inv!14491 (array!39057) Bool)

(assert (=> start!60054 (array_inv!14491 a!3626)))

(declare-fun b!667788 () Bool)

(declare-fun e!382154 () Bool)

(assert (=> b!667788 (= e!382155 (not e!382154))))

(declare-fun res!435092 () Bool)

(assert (=> b!667788 (=> res!435092 e!382154)))

(assert (=> b!667788 (= res!435092 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!310984 () List!12811)

(declare-fun arrayNoDuplicates!0 (array!39057 (_ BitVec 32) List!12811) Bool)

(assert (=> b!667788 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310984)))

(declare-fun lt!310991 () Unit!23380)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39057 (_ BitVec 64) (_ BitVec 32) List!12811 List!12811) Unit!23380)

(assert (=> b!667788 (= lt!310991 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310984))))

(declare-fun -!90 (List!12811 (_ BitVec 64)) List!12811)

(assert (=> b!667788 (= (-!90 lt!310984 k!2843) acc!681)))

(declare-fun $colon$colon!223 (List!12811 (_ BitVec 64)) List!12811)

(assert (=> b!667788 (= lt!310984 ($colon$colon!223 acc!681 k!2843))))

(declare-fun lt!310983 () Unit!23380)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12811) Unit!23380)

(assert (=> b!667788 (= lt!310983 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!92 (List!12811 List!12811) Bool)

(assert (=> b!667788 (subseq!92 acc!681 acc!681)))

(declare-fun lt!310992 () Unit!23380)

(declare-fun lemmaListSubSeqRefl!0 (List!12811) Unit!23380)

(assert (=> b!667788 (= lt!310992 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667788 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310986 () Unit!23380)

(declare-fun e!382146 () Unit!23380)

(assert (=> b!667788 (= lt!310986 e!382146)))

(declare-fun c!76721 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667788 (= c!76721 (validKeyInArray!0 (select (arr!18717 a!3626) from!3004)))))

(declare-fun lt!310988 () Unit!23380)

(assert (=> b!667788 (= lt!310988 e!382149)))

(declare-fun c!76720 () Bool)

(declare-fun arrayContainsKey!0 (array!39057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667788 (= c!76720 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667788 (arrayContainsKey!0 (array!39058 (store (arr!18717 a!3626) i!1382 k!2843) (size!19081 a!3626)) k!2843 from!3004)))

(declare-fun b!667789 () Bool)

(declare-fun res!435083 () Bool)

(assert (=> b!667789 (=> (not res!435083) (not e!382155))))

(assert (=> b!667789 (= res!435083 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667790 () Bool)

(declare-fun lt!310989 () Unit!23380)

(assert (=> b!667790 (= e!382146 lt!310989)))

(declare-fun lt!310987 () Unit!23380)

(assert (=> b!667790 (= lt!310987 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667790 (subseq!92 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39057 List!12811 List!12811 (_ BitVec 32)) Unit!23380)

(assert (=> b!667790 (= lt!310989 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!223 acc!681 (select (arr!18717 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667790 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667791 () Bool)

(declare-fun res!435091 () Bool)

(assert (=> b!667791 (=> res!435091 e!382154)))

(assert (=> b!667791 (= res!435091 (contains!3354 lt!310984 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667792 () Bool)

(declare-fun res!435080 () Bool)

(assert (=> b!667792 (=> (not res!435080) (not e!382155))))

(assert (=> b!667792 (= res!435080 (not (contains!3354 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667793 () Bool)

(declare-fun res!435093 () Bool)

(assert (=> b!667793 (=> (not res!435093) (not e!382155))))

(assert (=> b!667793 (= res!435093 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12808))))

(declare-fun b!667794 () Bool)

(declare-fun e!382151 () Bool)

(assert (=> b!667794 (= e!382151 (not (contains!3354 acc!681 k!2843)))))

(declare-fun b!667795 () Bool)

(declare-fun e!382152 () Bool)

(assert (=> b!667795 (= e!382152 (contains!3354 lt!310984 k!2843))))

(declare-fun b!667796 () Bool)

(declare-fun res!435088 () Bool)

(assert (=> b!667796 (=> (not res!435088) (not e!382155))))

(assert (=> b!667796 (= res!435088 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667797 () Bool)

(declare-fun res!435081 () Bool)

(assert (=> b!667797 (=> (not res!435081) (not e!382155))))

(assert (=> b!667797 (= res!435081 (validKeyInArray!0 k!2843))))

(declare-fun b!667798 () Bool)

(declare-fun e!382153 () Bool)

(assert (=> b!667798 (= e!382153 (contains!3354 acc!681 k!2843))))

(declare-fun b!667799 () Bool)

(declare-fun res!435087 () Bool)

(assert (=> b!667799 (=> res!435087 e!382154)))

(assert (=> b!667799 (= res!435087 (contains!3354 lt!310984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667800 () Bool)

(declare-fun e!382148 () Bool)

(declare-fun e!382147 () Bool)

(assert (=> b!667800 (= e!382148 e!382147)))

(declare-fun res!435084 () Bool)

(assert (=> b!667800 (=> (not res!435084) (not e!382147))))

(assert (=> b!667800 (= res!435084 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667801 () Bool)

(declare-fun e!382156 () Bool)

(assert (=> b!667801 (= e!382156 e!382151)))

(declare-fun res!435078 () Bool)

(assert (=> b!667801 (=> (not res!435078) (not e!382151))))

(assert (=> b!667801 (= res!435078 (bvsle from!3004 i!1382))))

(declare-fun b!667802 () Bool)

(declare-fun Unit!23383 () Unit!23380)

(assert (=> b!667802 (= e!382149 Unit!23383)))

(declare-fun lt!310990 () Unit!23380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39057 (_ BitVec 64) (_ BitVec 32)) Unit!23380)

(assert (=> b!667802 (= lt!310990 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667802 false))

(declare-fun b!667803 () Bool)

(declare-fun res!435090 () Bool)

(assert (=> b!667803 (=> (not res!435090) (not e!382155))))

(assert (=> b!667803 (= res!435090 e!382156)))

(declare-fun res!435095 () Bool)

(assert (=> b!667803 (=> res!435095 e!382156)))

(assert (=> b!667803 (= res!435095 e!382153)))

(declare-fun res!435098 () Bool)

(assert (=> b!667803 (=> (not res!435098) (not e!382153))))

(assert (=> b!667803 (= res!435098 (bvsgt from!3004 i!1382))))

(declare-fun b!667804 () Bool)

(assert (=> b!667804 (= e!382154 true)))

(declare-fun lt!310985 () Bool)

(assert (=> b!667804 (= lt!310985 e!382148)))

(declare-fun res!435096 () Bool)

(assert (=> b!667804 (=> res!435096 e!382148)))

(assert (=> b!667804 (= res!435096 e!382152)))

(declare-fun res!435094 () Bool)

(assert (=> b!667804 (=> (not res!435094) (not e!382152))))

(assert (=> b!667804 (= res!435094 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667805 () Bool)

(declare-fun res!435086 () Bool)

(assert (=> b!667805 (=> (not res!435086) (not e!382155))))

(assert (=> b!667805 (= res!435086 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19081 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667806 () Bool)

(assert (=> b!667806 (= e!382147 (not (contains!3354 lt!310984 k!2843)))))

(declare-fun b!667807 () Bool)

(declare-fun res!435082 () Bool)

(assert (=> b!667807 (=> res!435082 e!382154)))

(assert (=> b!667807 (= res!435082 (not (noDuplicate!601 lt!310984)))))

(declare-fun b!667808 () Bool)

(declare-fun Unit!23384 () Unit!23380)

(assert (=> b!667808 (= e!382146 Unit!23384)))

(assert (= (and start!60054 res!435079) b!667785))

(assert (= (and b!667785 res!435085) b!667786))

(assert (= (and b!667786 res!435089) b!667792))

(assert (= (and b!667792 res!435080) b!667803))

(assert (= (and b!667803 res!435098) b!667798))

(assert (= (and b!667803 (not res!435095)) b!667801))

(assert (= (and b!667801 res!435078) b!667794))

(assert (= (and b!667803 res!435090) b!667793))

(assert (= (and b!667793 res!435093) b!667796))

(assert (= (and b!667796 res!435088) b!667784))

(assert (= (and b!667784 res!435097) b!667797))

(assert (= (and b!667797 res!435081) b!667789))

(assert (= (and b!667789 res!435083) b!667805))

(assert (= (and b!667805 res!435086) b!667788))

(assert (= (and b!667788 c!76720) b!667802))

(assert (= (and b!667788 (not c!76720)) b!667787))

(assert (= (and b!667788 c!76721) b!667790))

(assert (= (and b!667788 (not c!76721)) b!667808))

(assert (= (and b!667788 (not res!435092)) b!667807))

(assert (= (and b!667807 (not res!435082)) b!667799))

(assert (= (and b!667799 (not res!435087)) b!667791))

(assert (= (and b!667791 (not res!435091)) b!667804))

(assert (= (and b!667804 res!435094) b!667795))

(assert (= (and b!667804 (not res!435096)) b!667800))

(assert (= (and b!667800 res!435084) b!667806))

(declare-fun m!638277 () Bool)

(assert (=> b!667791 m!638277))

(declare-fun m!638279 () Bool)

(assert (=> b!667789 m!638279))

(declare-fun m!638281 () Bool)

(assert (=> b!667793 m!638281))

(declare-fun m!638283 () Bool)

(assert (=> b!667794 m!638283))

(declare-fun m!638285 () Bool)

(assert (=> b!667790 m!638285))

(declare-fun m!638287 () Bool)

(assert (=> b!667790 m!638287))

(declare-fun m!638289 () Bool)

(assert (=> b!667790 m!638289))

(declare-fun m!638291 () Bool)

(assert (=> b!667790 m!638291))

(assert (=> b!667790 m!638287))

(assert (=> b!667790 m!638289))

(declare-fun m!638293 () Bool)

(assert (=> b!667790 m!638293))

(declare-fun m!638295 () Bool)

(assert (=> b!667790 m!638295))

(declare-fun m!638297 () Bool)

(assert (=> b!667795 m!638297))

(declare-fun m!638299 () Bool)

(assert (=> b!667807 m!638299))

(declare-fun m!638301 () Bool)

(assert (=> b!667788 m!638301))

(assert (=> b!667788 m!638285))

(declare-fun m!638303 () Bool)

(assert (=> b!667788 m!638303))

(declare-fun m!638305 () Bool)

(assert (=> b!667788 m!638305))

(declare-fun m!638307 () Bool)

(assert (=> b!667788 m!638307))

(assert (=> b!667788 m!638293))

(declare-fun m!638309 () Bool)

(assert (=> b!667788 m!638309))

(declare-fun m!638311 () Bool)

(assert (=> b!667788 m!638311))

(assert (=> b!667788 m!638287))

(declare-fun m!638313 () Bool)

(assert (=> b!667788 m!638313))

(assert (=> b!667788 m!638287))

(declare-fun m!638315 () Bool)

(assert (=> b!667788 m!638315))

(declare-fun m!638317 () Bool)

(assert (=> b!667788 m!638317))

(assert (=> b!667788 m!638295))

(declare-fun m!638319 () Bool)

(assert (=> b!667796 m!638319))

(declare-fun m!638321 () Bool)

(assert (=> b!667802 m!638321))

(declare-fun m!638323 () Bool)

(assert (=> b!667797 m!638323))

(declare-fun m!638325 () Bool)

(assert (=> b!667799 m!638325))

(declare-fun m!638327 () Bool)

(assert (=> start!60054 m!638327))

(assert (=> b!667806 m!638297))

(declare-fun m!638329 () Bool)

(assert (=> b!667785 m!638329))

(declare-fun m!638331 () Bool)

(assert (=> b!667792 m!638331))

(assert (=> b!667798 m!638283))

(declare-fun m!638333 () Bool)

(assert (=> b!667786 m!638333))

(push 1)

(assert (not b!667797))

(assert (not b!667788))

(assert (not b!667789))

(assert (not b!667807))

(assert (not b!667806))

(assert (not b!667794))

(assert (not start!60054))

(assert (not b!667792))

(assert (not b!667795))

(assert (not b!667790))

(assert (not b!667791))

(assert (not b!667802))

(assert (not b!667799))

(assert (not b!667786))

(assert (not b!667785))

(assert (not b!667793))

(assert (not b!667798))

(assert (not b!667796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

