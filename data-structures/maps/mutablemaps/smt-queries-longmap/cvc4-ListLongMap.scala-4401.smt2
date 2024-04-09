; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60526 () Bool)

(assert start!60526)

(declare-fun b!680071 () Bool)

(declare-fun res!446527 () Bool)

(declare-fun e!387355 () Bool)

(assert (=> b!680071 (=> (not res!446527) (not e!387355))))

(declare-datatypes ((List!13011 0))(
  ( (Nil!13008) (Cons!13007 (h!14052 (_ BitVec 64)) (t!19247 List!13011)) )
))
(declare-fun acc!681 () List!13011)

(declare-fun contains!3554 (List!13011 (_ BitVec 64)) Bool)

(assert (=> b!680071 (= res!446527 (not (contains!3554 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680072 () Bool)

(declare-fun res!446518 () Bool)

(assert (=> b!680072 (=> (not res!446518) (not e!387355))))

(declare-fun e!387359 () Bool)

(assert (=> b!680072 (= res!446518 e!387359)))

(declare-fun res!446523 () Bool)

(assert (=> b!680072 (=> res!446523 e!387359)))

(declare-fun e!387356 () Bool)

(assert (=> b!680072 (= res!446523 e!387356)))

(declare-fun res!446522 () Bool)

(assert (=> b!680072 (=> (not res!446522) (not e!387356))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680072 (= res!446522 (bvsgt from!3004 i!1382))))

(declare-fun b!680074 () Bool)

(declare-fun e!387358 () Bool)

(assert (=> b!680074 (= e!387358 true)))

(declare-fun subseq!139 (List!13011 List!13011) Bool)

(assert (=> b!680074 (subseq!139 acc!681 acc!681)))

(declare-datatypes ((Unit!23838 0))(
  ( (Unit!23839) )
))
(declare-fun lt!312998 () Unit!23838)

(declare-fun lemmaListSubSeqRefl!0 (List!13011) Unit!23838)

(assert (=> b!680074 (= lt!312998 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680075 () Bool)

(declare-fun e!387361 () Unit!23838)

(declare-fun Unit!23840 () Unit!23838)

(assert (=> b!680075 (= e!387361 Unit!23840)))

(declare-fun lt!312997 () Unit!23838)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39463 0))(
  ( (array!39464 (arr!18917 (Array (_ BitVec 32) (_ BitVec 64))) (size!19281 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39463)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39463 (_ BitVec 64) (_ BitVec 32)) Unit!23838)

(assert (=> b!680075 (= lt!312997 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680075 false))

(declare-fun b!680076 () Bool)

(assert (=> b!680076 (= e!387356 (contains!3554 acc!681 k!2843))))

(declare-fun b!680077 () Bool)

(declare-fun res!446526 () Bool)

(assert (=> b!680077 (=> (not res!446526) (not e!387355))))

(declare-fun arrayNoDuplicates!0 (array!39463 (_ BitVec 32) List!13011) Bool)

(assert (=> b!680077 (= res!446526 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680078 () Bool)

(declare-fun res!446517 () Bool)

(assert (=> b!680078 (=> (not res!446517) (not e!387355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680078 (= res!446517 (validKeyInArray!0 k!2843))))

(declare-fun b!680079 () Bool)

(declare-fun res!446521 () Bool)

(assert (=> b!680079 (=> (not res!446521) (not e!387355))))

(assert (=> b!680079 (= res!446521 (not (contains!3554 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680080 () Bool)

(assert (=> b!680080 (= e!387355 (not e!387358))))

(declare-fun res!446528 () Bool)

(assert (=> b!680080 (=> res!446528 e!387358)))

(assert (=> b!680080 (= res!446528 (not (validKeyInArray!0 (select (arr!18917 a!3626) from!3004))))))

(declare-fun lt!312999 () Unit!23838)

(assert (=> b!680080 (= lt!312999 e!387361)))

(declare-fun c!77144 () Bool)

(declare-fun arrayContainsKey!0 (array!39463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680080 (= c!77144 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680080 (arrayContainsKey!0 (array!39464 (store (arr!18917 a!3626) i!1382 k!2843) (size!19281 a!3626)) k!2843 from!3004)))

(declare-fun b!680081 () Bool)

(declare-fun Unit!23841 () Unit!23838)

(assert (=> b!680081 (= e!387361 Unit!23841)))

(declare-fun b!680082 () Bool)

(declare-fun res!446525 () Bool)

(assert (=> b!680082 (=> (not res!446525) (not e!387355))))

(assert (=> b!680082 (= res!446525 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19281 a!3626))))))

(declare-fun b!680083 () Bool)

(declare-fun e!387357 () Bool)

(assert (=> b!680083 (= e!387357 (not (contains!3554 acc!681 k!2843)))))

(declare-fun b!680084 () Bool)

(declare-fun res!446531 () Bool)

(assert (=> b!680084 (=> (not res!446531) (not e!387355))))

(assert (=> b!680084 (= res!446531 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680085 () Bool)

(declare-fun res!446519 () Bool)

(assert (=> b!680085 (=> (not res!446519) (not e!387355))))

(assert (=> b!680085 (= res!446519 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19281 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680073 () Bool)

(assert (=> b!680073 (= e!387359 e!387357)))

(declare-fun res!446530 () Bool)

(assert (=> b!680073 (=> (not res!446530) (not e!387357))))

(assert (=> b!680073 (= res!446530 (bvsle from!3004 i!1382))))

(declare-fun res!446529 () Bool)

(assert (=> start!60526 (=> (not res!446529) (not e!387355))))

(assert (=> start!60526 (= res!446529 (and (bvslt (size!19281 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19281 a!3626))))))

(assert (=> start!60526 e!387355))

(assert (=> start!60526 true))

(declare-fun array_inv!14691 (array!39463) Bool)

(assert (=> start!60526 (array_inv!14691 a!3626)))

(declare-fun b!680086 () Bool)

(declare-fun res!446520 () Bool)

(assert (=> b!680086 (=> (not res!446520) (not e!387355))))

(assert (=> b!680086 (= res!446520 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13008))))

(declare-fun b!680087 () Bool)

(declare-fun res!446524 () Bool)

(assert (=> b!680087 (=> (not res!446524) (not e!387355))))

(declare-fun noDuplicate!801 (List!13011) Bool)

(assert (=> b!680087 (= res!446524 (noDuplicate!801 acc!681))))

(assert (= (and start!60526 res!446529) b!680087))

(assert (= (and b!680087 res!446524) b!680071))

(assert (= (and b!680071 res!446527) b!680079))

(assert (= (and b!680079 res!446521) b!680072))

(assert (= (and b!680072 res!446522) b!680076))

(assert (= (and b!680072 (not res!446523)) b!680073))

(assert (= (and b!680073 res!446530) b!680083))

(assert (= (and b!680072 res!446518) b!680086))

(assert (= (and b!680086 res!446520) b!680077))

(assert (= (and b!680077 res!446526) b!680082))

(assert (= (and b!680082 res!446525) b!680078))

(assert (= (and b!680078 res!446517) b!680084))

(assert (= (and b!680084 res!446531) b!680085))

(assert (= (and b!680085 res!446519) b!680080))

(assert (= (and b!680080 c!77144) b!680075))

(assert (= (and b!680080 (not c!77144)) b!680081))

(assert (= (and b!680080 (not res!446528)) b!680074))

(declare-fun m!645245 () Bool)

(assert (=> b!680077 m!645245))

(declare-fun m!645247 () Bool)

(assert (=> b!680078 m!645247))

(declare-fun m!645249 () Bool)

(assert (=> b!680076 m!645249))

(declare-fun m!645251 () Bool)

(assert (=> b!680084 m!645251))

(declare-fun m!645253 () Bool)

(assert (=> b!680071 m!645253))

(declare-fun m!645255 () Bool)

(assert (=> b!680087 m!645255))

(declare-fun m!645257 () Bool)

(assert (=> b!680079 m!645257))

(declare-fun m!645259 () Bool)

(assert (=> b!680075 m!645259))

(declare-fun m!645261 () Bool)

(assert (=> b!680080 m!645261))

(declare-fun m!645263 () Bool)

(assert (=> b!680080 m!645263))

(declare-fun m!645265 () Bool)

(assert (=> b!680080 m!645265))

(assert (=> b!680080 m!645261))

(declare-fun m!645267 () Bool)

(assert (=> b!680080 m!645267))

(declare-fun m!645269 () Bool)

(assert (=> b!680080 m!645269))

(declare-fun m!645271 () Bool)

(assert (=> start!60526 m!645271))

(assert (=> b!680083 m!645249))

(declare-fun m!645273 () Bool)

(assert (=> b!680074 m!645273))

(declare-fun m!645275 () Bool)

(assert (=> b!680074 m!645275))

(declare-fun m!645277 () Bool)

(assert (=> b!680086 m!645277))

(push 1)

(assert (not b!680084))

(assert (not b!680086))

(assert (not b!680077))

(assert (not b!680078))

(assert (not b!680076))

(assert (not b!680083))

(assert (not b!680074))

(assert (not b!680080))

(assert (not b!680075))

(assert (not b!680071))

(assert (not start!60526))

(assert (not b!680087))

(assert (not b!680079))

(check-sat)

