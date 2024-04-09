; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59898 () Bool)

(assert start!59898)

(declare-fun b!662351 () Bool)

(declare-fun res!430518 () Bool)

(declare-fun e!380237 () Bool)

(assert (=> b!662351 (=> res!430518 e!380237)))

(declare-datatypes ((List!12733 0))(
  ( (Nil!12730) (Cons!12729 (h!13774 (_ BitVec 64)) (t!18969 List!12733)) )
))
(declare-fun lt!308986 () List!12733)

(declare-fun contains!3276 (List!12733 (_ BitVec 64)) Bool)

(assert (=> b!662351 (= res!430518 (contains!3276 lt!308986 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662352 () Bool)

(declare-fun res!430517 () Bool)

(declare-fun e!380236 () Bool)

(assert (=> b!662352 (=> (not res!430517) (not e!380236))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun acc!681 () List!12733)

(declare-datatypes ((array!38901 0))(
  ( (array!38902 (arr!18639 (Array (_ BitVec 32) (_ BitVec 64))) (size!19003 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38901)

(declare-fun arrayNoDuplicates!0 (array!38901 (_ BitVec 32) List!12733) Bool)

(assert (=> b!662352 (= res!430517 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662353 () Bool)

(declare-fun e!380232 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!662353 (= e!380232 (not (contains!3276 acc!681 k!2843)))))

(declare-fun b!662354 () Bool)

(declare-fun res!430515 () Bool)

(assert (=> b!662354 (=> res!430515 e!380237)))

(declare-fun subseq!14 (List!12733 List!12733) Bool)

(assert (=> b!662354 (= res!430515 (not (subseq!14 acc!681 lt!308986)))))

(declare-fun b!662355 () Bool)

(declare-datatypes ((Unit!23002 0))(
  ( (Unit!23003) )
))
(declare-fun e!380234 () Unit!23002)

(declare-fun Unit!23004 () Unit!23002)

(assert (=> b!662355 (= e!380234 Unit!23004)))

(declare-fun lt!308987 () Unit!23002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38901 (_ BitVec 64) (_ BitVec 32)) Unit!23002)

(assert (=> b!662355 (= lt!308987 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662355 false))

(declare-fun b!662356 () Bool)

(declare-fun res!430531 () Bool)

(assert (=> b!662356 (=> res!430531 e!380237)))

(assert (=> b!662356 (= res!430531 (contains!3276 lt!308986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662358 () Bool)

(declare-fun res!430521 () Bool)

(assert (=> b!662358 (=> (not res!430521) (not e!380236))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662358 (= res!430521 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19003 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662359 () Bool)

(declare-fun e!380235 () Bool)

(assert (=> b!662359 (= e!380235 (contains!3276 acc!681 k!2843))))

(declare-fun b!662360 () Bool)

(declare-fun res!430520 () Bool)

(assert (=> b!662360 (=> res!430520 e!380237)))

(declare-fun noDuplicate!523 (List!12733) Bool)

(assert (=> b!662360 (= res!430520 (not (noDuplicate!523 lt!308986)))))

(declare-fun b!662361 () Bool)

(assert (=> b!662361 (= e!380237 true)))

(declare-fun lt!308989 () Bool)

(assert (=> b!662361 (= lt!308989 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308986))))

(declare-fun lt!308988 () Unit!23002)

(declare-fun noDuplicateSubseq!14 (List!12733 List!12733) Unit!23002)

(assert (=> b!662361 (= lt!308988 (noDuplicateSubseq!14 acc!681 lt!308986))))

(declare-fun b!662362 () Bool)

(declare-fun res!430528 () Bool)

(assert (=> b!662362 (=> (not res!430528) (not e!380236))))

(assert (=> b!662362 (= res!430528 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19003 a!3626))))))

(declare-fun b!662363 () Bool)

(declare-fun res!430516 () Bool)

(assert (=> b!662363 (=> (not res!430516) (not e!380236))))

(declare-fun arrayContainsKey!0 (array!38901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662363 (= res!430516 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662364 () Bool)

(declare-fun e!380239 () Bool)

(assert (=> b!662364 (= e!380239 e!380237)))

(declare-fun res!430524 () Bool)

(assert (=> b!662364 (=> res!430524 e!380237)))

(assert (=> b!662364 (= res!430524 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!145 (List!12733 (_ BitVec 64)) List!12733)

(assert (=> b!662364 (= lt!308986 ($colon$colon!145 acc!681 (select (arr!18639 a!3626) from!3004)))))

(assert (=> b!662364 (subseq!14 acc!681 acc!681)))

(declare-fun lt!308990 () Unit!23002)

(declare-fun lemmaListSubSeqRefl!0 (List!12733) Unit!23002)

(assert (=> b!662364 (= lt!308990 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662365 () Bool)

(declare-fun res!430527 () Bool)

(assert (=> b!662365 (=> (not res!430527) (not e!380236))))

(assert (=> b!662365 (= res!430527 (not (contains!3276 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662366 () Bool)

(assert (=> b!662366 (= e!380236 (not e!380239))))

(declare-fun res!430526 () Bool)

(assert (=> b!662366 (=> res!430526 e!380239)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662366 (= res!430526 (not (validKeyInArray!0 (select (arr!18639 a!3626) from!3004))))))

(declare-fun lt!308991 () Unit!23002)

(assert (=> b!662366 (= lt!308991 e!380234)))

(declare-fun c!76286 () Bool)

(assert (=> b!662366 (= c!76286 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662366 (arrayContainsKey!0 (array!38902 (store (arr!18639 a!3626) i!1382 k!2843) (size!19003 a!3626)) k!2843 from!3004)))

(declare-fun b!662367 () Bool)

(declare-fun res!430529 () Bool)

(assert (=> b!662367 (=> (not res!430529) (not e!380236))))

(assert (=> b!662367 (= res!430529 (not (contains!3276 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662368 () Bool)

(declare-fun res!430523 () Bool)

(assert (=> b!662368 (=> (not res!430523) (not e!380236))))

(declare-fun e!380238 () Bool)

(assert (=> b!662368 (= res!430523 e!380238)))

(declare-fun res!430522 () Bool)

(assert (=> b!662368 (=> res!430522 e!380238)))

(assert (=> b!662368 (= res!430522 e!380235)))

(declare-fun res!430530 () Bool)

(assert (=> b!662368 (=> (not res!430530) (not e!380235))))

(assert (=> b!662368 (= res!430530 (bvsgt from!3004 i!1382))))

(declare-fun b!662369 () Bool)

(declare-fun Unit!23005 () Unit!23002)

(assert (=> b!662369 (= e!380234 Unit!23005)))

(declare-fun b!662370 () Bool)

(declare-fun res!430519 () Bool)

(assert (=> b!662370 (=> (not res!430519) (not e!380236))))

(assert (=> b!662370 (= res!430519 (validKeyInArray!0 k!2843))))

(declare-fun res!430513 () Bool)

(assert (=> start!59898 (=> (not res!430513) (not e!380236))))

(assert (=> start!59898 (= res!430513 (and (bvslt (size!19003 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19003 a!3626))))))

(assert (=> start!59898 e!380236))

(assert (=> start!59898 true))

(declare-fun array_inv!14413 (array!38901) Bool)

(assert (=> start!59898 (array_inv!14413 a!3626)))

(declare-fun b!662357 () Bool)

(declare-fun res!430532 () Bool)

(assert (=> b!662357 (=> (not res!430532) (not e!380236))))

(assert (=> b!662357 (= res!430532 (noDuplicate!523 acc!681))))

(declare-fun b!662371 () Bool)

(declare-fun res!430514 () Bool)

(assert (=> b!662371 (=> (not res!430514) (not e!380236))))

(assert (=> b!662371 (= res!430514 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12730))))

(declare-fun b!662372 () Bool)

(assert (=> b!662372 (= e!380238 e!380232)))

(declare-fun res!430525 () Bool)

(assert (=> b!662372 (=> (not res!430525) (not e!380232))))

(assert (=> b!662372 (= res!430525 (bvsle from!3004 i!1382))))

(assert (= (and start!59898 res!430513) b!662357))

(assert (= (and b!662357 res!430532) b!662367))

(assert (= (and b!662367 res!430529) b!662365))

(assert (= (and b!662365 res!430527) b!662368))

(assert (= (and b!662368 res!430530) b!662359))

(assert (= (and b!662368 (not res!430522)) b!662372))

(assert (= (and b!662372 res!430525) b!662353))

(assert (= (and b!662368 res!430523) b!662371))

(assert (= (and b!662371 res!430514) b!662352))

(assert (= (and b!662352 res!430517) b!662362))

(assert (= (and b!662362 res!430528) b!662370))

(assert (= (and b!662370 res!430519) b!662363))

(assert (= (and b!662363 res!430516) b!662358))

(assert (= (and b!662358 res!430521) b!662366))

(assert (= (and b!662366 c!76286) b!662355))

(assert (= (and b!662366 (not c!76286)) b!662369))

(assert (= (and b!662366 (not res!430526)) b!662364))

(assert (= (and b!662364 (not res!430524)) b!662360))

(assert (= (and b!662360 (not res!430520)) b!662356))

(assert (= (and b!662356 (not res!430531)) b!662351))

(assert (= (and b!662351 (not res!430518)) b!662354))

(assert (= (and b!662354 (not res!430515)) b!662361))

(declare-fun m!634227 () Bool)

(assert (=> b!662352 m!634227))

(declare-fun m!634229 () Bool)

(assert (=> b!662351 m!634229))

(declare-fun m!634231 () Bool)

(assert (=> b!662360 m!634231))

(declare-fun m!634233 () Bool)

(assert (=> b!662359 m!634233))

(declare-fun m!634235 () Bool)

(assert (=> b!662356 m!634235))

(declare-fun m!634237 () Bool)

(assert (=> b!662357 m!634237))

(declare-fun m!634239 () Bool)

(assert (=> b!662370 m!634239))

(declare-fun m!634241 () Bool)

(assert (=> b!662371 m!634241))

(declare-fun m!634243 () Bool)

(assert (=> b!662354 m!634243))

(declare-fun m!634245 () Bool)

(assert (=> b!662366 m!634245))

(declare-fun m!634247 () Bool)

(assert (=> b!662366 m!634247))

(declare-fun m!634249 () Bool)

(assert (=> b!662366 m!634249))

(assert (=> b!662366 m!634245))

(declare-fun m!634251 () Bool)

(assert (=> b!662366 m!634251))

(declare-fun m!634253 () Bool)

(assert (=> b!662366 m!634253))

(declare-fun m!634255 () Bool)

(assert (=> b!662367 m!634255))

(declare-fun m!634257 () Bool)

(assert (=> b!662363 m!634257))

(assert (=> b!662364 m!634245))

(assert (=> b!662364 m!634245))

(declare-fun m!634259 () Bool)

(assert (=> b!662364 m!634259))

(declare-fun m!634261 () Bool)

(assert (=> b!662364 m!634261))

(declare-fun m!634263 () Bool)

(assert (=> b!662364 m!634263))

(declare-fun m!634265 () Bool)

(assert (=> b!662361 m!634265))

(declare-fun m!634267 () Bool)

(assert (=> b!662361 m!634267))

(declare-fun m!634269 () Bool)

(assert (=> b!662365 m!634269))

(assert (=> b!662353 m!634233))

(declare-fun m!634271 () Bool)

(assert (=> b!662355 m!634271))

(declare-fun m!634273 () Bool)

(assert (=> start!59898 m!634273))

(push 1)

