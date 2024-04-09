; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62576 () Bool)

(assert start!62576)

(declare-fun b!705111 () Bool)

(declare-fun res!469111 () Bool)

(declare-fun e!397707 () Bool)

(assert (=> b!705111 (=> (not res!469111) (not e!397707))))

(declare-datatypes ((List!13352 0))(
  ( (Nil!13349) (Cons!13348 (h!14393 (_ BitVec 64)) (t!19642 List!13352)) )
))
(declare-fun newAcc!49 () List!13352)

(declare-fun noDuplicate!1142 (List!13352) Bool)

(assert (=> b!705111 (= res!469111 (noDuplicate!1142 newAcc!49))))

(declare-fun b!705112 () Bool)

(declare-fun res!469107 () Bool)

(assert (=> b!705112 (=> (not res!469107) (not e!397707))))

(declare-datatypes ((array!40211 0))(
  ( (array!40212 (arr!19258 (Array (_ BitVec 32) (_ BitVec 64))) (size!19641 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40211)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705112 (= res!469107 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!705113 () Bool)

(declare-fun res!469108 () Bool)

(assert (=> b!705113 (=> (not res!469108) (not e!397707))))

(declare-fun acc!652 () List!13352)

(assert (=> b!705113 (= res!469108 (noDuplicate!1142 acc!652))))

(declare-fun b!705114 () Bool)

(declare-fun res!469110 () Bool)

(assert (=> b!705114 (=> (not res!469110) (not e!397707))))

(declare-fun subseq!339 (List!13352 List!13352) Bool)

(assert (=> b!705114 (= res!469110 (subseq!339 acc!652 newAcc!49))))

(declare-fun b!705115 () Bool)

(declare-fun res!469096 () Bool)

(assert (=> b!705115 (=> (not res!469096) (not e!397707))))

(declare-fun contains!3895 (List!13352 (_ BitVec 64)) Bool)

(assert (=> b!705115 (= res!469096 (not (contains!3895 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705116 () Bool)

(declare-fun res!469106 () Bool)

(assert (=> b!705116 (=> (not res!469106) (not e!397707))))

(declare-fun -!304 (List!13352 (_ BitVec 64)) List!13352)

(assert (=> b!705116 (= res!469106 (= (-!304 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705117 () Bool)

(declare-fun res!469101 () Bool)

(assert (=> b!705117 (=> (not res!469101) (not e!397707))))

(assert (=> b!705117 (= res!469101 (contains!3895 newAcc!49 k0!2824))))

(declare-fun b!705118 () Bool)

(declare-fun res!469100 () Bool)

(assert (=> b!705118 (=> (not res!469100) (not e!397707))))

(assert (=> b!705118 (= res!469100 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705119 () Bool)

(declare-fun res!469109 () Bool)

(assert (=> b!705119 (=> (not res!469109) (not e!397707))))

(assert (=> b!705119 (= res!469109 (not (contains!3895 acc!652 k0!2824)))))

(declare-fun b!705120 () Bool)

(declare-fun res!469103 () Bool)

(assert (=> b!705120 (=> (not res!469103) (not e!397707))))

(declare-fun arrayNoDuplicates!0 (array!40211 (_ BitVec 32) List!13352) Bool)

(assert (=> b!705120 (= res!469103 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705121 () Bool)

(declare-fun res!469112 () Bool)

(assert (=> b!705121 (=> (not res!469112) (not e!397707))))

(assert (=> b!705121 (= res!469112 (not (contains!3895 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705122 () Bool)

(declare-fun res!469097 () Bool)

(assert (=> b!705122 (=> (not res!469097) (not e!397707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705122 (= res!469097 (validKeyInArray!0 k0!2824))))

(declare-fun res!469102 () Bool)

(assert (=> start!62576 (=> (not res!469102) (not e!397707))))

(assert (=> start!62576 (= res!469102 (and (bvslt (size!19641 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19641 a!3591))))))

(assert (=> start!62576 e!397707))

(assert (=> start!62576 true))

(declare-fun array_inv!15032 (array!40211) Bool)

(assert (=> start!62576 (array_inv!15032 a!3591)))

(declare-fun b!705123 () Bool)

(declare-fun res!469105 () Bool)

(assert (=> b!705123 (=> (not res!469105) (not e!397707))))

(assert (=> b!705123 (= res!469105 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705124 () Bool)

(declare-fun res!469104 () Bool)

(assert (=> b!705124 (=> (not res!469104) (not e!397707))))

(assert (=> b!705124 (= res!469104 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19641 a!3591)))))

(declare-fun b!705125 () Bool)

(declare-fun res!469098 () Bool)

(assert (=> b!705125 (=> (not res!469098) (not e!397707))))

(assert (=> b!705125 (= res!469098 (not (contains!3895 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705126 () Bool)

(assert (=> b!705126 (= e!397707 false)))

(declare-fun lt!317835 () Bool)

(assert (=> b!705126 (= lt!317835 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705127 () Bool)

(declare-fun res!469095 () Bool)

(assert (=> b!705127 (=> (not res!469095) (not e!397707))))

(assert (=> b!705127 (= res!469095 (not (validKeyInArray!0 (select (arr!19258 a!3591) from!2969))))))

(declare-fun b!705128 () Bool)

(declare-fun res!469099 () Bool)

(assert (=> b!705128 (=> (not res!469099) (not e!397707))))

(assert (=> b!705128 (= res!469099 (not (contains!3895 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62576 res!469102) b!705113))

(assert (= (and b!705113 res!469108) b!705111))

(assert (= (and b!705111 res!469111) b!705128))

(assert (= (and b!705128 res!469099) b!705121))

(assert (= (and b!705121 res!469112) b!705112))

(assert (= (and b!705112 res!469107) b!705119))

(assert (= (and b!705119 res!469109) b!705122))

(assert (= (and b!705122 res!469097) b!705120))

(assert (= (and b!705120 res!469103) b!705114))

(assert (= (and b!705114 res!469110) b!705117))

(assert (= (and b!705117 res!469101) b!705116))

(assert (= (and b!705116 res!469106) b!705125))

(assert (= (and b!705125 res!469098) b!705115))

(assert (= (and b!705115 res!469096) b!705124))

(assert (= (and b!705124 res!469104) b!705127))

(assert (= (and b!705127 res!469095) b!705123))

(assert (= (and b!705123 res!469105) b!705118))

(assert (= (and b!705118 res!469100) b!705126))

(declare-fun m!663399 () Bool)

(assert (=> b!705111 m!663399))

(declare-fun m!663401 () Bool)

(assert (=> b!705127 m!663401))

(assert (=> b!705127 m!663401))

(declare-fun m!663403 () Bool)

(assert (=> b!705127 m!663403))

(declare-fun m!663405 () Bool)

(assert (=> b!705120 m!663405))

(declare-fun m!663407 () Bool)

(assert (=> start!62576 m!663407))

(declare-fun m!663409 () Bool)

(assert (=> b!705117 m!663409))

(declare-fun m!663411 () Bool)

(assert (=> b!705121 m!663411))

(declare-fun m!663413 () Bool)

(assert (=> b!705112 m!663413))

(declare-fun m!663415 () Bool)

(assert (=> b!705122 m!663415))

(declare-fun m!663417 () Bool)

(assert (=> b!705113 m!663417))

(declare-fun m!663419 () Bool)

(assert (=> b!705119 m!663419))

(declare-fun m!663421 () Bool)

(assert (=> b!705116 m!663421))

(declare-fun m!663423 () Bool)

(assert (=> b!705126 m!663423))

(declare-fun m!663425 () Bool)

(assert (=> b!705125 m!663425))

(declare-fun m!663427 () Bool)

(assert (=> b!705114 m!663427))

(declare-fun m!663429 () Bool)

(assert (=> b!705128 m!663429))

(declare-fun m!663431 () Bool)

(assert (=> b!705118 m!663431))

(declare-fun m!663433 () Bool)

(assert (=> b!705115 m!663433))

(check-sat (not b!705127) (not b!705118) (not b!705128) (not start!62576) (not b!705122) (not b!705121) (not b!705114) (not b!705117) (not b!705115) (not b!705116) (not b!705119) (not b!705111) (not b!705125) (not b!705120) (not b!705112) (not b!705126) (not b!705113))
(check-sat)
