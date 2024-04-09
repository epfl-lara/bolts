; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62356 () Bool)

(assert start!62356)

(declare-fun b!698070 () Bool)

(declare-fun res!462053 () Bool)

(declare-fun e!396886 () Bool)

(assert (=> b!698070 (=> (not res!462053) (not e!396886))))

(declare-datatypes ((List!13242 0))(
  ( (Nil!13239) (Cons!13238 (h!14283 (_ BitVec 64)) (t!19532 List!13242)) )
))
(declare-fun newAcc!49 () List!13242)

(declare-fun noDuplicate!1032 (List!13242) Bool)

(assert (=> b!698070 (= res!462053 (noDuplicate!1032 newAcc!49))))

(declare-fun b!698069 () Bool)

(declare-fun res!462054 () Bool)

(assert (=> b!698069 (=> (not res!462054) (not e!396886))))

(declare-fun acc!652 () List!13242)

(assert (=> b!698069 (= res!462054 (noDuplicate!1032 acc!652))))

(declare-fun b!698072 () Bool)

(assert (=> b!698072 (= e!396886 false)))

(declare-fun lt!317190 () Bool)

(declare-fun contains!3785 (List!13242 (_ BitVec 64)) Bool)

(assert (=> b!698072 (= lt!317190 (contains!3785 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698071 () Bool)

(declare-fun res!462056 () Bool)

(assert (=> b!698071 (=> (not res!462056) (not e!396886))))

(assert (=> b!698071 (= res!462056 (not (contains!3785 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!462055 () Bool)

(assert (=> start!62356 (=> (not res!462055) (not e!396886))))

(declare-datatypes ((array!39991 0))(
  ( (array!39992 (arr!19148 (Array (_ BitVec 32) (_ BitVec 64))) (size!19531 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39991)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62356 (= res!462055 (and (bvslt (size!19531 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19531 a!3591))))))

(assert (=> start!62356 e!396886))

(declare-fun array_inv!14922 (array!39991) Bool)

(assert (=> start!62356 (array_inv!14922 a!3591)))

(assert (=> start!62356 true))

(assert (= (and start!62356 res!462055) b!698069))

(assert (= (and b!698069 res!462054) b!698070))

(assert (= (and b!698070 res!462053) b!698071))

(assert (= (and b!698071 res!462056) b!698072))

(declare-fun m!658457 () Bool)

(assert (=> b!698070 m!658457))

(declare-fun m!658459 () Bool)

(assert (=> b!698072 m!658459))

(declare-fun m!658461 () Bool)

(assert (=> start!62356 m!658461))

(declare-fun m!658463 () Bool)

(assert (=> b!698069 m!658463))

(declare-fun m!658465 () Bool)

(assert (=> b!698071 m!658465))

(push 1)

(assert (not b!698071))

(assert (not b!698070))

(assert (not b!698072))

(assert (not b!698069))

(assert (not start!62356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

