; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60172 () Bool)

(assert start!60172)

(declare-fun b!671497 () Bool)

(declare-fun res!438351 () Bool)

(declare-fun e!383723 () Bool)

(assert (=> b!671497 (=> (not res!438351) (not e!383723))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39175 0))(
  ( (array!39176 (arr!18776 (Array (_ BitVec 32) (_ BitVec 64))) (size!19140 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39175)

(assert (=> b!671497 (= res!438351 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19140 a!3626))))))

(declare-fun b!671499 () Bool)

(declare-fun e!383722 () Bool)

(declare-fun e!383717 () Bool)

(assert (=> b!671499 (= e!383722 e!383717)))

(declare-fun res!438367 () Bool)

(assert (=> b!671499 (=> (not res!438367) (not e!383717))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!671499 (= res!438367 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671500 () Bool)

(declare-fun res!438374 () Bool)

(assert (=> b!671500 (=> (not res!438374) (not e!383723))))

(assert (=> b!671500 (= res!438374 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19140 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671501 () Bool)

(declare-fun e!383724 () Bool)

(declare-fun e!383715 () Bool)

(assert (=> b!671501 (= e!383724 e!383715)))

(declare-fun res!438361 () Bool)

(assert (=> b!671501 (=> (not res!438361) (not e!383715))))

(assert (=> b!671501 (= res!438361 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12870 0))(
  ( (Nil!12867) (Cons!12866 (h!13911 (_ BitVec 64)) (t!19106 List!12870)) )
))
(declare-fun acc!681 () List!12870)

(declare-fun lt!312141 () List!12870)

(declare-fun $colon$colon!261 (List!12870 (_ BitVec 64)) List!12870)

(assert (=> b!671501 (= lt!312141 ($colon$colon!261 acc!681 (select (arr!18776 a!3626) from!3004)))))

(declare-fun b!671502 () Bool)

(declare-fun res!438360 () Bool)

(assert (=> b!671502 (=> (not res!438360) (not e!383723))))

(declare-fun noDuplicate!660 (List!12870) Bool)

(assert (=> b!671502 (= res!438360 (noDuplicate!660 acc!681))))

(declare-fun b!671503 () Bool)

(declare-datatypes ((Unit!23568 0))(
  ( (Unit!23569) )
))
(declare-fun e!383716 () Unit!23568)

(declare-fun Unit!23570 () Unit!23568)

(assert (=> b!671503 (= e!383716 Unit!23570)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671503 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312139 () Unit!23568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39175 (_ BitVec 64) (_ BitVec 32)) Unit!23568)

(assert (=> b!671503 (= lt!312139 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671503 false))

(declare-fun b!671504 () Bool)

(declare-fun res!438370 () Bool)

(assert (=> b!671504 (=> (not res!438370) (not e!383715))))

(declare-fun contains!3413 (List!12870 (_ BitVec 64)) Bool)

(assert (=> b!671504 (= res!438370 (not (contains!3413 lt!312141 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671505 () Bool)

(declare-fun res!438362 () Bool)

(assert (=> b!671505 (=> (not res!438362) (not e!383715))))

(assert (=> b!671505 (= res!438362 (not (contains!3413 lt!312141 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671506 () Bool)

(declare-fun Unit!23571 () Unit!23568)

(assert (=> b!671506 (= e!383716 Unit!23571)))

(declare-fun b!671507 () Bool)

(declare-fun res!438358 () Bool)

(assert (=> b!671507 (=> (not res!438358) (not e!383723))))

(declare-fun e!383718 () Bool)

(assert (=> b!671507 (= res!438358 e!383718)))

(declare-fun res!438371 () Bool)

(assert (=> b!671507 (=> res!438371 e!383718)))

(declare-fun e!383721 () Bool)

(assert (=> b!671507 (= res!438371 e!383721)))

(declare-fun res!438364 () Bool)

(assert (=> b!671507 (=> (not res!438364) (not e!383721))))

(assert (=> b!671507 (= res!438364 (bvsgt from!3004 i!1382))))

(declare-fun b!671508 () Bool)

(declare-fun res!438352 () Bool)

(assert (=> b!671508 (=> (not res!438352) (not e!383723))))

(declare-fun arrayNoDuplicates!0 (array!39175 (_ BitVec 32) List!12870) Bool)

(assert (=> b!671508 (= res!438352 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671509 () Bool)

(declare-fun res!438373 () Bool)

(assert (=> b!671509 (=> (not res!438373) (not e!383723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671509 (= res!438373 (validKeyInArray!0 (select (arr!18776 a!3626) from!3004)))))

(declare-fun b!671510 () Bool)

(declare-fun e!383725 () Bool)

(assert (=> b!671510 (= e!383725 (not (contains!3413 acc!681 k!2843)))))

(declare-fun b!671511 () Bool)

(declare-fun res!438372 () Bool)

(assert (=> b!671511 (=> (not res!438372) (not e!383723))))

(assert (=> b!671511 (= res!438372 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12867))))

(declare-fun b!671512 () Bool)

(declare-fun res!438369 () Bool)

(assert (=> b!671512 (=> (not res!438369) (not e!383723))))

(assert (=> b!671512 (= res!438369 (not (contains!3413 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671513 () Bool)

(assert (=> b!671513 (= e!383717 (not (contains!3413 lt!312141 k!2843)))))

(declare-fun b!671514 () Bool)

(declare-fun res!438357 () Bool)

(assert (=> b!671514 (=> (not res!438357) (not e!383723))))

(assert (=> b!671514 (= res!438357 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671498 () Bool)

(assert (=> b!671498 (= e!383718 e!383725)))

(declare-fun res!438368 () Bool)

(assert (=> b!671498 (=> (not res!438368) (not e!383725))))

(assert (=> b!671498 (= res!438368 (bvsle from!3004 i!1382))))

(declare-fun res!438366 () Bool)

(assert (=> start!60172 (=> (not res!438366) (not e!383723))))

(assert (=> start!60172 (= res!438366 (and (bvslt (size!19140 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19140 a!3626))))))

(assert (=> start!60172 e!383723))

(assert (=> start!60172 true))

(declare-fun array_inv!14550 (array!39175) Bool)

(assert (=> start!60172 (array_inv!14550 a!3626)))

(declare-fun b!671515 () Bool)

(assert (=> b!671515 (= e!383723 e!383724)))

(declare-fun res!438356 () Bool)

(assert (=> b!671515 (=> (not res!438356) (not e!383724))))

(assert (=> b!671515 (= res!438356 (not (= (select (arr!18776 a!3626) from!3004) k!2843)))))

(declare-fun lt!312140 () Unit!23568)

(assert (=> b!671515 (= lt!312140 e!383716)))

(declare-fun c!76940 () Bool)

(assert (=> b!671515 (= c!76940 (= (select (arr!18776 a!3626) from!3004) k!2843))))

(declare-fun b!671516 () Bool)

(declare-fun e!383719 () Bool)

(assert (=> b!671516 (= e!383719 (contains!3413 lt!312141 k!2843))))

(declare-fun b!671517 () Bool)

(assert (=> b!671517 (= e!383721 (contains!3413 acc!681 k!2843))))

(declare-fun b!671518 () Bool)

(assert (=> b!671518 (= e!383715 false)))

(declare-fun lt!312138 () Bool)

(assert (=> b!671518 (= lt!312138 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312141))))

(declare-fun b!671519 () Bool)

(declare-fun res!438354 () Bool)

(assert (=> b!671519 (=> (not res!438354) (not e!383715))))

(assert (=> b!671519 (= res!438354 (noDuplicate!660 lt!312141))))

(declare-fun b!671520 () Bool)

(declare-fun res!438363 () Bool)

(assert (=> b!671520 (=> (not res!438363) (not e!383723))))

(assert (=> b!671520 (= res!438363 (validKeyInArray!0 k!2843))))

(declare-fun b!671521 () Bool)

(declare-fun res!438365 () Bool)

(assert (=> b!671521 (=> (not res!438365) (not e!383715))))

(assert (=> b!671521 (= res!438365 e!383722)))

(declare-fun res!438353 () Bool)

(assert (=> b!671521 (=> res!438353 e!383722)))

(assert (=> b!671521 (= res!438353 e!383719)))

(declare-fun res!438355 () Bool)

(assert (=> b!671521 (=> (not res!438355) (not e!383719))))

(assert (=> b!671521 (= res!438355 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671522 () Bool)

(declare-fun res!438359 () Bool)

(assert (=> b!671522 (=> (not res!438359) (not e!383723))))

(assert (=> b!671522 (= res!438359 (not (contains!3413 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60172 res!438366) b!671502))

(assert (= (and b!671502 res!438360) b!671512))

(assert (= (and b!671512 res!438369) b!671522))

(assert (= (and b!671522 res!438359) b!671507))

(assert (= (and b!671507 res!438364) b!671517))

(assert (= (and b!671507 (not res!438371)) b!671498))

(assert (= (and b!671498 res!438368) b!671510))

(assert (= (and b!671507 res!438358) b!671511))

(assert (= (and b!671511 res!438372) b!671508))

(assert (= (and b!671508 res!438352) b!671497))

(assert (= (and b!671497 res!438351) b!671520))

(assert (= (and b!671520 res!438363) b!671514))

(assert (= (and b!671514 res!438357) b!671500))

(assert (= (and b!671500 res!438374) b!671509))

(assert (= (and b!671509 res!438373) b!671515))

(assert (= (and b!671515 c!76940) b!671503))

(assert (= (and b!671515 (not c!76940)) b!671506))

(assert (= (and b!671515 res!438356) b!671501))

(assert (= (and b!671501 res!438361) b!671519))

(assert (= (and b!671519 res!438354) b!671505))

(assert (= (and b!671505 res!438362) b!671504))

(assert (= (and b!671504 res!438370) b!671521))

(assert (= (and b!671521 res!438355) b!671516))

(assert (= (and b!671521 (not res!438353)) b!671499))

(assert (= (and b!671499 res!438367) b!671513))

(assert (= (and b!671521 res!438365) b!671518))

(declare-fun m!640903 () Bool)

(assert (=> b!671518 m!640903))

(declare-fun m!640905 () Bool)

(assert (=> b!671510 m!640905))

(declare-fun m!640907 () Bool)

(assert (=> b!671511 m!640907))

(declare-fun m!640909 () Bool)

(assert (=> b!671515 m!640909))

(declare-fun m!640911 () Bool)

(assert (=> b!671519 m!640911))

(assert (=> b!671517 m!640905))

(declare-fun m!640913 () Bool)

(assert (=> b!671516 m!640913))

(declare-fun m!640915 () Bool)

(assert (=> b!671505 m!640915))

(declare-fun m!640917 () Bool)

(assert (=> b!671522 m!640917))

(assert (=> b!671513 m!640913))

(assert (=> b!671501 m!640909))

(assert (=> b!671501 m!640909))

(declare-fun m!640919 () Bool)

(assert (=> b!671501 m!640919))

(declare-fun m!640921 () Bool)

(assert (=> b!671502 m!640921))

(declare-fun m!640923 () Bool)

(assert (=> b!671514 m!640923))

(declare-fun m!640925 () Bool)

(assert (=> b!671508 m!640925))

(declare-fun m!640927 () Bool)

(assert (=> b!671503 m!640927))

(declare-fun m!640929 () Bool)

(assert (=> b!671503 m!640929))

(declare-fun m!640931 () Bool)

(assert (=> b!671504 m!640931))

(declare-fun m!640933 () Bool)

(assert (=> b!671520 m!640933))

(declare-fun m!640935 () Bool)

(assert (=> start!60172 m!640935))

(declare-fun m!640937 () Bool)

(assert (=> b!671512 m!640937))

(assert (=> b!671509 m!640909))

(assert (=> b!671509 m!640909))

(declare-fun m!640939 () Bool)

(assert (=> b!671509 m!640939))

(push 1)

