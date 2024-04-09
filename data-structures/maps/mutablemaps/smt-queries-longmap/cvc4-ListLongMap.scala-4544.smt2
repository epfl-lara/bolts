; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63362 () Bool)

(assert start!63362)

(declare-fun res!476424 () Bool)

(declare-fun e!401142 () Bool)

(assert (=> start!63362 (=> (not res!476424) (not e!401142))))

(declare-datatypes ((array!40420 0))(
  ( (array!40421 (arr!19346 (Array (_ BitVec 32) (_ BitVec 64))) (size!19758 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40420)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63362 (= res!476424 (and (bvslt (size!19758 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19758 a!3591))))))

(assert (=> start!63362 e!401142))

(assert (=> start!63362 true))

(declare-fun array_inv!15120 (array!40420) Bool)

(assert (=> start!63362 (array_inv!15120 a!3591)))

(declare-fun b!713162 () Bool)

(assert (=> b!713162 (= e!401142 false)))

(declare-fun lt!318641 () Bool)

(declare-datatypes ((List!13440 0))(
  ( (Nil!13437) (Cons!13436 (h!14481 (_ BitVec 64)) (t!19763 List!13440)) )
))
(declare-fun newAcc!49 () List!13440)

(declare-fun contains!3983 (List!13440 (_ BitVec 64)) Bool)

(assert (=> b!713162 (= lt!318641 (contains!3983 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713163 () Bool)

(declare-fun res!476412 () Bool)

(assert (=> b!713163 (=> (not res!476412) (not e!401142))))

(declare-fun acc!652 () List!13440)

(declare-fun subseq!427 (List!13440 List!13440) Bool)

(assert (=> b!713163 (= res!476412 (subseq!427 acc!652 newAcc!49))))

(declare-fun b!713164 () Bool)

(declare-fun res!476415 () Bool)

(assert (=> b!713164 (=> (not res!476415) (not e!401142))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!713164 (= res!476415 (contains!3983 newAcc!49 k!2824))))

(declare-fun b!713165 () Bool)

(declare-fun res!476413 () Bool)

(assert (=> b!713165 (=> (not res!476413) (not e!401142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713165 (= res!476413 (validKeyInArray!0 k!2824))))

(declare-fun b!713166 () Bool)

(declare-fun res!476423 () Bool)

(assert (=> b!713166 (=> (not res!476423) (not e!401142))))

(assert (=> b!713166 (= res!476423 (not (contains!3983 acc!652 k!2824)))))

(declare-fun b!713167 () Bool)

(declare-fun res!476422 () Bool)

(assert (=> b!713167 (=> (not res!476422) (not e!401142))))

(assert (=> b!713167 (= res!476422 (not (contains!3983 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713168 () Bool)

(declare-fun res!476416 () Bool)

(assert (=> b!713168 (=> (not res!476416) (not e!401142))))

(declare-fun arrayContainsKey!0 (array!40420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713168 (= res!476416 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713169 () Bool)

(declare-fun res!476419 () Bool)

(assert (=> b!713169 (=> (not res!476419) (not e!401142))))

(assert (=> b!713169 (= res!476419 (not (contains!3983 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713170 () Bool)

(declare-fun res!476421 () Bool)

(assert (=> b!713170 (=> (not res!476421) (not e!401142))))

(declare-fun arrayNoDuplicates!0 (array!40420 (_ BitVec 32) List!13440) Bool)

(assert (=> b!713170 (= res!476421 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713171 () Bool)

(declare-fun res!476420 () Bool)

(assert (=> b!713171 (=> (not res!476420) (not e!401142))))

(declare-fun noDuplicate!1230 (List!13440) Bool)

(assert (=> b!713171 (= res!476420 (noDuplicate!1230 newAcc!49))))

(declare-fun b!713172 () Bool)

(declare-fun res!476418 () Bool)

(assert (=> b!713172 (=> (not res!476418) (not e!401142))))

(declare-fun -!392 (List!13440 (_ BitVec 64)) List!13440)

(assert (=> b!713172 (= res!476418 (= (-!392 newAcc!49 k!2824) acc!652))))

(declare-fun b!713173 () Bool)

(declare-fun res!476414 () Bool)

(assert (=> b!713173 (=> (not res!476414) (not e!401142))))

(assert (=> b!713173 (= res!476414 (noDuplicate!1230 acc!652))))

(declare-fun b!713174 () Bool)

(declare-fun res!476417 () Bool)

(assert (=> b!713174 (=> (not res!476417) (not e!401142))))

(assert (=> b!713174 (= res!476417 (not (contains!3983 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63362 res!476424) b!713173))

(assert (= (and b!713173 res!476414) b!713171))

(assert (= (and b!713171 res!476420) b!713167))

(assert (= (and b!713167 res!476422) b!713174))

(assert (= (and b!713174 res!476417) b!713168))

(assert (= (and b!713168 res!476416) b!713166))

(assert (= (and b!713166 res!476423) b!713165))

(assert (= (and b!713165 res!476413) b!713170))

(assert (= (and b!713170 res!476421) b!713163))

(assert (= (and b!713163 res!476412) b!713164))

(assert (= (and b!713164 res!476415) b!713172))

(assert (= (and b!713172 res!476418) b!713169))

(assert (= (and b!713169 res!476419) b!713162))

(declare-fun m!670085 () Bool)

(assert (=> b!713163 m!670085))

(declare-fun m!670087 () Bool)

(assert (=> b!713170 m!670087))

(declare-fun m!670089 () Bool)

(assert (=> b!713168 m!670089))

(declare-fun m!670091 () Bool)

(assert (=> b!713171 m!670091))

(declare-fun m!670093 () Bool)

(assert (=> b!713165 m!670093))

(declare-fun m!670095 () Bool)

(assert (=> b!713172 m!670095))

(declare-fun m!670097 () Bool)

(assert (=> b!713174 m!670097))

(declare-fun m!670099 () Bool)

(assert (=> b!713162 m!670099))

(declare-fun m!670101 () Bool)

(assert (=> b!713164 m!670101))

(declare-fun m!670103 () Bool)

(assert (=> b!713166 m!670103))

(declare-fun m!670105 () Bool)

(assert (=> b!713173 m!670105))

(declare-fun m!670107 () Bool)

(assert (=> b!713167 m!670107))

(declare-fun m!670109 () Bool)

(assert (=> start!63362 m!670109))

(declare-fun m!670111 () Bool)

(assert (=> b!713169 m!670111))

(push 1)

(assert (not b!713162))

(assert (not b!713165))

(assert (not b!713164))

(assert (not b!713173))

(assert (not b!713174))

(assert (not b!713171))

(assert (not b!713169))

(assert (not b!713163))

(assert (not b!713172))

(assert (not b!713167))

(assert (not b!713170))

(assert (not start!63362))

(assert (not b!713168))

(assert (not b!713166))

(check-sat)

