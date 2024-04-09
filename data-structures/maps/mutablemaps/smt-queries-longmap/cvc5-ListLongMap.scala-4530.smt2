; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62664 () Bool)

(assert start!62664)

(declare-fun b!707108 () Bool)

(declare-fun res!471095 () Bool)

(declare-fun e!397972 () Bool)

(assert (=> b!707108 (=> (not res!471095) (not e!397972))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707108 (= res!471095 (validKeyInArray!0 k!2824))))

(declare-fun b!707109 () Bool)

(declare-fun res!471102 () Bool)

(assert (=> b!707109 (=> (not res!471102) (not e!397972))))

(declare-datatypes ((List!13396 0))(
  ( (Nil!13393) (Cons!13392 (h!14437 (_ BitVec 64)) (t!19686 List!13396)) )
))
(declare-fun newAcc!49 () List!13396)

(declare-fun noDuplicate!1186 (List!13396) Bool)

(assert (=> b!707109 (= res!471102 (noDuplicate!1186 newAcc!49))))

(declare-fun b!707110 () Bool)

(declare-fun res!471103 () Bool)

(assert (=> b!707110 (=> (not res!471103) (not e!397972))))

(declare-fun acc!652 () List!13396)

(assert (=> b!707110 (= res!471103 (noDuplicate!1186 acc!652))))

(declare-fun b!707111 () Bool)

(declare-fun res!471104 () Bool)

(assert (=> b!707111 (=> (not res!471104) (not e!397972))))

(declare-datatypes ((array!40299 0))(
  ( (array!40300 (arr!19302 (Array (_ BitVec 32) (_ BitVec 64))) (size!19685 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40299)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707111 (= res!471104 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707112 () Bool)

(declare-fun res!471101 () Bool)

(assert (=> b!707112 (=> (not res!471101) (not e!397972))))

(declare-fun contains!3939 (List!13396 (_ BitVec 64)) Bool)

(assert (=> b!707112 (= res!471101 (contains!3939 newAcc!49 k!2824))))

(declare-fun res!471098 () Bool)

(assert (=> start!62664 (=> (not res!471098) (not e!397972))))

(assert (=> start!62664 (= res!471098 (and (bvslt (size!19685 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19685 a!3591))))))

(assert (=> start!62664 e!397972))

(assert (=> start!62664 true))

(declare-fun array_inv!15076 (array!40299) Bool)

(assert (=> start!62664 (array_inv!15076 a!3591)))

(declare-fun b!707113 () Bool)

(declare-fun res!471099 () Bool)

(assert (=> b!707113 (=> (not res!471099) (not e!397972))))

(assert (=> b!707113 (= res!471099 (not (contains!3939 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707114 () Bool)

(assert (=> b!707114 (= e!397972 false)))

(declare-fun lt!317940 () Bool)

(assert (=> b!707114 (= lt!317940 (contains!3939 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707115 () Bool)

(declare-fun res!471100 () Bool)

(assert (=> b!707115 (=> (not res!471100) (not e!397972))))

(declare-fun subseq!383 (List!13396 List!13396) Bool)

(assert (=> b!707115 (= res!471100 (subseq!383 acc!652 newAcc!49))))

(declare-fun b!707116 () Bool)

(declare-fun res!471093 () Bool)

(assert (=> b!707116 (=> (not res!471093) (not e!397972))))

(assert (=> b!707116 (= res!471093 (not (contains!3939 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707117 () Bool)

(declare-fun res!471096 () Bool)

(assert (=> b!707117 (=> (not res!471096) (not e!397972))))

(assert (=> b!707117 (= res!471096 (not (contains!3939 acc!652 k!2824)))))

(declare-fun b!707118 () Bool)

(declare-fun res!471092 () Bool)

(assert (=> b!707118 (=> (not res!471092) (not e!397972))))

(assert (=> b!707118 (= res!471092 (not (contains!3939 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707119 () Bool)

(declare-fun res!471097 () Bool)

(assert (=> b!707119 (=> (not res!471097) (not e!397972))))

(declare-fun arrayNoDuplicates!0 (array!40299 (_ BitVec 32) List!13396) Bool)

(assert (=> b!707119 (= res!471097 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707120 () Bool)

(declare-fun res!471094 () Bool)

(assert (=> b!707120 (=> (not res!471094) (not e!397972))))

(declare-fun -!348 (List!13396 (_ BitVec 64)) List!13396)

(assert (=> b!707120 (= res!471094 (= (-!348 newAcc!49 k!2824) acc!652))))

(assert (= (and start!62664 res!471098) b!707110))

(assert (= (and b!707110 res!471103) b!707109))

(assert (= (and b!707109 res!471102) b!707118))

(assert (= (and b!707118 res!471092) b!707116))

(assert (= (and b!707116 res!471093) b!707111))

(assert (= (and b!707111 res!471104) b!707117))

(assert (= (and b!707117 res!471096) b!707108))

(assert (= (and b!707108 res!471095) b!707119))

(assert (= (and b!707119 res!471097) b!707115))

(assert (= (and b!707115 res!471100) b!707112))

(assert (= (and b!707112 res!471101) b!707120))

(assert (= (and b!707120 res!471094) b!707113))

(assert (= (and b!707113 res!471099) b!707114))

(declare-fun m!664803 () Bool)

(assert (=> b!707117 m!664803))

(declare-fun m!664805 () Bool)

(assert (=> b!707116 m!664805))

(declare-fun m!664807 () Bool)

(assert (=> b!707115 m!664807))

(declare-fun m!664809 () Bool)

(assert (=> b!707112 m!664809))

(declare-fun m!664811 () Bool)

(assert (=> b!707119 m!664811))

(declare-fun m!664813 () Bool)

(assert (=> b!707120 m!664813))

(declare-fun m!664815 () Bool)

(assert (=> b!707108 m!664815))

(declare-fun m!664817 () Bool)

(assert (=> b!707110 m!664817))

(declare-fun m!664819 () Bool)

(assert (=> b!707111 m!664819))

(declare-fun m!664821 () Bool)

(assert (=> b!707118 m!664821))

(declare-fun m!664823 () Bool)

(assert (=> b!707109 m!664823))

(declare-fun m!664825 () Bool)

(assert (=> b!707114 m!664825))

(declare-fun m!664827 () Bool)

(assert (=> b!707113 m!664827))

(declare-fun m!664829 () Bool)

(assert (=> start!62664 m!664829))

(push 1)

(assert (not b!707114))

(assert (not b!707117))

(assert (not start!62664))

(assert (not b!707116))

(assert (not b!707113))

(assert (not b!707110))

(assert (not b!707120))

(assert (not b!707112))

(assert (not b!707109))

(assert (not b!707115))

(assert (not b!707118))

(assert (not b!707108))

(assert (not b!707119))

(assert (not b!707111))

(check-sat)

