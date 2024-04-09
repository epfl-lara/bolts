; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60252 () Bool)

(assert start!60252)

(declare-fun b!674646 () Bool)

(declare-fun res!441272 () Bool)

(declare-fun e!385045 () Bool)

(assert (=> b!674646 (=> (not res!441272) (not e!385045))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39255 0))(
  ( (array!39256 (arr!18816 (Array (_ BitVec 32) (_ BitVec 64))) (size!19180 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39255)

(assert (=> b!674646 (= res!441272 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19180 a!3626))))))

(declare-fun b!674647 () Bool)

(declare-fun res!441268 () Bool)

(assert (=> b!674647 (=> (not res!441268) (not e!385045))))

(declare-fun e!385043 () Bool)

(assert (=> b!674647 (= res!441268 e!385043)))

(declare-fun res!441283 () Bool)

(assert (=> b!674647 (=> res!441283 e!385043)))

(declare-fun e!385039 () Bool)

(assert (=> b!674647 (= res!441283 e!385039)))

(declare-fun res!441281 () Bool)

(assert (=> b!674647 (=> (not res!441281) (not e!385039))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!674647 (= res!441281 (bvsgt from!3004 i!1382))))

(declare-fun b!674648 () Bool)

(declare-fun e!385044 () Bool)

(assert (=> b!674648 (= e!385043 e!385044)))

(declare-fun res!441282 () Bool)

(assert (=> b!674648 (=> (not res!441282) (not e!385044))))

(assert (=> b!674648 (= res!441282 (bvsle from!3004 i!1382))))

(declare-fun b!674649 () Bool)

(declare-fun e!385042 () Bool)

(declare-datatypes ((List!12910 0))(
  ( (Nil!12907) (Cons!12906 (h!13951 (_ BitVec 64)) (t!19146 List!12910)) )
))
(declare-fun lt!312621 () List!12910)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3453 (List!12910 (_ BitVec 64)) Bool)

(assert (=> b!674649 (= e!385042 (contains!3453 lt!312621 k!2843))))

(declare-fun b!674650 () Bool)

(declare-fun res!441271 () Bool)

(declare-fun e!385041 () Bool)

(assert (=> b!674650 (=> (not res!441271) (not e!385041))))

(assert (=> b!674650 (= res!441271 (not (contains!3453 lt!312621 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674651 () Bool)

(declare-fun res!441284 () Bool)

(assert (=> b!674651 (=> (not res!441284) (not e!385041))))

(assert (=> b!674651 (= res!441284 (not (contains!3453 lt!312621 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674653 () Bool)

(declare-fun e!385038 () Bool)

(assert (=> b!674653 (= e!385045 e!385038)))

(declare-fun res!441267 () Bool)

(assert (=> b!674653 (=> (not res!441267) (not e!385038))))

(assert (=> b!674653 (= res!441267 (not (= (select (arr!18816 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23728 0))(
  ( (Unit!23729) )
))
(declare-fun lt!312619 () Unit!23728)

(declare-fun e!385037 () Unit!23728)

(assert (=> b!674653 (= lt!312619 e!385037)))

(declare-fun c!77060 () Bool)

(assert (=> b!674653 (= c!77060 (= (select (arr!18816 a!3626) from!3004) k!2843))))

(declare-fun b!674654 () Bool)

(declare-fun res!441280 () Bool)

(assert (=> b!674654 (=> (not res!441280) (not e!385045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674654 (= res!441280 (validKeyInArray!0 (select (arr!18816 a!3626) from!3004)))))

(declare-fun b!674655 () Bool)

(declare-fun res!441274 () Bool)

(assert (=> b!674655 (=> (not res!441274) (not e!385041))))

(declare-fun noDuplicate!700 (List!12910) Bool)

(assert (=> b!674655 (= res!441274 (noDuplicate!700 lt!312621))))

(declare-fun b!674656 () Bool)

(declare-fun e!385040 () Bool)

(declare-fun e!385036 () Bool)

(assert (=> b!674656 (= e!385040 e!385036)))

(declare-fun res!441262 () Bool)

(assert (=> b!674656 (=> (not res!441262) (not e!385036))))

(assert (=> b!674656 (= res!441262 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674657 () Bool)

(declare-fun res!441276 () Bool)

(assert (=> b!674657 (=> (not res!441276) (not e!385045))))

(declare-fun acc!681 () List!12910)

(declare-fun arrayNoDuplicates!0 (array!39255 (_ BitVec 32) List!12910) Bool)

(assert (=> b!674657 (= res!441276 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674658 () Bool)

(declare-fun res!441275 () Bool)

(assert (=> b!674658 (=> (not res!441275) (not e!385045))))

(assert (=> b!674658 (= res!441275 (not (contains!3453 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674659 () Bool)

(declare-fun res!441263 () Bool)

(assert (=> b!674659 (=> (not res!441263) (not e!385045))))

(assert (=> b!674659 (= res!441263 (validKeyInArray!0 k!2843))))

(declare-fun b!674660 () Bool)

(declare-fun res!441279 () Bool)

(assert (=> b!674660 (=> (not res!441279) (not e!385045))))

(declare-fun arrayContainsKey!0 (array!39255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674660 (= res!441279 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674661 () Bool)

(assert (=> b!674661 (= e!385039 (contains!3453 acc!681 k!2843))))

(declare-fun b!674662 () Bool)

(declare-fun res!441273 () Bool)

(assert (=> b!674662 (=> (not res!441273) (not e!385045))))

(assert (=> b!674662 (= res!441273 (not (contains!3453 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674663 () Bool)

(declare-fun res!441264 () Bool)

(assert (=> b!674663 (=> (not res!441264) (not e!385041))))

(assert (=> b!674663 (= res!441264 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312621))))

(declare-fun b!674664 () Bool)

(assert (=> b!674664 (= e!385041 (not true))))

(assert (=> b!674664 (arrayNoDuplicates!0 (array!39256 (store (arr!18816 a!3626) i!1382 k!2843) (size!19180 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312621)))

(declare-fun lt!312618 () Unit!23728)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39255 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12910) Unit!23728)

(assert (=> b!674664 (= lt!312618 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312621))))

(declare-fun res!441270 () Bool)

(assert (=> start!60252 (=> (not res!441270) (not e!385045))))

(assert (=> start!60252 (= res!441270 (and (bvslt (size!19180 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19180 a!3626))))))

(assert (=> start!60252 e!385045))

(assert (=> start!60252 true))

(declare-fun array_inv!14590 (array!39255) Bool)

(assert (=> start!60252 (array_inv!14590 a!3626)))

(declare-fun b!674652 () Bool)

(assert (=> b!674652 (= e!385038 e!385041)))

(declare-fun res!441260 () Bool)

(assert (=> b!674652 (=> (not res!441260) (not e!385041))))

(assert (=> b!674652 (= res!441260 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!301 (List!12910 (_ BitVec 64)) List!12910)

(assert (=> b!674652 (= lt!312621 ($colon$colon!301 acc!681 (select (arr!18816 a!3626) from!3004)))))

(declare-fun b!674665 () Bool)

(declare-fun res!441269 () Bool)

(assert (=> b!674665 (=> (not res!441269) (not e!385045))))

(assert (=> b!674665 (= res!441269 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12907))))

(declare-fun b!674666 () Bool)

(declare-fun res!441265 () Bool)

(assert (=> b!674666 (=> (not res!441265) (not e!385045))))

(assert (=> b!674666 (= res!441265 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19180 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674667 () Bool)

(declare-fun res!441278 () Bool)

(assert (=> b!674667 (=> (not res!441278) (not e!385045))))

(assert (=> b!674667 (= res!441278 (noDuplicate!700 acc!681))))

(declare-fun b!674668 () Bool)

(declare-fun res!441266 () Bool)

(assert (=> b!674668 (=> (not res!441266) (not e!385041))))

(assert (=> b!674668 (= res!441266 e!385040)))

(declare-fun res!441261 () Bool)

(assert (=> b!674668 (=> res!441261 e!385040)))

(assert (=> b!674668 (= res!441261 e!385042)))

(declare-fun res!441277 () Bool)

(assert (=> b!674668 (=> (not res!441277) (not e!385042))))

(assert (=> b!674668 (= res!441277 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674669 () Bool)

(assert (=> b!674669 (= e!385036 (not (contains!3453 lt!312621 k!2843)))))

(declare-fun b!674670 () Bool)

(assert (=> b!674670 (= e!385044 (not (contains!3453 acc!681 k!2843)))))

(declare-fun b!674671 () Bool)

(declare-fun Unit!23730 () Unit!23728)

(assert (=> b!674671 (= e!385037 Unit!23730)))

(declare-fun b!674672 () Bool)

(declare-fun Unit!23731 () Unit!23728)

(assert (=> b!674672 (= e!385037 Unit!23731)))

(assert (=> b!674672 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312620 () Unit!23728)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39255 (_ BitVec 64) (_ BitVec 32)) Unit!23728)

(assert (=> b!674672 (= lt!312620 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674672 false))

(assert (= (and start!60252 res!441270) b!674667))

(assert (= (and b!674667 res!441278) b!674662))

(assert (= (and b!674662 res!441273) b!674658))

(assert (= (and b!674658 res!441275) b!674647))

(assert (= (and b!674647 res!441281) b!674661))

(assert (= (and b!674647 (not res!441283)) b!674648))

(assert (= (and b!674648 res!441282) b!674670))

(assert (= (and b!674647 res!441268) b!674665))

(assert (= (and b!674665 res!441269) b!674657))

(assert (= (and b!674657 res!441276) b!674646))

(assert (= (and b!674646 res!441272) b!674659))

(assert (= (and b!674659 res!441263) b!674660))

(assert (= (and b!674660 res!441279) b!674666))

(assert (= (and b!674666 res!441265) b!674654))

(assert (= (and b!674654 res!441280) b!674653))

(assert (= (and b!674653 c!77060) b!674672))

(assert (= (and b!674653 (not c!77060)) b!674671))

(assert (= (and b!674653 res!441267) b!674652))

(assert (= (and b!674652 res!441260) b!674655))

(assert (= (and b!674655 res!441274) b!674651))

(assert (= (and b!674651 res!441284) b!674650))

(assert (= (and b!674650 res!441271) b!674668))

(assert (= (and b!674668 res!441277) b!674649))

(assert (= (and b!674668 (not res!441261)) b!674656))

(assert (= (and b!674656 res!441262) b!674669))

(assert (= (and b!674668 res!441266) b!674663))

(assert (= (and b!674663 res!441264) b!674664))

(declare-fun m!642477 () Bool)

(assert (=> b!674649 m!642477))

(declare-fun m!642479 () Bool)

(assert (=> b!674655 m!642479))

(declare-fun m!642481 () Bool)

(assert (=> b!674659 m!642481))

(declare-fun m!642483 () Bool)

(assert (=> b!674657 m!642483))

(declare-fun m!642485 () Bool)

(assert (=> b!674654 m!642485))

(assert (=> b!674654 m!642485))

(declare-fun m!642487 () Bool)

(assert (=> b!674654 m!642487))

(declare-fun m!642489 () Bool)

(assert (=> b!674651 m!642489))

(declare-fun m!642491 () Bool)

(assert (=> b!674663 m!642491))

(declare-fun m!642493 () Bool)

(assert (=> b!674650 m!642493))

(declare-fun m!642495 () Bool)

(assert (=> b!674660 m!642495))

(assert (=> b!674652 m!642485))

(assert (=> b!674652 m!642485))

(declare-fun m!642497 () Bool)

(assert (=> b!674652 m!642497))

(declare-fun m!642499 () Bool)

(assert (=> b!674661 m!642499))

(assert (=> b!674669 m!642477))

(declare-fun m!642501 () Bool)

(assert (=> b!674672 m!642501))

(declare-fun m!642503 () Bool)

(assert (=> b!674672 m!642503))

(assert (=> b!674670 m!642499))

(declare-fun m!642505 () Bool)

(assert (=> b!674662 m!642505))

(declare-fun m!642507 () Bool)

(assert (=> start!60252 m!642507))

(declare-fun m!642509 () Bool)

(assert (=> b!674664 m!642509))

(declare-fun m!642511 () Bool)

(assert (=> b!674664 m!642511))

(declare-fun m!642513 () Bool)

(assert (=> b!674664 m!642513))

(declare-fun m!642515 () Bool)

(assert (=> b!674667 m!642515))

(declare-fun m!642517 () Bool)

(assert (=> b!674658 m!642517))

(assert (=> b!674653 m!642485))

(declare-fun m!642519 () Bool)

(assert (=> b!674665 m!642519))

(push 1)

