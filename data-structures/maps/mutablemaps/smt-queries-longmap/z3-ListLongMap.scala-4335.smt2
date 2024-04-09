; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60056 () Bool)

(assert start!60056)

(declare-fun b!667859 () Bool)

(declare-fun e!382186 () Bool)

(assert (=> b!667859 (= e!382186 true)))

(declare-fun lt!311020 () Bool)

(declare-fun e!382183 () Bool)

(assert (=> b!667859 (= lt!311020 e!382183)))

(declare-fun res!435157 () Bool)

(assert (=> b!667859 (=> res!435157 e!382183)))

(declare-fun e!382189 () Bool)

(assert (=> b!667859 (= res!435157 e!382189)))

(declare-fun res!435143 () Bool)

(assert (=> b!667859 (=> (not res!435143) (not e!382189))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667859 (= res!435143 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667860 () Bool)

(declare-datatypes ((Unit!23385 0))(
  ( (Unit!23386) )
))
(declare-fun e!382180 () Unit!23385)

(declare-fun lt!311017 () Unit!23385)

(assert (=> b!667860 (= e!382180 lt!311017)))

(declare-fun lt!311014 () Unit!23385)

(declare-datatypes ((List!12812 0))(
  ( (Nil!12809) (Cons!12808 (h!13853 (_ BitVec 64)) (t!19048 List!12812)) )
))
(declare-fun acc!681 () List!12812)

(declare-fun lemmaListSubSeqRefl!0 (List!12812) Unit!23385)

(assert (=> b!667860 (= lt!311014 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!93 (List!12812 List!12812) Bool)

(assert (=> b!667860 (subseq!93 acc!681 acc!681)))

(declare-datatypes ((array!39059 0))(
  ( (array!39060 (arr!18718 (Array (_ BitVec 32) (_ BitVec 64))) (size!19082 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39059)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39059 List!12812 List!12812 (_ BitVec 32)) Unit!23385)

(declare-fun $colon$colon!224 (List!12812 (_ BitVec 64)) List!12812)

(assert (=> b!667860 (= lt!311017 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!224 acc!681 (select (arr!18718 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39059 (_ BitVec 32) List!12812) Bool)

(assert (=> b!667860 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667861 () Bool)

(declare-fun res!435151 () Bool)

(declare-fun e!382181 () Bool)

(assert (=> b!667861 (=> (not res!435151) (not e!382181))))

(assert (=> b!667861 (= res!435151 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12809))))

(declare-fun b!667862 () Bool)

(declare-fun e!382185 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3355 (List!12812 (_ BitVec 64)) Bool)

(assert (=> b!667862 (= e!382185 (not (contains!3355 acc!681 k0!2843)))))

(declare-fun b!667863 () Bool)

(declare-fun Unit!23387 () Unit!23385)

(assert (=> b!667863 (= e!382180 Unit!23387)))

(declare-fun b!667864 () Bool)

(declare-fun e!382179 () Unit!23385)

(declare-fun Unit!23388 () Unit!23385)

(assert (=> b!667864 (= e!382179 Unit!23388)))

(declare-fun lt!311021 () Unit!23385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39059 (_ BitVec 64) (_ BitVec 32)) Unit!23385)

(assert (=> b!667864 (= lt!311021 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!667864 false))

(declare-fun b!667865 () Bool)

(declare-fun lt!311015 () List!12812)

(assert (=> b!667865 (= e!382189 (contains!3355 lt!311015 k0!2843))))

(declare-fun b!667866 () Bool)

(declare-fun e!382187 () Bool)

(assert (=> b!667866 (= e!382187 (not (contains!3355 lt!311015 k0!2843)))))

(declare-fun b!667867 () Bool)

(declare-fun res!435149 () Bool)

(assert (=> b!667867 (=> (not res!435149) (not e!382181))))

(declare-fun arrayContainsKey!0 (array!39059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667867 (= res!435149 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667868 () Bool)

(declare-fun res!435153 () Bool)

(assert (=> b!667868 (=> (not res!435153) (not e!382181))))

(assert (=> b!667868 (= res!435153 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667869 () Bool)

(assert (=> b!667869 (= e!382183 e!382187)))

(declare-fun res!435152 () Bool)

(assert (=> b!667869 (=> (not res!435152) (not e!382187))))

(assert (=> b!667869 (= res!435152 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667870 () Bool)

(declare-fun Unit!23389 () Unit!23385)

(assert (=> b!667870 (= e!382179 Unit!23389)))

(declare-fun b!667871 () Bool)

(declare-fun res!435159 () Bool)

(assert (=> b!667871 (=> (not res!435159) (not e!382181))))

(assert (=> b!667871 (= res!435159 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19082 a!3626))))))

(declare-fun b!667872 () Bool)

(declare-fun res!435145 () Bool)

(assert (=> b!667872 (=> (not res!435145) (not e!382181))))

(assert (=> b!667872 (= res!435145 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19082 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667873 () Bool)

(declare-fun res!435155 () Bool)

(assert (=> b!667873 (=> (not res!435155) (not e!382181))))

(declare-fun e!382188 () Bool)

(assert (=> b!667873 (= res!435155 e!382188)))

(declare-fun res!435160 () Bool)

(assert (=> b!667873 (=> res!435160 e!382188)))

(declare-fun e!382184 () Bool)

(assert (=> b!667873 (= res!435160 e!382184)))

(declare-fun res!435148 () Bool)

(assert (=> b!667873 (=> (not res!435148) (not e!382184))))

(assert (=> b!667873 (= res!435148 (bvsgt from!3004 i!1382))))

(declare-fun b!667874 () Bool)

(declare-fun res!435141 () Bool)

(assert (=> b!667874 (=> (not res!435141) (not e!382181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667874 (= res!435141 (validKeyInArray!0 k0!2843))))

(declare-fun b!667875 () Bool)

(assert (=> b!667875 (= e!382181 (not e!382186))))

(declare-fun res!435146 () Bool)

(assert (=> b!667875 (=> res!435146 e!382186)))

(assert (=> b!667875 (= res!435146 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667875 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311015)))

(declare-fun lt!311022 () Unit!23385)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39059 (_ BitVec 64) (_ BitVec 32) List!12812 List!12812) Unit!23385)

(assert (=> b!667875 (= lt!311022 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311015))))

(declare-fun -!91 (List!12812 (_ BitVec 64)) List!12812)

(assert (=> b!667875 (= (-!91 lt!311015 k0!2843) acc!681)))

(assert (=> b!667875 (= lt!311015 ($colon$colon!224 acc!681 k0!2843))))

(declare-fun lt!311013 () Unit!23385)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12812) Unit!23385)

(assert (=> b!667875 (= lt!311013 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!667875 (subseq!93 acc!681 acc!681)))

(declare-fun lt!311019 () Unit!23385)

(assert (=> b!667875 (= lt!311019 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667875 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311018 () Unit!23385)

(assert (=> b!667875 (= lt!311018 e!382180)))

(declare-fun c!76727 () Bool)

(assert (=> b!667875 (= c!76727 (validKeyInArray!0 (select (arr!18718 a!3626) from!3004)))))

(declare-fun lt!311016 () Unit!23385)

(assert (=> b!667875 (= lt!311016 e!382179)))

(declare-fun c!76726 () Bool)

(assert (=> b!667875 (= c!76726 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667875 (arrayContainsKey!0 (array!39060 (store (arr!18718 a!3626) i!1382 k0!2843) (size!19082 a!3626)) k0!2843 from!3004)))

(declare-fun b!667876 () Bool)

(declare-fun res!435150 () Bool)

(assert (=> b!667876 (=> res!435150 e!382186)))

(assert (=> b!667876 (= res!435150 (contains!3355 lt!311015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667877 () Bool)

(assert (=> b!667877 (= e!382188 e!382185)))

(declare-fun res!435158 () Bool)

(assert (=> b!667877 (=> (not res!435158) (not e!382185))))

(assert (=> b!667877 (= res!435158 (bvsle from!3004 i!1382))))

(declare-fun b!667878 () Bool)

(declare-fun res!435156 () Bool)

(assert (=> b!667878 (=> (not res!435156) (not e!382181))))

(assert (=> b!667878 (= res!435156 (not (contains!3355 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667879 () Bool)

(declare-fun res!435142 () Bool)

(assert (=> b!667879 (=> (not res!435142) (not e!382181))))

(declare-fun noDuplicate!602 (List!12812) Bool)

(assert (=> b!667879 (= res!435142 (noDuplicate!602 acc!681))))

(declare-fun res!435154 () Bool)

(assert (=> start!60056 (=> (not res!435154) (not e!382181))))

(assert (=> start!60056 (= res!435154 (and (bvslt (size!19082 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19082 a!3626))))))

(assert (=> start!60056 e!382181))

(assert (=> start!60056 true))

(declare-fun array_inv!14492 (array!39059) Bool)

(assert (=> start!60056 (array_inv!14492 a!3626)))

(declare-fun b!667880 () Bool)

(declare-fun res!435161 () Bool)

(assert (=> b!667880 (=> (not res!435161) (not e!382181))))

(assert (=> b!667880 (= res!435161 (not (contains!3355 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667881 () Bool)

(declare-fun res!435144 () Bool)

(assert (=> b!667881 (=> res!435144 e!382186)))

(assert (=> b!667881 (= res!435144 (contains!3355 lt!311015 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667882 () Bool)

(declare-fun res!435147 () Bool)

(assert (=> b!667882 (=> res!435147 e!382186)))

(assert (=> b!667882 (= res!435147 (not (noDuplicate!602 lt!311015)))))

(declare-fun b!667883 () Bool)

(assert (=> b!667883 (= e!382184 (contains!3355 acc!681 k0!2843))))

(assert (= (and start!60056 res!435154) b!667879))

(assert (= (and b!667879 res!435142) b!667878))

(assert (= (and b!667878 res!435156) b!667880))

(assert (= (and b!667880 res!435161) b!667873))

(assert (= (and b!667873 res!435148) b!667883))

(assert (= (and b!667873 (not res!435160)) b!667877))

(assert (= (and b!667877 res!435158) b!667862))

(assert (= (and b!667873 res!435155) b!667861))

(assert (= (and b!667861 res!435151) b!667868))

(assert (= (and b!667868 res!435153) b!667871))

(assert (= (and b!667871 res!435159) b!667874))

(assert (= (and b!667874 res!435141) b!667867))

(assert (= (and b!667867 res!435149) b!667872))

(assert (= (and b!667872 res!435145) b!667875))

(assert (= (and b!667875 c!76726) b!667864))

(assert (= (and b!667875 (not c!76726)) b!667870))

(assert (= (and b!667875 c!76727) b!667860))

(assert (= (and b!667875 (not c!76727)) b!667863))

(assert (= (and b!667875 (not res!435146)) b!667882))

(assert (= (and b!667882 (not res!435147)) b!667876))

(assert (= (and b!667876 (not res!435150)) b!667881))

(assert (= (and b!667881 (not res!435144)) b!667859))

(assert (= (and b!667859 res!435143) b!667865))

(assert (= (and b!667859 (not res!435157)) b!667869))

(assert (= (and b!667869 res!435152) b!667866))

(declare-fun m!638335 () Bool)

(assert (=> b!667876 m!638335))

(declare-fun m!638337 () Bool)

(assert (=> b!667880 m!638337))

(declare-fun m!638339 () Bool)

(assert (=> b!667860 m!638339))

(declare-fun m!638341 () Bool)

(assert (=> b!667860 m!638341))

(declare-fun m!638343 () Bool)

(assert (=> b!667860 m!638343))

(declare-fun m!638345 () Bool)

(assert (=> b!667860 m!638345))

(assert (=> b!667860 m!638341))

(assert (=> b!667860 m!638343))

(declare-fun m!638347 () Bool)

(assert (=> b!667860 m!638347))

(declare-fun m!638349 () Bool)

(assert (=> b!667860 m!638349))

(declare-fun m!638351 () Bool)

(assert (=> b!667875 m!638351))

(assert (=> b!667875 m!638339))

(assert (=> b!667875 m!638341))

(declare-fun m!638353 () Bool)

(assert (=> b!667875 m!638353))

(declare-fun m!638355 () Bool)

(assert (=> b!667875 m!638355))

(declare-fun m!638357 () Bool)

(assert (=> b!667875 m!638357))

(declare-fun m!638359 () Bool)

(assert (=> b!667875 m!638359))

(assert (=> b!667875 m!638347))

(declare-fun m!638361 () Bool)

(assert (=> b!667875 m!638361))

(declare-fun m!638363 () Bool)

(assert (=> b!667875 m!638363))

(assert (=> b!667875 m!638341))

(declare-fun m!638365 () Bool)

(assert (=> b!667875 m!638365))

(declare-fun m!638367 () Bool)

(assert (=> b!667875 m!638367))

(assert (=> b!667875 m!638349))

(declare-fun m!638369 () Bool)

(assert (=> b!667866 m!638369))

(declare-fun m!638371 () Bool)

(assert (=> b!667883 m!638371))

(assert (=> b!667865 m!638369))

(declare-fun m!638373 () Bool)

(assert (=> b!667867 m!638373))

(declare-fun m!638375 () Bool)

(assert (=> b!667864 m!638375))

(declare-fun m!638377 () Bool)

(assert (=> start!60056 m!638377))

(declare-fun m!638379 () Bool)

(assert (=> b!667882 m!638379))

(declare-fun m!638381 () Bool)

(assert (=> b!667861 m!638381))

(declare-fun m!638383 () Bool)

(assert (=> b!667878 m!638383))

(declare-fun m!638385 () Bool)

(assert (=> b!667881 m!638385))

(declare-fun m!638387 () Bool)

(assert (=> b!667879 m!638387))

(declare-fun m!638389 () Bool)

(assert (=> b!667874 m!638389))

(assert (=> b!667862 m!638371))

(declare-fun m!638391 () Bool)

(assert (=> b!667868 m!638391))

(check-sat (not b!667874) (not b!667881) (not b!667879) (not b!667861) (not b!667862) (not b!667875) (not start!60056) (not b!667865) (not b!667868) (not b!667883) (not b!667878) (not b!667880) (not b!667882) (not b!667867) (not b!667876) (not b!667860) (not b!667864) (not b!667866))
(check-sat)
