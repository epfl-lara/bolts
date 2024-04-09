; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62060 () Bool)

(assert start!62060)

(declare-fun b!694323 () Bool)

(declare-fun res!458535 () Bool)

(declare-fun e!394964 () Bool)

(assert (=> b!694323 (=> (not res!458535) (not e!394964))))

(declare-datatypes ((array!39857 0))(
  ( (array!39858 (arr!19087 (Array (_ BitVec 32) (_ BitVec 64))) (size!19470 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39857)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694323 (= res!458535 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694324 () Bool)

(declare-fun res!458553 () Bool)

(assert (=> b!694324 (=> (not res!458553) (not e!394964))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694324 (= res!458553 (validKeyInArray!0 (select (arr!19087 a!3626) from!3004)))))

(declare-fun b!694325 () Bool)

(declare-fun e!394956 () Bool)

(assert (=> b!694325 (= e!394964 e!394956)))

(declare-fun res!458546 () Bool)

(assert (=> b!694325 (=> (not res!458546) (not e!394956))))

(assert (=> b!694325 (= res!458546 (not (= (select (arr!19087 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!24518 0))(
  ( (Unit!24519) )
))
(declare-fun lt!316857 () Unit!24518)

(declare-fun e!394960 () Unit!24518)

(assert (=> b!694325 (= lt!316857 e!394960)))

(declare-fun c!78263 () Bool)

(assert (=> b!694325 (= c!78263 (= (select (arr!19087 a!3626) from!3004) k0!2843))))

(declare-fun b!694326 () Bool)

(declare-fun res!458534 () Bool)

(assert (=> b!694326 (=> (not res!458534) (not e!394964))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694326 (= res!458534 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19470 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694327 () Bool)

(declare-fun e!394962 () Bool)

(assert (=> b!694327 (= e!394962 (bvsge (bvsub (size!19470 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19470 a!3626) from!3004)))))

(declare-fun b!694328 () Bool)

(declare-fun res!458532 () Bool)

(assert (=> b!694328 (=> (not res!458532) (not e!394962))))

(declare-fun e!394965 () Bool)

(assert (=> b!694328 (= res!458532 e!394965)))

(declare-fun res!458542 () Bool)

(assert (=> b!694328 (=> res!458542 e!394965)))

(declare-fun e!394966 () Bool)

(assert (=> b!694328 (= res!458542 e!394966)))

(declare-fun res!458540 () Bool)

(assert (=> b!694328 (=> (not res!458540) (not e!394966))))

(assert (=> b!694328 (= res!458540 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694329 () Bool)

(declare-fun res!458539 () Bool)

(assert (=> b!694329 (=> (not res!458539) (not e!394962))))

(declare-datatypes ((List!13181 0))(
  ( (Nil!13178) (Cons!13177 (h!14222 (_ BitVec 64)) (t!19468 List!13181)) )
))
(declare-fun lt!316855 () List!13181)

(declare-fun contains!3724 (List!13181 (_ BitVec 64)) Bool)

(assert (=> b!694329 (= res!458539 (not (contains!3724 lt!316855 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694330 () Bool)

(declare-fun e!394963 () Bool)

(declare-fun acc!681 () List!13181)

(assert (=> b!694330 (= e!394963 (contains!3724 acc!681 k0!2843))))

(declare-fun b!694331 () Bool)

(declare-fun e!394958 () Bool)

(assert (=> b!694331 (= e!394958 (not (contains!3724 acc!681 k0!2843)))))

(declare-fun b!694332 () Bool)

(declare-fun res!458544 () Bool)

(assert (=> b!694332 (=> (not res!458544) (not e!394962))))

(declare-fun arrayNoDuplicates!0 (array!39857 (_ BitVec 32) List!13181) Bool)

(assert (=> b!694332 (= res!458544 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316855))))

(declare-fun b!694333 () Bool)

(declare-fun Unit!24520 () Unit!24518)

(assert (=> b!694333 (= e!394960 Unit!24520)))

(assert (=> b!694333 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316856 () Unit!24518)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39857 (_ BitVec 64) (_ BitVec 32)) Unit!24518)

(assert (=> b!694333 (= lt!316856 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!694333 false))

(declare-fun b!694334 () Bool)

(assert (=> b!694334 (= e!394956 e!394962)))

(declare-fun res!458552 () Bool)

(assert (=> b!694334 (=> (not res!458552) (not e!394962))))

(assert (=> b!694334 (= res!458552 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!434 (List!13181 (_ BitVec 64)) List!13181)

(assert (=> b!694334 (= lt!316855 ($colon$colon!434 acc!681 (select (arr!19087 a!3626) from!3004)))))

(declare-fun b!694335 () Bool)

(declare-fun res!458538 () Bool)

(assert (=> b!694335 (=> (not res!458538) (not e!394964))))

(declare-fun noDuplicate!971 (List!13181) Bool)

(assert (=> b!694335 (= res!458538 (noDuplicate!971 acc!681))))

(declare-fun b!694336 () Bool)

(declare-fun res!458551 () Bool)

(assert (=> b!694336 (=> (not res!458551) (not e!394964))))

(assert (=> b!694336 (= res!458551 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19470 a!3626))))))

(declare-fun b!694337 () Bool)

(declare-fun res!458533 () Bool)

(assert (=> b!694337 (=> (not res!458533) (not e!394964))))

(assert (=> b!694337 (= res!458533 (not (contains!3724 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694338 () Bool)

(declare-fun res!458549 () Bool)

(assert (=> b!694338 (=> (not res!458549) (not e!394964))))

(assert (=> b!694338 (= res!458549 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694339 () Bool)

(declare-fun e!394957 () Bool)

(assert (=> b!694339 (= e!394957 e!394958)))

(declare-fun res!458536 () Bool)

(assert (=> b!694339 (=> (not res!458536) (not e!394958))))

(assert (=> b!694339 (= res!458536 (bvsle from!3004 i!1382))))

(declare-fun res!458545 () Bool)

(assert (=> start!62060 (=> (not res!458545) (not e!394964))))

(assert (=> start!62060 (= res!458545 (and (bvslt (size!19470 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19470 a!3626))))))

(assert (=> start!62060 e!394964))

(assert (=> start!62060 true))

(declare-fun array_inv!14861 (array!39857) Bool)

(assert (=> start!62060 (array_inv!14861 a!3626)))

(declare-fun b!694340 () Bool)

(declare-fun res!458537 () Bool)

(assert (=> b!694340 (=> (not res!458537) (not e!394964))))

(assert (=> b!694340 (= res!458537 (validKeyInArray!0 k0!2843))))

(declare-fun b!694341 () Bool)

(declare-fun res!458555 () Bool)

(assert (=> b!694341 (=> (not res!458555) (not e!394962))))

(assert (=> b!694341 (= res!458555 (noDuplicate!971 lt!316855))))

(declare-fun b!694342 () Bool)

(declare-fun res!458554 () Bool)

(assert (=> b!694342 (=> (not res!458554) (not e!394964))))

(assert (=> b!694342 (= res!458554 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13178))))

(declare-fun b!694343 () Bool)

(declare-fun res!458547 () Bool)

(assert (=> b!694343 (=> (not res!458547) (not e!394964))))

(assert (=> b!694343 (= res!458547 (not (contains!3724 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694344 () Bool)

(declare-fun res!458548 () Bool)

(assert (=> b!694344 (=> (not res!458548) (not e!394962))))

(assert (=> b!694344 (= res!458548 (not (contains!3724 lt!316855 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694345 () Bool)

(declare-fun Unit!24521 () Unit!24518)

(assert (=> b!694345 (= e!394960 Unit!24521)))

(declare-fun b!694346 () Bool)

(declare-fun res!458543 () Bool)

(assert (=> b!694346 (=> (not res!458543) (not e!394964))))

(assert (=> b!694346 (= res!458543 e!394957)))

(declare-fun res!458541 () Bool)

(assert (=> b!694346 (=> res!458541 e!394957)))

(assert (=> b!694346 (= res!458541 e!394963)))

(declare-fun res!458531 () Bool)

(assert (=> b!694346 (=> (not res!458531) (not e!394963))))

(assert (=> b!694346 (= res!458531 (bvsgt from!3004 i!1382))))

(declare-fun b!694347 () Bool)

(declare-fun e!394961 () Bool)

(assert (=> b!694347 (= e!394965 e!394961)))

(declare-fun res!458550 () Bool)

(assert (=> b!694347 (=> (not res!458550) (not e!394961))))

(assert (=> b!694347 (= res!458550 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694348 () Bool)

(assert (=> b!694348 (= e!394961 (not (contains!3724 lt!316855 k0!2843)))))

(declare-fun b!694349 () Bool)

(assert (=> b!694349 (= e!394966 (contains!3724 lt!316855 k0!2843))))

(assert (= (and start!62060 res!458545) b!694335))

(assert (= (and b!694335 res!458538) b!694337))

(assert (= (and b!694337 res!458533) b!694343))

(assert (= (and b!694343 res!458547) b!694346))

(assert (= (and b!694346 res!458531) b!694330))

(assert (= (and b!694346 (not res!458541)) b!694339))

(assert (= (and b!694339 res!458536) b!694331))

(assert (= (and b!694346 res!458543) b!694342))

(assert (= (and b!694342 res!458554) b!694338))

(assert (= (and b!694338 res!458549) b!694336))

(assert (= (and b!694336 res!458551) b!694340))

(assert (= (and b!694340 res!458537) b!694323))

(assert (= (and b!694323 res!458535) b!694326))

(assert (= (and b!694326 res!458534) b!694324))

(assert (= (and b!694324 res!458553) b!694325))

(assert (= (and b!694325 c!78263) b!694333))

(assert (= (and b!694325 (not c!78263)) b!694345))

(assert (= (and b!694325 res!458546) b!694334))

(assert (= (and b!694334 res!458552) b!694341))

(assert (= (and b!694341 res!458555) b!694329))

(assert (= (and b!694329 res!458539) b!694344))

(assert (= (and b!694344 res!458548) b!694328))

(assert (= (and b!694328 res!458540) b!694349))

(assert (= (and b!694328 (not res!458542)) b!694347))

(assert (= (and b!694347 res!458550) b!694348))

(assert (= (and b!694328 res!458532) b!694332))

(assert (= (and b!694332 res!458544) b!694327))

(declare-fun m!656171 () Bool)

(assert (=> b!694324 m!656171))

(assert (=> b!694324 m!656171))

(declare-fun m!656173 () Bool)

(assert (=> b!694324 m!656173))

(declare-fun m!656175 () Bool)

(assert (=> b!694340 m!656175))

(declare-fun m!656177 () Bool)

(assert (=> b!694342 m!656177))

(declare-fun m!656179 () Bool)

(assert (=> b!694337 m!656179))

(declare-fun m!656181 () Bool)

(assert (=> b!694331 m!656181))

(declare-fun m!656183 () Bool)

(assert (=> b!694333 m!656183))

(declare-fun m!656185 () Bool)

(assert (=> b!694333 m!656185))

(declare-fun m!656187 () Bool)

(assert (=> start!62060 m!656187))

(declare-fun m!656189 () Bool)

(assert (=> b!694348 m!656189))

(declare-fun m!656191 () Bool)

(assert (=> b!694323 m!656191))

(declare-fun m!656193 () Bool)

(assert (=> b!694344 m!656193))

(assert (=> b!694349 m!656189))

(assert (=> b!694334 m!656171))

(assert (=> b!694334 m!656171))

(declare-fun m!656195 () Bool)

(assert (=> b!694334 m!656195))

(declare-fun m!656197 () Bool)

(assert (=> b!694343 m!656197))

(declare-fun m!656199 () Bool)

(assert (=> b!694329 m!656199))

(assert (=> b!694325 m!656171))

(declare-fun m!656201 () Bool)

(assert (=> b!694335 m!656201))

(declare-fun m!656203 () Bool)

(assert (=> b!694338 m!656203))

(assert (=> b!694330 m!656181))

(declare-fun m!656205 () Bool)

(assert (=> b!694332 m!656205))

(declare-fun m!656207 () Bool)

(assert (=> b!694341 m!656207))

(check-sat (not b!694324) (not b!694344) (not b!694340) (not b!694338) (not b!694333) (not b!694348) (not b!694332) (not b!694329) (not b!694342) (not b!694349) (not b!694337) (not b!694335) (not start!62060) (not b!694323) (not b!694334) (not b!694330) (not b!694341) (not b!694331) (not b!694343))
(check-sat)
