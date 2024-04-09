; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59826 () Bool)

(assert start!59826)

(declare-fun b!660570 () Bool)

(declare-fun e!379582 () Bool)

(declare-datatypes ((List!12697 0))(
  ( (Nil!12694) (Cons!12693 (h!13738 (_ BitVec 64)) (t!18933 List!12697)) )
))
(declare-fun acc!681 () List!12697)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3240 (List!12697 (_ BitVec 64)) Bool)

(assert (=> b!660570 (= e!379582 (not (contains!3240 acc!681 k!2843)))))

(declare-fun b!660571 () Bool)

(declare-fun res!428813 () Bool)

(declare-fun e!379578 () Bool)

(assert (=> b!660571 (=> (not res!428813) (not e!379578))))

(declare-datatypes ((array!38829 0))(
  ( (array!38830 (arr!18603 (Array (_ BitVec 32) (_ BitVec 64))) (size!18967 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38829)

(declare-fun arrayNoDuplicates!0 (array!38829 (_ BitVec 32) List!12697) Bool)

(assert (=> b!660571 (= res!428813 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12694))))

(declare-fun b!660572 () Bool)

(assert (=> b!660572 (= e!379578 false)))

(declare-fun lt!308751 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!660572 (= lt!308751 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660573 () Bool)

(declare-fun e!379579 () Bool)

(assert (=> b!660573 (= e!379579 e!379582)))

(declare-fun res!428814 () Bool)

(assert (=> b!660573 (=> (not res!428814) (not e!379582))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660573 (= res!428814 (bvsle from!3004 i!1382))))

(declare-fun res!428808 () Bool)

(assert (=> start!59826 (=> (not res!428808) (not e!379578))))

(assert (=> start!59826 (= res!428808 (and (bvslt (size!18967 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18967 a!3626))))))

(assert (=> start!59826 e!379578))

(assert (=> start!59826 true))

(declare-fun array_inv!14377 (array!38829) Bool)

(assert (=> start!59826 (array_inv!14377 a!3626)))

(declare-fun b!660574 () Bool)

(declare-fun res!428809 () Bool)

(assert (=> b!660574 (=> (not res!428809) (not e!379578))))

(assert (=> b!660574 (= res!428809 (not (contains!3240 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660575 () Bool)

(declare-fun res!428816 () Bool)

(assert (=> b!660575 (=> (not res!428816) (not e!379578))))

(assert (=> b!660575 (= res!428816 e!379579)))

(declare-fun res!428810 () Bool)

(assert (=> b!660575 (=> res!428810 e!379579)))

(declare-fun e!379581 () Bool)

(assert (=> b!660575 (= res!428810 e!379581)))

(declare-fun res!428815 () Bool)

(assert (=> b!660575 (=> (not res!428815) (not e!379581))))

(assert (=> b!660575 (= res!428815 (bvsgt from!3004 i!1382))))

(declare-fun b!660576 () Bool)

(declare-fun res!428812 () Bool)

(assert (=> b!660576 (=> (not res!428812) (not e!379578))))

(declare-fun noDuplicate!487 (List!12697) Bool)

(assert (=> b!660576 (= res!428812 (noDuplicate!487 acc!681))))

(declare-fun b!660577 () Bool)

(assert (=> b!660577 (= e!379581 (contains!3240 acc!681 k!2843))))

(declare-fun b!660578 () Bool)

(declare-fun res!428811 () Bool)

(assert (=> b!660578 (=> (not res!428811) (not e!379578))))

(assert (=> b!660578 (= res!428811 (not (contains!3240 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59826 res!428808) b!660576))

(assert (= (and b!660576 res!428812) b!660574))

(assert (= (and b!660574 res!428809) b!660578))

(assert (= (and b!660578 res!428811) b!660575))

(assert (= (and b!660575 res!428815) b!660577))

(assert (= (and b!660575 (not res!428810)) b!660573))

(assert (= (and b!660573 res!428814) b!660570))

(assert (= (and b!660575 res!428816) b!660571))

(assert (= (and b!660571 res!428813) b!660572))

(declare-fun m!633147 () Bool)

(assert (=> b!660572 m!633147))

(declare-fun m!633149 () Bool)

(assert (=> b!660578 m!633149))

(declare-fun m!633151 () Bool)

(assert (=> b!660576 m!633151))

(declare-fun m!633153 () Bool)

(assert (=> start!59826 m!633153))

(declare-fun m!633155 () Bool)

(assert (=> b!660574 m!633155))

(declare-fun m!633157 () Bool)

(assert (=> b!660570 m!633157))

(assert (=> b!660577 m!633157))

(declare-fun m!633159 () Bool)

(assert (=> b!660571 m!633159))

(push 1)

(assert (not b!660570))

(assert (not b!660578))

(assert (not b!660571))

(assert (not b!660577))

(assert (not b!660574))

(assert (not b!660576))

(assert (not b!660572))

(assert (not start!59826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

