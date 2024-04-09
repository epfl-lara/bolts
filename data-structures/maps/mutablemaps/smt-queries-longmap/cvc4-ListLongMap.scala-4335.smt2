; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60058 () Bool)

(assert start!60058)

(declare-fun b!667934 () Bool)

(declare-datatypes ((Unit!23390 0))(
  ( (Unit!23391) )
))
(declare-fun e!382219 () Unit!23390)

(declare-fun Unit!23392 () Unit!23390)

(assert (=> b!667934 (= e!382219 Unit!23392)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39061 0))(
  ( (array!39062 (arr!18719 (Array (_ BitVec 32) (_ BitVec 64))) (size!19083 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39061)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!311045 () Unit!23390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39061 (_ BitVec 64) (_ BitVec 32)) Unit!23390)

(assert (=> b!667934 (= lt!311045 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667934 false))

(declare-fun b!667935 () Bool)

(declare-fun res!435216 () Bool)

(declare-fun e!382222 () Bool)

(assert (=> b!667935 (=> (not res!435216) (not e!382222))))

(declare-datatypes ((List!12813 0))(
  ( (Nil!12810) (Cons!12809 (h!13854 (_ BitVec 64)) (t!19049 List!12813)) )
))
(declare-fun acc!681 () List!12813)

(declare-fun noDuplicate!603 (List!12813) Bool)

(assert (=> b!667935 (= res!435216 (noDuplicate!603 acc!681))))

(declare-fun b!667936 () Bool)

(declare-fun res!435218 () Bool)

(assert (=> b!667936 (=> (not res!435218) (not e!382222))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667936 (= res!435218 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19083 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667937 () Bool)

(declare-fun res!435224 () Bool)

(declare-fun e!382215 () Bool)

(assert (=> b!667937 (=> res!435224 e!382215)))

(declare-fun lt!311050 () List!12813)

(declare-fun contains!3356 (List!12813 (_ BitVec 64)) Bool)

(assert (=> b!667937 (= res!435224 (contains!3356 lt!311050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667938 () Bool)

(assert (=> b!667938 (= e!382222 (not e!382215))))

(declare-fun res!435213 () Bool)

(assert (=> b!667938 (=> res!435213 e!382215)))

(assert (=> b!667938 (= res!435213 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39061 (_ BitVec 32) List!12813) Bool)

(assert (=> b!667938 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311050)))

(declare-fun lt!311044 () Unit!23390)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39061 (_ BitVec 64) (_ BitVec 32) List!12813 List!12813) Unit!23390)

(assert (=> b!667938 (= lt!311044 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311050))))

(declare-fun -!92 (List!12813 (_ BitVec 64)) List!12813)

(assert (=> b!667938 (= (-!92 lt!311050 k!2843) acc!681)))

(declare-fun $colon$colon!225 (List!12813 (_ BitVec 64)) List!12813)

(assert (=> b!667938 (= lt!311050 ($colon$colon!225 acc!681 k!2843))))

(declare-fun lt!311046 () Unit!23390)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12813) Unit!23390)

(assert (=> b!667938 (= lt!311046 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!94 (List!12813 List!12813) Bool)

(assert (=> b!667938 (subseq!94 acc!681 acc!681)))

(declare-fun lt!311043 () Unit!23390)

(declare-fun lemmaListSubSeqRefl!0 (List!12813) Unit!23390)

(assert (=> b!667938 (= lt!311043 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667938 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311047 () Unit!23390)

(declare-fun e!382218 () Unit!23390)

(assert (=> b!667938 (= lt!311047 e!382218)))

(declare-fun c!76732 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667938 (= c!76732 (validKeyInArray!0 (select (arr!18719 a!3626) from!3004)))))

(declare-fun lt!311051 () Unit!23390)

(assert (=> b!667938 (= lt!311051 e!382219)))

(declare-fun c!76733 () Bool)

(declare-fun arrayContainsKey!0 (array!39061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667938 (= c!76733 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667938 (arrayContainsKey!0 (array!39062 (store (arr!18719 a!3626) i!1382 k!2843) (size!19083 a!3626)) k!2843 from!3004)))

(declare-fun b!667939 () Bool)

(declare-fun res!435223 () Bool)

(assert (=> b!667939 (=> (not res!435223) (not e!382222))))

(assert (=> b!667939 (= res!435223 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667940 () Bool)

(declare-fun res!435214 () Bool)

(assert (=> b!667940 (=> (not res!435214) (not e!382222))))

(declare-fun e!382213 () Bool)

(assert (=> b!667940 (= res!435214 e!382213)))

(declare-fun res!435217 () Bool)

(assert (=> b!667940 (=> res!435217 e!382213)))

(declare-fun e!382216 () Bool)

(assert (=> b!667940 (= res!435217 e!382216)))

(declare-fun res!435222 () Bool)

(assert (=> b!667940 (=> (not res!435222) (not e!382216))))

(assert (=> b!667940 (= res!435222 (bvsgt from!3004 i!1382))))

(declare-fun b!667941 () Bool)

(declare-fun Unit!23393 () Unit!23390)

(assert (=> b!667941 (= e!382218 Unit!23393)))

(declare-fun b!667942 () Bool)

(declare-fun res!435205 () Bool)

(assert (=> b!667942 (=> res!435205 e!382215)))

(assert (=> b!667942 (= res!435205 (not (noDuplicate!603 lt!311050)))))

(declare-fun res!435204 () Bool)

(assert (=> start!60058 (=> (not res!435204) (not e!382222))))

(assert (=> start!60058 (= res!435204 (and (bvslt (size!19083 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19083 a!3626))))))

(assert (=> start!60058 e!382222))

(assert (=> start!60058 true))

(declare-fun array_inv!14493 (array!39061) Bool)

(assert (=> start!60058 (array_inv!14493 a!3626)))

(declare-fun b!667943 () Bool)

(declare-fun res!435212 () Bool)

(assert (=> b!667943 (=> (not res!435212) (not e!382222))))

(assert (=> b!667943 (= res!435212 (not (contains!3356 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667944 () Bool)

(declare-fun res!435215 () Bool)

(assert (=> b!667944 (=> (not res!435215) (not e!382222))))

(assert (=> b!667944 (= res!435215 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12810))))

(declare-fun b!667945 () Bool)

(declare-fun res!435221 () Bool)

(assert (=> b!667945 (=> (not res!435221) (not e!382222))))

(assert (=> b!667945 (= res!435221 (not (contains!3356 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667946 () Bool)

(assert (=> b!667946 (= e!382216 (contains!3356 acc!681 k!2843))))

(declare-fun b!667947 () Bool)

(declare-fun e!382212 () Bool)

(assert (=> b!667947 (= e!382212 (not (contains!3356 acc!681 k!2843)))))

(declare-fun b!667948 () Bool)

(declare-fun res!435206 () Bool)

(assert (=> b!667948 (=> (not res!435206) (not e!382222))))

(assert (=> b!667948 (= res!435206 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19083 a!3626))))))

(declare-fun b!667949 () Bool)

(declare-fun e!382214 () Bool)

(assert (=> b!667949 (= e!382214 (contains!3356 lt!311050 k!2843))))

(declare-fun b!667950 () Bool)

(declare-fun lt!311048 () Unit!23390)

(assert (=> b!667950 (= e!382218 lt!311048)))

(declare-fun lt!311049 () Unit!23390)

(assert (=> b!667950 (= lt!311049 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667950 (subseq!94 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39061 List!12813 List!12813 (_ BitVec 32)) Unit!23390)

(assert (=> b!667950 (= lt!311048 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!225 acc!681 (select (arr!18719 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667950 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667951 () Bool)

(assert (=> b!667951 (= e!382213 e!382212)))

(declare-fun res!435207 () Bool)

(assert (=> b!667951 (=> (not res!435207) (not e!382212))))

(assert (=> b!667951 (= res!435207 (bvsle from!3004 i!1382))))

(declare-fun b!667952 () Bool)

(declare-fun res!435220 () Bool)

(assert (=> b!667952 (=> res!435220 e!382215)))

(assert (=> b!667952 (= res!435220 (contains!3356 lt!311050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667953 () Bool)

(declare-fun e!382220 () Bool)

(declare-fun e!382221 () Bool)

(assert (=> b!667953 (= e!382220 e!382221)))

(declare-fun res!435209 () Bool)

(assert (=> b!667953 (=> (not res!435209) (not e!382221))))

(assert (=> b!667953 (= res!435209 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667954 () Bool)

(declare-fun Unit!23394 () Unit!23390)

(assert (=> b!667954 (= e!382219 Unit!23394)))

(declare-fun b!667955 () Bool)

(declare-fun res!435208 () Bool)

(assert (=> b!667955 (=> (not res!435208) (not e!382222))))

(assert (=> b!667955 (= res!435208 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667956 () Bool)

(assert (=> b!667956 (= e!382221 (not (contains!3356 lt!311050 k!2843)))))

(declare-fun b!667957 () Bool)

(declare-fun res!435210 () Bool)

(assert (=> b!667957 (=> (not res!435210) (not e!382222))))

(assert (=> b!667957 (= res!435210 (validKeyInArray!0 k!2843))))

(declare-fun b!667958 () Bool)

(assert (=> b!667958 (= e!382215 true)))

(declare-fun lt!311052 () Bool)

(assert (=> b!667958 (= lt!311052 e!382220)))

(declare-fun res!435219 () Bool)

(assert (=> b!667958 (=> res!435219 e!382220)))

(assert (=> b!667958 (= res!435219 e!382214)))

(declare-fun res!435211 () Bool)

(assert (=> b!667958 (=> (not res!435211) (not e!382214))))

(assert (=> b!667958 (= res!435211 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60058 res!435204) b!667935))

(assert (= (and b!667935 res!435216) b!667945))

(assert (= (and b!667945 res!435221) b!667943))

(assert (= (and b!667943 res!435212) b!667940))

(assert (= (and b!667940 res!435222) b!667946))

(assert (= (and b!667940 (not res!435217)) b!667951))

(assert (= (and b!667951 res!435207) b!667947))

(assert (= (and b!667940 res!435214) b!667944))

(assert (= (and b!667944 res!435215) b!667955))

(assert (= (and b!667955 res!435208) b!667948))

(assert (= (and b!667948 res!435206) b!667957))

(assert (= (and b!667957 res!435210) b!667939))

(assert (= (and b!667939 res!435223) b!667936))

(assert (= (and b!667936 res!435218) b!667938))

(assert (= (and b!667938 c!76733) b!667934))

(assert (= (and b!667938 (not c!76733)) b!667954))

(assert (= (and b!667938 c!76732) b!667950))

(assert (= (and b!667938 (not c!76732)) b!667941))

(assert (= (and b!667938 (not res!435213)) b!667942))

(assert (= (and b!667942 (not res!435205)) b!667937))

(assert (= (and b!667937 (not res!435224)) b!667952))

(assert (= (and b!667952 (not res!435220)) b!667958))

(assert (= (and b!667958 res!435211) b!667949))

(assert (= (and b!667958 (not res!435219)) b!667953))

(assert (= (and b!667953 res!435209) b!667956))

(declare-fun m!638393 () Bool)

(assert (=> b!667935 m!638393))

(declare-fun m!638395 () Bool)

(assert (=> b!667945 m!638395))

(declare-fun m!638397 () Bool)

(assert (=> b!667955 m!638397))

(declare-fun m!638399 () Bool)

(assert (=> b!667943 m!638399))

(declare-fun m!638401 () Bool)

(assert (=> b!667952 m!638401))

(declare-fun m!638403 () Bool)

(assert (=> b!667934 m!638403))

(declare-fun m!638405 () Bool)

(assert (=> start!60058 m!638405))

(declare-fun m!638407 () Bool)

(assert (=> b!667939 m!638407))

(declare-fun m!638409 () Bool)

(assert (=> b!667944 m!638409))

(declare-fun m!638411 () Bool)

(assert (=> b!667957 m!638411))

(declare-fun m!638413 () Bool)

(assert (=> b!667947 m!638413))

(declare-fun m!638415 () Bool)

(assert (=> b!667937 m!638415))

(declare-fun m!638417 () Bool)

(assert (=> b!667956 m!638417))

(declare-fun m!638419 () Bool)

(assert (=> b!667938 m!638419))

(declare-fun m!638421 () Bool)

(assert (=> b!667938 m!638421))

(declare-fun m!638423 () Bool)

(assert (=> b!667938 m!638423))

(declare-fun m!638425 () Bool)

(assert (=> b!667938 m!638425))

(declare-fun m!638427 () Bool)

(assert (=> b!667938 m!638427))

(declare-fun m!638429 () Bool)

(assert (=> b!667938 m!638429))

(declare-fun m!638431 () Bool)

(assert (=> b!667938 m!638431))

(assert (=> b!667938 m!638421))

(declare-fun m!638433 () Bool)

(assert (=> b!667938 m!638433))

(declare-fun m!638435 () Bool)

(assert (=> b!667938 m!638435))

(declare-fun m!638437 () Bool)

(assert (=> b!667938 m!638437))

(declare-fun m!638439 () Bool)

(assert (=> b!667938 m!638439))

(declare-fun m!638441 () Bool)

(assert (=> b!667938 m!638441))

(declare-fun m!638443 () Bool)

(assert (=> b!667938 m!638443))

(assert (=> b!667946 m!638413))

(assert (=> b!667950 m!638437))

(assert (=> b!667950 m!638421))

(declare-fun m!638445 () Bool)

(assert (=> b!667950 m!638445))

(declare-fun m!638447 () Bool)

(assert (=> b!667950 m!638447))

(assert (=> b!667950 m!638421))

(assert (=> b!667950 m!638445))

(assert (=> b!667950 m!638427))

(assert (=> b!667950 m!638443))

(assert (=> b!667949 m!638417))

(declare-fun m!638449 () Bool)

(assert (=> b!667942 m!638449))

(push 1)

(assert (not b!667943))

(assert (not b!667955))

(assert (not b!667949))

(assert (not b!667950))

(assert (not b!667956))

(assert (not b!667937))

(assert (not start!60058))

(assert (not b!667939))

(assert (not b!667947))

(assert (not b!667945))

(assert (not b!667952))

(assert (not b!667957))

(assert (not b!667946))

(assert (not b!667944))

(assert (not b!667938))

(assert (not b!667942))

(assert (not b!667934))

(assert (not b!667935))

(check-sat)

