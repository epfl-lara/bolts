; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59962 () Bool)

(assert start!59962)

(declare-fun b!664334 () Bool)

(declare-fun e!380957 () Bool)

(declare-datatypes ((List!12765 0))(
  ( (Nil!12762) (Cons!12761 (h!13806 (_ BitVec 64)) (t!19001 List!12765)) )
))
(declare-fun acc!681 () List!12765)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3308 (List!12765 (_ BitVec 64)) Bool)

(assert (=> b!664334 (= e!380957 (not (contains!3308 acc!681 k!2843)))))

(declare-fun b!664335 () Bool)

(declare-fun res!432193 () Bool)

(declare-fun e!380961 () Bool)

(assert (=> b!664335 (=> (not res!432193) (not e!380961))))

(declare-fun e!380962 () Bool)

(assert (=> b!664335 (= res!432193 e!380962)))

(declare-fun res!432192 () Bool)

(assert (=> b!664335 (=> res!432192 e!380962)))

(declare-fun e!380955 () Bool)

(assert (=> b!664335 (= res!432192 e!380955)))

(declare-fun res!432189 () Bool)

(assert (=> b!664335 (=> (not res!432189) (not e!380955))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664335 (= res!432189 (bvsgt from!3004 i!1382))))

(declare-fun b!664336 () Bool)

(declare-fun e!380958 () Bool)

(assert (=> b!664336 (= e!380961 (not e!380958))))

(declare-fun res!432200 () Bool)

(assert (=> b!664336 (=> res!432200 e!380958)))

(assert (=> b!664336 (= res!432200 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!309603 () List!12765)

(declare-fun -!44 (List!12765 (_ BitVec 64)) List!12765)

(assert (=> b!664336 (= (-!44 lt!309603 k!2843) acc!681)))

(declare-fun $colon$colon!177 (List!12765 (_ BitVec 64)) List!12765)

(assert (=> b!664336 (= lt!309603 ($colon$colon!177 acc!681 k!2843))))

(declare-datatypes ((Unit!23150 0))(
  ( (Unit!23151) )
))
(declare-fun lt!309606 () Unit!23150)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12765) Unit!23150)

(assert (=> b!664336 (= lt!309606 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!46 (List!12765 List!12765) Bool)

(assert (=> b!664336 (subseq!46 acc!681 acc!681)))

(declare-fun lt!309611 () Unit!23150)

(declare-fun lemmaListSubSeqRefl!0 (List!12765) Unit!23150)

(assert (=> b!664336 (= lt!309611 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!38965 0))(
  ( (array!38966 (arr!18671 (Array (_ BitVec 32) (_ BitVec 64))) (size!19035 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38965)

(declare-fun arrayNoDuplicates!0 (array!38965 (_ BitVec 32) List!12765) Bool)

(assert (=> b!664336 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309604 () Unit!23150)

(declare-fun e!380960 () Unit!23150)

(assert (=> b!664336 (= lt!309604 e!380960)))

(declare-fun c!76444 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664336 (= c!76444 (validKeyInArray!0 (select (arr!18671 a!3626) from!3004)))))

(declare-fun lt!309610 () Unit!23150)

(declare-fun e!380959 () Unit!23150)

(assert (=> b!664336 (= lt!309610 e!380959)))

(declare-fun c!76445 () Bool)

(declare-fun lt!309608 () Bool)

(assert (=> b!664336 (= c!76445 lt!309608)))

(declare-fun arrayContainsKey!0 (array!38965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664336 (= lt!309608 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664336 (arrayContainsKey!0 (array!38966 (store (arr!18671 a!3626) i!1382 k!2843) (size!19035 a!3626)) k!2843 from!3004)))

(declare-fun b!664337 () Bool)

(declare-fun res!432181 () Bool)

(assert (=> b!664337 (=> res!432181 e!380958)))

(assert (=> b!664337 (= res!432181 (not (contains!3308 lt!309603 k!2843)))))

(declare-fun b!664338 () Bool)

(declare-fun Unit!23152 () Unit!23150)

(assert (=> b!664338 (= e!380960 Unit!23152)))

(declare-fun b!664339 () Bool)

(declare-fun Unit!23153 () Unit!23150)

(assert (=> b!664339 (= e!380959 Unit!23153)))

(declare-fun lt!309612 () Unit!23150)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38965 (_ BitVec 64) (_ BitVec 32)) Unit!23150)

(assert (=> b!664339 (= lt!309612 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664339 false))

(declare-fun b!664340 () Bool)

(declare-fun res!432188 () Bool)

(assert (=> b!664340 (=> res!432188 e!380958)))

(assert (=> b!664340 (= res!432188 (contains!3308 lt!309603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664341 () Bool)

(declare-fun res!432182 () Bool)

(assert (=> b!664341 (=> (not res!432182) (not e!380961))))

(assert (=> b!664341 (= res!432182 (validKeyInArray!0 k!2843))))

(declare-fun b!664342 () Bool)

(declare-fun res!432190 () Bool)

(assert (=> b!664342 (=> res!432190 e!380958)))

(assert (=> b!664342 (= res!432190 (not (subseq!46 acc!681 lt!309603)))))

(declare-fun b!664343 () Bool)

(declare-fun lt!309605 () Unit!23150)

(assert (=> b!664343 (= e!380960 lt!309605)))

(declare-fun lt!309609 () Unit!23150)

(assert (=> b!664343 (= lt!309609 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664343 (subseq!46 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38965 List!12765 List!12765 (_ BitVec 32)) Unit!23150)

(assert (=> b!664343 (= lt!309605 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!177 acc!681 (select (arr!18671 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664343 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664344 () Bool)

(declare-fun res!432183 () Bool)

(assert (=> b!664344 (=> (not res!432183) (not e!380961))))

(assert (=> b!664344 (= res!432183 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664345 () Bool)

(declare-fun res!432199 () Bool)

(assert (=> b!664345 (=> (not res!432199) (not e!380961))))

(declare-fun noDuplicate!555 (List!12765) Bool)

(assert (=> b!664345 (= res!432199 (noDuplicate!555 acc!681))))

(declare-fun b!664346 () Bool)

(declare-fun res!432195 () Bool)

(assert (=> b!664346 (=> res!432195 e!380958)))

(assert (=> b!664346 (= res!432195 lt!309608)))

(declare-fun b!664347 () Bool)

(declare-fun Unit!23154 () Unit!23150)

(assert (=> b!664347 (= e!380959 Unit!23154)))

(declare-fun b!664348 () Bool)

(declare-fun res!432194 () Bool)

(assert (=> b!664348 (=> res!432194 e!380958)))

(assert (=> b!664348 (= res!432194 (contains!3308 acc!681 k!2843))))

(declare-fun b!664349 () Bool)

(assert (=> b!664349 (= e!380962 e!380957)))

(declare-fun res!432197 () Bool)

(assert (=> b!664349 (=> (not res!432197) (not e!380957))))

(assert (=> b!664349 (= res!432197 (bvsle from!3004 i!1382))))

(declare-fun b!664351 () Bool)

(declare-fun res!432196 () Bool)

(assert (=> b!664351 (=> (not res!432196) (not e!380961))))

(assert (=> b!664351 (= res!432196 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664352 () Bool)

(declare-fun res!432187 () Bool)

(assert (=> b!664352 (=> (not res!432187) (not e!380961))))

(assert (=> b!664352 (= res!432187 (not (contains!3308 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664353 () Bool)

(declare-fun res!432186 () Bool)

(assert (=> b!664353 (=> res!432186 e!380958)))

(assert (=> b!664353 (= res!432186 (not (noDuplicate!555 lt!309603)))))

(declare-fun b!664354 () Bool)

(declare-fun res!432185 () Bool)

(assert (=> b!664354 (=> (not res!432185) (not e!380961))))

(assert (=> b!664354 (= res!432185 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19035 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!432191 () Bool)

(assert (=> start!59962 (=> (not res!432191) (not e!380961))))

(assert (=> start!59962 (= res!432191 (and (bvslt (size!19035 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19035 a!3626))))))

(assert (=> start!59962 e!380961))

(assert (=> start!59962 true))

(declare-fun array_inv!14445 (array!38965) Bool)

(assert (=> start!59962 (array_inv!14445 a!3626)))

(declare-fun b!664350 () Bool)

(declare-fun res!432198 () Bool)

(assert (=> b!664350 (=> (not res!432198) (not e!380961))))

(assert (=> b!664350 (= res!432198 (not (contains!3308 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664355 () Bool)

(assert (=> b!664355 (= e!380955 (contains!3308 acc!681 k!2843))))

(declare-fun b!664356 () Bool)

(declare-fun res!432184 () Bool)

(assert (=> b!664356 (=> (not res!432184) (not e!380961))))

(assert (=> b!664356 (= res!432184 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12762))))

(declare-fun b!664357 () Bool)

(assert (=> b!664357 (= e!380958 true)))

(declare-fun lt!309607 () Bool)

(assert (=> b!664357 (= lt!309607 (contains!3308 lt!309603 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664358 () Bool)

(declare-fun res!432180 () Bool)

(assert (=> b!664358 (=> (not res!432180) (not e!380961))))

(assert (=> b!664358 (= res!432180 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19035 a!3626))))))

(assert (= (and start!59962 res!432191) b!664345))

(assert (= (and b!664345 res!432199) b!664352))

(assert (= (and b!664352 res!432187) b!664350))

(assert (= (and b!664350 res!432198) b!664335))

(assert (= (and b!664335 res!432189) b!664355))

(assert (= (and b!664335 (not res!432192)) b!664349))

(assert (= (and b!664349 res!432197) b!664334))

(assert (= (and b!664335 res!432193) b!664356))

(assert (= (and b!664356 res!432184) b!664344))

(assert (= (and b!664344 res!432183) b!664358))

(assert (= (and b!664358 res!432180) b!664341))

(assert (= (and b!664341 res!432182) b!664351))

(assert (= (and b!664351 res!432196) b!664354))

(assert (= (and b!664354 res!432185) b!664336))

(assert (= (and b!664336 c!76445) b!664339))

(assert (= (and b!664336 (not c!76445)) b!664347))

(assert (= (and b!664336 c!76444) b!664343))

(assert (= (and b!664336 (not c!76444)) b!664338))

(assert (= (and b!664336 (not res!432200)) b!664353))

(assert (= (and b!664353 (not res!432186)) b!664346))

(assert (= (and b!664346 (not res!432195)) b!664348))

(assert (= (and b!664348 (not res!432194)) b!664342))

(assert (= (and b!664342 (not res!432190)) b!664337))

(assert (= (and b!664337 (not res!432181)) b!664340))

(assert (= (and b!664340 (not res!432188)) b!664357))

(declare-fun m!635683 () Bool)

(assert (=> b!664351 m!635683))

(declare-fun m!635685 () Bool)

(assert (=> b!664334 m!635685))

(declare-fun m!635687 () Bool)

(assert (=> b!664339 m!635687))

(assert (=> b!664355 m!635685))

(declare-fun m!635689 () Bool)

(assert (=> b!664345 m!635689))

(declare-fun m!635691 () Bool)

(assert (=> b!664343 m!635691))

(declare-fun m!635693 () Bool)

(assert (=> b!664343 m!635693))

(declare-fun m!635695 () Bool)

(assert (=> b!664343 m!635695))

(declare-fun m!635697 () Bool)

(assert (=> b!664343 m!635697))

(assert (=> b!664343 m!635693))

(assert (=> b!664343 m!635695))

(declare-fun m!635699 () Bool)

(assert (=> b!664343 m!635699))

(declare-fun m!635701 () Bool)

(assert (=> b!664343 m!635701))

(declare-fun m!635703 () Bool)

(assert (=> b!664341 m!635703))

(assert (=> b!664348 m!635685))

(declare-fun m!635705 () Bool)

(assert (=> b!664342 m!635705))

(declare-fun m!635707 () Bool)

(assert (=> b!664352 m!635707))

(declare-fun m!635709 () Bool)

(assert (=> b!664340 m!635709))

(declare-fun m!635711 () Bool)

(assert (=> b!664350 m!635711))

(declare-fun m!635713 () Bool)

(assert (=> b!664337 m!635713))

(assert (=> b!664336 m!635691))

(assert (=> b!664336 m!635693))

(declare-fun m!635715 () Bool)

(assert (=> b!664336 m!635715))

(declare-fun m!635717 () Bool)

(assert (=> b!664336 m!635717))

(declare-fun m!635719 () Bool)

(assert (=> b!664336 m!635719))

(assert (=> b!664336 m!635699))

(declare-fun m!635721 () Bool)

(assert (=> b!664336 m!635721))

(declare-fun m!635723 () Bool)

(assert (=> b!664336 m!635723))

(assert (=> b!664336 m!635693))

(declare-fun m!635725 () Bool)

(assert (=> b!664336 m!635725))

(declare-fun m!635727 () Bool)

(assert (=> b!664336 m!635727))

(assert (=> b!664336 m!635701))

(declare-fun m!635729 () Bool)

(assert (=> start!59962 m!635729))

(declare-fun m!635731 () Bool)

(assert (=> b!664356 m!635731))

(declare-fun m!635733 () Bool)

(assert (=> b!664357 m!635733))

(declare-fun m!635735 () Bool)

(assert (=> b!664353 m!635735))

(declare-fun m!635737 () Bool)

(assert (=> b!664344 m!635737))

(push 1)

(assert (not start!59962))

(assert (not b!664353))

(assert (not b!664345))

(assert (not b!664339))

(assert (not b!664336))

(assert (not b!664340))

(assert (not b!664350))

(assert (not b!664343))

(assert (not b!664356))

(assert (not b!664342))

(assert (not b!664357))

(assert (not b!664355))

(assert (not b!664348))

(assert (not b!664344))

(assert (not b!664334))

(assert (not b!664352))

(assert (not b!664337))

(assert (not b!664341))

(assert (not b!664351))

(check-sat)

