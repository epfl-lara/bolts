; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60998 () Bool)

(assert start!60998)

(declare-fun b!683644 () Bool)

(declare-fun e!389437 () Bool)

(declare-fun e!389434 () Bool)

(assert (=> b!683644 (= e!389437 (not e!389434))))

(declare-fun res!449503 () Bool)

(assert (=> b!683644 (=> res!449503 e!389434)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!683644 (= res!449503 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13052 0))(
  ( (Nil!13049) (Cons!13048 (h!14093 (_ BitVec 64)) (t!19306 List!13052)) )
))
(declare-fun lt!313999 () List!13052)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13052)

(declare-fun -!145 (List!13052 (_ BitVec 64)) List!13052)

(assert (=> b!683644 (= (-!145 lt!313999 k0!2843) acc!681)))

(declare-fun $colon$colon!344 (List!13052 (_ BitVec 64)) List!13052)

(assert (=> b!683644 (= lt!313999 ($colon$colon!344 acc!681 k0!2843))))

(declare-datatypes ((Unit!24027 0))(
  ( (Unit!24028) )
))
(declare-fun lt!314001 () Unit!24027)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13052) Unit!24027)

(assert (=> b!683644 (= lt!314001 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!180 (List!13052 List!13052) Bool)

(assert (=> b!683644 (subseq!180 acc!681 acc!681)))

(declare-fun lt!314003 () Unit!24027)

(declare-fun lemmaListSubSeqRefl!0 (List!13052) Unit!24027)

(assert (=> b!683644 (= lt!314003 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39563 0))(
  ( (array!39564 (arr!18958 (Array (_ BitVec 32) (_ BitVec 64))) (size!19324 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39563)

(declare-fun arrayNoDuplicates!0 (array!39563 (_ BitVec 32) List!13052) Bool)

(assert (=> b!683644 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314007 () Unit!24027)

(declare-fun e!389436 () Unit!24027)

(assert (=> b!683644 (= lt!314007 e!389436)))

(declare-fun c!77444 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683644 (= c!77444 (validKeyInArray!0 (select (arr!18958 a!3626) from!3004)))))

(declare-fun lt!314000 () Unit!24027)

(declare-fun e!389431 () Unit!24027)

(assert (=> b!683644 (= lt!314000 e!389431)))

(declare-fun c!77443 () Bool)

(declare-fun lt!314005 () Bool)

(assert (=> b!683644 (= c!77443 lt!314005)))

(declare-fun arrayContainsKey!0 (array!39563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683644 (= lt!314005 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683644 (arrayContainsKey!0 (array!39564 (store (arr!18958 a!3626) i!1382 k0!2843) (size!19324 a!3626)) k0!2843 from!3004)))

(declare-fun b!683645 () Bool)

(assert (=> b!683645 (= e!389434 (not lt!314005))))

(declare-fun b!683646 () Bool)

(declare-fun res!449498 () Bool)

(assert (=> b!683646 (=> (not res!449498) (not e!389437))))

(assert (=> b!683646 (= res!449498 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683647 () Bool)

(declare-fun e!389435 () Bool)

(declare-fun contains!3595 (List!13052 (_ BitVec 64)) Bool)

(assert (=> b!683647 (= e!389435 (contains!3595 acc!681 k0!2843))))

(declare-fun b!683648 () Bool)

(declare-fun res!449497 () Bool)

(assert (=> b!683648 (=> res!449497 e!389434)))

(declare-fun noDuplicate!842 (List!13052) Bool)

(assert (=> b!683648 (= res!449497 (not (noDuplicate!842 lt!313999)))))

(declare-fun b!683649 () Bool)

(declare-fun res!449493 () Bool)

(assert (=> b!683649 (=> (not res!449493) (not e!389437))))

(assert (=> b!683649 (= res!449493 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19324 a!3626))))))

(declare-fun b!683650 () Bool)

(declare-fun Unit!24029 () Unit!24027)

(assert (=> b!683650 (= e!389431 Unit!24029)))

(declare-fun b!683651 () Bool)

(declare-fun res!449494 () Bool)

(assert (=> b!683651 (=> (not res!449494) (not e!389437))))

(assert (=> b!683651 (= res!449494 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19324 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!449506 () Bool)

(assert (=> start!60998 (=> (not res!449506) (not e!389437))))

(assert (=> start!60998 (= res!449506 (and (bvslt (size!19324 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19324 a!3626))))))

(assert (=> start!60998 e!389437))

(assert (=> start!60998 true))

(declare-fun array_inv!14732 (array!39563) Bool)

(assert (=> start!60998 (array_inv!14732 a!3626)))

(declare-fun b!683652 () Bool)

(declare-fun res!449505 () Bool)

(assert (=> b!683652 (=> (not res!449505) (not e!389437))))

(assert (=> b!683652 (= res!449505 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13049))))

(declare-fun b!683653 () Bool)

(declare-fun res!449501 () Bool)

(assert (=> b!683653 (=> (not res!449501) (not e!389437))))

(assert (=> b!683653 (= res!449501 (not (contains!3595 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683654 () Bool)

(declare-fun Unit!24030 () Unit!24027)

(assert (=> b!683654 (= e!389436 Unit!24030)))

(declare-fun b!683655 () Bool)

(declare-fun Unit!24031 () Unit!24027)

(assert (=> b!683655 (= e!389431 Unit!24031)))

(declare-fun lt!314006 () Unit!24027)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39563 (_ BitVec 64) (_ BitVec 32)) Unit!24027)

(assert (=> b!683655 (= lt!314006 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!683655 false))

(declare-fun b!683656 () Bool)

(declare-fun res!449504 () Bool)

(assert (=> b!683656 (=> (not res!449504) (not e!389437))))

(declare-fun e!389432 () Bool)

(assert (=> b!683656 (= res!449504 e!389432)))

(declare-fun res!449499 () Bool)

(assert (=> b!683656 (=> res!449499 e!389432)))

(assert (=> b!683656 (= res!449499 e!389435)))

(declare-fun res!449492 () Bool)

(assert (=> b!683656 (=> (not res!449492) (not e!389435))))

(assert (=> b!683656 (= res!449492 (bvsgt from!3004 i!1382))))

(declare-fun b!683657 () Bool)

(declare-fun lt!314002 () Unit!24027)

(assert (=> b!683657 (= e!389436 lt!314002)))

(declare-fun lt!314004 () Unit!24027)

(assert (=> b!683657 (= lt!314004 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683657 (subseq!180 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39563 List!13052 List!13052 (_ BitVec 32)) Unit!24027)

(assert (=> b!683657 (= lt!314002 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!344 acc!681 (select (arr!18958 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683657 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683658 () Bool)

(declare-fun res!449496 () Bool)

(assert (=> b!683658 (=> (not res!449496) (not e!389437))))

(assert (=> b!683658 (= res!449496 (validKeyInArray!0 k0!2843))))

(declare-fun b!683659 () Bool)

(declare-fun res!449507 () Bool)

(assert (=> b!683659 (=> (not res!449507) (not e!389437))))

(assert (=> b!683659 (= res!449507 (noDuplicate!842 acc!681))))

(declare-fun b!683660 () Bool)

(declare-fun e!389430 () Bool)

(assert (=> b!683660 (= e!389430 (not (contains!3595 acc!681 k0!2843)))))

(declare-fun b!683661 () Bool)

(declare-fun res!449502 () Bool)

(assert (=> b!683661 (=> (not res!449502) (not e!389437))))

(assert (=> b!683661 (= res!449502 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683662 () Bool)

(declare-fun res!449500 () Bool)

(assert (=> b!683662 (=> (not res!449500) (not e!389437))))

(assert (=> b!683662 (= res!449500 (not (contains!3595 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683663 () Bool)

(assert (=> b!683663 (= e!389432 e!389430)))

(declare-fun res!449495 () Bool)

(assert (=> b!683663 (=> (not res!449495) (not e!389430))))

(assert (=> b!683663 (= res!449495 (bvsle from!3004 i!1382))))

(assert (= (and start!60998 res!449506) b!683659))

(assert (= (and b!683659 res!449507) b!683653))

(assert (= (and b!683653 res!449501) b!683662))

(assert (= (and b!683662 res!449500) b!683656))

(assert (= (and b!683656 res!449492) b!683647))

(assert (= (and b!683656 (not res!449499)) b!683663))

(assert (= (and b!683663 res!449495) b!683660))

(assert (= (and b!683656 res!449504) b!683652))

(assert (= (and b!683652 res!449505) b!683661))

(assert (= (and b!683661 res!449502) b!683649))

(assert (= (and b!683649 res!449493) b!683658))

(assert (= (and b!683658 res!449496) b!683646))

(assert (= (and b!683646 res!449498) b!683651))

(assert (= (and b!683651 res!449494) b!683644))

(assert (= (and b!683644 c!77443) b!683655))

(assert (= (and b!683644 (not c!77443)) b!683650))

(assert (= (and b!683644 c!77444) b!683657))

(assert (= (and b!683644 (not c!77444)) b!683654))

(assert (= (and b!683644 (not res!449503)) b!683648))

(assert (= (and b!683648 (not res!449497)) b!683645))

(declare-fun m!648207 () Bool)

(assert (=> b!683662 m!648207))

(declare-fun m!648209 () Bool)

(assert (=> b!683658 m!648209))

(declare-fun m!648211 () Bool)

(assert (=> b!683660 m!648211))

(declare-fun m!648213 () Bool)

(assert (=> b!683653 m!648213))

(assert (=> b!683647 m!648211))

(declare-fun m!648215 () Bool)

(assert (=> start!60998 m!648215))

(declare-fun m!648217 () Bool)

(assert (=> b!683644 m!648217))

(declare-fun m!648219 () Bool)

(assert (=> b!683644 m!648219))

(declare-fun m!648221 () Bool)

(assert (=> b!683644 m!648221))

(declare-fun m!648223 () Bool)

(assert (=> b!683644 m!648223))

(declare-fun m!648225 () Bool)

(assert (=> b!683644 m!648225))

(declare-fun m!648227 () Bool)

(assert (=> b!683644 m!648227))

(declare-fun m!648229 () Bool)

(assert (=> b!683644 m!648229))

(declare-fun m!648231 () Bool)

(assert (=> b!683644 m!648231))

(assert (=> b!683644 m!648221))

(declare-fun m!648233 () Bool)

(assert (=> b!683644 m!648233))

(declare-fun m!648235 () Bool)

(assert (=> b!683644 m!648235))

(declare-fun m!648237 () Bool)

(assert (=> b!683644 m!648237))

(declare-fun m!648239 () Bool)

(assert (=> b!683646 m!648239))

(declare-fun m!648241 () Bool)

(assert (=> b!683652 m!648241))

(declare-fun m!648243 () Bool)

(assert (=> b!683655 m!648243))

(assert (=> b!683657 m!648219))

(assert (=> b!683657 m!648221))

(declare-fun m!648245 () Bool)

(assert (=> b!683657 m!648245))

(declare-fun m!648247 () Bool)

(assert (=> b!683657 m!648247))

(assert (=> b!683657 m!648221))

(assert (=> b!683657 m!648245))

(assert (=> b!683657 m!648227))

(assert (=> b!683657 m!648237))

(declare-fun m!648249 () Bool)

(assert (=> b!683661 m!648249))

(declare-fun m!648251 () Bool)

(assert (=> b!683648 m!648251))

(declare-fun m!648253 () Bool)

(assert (=> b!683659 m!648253))

(check-sat (not b!683658) (not start!60998) (not b!683652) (not b!683644) (not b!683647) (not b!683659) (not b!683662) (not b!683646) (not b!683660) (not b!683657) (not b!683661) (not b!683653) (not b!683655) (not b!683648))
