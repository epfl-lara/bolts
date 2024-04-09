; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60048 () Bool)

(assert start!60048)

(declare-fun b!667559 () Bool)

(declare-fun res!434893 () Bool)

(declare-fun e!382055 () Bool)

(assert (=> b!667559 (=> res!434893 e!382055)))

(declare-datatypes ((List!12808 0))(
  ( (Nil!12805) (Cons!12804 (h!13849 (_ BitVec 64)) (t!19044 List!12808)) )
))
(declare-fun lt!310893 () List!12808)

(declare-fun contains!3351 (List!12808 (_ BitVec 64)) Bool)

(assert (=> b!667559 (= res!434893 (contains!3351 lt!310893 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667560 () Bool)

(declare-fun res!434898 () Bool)

(declare-fun e!382048 () Bool)

(assert (=> b!667560 (=> (not res!434898) (not e!382048))))

(declare-fun acc!681 () List!12808)

(assert (=> b!667560 (= res!434898 (not (contains!3351 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667561 () Bool)

(declare-fun res!434908 () Bool)

(assert (=> b!667561 (=> (not res!434908) (not e!382048))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667561 (= res!434908 (validKeyInArray!0 k!2843))))

(declare-fun b!667562 () Bool)

(declare-fun e!382052 () Bool)

(declare-fun e!382053 () Bool)

(assert (=> b!667562 (= e!382052 e!382053)))

(declare-fun res!434900 () Bool)

(assert (=> b!667562 (=> (not res!434900) (not e!382053))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667562 (= res!434900 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667563 () Bool)

(declare-datatypes ((Unit!23365 0))(
  ( (Unit!23366) )
))
(declare-fun e!382056 () Unit!23365)

(declare-fun lt!310898 () Unit!23365)

(assert (=> b!667563 (= e!382056 lt!310898)))

(declare-fun lt!310896 () Unit!23365)

(declare-fun lemmaListSubSeqRefl!0 (List!12808) Unit!23365)

(assert (=> b!667563 (= lt!310896 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!89 (List!12808 List!12808) Bool)

(assert (=> b!667563 (subseq!89 acc!681 acc!681)))

(declare-datatypes ((array!39051 0))(
  ( (array!39052 (arr!18714 (Array (_ BitVec 32) (_ BitVec 64))) (size!19078 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39051)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39051 List!12808 List!12808 (_ BitVec 32)) Unit!23365)

(declare-fun $colon$colon!220 (List!12808 (_ BitVec 64)) List!12808)

(assert (=> b!667563 (= lt!310898 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!220 acc!681 (select (arr!18714 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39051 (_ BitVec 32) List!12808) Bool)

(assert (=> b!667563 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667564 () Bool)

(assert (=> b!667564 (= e!382048 (not e!382055))))

(declare-fun res!434909 () Bool)

(assert (=> b!667564 (=> res!434909 e!382055)))

(assert (=> b!667564 (= res!434909 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667564 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310893)))

(declare-fun lt!310897 () Unit!23365)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39051 (_ BitVec 64) (_ BitVec 32) List!12808 List!12808) Unit!23365)

(assert (=> b!667564 (= lt!310897 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310893))))

(declare-fun -!87 (List!12808 (_ BitVec 64)) List!12808)

(assert (=> b!667564 (= (-!87 lt!310893 k!2843) acc!681)))

(assert (=> b!667564 (= lt!310893 ($colon$colon!220 acc!681 k!2843))))

(declare-fun lt!310894 () Unit!23365)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12808) Unit!23365)

(assert (=> b!667564 (= lt!310894 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!667564 (subseq!89 acc!681 acc!681)))

(declare-fun lt!310901 () Unit!23365)

(assert (=> b!667564 (= lt!310901 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667564 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310902 () Unit!23365)

(assert (=> b!667564 (= lt!310902 e!382056)))

(declare-fun c!76702 () Bool)

(assert (=> b!667564 (= c!76702 (validKeyInArray!0 (select (arr!18714 a!3626) from!3004)))))

(declare-fun lt!310900 () Unit!23365)

(declare-fun e!382049 () Unit!23365)

(assert (=> b!667564 (= lt!310900 e!382049)))

(declare-fun c!76703 () Bool)

(declare-fun arrayContainsKey!0 (array!39051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667564 (= c!76703 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667564 (arrayContainsKey!0 (array!39052 (store (arr!18714 a!3626) i!1382 k!2843) (size!19078 a!3626)) k!2843 from!3004)))

(declare-fun b!667565 () Bool)

(declare-fun e!382047 () Bool)

(declare-fun e!382051 () Bool)

(assert (=> b!667565 (= e!382047 e!382051)))

(declare-fun res!434902 () Bool)

(assert (=> b!667565 (=> (not res!434902) (not e!382051))))

(assert (=> b!667565 (= res!434902 (bvsle from!3004 i!1382))))

(declare-fun b!667566 () Bool)

(declare-fun res!434905 () Bool)

(assert (=> b!667566 (=> (not res!434905) (not e!382048))))

(assert (=> b!667566 (= res!434905 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19078 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667567 () Bool)

(assert (=> b!667567 (= e!382053 (not (contains!3351 lt!310893 k!2843)))))

(declare-fun b!667568 () Bool)

(declare-fun res!434904 () Bool)

(assert (=> b!667568 (=> (not res!434904) (not e!382048))))

(assert (=> b!667568 (= res!434904 e!382047)))

(declare-fun res!434894 () Bool)

(assert (=> b!667568 (=> res!434894 e!382047)))

(declare-fun e!382050 () Bool)

(assert (=> b!667568 (= res!434894 e!382050)))

(declare-fun res!434899 () Bool)

(assert (=> b!667568 (=> (not res!434899) (not e!382050))))

(assert (=> b!667568 (= res!434899 (bvsgt from!3004 i!1382))))

(declare-fun b!667569 () Bool)

(declare-fun Unit!23367 () Unit!23365)

(assert (=> b!667569 (= e!382049 Unit!23367)))

(declare-fun b!667570 () Bool)

(assert (=> b!667570 (= e!382050 (contains!3351 acc!681 k!2843))))

(declare-fun b!667571 () Bool)

(assert (=> b!667571 (= e!382055 true)))

(declare-fun lt!310899 () Bool)

(assert (=> b!667571 (= lt!310899 e!382052)))

(declare-fun res!434895 () Bool)

(assert (=> b!667571 (=> res!434895 e!382052)))

(declare-fun e!382054 () Bool)

(assert (=> b!667571 (= res!434895 e!382054)))

(declare-fun res!434890 () Bool)

(assert (=> b!667571 (=> (not res!434890) (not e!382054))))

(assert (=> b!667571 (= res!434890 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667572 () Bool)

(declare-fun res!434896 () Bool)

(assert (=> b!667572 (=> res!434896 e!382055)))

(assert (=> b!667572 (= res!434896 (contains!3351 lt!310893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667573 () Bool)

(assert (=> b!667573 (= e!382051 (not (contains!3351 acc!681 k!2843)))))

(declare-fun b!667574 () Bool)

(declare-fun res!434889 () Bool)

(assert (=> b!667574 (=> (not res!434889) (not e!382048))))

(assert (=> b!667574 (= res!434889 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19078 a!3626))))))

(declare-fun res!434891 () Bool)

(assert (=> start!60048 (=> (not res!434891) (not e!382048))))

(assert (=> start!60048 (= res!434891 (and (bvslt (size!19078 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19078 a!3626))))))

(assert (=> start!60048 e!382048))

(assert (=> start!60048 true))

(declare-fun array_inv!14488 (array!39051) Bool)

(assert (=> start!60048 (array_inv!14488 a!3626)))

(declare-fun b!667575 () Bool)

(assert (=> b!667575 (= e!382054 (contains!3351 lt!310893 k!2843))))

(declare-fun b!667576 () Bool)

(declare-fun res!434906 () Bool)

(assert (=> b!667576 (=> (not res!434906) (not e!382048))))

(assert (=> b!667576 (= res!434906 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12805))))

(declare-fun b!667577 () Bool)

(declare-fun res!434907 () Bool)

(assert (=> b!667577 (=> (not res!434907) (not e!382048))))

(assert (=> b!667577 (= res!434907 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667578 () Bool)

(declare-fun res!434903 () Bool)

(assert (=> b!667578 (=> (not res!434903) (not e!382048))))

(assert (=> b!667578 (= res!434903 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667579 () Bool)

(declare-fun res!434897 () Bool)

(assert (=> b!667579 (=> res!434897 e!382055)))

(declare-fun noDuplicate!598 (List!12808) Bool)

(assert (=> b!667579 (= res!434897 (not (noDuplicate!598 lt!310893)))))

(declare-fun b!667580 () Bool)

(declare-fun res!434892 () Bool)

(assert (=> b!667580 (=> (not res!434892) (not e!382048))))

(assert (=> b!667580 (= res!434892 (not (contains!3351 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667581 () Bool)

(declare-fun res!434901 () Bool)

(assert (=> b!667581 (=> (not res!434901) (not e!382048))))

(assert (=> b!667581 (= res!434901 (noDuplicate!598 acc!681))))

(declare-fun b!667582 () Bool)

(declare-fun Unit!23368 () Unit!23365)

(assert (=> b!667582 (= e!382049 Unit!23368)))

(declare-fun lt!310895 () Unit!23365)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39051 (_ BitVec 64) (_ BitVec 32)) Unit!23365)

(assert (=> b!667582 (= lt!310895 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667582 false))

(declare-fun b!667583 () Bool)

(declare-fun Unit!23369 () Unit!23365)

(assert (=> b!667583 (= e!382056 Unit!23369)))

(assert (= (and start!60048 res!434891) b!667581))

(assert (= (and b!667581 res!434901) b!667560))

(assert (= (and b!667560 res!434898) b!667580))

(assert (= (and b!667580 res!434892) b!667568))

(assert (= (and b!667568 res!434899) b!667570))

(assert (= (and b!667568 (not res!434894)) b!667565))

(assert (= (and b!667565 res!434902) b!667573))

(assert (= (and b!667568 res!434904) b!667576))

(assert (= (and b!667576 res!434906) b!667578))

(assert (= (and b!667578 res!434903) b!667574))

(assert (= (and b!667574 res!434889) b!667561))

(assert (= (and b!667561 res!434908) b!667577))

(assert (= (and b!667577 res!434907) b!667566))

(assert (= (and b!667566 res!434905) b!667564))

(assert (= (and b!667564 c!76703) b!667582))

(assert (= (and b!667564 (not c!76703)) b!667569))

(assert (= (and b!667564 c!76702) b!667563))

(assert (= (and b!667564 (not c!76702)) b!667583))

(assert (= (and b!667564 (not res!434909)) b!667579))

(assert (= (and b!667579 (not res!434897)) b!667572))

(assert (= (and b!667572 (not res!434896)) b!667559))

(assert (= (and b!667559 (not res!434893)) b!667571))

(assert (= (and b!667571 res!434890) b!667575))

(assert (= (and b!667571 (not res!434895)) b!667562))

(assert (= (and b!667562 res!434900) b!667567))

(declare-fun m!638103 () Bool)

(assert (=> start!60048 m!638103))

(declare-fun m!638105 () Bool)

(assert (=> b!667577 m!638105))

(declare-fun m!638107 () Bool)

(assert (=> b!667573 m!638107))

(declare-fun m!638109 () Bool)

(assert (=> b!667561 m!638109))

(declare-fun m!638111 () Bool)

(assert (=> b!667563 m!638111))

(declare-fun m!638113 () Bool)

(assert (=> b!667563 m!638113))

(declare-fun m!638115 () Bool)

(assert (=> b!667563 m!638115))

(declare-fun m!638117 () Bool)

(assert (=> b!667563 m!638117))

(assert (=> b!667563 m!638113))

(assert (=> b!667563 m!638115))

(declare-fun m!638119 () Bool)

(assert (=> b!667563 m!638119))

(declare-fun m!638121 () Bool)

(assert (=> b!667563 m!638121))

(declare-fun m!638123 () Bool)

(assert (=> b!667582 m!638123))

(declare-fun m!638125 () Bool)

(assert (=> b!667575 m!638125))

(declare-fun m!638127 () Bool)

(assert (=> b!667579 m!638127))

(assert (=> b!667567 m!638125))

(declare-fun m!638129 () Bool)

(assert (=> b!667581 m!638129))

(assert (=> b!667570 m!638107))

(assert (=> b!667564 m!638111))

(assert (=> b!667564 m!638113))

(declare-fun m!638131 () Bool)

(assert (=> b!667564 m!638131))

(declare-fun m!638133 () Bool)

(assert (=> b!667564 m!638133))

(declare-fun m!638135 () Bool)

(assert (=> b!667564 m!638135))

(declare-fun m!638137 () Bool)

(assert (=> b!667564 m!638137))

(declare-fun m!638139 () Bool)

(assert (=> b!667564 m!638139))

(assert (=> b!667564 m!638119))

(declare-fun m!638141 () Bool)

(assert (=> b!667564 m!638141))

(declare-fun m!638143 () Bool)

(assert (=> b!667564 m!638143))

(assert (=> b!667564 m!638113))

(declare-fun m!638145 () Bool)

(assert (=> b!667564 m!638145))

(declare-fun m!638147 () Bool)

(assert (=> b!667564 m!638147))

(assert (=> b!667564 m!638121))

(declare-fun m!638149 () Bool)

(assert (=> b!667576 m!638149))

(declare-fun m!638151 () Bool)

(assert (=> b!667578 m!638151))

(declare-fun m!638153 () Bool)

(assert (=> b!667580 m!638153))

(declare-fun m!638155 () Bool)

(assert (=> b!667572 m!638155))

(declare-fun m!638157 () Bool)

(assert (=> b!667559 m!638157))

(declare-fun m!638159 () Bool)

(assert (=> b!667560 m!638159))

(push 1)

(assert (not b!667576))

(assert (not b!667575))

(assert (not b!667572))

(assert (not b!667560))

(assert (not b!667563))

(assert (not b!667577))

(assert (not b!667581))

(assert (not b!667582))

(assert (not b!667580))

(assert (not b!667578))

(assert (not start!60048))

(assert (not b!667559))

(assert (not b!667561))

(assert (not b!667567))

(assert (not b!667573))

(assert (not b!667564))

(assert (not b!667570))

(assert (not b!667579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

