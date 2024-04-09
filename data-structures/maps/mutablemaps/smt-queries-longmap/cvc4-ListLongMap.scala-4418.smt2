; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61018 () Bool)

(assert start!61018)

(declare-fun b!684270 () Bool)

(declare-fun res!450011 () Bool)

(declare-fun e!389673 () Bool)

(assert (=> b!684270 (=> (not res!450011) (not e!389673))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684270 (= res!450011 (validKeyInArray!0 k!2843))))

(declare-fun b!684271 () Bool)

(declare-datatypes ((Unit!24077 0))(
  ( (Unit!24078) )
))
(declare-fun e!389672 () Unit!24077)

(declare-fun Unit!24079 () Unit!24077)

(assert (=> b!684271 (= e!389672 Unit!24079)))

(declare-fun b!684272 () Bool)

(declare-fun res!449998 () Bool)

(assert (=> b!684272 (=> (not res!449998) (not e!389673))))

(declare-datatypes ((List!13062 0))(
  ( (Nil!13059) (Cons!13058 (h!14103 (_ BitVec 64)) (t!19316 List!13062)) )
))
(declare-fun acc!681 () List!13062)

(declare-fun contains!3605 (List!13062 (_ BitVec 64)) Bool)

(assert (=> b!684272 (= res!449998 (not (contains!3605 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684273 () Bool)

(declare-fun res!450002 () Bool)

(assert (=> b!684273 (=> (not res!450002) (not e!389673))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39583 0))(
  ( (array!39584 (arr!18968 (Array (_ BitVec 32) (_ BitVec 64))) (size!19334 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39583)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!684273 (= res!450002 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19334 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684274 () Bool)

(declare-fun e!389671 () Bool)

(assert (=> b!684274 (= e!389671 (contains!3605 acc!681 k!2843))))

(declare-fun b!684275 () Bool)

(declare-fun res!450014 () Bool)

(assert (=> b!684275 (=> (not res!450014) (not e!389673))))

(declare-fun e!389674 () Bool)

(assert (=> b!684275 (= res!450014 e!389674)))

(declare-fun res!450001 () Bool)

(assert (=> b!684275 (=> res!450001 e!389674)))

(assert (=> b!684275 (= res!450001 e!389671)))

(declare-fun res!450003 () Bool)

(assert (=> b!684275 (=> (not res!450003) (not e!389671))))

(assert (=> b!684275 (= res!450003 (bvsgt from!3004 i!1382))))

(declare-fun b!684276 () Bool)

(declare-fun e!389677 () Bool)

(assert (=> b!684276 (= e!389677 true)))

(declare-fun lt!314290 () Bool)

(assert (=> b!684276 (= lt!314290 (contains!3605 acc!681 k!2843))))

(declare-fun b!684277 () Bool)

(declare-fun e!389675 () Unit!24077)

(declare-fun Unit!24080 () Unit!24077)

(assert (=> b!684277 (= e!389675 Unit!24080)))

(declare-fun lt!314287 () Unit!24077)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39583 (_ BitVec 64) (_ BitVec 32)) Unit!24077)

(assert (=> b!684277 (= lt!314287 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684277 false))

(declare-fun b!684278 () Bool)

(declare-fun res!450000 () Bool)

(assert (=> b!684278 (=> (not res!450000) (not e!389673))))

(assert (=> b!684278 (= res!450000 (not (contains!3605 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684279 () Bool)

(declare-fun res!450012 () Bool)

(assert (=> b!684279 (=> (not res!450012) (not e!389673))))

(declare-fun arrayContainsKey!0 (array!39583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684279 (= res!450012 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684280 () Bool)

(declare-fun e!389670 () Bool)

(assert (=> b!684280 (= e!389674 e!389670)))

(declare-fun res!450006 () Bool)

(assert (=> b!684280 (=> (not res!450006) (not e!389670))))

(assert (=> b!684280 (= res!450006 (bvsle from!3004 i!1382))))

(declare-fun b!684281 () Bool)

(declare-fun res!450008 () Bool)

(assert (=> b!684281 (=> (not res!450008) (not e!389673))))

(declare-fun noDuplicate!852 (List!13062) Bool)

(assert (=> b!684281 (= res!450008 (noDuplicate!852 acc!681))))

(declare-fun res!449999 () Bool)

(assert (=> start!61018 (=> (not res!449999) (not e!389673))))

(assert (=> start!61018 (= res!449999 (and (bvslt (size!19334 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19334 a!3626))))))

(assert (=> start!61018 e!389673))

(assert (=> start!61018 true))

(declare-fun array_inv!14742 (array!39583) Bool)

(assert (=> start!61018 (array_inv!14742 a!3626)))

(declare-fun b!684282 () Bool)

(assert (=> b!684282 (= e!389670 (not (contains!3605 acc!681 k!2843)))))

(declare-fun b!684283 () Bool)

(declare-fun res!450004 () Bool)

(assert (=> b!684283 (=> res!450004 e!389677)))

(declare-fun lt!314286 () List!13062)

(assert (=> b!684283 (= res!450004 (not (noDuplicate!852 lt!314286)))))

(declare-fun b!684284 () Bool)

(declare-fun res!450009 () Bool)

(assert (=> b!684284 (=> (not res!450009) (not e!389673))))

(assert (=> b!684284 (= res!450009 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19334 a!3626))))))

(declare-fun b!684285 () Bool)

(declare-fun Unit!24081 () Unit!24077)

(assert (=> b!684285 (= e!389675 Unit!24081)))

(declare-fun b!684286 () Bool)

(declare-fun res!450005 () Bool)

(assert (=> b!684286 (=> res!450005 e!389677)))

(declare-fun lt!314291 () Bool)

(assert (=> b!684286 (= res!450005 lt!314291)))

(declare-fun b!684287 () Bool)

(assert (=> b!684287 (= e!389673 (not e!389677))))

(declare-fun res!450013 () Bool)

(assert (=> b!684287 (=> res!450013 e!389677)))

(assert (=> b!684287 (= res!450013 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!155 (List!13062 (_ BitVec 64)) List!13062)

(assert (=> b!684287 (= (-!155 lt!314286 k!2843) acc!681)))

(declare-fun $colon$colon!354 (List!13062 (_ BitVec 64)) List!13062)

(assert (=> b!684287 (= lt!314286 ($colon$colon!354 acc!681 k!2843))))

(declare-fun lt!314292 () Unit!24077)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13062) Unit!24077)

(assert (=> b!684287 (= lt!314292 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!190 (List!13062 List!13062) Bool)

(assert (=> b!684287 (subseq!190 acc!681 acc!681)))

(declare-fun lt!314288 () Unit!24077)

(declare-fun lemmaListSubSeqRefl!0 (List!13062) Unit!24077)

(assert (=> b!684287 (= lt!314288 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39583 (_ BitVec 32) List!13062) Bool)

(assert (=> b!684287 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314289 () Unit!24077)

(assert (=> b!684287 (= lt!314289 e!389672)))

(declare-fun c!77504 () Bool)

(assert (=> b!684287 (= c!77504 (validKeyInArray!0 (select (arr!18968 a!3626) from!3004)))))

(declare-fun lt!314294 () Unit!24077)

(assert (=> b!684287 (= lt!314294 e!389675)))

(declare-fun c!77503 () Bool)

(assert (=> b!684287 (= c!77503 lt!314291)))

(assert (=> b!684287 (= lt!314291 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684287 (arrayContainsKey!0 (array!39584 (store (arr!18968 a!3626) i!1382 k!2843) (size!19334 a!3626)) k!2843 from!3004)))

(declare-fun b!684288 () Bool)

(declare-fun res!450007 () Bool)

(assert (=> b!684288 (=> (not res!450007) (not e!389673))))

(assert (=> b!684288 (= res!450007 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684289 () Bool)

(declare-fun lt!314293 () Unit!24077)

(assert (=> b!684289 (= e!389672 lt!314293)))

(declare-fun lt!314295 () Unit!24077)

(assert (=> b!684289 (= lt!314295 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684289 (subseq!190 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39583 List!13062 List!13062 (_ BitVec 32)) Unit!24077)

(assert (=> b!684289 (= lt!314293 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!354 acc!681 (select (arr!18968 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684289 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684290 () Bool)

(declare-fun res!450010 () Bool)

(assert (=> b!684290 (=> (not res!450010) (not e!389673))))

(assert (=> b!684290 (= res!450010 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13059))))

(assert (= (and start!61018 res!449999) b!684281))

(assert (= (and b!684281 res!450008) b!684278))

(assert (= (and b!684278 res!450000) b!684272))

(assert (= (and b!684272 res!449998) b!684275))

(assert (= (and b!684275 res!450003) b!684274))

(assert (= (and b!684275 (not res!450001)) b!684280))

(assert (= (and b!684280 res!450006) b!684282))

(assert (= (and b!684275 res!450014) b!684290))

(assert (= (and b!684290 res!450010) b!684288))

(assert (= (and b!684288 res!450007) b!684284))

(assert (= (and b!684284 res!450009) b!684270))

(assert (= (and b!684270 res!450011) b!684279))

(assert (= (and b!684279 res!450012) b!684273))

(assert (= (and b!684273 res!450002) b!684287))

(assert (= (and b!684287 c!77503) b!684277))

(assert (= (and b!684287 (not c!77503)) b!684285))

(assert (= (and b!684287 c!77504) b!684289))

(assert (= (and b!684287 (not c!77504)) b!684271))

(assert (= (and b!684287 (not res!450013)) b!684283))

(assert (= (and b!684283 (not res!450004)) b!684286))

(assert (= (and b!684286 (not res!450005)) b!684276))

(declare-fun m!648687 () Bool)

(assert (=> b!684276 m!648687))

(assert (=> b!684282 m!648687))

(assert (=> b!684274 m!648687))

(declare-fun m!648689 () Bool)

(assert (=> b!684278 m!648689))

(declare-fun m!648691 () Bool)

(assert (=> b!684283 m!648691))

(declare-fun m!648693 () Bool)

(assert (=> b!684270 m!648693))

(declare-fun m!648695 () Bool)

(assert (=> b!684272 m!648695))

(declare-fun m!648697 () Bool)

(assert (=> b!684290 m!648697))

(declare-fun m!648699 () Bool)

(assert (=> b!684279 m!648699))

(declare-fun m!648701 () Bool)

(assert (=> b!684277 m!648701))

(declare-fun m!648703 () Bool)

(assert (=> b!684288 m!648703))

(declare-fun m!648705 () Bool)

(assert (=> start!61018 m!648705))

(declare-fun m!648707 () Bool)

(assert (=> b!684281 m!648707))

(declare-fun m!648709 () Bool)

(assert (=> b!684287 m!648709))

(declare-fun m!648711 () Bool)

(assert (=> b!684287 m!648711))

(declare-fun m!648713 () Bool)

(assert (=> b!684287 m!648713))

(declare-fun m!648715 () Bool)

(assert (=> b!684287 m!648715))

(declare-fun m!648717 () Bool)

(assert (=> b!684287 m!648717))

(declare-fun m!648719 () Bool)

(assert (=> b!684287 m!648719))

(declare-fun m!648721 () Bool)

(assert (=> b!684287 m!648721))

(declare-fun m!648723 () Bool)

(assert (=> b!684287 m!648723))

(assert (=> b!684287 m!648711))

(declare-fun m!648725 () Bool)

(assert (=> b!684287 m!648725))

(declare-fun m!648727 () Bool)

(assert (=> b!684287 m!648727))

(declare-fun m!648729 () Bool)

(assert (=> b!684287 m!648729))

(assert (=> b!684289 m!648709))

(assert (=> b!684289 m!648711))

(declare-fun m!648731 () Bool)

(assert (=> b!684289 m!648731))

(declare-fun m!648733 () Bool)

(assert (=> b!684289 m!648733))

(assert (=> b!684289 m!648711))

(assert (=> b!684289 m!648731))

(assert (=> b!684289 m!648719))

(assert (=> b!684289 m!648729))

(push 1)

(assert (not b!684289))

(assert (not b!684282))

(assert (not b!684277))

(assert (not start!61018))

(assert (not b!684274))

(assert (not b!684287))

(assert (not b!684278))

(assert (not b!684283))

(assert (not b!684272))

(assert (not b!684270))

(assert (not b!684281))

(assert (not b!684288))

(assert (not b!684279))

