; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59818 () Bool)

(assert start!59818)

(declare-fun res!428701 () Bool)

(declare-fun e!379519 () Bool)

(assert (=> start!59818 (=> (not res!428701) (not e!379519))))

(declare-datatypes ((array!38821 0))(
  ( (array!38822 (arr!18599 (Array (_ BitVec 32) (_ BitVec 64))) (size!18963 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38821)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59818 (= res!428701 (and (bvslt (size!18963 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18963 a!3626))))))

(assert (=> start!59818 e!379519))

(assert (=> start!59818 true))

(declare-fun array_inv!14373 (array!38821) Bool)

(assert (=> start!59818 (array_inv!14373 a!3626)))

(declare-fun b!660462 () Bool)

(declare-fun e!379518 () Bool)

(declare-fun e!379521 () Bool)

(assert (=> b!660462 (= e!379518 e!379521)))

(declare-fun res!428700 () Bool)

(assert (=> b!660462 (=> (not res!428700) (not e!379521))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660462 (= res!428700 (bvsle from!3004 i!1382))))

(declare-fun b!660463 () Bool)

(declare-fun res!428707 () Bool)

(assert (=> b!660463 (=> (not res!428707) (not e!379519))))

(declare-datatypes ((List!12693 0))(
  ( (Nil!12690) (Cons!12689 (h!13734 (_ BitVec 64)) (t!18929 List!12693)) )
))
(declare-fun acc!681 () List!12693)

(declare-fun noDuplicate!483 (List!12693) Bool)

(assert (=> b!660463 (= res!428707 (noDuplicate!483 acc!681))))

(declare-fun b!660464 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3236 (List!12693 (_ BitVec 64)) Bool)

(assert (=> b!660464 (= e!379521 (not (contains!3236 acc!681 k!2843)))))

(declare-fun b!660465 () Bool)

(declare-fun res!428705 () Bool)

(assert (=> b!660465 (=> (not res!428705) (not e!379519))))

(assert (=> b!660465 (= res!428705 (not (contains!3236 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660466 () Bool)

(declare-fun e!379520 () Bool)

(assert (=> b!660466 (= e!379520 (contains!3236 acc!681 k!2843))))

(declare-fun b!660467 () Bool)

(declare-fun res!428703 () Bool)

(assert (=> b!660467 (=> (not res!428703) (not e!379519))))

(assert (=> b!660467 (= res!428703 (not (contains!3236 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660468 () Bool)

(declare-fun res!428706 () Bool)

(assert (=> b!660468 (=> (not res!428706) (not e!379519))))

(declare-fun arrayNoDuplicates!0 (array!38821 (_ BitVec 32) List!12693) Bool)

(assert (=> b!660468 (= res!428706 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12690))))

(declare-fun b!660469 () Bool)

(declare-fun res!428704 () Bool)

(assert (=> b!660469 (=> (not res!428704) (not e!379519))))

(assert (=> b!660469 (= res!428704 e!379518)))

(declare-fun res!428708 () Bool)

(assert (=> b!660469 (=> res!428708 e!379518)))

(assert (=> b!660469 (= res!428708 e!379520)))

(declare-fun res!428702 () Bool)

(assert (=> b!660469 (=> (not res!428702) (not e!379520))))

(assert (=> b!660469 (= res!428702 (bvsgt from!3004 i!1382))))

(declare-fun b!660470 () Bool)

(assert (=> b!660470 (= e!379519 false)))

(declare-fun lt!308739 () Bool)

(assert (=> b!660470 (= lt!308739 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59818 res!428701) b!660463))

(assert (= (and b!660463 res!428707) b!660465))

(assert (= (and b!660465 res!428705) b!660467))

(assert (= (and b!660467 res!428703) b!660469))

(assert (= (and b!660469 res!428702) b!660466))

(assert (= (and b!660469 (not res!428708)) b!660462))

(assert (= (and b!660462 res!428700) b!660464))

(assert (= (and b!660469 res!428704) b!660468))

(assert (= (and b!660468 res!428706) b!660470))

(declare-fun m!633091 () Bool)

(assert (=> b!660468 m!633091))

(declare-fun m!633093 () Bool)

(assert (=> b!660470 m!633093))

(declare-fun m!633095 () Bool)

(assert (=> b!660466 m!633095))

(declare-fun m!633097 () Bool)

(assert (=> start!59818 m!633097))

(declare-fun m!633099 () Bool)

(assert (=> b!660463 m!633099))

(assert (=> b!660464 m!633095))

(declare-fun m!633101 () Bool)

(assert (=> b!660467 m!633101))

(declare-fun m!633103 () Bool)

(assert (=> b!660465 m!633103))

(push 1)

(assert (not b!660464))

(assert (not b!660463))

(assert (not start!59818))

(assert (not b!660467))

(assert (not b!660470))

(assert (not b!660468))

(assert (not b!660466))

(assert (not b!660465))

(check-sat)

(pop 1)

