; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60442 () Bool)

(assert start!60442)

(declare-fun b!678779 () Bool)

(declare-fun e!386769 () Bool)

(declare-datatypes ((List!12987 0))(
  ( (Nil!12984) (Cons!12983 (h!14028 (_ BitVec 64)) (t!19223 List!12987)) )
))
(declare-fun acc!681 () List!12987)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3530 (List!12987 (_ BitVec 64)) Bool)

(assert (=> b!678779 (= e!386769 (contains!3530 acc!681 k!2843))))

(declare-fun b!678780 () Bool)

(declare-fun res!445340 () Bool)

(declare-fun e!386766 () Bool)

(assert (=> b!678780 (=> (not res!445340) (not e!386766))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39412 0))(
  ( (array!39413 (arr!18893 (Array (_ BitVec 32) (_ BitVec 64))) (size!19257 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39412)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678780 (= res!445340 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19257 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678781 () Bool)

(declare-fun res!445336 () Bool)

(assert (=> b!678781 (=> (not res!445336) (not e!386766))))

(declare-fun e!386767 () Bool)

(assert (=> b!678781 (= res!445336 e!386767)))

(declare-fun res!445343 () Bool)

(assert (=> b!678781 (=> res!445343 e!386767)))

(assert (=> b!678781 (= res!445343 e!386769)))

(declare-fun res!445337 () Bool)

(assert (=> b!678781 (=> (not res!445337) (not e!386769))))

(assert (=> b!678781 (= res!445337 (bvsgt from!3004 i!1382))))

(declare-fun b!678782 () Bool)

(declare-fun res!445347 () Bool)

(assert (=> b!678782 (=> (not res!445347) (not e!386766))))

(declare-fun noDuplicate!777 (List!12987) Bool)

(assert (=> b!678782 (= res!445347 (noDuplicate!777 acc!681))))

(declare-fun b!678783 () Bool)

(declare-fun e!386768 () Bool)

(assert (=> b!678783 (= e!386768 (not (contains!3530 acc!681 k!2843)))))

(declare-fun b!678784 () Bool)

(declare-fun res!445342 () Bool)

(assert (=> b!678784 (=> (not res!445342) (not e!386766))))

(declare-fun arrayContainsKey!0 (array!39412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678784 (= res!445342 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678785 () Bool)

(declare-fun res!445341 () Bool)

(assert (=> b!678785 (=> (not res!445341) (not e!386766))))

(assert (=> b!678785 (= res!445341 (not (contains!3530 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678786 () Bool)

(declare-fun res!445349 () Bool)

(assert (=> b!678786 (=> (not res!445349) (not e!386766))))

(declare-fun arrayNoDuplicates!0 (array!39412 (_ BitVec 32) List!12987) Bool)

(assert (=> b!678786 (= res!445349 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12984))))

(declare-fun b!678787 () Bool)

(declare-fun res!445344 () Bool)

(assert (=> b!678787 (=> (not res!445344) (not e!386766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678787 (= res!445344 (validKeyInArray!0 k!2843))))

(declare-fun b!678788 () Bool)

(assert (=> b!678788 (= e!386766 (not true))))

(assert (=> b!678788 (arrayContainsKey!0 (array!39413 (store (arr!18893 a!3626) i!1382 k!2843) (size!19257 a!3626)) k!2843 from!3004)))

(declare-fun b!678789 () Bool)

(declare-fun res!445339 () Bool)

(assert (=> b!678789 (=> (not res!445339) (not e!386766))))

(assert (=> b!678789 (= res!445339 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19257 a!3626))))))

(declare-fun b!678778 () Bool)

(declare-fun res!445338 () Bool)

(assert (=> b!678778 (=> (not res!445338) (not e!386766))))

(assert (=> b!678778 (= res!445338 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!445345 () Bool)

(assert (=> start!60442 (=> (not res!445345) (not e!386766))))

(assert (=> start!60442 (= res!445345 (and (bvslt (size!19257 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19257 a!3626))))))

(assert (=> start!60442 e!386766))

(assert (=> start!60442 true))

(declare-fun array_inv!14667 (array!39412) Bool)

(assert (=> start!60442 (array_inv!14667 a!3626)))

(declare-fun b!678790 () Bool)

(assert (=> b!678790 (= e!386767 e!386768)))

(declare-fun res!445348 () Bool)

(assert (=> b!678790 (=> (not res!445348) (not e!386768))))

(assert (=> b!678790 (= res!445348 (bvsle from!3004 i!1382))))

(declare-fun b!678791 () Bool)

(declare-fun res!445346 () Bool)

(assert (=> b!678791 (=> (not res!445346) (not e!386766))))

(assert (=> b!678791 (= res!445346 (not (contains!3530 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60442 res!445345) b!678782))

(assert (= (and b!678782 res!445347) b!678791))

(assert (= (and b!678791 res!445346) b!678785))

(assert (= (and b!678785 res!445341) b!678781))

(assert (= (and b!678781 res!445337) b!678779))

(assert (= (and b!678781 (not res!445343)) b!678790))

(assert (= (and b!678790 res!445348) b!678783))

(assert (= (and b!678781 res!445336) b!678786))

(assert (= (and b!678786 res!445349) b!678778))

(assert (= (and b!678778 res!445338) b!678789))

(assert (= (and b!678789 res!445339) b!678787))

(assert (= (and b!678787 res!445344) b!678784))

(assert (= (and b!678784 res!445342) b!678780))

(assert (= (and b!678780 res!445340) b!678788))

(declare-fun m!644411 () Bool)

(assert (=> b!678778 m!644411))

(declare-fun m!644413 () Bool)

(assert (=> b!678783 m!644413))

(declare-fun m!644415 () Bool)

(assert (=> b!678786 m!644415))

(declare-fun m!644417 () Bool)

(assert (=> b!678784 m!644417))

(declare-fun m!644419 () Bool)

(assert (=> b!678785 m!644419))

(declare-fun m!644421 () Bool)

(assert (=> b!678782 m!644421))

(declare-fun m!644423 () Bool)

(assert (=> start!60442 m!644423))

(declare-fun m!644425 () Bool)

(assert (=> b!678788 m!644425))

(declare-fun m!644427 () Bool)

(assert (=> b!678788 m!644427))

(assert (=> b!678779 m!644413))

(declare-fun m!644429 () Bool)

(assert (=> b!678787 m!644429))

(declare-fun m!644431 () Bool)

(assert (=> b!678791 m!644431))

(push 1)

(assert (not start!60442))

(assert (not b!678785))

(assert (not b!678779))

(assert (not b!678778))

(assert (not b!678783))

(assert (not b!678787))

(assert (not b!678782))

(assert (not b!678788))

(assert (not b!678791))

(assert (not b!678786))

(assert (not b!678784))

(check-sat)

(pop 1)

