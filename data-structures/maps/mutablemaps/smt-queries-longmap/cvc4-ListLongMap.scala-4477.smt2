; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62350 () Bool)

(assert start!62350)

(declare-fun b!698036 () Bool)

(declare-fun e!396868 () Bool)

(assert (=> b!698036 (= e!396868 false)))

(declare-fun lt!317181 () Bool)

(declare-datatypes ((List!13239 0))(
  ( (Nil!13236) (Cons!13235 (h!14280 (_ BitVec 64)) (t!19529 List!13239)) )
))
(declare-fun acc!652 () List!13239)

(declare-fun contains!3782 (List!13239 (_ BitVec 64)) Bool)

(assert (=> b!698036 (= lt!317181 (contains!3782 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!462019 () Bool)

(assert (=> start!62350 (=> (not res!462019) (not e!396868))))

(declare-datatypes ((array!39985 0))(
  ( (array!39986 (arr!19145 (Array (_ BitVec 32) (_ BitVec 64))) (size!19528 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39985)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62350 (= res!462019 (and (bvslt (size!19528 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19528 a!3591))))))

(assert (=> start!62350 e!396868))

(declare-fun array_inv!14919 (array!39985) Bool)

(assert (=> start!62350 (array_inv!14919 a!3591)))

(assert (=> start!62350 true))

(declare-fun b!698035 () Bool)

(declare-fun res!462017 () Bool)

(assert (=> b!698035 (=> (not res!462017) (not e!396868))))

(assert (=> b!698035 (= res!462017 (not (contains!3782 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698034 () Bool)

(declare-fun res!462018 () Bool)

(assert (=> b!698034 (=> (not res!462018) (not e!396868))))

(declare-fun newAcc!49 () List!13239)

(declare-fun noDuplicate!1029 (List!13239) Bool)

(assert (=> b!698034 (= res!462018 (noDuplicate!1029 newAcc!49))))

(declare-fun b!698033 () Bool)

(declare-fun res!462020 () Bool)

(assert (=> b!698033 (=> (not res!462020) (not e!396868))))

(assert (=> b!698033 (= res!462020 (noDuplicate!1029 acc!652))))

(assert (= (and start!62350 res!462019) b!698033))

(assert (= (and b!698033 res!462020) b!698034))

(assert (= (and b!698034 res!462018) b!698035))

(assert (= (and b!698035 res!462017) b!698036))

(declare-fun m!658427 () Bool)

(assert (=> b!698036 m!658427))

(declare-fun m!658429 () Bool)

(assert (=> b!698034 m!658429))

(declare-fun m!658431 () Bool)

(assert (=> b!698033 m!658431))

(declare-fun m!658433 () Bool)

(assert (=> start!62350 m!658433))

(declare-fun m!658435 () Bool)

(assert (=> b!698035 m!658435))

(push 1)

(assert (not start!62350))

(assert (not b!698034))

(assert (not b!698036))

(assert (not b!698035))

(assert (not b!698033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

