; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62620 () Bool)

(assert start!62620)

(declare-fun b!706214 () Bool)

(declare-fun res!470207 () Bool)

(declare-fun e!397840 () Bool)

(assert (=> b!706214 (=> (not res!470207) (not e!397840))))

(declare-datatypes ((List!13374 0))(
  ( (Nil!13371) (Cons!13370 (h!14415 (_ BitVec 64)) (t!19664 List!13374)) )
))
(declare-fun newAcc!49 () List!13374)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3917 (List!13374 (_ BitVec 64)) Bool)

(assert (=> b!706214 (= res!470207 (contains!3917 newAcc!49 k!2824))))

(declare-fun b!706215 () Bool)

(declare-fun res!470199 () Bool)

(assert (=> b!706215 (=> (not res!470199) (not e!397840))))

(assert (=> b!706215 (= res!470199 (not (contains!3917 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706216 () Bool)

(declare-fun res!470198 () Bool)

(assert (=> b!706216 (=> (not res!470198) (not e!397840))))

(declare-fun acc!652 () List!13374)

(assert (=> b!706216 (= res!470198 (not (contains!3917 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706217 () Bool)

(declare-fun res!470200 () Bool)

(assert (=> b!706217 (=> (not res!470200) (not e!397840))))

(declare-fun noDuplicate!1164 (List!13374) Bool)

(assert (=> b!706217 (= res!470200 (noDuplicate!1164 acc!652))))

(declare-fun b!706218 () Bool)

(declare-fun res!470208 () Bool)

(assert (=> b!706218 (=> (not res!470208) (not e!397840))))

(declare-fun -!326 (List!13374 (_ BitVec 64)) List!13374)

(assert (=> b!706218 (= res!470208 (= (-!326 newAcc!49 k!2824) acc!652))))

(declare-fun b!706219 () Bool)

(declare-fun res!470203 () Bool)

(assert (=> b!706219 (=> (not res!470203) (not e!397840))))

(declare-fun subseq!361 (List!13374 List!13374) Bool)

(assert (=> b!706219 (= res!470203 (subseq!361 acc!652 newAcc!49))))

(declare-fun b!706220 () Bool)

(declare-fun res!470205 () Bool)

(assert (=> b!706220 (=> (not res!470205) (not e!397840))))

(assert (=> b!706220 (= res!470205 (not (contains!3917 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!470210 () Bool)

(assert (=> start!62620 (=> (not res!470210) (not e!397840))))

(declare-datatypes ((array!40255 0))(
  ( (array!40256 (arr!19280 (Array (_ BitVec 32) (_ BitVec 64))) (size!19663 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40255)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62620 (= res!470210 (and (bvslt (size!19663 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19663 a!3591))))))

(assert (=> start!62620 e!397840))

(assert (=> start!62620 true))

(declare-fun array_inv!15054 (array!40255) Bool)

(assert (=> start!62620 (array_inv!15054 a!3591)))

(declare-fun b!706221 () Bool)

(declare-fun res!470209 () Bool)

(assert (=> b!706221 (=> (not res!470209) (not e!397840))))

(assert (=> b!706221 (= res!470209 (not (contains!3917 acc!652 k!2824)))))

(declare-fun b!706222 () Bool)

(declare-fun res!470202 () Bool)

(assert (=> b!706222 (=> (not res!470202) (not e!397840))))

(declare-fun arrayContainsKey!0 (array!40255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706222 (= res!470202 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706223 () Bool)

(assert (=> b!706223 (= e!397840 false)))

(declare-fun lt!317892 () Bool)

(assert (=> b!706223 (= lt!317892 (contains!3917 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706224 () Bool)

(declare-fun res!470201 () Bool)

(assert (=> b!706224 (=> (not res!470201) (not e!397840))))

(assert (=> b!706224 (= res!470201 (noDuplicate!1164 newAcc!49))))

(declare-fun b!706225 () Bool)

(declare-fun res!470204 () Bool)

(assert (=> b!706225 (=> (not res!470204) (not e!397840))))

(declare-fun arrayNoDuplicates!0 (array!40255 (_ BitVec 32) List!13374) Bool)

(assert (=> b!706225 (= res!470204 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706226 () Bool)

(declare-fun res!470206 () Bool)

(assert (=> b!706226 (=> (not res!470206) (not e!397840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706226 (= res!470206 (validKeyInArray!0 k!2824))))

(assert (= (and start!62620 res!470210) b!706217))

(assert (= (and b!706217 res!470200) b!706224))

(assert (= (and b!706224 res!470201) b!706220))

(assert (= (and b!706220 res!470205) b!706216))

(assert (= (and b!706216 res!470198) b!706222))

(assert (= (and b!706222 res!470202) b!706221))

(assert (= (and b!706221 res!470209) b!706226))

(assert (= (and b!706226 res!470206) b!706225))

(assert (= (and b!706225 res!470204) b!706219))

(assert (= (and b!706219 res!470203) b!706214))

(assert (= (and b!706214 res!470207) b!706218))

(assert (= (and b!706218 res!470208) b!706215))

(assert (= (and b!706215 res!470199) b!706223))

(declare-fun m!664175 () Bool)

(assert (=> b!706214 m!664175))

(declare-fun m!664177 () Bool)

(assert (=> b!706226 m!664177))

(declare-fun m!664179 () Bool)

(assert (=> b!706215 m!664179))

(declare-fun m!664181 () Bool)

(assert (=> start!62620 m!664181))

(declare-fun m!664183 () Bool)

(assert (=> b!706225 m!664183))

(declare-fun m!664185 () Bool)

(assert (=> b!706221 m!664185))

(declare-fun m!664187 () Bool)

(assert (=> b!706223 m!664187))

(declare-fun m!664189 () Bool)

(assert (=> b!706216 m!664189))

(declare-fun m!664191 () Bool)

(assert (=> b!706220 m!664191))

(declare-fun m!664193 () Bool)

(assert (=> b!706222 m!664193))

(declare-fun m!664195 () Bool)

(assert (=> b!706219 m!664195))

(declare-fun m!664197 () Bool)

(assert (=> b!706217 m!664197))

(declare-fun m!664199 () Bool)

(assert (=> b!706224 m!664199))

(declare-fun m!664201 () Bool)

(assert (=> b!706218 m!664201))

(push 1)

(assert (not b!706223))

(assert (not b!706221))

(assert (not b!706214))

(assert (not start!62620))

(assert (not b!706215))

(assert (not b!706218))

