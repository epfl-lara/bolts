; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61764 () Bool)

(assert start!61764)

(declare-fun res!455092 () Bool)

(declare-fun e!393172 () Bool)

(assert (=> start!61764 (=> (not res!455092) (not e!393172))))

(declare-datatypes ((array!39741 0))(
  ( (array!39742 (arr!19035 (Array (_ BitVec 32) (_ BitVec 64))) (size!19418 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39741)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61764 (= res!455092 (and (bvslt (size!19418 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19418 a!3626))))))

(assert (=> start!61764 e!393172))

(assert (=> start!61764 true))

(declare-fun array_inv!14809 (array!39741) Bool)

(assert (=> start!61764 (array_inv!14809 a!3626)))

(declare-fun b!690527 () Bool)

(declare-fun e!393169 () Bool)

(declare-fun e!393168 () Bool)

(assert (=> b!690527 (= e!393169 e!393168)))

(declare-fun res!455090 () Bool)

(assert (=> b!690527 (=> (not res!455090) (not e!393168))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690527 (= res!455090 (bvsle from!3004 i!1382))))

(declare-fun b!690528 () Bool)

(declare-fun res!455089 () Bool)

(assert (=> b!690528 (=> (not res!455089) (not e!393172))))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!690528 (= res!455089 (= (select (arr!19035 a!3626) from!3004) k!2843))))

(declare-fun b!690529 () Bool)

(declare-fun res!455094 () Bool)

(assert (=> b!690529 (=> (not res!455094) (not e!393172))))

(assert (=> b!690529 (= res!455094 e!393169)))

(declare-fun res!455095 () Bool)

(assert (=> b!690529 (=> res!455095 e!393169)))

(declare-fun e!393171 () Bool)

(assert (=> b!690529 (= res!455095 e!393171)))

(declare-fun res!455091 () Bool)

(assert (=> b!690529 (=> (not res!455091) (not e!393171))))

(assert (=> b!690529 (= res!455091 (bvsgt from!3004 i!1382))))

(declare-fun b!690530 () Bool)

(declare-fun res!455096 () Bool)

(assert (=> b!690530 (=> (not res!455096) (not e!393172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690530 (= res!455096 (validKeyInArray!0 k!2843))))

(declare-fun b!690531 () Bool)

(declare-fun res!455081 () Bool)

(assert (=> b!690531 (=> (not res!455081) (not e!393172))))

(declare-datatypes ((List!13129 0))(
  ( (Nil!13126) (Cons!13125 (h!14170 (_ BitVec 64)) (t!19404 List!13129)) )
))
(declare-fun acc!681 () List!13129)

(declare-fun contains!3672 (List!13129 (_ BitVec 64)) Bool)

(assert (=> b!690531 (= res!455081 (not (contains!3672 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690532 () Bool)

(declare-fun res!455082 () Bool)

(assert (=> b!690532 (=> (not res!455082) (not e!393172))))

(declare-fun arrayContainsKey!0 (array!39741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690532 (= res!455082 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690533 () Bool)

(declare-fun res!455093 () Bool)

(assert (=> b!690533 (=> (not res!455093) (not e!393172))))

(declare-fun arrayNoDuplicates!0 (array!39741 (_ BitVec 32) List!13129) Bool)

(assert (=> b!690533 (= res!455093 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13126))))

(declare-fun b!690534 () Bool)

(assert (=> b!690534 (= e!393172 (not true))))

(assert (=> b!690534 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690535 () Bool)

(declare-fun res!455086 () Bool)

(assert (=> b!690535 (=> (not res!455086) (not e!393172))))

(assert (=> b!690535 (= res!455086 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19418 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690536 () Bool)

(assert (=> b!690536 (= e!393171 (contains!3672 acc!681 k!2843))))

(declare-fun b!690537 () Bool)

(declare-fun res!455088 () Bool)

(assert (=> b!690537 (=> (not res!455088) (not e!393172))))

(assert (=> b!690537 (= res!455088 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690538 () Bool)

(declare-fun res!455083 () Bool)

(assert (=> b!690538 (=> (not res!455083) (not e!393172))))

(assert (=> b!690538 (= res!455083 (validKeyInArray!0 (select (arr!19035 a!3626) from!3004)))))

(declare-fun b!690539 () Bool)

(declare-fun res!455087 () Bool)

(assert (=> b!690539 (=> (not res!455087) (not e!393172))))

(assert (=> b!690539 (= res!455087 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19418 a!3626))))))

(declare-fun b!690540 () Bool)

(assert (=> b!690540 (= e!393168 (not (contains!3672 acc!681 k!2843)))))

(declare-fun b!690541 () Bool)

(declare-fun res!455084 () Bool)

(assert (=> b!690541 (=> (not res!455084) (not e!393172))))

(assert (=> b!690541 (= res!455084 (not (contains!3672 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690542 () Bool)

(declare-fun res!455085 () Bool)

(assert (=> b!690542 (=> (not res!455085) (not e!393172))))

(declare-fun noDuplicate!919 (List!13129) Bool)

(assert (=> b!690542 (= res!455085 (noDuplicate!919 acc!681))))

(assert (= (and start!61764 res!455092) b!690542))

(assert (= (and b!690542 res!455085) b!690531))

(assert (= (and b!690531 res!455081) b!690541))

(assert (= (and b!690541 res!455084) b!690529))

(assert (= (and b!690529 res!455091) b!690536))

(assert (= (and b!690529 (not res!455095)) b!690527))

(assert (= (and b!690527 res!455090) b!690540))

(assert (= (and b!690529 res!455094) b!690533))

(assert (= (and b!690533 res!455093) b!690537))

(assert (= (and b!690537 res!455088) b!690539))

(assert (= (and b!690539 res!455087) b!690530))

(assert (= (and b!690530 res!455096) b!690532))

(assert (= (and b!690532 res!455082) b!690535))

(assert (= (and b!690535 res!455086) b!690538))

(assert (= (and b!690538 res!455083) b!690528))

(assert (= (and b!690528 res!455089) b!690534))

(declare-fun m!653967 () Bool)

(assert (=> start!61764 m!653967))

(declare-fun m!653969 () Bool)

(assert (=> b!690532 m!653969))

(declare-fun m!653971 () Bool)

(assert (=> b!690541 m!653971))

(declare-fun m!653973 () Bool)

(assert (=> b!690542 m!653973))

(declare-fun m!653975 () Bool)

(assert (=> b!690540 m!653975))

(declare-fun m!653977 () Bool)

(assert (=> b!690537 m!653977))

(declare-fun m!653979 () Bool)

(assert (=> b!690538 m!653979))

(assert (=> b!690538 m!653979))

(declare-fun m!653981 () Bool)

(assert (=> b!690538 m!653981))

(assert (=> b!690536 m!653975))

(declare-fun m!653983 () Bool)

(assert (=> b!690531 m!653983))

(assert (=> b!690528 m!653979))

(declare-fun m!653985 () Bool)

(assert (=> b!690534 m!653985))

(declare-fun m!653987 () Bool)

(assert (=> b!690530 m!653987))

(declare-fun m!653989 () Bool)

(assert (=> b!690533 m!653989))

(push 1)

(assert (not b!690533))

(assert (not b!690534))

(assert (not b!690541))

(assert (not start!61764))

(assert (not b!690540))

(assert (not b!690537))

(assert (not b!690536))

(assert (not b!690531))

(assert (not b!690532))

(assert (not b!690538))

(assert (not b!690530))

(assert (not b!690542))

(check-sat)

(pop 1)

