; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60168 () Bool)

(assert start!60168)

(declare-fun b!671341 () Bool)

(declare-datatypes ((Unit!23560 0))(
  ( (Unit!23561) )
))
(declare-fun e!383652 () Unit!23560)

(declare-fun Unit!23562 () Unit!23560)

(assert (=> b!671341 (= e!383652 Unit!23562)))

(declare-datatypes ((array!39171 0))(
  ( (array!39172 (arr!18774 (Array (_ BitVec 32) (_ BitVec 64))) (size!19138 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39171)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671341 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312114 () Unit!23560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39171 (_ BitVec 64) (_ BitVec 32)) Unit!23560)

(assert (=> b!671341 (= lt!312114 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671341 false))

(declare-fun b!671342 () Bool)

(declare-fun e!383651 () Bool)

(declare-fun e!383654 () Bool)

(assert (=> b!671342 (= e!383651 e!383654)))

(declare-fun res!438214 () Bool)

(assert (=> b!671342 (=> (not res!438214) (not e!383654))))

(assert (=> b!671342 (= res!438214 (not (= (select (arr!18774 a!3626) from!3004) k!2843)))))

(declare-fun lt!312115 () Unit!23560)

(assert (=> b!671342 (= lt!312115 e!383652)))

(declare-fun c!76934 () Bool)

(assert (=> b!671342 (= c!76934 (= (select (arr!18774 a!3626) from!3004) k!2843))))

(declare-fun b!671343 () Bool)

(declare-fun res!438218 () Bool)

(declare-fun e!383653 () Bool)

(assert (=> b!671343 (=> (not res!438218) (not e!383653))))

(declare-datatypes ((List!12868 0))(
  ( (Nil!12865) (Cons!12864 (h!13909 (_ BitVec 64)) (t!19104 List!12868)) )
))
(declare-fun lt!312117 () List!12868)

(declare-fun contains!3411 (List!12868 (_ BitVec 64)) Bool)

(assert (=> b!671343 (= res!438218 (not (contains!3411 lt!312117 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671344 () Bool)

(declare-fun res!438226 () Bool)

(assert (=> b!671344 (=> (not res!438226) (not e!383653))))

(declare-fun e!383656 () Bool)

(assert (=> b!671344 (= res!438226 e!383656)))

(declare-fun res!438217 () Bool)

(assert (=> b!671344 (=> res!438217 e!383656)))

(declare-fun e!383649 () Bool)

(assert (=> b!671344 (= res!438217 e!383649)))

(declare-fun res!438211 () Bool)

(assert (=> b!671344 (=> (not res!438211) (not e!383649))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671344 (= res!438211 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671345 () Bool)

(declare-fun res!438221 () Bool)

(assert (=> b!671345 (=> (not res!438221) (not e!383653))))

(declare-fun noDuplicate!658 (List!12868) Bool)

(assert (=> b!671345 (= res!438221 (noDuplicate!658 lt!312117))))

(declare-fun b!671346 () Bool)

(declare-fun e!383650 () Bool)

(declare-fun acc!681 () List!12868)

(assert (=> b!671346 (= e!383650 (contains!3411 acc!681 k!2843))))

(declare-fun b!671347 () Bool)

(declare-fun res!438227 () Bool)

(assert (=> b!671347 (=> (not res!438227) (not e!383651))))

(declare-fun arrayNoDuplicates!0 (array!39171 (_ BitVec 32) List!12868) Bool)

(assert (=> b!671347 (= res!438227 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12865))))

(declare-fun b!671348 () Bool)

(declare-fun res!438207 () Bool)

(assert (=> b!671348 (=> (not res!438207) (not e!383651))))

(declare-fun e!383655 () Bool)

(assert (=> b!671348 (= res!438207 e!383655)))

(declare-fun res!438220 () Bool)

(assert (=> b!671348 (=> res!438220 e!383655)))

(assert (=> b!671348 (= res!438220 e!383650)))

(declare-fun res!438224 () Bool)

(assert (=> b!671348 (=> (not res!438224) (not e!383650))))

(assert (=> b!671348 (= res!438224 (bvsgt from!3004 i!1382))))

(declare-fun b!671349 () Bool)

(declare-fun e!383658 () Bool)

(assert (=> b!671349 (= e!383658 (not (contains!3411 acc!681 k!2843)))))

(declare-fun b!671350 () Bool)

(declare-fun res!438215 () Bool)

(assert (=> b!671350 (=> (not res!438215) (not e!383651))))

(assert (=> b!671350 (= res!438215 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671351 () Bool)

(assert (=> b!671351 (= e!383653 false)))

(declare-fun lt!312116 () Bool)

(assert (=> b!671351 (= lt!312116 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312117))))

(declare-fun b!671352 () Bool)

(declare-fun res!438216 () Bool)

(assert (=> b!671352 (=> (not res!438216) (not e!383651))))

(assert (=> b!671352 (= res!438216 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19138 a!3626))))))

(declare-fun b!671353 () Bool)

(declare-fun res!438213 () Bool)

(assert (=> b!671353 (=> (not res!438213) (not e!383651))))

(assert (=> b!671353 (= res!438213 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671354 () Bool)

(declare-fun res!438210 () Bool)

(assert (=> b!671354 (=> (not res!438210) (not e!383651))))

(assert (=> b!671354 (= res!438210 (not (contains!3411 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671355 () Bool)

(assert (=> b!671355 (= e!383655 e!383658)))

(declare-fun res!438230 () Bool)

(assert (=> b!671355 (=> (not res!438230) (not e!383658))))

(assert (=> b!671355 (= res!438230 (bvsle from!3004 i!1382))))

(declare-fun b!671356 () Bool)

(declare-fun res!438229 () Bool)

(assert (=> b!671356 (=> (not res!438229) (not e!383653))))

(assert (=> b!671356 (= res!438229 (not (contains!3411 lt!312117 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671357 () Bool)

(declare-fun res!438212 () Bool)

(assert (=> b!671357 (=> (not res!438212) (not e!383651))))

(assert (=> b!671357 (= res!438212 (noDuplicate!658 acc!681))))

(declare-fun b!671358 () Bool)

(assert (=> b!671358 (= e!383654 e!383653)))

(declare-fun res!438222 () Bool)

(assert (=> b!671358 (=> (not res!438222) (not e!383653))))

(assert (=> b!671358 (= res!438222 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!259 (List!12868 (_ BitVec 64)) List!12868)

(assert (=> b!671358 (= lt!312117 ($colon$colon!259 acc!681 (select (arr!18774 a!3626) from!3004)))))

(declare-fun b!671359 () Bool)

(declare-fun res!438223 () Bool)

(assert (=> b!671359 (=> (not res!438223) (not e!383651))))

(assert (=> b!671359 (= res!438223 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19138 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!438219 () Bool)

(assert (=> start!60168 (=> (not res!438219) (not e!383651))))

(assert (=> start!60168 (= res!438219 (and (bvslt (size!19138 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19138 a!3626))))))

(assert (=> start!60168 e!383651))

(assert (=> start!60168 true))

(declare-fun array_inv!14548 (array!39171) Bool)

(assert (=> start!60168 (array_inv!14548 a!3626)))

(declare-fun b!671360 () Bool)

(declare-fun e!383659 () Bool)

(assert (=> b!671360 (= e!383656 e!383659)))

(declare-fun res!438208 () Bool)

(assert (=> b!671360 (=> (not res!438208) (not e!383659))))

(assert (=> b!671360 (= res!438208 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671361 () Bool)

(declare-fun res!438228 () Bool)

(assert (=> b!671361 (=> (not res!438228) (not e!383651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671361 (= res!438228 (validKeyInArray!0 (select (arr!18774 a!3626) from!3004)))))

(declare-fun b!671362 () Bool)

(assert (=> b!671362 (= e!383659 (not (contains!3411 lt!312117 k!2843)))))

(declare-fun b!671363 () Bool)

(declare-fun res!438225 () Bool)

(assert (=> b!671363 (=> (not res!438225) (not e!383651))))

(assert (=> b!671363 (= res!438225 (validKeyInArray!0 k!2843))))

(declare-fun b!671364 () Bool)

(assert (=> b!671364 (= e!383649 (contains!3411 lt!312117 k!2843))))

(declare-fun b!671365 () Bool)

(declare-fun res!438209 () Bool)

(assert (=> b!671365 (=> (not res!438209) (not e!383651))))

(assert (=> b!671365 (= res!438209 (not (contains!3411 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671366 () Bool)

(declare-fun Unit!23563 () Unit!23560)

(assert (=> b!671366 (= e!383652 Unit!23563)))

(assert (= (and start!60168 res!438219) b!671357))

(assert (= (and b!671357 res!438212) b!671365))

(assert (= (and b!671365 res!438209) b!671354))

(assert (= (and b!671354 res!438210) b!671348))

(assert (= (and b!671348 res!438224) b!671346))

(assert (= (and b!671348 (not res!438220)) b!671355))

(assert (= (and b!671355 res!438230) b!671349))

(assert (= (and b!671348 res!438207) b!671347))

(assert (= (and b!671347 res!438227) b!671353))

(assert (= (and b!671353 res!438213) b!671352))

(assert (= (and b!671352 res!438216) b!671363))

(assert (= (and b!671363 res!438225) b!671350))

(assert (= (and b!671350 res!438215) b!671359))

(assert (= (and b!671359 res!438223) b!671361))

(assert (= (and b!671361 res!438228) b!671342))

(assert (= (and b!671342 c!76934) b!671341))

(assert (= (and b!671342 (not c!76934)) b!671366))

(assert (= (and b!671342 res!438214) b!671358))

(assert (= (and b!671358 res!438222) b!671345))

(assert (= (and b!671345 res!438221) b!671356))

(assert (= (and b!671356 res!438229) b!671343))

(assert (= (and b!671343 res!438218) b!671344))

(assert (= (and b!671344 res!438211) b!671364))

(assert (= (and b!671344 (not res!438217)) b!671360))

(assert (= (and b!671360 res!438208) b!671362))

(assert (= (and b!671344 res!438226) b!671351))

(declare-fun m!640827 () Bool)

(assert (=> b!671357 m!640827))

(declare-fun m!640829 () Bool)

(assert (=> b!671365 m!640829))

(declare-fun m!640831 () Bool)

(assert (=> b!671346 m!640831))

(declare-fun m!640833 () Bool)

(assert (=> b!671354 m!640833))

(declare-fun m!640835 () Bool)

(assert (=> b!671361 m!640835))

(assert (=> b!671361 m!640835))

(declare-fun m!640837 () Bool)

(assert (=> b!671361 m!640837))

(declare-fun m!640839 () Bool)

(assert (=> b!671347 m!640839))

(assert (=> b!671358 m!640835))

(assert (=> b!671358 m!640835))

(declare-fun m!640841 () Bool)

(assert (=> b!671358 m!640841))

(declare-fun m!640843 () Bool)

(assert (=> b!671362 m!640843))

(declare-fun m!640845 () Bool)

(assert (=> b!671356 m!640845))

(declare-fun m!640847 () Bool)

(assert (=> b!671341 m!640847))

(declare-fun m!640849 () Bool)

(assert (=> b!671341 m!640849))

(declare-fun m!640851 () Bool)

(assert (=> b!671353 m!640851))

(declare-fun m!640853 () Bool)

(assert (=> b!671363 m!640853))

(declare-fun m!640855 () Bool)

(assert (=> b!671351 m!640855))

(declare-fun m!640857 () Bool)

(assert (=> b!671345 m!640857))

(assert (=> b!671342 m!640835))

(declare-fun m!640859 () Bool)

(assert (=> b!671343 m!640859))

(assert (=> b!671364 m!640843))

(declare-fun m!640861 () Bool)

(assert (=> start!60168 m!640861))

(declare-fun m!640863 () Bool)

(assert (=> b!671350 m!640863))

(assert (=> b!671349 m!640831))

(push 1)

