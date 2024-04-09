; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62134 () Bool)

(assert start!62134)

(declare-fun b!695199 () Bool)

(declare-fun e!395428 () Bool)

(declare-datatypes ((List!13191 0))(
  ( (Nil!13188) (Cons!13187 (h!14232 (_ BitVec 64)) (t!19481 List!13191)) )
))
(declare-fun acc!681 () List!13191)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3734 (List!13191 (_ BitVec 64)) Bool)

(assert (=> b!695199 (= e!395428 (contains!3734 acc!681 k!2843))))

(declare-fun b!695200 () Bool)

(declare-fun res!459329 () Bool)

(declare-fun e!395430 () Bool)

(assert (=> b!695200 (=> (not res!459329) (not e!395430))))

(declare-datatypes ((array!39880 0))(
  ( (array!39881 (arr!19097 (Array (_ BitVec 32) (_ BitVec 64))) (size!19480 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39880)

(declare-fun arrayNoDuplicates!0 (array!39880 (_ BitVec 32) List!13191) Bool)

(assert (=> b!695200 (= res!459329 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13188))))

(declare-fun b!695201 () Bool)

(declare-fun res!459328 () Bool)

(assert (=> b!695201 (=> (not res!459328) (not e!395430))))

(assert (=> b!695201 (= res!459328 (not (contains!3734 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695202 () Bool)

(declare-fun res!459324 () Bool)

(assert (=> b!695202 (=> (not res!459324) (not e!395430))))

(declare-fun e!395429 () Bool)

(assert (=> b!695202 (= res!459324 e!395429)))

(declare-fun res!459323 () Bool)

(assert (=> b!695202 (=> res!459323 e!395429)))

(assert (=> b!695202 (= res!459323 e!395428)))

(declare-fun res!459322 () Bool)

(assert (=> b!695202 (=> (not res!459322) (not e!395428))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695202 (= res!459322 (bvsgt from!3004 i!1382))))

(declare-fun res!459325 () Bool)

(assert (=> start!62134 (=> (not res!459325) (not e!395430))))

(assert (=> start!62134 (= res!459325 (and (bvslt (size!19480 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19480 a!3626))))))

(assert (=> start!62134 e!395430))

(assert (=> start!62134 true))

(declare-fun array_inv!14871 (array!39880) Bool)

(assert (=> start!62134 (array_inv!14871 a!3626)))

(declare-fun b!695203 () Bool)

(declare-fun e!395431 () Bool)

(assert (=> b!695203 (= e!395429 e!395431)))

(declare-fun res!459321 () Bool)

(assert (=> b!695203 (=> (not res!459321) (not e!395431))))

(assert (=> b!695203 (= res!459321 (bvsle from!3004 i!1382))))

(declare-fun b!695204 () Bool)

(assert (=> b!695204 (= e!395431 (not (contains!3734 acc!681 k!2843)))))

(declare-fun b!695205 () Bool)

(declare-fun res!459327 () Bool)

(assert (=> b!695205 (=> (not res!459327) (not e!395430))))

(declare-fun noDuplicate!981 (List!13191) Bool)

(assert (=> b!695205 (= res!459327 (noDuplicate!981 acc!681))))

(declare-fun b!695206 () Bool)

(declare-fun res!459326 () Bool)

(assert (=> b!695206 (=> (not res!459326) (not e!395430))))

(assert (=> b!695206 (= res!459326 (not (contains!3734 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695207 () Bool)

(assert (=> b!695207 (= e!395430 false)))

(declare-fun lt!316998 () Bool)

(assert (=> b!695207 (= lt!316998 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!62134 res!459325) b!695205))

(assert (= (and b!695205 res!459327) b!695201))

(assert (= (and b!695201 res!459328) b!695206))

(assert (= (and b!695206 res!459326) b!695202))

(assert (= (and b!695202 res!459322) b!695199))

(assert (= (and b!695202 (not res!459323)) b!695203))

(assert (= (and b!695203 res!459321) b!695204))

(assert (= (and b!695202 res!459324) b!695200))

(assert (= (and b!695200 res!459329) b!695207))

(declare-fun m!656791 () Bool)

(assert (=> b!695201 m!656791))

(declare-fun m!656793 () Bool)

(assert (=> b!695205 m!656793))

(declare-fun m!656795 () Bool)

(assert (=> b!695204 m!656795))

(declare-fun m!656797 () Bool)

(assert (=> start!62134 m!656797))

(declare-fun m!656799 () Bool)

(assert (=> b!695200 m!656799))

(assert (=> b!695199 m!656795))

(declare-fun m!656801 () Bool)

(assert (=> b!695207 m!656801))

(declare-fun m!656803 () Bool)

(assert (=> b!695206 m!656803))

(push 1)

(assert (not b!695205))

(assert (not b!695206))

(assert (not b!695207))

(assert (not b!695200))

(assert (not b!695201))

(assert (not b!695204))

(assert (not b!695199))

(assert (not start!62134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

