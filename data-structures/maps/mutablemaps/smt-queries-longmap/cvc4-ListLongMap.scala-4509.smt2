; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62542 () Bool)

(assert start!62542)

(declare-fun b!704193 () Bool)

(declare-fun res!468191 () Bool)

(declare-fun e!397606 () Bool)

(assert (=> b!704193 (=> (not res!468191) (not e!397606))))

(declare-datatypes ((List!13335 0))(
  ( (Nil!13332) (Cons!13331 (h!14376 (_ BitVec 64)) (t!19625 List!13335)) )
))
(declare-fun acc!652 () List!13335)

(declare-fun noDuplicate!1125 (List!13335) Bool)

(assert (=> b!704193 (= res!468191 (noDuplicate!1125 acc!652))))

(declare-fun b!704194 () Bool)

(declare-fun res!468188 () Bool)

(assert (=> b!704194 (=> (not res!468188) (not e!397606))))

(declare-fun newAcc!49 () List!13335)

(assert (=> b!704194 (= res!468188 (noDuplicate!1125 newAcc!49))))

(declare-fun b!704195 () Bool)

(declare-fun res!468181 () Bool)

(assert (=> b!704195 (=> (not res!468181) (not e!397606))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3878 (List!13335 (_ BitVec 64)) Bool)

(assert (=> b!704195 (= res!468181 (not (contains!3878 acc!652 k!2824)))))

(declare-fun b!704196 () Bool)

(assert (=> b!704196 (= e!397606 false)))

(declare-fun lt!317784 () Bool)

(declare-datatypes ((array!40177 0))(
  ( (array!40178 (arr!19241 (Array (_ BitVec 32) (_ BitVec 64))) (size!19624 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40177)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40177 (_ BitVec 32) List!13335) Bool)

(assert (=> b!704196 (= lt!317784 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun res!468186 () Bool)

(assert (=> start!62542 (=> (not res!468186) (not e!397606))))

(assert (=> start!62542 (= res!468186 (and (bvslt (size!19624 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19624 a!3591))))))

(assert (=> start!62542 e!397606))

(assert (=> start!62542 true))

(declare-fun array_inv!15015 (array!40177) Bool)

(assert (=> start!62542 (array_inv!15015 a!3591)))

(declare-fun b!704197 () Bool)

(declare-fun res!468177 () Bool)

(assert (=> b!704197 (=> (not res!468177) (not e!397606))))

(assert (=> b!704197 (= res!468177 (not (contains!3878 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704198 () Bool)

(declare-fun res!468184 () Bool)

(assert (=> b!704198 (=> (not res!468184) (not e!397606))))

(declare-fun -!287 (List!13335 (_ BitVec 64)) List!13335)

(assert (=> b!704198 (= res!468184 (= (-!287 newAcc!49 k!2824) acc!652))))

(declare-fun b!704199 () Bool)

(declare-fun res!468192 () Bool)

(assert (=> b!704199 (=> (not res!468192) (not e!397606))))

(declare-fun arrayContainsKey!0 (array!40177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704199 (= res!468192 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704200 () Bool)

(declare-fun res!468183 () Bool)

(assert (=> b!704200 (=> (not res!468183) (not e!397606))))

(assert (=> b!704200 (= res!468183 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704201 () Bool)

(declare-fun res!468178 () Bool)

(assert (=> b!704201 (=> (not res!468178) (not e!397606))))

(assert (=> b!704201 (= res!468178 (not (contains!3878 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704202 () Bool)

(declare-fun res!468182 () Bool)

(assert (=> b!704202 (=> (not res!468182) (not e!397606))))

(assert (=> b!704202 (= res!468182 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704203 () Bool)

(declare-fun res!468185 () Bool)

(assert (=> b!704203 (=> (not res!468185) (not e!397606))))

(assert (=> b!704203 (= res!468185 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704204 () Bool)

(declare-fun res!468189 () Bool)

(assert (=> b!704204 (=> (not res!468189) (not e!397606))))

(assert (=> b!704204 (= res!468189 (not (contains!3878 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704205 () Bool)

(declare-fun res!468193 () Bool)

(assert (=> b!704205 (=> (not res!468193) (not e!397606))))

(assert (=> b!704205 (= res!468193 (not (contains!3878 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704206 () Bool)

(declare-fun res!468194 () Bool)

(assert (=> b!704206 (=> (not res!468194) (not e!397606))))

(assert (=> b!704206 (= res!468194 (contains!3878 newAcc!49 k!2824))))

(declare-fun b!704207 () Bool)

(declare-fun res!468190 () Bool)

(assert (=> b!704207 (=> (not res!468190) (not e!397606))))

(declare-fun subseq!322 (List!13335 List!13335) Bool)

(assert (=> b!704207 (= res!468190 (subseq!322 acc!652 newAcc!49))))

(declare-fun b!704208 () Bool)

(declare-fun res!468187 () Bool)

(assert (=> b!704208 (=> (not res!468187) (not e!397606))))

(assert (=> b!704208 (= res!468187 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19624 a!3591)))))

(declare-fun b!704209 () Bool)

(declare-fun res!468179 () Bool)

(assert (=> b!704209 (=> (not res!468179) (not e!397606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704209 (= res!468179 (not (validKeyInArray!0 (select (arr!19241 a!3591) from!2969))))))

(declare-fun b!704210 () Bool)

(declare-fun res!468180 () Bool)

(assert (=> b!704210 (=> (not res!468180) (not e!397606))))

(assert (=> b!704210 (= res!468180 (validKeyInArray!0 k!2824))))

(assert (= (and start!62542 res!468186) b!704193))

(assert (= (and b!704193 res!468191) b!704194))

(assert (= (and b!704194 res!468188) b!704205))

(assert (= (and b!704205 res!468193) b!704201))

(assert (= (and b!704201 res!468178) b!704202))

(assert (= (and b!704202 res!468182) b!704195))

(assert (= (and b!704195 res!468181) b!704210))

(assert (= (and b!704210 res!468180) b!704200))

(assert (= (and b!704200 res!468183) b!704207))

(assert (= (and b!704207 res!468190) b!704206))

(assert (= (and b!704206 res!468194) b!704198))

(assert (= (and b!704198 res!468184) b!704197))

(assert (= (and b!704197 res!468177) b!704204))

(assert (= (and b!704204 res!468189) b!704208))

(assert (= (and b!704208 res!468187) b!704209))

(assert (= (and b!704209 res!468179) b!704203))

(assert (= (and b!704203 res!468185) b!704199))

(assert (= (and b!704199 res!468192) b!704196))

(declare-fun m!662787 () Bool)

(assert (=> b!704206 m!662787))

(declare-fun m!662789 () Bool)

(assert (=> b!704195 m!662789))

(declare-fun m!662791 () Bool)

(assert (=> b!704210 m!662791))

(declare-fun m!662793 () Bool)

(assert (=> b!704202 m!662793))

(declare-fun m!662795 () Bool)

(assert (=> b!704197 m!662795))

(declare-fun m!662797 () Bool)

(assert (=> b!704199 m!662797))

(declare-fun m!662799 () Bool)

(assert (=> b!704193 m!662799))

(declare-fun m!662801 () Bool)

(assert (=> start!62542 m!662801))

(declare-fun m!662803 () Bool)

(assert (=> b!704198 m!662803))

(declare-fun m!662805 () Bool)

(assert (=> b!704201 m!662805))

(declare-fun m!662807 () Bool)

(assert (=> b!704200 m!662807))

(declare-fun m!662809 () Bool)

(assert (=> b!704194 m!662809))

(declare-fun m!662811 () Bool)

(assert (=> b!704207 m!662811))

(declare-fun m!662813 () Bool)

(assert (=> b!704204 m!662813))

(declare-fun m!662815 () Bool)

(assert (=> b!704205 m!662815))

(declare-fun m!662817 () Bool)

(assert (=> b!704196 m!662817))

(declare-fun m!662819 () Bool)

(assert (=> b!704209 m!662819))

(assert (=> b!704209 m!662819))

(declare-fun m!662821 () Bool)

(assert (=> b!704209 m!662821))

(push 1)

(assert (not b!704202))

(assert (not b!704193))

(assert (not b!704194))

(assert (not b!704196))

(assert (not b!704207))

(assert (not b!704206))

(assert (not b!704204))

(assert (not b!704197))

(assert (not b!704198))

(assert (not b!704210))

(assert (not b!704209))

(assert (not start!62542))

(assert (not b!704205))

(assert (not b!704199))

(assert (not b!704201))

(assert (not b!704200))

(assert (not b!704195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

