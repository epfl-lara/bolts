; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59996 () Bool)

(assert start!59996)

(declare-fun b!665610 () Bool)

(declare-fun res!433262 () Bool)

(declare-fun e!381363 () Bool)

(assert (=> b!665610 (=> (not res!433262) (not e!381363))))

(declare-datatypes ((List!12782 0))(
  ( (Nil!12779) (Cons!12778 (h!13823 (_ BitVec 64)) (t!19018 List!12782)) )
))
(declare-fun acc!681 () List!12782)

(declare-fun contains!3325 (List!12782 (_ BitVec 64)) Bool)

(assert (=> b!665610 (= res!433262 (not (contains!3325 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665611 () Bool)

(declare-fun e!381364 () Bool)

(declare-fun e!381365 () Bool)

(assert (=> b!665611 (= e!381364 e!381365)))

(declare-fun res!433252 () Bool)

(assert (=> b!665611 (=> (not res!433252) (not e!381365))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665611 (= res!433252 (bvsle from!3004 i!1382))))

(declare-fun b!665612 () Bool)

(declare-fun e!381369 () Bool)

(assert (=> b!665612 (= e!381363 (not e!381369))))

(declare-fun res!433270 () Bool)

(assert (=> b!665612 (=> res!433270 e!381369)))

(assert (=> b!665612 (= res!433270 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!310120 () List!12782)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun -!61 (List!12782 (_ BitVec 64)) List!12782)

(assert (=> b!665612 (= (-!61 lt!310120 k0!2843) acc!681)))

(declare-fun $colon$colon!194 (List!12782 (_ BitVec 64)) List!12782)

(assert (=> b!665612 (= lt!310120 ($colon$colon!194 acc!681 k0!2843))))

(declare-datatypes ((Unit!23235 0))(
  ( (Unit!23236) )
))
(declare-fun lt!310118 () Unit!23235)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12782) Unit!23235)

(assert (=> b!665612 (= lt!310118 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!63 (List!12782 List!12782) Bool)

(assert (=> b!665612 (subseq!63 acc!681 acc!681)))

(declare-fun lt!310121 () Unit!23235)

(declare-fun lemmaListSubSeqRefl!0 (List!12782) Unit!23235)

(assert (=> b!665612 (= lt!310121 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!38999 0))(
  ( (array!39000 (arr!18688 (Array (_ BitVec 32) (_ BitVec 64))) (size!19052 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38999)

(declare-fun arrayNoDuplicates!0 (array!38999 (_ BitVec 32) List!12782) Bool)

(assert (=> b!665612 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310119 () Unit!23235)

(declare-fun e!381366 () Unit!23235)

(assert (=> b!665612 (= lt!310119 e!381366)))

(declare-fun c!76547 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665612 (= c!76547 (validKeyInArray!0 (select (arr!18688 a!3626) from!3004)))))

(declare-fun lt!310113 () Unit!23235)

(declare-fun e!381368 () Unit!23235)

(assert (=> b!665612 (= lt!310113 e!381368)))

(declare-fun c!76546 () Bool)

(declare-fun lt!310116 () Bool)

(assert (=> b!665612 (= c!76546 lt!310116)))

(declare-fun arrayContainsKey!0 (array!38999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665612 (= lt!310116 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665612 (arrayContainsKey!0 (array!39000 (store (arr!18688 a!3626) i!1382 k0!2843) (size!19052 a!3626)) k0!2843 from!3004)))

(declare-fun b!665613 () Bool)

(declare-fun res!433256 () Bool)

(assert (=> b!665613 (=> res!433256 e!381369)))

(assert (=> b!665613 (= res!433256 (contains!3325 acc!681 k0!2843))))

(declare-fun b!665614 () Bool)

(declare-fun res!433267 () Bool)

(assert (=> b!665614 (=> (not res!433267) (not e!381363))))

(assert (=> b!665614 (= res!433267 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665615 () Bool)

(declare-fun res!433266 () Bool)

(assert (=> b!665615 (=> (not res!433266) (not e!381363))))

(assert (=> b!665615 (= res!433266 e!381364)))

(declare-fun res!433260 () Bool)

(assert (=> b!665615 (=> res!433260 e!381364)))

(declare-fun e!381370 () Bool)

(assert (=> b!665615 (= res!433260 e!381370)))

(declare-fun res!433268 () Bool)

(assert (=> b!665615 (=> (not res!433268) (not e!381370))))

(assert (=> b!665615 (= res!433268 (bvsgt from!3004 i!1382))))

(declare-fun b!665616 () Bool)

(declare-fun res!433259 () Bool)

(assert (=> b!665616 (=> res!433259 e!381369)))

(assert (=> b!665616 (= res!433259 lt!310116)))

(declare-fun b!665617 () Bool)

(declare-fun res!433253 () Bool)

(assert (=> b!665617 (=> res!433253 e!381369)))

(declare-fun noDuplicate!572 (List!12782) Bool)

(assert (=> b!665617 (= res!433253 (not (noDuplicate!572 lt!310120)))))

(declare-fun b!665618 () Bool)

(declare-fun res!433255 () Bool)

(assert (=> b!665618 (=> (not res!433255) (not e!381363))))

(assert (=> b!665618 (= res!433255 (noDuplicate!572 acc!681))))

(declare-fun b!665619 () Bool)

(declare-fun res!433257 () Bool)

(assert (=> b!665619 (=> (not res!433257) (not e!381363))))

(assert (=> b!665619 (= res!433257 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665609 () Bool)

(assert (=> b!665609 (= e!381365 (not (contains!3325 acc!681 k0!2843)))))

(declare-fun res!433254 () Bool)

(assert (=> start!59996 (=> (not res!433254) (not e!381363))))

(assert (=> start!59996 (= res!433254 (and (bvslt (size!19052 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19052 a!3626))))))

(assert (=> start!59996 e!381363))

(assert (=> start!59996 true))

(declare-fun array_inv!14462 (array!38999) Bool)

(assert (=> start!59996 (array_inv!14462 a!3626)))

(declare-fun b!665620 () Bool)

(declare-fun Unit!23237 () Unit!23235)

(assert (=> b!665620 (= e!381366 Unit!23237)))

(declare-fun b!665621 () Bool)

(declare-fun Unit!23238 () Unit!23235)

(assert (=> b!665621 (= e!381368 Unit!23238)))

(declare-fun b!665622 () Bool)

(declare-fun res!433264 () Bool)

(assert (=> b!665622 (=> res!433264 e!381369)))

(assert (=> b!665622 (= res!433264 (not (contains!3325 lt!310120 k0!2843)))))

(declare-fun b!665623 () Bool)

(declare-fun res!433251 () Bool)

(assert (=> b!665623 (=> (not res!433251) (not e!381363))))

(assert (=> b!665623 (= res!433251 (validKeyInArray!0 k0!2843))))

(declare-fun b!665624 () Bool)

(declare-fun res!433269 () Bool)

(assert (=> b!665624 (=> (not res!433269) (not e!381363))))

(assert (=> b!665624 (= res!433269 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12779))))

(declare-fun b!665625 () Bool)

(declare-fun Unit!23239 () Unit!23235)

(assert (=> b!665625 (= e!381368 Unit!23239)))

(declare-fun lt!310114 () Unit!23235)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38999 (_ BitVec 64) (_ BitVec 32)) Unit!23235)

(assert (=> b!665625 (= lt!310114 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!665625 false))

(declare-fun b!665626 () Bool)

(declare-fun res!433265 () Bool)

(assert (=> b!665626 (=> (not res!433265) (not e!381363))))

(assert (=> b!665626 (= res!433265 (not (contains!3325 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665627 () Bool)

(declare-fun res!433261 () Bool)

(assert (=> b!665627 (=> res!433261 e!381369)))

(assert (=> b!665627 (= res!433261 (not (subseq!63 acc!681 lt!310120)))))

(declare-fun b!665628 () Bool)

(declare-fun lt!310115 () Unit!23235)

(assert (=> b!665628 (= e!381366 lt!310115)))

(declare-fun lt!310117 () Unit!23235)

(assert (=> b!665628 (= lt!310117 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665628 (subseq!63 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38999 List!12782 List!12782 (_ BitVec 32)) Unit!23235)

(assert (=> b!665628 (= lt!310115 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!194 acc!681 (select (arr!18688 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665628 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665629 () Bool)

(assert (=> b!665629 (= e!381370 (contains!3325 acc!681 k0!2843))))

(declare-fun b!665630 () Bool)

(assert (=> b!665630 (= e!381369 true)))

(declare-fun lt!310122 () Bool)

(assert (=> b!665630 (= lt!310122 (contains!3325 lt!310120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665631 () Bool)

(declare-fun res!433258 () Bool)

(assert (=> b!665631 (=> (not res!433258) (not e!381363))))

(assert (=> b!665631 (= res!433258 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19052 a!3626))))))

(declare-fun b!665632 () Bool)

(declare-fun res!433271 () Bool)

(assert (=> b!665632 (=> (not res!433271) (not e!381363))))

(assert (=> b!665632 (= res!433271 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19052 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665633 () Bool)

(declare-fun res!433263 () Bool)

(assert (=> b!665633 (=> res!433263 e!381369)))

(assert (=> b!665633 (= res!433263 (contains!3325 lt!310120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!59996 res!433254) b!665618))

(assert (= (and b!665618 res!433255) b!665626))

(assert (= (and b!665626 res!433265) b!665610))

(assert (= (and b!665610 res!433262) b!665615))

(assert (= (and b!665615 res!433268) b!665629))

(assert (= (and b!665615 (not res!433260)) b!665611))

(assert (= (and b!665611 res!433252) b!665609))

(assert (= (and b!665615 res!433266) b!665624))

(assert (= (and b!665624 res!433269) b!665619))

(assert (= (and b!665619 res!433257) b!665631))

(assert (= (and b!665631 res!433258) b!665623))

(assert (= (and b!665623 res!433251) b!665614))

(assert (= (and b!665614 res!433267) b!665632))

(assert (= (and b!665632 res!433271) b!665612))

(assert (= (and b!665612 c!76546) b!665625))

(assert (= (and b!665612 (not c!76546)) b!665621))

(assert (= (and b!665612 c!76547) b!665628))

(assert (= (and b!665612 (not c!76547)) b!665620))

(assert (= (and b!665612 (not res!433270)) b!665617))

(assert (= (and b!665617 (not res!433253)) b!665616))

(assert (= (and b!665616 (not res!433259)) b!665613))

(assert (= (and b!665613 (not res!433256)) b!665627))

(assert (= (and b!665627 (not res!433261)) b!665622))

(assert (= (and b!665622 (not res!433264)) b!665633))

(assert (= (and b!665633 (not res!433263)) b!665630))

(declare-fun m!636635 () Bool)

(assert (=> b!665623 m!636635))

(declare-fun m!636637 () Bool)

(assert (=> b!665614 m!636637))

(declare-fun m!636639 () Bool)

(assert (=> b!665618 m!636639))

(declare-fun m!636641 () Bool)

(assert (=> b!665610 m!636641))

(declare-fun m!636643 () Bool)

(assert (=> b!665613 m!636643))

(declare-fun m!636645 () Bool)

(assert (=> b!665622 m!636645))

(declare-fun m!636647 () Bool)

(assert (=> b!665619 m!636647))

(declare-fun m!636649 () Bool)

(assert (=> b!665630 m!636649))

(declare-fun m!636651 () Bool)

(assert (=> b!665625 m!636651))

(declare-fun m!636653 () Bool)

(assert (=> b!665617 m!636653))

(assert (=> b!665629 m!636643))

(declare-fun m!636655 () Bool)

(assert (=> b!665624 m!636655))

(declare-fun m!636657 () Bool)

(assert (=> b!665628 m!636657))

(declare-fun m!636659 () Bool)

(assert (=> b!665628 m!636659))

(declare-fun m!636661 () Bool)

(assert (=> b!665628 m!636661))

(declare-fun m!636663 () Bool)

(assert (=> b!665628 m!636663))

(assert (=> b!665628 m!636659))

(assert (=> b!665628 m!636661))

(declare-fun m!636665 () Bool)

(assert (=> b!665628 m!636665))

(declare-fun m!636667 () Bool)

(assert (=> b!665628 m!636667))

(assert (=> b!665612 m!636657))

(assert (=> b!665612 m!636659))

(declare-fun m!636669 () Bool)

(assert (=> b!665612 m!636669))

(declare-fun m!636671 () Bool)

(assert (=> b!665612 m!636671))

(declare-fun m!636673 () Bool)

(assert (=> b!665612 m!636673))

(assert (=> b!665612 m!636665))

(declare-fun m!636675 () Bool)

(assert (=> b!665612 m!636675))

(declare-fun m!636677 () Bool)

(assert (=> b!665612 m!636677))

(assert (=> b!665612 m!636659))

(declare-fun m!636679 () Bool)

(assert (=> b!665612 m!636679))

(declare-fun m!636681 () Bool)

(assert (=> b!665612 m!636681))

(assert (=> b!665612 m!636667))

(declare-fun m!636683 () Bool)

(assert (=> b!665633 m!636683))

(declare-fun m!636685 () Bool)

(assert (=> b!665626 m!636685))

(declare-fun m!636687 () Bool)

(assert (=> b!665627 m!636687))

(assert (=> b!665609 m!636643))

(declare-fun m!636689 () Bool)

(assert (=> start!59996 m!636689))

(check-sat (not b!665623) (not b!665617) (not b!665625) (not b!665610) (not b!665633) (not start!59996) (not b!665627) (not b!665609) (not b!665624) (not b!665630) (not b!665628) (not b!665618) (not b!665619) (not b!665614) (not b!665626) (not b!665629) (not b!665613) (not b!665612) (not b!665622))
(check-sat)
