; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60066 () Bool)

(assert start!60066)

(declare-fun b!668234 () Bool)

(declare-fun res!435466 () Bool)

(declare-fun e!382344 () Bool)

(assert (=> b!668234 (=> (not res!435466) (not e!382344))))

(declare-datatypes ((List!12817 0))(
  ( (Nil!12814) (Cons!12813 (h!13858 (_ BitVec 64)) (t!19053 List!12817)) )
))
(declare-fun acc!681 () List!12817)

(declare-fun noDuplicate!607 (List!12817) Bool)

(assert (=> b!668234 (= res!435466 (noDuplicate!607 acc!681))))

(declare-fun res!435458 () Bool)

(assert (=> start!60066 (=> (not res!435458) (not e!382344))))

(declare-datatypes ((array!39069 0))(
  ( (array!39070 (arr!18723 (Array (_ BitVec 32) (_ BitVec 64))) (size!19087 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39069)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60066 (= res!435458 (and (bvslt (size!19087 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19087 a!3626))))))

(assert (=> start!60066 e!382344))

(assert (=> start!60066 true))

(declare-fun array_inv!14497 (array!39069) Bool)

(assert (=> start!60066 (array_inv!14497 a!3626)))

(declare-fun b!668235 () Bool)

(declare-fun res!435464 () Bool)

(declare-fun e!382350 () Bool)

(assert (=> b!668235 (=> res!435464 e!382350)))

(declare-fun lt!311167 () List!12817)

(assert (=> b!668235 (= res!435464 (not (noDuplicate!607 lt!311167)))))

(declare-fun b!668236 () Bool)

(declare-datatypes ((Unit!23410 0))(
  ( (Unit!23411) )
))
(declare-fun e!382346 () Unit!23410)

(declare-fun Unit!23412 () Unit!23410)

(assert (=> b!668236 (= e!382346 Unit!23412)))

(declare-fun lt!311164 () Unit!23410)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39069 (_ BitVec 64) (_ BitVec 32)) Unit!23410)

(assert (=> b!668236 (= lt!311164 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668236 false))

(declare-fun b!668237 () Bool)

(declare-fun e!382347 () Bool)

(declare-fun contains!3360 (List!12817 (_ BitVec 64)) Bool)

(assert (=> b!668237 (= e!382347 (contains!3360 lt!311167 k!2843))))

(declare-fun b!668238 () Bool)

(declare-fun res!435474 () Bool)

(assert (=> b!668238 (=> res!435474 e!382350)))

(assert (=> b!668238 (= res!435474 (contains!3360 lt!311167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668239 () Bool)

(declare-fun res!435471 () Bool)

(assert (=> b!668239 (=> (not res!435471) (not e!382344))))

(declare-fun arrayContainsKey!0 (array!39069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668239 (= res!435471 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668240 () Bool)

(declare-fun e!382349 () Bool)

(assert (=> b!668240 (= e!382349 (contains!3360 acc!681 k!2843))))

(declare-fun b!668241 () Bool)

(declare-fun e!382353 () Bool)

(declare-fun e!382354 () Bool)

(assert (=> b!668241 (= e!382353 e!382354)))

(declare-fun res!435463 () Bool)

(assert (=> b!668241 (=> (not res!435463) (not e!382354))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668241 (= res!435463 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668242 () Bool)

(declare-fun res!435475 () Bool)

(assert (=> b!668242 (=> (not res!435475) (not e!382344))))

(assert (=> b!668242 (= res!435475 (not (contains!3360 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668243 () Bool)

(declare-fun Unit!23413 () Unit!23410)

(assert (=> b!668243 (= e!382346 Unit!23413)))

(declare-fun b!668244 () Bool)

(declare-fun res!435462 () Bool)

(assert (=> b!668244 (=> (not res!435462) (not e!382344))))

(assert (=> b!668244 (= res!435462 (not (contains!3360 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668245 () Bool)

(declare-fun e!382351 () Bool)

(declare-fun e!382352 () Bool)

(assert (=> b!668245 (= e!382351 e!382352)))

(declare-fun res!435468 () Bool)

(assert (=> b!668245 (=> (not res!435468) (not e!382352))))

(assert (=> b!668245 (= res!435468 (bvsle from!3004 i!1382))))

(declare-fun b!668246 () Bool)

(declare-fun e!382345 () Unit!23410)

(declare-fun Unit!23414 () Unit!23410)

(assert (=> b!668246 (= e!382345 Unit!23414)))

(declare-fun b!668247 () Bool)

(declare-fun res!435459 () Bool)

(assert (=> b!668247 (=> (not res!435459) (not e!382344))))

(assert (=> b!668247 (= res!435459 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19087 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668248 () Bool)

(declare-fun res!435473 () Bool)

(assert (=> b!668248 (=> (not res!435473) (not e!382344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668248 (= res!435473 (validKeyInArray!0 k!2843))))

(declare-fun b!668249 () Bool)

(declare-fun res!435460 () Bool)

(assert (=> b!668249 (=> (not res!435460) (not e!382344))))

(declare-fun arrayNoDuplicates!0 (array!39069 (_ BitVec 32) List!12817) Bool)

(assert (=> b!668249 (= res!435460 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12814))))

(declare-fun b!668250 () Bool)

(assert (=> b!668250 (= e!382350 true)))

(declare-fun lt!311172 () Bool)

(assert (=> b!668250 (= lt!311172 e!382353)))

(declare-fun res!435456 () Bool)

(assert (=> b!668250 (=> res!435456 e!382353)))

(assert (=> b!668250 (= res!435456 e!382347)))

(declare-fun res!435470 () Bool)

(assert (=> b!668250 (=> (not res!435470) (not e!382347))))

(assert (=> b!668250 (= res!435470 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668251 () Bool)

(declare-fun res!435476 () Bool)

(assert (=> b!668251 (=> res!435476 e!382350)))

(assert (=> b!668251 (= res!435476 (contains!3360 lt!311167 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668252 () Bool)

(assert (=> b!668252 (= e!382352 (not (contains!3360 acc!681 k!2843)))))

(declare-fun b!668253 () Bool)

(declare-fun res!435461 () Bool)

(assert (=> b!668253 (=> (not res!435461) (not e!382344))))

(assert (=> b!668253 (= res!435461 e!382351)))

(declare-fun res!435472 () Bool)

(assert (=> b!668253 (=> res!435472 e!382351)))

(assert (=> b!668253 (= res!435472 e!382349)))

(declare-fun res!435469 () Bool)

(assert (=> b!668253 (=> (not res!435469) (not e!382349))))

(assert (=> b!668253 (= res!435469 (bvsgt from!3004 i!1382))))

(declare-fun b!668254 () Bool)

(assert (=> b!668254 (= e!382344 (not e!382350))))

(declare-fun res!435465 () Bool)

(assert (=> b!668254 (=> res!435465 e!382350)))

(assert (=> b!668254 (= res!435465 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668254 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311167)))

(declare-fun lt!311170 () Unit!23410)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39069 (_ BitVec 64) (_ BitVec 32) List!12817 List!12817) Unit!23410)

(assert (=> b!668254 (= lt!311170 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311167))))

(declare-fun -!96 (List!12817 (_ BitVec 64)) List!12817)

(assert (=> b!668254 (= (-!96 lt!311167 k!2843) acc!681)))

(declare-fun $colon$colon!229 (List!12817 (_ BitVec 64)) List!12817)

(assert (=> b!668254 (= lt!311167 ($colon$colon!229 acc!681 k!2843))))

(declare-fun lt!311169 () Unit!23410)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12817) Unit!23410)

(assert (=> b!668254 (= lt!311169 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!98 (List!12817 List!12817) Bool)

(assert (=> b!668254 (subseq!98 acc!681 acc!681)))

(declare-fun lt!311168 () Unit!23410)

(declare-fun lemmaListSubSeqRefl!0 (List!12817) Unit!23410)

(assert (=> b!668254 (= lt!311168 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668254 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311165 () Unit!23410)

(assert (=> b!668254 (= lt!311165 e!382345)))

(declare-fun c!76756 () Bool)

(assert (=> b!668254 (= c!76756 (validKeyInArray!0 (select (arr!18723 a!3626) from!3004)))))

(declare-fun lt!311171 () Unit!23410)

(assert (=> b!668254 (= lt!311171 e!382346)))

(declare-fun c!76757 () Bool)

(assert (=> b!668254 (= c!76757 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668254 (arrayContainsKey!0 (array!39070 (store (arr!18723 a!3626) i!1382 k!2843) (size!19087 a!3626)) k!2843 from!3004)))

(declare-fun b!668255 () Bool)

(assert (=> b!668255 (= e!382354 (not (contains!3360 lt!311167 k!2843)))))

(declare-fun b!668256 () Bool)

(declare-fun lt!311163 () Unit!23410)

(assert (=> b!668256 (= e!382345 lt!311163)))

(declare-fun lt!311166 () Unit!23410)

(assert (=> b!668256 (= lt!311166 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668256 (subseq!98 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39069 List!12817 List!12817 (_ BitVec 32)) Unit!23410)

(assert (=> b!668256 (= lt!311163 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!229 acc!681 (select (arr!18723 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668256 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668257 () Bool)

(declare-fun res!435457 () Bool)

(assert (=> b!668257 (=> (not res!435457) (not e!382344))))

(assert (=> b!668257 (= res!435457 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668258 () Bool)

(declare-fun res!435467 () Bool)

(assert (=> b!668258 (=> (not res!435467) (not e!382344))))

(assert (=> b!668258 (= res!435467 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19087 a!3626))))))

(assert (= (and start!60066 res!435458) b!668234))

(assert (= (and b!668234 res!435466) b!668244))

(assert (= (and b!668244 res!435462) b!668242))

(assert (= (and b!668242 res!435475) b!668253))

(assert (= (and b!668253 res!435469) b!668240))

(assert (= (and b!668253 (not res!435472)) b!668245))

(assert (= (and b!668245 res!435468) b!668252))

(assert (= (and b!668253 res!435461) b!668249))

(assert (= (and b!668249 res!435460) b!668257))

(assert (= (and b!668257 res!435457) b!668258))

(assert (= (and b!668258 res!435467) b!668248))

(assert (= (and b!668248 res!435473) b!668239))

(assert (= (and b!668239 res!435471) b!668247))

(assert (= (and b!668247 res!435459) b!668254))

(assert (= (and b!668254 c!76757) b!668236))

(assert (= (and b!668254 (not c!76757)) b!668243))

(assert (= (and b!668254 c!76756) b!668256))

(assert (= (and b!668254 (not c!76756)) b!668246))

(assert (= (and b!668254 (not res!435465)) b!668235))

(assert (= (and b!668235 (not res!435464)) b!668238))

(assert (= (and b!668238 (not res!435474)) b!668251))

(assert (= (and b!668251 (not res!435476)) b!668250))

(assert (= (and b!668250 res!435470) b!668237))

(assert (= (and b!668250 (not res!435456)) b!668241))

(assert (= (and b!668241 res!435463) b!668255))

(declare-fun m!638625 () Bool)

(assert (=> start!60066 m!638625))

(declare-fun m!638627 () Bool)

(assert (=> b!668242 m!638627))

(declare-fun m!638629 () Bool)

(assert (=> b!668257 m!638629))

(declare-fun m!638631 () Bool)

(assert (=> b!668238 m!638631))

(declare-fun m!638633 () Bool)

(assert (=> b!668240 m!638633))

(declare-fun m!638635 () Bool)

(assert (=> b!668239 m!638635))

(declare-fun m!638637 () Bool)

(assert (=> b!668236 m!638637))

(declare-fun m!638639 () Bool)

(assert (=> b!668235 m!638639))

(declare-fun m!638641 () Bool)

(assert (=> b!668256 m!638641))

(declare-fun m!638643 () Bool)

(assert (=> b!668256 m!638643))

(declare-fun m!638645 () Bool)

(assert (=> b!668256 m!638645))

(declare-fun m!638647 () Bool)

(assert (=> b!668256 m!638647))

(assert (=> b!668256 m!638643))

(assert (=> b!668256 m!638645))

(declare-fun m!638649 () Bool)

(assert (=> b!668256 m!638649))

(declare-fun m!638651 () Bool)

(assert (=> b!668256 m!638651))

(declare-fun m!638653 () Bool)

(assert (=> b!668244 m!638653))

(declare-fun m!638655 () Bool)

(assert (=> b!668251 m!638655))

(declare-fun m!638657 () Bool)

(assert (=> b!668248 m!638657))

(assert (=> b!668252 m!638633))

(declare-fun m!638659 () Bool)

(assert (=> b!668255 m!638659))

(declare-fun m!638661 () Bool)

(assert (=> b!668249 m!638661))

(assert (=> b!668254 m!638641))

(assert (=> b!668254 m!638643))

(declare-fun m!638663 () Bool)

(assert (=> b!668254 m!638663))

(declare-fun m!638665 () Bool)

(assert (=> b!668254 m!638665))

(declare-fun m!638667 () Bool)

(assert (=> b!668254 m!638667))

(assert (=> b!668254 m!638649))

(declare-fun m!638669 () Bool)

(assert (=> b!668254 m!638669))

(declare-fun m!638671 () Bool)

(assert (=> b!668254 m!638671))

(declare-fun m!638673 () Bool)

(assert (=> b!668254 m!638673))

(assert (=> b!668254 m!638643))

(declare-fun m!638675 () Bool)

(assert (=> b!668254 m!638675))

(declare-fun m!638677 () Bool)

(assert (=> b!668254 m!638677))

(declare-fun m!638679 () Bool)

(assert (=> b!668254 m!638679))

(assert (=> b!668254 m!638651))

(declare-fun m!638681 () Bool)

(assert (=> b!668234 m!638681))

(assert (=> b!668237 m!638659))

(push 1)

(assert (not b!668239))

(assert (not b!668255))

(assert (not b!668234))

(assert (not start!60066))

(assert (not b!668252))

(assert (not b!668244))

(assert (not b!668238))

(assert (not b!668240))

(assert (not b!668242))

(assert (not b!668257))

(assert (not b!668251))

(assert (not b!668236))

(assert (not b!668235))

(assert (not b!668254))

(assert (not b!668248))

(assert (not b!668249))

(assert (not b!668237))

(assert (not b!668256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

