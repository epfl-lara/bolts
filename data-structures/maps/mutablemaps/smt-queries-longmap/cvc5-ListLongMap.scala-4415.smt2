; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60996 () Bool)

(assert start!60996)

(declare-fun b!683584 () Bool)

(declare-fun res!449453 () Bool)

(declare-fun e!389407 () Bool)

(assert (=> b!683584 (=> (not res!449453) (not e!389407))))

(declare-datatypes ((List!13051 0))(
  ( (Nil!13048) (Cons!13047 (h!14092 (_ BitVec 64)) (t!19305 List!13051)) )
))
(declare-fun acc!681 () List!13051)

(declare-fun noDuplicate!841 (List!13051) Bool)

(assert (=> b!683584 (= res!449453 (noDuplicate!841 acc!681))))

(declare-fun b!683585 () Bool)

(declare-datatypes ((Unit!24022 0))(
  ( (Unit!24023) )
))
(declare-fun e!389409 () Unit!24022)

(declare-fun Unit!24024 () Unit!24022)

(assert (=> b!683585 (= e!389409 Unit!24024)))

(declare-fun b!683586 () Bool)

(declare-fun res!449459 () Bool)

(assert (=> b!683586 (=> (not res!449459) (not e!389407))))

(declare-fun contains!3594 (List!13051 (_ BitVec 64)) Bool)

(assert (=> b!683586 (= res!449459 (not (contains!3594 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683587 () Bool)

(declare-fun res!449456 () Bool)

(assert (=> b!683587 (=> (not res!449456) (not e!389407))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683587 (= res!449456 (validKeyInArray!0 k!2843))))

(declare-fun b!683588 () Bool)

(declare-fun e!389406 () Unit!24022)

(declare-fun Unit!24025 () Unit!24022)

(assert (=> b!683588 (= e!389406 Unit!24025)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!313976 () Unit!24022)

(declare-datatypes ((array!39561 0))(
  ( (array!39562 (arr!18957 (Array (_ BitVec 32) (_ BitVec 64))) (size!19323 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39561)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39561 (_ BitVec 64) (_ BitVec 32)) Unit!24022)

(assert (=> b!683588 (= lt!313976 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683588 false))

(declare-fun b!683589 () Bool)

(declare-fun res!449447 () Bool)

(assert (=> b!683589 (=> (not res!449447) (not e!389407))))

(declare-fun arrayContainsKey!0 (array!39561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683589 (= res!449447 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683590 () Bool)

(declare-fun res!449449 () Bool)

(assert (=> b!683590 (=> (not res!449449) (not e!389407))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683590 (= res!449449 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19323 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683591 () Bool)

(declare-fun res!449448 () Bool)

(assert (=> b!683591 (=> (not res!449448) (not e!389407))))

(declare-fun arrayNoDuplicates!0 (array!39561 (_ BitVec 32) List!13051) Bool)

(assert (=> b!683591 (= res!449448 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683592 () Bool)

(declare-fun res!449450 () Bool)

(assert (=> b!683592 (=> (not res!449450) (not e!389407))))

(assert (=> b!683592 (= res!449450 (not (contains!3594 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683593 () Bool)

(declare-fun res!449457 () Bool)

(declare-fun e!389413 () Bool)

(assert (=> b!683593 (=> res!449457 e!389413)))

(declare-fun lt!313978 () List!13051)

(assert (=> b!683593 (= res!449457 (not (noDuplicate!841 lt!313978)))))

(declare-fun b!683594 () Bool)

(declare-fun res!449444 () Bool)

(assert (=> b!683594 (=> (not res!449444) (not e!389407))))

(assert (=> b!683594 (= res!449444 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19323 a!3626))))))

(declare-fun b!683595 () Bool)

(declare-fun e!389408 () Bool)

(assert (=> b!683595 (= e!389408 (contains!3594 acc!681 k!2843))))

(declare-fun b!683596 () Bool)

(declare-fun res!449451 () Bool)

(assert (=> b!683596 (=> (not res!449451) (not e!389407))))

(assert (=> b!683596 (= res!449451 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13048))))

(declare-fun b!683597 () Bool)

(declare-fun Unit!24026 () Unit!24022)

(assert (=> b!683597 (= e!389406 Unit!24026)))

(declare-fun b!683598 () Bool)

(declare-fun lt!313975 () Unit!24022)

(assert (=> b!683598 (= e!389409 lt!313975)))

(declare-fun lt!313972 () Unit!24022)

(declare-fun lemmaListSubSeqRefl!0 (List!13051) Unit!24022)

(assert (=> b!683598 (= lt!313972 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!179 (List!13051 List!13051) Bool)

(assert (=> b!683598 (subseq!179 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39561 List!13051 List!13051 (_ BitVec 32)) Unit!24022)

(declare-fun $colon$colon!343 (List!13051 (_ BitVec 64)) List!13051)

(assert (=> b!683598 (= lt!313975 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!343 acc!681 (select (arr!18957 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683598 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683599 () Bool)

(declare-fun lt!313973 () Bool)

(assert (=> b!683599 (= e!389413 (not lt!313973))))

(declare-fun b!683600 () Bool)

(declare-fun e!389412 () Bool)

(declare-fun e!389411 () Bool)

(assert (=> b!683600 (= e!389412 e!389411)))

(declare-fun res!449454 () Bool)

(assert (=> b!683600 (=> (not res!449454) (not e!389411))))

(assert (=> b!683600 (= res!449454 (bvsle from!3004 i!1382))))

(declare-fun b!683601 () Bool)

(assert (=> b!683601 (= e!389411 (not (contains!3594 acc!681 k!2843)))))

(declare-fun res!449446 () Bool)

(assert (=> start!60996 (=> (not res!449446) (not e!389407))))

(assert (=> start!60996 (= res!449446 (and (bvslt (size!19323 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19323 a!3626))))))

(assert (=> start!60996 e!389407))

(assert (=> start!60996 true))

(declare-fun array_inv!14731 (array!39561) Bool)

(assert (=> start!60996 (array_inv!14731 a!3626)))

(declare-fun b!683602 () Bool)

(declare-fun res!449452 () Bool)

(assert (=> b!683602 (=> (not res!449452) (not e!389407))))

(assert (=> b!683602 (= res!449452 e!389412)))

(declare-fun res!449455 () Bool)

(assert (=> b!683602 (=> res!449455 e!389412)))

(assert (=> b!683602 (= res!449455 e!389408)))

(declare-fun res!449445 () Bool)

(assert (=> b!683602 (=> (not res!449445) (not e!389408))))

(assert (=> b!683602 (= res!449445 (bvsgt from!3004 i!1382))))

(declare-fun b!683603 () Bool)

(assert (=> b!683603 (= e!389407 (not e!389413))))

(declare-fun res!449458 () Bool)

(assert (=> b!683603 (=> res!449458 e!389413)))

(assert (=> b!683603 (= res!449458 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!144 (List!13051 (_ BitVec 64)) List!13051)

(assert (=> b!683603 (= (-!144 lt!313978 k!2843) acc!681)))

(assert (=> b!683603 (= lt!313978 ($colon$colon!343 acc!681 k!2843))))

(declare-fun lt!313979 () Unit!24022)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13051) Unit!24022)

(assert (=> b!683603 (= lt!313979 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683603 (subseq!179 acc!681 acc!681)))

(declare-fun lt!313974 () Unit!24022)

(assert (=> b!683603 (= lt!313974 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683603 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313980 () Unit!24022)

(assert (=> b!683603 (= lt!313980 e!389409)))

(declare-fun c!77437 () Bool)

(assert (=> b!683603 (= c!77437 (validKeyInArray!0 (select (arr!18957 a!3626) from!3004)))))

(declare-fun lt!313977 () Unit!24022)

(assert (=> b!683603 (= lt!313977 e!389406)))

(declare-fun c!77438 () Bool)

(assert (=> b!683603 (= c!77438 lt!313973)))

(assert (=> b!683603 (= lt!313973 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683603 (arrayContainsKey!0 (array!39562 (store (arr!18957 a!3626) i!1382 k!2843) (size!19323 a!3626)) k!2843 from!3004)))

(assert (= (and start!60996 res!449446) b!683584))

(assert (= (and b!683584 res!449453) b!683586))

(assert (= (and b!683586 res!449459) b!683592))

(assert (= (and b!683592 res!449450) b!683602))

(assert (= (and b!683602 res!449445) b!683595))

(assert (= (and b!683602 (not res!449455)) b!683600))

(assert (= (and b!683600 res!449454) b!683601))

(assert (= (and b!683602 res!449452) b!683596))

(assert (= (and b!683596 res!449451) b!683591))

(assert (= (and b!683591 res!449448) b!683594))

(assert (= (and b!683594 res!449444) b!683587))

(assert (= (and b!683587 res!449456) b!683589))

(assert (= (and b!683589 res!449447) b!683590))

(assert (= (and b!683590 res!449449) b!683603))

(assert (= (and b!683603 c!77438) b!683588))

(assert (= (and b!683603 (not c!77438)) b!683597))

(assert (= (and b!683603 c!77437) b!683598))

(assert (= (and b!683603 (not c!77437)) b!683585))

(assert (= (and b!683603 (not res!449458)) b!683593))

(assert (= (and b!683593 (not res!449457)) b!683599))

(declare-fun m!648159 () Bool)

(assert (=> b!683588 m!648159))

(declare-fun m!648161 () Bool)

(assert (=> b!683589 m!648161))

(declare-fun m!648163 () Bool)

(assert (=> b!683593 m!648163))

(declare-fun m!648165 () Bool)

(assert (=> b!683584 m!648165))

(declare-fun m!648167 () Bool)

(assert (=> b!683591 m!648167))

(declare-fun m!648169 () Bool)

(assert (=> b!683596 m!648169))

(declare-fun m!648171 () Bool)

(assert (=> b!683598 m!648171))

(declare-fun m!648173 () Bool)

(assert (=> b!683598 m!648173))

(declare-fun m!648175 () Bool)

(assert (=> b!683598 m!648175))

(declare-fun m!648177 () Bool)

(assert (=> b!683598 m!648177))

(assert (=> b!683598 m!648173))

(assert (=> b!683598 m!648175))

(declare-fun m!648179 () Bool)

(assert (=> b!683598 m!648179))

(declare-fun m!648181 () Bool)

(assert (=> b!683598 m!648181))

(declare-fun m!648183 () Bool)

(assert (=> b!683587 m!648183))

(assert (=> b!683603 m!648171))

(assert (=> b!683603 m!648173))

(declare-fun m!648185 () Bool)

(assert (=> b!683603 m!648185))

(declare-fun m!648187 () Bool)

(assert (=> b!683603 m!648187))

(declare-fun m!648189 () Bool)

(assert (=> b!683603 m!648189))

(assert (=> b!683603 m!648179))

(declare-fun m!648191 () Bool)

(assert (=> b!683603 m!648191))

(declare-fun m!648193 () Bool)

(assert (=> b!683603 m!648193))

(assert (=> b!683603 m!648173))

(declare-fun m!648195 () Bool)

(assert (=> b!683603 m!648195))

(declare-fun m!648197 () Bool)

(assert (=> b!683603 m!648197))

(assert (=> b!683603 m!648181))

(declare-fun m!648199 () Bool)

(assert (=> b!683601 m!648199))

(declare-fun m!648201 () Bool)

(assert (=> start!60996 m!648201))

(assert (=> b!683595 m!648199))

(declare-fun m!648203 () Bool)

(assert (=> b!683586 m!648203))

(declare-fun m!648205 () Bool)

(assert (=> b!683592 m!648205))

(push 1)

(assert (not b!683593))

(assert (not b!683603))

(assert (not start!60996))

(assert (not b!683584))

(assert (not b!683589))

(assert (not b!683592))

(assert (not b!683601))

(assert (not b!683598))

(assert (not b!683591))

(assert (not b!683587))

(assert (not b!683596))

(assert (not b!683588))

(assert (not b!683586))

(assert (not b!683595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

