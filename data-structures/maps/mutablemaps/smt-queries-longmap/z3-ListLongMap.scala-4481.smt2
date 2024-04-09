; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62372 () Bool)

(assert start!62372)

(declare-fun b!698211 () Bool)

(declare-fun res!462200 () Bool)

(declare-fun e!396933 () Bool)

(assert (=> b!698211 (=> (not res!462200) (not e!396933))))

(declare-datatypes ((List!13250 0))(
  ( (Nil!13247) (Cons!13246 (h!14291 (_ BitVec 64)) (t!19540 List!13250)) )
))
(declare-fun acc!652 () List!13250)

(declare-fun contains!3793 (List!13250 (_ BitVec 64)) Bool)

(assert (=> b!698211 (= res!462200 (not (contains!3793 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698212 () Bool)

(declare-fun res!462199 () Bool)

(assert (=> b!698212 (=> (not res!462199) (not e!396933))))

(declare-datatypes ((array!40007 0))(
  ( (array!40008 (arr!19156 (Array (_ BitVec 32) (_ BitVec 64))) (size!19539 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40007)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698212 (= res!462199 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!698213 () Bool)

(assert (=> b!698213 (= e!396933 false)))

(declare-fun lt!317205 () Bool)

(assert (=> b!698213 (= lt!317205 (contains!3793 acc!652 k0!2824))))

(declare-fun b!698214 () Bool)

(declare-fun res!462196 () Bool)

(assert (=> b!698214 (=> (not res!462196) (not e!396933))))

(declare-fun noDuplicate!1040 (List!13250) Bool)

(assert (=> b!698214 (= res!462196 (noDuplicate!1040 acc!652))))

(declare-fun b!698215 () Bool)

(declare-fun res!462197 () Bool)

(assert (=> b!698215 (=> (not res!462197) (not e!396933))))

(assert (=> b!698215 (= res!462197 (not (contains!3793 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698216 () Bool)

(declare-fun res!462195 () Bool)

(assert (=> b!698216 (=> (not res!462195) (not e!396933))))

(declare-fun newAcc!49 () List!13250)

(assert (=> b!698216 (= res!462195 (noDuplicate!1040 newAcc!49))))

(declare-fun res!462198 () Bool)

(assert (=> start!62372 (=> (not res!462198) (not e!396933))))

(assert (=> start!62372 (= res!462198 (and (bvslt (size!19539 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19539 a!3591))))))

(assert (=> start!62372 e!396933))

(assert (=> start!62372 true))

(declare-fun array_inv!14930 (array!40007) Bool)

(assert (=> start!62372 (array_inv!14930 a!3591)))

(assert (= (and start!62372 res!462198) b!698214))

(assert (= (and b!698214 res!462196) b!698216))

(assert (= (and b!698216 res!462195) b!698211))

(assert (= (and b!698211 res!462200) b!698215))

(assert (= (and b!698215 res!462197) b!698212))

(assert (= (and b!698212 res!462199) b!698213))

(declare-fun m!658559 () Bool)

(assert (=> b!698216 m!658559))

(declare-fun m!658561 () Bool)

(assert (=> b!698212 m!658561))

(declare-fun m!658563 () Bool)

(assert (=> b!698215 m!658563))

(declare-fun m!658565 () Bool)

(assert (=> start!62372 m!658565))

(declare-fun m!658567 () Bool)

(assert (=> b!698213 m!658567))

(declare-fun m!658569 () Bool)

(assert (=> b!698214 m!658569))

(declare-fun m!658571 () Bool)

(assert (=> b!698211 m!658571))

(check-sat (not b!698216) (not b!698211) (not b!698215) (not b!698213) (not b!698214) (not b!698212) (not start!62372))
(check-sat)
