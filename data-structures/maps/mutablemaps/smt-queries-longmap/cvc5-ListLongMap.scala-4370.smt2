; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60264 () Bool)

(assert start!60264)

(declare-fun b!675055 () Bool)

(declare-fun e!385204 () Bool)

(declare-datatypes ((List!12916 0))(
  ( (Nil!12913) (Cons!12912 (h!13957 (_ BitVec 64)) (t!19152 List!12916)) )
))
(declare-fun acc!681 () List!12916)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3459 (List!12916 (_ BitVec 64)) Bool)

(assert (=> b!675055 (= e!385204 (not (contains!3459 acc!681 k!2843)))))

(declare-fun b!675056 () Bool)

(declare-fun res!441655 () Bool)

(declare-fun e!385203 () Bool)

(assert (=> b!675056 (=> (not res!441655) (not e!385203))))

(declare-fun e!385205 () Bool)

(assert (=> b!675056 (= res!441655 e!385205)))

(declare-fun res!441663 () Bool)

(assert (=> b!675056 (=> res!441663 e!385205)))

(declare-fun e!385202 () Bool)

(assert (=> b!675056 (= res!441663 e!385202)))

(declare-fun res!441657 () Bool)

(assert (=> b!675056 (=> (not res!441657) (not e!385202))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675056 (= res!441657 (bvsgt from!3004 i!1382))))

(declare-fun b!675057 () Bool)

(declare-fun res!441671 () Bool)

(assert (=> b!675057 (=> (not res!441671) (not e!385203))))

(declare-fun e!385200 () Bool)

(assert (=> b!675057 (= res!441671 e!385200)))

(declare-fun res!441669 () Bool)

(assert (=> b!675057 (=> res!441669 e!385200)))

(declare-fun e!385201 () Bool)

(assert (=> b!675057 (= res!441669 e!385201)))

(declare-fun res!441659 () Bool)

(assert (=> b!675057 (=> (not res!441659) (not e!385201))))

(assert (=> b!675057 (= res!441659 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675058 () Bool)

(declare-fun e!385206 () Bool)

(assert (=> b!675058 (= e!385206 (not (contains!3459 acc!681 k!2843)))))

(declare-fun b!675059 () Bool)

(assert (=> b!675059 (= e!385200 e!385206)))

(declare-fun res!441672 () Bool)

(assert (=> b!675059 (=> (not res!441672) (not e!385206))))

(assert (=> b!675059 (= res!441672 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675060 () Bool)

(declare-fun res!441662 () Bool)

(assert (=> b!675060 (=> (not res!441662) (not e!385203))))

(declare-fun noDuplicate!706 (List!12916) Bool)

(assert (=> b!675060 (= res!441662 (noDuplicate!706 acc!681))))

(declare-fun b!675061 () Bool)

(declare-fun res!441660 () Bool)

(assert (=> b!675061 (=> (not res!441660) (not e!385203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675061 (= res!441660 (validKeyInArray!0 k!2843))))

(declare-fun b!675062 () Bool)

(declare-fun res!441670 () Bool)

(assert (=> b!675062 (=> (not res!441670) (not e!385203))))

(assert (=> b!675062 (= res!441670 (not (contains!3459 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675063 () Bool)

(declare-fun res!441666 () Bool)

(assert (=> b!675063 (=> (not res!441666) (not e!385203))))

(assert (=> b!675063 (= res!441666 (not (contains!3459 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!441667 () Bool)

(assert (=> start!60264 (=> (not res!441667) (not e!385203))))

(declare-datatypes ((array!39267 0))(
  ( (array!39268 (arr!18822 (Array (_ BitVec 32) (_ BitVec 64))) (size!19186 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39267)

(assert (=> start!60264 (= res!441667 (and (bvslt (size!19186 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19186 a!3626))))))

(assert (=> start!60264 e!385203))

(assert (=> start!60264 true))

(declare-fun array_inv!14596 (array!39267) Bool)

(assert (=> start!60264 (array_inv!14596 a!3626)))

(declare-fun b!675064 () Bool)

(declare-fun res!441668 () Bool)

(assert (=> b!675064 (=> (not res!441668) (not e!385203))))

(assert (=> b!675064 (= res!441668 (not (validKeyInArray!0 (select (arr!18822 a!3626) from!3004))))))

(declare-fun b!675065 () Bool)

(assert (=> b!675065 (= e!385205 e!385204)))

(declare-fun res!441658 () Bool)

(assert (=> b!675065 (=> (not res!441658) (not e!385204))))

(assert (=> b!675065 (= res!441658 (bvsle from!3004 i!1382))))

(declare-fun b!675066 () Bool)

(assert (=> b!675066 (= e!385203 false)))

(declare-fun lt!312657 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39267 (_ BitVec 32) List!12916) Bool)

(assert (=> b!675066 (= lt!312657 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675067 () Bool)

(declare-fun res!441673 () Bool)

(assert (=> b!675067 (=> (not res!441673) (not e!385203))))

(assert (=> b!675067 (= res!441673 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12913))))

(declare-fun b!675068 () Bool)

(declare-fun res!441674 () Bool)

(assert (=> b!675068 (=> (not res!441674) (not e!385203))))

(declare-fun arrayContainsKey!0 (array!39267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675068 (= res!441674 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675069 () Bool)

(declare-fun res!441665 () Bool)

(assert (=> b!675069 (=> (not res!441665) (not e!385203))))

(assert (=> b!675069 (= res!441665 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675070 () Bool)

(declare-fun res!441664 () Bool)

(assert (=> b!675070 (=> (not res!441664) (not e!385203))))

(assert (=> b!675070 (= res!441664 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19186 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675071 () Bool)

(declare-fun res!441656 () Bool)

(assert (=> b!675071 (=> (not res!441656) (not e!385203))))

(assert (=> b!675071 (= res!441656 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19186 a!3626))))))

(declare-fun b!675072 () Bool)

(assert (=> b!675072 (= e!385201 (contains!3459 acc!681 k!2843))))

(declare-fun b!675073 () Bool)

(assert (=> b!675073 (= e!385202 (contains!3459 acc!681 k!2843))))

(declare-fun b!675074 () Bool)

(declare-fun res!441661 () Bool)

(assert (=> b!675074 (=> (not res!441661) (not e!385203))))

(assert (=> b!675074 (= res!441661 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60264 res!441667) b!675060))

(assert (= (and b!675060 res!441662) b!675063))

(assert (= (and b!675063 res!441666) b!675062))

(assert (= (and b!675062 res!441670) b!675056))

(assert (= (and b!675056 res!441657) b!675073))

(assert (= (and b!675056 (not res!441663)) b!675065))

(assert (= (and b!675065 res!441658) b!675055))

(assert (= (and b!675056 res!441655) b!675067))

(assert (= (and b!675067 res!441673) b!675074))

(assert (= (and b!675074 res!441661) b!675071))

(assert (= (and b!675071 res!441656) b!675061))

(assert (= (and b!675061 res!441660) b!675068))

(assert (= (and b!675068 res!441674) b!675070))

(assert (= (and b!675070 res!441664) b!675064))

(assert (= (and b!675064 res!441668) b!675069))

(assert (= (and b!675069 res!441665) b!675057))

(assert (= (and b!675057 res!441659) b!675072))

(assert (= (and b!675057 (not res!441669)) b!675059))

(assert (= (and b!675059 res!441672) b!675058))

(assert (= (and b!675057 res!441671) b!675066))

(declare-fun m!642681 () Bool)

(assert (=> b!675073 m!642681))

(declare-fun m!642683 () Bool)

(assert (=> b!675064 m!642683))

(assert (=> b!675064 m!642683))

(declare-fun m!642685 () Bool)

(assert (=> b!675064 m!642685))

(declare-fun m!642687 () Bool)

(assert (=> b!675067 m!642687))

(assert (=> b!675058 m!642681))

(assert (=> b!675072 m!642681))

(declare-fun m!642689 () Bool)

(assert (=> b!675063 m!642689))

(declare-fun m!642691 () Bool)

(assert (=> b!675062 m!642691))

(declare-fun m!642693 () Bool)

(assert (=> b!675066 m!642693))

(declare-fun m!642695 () Bool)

(assert (=> b!675061 m!642695))

(declare-fun m!642697 () Bool)

(assert (=> b!675074 m!642697))

(declare-fun m!642699 () Bool)

(assert (=> b!675060 m!642699))

(assert (=> b!675055 m!642681))

(declare-fun m!642701 () Bool)

(assert (=> b!675068 m!642701))

(declare-fun m!642703 () Bool)

(assert (=> start!60264 m!642703))

(push 1)

(assert (not b!675074))

(assert (not b!675062))

(assert (not b!675058))

(assert (not b!675073))

(assert (not b!675055))

(assert (not b!675063))

(assert (not b!675067))

(assert (not b!675060))

(assert (not start!60264))

(assert (not b!675072))

(assert (not b!675064))

(assert (not b!675061))

(assert (not b!675068))

(assert (not b!675066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

