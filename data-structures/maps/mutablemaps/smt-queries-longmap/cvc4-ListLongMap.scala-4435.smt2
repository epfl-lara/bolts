; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61606 () Bool)

(assert start!61606)

(declare-fun b!689341 () Bool)

(declare-datatypes ((Unit!24332 0))(
  ( (Unit!24333) )
))
(declare-fun e!392482 () Unit!24332)

(declare-fun Unit!24334 () Unit!24332)

(assert (=> b!689341 (= e!392482 Unit!24334)))

(declare-fun b!689342 () Bool)

(declare-fun res!454059 () Bool)

(declare-fun e!392479 () Bool)

(assert (=> b!689342 (=> (not res!454059) (not e!392479))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39703 0))(
  ( (array!39704 (arr!19019 (Array (_ BitVec 32) (_ BitVec 64))) (size!19400 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39703)

(assert (=> b!689342 (= res!454059 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19400 a!3626))))))

(declare-fun b!689343 () Bool)

(declare-fun e!392484 () Bool)

(assert (=> b!689343 (= e!392479 (not e!392484))))

(declare-fun res!454053 () Bool)

(assert (=> b!689343 (=> res!454053 e!392484)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!689343 (= res!454053 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13113 0))(
  ( (Nil!13110) (Cons!13109 (h!14154 (_ BitVec 64)) (t!19385 List!13113)) )
))
(declare-fun lt!316154 () List!13113)

(declare-fun arrayNoDuplicates!0 (array!39703 (_ BitVec 32) List!13113) Bool)

(assert (=> b!689343 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316154)))

(declare-fun lt!316158 () Unit!24332)

(declare-fun acc!681 () List!13113)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39703 (_ BitVec 64) (_ BitVec 32) List!13113 List!13113) Unit!24332)

(assert (=> b!689343 (= lt!316158 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316154))))

(declare-fun -!206 (List!13113 (_ BitVec 64)) List!13113)

(assert (=> b!689343 (= (-!206 lt!316154 k!2843) acc!681)))

(declare-fun $colon$colon!405 (List!13113 (_ BitVec 64)) List!13113)

(assert (=> b!689343 (= lt!316154 ($colon$colon!405 acc!681 k!2843))))

(declare-fun lt!316153 () Unit!24332)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13113) Unit!24332)

(assert (=> b!689343 (= lt!316153 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!241 (List!13113 List!13113) Bool)

(assert (=> b!689343 (subseq!241 acc!681 acc!681)))

(declare-fun lt!316156 () Unit!24332)

(declare-fun lemmaListSubSeqRefl!0 (List!13113) Unit!24332)

(assert (=> b!689343 (= lt!316156 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689343 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316155 () Unit!24332)

(assert (=> b!689343 (= lt!316155 e!392482)))

(declare-fun c!78017 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689343 (= c!78017 (validKeyInArray!0 (select (arr!19019 a!3626) from!3004)))))

(declare-fun lt!316151 () Unit!24332)

(declare-fun e!392478 () Unit!24332)

(assert (=> b!689343 (= lt!316151 e!392478)))

(declare-fun c!78016 () Bool)

(declare-fun arrayContainsKey!0 (array!39703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689343 (= c!78016 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!316148 () array!39703)

(assert (=> b!689343 (arrayContainsKey!0 lt!316148 k!2843 from!3004)))

(assert (=> b!689343 (= lt!316148 (array!39704 (store (arr!19019 a!3626) i!1382 k!2843) (size!19400 a!3626)))))

(declare-fun b!689344 () Bool)

(declare-fun res!454046 () Bool)

(assert (=> b!689344 (=> res!454046 e!392484)))

(declare-fun contains!3656 (List!13113 (_ BitVec 64)) Bool)

(assert (=> b!689344 (= res!454046 (contains!3656 lt!316154 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689346 () Bool)

(declare-fun e!392485 () Bool)

(assert (=> b!689346 (= e!392485 (contains!3656 acc!681 k!2843))))

(declare-fun b!689347 () Bool)

(declare-fun e!392475 () Bool)

(declare-fun e!392483 () Bool)

(assert (=> b!689347 (= e!392475 e!392483)))

(declare-fun res!454051 () Bool)

(assert (=> b!689347 (=> (not res!454051) (not e!392483))))

(assert (=> b!689347 (= res!454051 (bvsle from!3004 i!1382))))

(declare-fun b!689348 () Bool)

(declare-fun res!454047 () Bool)

(assert (=> b!689348 (=> (not res!454047) (not e!392479))))

(assert (=> b!689348 (= res!454047 e!392475)))

(declare-fun res!454056 () Bool)

(assert (=> b!689348 (=> res!454056 e!392475)))

(assert (=> b!689348 (= res!454056 e!392485)))

(declare-fun res!454045 () Bool)

(assert (=> b!689348 (=> (not res!454045) (not e!392485))))

(assert (=> b!689348 (= res!454045 (bvsgt from!3004 i!1382))))

(declare-fun b!689349 () Bool)

(declare-fun res!454052 () Bool)

(assert (=> b!689349 (=> (not res!454052) (not e!392479))))

(assert (=> b!689349 (= res!454052 (validKeyInArray!0 k!2843))))

(declare-fun b!689350 () Bool)

(declare-fun res!454060 () Bool)

(assert (=> b!689350 (=> (not res!454060) (not e!392479))))

(declare-fun noDuplicate!903 (List!13113) Bool)

(assert (=> b!689350 (= res!454060 (noDuplicate!903 acc!681))))

(declare-fun b!689351 () Bool)

(declare-fun e!392480 () Bool)

(assert (=> b!689351 (= e!392480 (not (contains!3656 lt!316154 k!2843)))))

(declare-fun b!689352 () Bool)

(declare-fun res!454054 () Bool)

(assert (=> b!689352 (=> (not res!454054) (not e!392479))))

(assert (=> b!689352 (= res!454054 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689353 () Bool)

(declare-fun res!454058 () Bool)

(assert (=> b!689353 (=> (not res!454058) (not e!392479))))

(assert (=> b!689353 (= res!454058 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13110))))

(declare-fun b!689354 () Bool)

(declare-fun res!454050 () Bool)

(assert (=> b!689354 (=> res!454050 e!392484)))

(declare-fun e!392476 () Bool)

(assert (=> b!689354 (= res!454050 e!392476)))

(declare-fun res!454048 () Bool)

(assert (=> b!689354 (=> (not res!454048) (not e!392476))))

(assert (=> b!689354 (= res!454048 e!392480)))

(declare-fun res!454044 () Bool)

(assert (=> b!689354 (=> res!454044 e!392480)))

(assert (=> b!689354 (= res!454044 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689355 () Bool)

(declare-fun res!454064 () Bool)

(assert (=> b!689355 (=> (not res!454064) (not e!392479))))

(assert (=> b!689355 (= res!454064 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689356 () Bool)

(declare-fun Unit!24335 () Unit!24332)

(assert (=> b!689356 (= e!392478 Unit!24335)))

(declare-fun lt!316149 () Unit!24332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39703 (_ BitVec 64) (_ BitVec 32)) Unit!24332)

(assert (=> b!689356 (= lt!316149 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!689356 false))

(declare-fun b!689357 () Bool)

(declare-fun res!454062 () Bool)

(assert (=> b!689357 (=> (not res!454062) (not e!392479))))

(assert (=> b!689357 (= res!454062 (not (contains!3656 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689358 () Bool)

(declare-fun res!454049 () Bool)

(assert (=> b!689358 (=> (not res!454049) (not e!392479))))

(assert (=> b!689358 (= res!454049 (not (contains!3656 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!454055 () Bool)

(assert (=> start!61606 (=> (not res!454055) (not e!392479))))

(assert (=> start!61606 (= res!454055 (and (bvslt (size!19400 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19400 a!3626))))))

(assert (=> start!61606 e!392479))

(assert (=> start!61606 true))

(declare-fun array_inv!14793 (array!39703) Bool)

(assert (=> start!61606 (array_inv!14793 a!3626)))

(declare-fun b!689345 () Bool)

(declare-fun e!392477 () Bool)

(assert (=> b!689345 (= e!392476 e!392477)))

(declare-fun res!454057 () Bool)

(assert (=> b!689345 (=> res!454057 e!392477)))

(assert (=> b!689345 (= res!454057 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689359 () Bool)

(declare-fun Unit!24336 () Unit!24332)

(assert (=> b!689359 (= e!392478 Unit!24336)))

(declare-fun b!689360 () Bool)

(assert (=> b!689360 (= e!392477 (contains!3656 lt!316154 k!2843))))

(declare-fun b!689361 () Bool)

(assert (=> b!689361 (= e!392483 (not (contains!3656 acc!681 k!2843)))))

(declare-fun b!689362 () Bool)

(declare-fun res!454043 () Bool)

(assert (=> b!689362 (=> res!454043 e!392484)))

(assert (=> b!689362 (= res!454043 (not (noDuplicate!903 lt!316154)))))

(declare-fun b!689363 () Bool)

(declare-fun res!454063 () Bool)

(assert (=> b!689363 (=> res!454063 e!392484)))

(assert (=> b!689363 (= res!454063 (contains!3656 lt!316154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689364 () Bool)

(assert (=> b!689364 (= e!392484 true)))

(assert (=> b!689364 (arrayNoDuplicates!0 lt!316148 (bvadd #b00000000000000000000000000000001 from!3004) lt!316154)))

(declare-fun lt!316152 () Unit!24332)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39703 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13113) Unit!24332)

(assert (=> b!689364 (= lt!316152 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316154))))

(declare-fun b!689365 () Bool)

(declare-fun lt!316150 () Unit!24332)

(assert (=> b!689365 (= e!392482 lt!316150)))

(declare-fun lt!316157 () Unit!24332)

(assert (=> b!689365 (= lt!316157 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689365 (subseq!241 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39703 List!13113 List!13113 (_ BitVec 32)) Unit!24332)

(assert (=> b!689365 (= lt!316150 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!405 acc!681 (select (arr!19019 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689365 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689366 () Bool)

(declare-fun res!454061 () Bool)

(assert (=> b!689366 (=> (not res!454061) (not e!392479))))

(assert (=> b!689366 (= res!454061 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19400 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!61606 res!454055) b!689350))

(assert (= (and b!689350 res!454060) b!689357))

(assert (= (and b!689357 res!454062) b!689358))

(assert (= (and b!689358 res!454049) b!689348))

(assert (= (and b!689348 res!454045) b!689346))

(assert (= (and b!689348 (not res!454056)) b!689347))

(assert (= (and b!689347 res!454051) b!689361))

(assert (= (and b!689348 res!454047) b!689353))

(assert (= (and b!689353 res!454058) b!689355))

(assert (= (and b!689355 res!454064) b!689342))

(assert (= (and b!689342 res!454059) b!689349))

(assert (= (and b!689349 res!454052) b!689352))

(assert (= (and b!689352 res!454054) b!689366))

(assert (= (and b!689366 res!454061) b!689343))

(assert (= (and b!689343 c!78016) b!689356))

(assert (= (and b!689343 (not c!78016)) b!689359))

(assert (= (and b!689343 c!78017) b!689365))

(assert (= (and b!689343 (not c!78017)) b!689341))

(assert (= (and b!689343 (not res!454053)) b!689362))

(assert (= (and b!689362 (not res!454043)) b!689363))

(assert (= (and b!689363 (not res!454063)) b!689344))

(assert (= (and b!689344 (not res!454046)) b!689354))

(assert (= (and b!689354 (not res!454044)) b!689351))

(assert (= (and b!689354 res!454048) b!689345))

(assert (= (and b!689345 (not res!454057)) b!689360))

(assert (= (and b!689354 (not res!454050)) b!689364))

(declare-fun m!653047 () Bool)

(assert (=> b!689358 m!653047))

(declare-fun m!653049 () Bool)

(assert (=> b!689360 m!653049))

(declare-fun m!653051 () Bool)

(assert (=> b!689350 m!653051))

(assert (=> b!689351 m!653049))

(declare-fun m!653053 () Bool)

(assert (=> b!689363 m!653053))

(declare-fun m!653055 () Bool)

(assert (=> b!689343 m!653055))

(declare-fun m!653057 () Bool)

(assert (=> b!689343 m!653057))

(declare-fun m!653059 () Bool)

(assert (=> b!689343 m!653059))

(declare-fun m!653061 () Bool)

(assert (=> b!689343 m!653061))

(declare-fun m!653063 () Bool)

(assert (=> b!689343 m!653063))

(declare-fun m!653065 () Bool)

(assert (=> b!689343 m!653065))

(declare-fun m!653067 () Bool)

(assert (=> b!689343 m!653067))

(declare-fun m!653069 () Bool)

(assert (=> b!689343 m!653069))

(declare-fun m!653071 () Bool)

(assert (=> b!689343 m!653071))

(declare-fun m!653073 () Bool)

(assert (=> b!689343 m!653073))

(declare-fun m!653075 () Bool)

(assert (=> b!689343 m!653075))

(assert (=> b!689343 m!653059))

(declare-fun m!653077 () Bool)

(assert (=> b!689343 m!653077))

(declare-fun m!653079 () Bool)

(assert (=> b!689343 m!653079))

(declare-fun m!653081 () Bool)

(assert (=> b!689361 m!653081))

(assert (=> b!689365 m!653057))

(assert (=> b!689365 m!653059))

(declare-fun m!653083 () Bool)

(assert (=> b!689365 m!653083))

(declare-fun m!653085 () Bool)

(assert (=> b!689365 m!653085))

(assert (=> b!689365 m!653059))

(assert (=> b!689365 m!653083))

(assert (=> b!689365 m!653071))

(assert (=> b!689365 m!653079))

(declare-fun m!653087 () Bool)

(assert (=> b!689344 m!653087))

(declare-fun m!653089 () Bool)

(assert (=> b!689364 m!653089))

(declare-fun m!653091 () Bool)

(assert (=> b!689364 m!653091))

(declare-fun m!653093 () Bool)

(assert (=> b!689353 m!653093))

(assert (=> b!689346 m!653081))

(declare-fun m!653095 () Bool)

(assert (=> b!689352 m!653095))

(declare-fun m!653097 () Bool)

(assert (=> b!689356 m!653097))

(declare-fun m!653099 () Bool)

(assert (=> b!689355 m!653099))

(declare-fun m!653101 () Bool)

(assert (=> start!61606 m!653101))

(declare-fun m!653103 () Bool)

(assert (=> b!689357 m!653103))

(declare-fun m!653105 () Bool)

(assert (=> b!689362 m!653105))

(declare-fun m!653107 () Bool)

(assert (=> b!689349 m!653107))

(push 1)

(assert (not b!689351))

(assert (not b!689357))

(assert (not b!689363))

(assert (not b!689344))

(assert (not b!689358))

(assert (not b!689352))

(assert (not b!689361))

(assert (not start!61606))

(assert (not b!689356))

(assert (not b!689343))

(assert (not b!689355))

(assert (not b!689362))

(assert (not b!689364))

(assert (not b!689349))

(assert (not b!689360))

(assert (not b!689365))

(assert (not b!689353))

(assert (not b!689350))

(assert (not b!689346))

(check-sat)

