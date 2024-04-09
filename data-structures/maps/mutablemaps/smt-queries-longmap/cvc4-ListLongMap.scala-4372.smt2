; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60280 () Bool)

(assert start!60280)

(declare-fun b!675535 () Bool)

(declare-fun res!442154 () Bool)

(declare-fun e!385392 () Bool)

(assert (=> b!675535 (=> (not res!442154) (not e!385392))))

(declare-datatypes ((array!39283 0))(
  ( (array!39284 (arr!18830 (Array (_ BitVec 32) (_ BitVec 64))) (size!19194 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39283)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675535 (= res!442154 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675536 () Bool)

(declare-fun res!442150 () Bool)

(assert (=> b!675536 (=> (not res!442150) (not e!385392))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675536 (= res!442150 (not (validKeyInArray!0 (select (arr!18830 a!3626) from!3004))))))

(declare-fun res!442143 () Bool)

(assert (=> start!60280 (=> (not res!442143) (not e!385392))))

(assert (=> start!60280 (= res!442143 (and (bvslt (size!19194 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19194 a!3626))))))

(assert (=> start!60280 e!385392))

(assert (=> start!60280 true))

(declare-fun array_inv!14604 (array!39283) Bool)

(assert (=> start!60280 (array_inv!14604 a!3626)))

(declare-fun b!675537 () Bool)

(declare-fun res!442146 () Bool)

(assert (=> b!675537 (=> (not res!442146) (not e!385392))))

(declare-datatypes ((List!12924 0))(
  ( (Nil!12921) (Cons!12920 (h!13965 (_ BitVec 64)) (t!19160 List!12924)) )
))
(declare-fun acc!681 () List!12924)

(declare-fun noDuplicate!714 (List!12924) Bool)

(assert (=> b!675537 (= res!442146 (noDuplicate!714 acc!681))))

(declare-fun b!675538 () Bool)

(declare-fun res!442139 () Bool)

(assert (=> b!675538 (=> (not res!442139) (not e!385392))))

(assert (=> b!675538 (= res!442139 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675539 () Bool)

(declare-fun res!442151 () Bool)

(assert (=> b!675539 (=> (not res!442151) (not e!385392))))

(declare-fun e!385394 () Bool)

(assert (=> b!675539 (= res!442151 e!385394)))

(declare-fun res!442147 () Bool)

(assert (=> b!675539 (=> res!442147 e!385394)))

(declare-fun e!385399 () Bool)

(assert (=> b!675539 (= res!442147 e!385399)))

(declare-fun res!442138 () Bool)

(assert (=> b!675539 (=> (not res!442138) (not e!385399))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675539 (= res!442138 (bvsgt from!3004 i!1382))))

(declare-fun b!675540 () Bool)

(declare-fun contains!3467 (List!12924 (_ BitVec 64)) Bool)

(assert (=> b!675540 (= e!385399 (contains!3467 acc!681 k!2843))))

(declare-fun b!675541 () Bool)

(declare-fun res!442136 () Bool)

(assert (=> b!675541 (=> (not res!442136) (not e!385392))))

(assert (=> b!675541 (= res!442136 (validKeyInArray!0 k!2843))))

(declare-fun b!675542 () Bool)

(declare-fun res!442152 () Bool)

(assert (=> b!675542 (=> (not res!442152) (not e!385392))))

(assert (=> b!675542 (= res!442152 (not (contains!3467 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675543 () Bool)

(declare-fun res!442153 () Bool)

(assert (=> b!675543 (=> (not res!442153) (not e!385392))))

(declare-fun arrayNoDuplicates!0 (array!39283 (_ BitVec 32) List!12924) Bool)

(assert (=> b!675543 (= res!442153 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12921))))

(declare-fun b!675544 () Bool)

(assert (=> b!675544 (= e!385392 false)))

(declare-fun lt!312681 () Bool)

(assert (=> b!675544 (= lt!312681 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675545 () Bool)

(declare-fun res!442137 () Bool)

(assert (=> b!675545 (=> (not res!442137) (not e!385392))))

(declare-fun e!385398 () Bool)

(assert (=> b!675545 (= res!442137 e!385398)))

(declare-fun res!442145 () Bool)

(assert (=> b!675545 (=> res!442145 e!385398)))

(declare-fun e!385395 () Bool)

(assert (=> b!675545 (= res!442145 e!385395)))

(declare-fun res!442141 () Bool)

(assert (=> b!675545 (=> (not res!442141) (not e!385395))))

(assert (=> b!675545 (= res!442141 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675546 () Bool)

(declare-fun res!442148 () Bool)

(assert (=> b!675546 (=> (not res!442148) (not e!385392))))

(assert (=> b!675546 (= res!442148 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19194 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675547 () Bool)

(assert (=> b!675547 (= e!385395 (contains!3467 acc!681 k!2843))))

(declare-fun b!675548 () Bool)

(declare-fun e!385396 () Bool)

(assert (=> b!675548 (= e!385396 (not (contains!3467 acc!681 k!2843)))))

(declare-fun b!675549 () Bool)

(declare-fun e!385397 () Bool)

(assert (=> b!675549 (= e!385398 e!385397)))

(declare-fun res!442149 () Bool)

(assert (=> b!675549 (=> (not res!442149) (not e!385397))))

(assert (=> b!675549 (= res!442149 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675550 () Bool)

(assert (=> b!675550 (= e!385394 e!385396)))

(declare-fun res!442144 () Bool)

(assert (=> b!675550 (=> (not res!442144) (not e!385396))))

(assert (=> b!675550 (= res!442144 (bvsle from!3004 i!1382))))

(declare-fun b!675551 () Bool)

(declare-fun res!442140 () Bool)

(assert (=> b!675551 (=> (not res!442140) (not e!385392))))

(assert (=> b!675551 (= res!442140 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675552 () Bool)

(declare-fun res!442135 () Bool)

(assert (=> b!675552 (=> (not res!442135) (not e!385392))))

(assert (=> b!675552 (= res!442135 (not (contains!3467 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675553 () Bool)

(declare-fun res!442142 () Bool)

(assert (=> b!675553 (=> (not res!442142) (not e!385392))))

(assert (=> b!675553 (= res!442142 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19194 a!3626))))))

(declare-fun b!675554 () Bool)

(assert (=> b!675554 (= e!385397 (not (contains!3467 acc!681 k!2843)))))

(assert (= (and start!60280 res!442143) b!675537))

(assert (= (and b!675537 res!442146) b!675542))

(assert (= (and b!675542 res!442152) b!675552))

(assert (= (and b!675552 res!442135) b!675539))

(assert (= (and b!675539 res!442138) b!675540))

(assert (= (and b!675539 (not res!442147)) b!675550))

(assert (= (and b!675550 res!442144) b!675548))

(assert (= (and b!675539 res!442151) b!675543))

(assert (= (and b!675543 res!442153) b!675551))

(assert (= (and b!675551 res!442140) b!675553))

(assert (= (and b!675553 res!442142) b!675541))

(assert (= (and b!675541 res!442136) b!675535))

(assert (= (and b!675535 res!442154) b!675546))

(assert (= (and b!675546 res!442148) b!675536))

(assert (= (and b!675536 res!442150) b!675538))

(assert (= (and b!675538 res!442139) b!675545))

(assert (= (and b!675545 res!442141) b!675547))

(assert (= (and b!675545 (not res!442145)) b!675549))

(assert (= (and b!675549 res!442149) b!675554))

(assert (= (and b!675545 res!442137) b!675544))

(declare-fun m!642873 () Bool)

(assert (=> b!675541 m!642873))

(declare-fun m!642875 () Bool)

(assert (=> b!675551 m!642875))

(declare-fun m!642877 () Bool)

(assert (=> b!675543 m!642877))

(declare-fun m!642879 () Bool)

(assert (=> b!675554 m!642879))

(declare-fun m!642881 () Bool)

(assert (=> b!675535 m!642881))

(declare-fun m!642883 () Bool)

(assert (=> start!60280 m!642883))

(assert (=> b!675547 m!642879))

(declare-fun m!642885 () Bool)

(assert (=> b!675552 m!642885))

(declare-fun m!642887 () Bool)

(assert (=> b!675544 m!642887))

(assert (=> b!675548 m!642879))

(declare-fun m!642889 () Bool)

(assert (=> b!675537 m!642889))

(assert (=> b!675540 m!642879))

(declare-fun m!642891 () Bool)

(assert (=> b!675542 m!642891))

(declare-fun m!642893 () Bool)

(assert (=> b!675536 m!642893))

(assert (=> b!675536 m!642893))

(declare-fun m!642895 () Bool)

(assert (=> b!675536 m!642895))

(push 1)

(assert (not b!675547))

(assert (not b!675544))

(assert (not b!675537))

(assert (not b!675536))

(assert (not b!675551))

(assert (not b!675548))

(assert (not b!675552))

(assert (not b!675540))

(assert (not b!675541))

(assert (not b!675554))

(assert (not start!60280))

(assert (not b!675543))

(assert (not b!675542))

