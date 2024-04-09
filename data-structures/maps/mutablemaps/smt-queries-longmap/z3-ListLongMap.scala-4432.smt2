; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61586 () Bool)

(assert start!61586)

(declare-fun b!688574 () Bool)

(declare-fun e!392153 () Bool)

(declare-fun e!392154 () Bool)

(assert (=> b!688574 (= e!392153 e!392154)))

(declare-fun res!453409 () Bool)

(assert (=> b!688574 (=> (not res!453409) (not e!392154))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688574 (= res!453409 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688575 () Bool)

(declare-fun res!453408 () Bool)

(declare-fun e!392145 () Bool)

(assert (=> b!688575 (=> (not res!453408) (not e!392145))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688575 (= res!453408 (validKeyInArray!0 k0!2843))))

(declare-fun b!688576 () Bool)

(declare-fun e!392150 () Bool)

(assert (=> b!688576 (= e!392150 true)))

(declare-fun lt!315849 () Bool)

(assert (=> b!688576 (= lt!315849 e!392153)))

(declare-fun res!453410 () Bool)

(assert (=> b!688576 (=> res!453410 e!392153)))

(declare-fun e!392148 () Bool)

(assert (=> b!688576 (= res!453410 e!392148)))

(declare-fun res!453412 () Bool)

(assert (=> b!688576 (=> (not res!453412) (not e!392148))))

(assert (=> b!688576 (= res!453412 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!453401 () Bool)

(assert (=> start!61586 (=> (not res!453401) (not e!392145))))

(declare-datatypes ((array!39683 0))(
  ( (array!39684 (arr!19009 (Array (_ BitVec 32) (_ BitVec 64))) (size!19390 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39683)

(assert (=> start!61586 (= res!453401 (and (bvslt (size!19390 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19390 a!3626))))))

(assert (=> start!61586 e!392145))

(assert (=> start!61586 true))

(declare-fun array_inv!14783 (array!39683) Bool)

(assert (=> start!61586 (array_inv!14783 a!3626)))

(declare-fun b!688577 () Bool)

(declare-fun res!453406 () Bool)

(assert (=> b!688577 (=> (not res!453406) (not e!392145))))

(declare-fun arrayContainsKey!0 (array!39683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688577 (= res!453406 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688578 () Bool)

(declare-datatypes ((Unit!24282 0))(
  ( (Unit!24283) )
))
(declare-fun e!392147 () Unit!24282)

(declare-fun Unit!24284 () Unit!24282)

(assert (=> b!688578 (= e!392147 Unit!24284)))

(declare-fun lt!315850 () Unit!24282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39683 (_ BitVec 64) (_ BitVec 32)) Unit!24282)

(assert (=> b!688578 (= lt!315850 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!688578 false))

(declare-fun b!688579 () Bool)

(declare-datatypes ((List!13103 0))(
  ( (Nil!13100) (Cons!13099 (h!14144 (_ BitVec 64)) (t!19375 List!13103)) )
))
(declare-fun lt!315853 () List!13103)

(declare-fun contains!3646 (List!13103 (_ BitVec 64)) Bool)

(assert (=> b!688579 (= e!392148 (contains!3646 lt!315853 k0!2843))))

(declare-fun b!688580 () Bool)

(declare-fun res!453399 () Bool)

(assert (=> b!688580 (=> (not res!453399) (not e!392145))))

(declare-fun e!392155 () Bool)

(assert (=> b!688580 (= res!453399 e!392155)))

(declare-fun res!453398 () Bool)

(assert (=> b!688580 (=> res!453398 e!392155)))

(declare-fun e!392152 () Bool)

(assert (=> b!688580 (= res!453398 e!392152)))

(declare-fun res!453405 () Bool)

(assert (=> b!688580 (=> (not res!453405) (not e!392152))))

(assert (=> b!688580 (= res!453405 (bvsgt from!3004 i!1382))))

(declare-fun b!688581 () Bool)

(declare-fun res!453411 () Bool)

(assert (=> b!688581 (=> (not res!453411) (not e!392145))))

(declare-fun arrayNoDuplicates!0 (array!39683 (_ BitVec 32) List!13103) Bool)

(assert (=> b!688581 (= res!453411 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13100))))

(declare-fun b!688582 () Bool)

(declare-fun res!453397 () Bool)

(assert (=> b!688582 (=> res!453397 e!392150)))

(assert (=> b!688582 (= res!453397 (contains!3646 lt!315853 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688583 () Bool)

(declare-fun e!392151 () Bool)

(declare-fun acc!681 () List!13103)

(assert (=> b!688583 (= e!392151 (not (contains!3646 acc!681 k0!2843)))))

(declare-fun b!688584 () Bool)

(declare-fun res!453404 () Bool)

(assert (=> b!688584 (=> (not res!453404) (not e!392145))))

(assert (=> b!688584 (= res!453404 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19390 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688585 () Bool)

(declare-fun res!453402 () Bool)

(assert (=> b!688585 (=> (not res!453402) (not e!392145))))

(assert (=> b!688585 (= res!453402 (not (contains!3646 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688586 () Bool)

(assert (=> b!688586 (= e!392154 (not (contains!3646 lt!315853 k0!2843)))))

(declare-fun b!688587 () Bool)

(declare-fun res!453400 () Bool)

(assert (=> b!688587 (=> (not res!453400) (not e!392145))))

(assert (=> b!688587 (= res!453400 (not (contains!3646 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688588 () Bool)

(declare-fun e!392146 () Unit!24282)

(declare-fun Unit!24285 () Unit!24282)

(assert (=> b!688588 (= e!392146 Unit!24285)))

(declare-fun b!688589 () Bool)

(assert (=> b!688589 (= e!392145 (not e!392150))))

(declare-fun res!453403 () Bool)

(assert (=> b!688589 (=> res!453403 e!392150)))

(assert (=> b!688589 (= res!453403 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688589 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315853)))

(declare-fun lt!315851 () Unit!24282)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39683 (_ BitVec 64) (_ BitVec 32) List!13103 List!13103) Unit!24282)

(assert (=> b!688589 (= lt!315851 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315853))))

(declare-fun -!196 (List!13103 (_ BitVec 64)) List!13103)

(assert (=> b!688589 (= (-!196 lt!315853 k0!2843) acc!681)))

(declare-fun $colon$colon!395 (List!13103 (_ BitVec 64)) List!13103)

(assert (=> b!688589 (= lt!315853 ($colon$colon!395 acc!681 k0!2843))))

(declare-fun lt!315856 () Unit!24282)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13103) Unit!24282)

(assert (=> b!688589 (= lt!315856 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!231 (List!13103 List!13103) Bool)

(assert (=> b!688589 (subseq!231 acc!681 acc!681)))

(declare-fun lt!315857 () Unit!24282)

(declare-fun lemmaListSubSeqRefl!0 (List!13103) Unit!24282)

(assert (=> b!688589 (= lt!315857 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688589 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315858 () Unit!24282)

(assert (=> b!688589 (= lt!315858 e!392146)))

(declare-fun c!77957 () Bool)

(assert (=> b!688589 (= c!77957 (validKeyInArray!0 (select (arr!19009 a!3626) from!3004)))))

(declare-fun lt!315855 () Unit!24282)

(assert (=> b!688589 (= lt!315855 e!392147)))

(declare-fun c!77956 () Bool)

(assert (=> b!688589 (= c!77956 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688589 (arrayContainsKey!0 (array!39684 (store (arr!19009 a!3626) i!1382 k0!2843) (size!19390 a!3626)) k0!2843 from!3004)))

(declare-fun b!688590 () Bool)

(declare-fun res!453407 () Bool)

(assert (=> b!688590 (=> res!453407 e!392150)))

(declare-fun noDuplicate!893 (List!13103) Bool)

(assert (=> b!688590 (= res!453407 (not (noDuplicate!893 lt!315853)))))

(declare-fun b!688591 () Bool)

(assert (=> b!688591 (= e!392155 e!392151)))

(declare-fun res!453414 () Bool)

(assert (=> b!688591 (=> (not res!453414) (not e!392151))))

(assert (=> b!688591 (= res!453414 (bvsle from!3004 i!1382))))

(declare-fun b!688592 () Bool)

(declare-fun lt!315852 () Unit!24282)

(assert (=> b!688592 (= e!392146 lt!315852)))

(declare-fun lt!315854 () Unit!24282)

(assert (=> b!688592 (= lt!315854 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688592 (subseq!231 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39683 List!13103 List!13103 (_ BitVec 32)) Unit!24282)

(assert (=> b!688592 (= lt!315852 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!395 acc!681 (select (arr!19009 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688592 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688593 () Bool)

(declare-fun res!453415 () Bool)

(assert (=> b!688593 (=> (not res!453415) (not e!392145))))

(assert (=> b!688593 (= res!453415 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19390 a!3626))))))

(declare-fun b!688594 () Bool)

(declare-fun res!453416 () Bool)

(assert (=> b!688594 (=> (not res!453416) (not e!392145))))

(assert (=> b!688594 (= res!453416 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688595 () Bool)

(declare-fun res!453396 () Bool)

(assert (=> b!688595 (=> res!453396 e!392150)))

(assert (=> b!688595 (= res!453396 (contains!3646 lt!315853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688596 () Bool)

(declare-fun res!453413 () Bool)

(assert (=> b!688596 (=> (not res!453413) (not e!392145))))

(assert (=> b!688596 (= res!453413 (noDuplicate!893 acc!681))))

(declare-fun b!688597 () Bool)

(assert (=> b!688597 (= e!392152 (contains!3646 acc!681 k0!2843))))

(declare-fun b!688598 () Bool)

(declare-fun Unit!24286 () Unit!24282)

(assert (=> b!688598 (= e!392147 Unit!24286)))

(assert (= (and start!61586 res!453401) b!688596))

(assert (= (and b!688596 res!453413) b!688587))

(assert (= (and b!688587 res!453400) b!688585))

(assert (= (and b!688585 res!453402) b!688580))

(assert (= (and b!688580 res!453405) b!688597))

(assert (= (and b!688580 (not res!453398)) b!688591))

(assert (= (and b!688591 res!453414) b!688583))

(assert (= (and b!688580 res!453399) b!688581))

(assert (= (and b!688581 res!453411) b!688594))

(assert (= (and b!688594 res!453416) b!688593))

(assert (= (and b!688593 res!453415) b!688575))

(assert (= (and b!688575 res!453408) b!688577))

(assert (= (and b!688577 res!453406) b!688584))

(assert (= (and b!688584 res!453404) b!688589))

(assert (= (and b!688589 c!77956) b!688578))

(assert (= (and b!688589 (not c!77956)) b!688598))

(assert (= (and b!688589 c!77957) b!688592))

(assert (= (and b!688589 (not c!77957)) b!688588))

(assert (= (and b!688589 (not res!453403)) b!688590))

(assert (= (and b!688590 (not res!453407)) b!688595))

(assert (= (and b!688595 (not res!453396)) b!688582))

(assert (= (and b!688582 (not res!453397)) b!688576))

(assert (= (and b!688576 res!453412) b!688579))

(assert (= (and b!688576 (not res!453410)) b!688574))

(assert (= (and b!688574 res!453409) b!688586))

(declare-fun m!652459 () Bool)

(assert (=> b!688578 m!652459))

(declare-fun m!652461 () Bool)

(assert (=> b!688586 m!652461))

(declare-fun m!652463 () Bool)

(assert (=> b!688575 m!652463))

(declare-fun m!652465 () Bool)

(assert (=> b!688585 m!652465))

(declare-fun m!652467 () Bool)

(assert (=> b!688594 m!652467))

(declare-fun m!652469 () Bool)

(assert (=> b!688577 m!652469))

(declare-fun m!652471 () Bool)

(assert (=> b!688581 m!652471))

(declare-fun m!652473 () Bool)

(assert (=> b!688595 m!652473))

(declare-fun m!652475 () Bool)

(assert (=> start!61586 m!652475))

(declare-fun m!652477 () Bool)

(assert (=> b!688582 m!652477))

(declare-fun m!652479 () Bool)

(assert (=> b!688587 m!652479))

(declare-fun m!652481 () Bool)

(assert (=> b!688589 m!652481))

(declare-fun m!652483 () Bool)

(assert (=> b!688589 m!652483))

(declare-fun m!652485 () Bool)

(assert (=> b!688589 m!652485))

(declare-fun m!652487 () Bool)

(assert (=> b!688589 m!652487))

(declare-fun m!652489 () Bool)

(assert (=> b!688589 m!652489))

(declare-fun m!652491 () Bool)

(assert (=> b!688589 m!652491))

(assert (=> b!688589 m!652481))

(declare-fun m!652493 () Bool)

(assert (=> b!688589 m!652493))

(declare-fun m!652495 () Bool)

(assert (=> b!688589 m!652495))

(declare-fun m!652497 () Bool)

(assert (=> b!688589 m!652497))

(declare-fun m!652499 () Bool)

(assert (=> b!688589 m!652499))

(declare-fun m!652501 () Bool)

(assert (=> b!688589 m!652501))

(declare-fun m!652503 () Bool)

(assert (=> b!688589 m!652503))

(declare-fun m!652505 () Bool)

(assert (=> b!688589 m!652505))

(declare-fun m!652507 () Bool)

(assert (=> b!688596 m!652507))

(declare-fun m!652509 () Bool)

(assert (=> b!688583 m!652509))

(assert (=> b!688597 m!652509))

(declare-fun m!652511 () Bool)

(assert (=> b!688590 m!652511))

(assert (=> b!688579 m!652461))

(assert (=> b!688592 m!652495))

(assert (=> b!688592 m!652481))

(declare-fun m!652513 () Bool)

(assert (=> b!688592 m!652513))

(declare-fun m!652515 () Bool)

(assert (=> b!688592 m!652515))

(assert (=> b!688592 m!652481))

(assert (=> b!688592 m!652513))

(assert (=> b!688592 m!652489))

(assert (=> b!688592 m!652505))

(check-sat (not b!688597) (not b!688577) (not b!688587) (not start!61586) (not b!688590) (not b!688585) (not b!688595) (not b!688594) (not b!688582) (not b!688583) (not b!688592) (not b!688589) (not b!688586) (not b!688578) (not b!688596) (not b!688579) (not b!688575) (not b!688581))
