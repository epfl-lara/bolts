; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59812 () Bool)

(assert start!59812)

(declare-fun b!660381 () Bool)

(declare-fun e!379475 () Bool)

(declare-datatypes ((List!12690 0))(
  ( (Nil!12687) (Cons!12686 (h!13731 (_ BitVec 64)) (t!18926 List!12690)) )
))
(declare-fun acc!681 () List!12690)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3233 (List!12690 (_ BitVec 64)) Bool)

(assert (=> b!660381 (= e!379475 (contains!3233 acc!681 k!2843))))

(declare-fun b!660382 () Bool)

(declare-fun res!428622 () Bool)

(declare-fun e!379473 () Bool)

(assert (=> b!660382 (=> (not res!428622) (not e!379473))))

(declare-fun noDuplicate!480 (List!12690) Bool)

(assert (=> b!660382 (= res!428622 (noDuplicate!480 acc!681))))

(declare-fun b!660383 () Bool)

(declare-fun res!428623 () Bool)

(assert (=> b!660383 (=> (not res!428623) (not e!379473))))

(assert (=> b!660383 (= res!428623 (not (contains!3233 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660384 () Bool)

(declare-fun e!379474 () Bool)

(assert (=> b!660384 (= e!379474 (not (contains!3233 acc!681 k!2843)))))

(declare-fun res!428621 () Bool)

(assert (=> start!59812 (=> (not res!428621) (not e!379473))))

(declare-datatypes ((array!38815 0))(
  ( (array!38816 (arr!18596 (Array (_ BitVec 32) (_ BitVec 64))) (size!18960 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38815)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59812 (= res!428621 (and (bvslt (size!18960 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18960 a!3626))))))

(assert (=> start!59812 e!379473))

(assert (=> start!59812 true))

(declare-fun array_inv!14370 (array!38815) Bool)

(assert (=> start!59812 (array_inv!14370 a!3626)))

(declare-fun b!660385 () Bool)

(declare-fun res!428627 () Bool)

(assert (=> b!660385 (=> (not res!428627) (not e!379473))))

(declare-fun arrayNoDuplicates!0 (array!38815 (_ BitVec 32) List!12690) Bool)

(assert (=> b!660385 (= res!428627 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12687))))

(declare-fun b!660386 () Bool)

(declare-fun e!379476 () Bool)

(assert (=> b!660386 (= e!379476 e!379474)))

(declare-fun res!428624 () Bool)

(assert (=> b!660386 (=> (not res!428624) (not e!379474))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660386 (= res!428624 (bvsle from!3004 i!1382))))

(declare-fun b!660387 () Bool)

(declare-fun res!428620 () Bool)

(assert (=> b!660387 (=> (not res!428620) (not e!379473))))

(assert (=> b!660387 (= res!428620 (not (contains!3233 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660388 () Bool)

(declare-fun res!428625 () Bool)

(assert (=> b!660388 (=> (not res!428625) (not e!379473))))

(assert (=> b!660388 (= res!428625 e!379476)))

(declare-fun res!428626 () Bool)

(assert (=> b!660388 (=> res!428626 e!379476)))

(assert (=> b!660388 (= res!428626 e!379475)))

(declare-fun res!428619 () Bool)

(assert (=> b!660388 (=> (not res!428619) (not e!379475))))

(assert (=> b!660388 (= res!428619 (bvsgt from!3004 i!1382))))

(declare-fun b!660389 () Bool)

(assert (=> b!660389 (= e!379473 false)))

(declare-fun lt!308730 () Bool)

(assert (=> b!660389 (= lt!308730 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59812 res!428621) b!660382))

(assert (= (and b!660382 res!428622) b!660387))

(assert (= (and b!660387 res!428620) b!660383))

(assert (= (and b!660383 res!428623) b!660388))

(assert (= (and b!660388 res!428619) b!660381))

(assert (= (and b!660388 (not res!428626)) b!660386))

(assert (= (and b!660386 res!428624) b!660384))

(assert (= (and b!660388 res!428625) b!660385))

(assert (= (and b!660385 res!428627) b!660389))

(declare-fun m!633049 () Bool)

(assert (=> b!660385 m!633049))

(declare-fun m!633051 () Bool)

(assert (=> b!660383 m!633051))

(declare-fun m!633053 () Bool)

(assert (=> b!660381 m!633053))

(declare-fun m!633055 () Bool)

(assert (=> b!660389 m!633055))

(declare-fun m!633057 () Bool)

(assert (=> start!59812 m!633057))

(declare-fun m!633059 () Bool)

(assert (=> b!660387 m!633059))

(declare-fun m!633061 () Bool)

(assert (=> b!660382 m!633061))

(assert (=> b!660384 m!633053))

(push 1)

(assert (not b!660381))

(assert (not b!660385))

(assert (not start!59812))

(assert (not b!660387))

(assert (not b!660384))

(assert (not b!660389))

(assert (not b!660382))

(assert (not b!660383))

(check-sat)

