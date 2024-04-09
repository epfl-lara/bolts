; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60000 () Bool)

(assert start!60000)

(declare-fun b!665759 () Bool)

(declare-fun e!381417 () Bool)

(declare-fun e!381411 () Bool)

(assert (=> b!665759 (= e!381417 (not e!381411))))

(declare-fun res!433384 () Bool)

(assert (=> b!665759 (=> res!433384 e!381411)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!665759 (= res!433384 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12784 0))(
  ( (Nil!12781) (Cons!12780 (h!13825 (_ BitVec 64)) (t!19020 List!12784)) )
))
(declare-fun lt!310174 () List!12784)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!12784)

(declare-fun -!63 (List!12784 (_ BitVec 64)) List!12784)

(assert (=> b!665759 (= (-!63 lt!310174 k!2843) acc!681)))

(declare-fun $colon$colon!196 (List!12784 (_ BitVec 64)) List!12784)

(assert (=> b!665759 (= lt!310174 ($colon$colon!196 acc!681 k!2843))))

(declare-datatypes ((Unit!23245 0))(
  ( (Unit!23246) )
))
(declare-fun lt!310179 () Unit!23245)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12784) Unit!23245)

(assert (=> b!665759 (= lt!310179 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!65 (List!12784 List!12784) Bool)

(assert (=> b!665759 (subseq!65 acc!681 acc!681)))

(declare-fun lt!310178 () Unit!23245)

(declare-fun lemmaListSubSeqRefl!0 (List!12784) Unit!23245)

(assert (=> b!665759 (= lt!310178 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39003 0))(
  ( (array!39004 (arr!18690 (Array (_ BitVec 32) (_ BitVec 64))) (size!19054 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39003)

(declare-fun arrayNoDuplicates!0 (array!39003 (_ BitVec 32) List!12784) Bool)

(assert (=> b!665759 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310175 () Unit!23245)

(declare-fun e!381416 () Unit!23245)

(assert (=> b!665759 (= lt!310175 e!381416)))

(declare-fun c!76558 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665759 (= c!76558 (validKeyInArray!0 (select (arr!18690 a!3626) from!3004)))))

(declare-fun lt!310182 () Unit!23245)

(declare-fun e!381414 () Unit!23245)

(assert (=> b!665759 (= lt!310182 e!381414)))

(declare-fun c!76559 () Bool)

(declare-fun lt!310176 () Bool)

(assert (=> b!665759 (= c!76559 lt!310176)))

(declare-fun arrayContainsKey!0 (array!39003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665759 (= lt!310176 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665759 (arrayContainsKey!0 (array!39004 (store (arr!18690 a!3626) i!1382 k!2843) (size!19054 a!3626)) k!2843 from!3004)))

(declare-fun res!433380 () Bool)

(assert (=> start!60000 (=> (not res!433380) (not e!381417))))

(assert (=> start!60000 (= res!433380 (and (bvslt (size!19054 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19054 a!3626))))))

(assert (=> start!60000 e!381417))

(assert (=> start!60000 true))

(declare-fun array_inv!14464 (array!39003) Bool)

(assert (=> start!60000 (array_inv!14464 a!3626)))

(declare-fun b!665760 () Bool)

(declare-fun e!381418 () Bool)

(declare-fun contains!3327 (List!12784 (_ BitVec 64)) Bool)

(assert (=> b!665760 (= e!381418 (contains!3327 acc!681 k!2843))))

(declare-fun b!665761 () Bool)

(declare-fun res!433379 () Bool)

(assert (=> b!665761 (=> res!433379 e!381411)))

(declare-fun noDuplicate!574 (List!12784) Bool)

(assert (=> b!665761 (= res!433379 (not (noDuplicate!574 lt!310174)))))

(declare-fun b!665762 () Bool)

(declare-fun res!433390 () Bool)

(assert (=> b!665762 (=> (not res!433390) (not e!381417))))

(assert (=> b!665762 (= res!433390 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665763 () Bool)

(declare-fun res!433382 () Bool)

(assert (=> b!665763 (=> (not res!433382) (not e!381417))))

(assert (=> b!665763 (= res!433382 (not (contains!3327 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665764 () Bool)

(declare-fun Unit!23247 () Unit!23245)

(assert (=> b!665764 (= e!381414 Unit!23247)))

(declare-fun b!665765 () Bool)

(declare-fun res!433381 () Bool)

(assert (=> b!665765 (=> res!433381 e!381411)))

(assert (=> b!665765 (= res!433381 (contains!3327 acc!681 k!2843))))

(declare-fun b!665766 () Bool)

(declare-fun res!433396 () Bool)

(assert (=> b!665766 (=> (not res!433396) (not e!381417))))

(assert (=> b!665766 (= res!433396 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665767 () Bool)

(declare-fun res!433377 () Bool)

(assert (=> b!665767 (=> res!433377 e!381411)))

(assert (=> b!665767 (= res!433377 (not (contains!3327 lt!310174 k!2843)))))

(declare-fun b!665768 () Bool)

(declare-fun res!433391 () Bool)

(assert (=> b!665768 (=> (not res!433391) (not e!381417))))

(assert (=> b!665768 (= res!433391 (not (contains!3327 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665769 () Bool)

(declare-fun res!433397 () Bool)

(assert (=> b!665769 (=> (not res!433397) (not e!381417))))

(assert (=> b!665769 (= res!433397 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19054 a!3626))))))

(declare-fun b!665770 () Bool)

(declare-fun res!433389 () Bool)

(assert (=> b!665770 (=> (not res!433389) (not e!381417))))

(assert (=> b!665770 (= res!433389 (validKeyInArray!0 k!2843))))

(declare-fun b!665771 () Bool)

(declare-fun res!433393 () Bool)

(assert (=> b!665771 (=> res!433393 e!381411)))

(assert (=> b!665771 (= res!433393 lt!310176)))

(declare-fun b!665772 () Bool)

(declare-fun e!381412 () Bool)

(declare-fun e!381413 () Bool)

(assert (=> b!665772 (= e!381412 e!381413)))

(declare-fun res!433395 () Bool)

(assert (=> b!665772 (=> (not res!433395) (not e!381413))))

(assert (=> b!665772 (= res!433395 (bvsle from!3004 i!1382))))

(declare-fun b!665773 () Bool)

(declare-fun res!433392 () Bool)

(assert (=> b!665773 (=> (not res!433392) (not e!381417))))

(assert (=> b!665773 (= res!433392 (noDuplicate!574 acc!681))))

(declare-fun b!665774 () Bool)

(declare-fun Unit!23248 () Unit!23245)

(assert (=> b!665774 (= e!381414 Unit!23248)))

(declare-fun lt!310181 () Unit!23245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39003 (_ BitVec 64) (_ BitVec 32)) Unit!23245)

(assert (=> b!665774 (= lt!310181 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665774 false))

(declare-fun b!665775 () Bool)

(assert (=> b!665775 (= e!381413 (not (contains!3327 acc!681 k!2843)))))

(declare-fun b!665776 () Bool)

(declare-fun Unit!23249 () Unit!23245)

(assert (=> b!665776 (= e!381416 Unit!23249)))

(declare-fun b!665777 () Bool)

(declare-fun res!433386 () Bool)

(assert (=> b!665777 (=> (not res!433386) (not e!381417))))

(assert (=> b!665777 (= res!433386 e!381412)))

(declare-fun res!433378 () Bool)

(assert (=> b!665777 (=> res!433378 e!381412)))

(assert (=> b!665777 (= res!433378 e!381418)))

(declare-fun res!433383 () Bool)

(assert (=> b!665777 (=> (not res!433383) (not e!381418))))

(assert (=> b!665777 (= res!433383 (bvsgt from!3004 i!1382))))

(declare-fun b!665778 () Bool)

(declare-fun res!433388 () Bool)

(assert (=> b!665778 (=> res!433388 e!381411)))

(assert (=> b!665778 (= res!433388 (not (subseq!65 acc!681 lt!310174)))))

(declare-fun b!665779 () Bool)

(declare-fun lt!310180 () Unit!23245)

(assert (=> b!665779 (= e!381416 lt!310180)))

(declare-fun lt!310177 () Unit!23245)

(assert (=> b!665779 (= lt!310177 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665779 (subseq!65 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39003 List!12784 List!12784 (_ BitVec 32)) Unit!23245)

(assert (=> b!665779 (= lt!310180 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!196 acc!681 (select (arr!18690 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665779 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665780 () Bool)

(declare-fun res!433387 () Bool)

(assert (=> b!665780 (=> (not res!433387) (not e!381417))))

(assert (=> b!665780 (= res!433387 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12781))))

(declare-fun b!665781 () Bool)

(declare-fun res!433394 () Bool)

(assert (=> b!665781 (=> (not res!433394) (not e!381417))))

(assert (=> b!665781 (= res!433394 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19054 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665782 () Bool)

(declare-fun res!433385 () Bool)

(assert (=> b!665782 (=> res!433385 e!381411)))

(assert (=> b!665782 (= res!433385 (contains!3327 lt!310174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665783 () Bool)

(assert (=> b!665783 (= e!381411 true)))

(declare-fun lt!310173 () Bool)

(assert (=> b!665783 (= lt!310173 (contains!3327 lt!310174 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60000 res!433380) b!665773))

(assert (= (and b!665773 res!433392) b!665763))

(assert (= (and b!665763 res!433382) b!665768))

(assert (= (and b!665768 res!433391) b!665777))

(assert (= (and b!665777 res!433383) b!665760))

(assert (= (and b!665777 (not res!433378)) b!665772))

(assert (= (and b!665772 res!433395) b!665775))

(assert (= (and b!665777 res!433386) b!665780))

(assert (= (and b!665780 res!433387) b!665762))

(assert (= (and b!665762 res!433390) b!665769))

(assert (= (and b!665769 res!433397) b!665770))

(assert (= (and b!665770 res!433389) b!665766))

(assert (= (and b!665766 res!433396) b!665781))

(assert (= (and b!665781 res!433394) b!665759))

(assert (= (and b!665759 c!76559) b!665774))

(assert (= (and b!665759 (not c!76559)) b!665764))

(assert (= (and b!665759 c!76558) b!665779))

(assert (= (and b!665759 (not c!76558)) b!665776))

(assert (= (and b!665759 (not res!433384)) b!665761))

(assert (= (and b!665761 (not res!433379)) b!665771))

(assert (= (and b!665771 (not res!433393)) b!665765))

(assert (= (and b!665765 (not res!433381)) b!665778))

(assert (= (and b!665778 (not res!433388)) b!665767))

(assert (= (and b!665767 (not res!433377)) b!665782))

(assert (= (and b!665782 (not res!433385)) b!665783))

(declare-fun m!636747 () Bool)

(assert (=> b!665783 m!636747))

(declare-fun m!636749 () Bool)

(assert (=> b!665761 m!636749))

(declare-fun m!636751 () Bool)

(assert (=> start!60000 m!636751))

(declare-fun m!636753 () Bool)

(assert (=> b!665778 m!636753))

(declare-fun m!636755 () Bool)

(assert (=> b!665767 m!636755))

(declare-fun m!636757 () Bool)

(assert (=> b!665779 m!636757))

(declare-fun m!636759 () Bool)

(assert (=> b!665779 m!636759))

(declare-fun m!636761 () Bool)

(assert (=> b!665779 m!636761))

(declare-fun m!636763 () Bool)

(assert (=> b!665779 m!636763))

(assert (=> b!665779 m!636759))

(assert (=> b!665779 m!636761))

(declare-fun m!636765 () Bool)

(assert (=> b!665779 m!636765))

(declare-fun m!636767 () Bool)

(assert (=> b!665779 m!636767))

(declare-fun m!636769 () Bool)

(assert (=> b!665759 m!636769))

(assert (=> b!665759 m!636757))

(assert (=> b!665759 m!636759))

(declare-fun m!636771 () Bool)

(assert (=> b!665759 m!636771))

(declare-fun m!636773 () Bool)

(assert (=> b!665759 m!636773))

(assert (=> b!665759 m!636765))

(declare-fun m!636775 () Bool)

(assert (=> b!665759 m!636775))

(declare-fun m!636777 () Bool)

(assert (=> b!665759 m!636777))

(assert (=> b!665759 m!636759))

(declare-fun m!636779 () Bool)

(assert (=> b!665759 m!636779))

(declare-fun m!636781 () Bool)

(assert (=> b!665759 m!636781))

(assert (=> b!665759 m!636767))

(declare-fun m!636783 () Bool)

(assert (=> b!665773 m!636783))

(declare-fun m!636785 () Bool)

(assert (=> b!665782 m!636785))

(declare-fun m!636787 () Bool)

(assert (=> b!665780 m!636787))

(declare-fun m!636789 () Bool)

(assert (=> b!665765 m!636789))

(declare-fun m!636791 () Bool)

(assert (=> b!665766 m!636791))

(assert (=> b!665760 m!636789))

(declare-fun m!636793 () Bool)

(assert (=> b!665770 m!636793))

(assert (=> b!665775 m!636789))

(declare-fun m!636795 () Bool)

(assert (=> b!665763 m!636795))

(declare-fun m!636797 () Bool)

(assert (=> b!665762 m!636797))

(declare-fun m!636799 () Bool)

(assert (=> b!665774 m!636799))

(declare-fun m!636801 () Bool)

(assert (=> b!665768 m!636801))

(push 1)

(assert (not b!665766))

(assert (not b!665770))

(assert (not b!665762))

(assert (not b!665779))

(assert (not b!665763))

(assert (not b!665760))

(assert (not b!665778))

(assert (not b!665775))

(assert (not b!665767))

(assert (not b!665780))

(assert (not b!665759))

(assert (not b!665774))

(assert (not b!665768))

(assert (not b!665761))

(assert (not b!665783))

(assert (not b!665765))

(assert (not start!60000))

(assert (not b!665773))

(assert (not b!665782))

(check-sat)

(pop 1)

