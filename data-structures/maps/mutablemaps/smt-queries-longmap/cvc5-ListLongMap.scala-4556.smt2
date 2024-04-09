; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63526 () Bool)

(assert start!63526)

(declare-fun b!715155 () Bool)

(declare-fun res!478306 () Bool)

(declare-fun e!401753 () Bool)

(assert (=> b!715155 (=> (not res!478306) (not e!401753))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13474 0))(
  ( (Nil!13471) (Cons!13470 (h!14515 (_ BitVec 64)) (t!19797 List!13474)) )
))
(declare-fun acc!652 () List!13474)

(declare-datatypes ((array!40494 0))(
  ( (array!40495 (arr!19380 (Array (_ BitVec 32) (_ BitVec 64))) (size!19796 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40494)

(declare-fun arrayNoDuplicates!0 (array!40494 (_ BitVec 32) List!13474) Bool)

(assert (=> b!715155 (= res!478306 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715156 () Bool)

(declare-fun res!478303 () Bool)

(assert (=> b!715156 (=> (not res!478303) (not e!401753))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!4017 (List!13474 (_ BitVec 64)) Bool)

(assert (=> b!715156 (= res!478303 (not (contains!4017 acc!652 k!2824)))))

(declare-fun b!715157 () Bool)

(declare-fun res!478293 () Bool)

(assert (=> b!715157 (=> (not res!478293) (not e!401753))))

(assert (=> b!715157 (= res!478293 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19796 a!3591)))))

(declare-fun b!715158 () Bool)

(declare-fun res!478308 () Bool)

(assert (=> b!715158 (=> (not res!478308) (not e!401753))))

(declare-fun newAcc!49 () List!13474)

(assert (=> b!715158 (= res!478308 (not (contains!4017 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715159 () Bool)

(declare-fun res!478295 () Bool)

(assert (=> b!715159 (=> (not res!478295) (not e!401753))))

(declare-fun noDuplicate!1264 (List!13474) Bool)

(assert (=> b!715159 (= res!478295 (noDuplicate!1264 newAcc!49))))

(declare-fun b!715160 () Bool)

(declare-fun res!478297 () Bool)

(assert (=> b!715160 (=> (not res!478297) (not e!401753))))

(assert (=> b!715160 (= res!478297 (contains!4017 newAcc!49 k!2824))))

(declare-fun b!715161 () Bool)

(declare-fun res!478302 () Bool)

(assert (=> b!715161 (=> (not res!478302) (not e!401753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715161 (= res!478302 (validKeyInArray!0 k!2824))))

(declare-fun b!715162 () Bool)

(declare-fun res!478301 () Bool)

(assert (=> b!715162 (=> (not res!478301) (not e!401753))))

(assert (=> b!715162 (= res!478301 (not (contains!4017 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715163 () Bool)

(declare-fun res!478294 () Bool)

(assert (=> b!715163 (=> (not res!478294) (not e!401753))))

(assert (=> b!715163 (= res!478294 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715164 () Bool)

(declare-fun res!478307 () Bool)

(assert (=> b!715164 (=> (not res!478307) (not e!401753))))

(declare-fun -!426 (List!13474 (_ BitVec 64)) List!13474)

(assert (=> b!715164 (= res!478307 (= (-!426 newAcc!49 k!2824) acc!652))))

(declare-fun b!715165 () Bool)

(declare-fun res!478298 () Bool)

(assert (=> b!715165 (=> (not res!478298) (not e!401753))))

(declare-fun arrayContainsKey!0 (array!40494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715165 (= res!478298 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715166 () Bool)

(declare-fun res!478304 () Bool)

(assert (=> b!715166 (=> (not res!478304) (not e!401753))))

(assert (=> b!715166 (= res!478304 (not (contains!4017 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!478296 () Bool)

(assert (=> start!63526 (=> (not res!478296) (not e!401753))))

(assert (=> start!63526 (= res!478296 (and (bvslt (size!19796 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19796 a!3591))))))

(assert (=> start!63526 e!401753))

(assert (=> start!63526 true))

(declare-fun array_inv!15154 (array!40494) Bool)

(assert (=> start!63526 (array_inv!15154 a!3591)))

(declare-fun b!715167 () Bool)

(assert (=> b!715167 (= e!401753 false)))

(declare-fun lt!318782 () Bool)

(assert (=> b!715167 (= lt!318782 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715168 () Bool)

(declare-fun res!478300 () Bool)

(assert (=> b!715168 (=> (not res!478300) (not e!401753))))

(assert (=> b!715168 (= res!478300 (noDuplicate!1264 acc!652))))

(declare-fun b!715169 () Bool)

(declare-fun res!478299 () Bool)

(assert (=> b!715169 (=> (not res!478299) (not e!401753))))

(assert (=> b!715169 (= res!478299 (not (contains!4017 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715170 () Bool)

(declare-fun res!478292 () Bool)

(assert (=> b!715170 (=> (not res!478292) (not e!401753))))

(declare-fun subseq!461 (List!13474 List!13474) Bool)

(assert (=> b!715170 (= res!478292 (subseq!461 acc!652 newAcc!49))))

(declare-fun b!715171 () Bool)

(declare-fun res!478291 () Bool)

(assert (=> b!715171 (=> (not res!478291) (not e!401753))))

(assert (=> b!715171 (= res!478291 (not (validKeyInArray!0 (select (arr!19380 a!3591) from!2969))))))

(declare-fun b!715172 () Bool)

(declare-fun res!478305 () Bool)

(assert (=> b!715172 (=> (not res!478305) (not e!401753))))

(assert (=> b!715172 (= res!478305 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and start!63526 res!478296) b!715168))

(assert (= (and b!715168 res!478300) b!715159))

(assert (= (and b!715159 res!478295) b!715162))

(assert (= (and b!715162 res!478301) b!715169))

(assert (= (and b!715169 res!478299) b!715165))

(assert (= (and b!715165 res!478298) b!715156))

(assert (= (and b!715156 res!478303) b!715161))

(assert (= (and b!715161 res!478302) b!715155))

(assert (= (and b!715155 res!478306) b!715170))

(assert (= (and b!715170 res!478292) b!715160))

(assert (= (and b!715160 res!478297) b!715164))

(assert (= (and b!715164 res!478307) b!715158))

(assert (= (and b!715158 res!478308) b!715166))

(assert (= (and b!715166 res!478304) b!715157))

(assert (= (and b!715157 res!478293) b!715171))

(assert (= (and b!715171 res!478291) b!715163))

(assert (= (and b!715163 res!478294) b!715172))

(assert (= (and b!715172 res!478305) b!715167))

(declare-fun m!671517 () Bool)

(assert (=> b!715167 m!671517))

(declare-fun m!671519 () Bool)

(assert (=> b!715164 m!671519))

(declare-fun m!671521 () Bool)

(assert (=> b!715166 m!671521))

(declare-fun m!671523 () Bool)

(assert (=> b!715170 m!671523))

(declare-fun m!671525 () Bool)

(assert (=> start!63526 m!671525))

(declare-fun m!671527 () Bool)

(assert (=> b!715169 m!671527))

(declare-fun m!671529 () Bool)

(assert (=> b!715159 m!671529))

(declare-fun m!671531 () Bool)

(assert (=> b!715156 m!671531))

(declare-fun m!671533 () Bool)

(assert (=> b!715158 m!671533))

(declare-fun m!671535 () Bool)

(assert (=> b!715160 m!671535))

(declare-fun m!671537 () Bool)

(assert (=> b!715161 m!671537))

(declare-fun m!671539 () Bool)

(assert (=> b!715165 m!671539))

(declare-fun m!671541 () Bool)

(assert (=> b!715172 m!671541))

(declare-fun m!671543 () Bool)

(assert (=> b!715168 m!671543))

(declare-fun m!671545 () Bool)

(assert (=> b!715171 m!671545))

(assert (=> b!715171 m!671545))

(declare-fun m!671547 () Bool)

(assert (=> b!715171 m!671547))

(declare-fun m!671549 () Bool)

(assert (=> b!715155 m!671549))

(declare-fun m!671551 () Bool)

(assert (=> b!715162 m!671551))

(push 1)

(assert (not b!715171))

(assert (not b!715158))

(assert (not b!715169))

(assert (not b!715172))

(assert (not b!715156))

(assert (not b!715160))

(assert (not b!715166))

(assert (not b!715167))

(assert (not b!715170))

(assert (not b!715165))

(assert (not b!715161))

(assert (not b!715164))

(assert (not b!715168))

(assert (not b!715155))

(assert (not b!715159))

(assert (not b!715162))

(assert (not start!63526))

(check-sat)

