; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59806 () Bool)

(assert start!59806)

(declare-fun b!660297 () Bool)

(declare-fun res!428538 () Bool)

(declare-fun e!379432 () Bool)

(assert (=> b!660297 (=> (not res!428538) (not e!379432))))

(declare-datatypes ((array!38809 0))(
  ( (array!38810 (arr!18593 (Array (_ BitVec 32) (_ BitVec 64))) (size!18957 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38809)

(declare-datatypes ((List!12687 0))(
  ( (Nil!12684) (Cons!12683 (h!13728 (_ BitVec 64)) (t!18923 List!12687)) )
))
(declare-fun arrayNoDuplicates!0 (array!38809 (_ BitVec 32) List!12687) Bool)

(assert (=> b!660297 (= res!428538 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12684))))

(declare-fun res!428545 () Bool)

(assert (=> start!59806 (=> (not res!428545) (not e!379432))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59806 (= res!428545 (and (bvslt (size!18957 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18957 a!3626))))))

(assert (=> start!59806 e!379432))

(assert (=> start!59806 true))

(declare-fun array_inv!14367 (array!38809) Bool)

(assert (=> start!59806 (array_inv!14367 a!3626)))

(declare-fun b!660298 () Bool)

(declare-fun res!428543 () Bool)

(assert (=> b!660298 (=> (not res!428543) (not e!379432))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660298 (= res!428543 (validKeyInArray!0 k!2843))))

(declare-fun b!660299 () Bool)

(declare-fun res!428542 () Bool)

(assert (=> b!660299 (=> (not res!428542) (not e!379432))))

(declare-fun acc!681 () List!12687)

(declare-fun noDuplicate!477 (List!12687) Bool)

(assert (=> b!660299 (= res!428542 (noDuplicate!477 acc!681))))

(declare-fun b!660300 () Bool)

(declare-fun res!428540 () Bool)

(assert (=> b!660300 (=> (not res!428540) (not e!379432))))

(assert (=> b!660300 (= res!428540 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660301 () Bool)

(declare-fun e!379428 () Bool)

(declare-fun contains!3230 (List!12687 (_ BitVec 64)) Bool)

(assert (=> b!660301 (= e!379428 (not (contains!3230 acc!681 k!2843)))))

(declare-fun b!660302 () Bool)

(declare-fun e!379429 () Bool)

(assert (=> b!660302 (= e!379429 e!379428)))

(declare-fun res!428541 () Bool)

(assert (=> b!660302 (=> (not res!428541) (not e!379428))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660302 (= res!428541 (bvsle from!3004 i!1382))))

(declare-fun b!660303 () Bool)

(declare-fun res!428535 () Bool)

(assert (=> b!660303 (=> (not res!428535) (not e!379432))))

(assert (=> b!660303 (= res!428535 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18957 a!3626))))))

(declare-fun b!660304 () Bool)

(declare-fun res!428539 () Bool)

(assert (=> b!660304 (=> (not res!428539) (not e!379432))))

(assert (=> b!660304 (= res!428539 (not (contains!3230 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660305 () Bool)

(assert (=> b!660305 (= e!379432 (bvsge #b00000000000000000000000000000000 (size!18957 a!3626)))))

(declare-fun b!660306 () Bool)

(declare-fun res!428537 () Bool)

(assert (=> b!660306 (=> (not res!428537) (not e!379432))))

(assert (=> b!660306 (= res!428537 (not (contains!3230 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660307 () Bool)

(declare-fun e!379431 () Bool)

(assert (=> b!660307 (= e!379431 (contains!3230 acc!681 k!2843))))

(declare-fun b!660308 () Bool)

(declare-fun res!428544 () Bool)

(assert (=> b!660308 (=> (not res!428544) (not e!379432))))

(assert (=> b!660308 (= res!428544 e!379429)))

(declare-fun res!428536 () Bool)

(assert (=> b!660308 (=> res!428536 e!379429)))

(assert (=> b!660308 (= res!428536 e!379431)))

(declare-fun res!428546 () Bool)

(assert (=> b!660308 (=> (not res!428546) (not e!379431))))

(assert (=> b!660308 (= res!428546 (bvsgt from!3004 i!1382))))

(assert (= (and start!59806 res!428545) b!660299))

(assert (= (and b!660299 res!428542) b!660306))

(assert (= (and b!660306 res!428537) b!660304))

(assert (= (and b!660304 res!428539) b!660308))

(assert (= (and b!660308 res!428546) b!660307))

(assert (= (and b!660308 (not res!428536)) b!660302))

(assert (= (and b!660302 res!428541) b!660301))

(assert (= (and b!660308 res!428544) b!660297))

(assert (= (and b!660297 res!428538) b!660300))

(assert (= (and b!660300 res!428540) b!660303))

(assert (= (and b!660303 res!428535) b!660298))

(assert (= (and b!660298 res!428543) b!660305))

(declare-fun m!633005 () Bool)

(assert (=> b!660298 m!633005))

(declare-fun m!633007 () Bool)

(assert (=> b!660307 m!633007))

(declare-fun m!633009 () Bool)

(assert (=> b!660306 m!633009))

(declare-fun m!633011 () Bool)

(assert (=> start!59806 m!633011))

(declare-fun m!633013 () Bool)

(assert (=> b!660304 m!633013))

(assert (=> b!660301 m!633007))

(declare-fun m!633015 () Bool)

(assert (=> b!660299 m!633015))

(declare-fun m!633017 () Bool)

(assert (=> b!660297 m!633017))

(declare-fun m!633019 () Bool)

(assert (=> b!660300 m!633019))

(push 1)

(assert (not b!660299))

(assert (not b!660306))

(assert (not b!660307))

(assert (not b!660304))

(assert (not start!59806))

(assert (not b!660300))

