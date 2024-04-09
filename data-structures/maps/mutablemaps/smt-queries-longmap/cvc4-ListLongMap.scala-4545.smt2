; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63368 () Bool)

(assert start!63368)

(declare-fun b!713303 () Bool)

(declare-fun res!476562 () Bool)

(declare-fun e!401160 () Bool)

(assert (=> b!713303 (=> (not res!476562) (not e!401160))))

(declare-datatypes ((List!13443 0))(
  ( (Nil!13440) (Cons!13439 (h!14484 (_ BitVec 64)) (t!19766 List!13443)) )
))
(declare-fun acc!652 () List!13443)

(declare-fun newAcc!49 () List!13443)

(declare-fun subseq!430 (List!13443 List!13443) Bool)

(assert (=> b!713303 (= res!476562 (subseq!430 acc!652 newAcc!49))))

(declare-fun b!713304 () Bool)

(declare-fun res!476555 () Bool)

(assert (=> b!713304 (=> (not res!476555) (not e!401160))))

(declare-fun contains!3986 (List!13443 (_ BitVec 64)) Bool)

(assert (=> b!713304 (= res!476555 (not (contains!3986 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713305 () Bool)

(declare-fun res!476559 () Bool)

(assert (=> b!713305 (=> (not res!476559) (not e!401160))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!713305 (= res!476559 (contains!3986 newAcc!49 k!2824))))

(declare-fun b!713306 () Bool)

(declare-fun res!476565 () Bool)

(assert (=> b!713306 (=> (not res!476565) (not e!401160))))

(declare-fun -!395 (List!13443 (_ BitVec 64)) List!13443)

(assert (=> b!713306 (= res!476565 (= (-!395 newAcc!49 k!2824) acc!652))))

(declare-fun b!713307 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!713307 (= e!401160 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!713308 () Bool)

(declare-fun res!476554 () Bool)

(assert (=> b!713308 (=> (not res!476554) (not e!401160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713308 (= res!476554 (validKeyInArray!0 k!2824))))

(declare-fun b!713310 () Bool)

(declare-fun res!476563 () Bool)

(assert (=> b!713310 (=> (not res!476563) (not e!401160))))

(declare-datatypes ((array!40426 0))(
  ( (array!40427 (arr!19349 (Array (_ BitVec 32) (_ BitVec 64))) (size!19761 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40426)

(declare-fun arrayContainsKey!0 (array!40426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713310 (= res!476563 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713311 () Bool)

(declare-fun res!476557 () Bool)

(assert (=> b!713311 (=> (not res!476557) (not e!401160))))

(assert (=> b!713311 (= res!476557 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19761 a!3591)))))

(declare-fun b!713312 () Bool)

(declare-fun res!476560 () Bool)

(assert (=> b!713312 (=> (not res!476560) (not e!401160))))

(assert (=> b!713312 (= res!476560 (not (validKeyInArray!0 (select (arr!19349 a!3591) from!2969))))))

(declare-fun b!713313 () Bool)

(declare-fun res!476553 () Bool)

(assert (=> b!713313 (=> (not res!476553) (not e!401160))))

(declare-fun arrayNoDuplicates!0 (array!40426 (_ BitVec 32) List!13443) Bool)

(assert (=> b!713313 (= res!476553 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713314 () Bool)

(declare-fun res!476556 () Bool)

(assert (=> b!713314 (=> (not res!476556) (not e!401160))))

(declare-fun noDuplicate!1233 (List!13443) Bool)

(assert (=> b!713314 (= res!476556 (noDuplicate!1233 newAcc!49))))

(declare-fun b!713309 () Bool)

(declare-fun res!476567 () Bool)

(assert (=> b!713309 (=> (not res!476567) (not e!401160))))

(assert (=> b!713309 (= res!476567 (not (contains!3986 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!476561 () Bool)

(assert (=> start!63368 (=> (not res!476561) (not e!401160))))

(assert (=> start!63368 (= res!476561 (and (bvslt (size!19761 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19761 a!3591))))))

(assert (=> start!63368 e!401160))

(assert (=> start!63368 true))

(declare-fun array_inv!15123 (array!40426) Bool)

(assert (=> start!63368 (array_inv!15123 a!3591)))

(declare-fun b!713315 () Bool)

(declare-fun res!476566 () Bool)

(assert (=> b!713315 (=> (not res!476566) (not e!401160))))

(assert (=> b!713315 (= res!476566 (not (contains!3986 acc!652 k!2824)))))

(declare-fun b!713316 () Bool)

(declare-fun res!476564 () Bool)

(assert (=> b!713316 (=> (not res!476564) (not e!401160))))

(assert (=> b!713316 (= res!476564 (not (contains!3986 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713317 () Bool)

(declare-fun res!476568 () Bool)

(assert (=> b!713317 (=> (not res!476568) (not e!401160))))

(assert (=> b!713317 (= res!476568 (noDuplicate!1233 acc!652))))

(declare-fun b!713318 () Bool)

(declare-fun res!476558 () Bool)

(assert (=> b!713318 (=> (not res!476558) (not e!401160))))

(assert (=> b!713318 (= res!476558 (not (contains!3986 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63368 res!476561) b!713317))

(assert (= (and b!713317 res!476568) b!713314))

(assert (= (and b!713314 res!476556) b!713309))

(assert (= (and b!713309 res!476567) b!713318))

(assert (= (and b!713318 res!476558) b!713310))

(assert (= (and b!713310 res!476563) b!713315))

(assert (= (and b!713315 res!476566) b!713308))

(assert (= (and b!713308 res!476554) b!713313))

(assert (= (and b!713313 res!476553) b!713303))

(assert (= (and b!713303 res!476562) b!713305))

(assert (= (and b!713305 res!476559) b!713306))

(assert (= (and b!713306 res!476565) b!713304))

(assert (= (and b!713304 res!476555) b!713316))

(assert (= (and b!713316 res!476564) b!713311))

(assert (= (and b!713311 res!476557) b!713312))

(assert (= (and b!713312 res!476560) b!713307))

(declare-fun m!670177 () Bool)

(assert (=> b!713310 m!670177))

(declare-fun m!670179 () Bool)

(assert (=> b!713313 m!670179))

(declare-fun m!670181 () Bool)

(assert (=> b!713303 m!670181))

(declare-fun m!670183 () Bool)

(assert (=> b!713309 m!670183))

(declare-fun m!670185 () Bool)

(assert (=> b!713318 m!670185))

(declare-fun m!670187 () Bool)

(assert (=> b!713308 m!670187))

(declare-fun m!670189 () Bool)

(assert (=> b!713312 m!670189))

(assert (=> b!713312 m!670189))

(declare-fun m!670191 () Bool)

(assert (=> b!713312 m!670191))

(declare-fun m!670193 () Bool)

(assert (=> b!713304 m!670193))

(declare-fun m!670195 () Bool)

(assert (=> b!713316 m!670195))

(declare-fun m!670197 () Bool)

(assert (=> b!713314 m!670197))

(declare-fun m!670199 () Bool)

(assert (=> start!63368 m!670199))

(declare-fun m!670201 () Bool)

(assert (=> b!713306 m!670201))

(declare-fun m!670203 () Bool)

(assert (=> b!713305 m!670203))

(declare-fun m!670205 () Bool)

(assert (=> b!713317 m!670205))

(declare-fun m!670207 () Bool)

(assert (=> b!713315 m!670207))

(push 1)

(assert (not b!713306))

(assert (not b!713310))

(assert (not b!713304))

(assert (not b!713305))

(assert (not b!713312))

(assert (not b!713309))

(assert (not b!713316))

(assert (not start!63368))

(assert (not b!713315))

(assert (not b!713318))

(assert (not b!713303))

(assert (not b!713314))

(assert (not b!713313))

(assert (not b!713317))

(assert (not b!713308))

(check-sat)

