; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60070 () Bool)

(assert start!60070)

(declare-fun b!668384 () Bool)

(declare-datatypes ((Unit!23420 0))(
  ( (Unit!23421) )
))
(declare-fun e!382419 () Unit!23420)

(declare-fun Unit!23422 () Unit!23420)

(assert (=> b!668384 (= e!382419 Unit!23422)))

(declare-fun b!668385 () Bool)

(declare-fun e!382417 () Bool)

(declare-datatypes ((List!12819 0))(
  ( (Nil!12816) (Cons!12815 (h!13860 (_ BitVec 64)) (t!19055 List!12819)) )
))
(declare-fun acc!681 () List!12819)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3362 (List!12819 (_ BitVec 64)) Bool)

(assert (=> b!668385 (= e!382417 (not (contains!3362 acc!681 k!2843)))))

(declare-fun b!668386 () Bool)

(declare-fun res!435591 () Bool)

(declare-fun e!382411 () Bool)

(assert (=> b!668386 (=> res!435591 e!382411)))

(declare-fun lt!311226 () List!12819)

(assert (=> b!668386 (= res!435591 (contains!3362 lt!311226 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668387 () Bool)

(declare-fun e!382415 () Bool)

(assert (=> b!668387 (= e!382415 (not (contains!3362 lt!311226 k!2843)))))

(declare-fun b!668388 () Bool)

(declare-fun e!382414 () Bool)

(assert (=> b!668388 (= e!382414 (contains!3362 acc!681 k!2843))))

(declare-fun b!668390 () Bool)

(declare-fun res!435584 () Bool)

(declare-fun e!382410 () Bool)

(assert (=> b!668390 (=> (not res!435584) (not e!382410))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39073 0))(
  ( (array!39074 (arr!18725 (Array (_ BitVec 32) (_ BitVec 64))) (size!19089 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39073)

(assert (=> b!668390 (= res!435584 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19089 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668391 () Bool)

(declare-fun res!435588 () Bool)

(assert (=> b!668391 (=> (not res!435588) (not e!382410))))

(declare-fun e!382418 () Bool)

(assert (=> b!668391 (= res!435588 e!382418)))

(declare-fun res!435590 () Bool)

(assert (=> b!668391 (=> res!435590 e!382418)))

(assert (=> b!668391 (= res!435590 e!382414)))

(declare-fun res!435585 () Bool)

(assert (=> b!668391 (=> (not res!435585) (not e!382414))))

(assert (=> b!668391 (= res!435585 (bvsgt from!3004 i!1382))))

(declare-fun b!668392 () Bool)

(declare-fun res!435592 () Bool)

(assert (=> b!668392 (=> (not res!435592) (not e!382410))))

(assert (=> b!668392 (= res!435592 (not (contains!3362 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668393 () Bool)

(assert (=> b!668393 (= e!382411 true)))

(declare-fun lt!311230 () Bool)

(declare-fun e!382420 () Bool)

(assert (=> b!668393 (= lt!311230 e!382420)))

(declare-fun res!435589 () Bool)

(assert (=> b!668393 (=> res!435589 e!382420)))

(declare-fun e!382413 () Bool)

(assert (=> b!668393 (= res!435589 e!382413)))

(declare-fun res!435596 () Bool)

(assert (=> b!668393 (=> (not res!435596) (not e!382413))))

(assert (=> b!668393 (= res!435596 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668394 () Bool)

(declare-fun res!435593 () Bool)

(assert (=> b!668394 (=> (not res!435593) (not e!382410))))

(declare-fun arrayNoDuplicates!0 (array!39073 (_ BitVec 32) List!12819) Bool)

(assert (=> b!668394 (= res!435593 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12816))))

(declare-fun b!668395 () Bool)

(declare-fun res!435601 () Bool)

(assert (=> b!668395 (=> res!435601 e!382411)))

(assert (=> b!668395 (= res!435601 (contains!3362 lt!311226 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668396 () Bool)

(assert (=> b!668396 (= e!382413 (contains!3362 lt!311226 k!2843))))

(declare-fun b!668397 () Bool)

(assert (=> b!668397 (= e!382410 (not e!382411))))

(declare-fun res!435600 () Bool)

(assert (=> b!668397 (=> res!435600 e!382411)))

(assert (=> b!668397 (= res!435600 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668397 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311226)))

(declare-fun lt!311227 () Unit!23420)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39073 (_ BitVec 64) (_ BitVec 32) List!12819 List!12819) Unit!23420)

(assert (=> b!668397 (= lt!311227 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311226))))

(declare-fun -!98 (List!12819 (_ BitVec 64)) List!12819)

(assert (=> b!668397 (= (-!98 lt!311226 k!2843) acc!681)))

(declare-fun $colon$colon!231 (List!12819 (_ BitVec 64)) List!12819)

(assert (=> b!668397 (= lt!311226 ($colon$colon!231 acc!681 k!2843))))

(declare-fun lt!311225 () Unit!23420)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12819) Unit!23420)

(assert (=> b!668397 (= lt!311225 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!100 (List!12819 List!12819) Bool)

(assert (=> b!668397 (subseq!100 acc!681 acc!681)))

(declare-fun lt!311228 () Unit!23420)

(declare-fun lemmaListSubSeqRefl!0 (List!12819) Unit!23420)

(assert (=> b!668397 (= lt!311228 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668397 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311231 () Unit!23420)

(declare-fun e!382412 () Unit!23420)

(assert (=> b!668397 (= lt!311231 e!382412)))

(declare-fun c!76769 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668397 (= c!76769 (validKeyInArray!0 (select (arr!18725 a!3626) from!3004)))))

(declare-fun lt!311232 () Unit!23420)

(assert (=> b!668397 (= lt!311232 e!382419)))

(declare-fun c!76768 () Bool)

(declare-fun arrayContainsKey!0 (array!39073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668397 (= c!76768 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668397 (arrayContainsKey!0 (array!39074 (store (arr!18725 a!3626) i!1382 k!2843) (size!19089 a!3626)) k!2843 from!3004)))

(declare-fun b!668398 () Bool)

(declare-fun lt!311224 () Unit!23420)

(assert (=> b!668398 (= e!382412 lt!311224)))

(declare-fun lt!311229 () Unit!23420)

(assert (=> b!668398 (= lt!311229 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668398 (subseq!100 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39073 List!12819 List!12819 (_ BitVec 32)) Unit!23420)

(assert (=> b!668398 (= lt!311224 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!231 acc!681 (select (arr!18725 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668398 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668399 () Bool)

(declare-fun res!435587 () Bool)

(assert (=> b!668399 (=> (not res!435587) (not e!382410))))

(assert (=> b!668399 (= res!435587 (not (contains!3362 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668400 () Bool)

(declare-fun res!435598 () Bool)

(assert (=> b!668400 (=> (not res!435598) (not e!382410))))

(declare-fun noDuplicate!609 (List!12819) Bool)

(assert (=> b!668400 (= res!435598 (noDuplicate!609 acc!681))))

(declare-fun b!668401 () Bool)

(declare-fun res!435582 () Bool)

(assert (=> b!668401 (=> (not res!435582) (not e!382410))))

(assert (=> b!668401 (= res!435582 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19089 a!3626))))))

(declare-fun b!668389 () Bool)

(declare-fun Unit!23423 () Unit!23420)

(assert (=> b!668389 (= e!382419 Unit!23423)))

(declare-fun lt!311223 () Unit!23420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39073 (_ BitVec 64) (_ BitVec 32)) Unit!23420)

(assert (=> b!668389 (= lt!311223 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668389 false))

(declare-fun res!435586 () Bool)

(assert (=> start!60070 (=> (not res!435586) (not e!382410))))

(assert (=> start!60070 (= res!435586 (and (bvslt (size!19089 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19089 a!3626))))))

(assert (=> start!60070 e!382410))

(assert (=> start!60070 true))

(declare-fun array_inv!14499 (array!39073) Bool)

(assert (=> start!60070 (array_inv!14499 a!3626)))

(declare-fun b!668402 () Bool)

(declare-fun res!435583 () Bool)

(assert (=> b!668402 (=> res!435583 e!382411)))

(assert (=> b!668402 (= res!435583 (not (noDuplicate!609 lt!311226)))))

(declare-fun b!668403 () Bool)

(assert (=> b!668403 (= e!382420 e!382415)))

(declare-fun res!435602 () Bool)

(assert (=> b!668403 (=> (not res!435602) (not e!382415))))

(assert (=> b!668403 (= res!435602 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668404 () Bool)

(declare-fun res!435599 () Bool)

(assert (=> b!668404 (=> (not res!435599) (not e!382410))))

(assert (=> b!668404 (= res!435599 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668405 () Bool)

(declare-fun res!435597 () Bool)

(assert (=> b!668405 (=> (not res!435597) (not e!382410))))

(assert (=> b!668405 (= res!435597 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668406 () Bool)

(declare-fun res!435595 () Bool)

(assert (=> b!668406 (=> (not res!435595) (not e!382410))))

(assert (=> b!668406 (= res!435595 (validKeyInArray!0 k!2843))))

(declare-fun b!668407 () Bool)

(declare-fun Unit!23424 () Unit!23420)

(assert (=> b!668407 (= e!382412 Unit!23424)))

(declare-fun b!668408 () Bool)

(assert (=> b!668408 (= e!382418 e!382417)))

(declare-fun res!435594 () Bool)

(assert (=> b!668408 (=> (not res!435594) (not e!382417))))

(assert (=> b!668408 (= res!435594 (bvsle from!3004 i!1382))))

(assert (= (and start!60070 res!435586) b!668400))

(assert (= (and b!668400 res!435598) b!668399))

(assert (= (and b!668399 res!435587) b!668392))

(assert (= (and b!668392 res!435592) b!668391))

(assert (= (and b!668391 res!435585) b!668388))

(assert (= (and b!668391 (not res!435590)) b!668408))

(assert (= (and b!668408 res!435594) b!668385))

(assert (= (and b!668391 res!435588) b!668394))

(assert (= (and b!668394 res!435593) b!668405))

(assert (= (and b!668405 res!435597) b!668401))

(assert (= (and b!668401 res!435582) b!668406))

(assert (= (and b!668406 res!435595) b!668404))

(assert (= (and b!668404 res!435599) b!668390))

(assert (= (and b!668390 res!435584) b!668397))

(assert (= (and b!668397 c!76768) b!668389))

(assert (= (and b!668397 (not c!76768)) b!668384))

(assert (= (and b!668397 c!76769) b!668398))

(assert (= (and b!668397 (not c!76769)) b!668407))

(assert (= (and b!668397 (not res!435600)) b!668402))

(assert (= (and b!668402 (not res!435583)) b!668386))

(assert (= (and b!668386 (not res!435591)) b!668395))

(assert (= (and b!668395 (not res!435601)) b!668393))

(assert (= (and b!668393 res!435596) b!668396))

(assert (= (and b!668393 (not res!435589)) b!668403))

(assert (= (and b!668403 res!435602) b!668387))

(declare-fun m!638741 () Bool)

(assert (=> b!668389 m!638741))

(declare-fun m!638743 () Bool)

(assert (=> b!668387 m!638743))

(declare-fun m!638745 () Bool)

(assert (=> b!668404 m!638745))

(declare-fun m!638747 () Bool)

(assert (=> b!668395 m!638747))

(declare-fun m!638749 () Bool)

(assert (=> b!668399 m!638749))

(declare-fun m!638751 () Bool)

(assert (=> b!668398 m!638751))

(declare-fun m!638753 () Bool)

(assert (=> b!668398 m!638753))

(declare-fun m!638755 () Bool)

(assert (=> b!668398 m!638755))

(declare-fun m!638757 () Bool)

(assert (=> b!668398 m!638757))

(assert (=> b!668398 m!638753))

(assert (=> b!668398 m!638755))

(declare-fun m!638759 () Bool)

(assert (=> b!668398 m!638759))

(declare-fun m!638761 () Bool)

(assert (=> b!668398 m!638761))

(declare-fun m!638763 () Bool)

(assert (=> b!668388 m!638763))

(declare-fun m!638765 () Bool)

(assert (=> b!668392 m!638765))

(declare-fun m!638767 () Bool)

(assert (=> b!668405 m!638767))

(declare-fun m!638769 () Bool)

(assert (=> b!668397 m!638769))

(assert (=> b!668397 m!638751))

(assert (=> b!668397 m!638753))

(declare-fun m!638771 () Bool)

(assert (=> b!668397 m!638771))

(declare-fun m!638773 () Bool)

(assert (=> b!668397 m!638773))

(assert (=> b!668397 m!638759))

(declare-fun m!638775 () Bool)

(assert (=> b!668397 m!638775))

(declare-fun m!638777 () Bool)

(assert (=> b!668397 m!638777))

(declare-fun m!638779 () Bool)

(assert (=> b!668397 m!638779))

(declare-fun m!638781 () Bool)

(assert (=> b!668397 m!638781))

(assert (=> b!668397 m!638753))

(declare-fun m!638783 () Bool)

(assert (=> b!668397 m!638783))

(declare-fun m!638785 () Bool)

(assert (=> b!668397 m!638785))

(assert (=> b!668397 m!638761))

(assert (=> b!668385 m!638763))

(declare-fun m!638787 () Bool)

(assert (=> b!668386 m!638787))

(declare-fun m!638789 () Bool)

(assert (=> start!60070 m!638789))

(assert (=> b!668396 m!638743))

(declare-fun m!638791 () Bool)

(assert (=> b!668394 m!638791))

(declare-fun m!638793 () Bool)

(assert (=> b!668402 m!638793))

(declare-fun m!638795 () Bool)

(assert (=> b!668400 m!638795))

(declare-fun m!638797 () Bool)

(assert (=> b!668406 m!638797))

(push 1)

(assert (not b!668406))

(assert (not b!668405))

(assert (not b!668404))

(assert (not b!668392))

(assert (not b!668400))

(assert (not b!668394))

(assert (not b!668385))

(assert (not b!668388))

(assert (not b!668399))

(assert (not start!60070))

(assert (not b!668395))

(assert (not b!668389))

(assert (not b!668397))

(assert (not b!668387))

(assert (not b!668396))

(assert (not b!668386))

(assert (not b!668402))

(assert (not b!668398))

(check-sat)

