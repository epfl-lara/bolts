; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60170 () Bool)

(assert start!60170)

(declare-fun b!671419 () Bool)

(declare-fun e!383691 () Bool)

(declare-datatypes ((List!12869 0))(
  ( (Nil!12866) (Cons!12865 (h!13910 (_ BitVec 64)) (t!19105 List!12869)) )
))
(declare-fun acc!681 () List!12869)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3412 (List!12869 (_ BitVec 64)) Bool)

(assert (=> b!671419 (= e!383691 (not (contains!3412 acc!681 k0!2843)))))

(declare-fun b!671420 () Bool)

(declare-datatypes ((Unit!23564 0))(
  ( (Unit!23565) )
))
(declare-fun e!383682 () Unit!23564)

(declare-fun Unit!23566 () Unit!23564)

(assert (=> b!671420 (= e!383682 Unit!23566)))

(declare-fun b!671421 () Bool)

(declare-fun e!383684 () Bool)

(declare-fun lt!312127 () List!12869)

(assert (=> b!671421 (= e!383684 (contains!3412 lt!312127 k0!2843))))

(declare-fun b!671422 () Bool)

(declare-fun Unit!23567 () Unit!23564)

(assert (=> b!671422 (= e!383682 Unit!23567)))

(declare-datatypes ((array!39173 0))(
  ( (array!39174 (arr!18775 (Array (_ BitVec 32) (_ BitVec 64))) (size!19139 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39173)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671422 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312126 () Unit!23564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39173 (_ BitVec 64) (_ BitVec 32)) Unit!23564)

(assert (=> b!671422 (= lt!312126 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!671422 false))

(declare-fun b!671423 () Bool)

(declare-fun res!438302 () Bool)

(declare-fun e!383687 () Bool)

(assert (=> b!671423 (=> (not res!438302) (not e!383687))))

(assert (=> b!671423 (= res!438302 (not (contains!3412 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671424 () Bool)

(declare-fun res!438289 () Bool)

(assert (=> b!671424 (=> (not res!438289) (not e!383687))))

(declare-fun arrayNoDuplicates!0 (array!39173 (_ BitVec 32) List!12869) Bool)

(assert (=> b!671424 (= res!438289 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12866))))

(declare-fun b!671425 () Bool)

(declare-fun e!383685 () Bool)

(assert (=> b!671425 (= e!383687 e!383685)))

(declare-fun res!438284 () Bool)

(assert (=> b!671425 (=> (not res!438284) (not e!383685))))

(assert (=> b!671425 (= res!438284 (not (= (select (arr!18775 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312129 () Unit!23564)

(assert (=> b!671425 (= lt!312129 e!383682)))

(declare-fun c!76937 () Bool)

(assert (=> b!671425 (= c!76937 (= (select (arr!18775 a!3626) from!3004) k0!2843))))

(declare-fun b!671426 () Bool)

(declare-fun res!438297 () Bool)

(assert (=> b!671426 (=> (not res!438297) (not e!383687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671426 (= res!438297 (validKeyInArray!0 (select (arr!18775 a!3626) from!3004)))))

(declare-fun res!438299 () Bool)

(assert (=> start!60170 (=> (not res!438299) (not e!383687))))

(assert (=> start!60170 (= res!438299 (and (bvslt (size!19139 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19139 a!3626))))))

(assert (=> start!60170 e!383687))

(assert (=> start!60170 true))

(declare-fun array_inv!14549 (array!39173) Bool)

(assert (=> start!60170 (array_inv!14549 a!3626)))

(declare-fun b!671427 () Bool)

(declare-fun res!438281 () Bool)

(assert (=> b!671427 (=> (not res!438281) (not e!383687))))

(assert (=> b!671427 (= res!438281 (validKeyInArray!0 k0!2843))))

(declare-fun b!671428 () Bool)

(declare-fun res!438295 () Bool)

(assert (=> b!671428 (=> (not res!438295) (not e!383687))))

(assert (=> b!671428 (= res!438295 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671429 () Bool)

(declare-fun res!438294 () Bool)

(declare-fun e!383683 () Bool)

(assert (=> b!671429 (=> (not res!438294) (not e!383683))))

(assert (=> b!671429 (= res!438294 (not (contains!3412 lt!312127 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671430 () Bool)

(declare-fun res!438291 () Bool)

(assert (=> b!671430 (=> (not res!438291) (not e!383683))))

(declare-fun noDuplicate!659 (List!12869) Bool)

(assert (=> b!671430 (= res!438291 (noDuplicate!659 lt!312127))))

(declare-fun b!671431 () Bool)

(declare-fun e!383689 () Bool)

(assert (=> b!671431 (= e!383689 (not (contains!3412 lt!312127 k0!2843)))))

(declare-fun b!671432 () Bool)

(declare-fun res!438298 () Bool)

(assert (=> b!671432 (=> (not res!438298) (not e!383687))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671432 (= res!438298 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19139 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671433 () Bool)

(declare-fun res!438292 () Bool)

(assert (=> b!671433 (=> (not res!438292) (not e!383687))))

(declare-fun e!383686 () Bool)

(assert (=> b!671433 (= res!438292 e!383686)))

(declare-fun res!438279 () Bool)

(assert (=> b!671433 (=> res!438279 e!383686)))

(declare-fun e!383692 () Bool)

(assert (=> b!671433 (= res!438279 e!383692)))

(declare-fun res!438301 () Bool)

(assert (=> b!671433 (=> (not res!438301) (not e!383692))))

(assert (=> b!671433 (= res!438301 (bvsgt from!3004 i!1382))))

(declare-fun b!671434 () Bool)

(declare-fun res!438283 () Bool)

(assert (=> b!671434 (=> (not res!438283) (not e!383687))))

(assert (=> b!671434 (= res!438283 (noDuplicate!659 acc!681))))

(declare-fun b!671435 () Bool)

(assert (=> b!671435 (= e!383685 e!383683)))

(declare-fun res!438293 () Bool)

(assert (=> b!671435 (=> (not res!438293) (not e!383683))))

(assert (=> b!671435 (= res!438293 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!260 (List!12869 (_ BitVec 64)) List!12869)

(assert (=> b!671435 (= lt!312127 ($colon$colon!260 acc!681 (select (arr!18775 a!3626) from!3004)))))

(declare-fun b!671436 () Bool)

(assert (=> b!671436 (= e!383686 e!383691)))

(declare-fun res!438282 () Bool)

(assert (=> b!671436 (=> (not res!438282) (not e!383691))))

(assert (=> b!671436 (= res!438282 (bvsle from!3004 i!1382))))

(declare-fun b!671437 () Bool)

(declare-fun res!438296 () Bool)

(assert (=> b!671437 (=> (not res!438296) (not e!383687))))

(assert (=> b!671437 (= res!438296 (not (contains!3412 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671438 () Bool)

(declare-fun e!383688 () Bool)

(assert (=> b!671438 (= e!383688 e!383689)))

(declare-fun res!438290 () Bool)

(assert (=> b!671438 (=> (not res!438290) (not e!383689))))

(assert (=> b!671438 (= res!438290 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671439 () Bool)

(declare-fun res!438286 () Bool)

(assert (=> b!671439 (=> (not res!438286) (not e!383683))))

(assert (=> b!671439 (= res!438286 e!383688)))

(declare-fun res!438288 () Bool)

(assert (=> b!671439 (=> res!438288 e!383688)))

(assert (=> b!671439 (= res!438288 e!383684)))

(declare-fun res!438285 () Bool)

(assert (=> b!671439 (=> (not res!438285) (not e!383684))))

(assert (=> b!671439 (= res!438285 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671440 () Bool)

(assert (=> b!671440 (= e!383683 false)))

(declare-fun lt!312128 () Bool)

(assert (=> b!671440 (= lt!312128 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312127))))

(declare-fun b!671441 () Bool)

(declare-fun res!438287 () Bool)

(assert (=> b!671441 (=> (not res!438287) (not e!383687))))

(assert (=> b!671441 (= res!438287 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19139 a!3626))))))

(declare-fun b!671442 () Bool)

(declare-fun res!438300 () Bool)

(assert (=> b!671442 (=> (not res!438300) (not e!383683))))

(assert (=> b!671442 (= res!438300 (not (contains!3412 lt!312127 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671443 () Bool)

(declare-fun res!438280 () Bool)

(assert (=> b!671443 (=> (not res!438280) (not e!383687))))

(assert (=> b!671443 (= res!438280 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671444 () Bool)

(assert (=> b!671444 (= e!383692 (contains!3412 acc!681 k0!2843))))

(assert (= (and start!60170 res!438299) b!671434))

(assert (= (and b!671434 res!438283) b!671437))

(assert (= (and b!671437 res!438296) b!671423))

(assert (= (and b!671423 res!438302) b!671433))

(assert (= (and b!671433 res!438301) b!671444))

(assert (= (and b!671433 (not res!438279)) b!671436))

(assert (= (and b!671436 res!438282) b!671419))

(assert (= (and b!671433 res!438292) b!671424))

(assert (= (and b!671424 res!438289) b!671428))

(assert (= (and b!671428 res!438295) b!671441))

(assert (= (and b!671441 res!438287) b!671427))

(assert (= (and b!671427 res!438281) b!671443))

(assert (= (and b!671443 res!438280) b!671432))

(assert (= (and b!671432 res!438298) b!671426))

(assert (= (and b!671426 res!438297) b!671425))

(assert (= (and b!671425 c!76937) b!671422))

(assert (= (and b!671425 (not c!76937)) b!671420))

(assert (= (and b!671425 res!438284) b!671435))

(assert (= (and b!671435 res!438293) b!671430))

(assert (= (and b!671430 res!438291) b!671442))

(assert (= (and b!671442 res!438300) b!671429))

(assert (= (and b!671429 res!438294) b!671439))

(assert (= (and b!671439 res!438285) b!671421))

(assert (= (and b!671439 (not res!438288)) b!671438))

(assert (= (and b!671438 res!438290) b!671431))

(assert (= (and b!671439 res!438286) b!671440))

(declare-fun m!640865 () Bool)

(assert (=> b!671435 m!640865))

(assert (=> b!671435 m!640865))

(declare-fun m!640867 () Bool)

(assert (=> b!671435 m!640867))

(declare-fun m!640869 () Bool)

(assert (=> b!671443 m!640869))

(declare-fun m!640871 () Bool)

(assert (=> b!671424 m!640871))

(declare-fun m!640873 () Bool)

(assert (=> b!671442 m!640873))

(declare-fun m!640875 () Bool)

(assert (=> b!671421 m!640875))

(declare-fun m!640877 () Bool)

(assert (=> b!671419 m!640877))

(declare-fun m!640879 () Bool)

(assert (=> b!671437 m!640879))

(assert (=> b!671425 m!640865))

(declare-fun m!640881 () Bool)

(assert (=> b!671440 m!640881))

(assert (=> b!671431 m!640875))

(declare-fun m!640883 () Bool)

(assert (=> b!671429 m!640883))

(declare-fun m!640885 () Bool)

(assert (=> b!671434 m!640885))

(declare-fun m!640887 () Bool)

(assert (=> b!671423 m!640887))

(assert (=> b!671444 m!640877))

(declare-fun m!640889 () Bool)

(assert (=> b!671428 m!640889))

(declare-fun m!640891 () Bool)

(assert (=> b!671427 m!640891))

(declare-fun m!640893 () Bool)

(assert (=> b!671430 m!640893))

(assert (=> b!671426 m!640865))

(assert (=> b!671426 m!640865))

(declare-fun m!640895 () Bool)

(assert (=> b!671426 m!640895))

(declare-fun m!640897 () Bool)

(assert (=> b!671422 m!640897))

(declare-fun m!640899 () Bool)

(assert (=> b!671422 m!640899))

(declare-fun m!640901 () Bool)

(assert (=> start!60170 m!640901))

(check-sat (not start!60170) (not b!671444) (not b!671427) (not b!671437) (not b!671442) (not b!671431) (not b!671430) (not b!671440) (not b!671434) (not b!671424) (not b!671422) (not b!671429) (not b!671421) (not b!671443) (not b!671435) (not b!671426) (not b!671419) (not b!671428) (not b!671423))
(check-sat)
