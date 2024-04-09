; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59790 () Bool)

(assert start!59790)

(declare-fun res!428307 () Bool)

(declare-fun e!379308 () Bool)

(assert (=> start!59790 (=> (not res!428307) (not e!379308))))

(declare-datatypes ((array!38793 0))(
  ( (array!38794 (arr!18585 (Array (_ BitVec 32) (_ BitVec 64))) (size!18949 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38793)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59790 (= res!428307 (and (bvslt (size!18949 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18949 a!3626))))))

(assert (=> start!59790 e!379308))

(assert (=> start!59790 true))

(declare-fun array_inv!14359 (array!38793) Bool)

(assert (=> start!59790 (array_inv!14359 a!3626)))

(declare-fun b!660064 () Bool)

(declare-fun res!428304 () Bool)

(assert (=> b!660064 (=> (not res!428304) (not e!379308))))

(declare-datatypes ((List!12679 0))(
  ( (Nil!12676) (Cons!12675 (h!13720 (_ BitVec 64)) (t!18915 List!12679)) )
))
(declare-fun acc!681 () List!12679)

(declare-fun contains!3222 (List!12679 (_ BitVec 64)) Bool)

(assert (=> b!660064 (= res!428304 (not (contains!3222 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660065 () Bool)

(declare-fun e!379311 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660065 (= e!379311 (contains!3222 acc!681 k!2843))))

(declare-fun b!660066 () Bool)

(assert (=> b!660066 (= e!379308 false)))

(declare-fun lt!308706 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38793 (_ BitVec 32) List!12679) Bool)

(assert (=> b!660066 (= lt!308706 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12676))))

(declare-fun b!660067 () Bool)

(declare-fun res!428306 () Bool)

(assert (=> b!660067 (=> (not res!428306) (not e!379308))))

(assert (=> b!660067 (= res!428306 (not (contains!3222 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660068 () Bool)

(declare-fun e!379310 () Bool)

(assert (=> b!660068 (= e!379310 (not (contains!3222 acc!681 k!2843)))))

(declare-fun b!660069 () Bool)

(declare-fun e!379312 () Bool)

(assert (=> b!660069 (= e!379312 e!379310)))

(declare-fun res!428309 () Bool)

(assert (=> b!660069 (=> (not res!428309) (not e!379310))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660069 (= res!428309 (bvsle from!3004 i!1382))))

(declare-fun b!660070 () Bool)

(declare-fun res!428302 () Bool)

(assert (=> b!660070 (=> (not res!428302) (not e!379308))))

(assert (=> b!660070 (= res!428302 e!379312)))

(declare-fun res!428305 () Bool)

(assert (=> b!660070 (=> res!428305 e!379312)))

(assert (=> b!660070 (= res!428305 e!379311)))

(declare-fun res!428308 () Bool)

(assert (=> b!660070 (=> (not res!428308) (not e!379311))))

(assert (=> b!660070 (= res!428308 (bvsgt from!3004 i!1382))))

(declare-fun b!660071 () Bool)

(declare-fun res!428303 () Bool)

(assert (=> b!660071 (=> (not res!428303) (not e!379308))))

(declare-fun noDuplicate!469 (List!12679) Bool)

(assert (=> b!660071 (= res!428303 (noDuplicate!469 acc!681))))

(assert (= (and start!59790 res!428307) b!660071))

(assert (= (and b!660071 res!428303) b!660067))

(assert (= (and b!660067 res!428306) b!660064))

(assert (= (and b!660064 res!428304) b!660070))

(assert (= (and b!660070 res!428308) b!660065))

(assert (= (and b!660070 (not res!428305)) b!660069))

(assert (= (and b!660069 res!428309) b!660068))

(assert (= (and b!660070 res!428302) b!660066))

(declare-fun m!632895 () Bool)

(assert (=> b!660068 m!632895))

(declare-fun m!632897 () Bool)

(assert (=> b!660067 m!632897))

(declare-fun m!632899 () Bool)

(assert (=> b!660066 m!632899))

(assert (=> b!660065 m!632895))

(declare-fun m!632901 () Bool)

(assert (=> b!660071 m!632901))

(declare-fun m!632903 () Bool)

(assert (=> b!660064 m!632903))

(declare-fun m!632905 () Bool)

(assert (=> start!59790 m!632905))

(push 1)

(assert (not b!660068))

(assert (not start!59790))

(assert (not b!660066))

(assert (not b!660071))

(assert (not b!660064))

(assert (not b!660067))

(assert (not b!660065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

