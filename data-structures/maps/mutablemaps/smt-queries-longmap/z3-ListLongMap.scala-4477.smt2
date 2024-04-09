; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62348 () Bool)

(assert start!62348)

(declare-fun b!698024 () Bool)

(declare-fun e!396861 () Bool)

(assert (=> b!698024 (= e!396861 false)))

(declare-fun lt!317178 () Bool)

(declare-datatypes ((List!13238 0))(
  ( (Nil!13235) (Cons!13234 (h!14279 (_ BitVec 64)) (t!19528 List!13238)) )
))
(declare-fun acc!652 () List!13238)

(declare-fun contains!3781 (List!13238 (_ BitVec 64)) Bool)

(assert (=> b!698024 (= lt!317178 (contains!3781 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698022 () Bool)

(declare-fun res!462008 () Bool)

(assert (=> b!698022 (=> (not res!462008) (not e!396861))))

(declare-fun newAcc!49 () List!13238)

(declare-fun noDuplicate!1028 (List!13238) Bool)

(assert (=> b!698022 (= res!462008 (noDuplicate!1028 newAcc!49))))

(declare-fun res!462006 () Bool)

(assert (=> start!62348 (=> (not res!462006) (not e!396861))))

(declare-datatypes ((array!39983 0))(
  ( (array!39984 (arr!19144 (Array (_ BitVec 32) (_ BitVec 64))) (size!19527 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39983)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62348 (= res!462006 (and (bvslt (size!19527 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19527 a!3591))))))

(assert (=> start!62348 e!396861))

(declare-fun array_inv!14918 (array!39983) Bool)

(assert (=> start!62348 (array_inv!14918 a!3591)))

(assert (=> start!62348 true))

(declare-fun b!698021 () Bool)

(declare-fun res!462007 () Bool)

(assert (=> b!698021 (=> (not res!462007) (not e!396861))))

(assert (=> b!698021 (= res!462007 (noDuplicate!1028 acc!652))))

(declare-fun b!698023 () Bool)

(declare-fun res!462005 () Bool)

(assert (=> b!698023 (=> (not res!462005) (not e!396861))))

(assert (=> b!698023 (= res!462005 (not (contains!3781 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62348 res!462006) b!698021))

(assert (= (and b!698021 res!462007) b!698022))

(assert (= (and b!698022 res!462008) b!698023))

(assert (= (and b!698023 res!462005) b!698024))

(declare-fun m!658417 () Bool)

(assert (=> b!698021 m!658417))

(declare-fun m!658419 () Bool)

(assert (=> b!698022 m!658419))

(declare-fun m!658421 () Bool)

(assert (=> b!698024 m!658421))

(declare-fun m!658423 () Bool)

(assert (=> b!698023 m!658423))

(declare-fun m!658425 () Bool)

(assert (=> start!62348 m!658425))

(check-sat (not b!698021) (not b!698023) (not b!698024) (not start!62348) (not b!698022))
(check-sat)
