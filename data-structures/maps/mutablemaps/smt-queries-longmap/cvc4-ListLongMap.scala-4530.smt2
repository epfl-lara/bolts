; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62668 () Bool)

(assert start!62668)

(declare-fun b!707186 () Bool)

(declare-fun res!471181 () Bool)

(declare-fun e!397984 () Bool)

(assert (=> b!707186 (=> (not res!471181) (not e!397984))))

(declare-datatypes ((List!13398 0))(
  ( (Nil!13395) (Cons!13394 (h!14439 (_ BitVec 64)) (t!19688 List!13398)) )
))
(declare-fun acc!652 () List!13398)

(declare-fun contains!3941 (List!13398 (_ BitVec 64)) Bool)

(assert (=> b!707186 (= res!471181 (not (contains!3941 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707187 () Bool)

(declare-fun res!471172 () Bool)

(assert (=> b!707187 (=> (not res!471172) (not e!397984))))

(declare-fun newAcc!49 () List!13398)

(declare-fun noDuplicate!1188 (List!13398) Bool)

(assert (=> b!707187 (= res!471172 (noDuplicate!1188 newAcc!49))))

(declare-fun b!707188 () Bool)

(declare-fun res!471176 () Bool)

(assert (=> b!707188 (=> (not res!471176) (not e!397984))))

(declare-datatypes ((array!40303 0))(
  ( (array!40304 (arr!19304 (Array (_ BitVec 32) (_ BitVec 64))) (size!19687 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40303)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40303 (_ BitVec 32) List!13398) Bool)

(assert (=> b!707188 (= res!471176 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707189 () Bool)

(declare-fun res!471179 () Bool)

(assert (=> b!707189 (=> (not res!471179) (not e!397984))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!707189 (= res!471179 (contains!3941 newAcc!49 k!2824))))

(declare-fun b!707190 () Bool)

(declare-fun res!471175 () Bool)

(assert (=> b!707190 (=> (not res!471175) (not e!397984))))

(declare-fun arrayContainsKey!0 (array!40303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707190 (= res!471175 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707192 () Bool)

(declare-fun res!471177 () Bool)

(assert (=> b!707192 (=> (not res!471177) (not e!397984))))

(declare-fun subseq!385 (List!13398 List!13398) Bool)

(assert (=> b!707192 (= res!471177 (subseq!385 acc!652 newAcc!49))))

(declare-fun b!707193 () Bool)

(declare-fun res!471171 () Bool)

(assert (=> b!707193 (=> (not res!471171) (not e!397984))))

(declare-fun -!350 (List!13398 (_ BitVec 64)) List!13398)

(assert (=> b!707193 (= res!471171 (= (-!350 newAcc!49 k!2824) acc!652))))

(declare-fun b!707194 () Bool)

(declare-fun res!471178 () Bool)

(assert (=> b!707194 (=> (not res!471178) (not e!397984))))

(assert (=> b!707194 (= res!471178 (noDuplicate!1188 acc!652))))

(declare-fun b!707195 () Bool)

(declare-fun res!471170 () Bool)

(assert (=> b!707195 (=> (not res!471170) (not e!397984))))

(assert (=> b!707195 (= res!471170 (not (contains!3941 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707196 () Bool)

(declare-fun res!471173 () Bool)

(assert (=> b!707196 (=> (not res!471173) (not e!397984))))

(assert (=> b!707196 (= res!471173 (not (contains!3941 acc!652 k!2824)))))

(declare-fun b!707197 () Bool)

(declare-fun res!471182 () Bool)

(assert (=> b!707197 (=> (not res!471182) (not e!397984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707197 (= res!471182 (validKeyInArray!0 k!2824))))

(declare-fun b!707198 () Bool)

(assert (=> b!707198 (= e!397984 false)))

(declare-fun lt!317946 () Bool)

(assert (=> b!707198 (= lt!317946 (contains!3941 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!471174 () Bool)

(assert (=> start!62668 (=> (not res!471174) (not e!397984))))

(assert (=> start!62668 (= res!471174 (and (bvslt (size!19687 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19687 a!3591))))))

(assert (=> start!62668 e!397984))

(assert (=> start!62668 true))

(declare-fun array_inv!15078 (array!40303) Bool)

(assert (=> start!62668 (array_inv!15078 a!3591)))

(declare-fun b!707191 () Bool)

(declare-fun res!471180 () Bool)

(assert (=> b!707191 (=> (not res!471180) (not e!397984))))

(assert (=> b!707191 (= res!471180 (not (contains!3941 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62668 res!471174) b!707194))

(assert (= (and b!707194 res!471178) b!707187))

(assert (= (and b!707187 res!471172) b!707195))

(assert (= (and b!707195 res!471170) b!707186))

(assert (= (and b!707186 res!471181) b!707190))

(assert (= (and b!707190 res!471175) b!707196))

(assert (= (and b!707196 res!471173) b!707197))

(assert (= (and b!707197 res!471182) b!707188))

(assert (= (and b!707188 res!471176) b!707192))

(assert (= (and b!707192 res!471177) b!707189))

(assert (= (and b!707189 res!471179) b!707193))

(assert (= (and b!707193 res!471171) b!707191))

(assert (= (and b!707191 res!471180) b!707198))

(declare-fun m!664859 () Bool)

(assert (=> b!707196 m!664859))

(declare-fun m!664861 () Bool)

(assert (=> b!707192 m!664861))

(declare-fun m!664863 () Bool)

(assert (=> b!707197 m!664863))

(declare-fun m!664865 () Bool)

(assert (=> b!707186 m!664865))

(declare-fun m!664867 () Bool)

(assert (=> b!707190 m!664867))

(declare-fun m!664869 () Bool)

(assert (=> b!707194 m!664869))

(declare-fun m!664871 () Bool)

(assert (=> b!707191 m!664871))

(declare-fun m!664873 () Bool)

(assert (=> b!707193 m!664873))

(declare-fun m!664875 () Bool)

(assert (=> b!707187 m!664875))

(declare-fun m!664877 () Bool)

(assert (=> b!707195 m!664877))

(declare-fun m!664879 () Bool)

(assert (=> b!707189 m!664879))

(declare-fun m!664881 () Bool)

(assert (=> b!707188 m!664881))

(declare-fun m!664883 () Bool)

(assert (=> start!62668 m!664883))

(declare-fun m!664885 () Bool)

(assert (=> b!707198 m!664885))

(push 1)

(assert (not b!707186))

(assert (not b!707196))

(assert (not b!707189))

(assert (not b!707197))

(assert (not b!707198))

(assert (not b!707192))

