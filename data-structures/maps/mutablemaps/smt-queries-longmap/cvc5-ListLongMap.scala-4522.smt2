; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62616 () Bool)

(assert start!62616)

(declare-fun b!706136 () Bool)

(declare-fun res!470126 () Bool)

(declare-fun e!397828 () Bool)

(assert (=> b!706136 (=> (not res!470126) (not e!397828))))

(declare-datatypes ((List!13372 0))(
  ( (Nil!13369) (Cons!13368 (h!14413 (_ BitVec 64)) (t!19662 List!13372)) )
))
(declare-fun acc!652 () List!13372)

(declare-fun contains!3915 (List!13372 (_ BitVec 64)) Bool)

(assert (=> b!706136 (= res!470126 (not (contains!3915 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706137 () Bool)

(declare-fun res!470121 () Bool)

(assert (=> b!706137 (=> (not res!470121) (not e!397828))))

(declare-fun newAcc!49 () List!13372)

(declare-fun subseq!359 (List!13372 List!13372) Bool)

(assert (=> b!706137 (= res!470121 (subseq!359 acc!652 newAcc!49))))

(declare-fun b!706138 () Bool)

(declare-fun res!470120 () Bool)

(assert (=> b!706138 (=> (not res!470120) (not e!397828))))

(declare-fun noDuplicate!1162 (List!13372) Bool)

(assert (=> b!706138 (= res!470120 (noDuplicate!1162 acc!652))))

(declare-fun b!706139 () Bool)

(declare-fun res!470128 () Bool)

(assert (=> b!706139 (=> (not res!470128) (not e!397828))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!706139 (= res!470128 (not (contains!3915 acc!652 k!2824)))))

(declare-fun b!706140 () Bool)

(declare-fun res!470122 () Bool)

(assert (=> b!706140 (=> (not res!470122) (not e!397828))))

(assert (=> b!706140 (= res!470122 (not (contains!3915 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706141 () Bool)

(declare-fun res!470129 () Bool)

(assert (=> b!706141 (=> (not res!470129) (not e!397828))))

(declare-fun -!324 (List!13372 (_ BitVec 64)) List!13372)

(assert (=> b!706141 (= res!470129 (= (-!324 newAcc!49 k!2824) acc!652))))

(declare-fun b!706142 () Bool)

(declare-fun res!470125 () Bool)

(assert (=> b!706142 (=> (not res!470125) (not e!397828))))

(declare-datatypes ((array!40251 0))(
  ( (array!40252 (arr!19278 (Array (_ BitVec 32) (_ BitVec 64))) (size!19661 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40251)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40251 (_ BitVec 32) List!13372) Bool)

(assert (=> b!706142 (= res!470125 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!470123 () Bool)

(assert (=> start!62616 (=> (not res!470123) (not e!397828))))

(assert (=> start!62616 (= res!470123 (and (bvslt (size!19661 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19661 a!3591))))))

(assert (=> start!62616 e!397828))

(assert (=> start!62616 true))

(declare-fun array_inv!15052 (array!40251) Bool)

(assert (=> start!62616 (array_inv!15052 a!3591)))

(declare-fun b!706143 () Bool)

(declare-fun res!470124 () Bool)

(assert (=> b!706143 (=> (not res!470124) (not e!397828))))

(assert (=> b!706143 (= res!470124 (noDuplicate!1162 newAcc!49))))

(declare-fun b!706144 () Bool)

(declare-fun res!470130 () Bool)

(assert (=> b!706144 (=> (not res!470130) (not e!397828))))

(assert (=> b!706144 (= res!470130 (contains!3915 newAcc!49 k!2824))))

(declare-fun b!706145 () Bool)

(declare-fun res!470131 () Bool)

(assert (=> b!706145 (=> (not res!470131) (not e!397828))))

(declare-fun arrayContainsKey!0 (array!40251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706145 (= res!470131 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706146 () Bool)

(declare-fun res!470127 () Bool)

(assert (=> b!706146 (=> (not res!470127) (not e!397828))))

(assert (=> b!706146 (= res!470127 (not (contains!3915 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706147 () Bool)

(declare-fun res!470132 () Bool)

(assert (=> b!706147 (=> (not res!470132) (not e!397828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706147 (= res!470132 (validKeyInArray!0 k!2824))))

(declare-fun b!706148 () Bool)

(assert (=> b!706148 (= e!397828 false)))

(declare-fun lt!317886 () Bool)

(assert (=> b!706148 (= lt!317886 (contains!3915 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!62616 res!470123) b!706138))

(assert (= (and b!706138 res!470120) b!706143))

(assert (= (and b!706143 res!470124) b!706136))

(assert (= (and b!706136 res!470126) b!706146))

(assert (= (and b!706146 res!470127) b!706145))

(assert (= (and b!706145 res!470131) b!706139))

(assert (= (and b!706139 res!470128) b!706147))

(assert (= (and b!706147 res!470132) b!706142))

(assert (= (and b!706142 res!470125) b!706137))

(assert (= (and b!706137 res!470121) b!706144))

(assert (= (and b!706144 res!470130) b!706141))

(assert (= (and b!706141 res!470129) b!706140))

(assert (= (and b!706140 res!470122) b!706148))

(declare-fun m!664119 () Bool)

(assert (=> b!706139 m!664119))

(declare-fun m!664121 () Bool)

(assert (=> b!706138 m!664121))

(declare-fun m!664123 () Bool)

(assert (=> b!706140 m!664123))

(declare-fun m!664125 () Bool)

(assert (=> b!706143 m!664125))

(declare-fun m!664127 () Bool)

(assert (=> b!706145 m!664127))

(declare-fun m!664129 () Bool)

(assert (=> b!706146 m!664129))

(declare-fun m!664131 () Bool)

(assert (=> b!706142 m!664131))

(declare-fun m!664133 () Bool)

(assert (=> b!706144 m!664133))

(declare-fun m!664135 () Bool)

(assert (=> b!706147 m!664135))

(declare-fun m!664137 () Bool)

(assert (=> b!706148 m!664137))

(declare-fun m!664139 () Bool)

(assert (=> b!706136 m!664139))

(declare-fun m!664141 () Bool)

(assert (=> b!706137 m!664141))

(declare-fun m!664143 () Bool)

(assert (=> start!62616 m!664143))

(declare-fun m!664145 () Bool)

(assert (=> b!706141 m!664145))

(push 1)

(assert (not b!706144))

(assert (not b!706136))

(assert (not b!706147))

(assert (not b!706142))

(assert (not b!706140))

(assert (not b!706148))

(assert (not start!62616))

(assert (not b!706139))

(assert (not b!706141))

(assert (not b!706145))

(assert (not b!706137))

(assert (not b!706146))

(assert (not b!706143))

(assert (not b!706138))

(check-sat)

