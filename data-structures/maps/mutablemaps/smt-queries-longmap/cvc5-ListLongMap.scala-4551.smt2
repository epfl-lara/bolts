; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63448 () Bool)

(assert start!63448)

(declare-fun b!714188 () Bool)

(declare-fun res!477387 () Bool)

(declare-fun e!401454 () Bool)

(assert (=> b!714188 (=> (not res!477387) (not e!401454))))

(declare-datatypes ((List!13459 0))(
  ( (Nil!13456) (Cons!13455 (h!14500 (_ BitVec 64)) (t!19782 List!13459)) )
))
(declare-fun acc!652 () List!13459)

(declare-fun noDuplicate!1249 (List!13459) Bool)

(assert (=> b!714188 (= res!477387 (noDuplicate!1249 acc!652))))

(declare-fun b!714189 () Bool)

(declare-fun res!477391 () Bool)

(assert (=> b!714189 (=> (not res!477391) (not e!401454))))

(declare-fun newAcc!49 () List!13459)

(declare-fun contains!4002 (List!13459 (_ BitVec 64)) Bool)

(assert (=> b!714189 (= res!477391 (not (contains!4002 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477393 () Bool)

(assert (=> start!63448 (=> (not res!477393) (not e!401454))))

(declare-datatypes ((array!40461 0))(
  ( (array!40462 (arr!19365 (Array (_ BitVec 32) (_ BitVec 64))) (size!19779 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40461)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63448 (= res!477393 (and (bvslt (size!19779 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19779 a!3591))))))

(assert (=> start!63448 e!401454))

(assert (=> start!63448 true))

(declare-fun array_inv!15139 (array!40461) Bool)

(assert (=> start!63448 (array_inv!15139 a!3591)))

(declare-fun b!714190 () Bool)

(declare-fun res!477388 () Bool)

(assert (=> b!714190 (=> (not res!477388) (not e!401454))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714190 (= res!477388 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714191 () Bool)

(declare-fun res!477389 () Bool)

(assert (=> b!714191 (=> (not res!477389) (not e!401454))))

(assert (=> b!714191 (= res!477389 (contains!4002 newAcc!49 k!2824))))

(declare-fun b!714192 () Bool)

(declare-fun res!477394 () Bool)

(assert (=> b!714192 (=> (not res!477394) (not e!401454))))

(declare-fun arrayNoDuplicates!0 (array!40461 (_ BitVec 32) List!13459) Bool)

(assert (=> b!714192 (= res!477394 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714193 () Bool)

(declare-fun res!477386 () Bool)

(assert (=> b!714193 (=> (not res!477386) (not e!401454))))

(assert (=> b!714193 (= res!477386 (not (contains!4002 acc!652 k!2824)))))

(declare-fun b!714194 () Bool)

(declare-fun res!477392 () Bool)

(assert (=> b!714194 (=> (not res!477392) (not e!401454))))

(assert (=> b!714194 (= res!477392 (not (contains!4002 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714195 () Bool)

(declare-fun res!477384 () Bool)

(assert (=> b!714195 (=> (not res!477384) (not e!401454))))

(assert (=> b!714195 (= res!477384 (noDuplicate!1249 newAcc!49))))

(declare-fun b!714196 () Bool)

(declare-fun res!477390 () Bool)

(assert (=> b!714196 (=> (not res!477390) (not e!401454))))

(declare-fun -!411 (List!13459 (_ BitVec 64)) List!13459)

(assert (=> b!714196 (= res!477390 (= (-!411 newAcc!49 k!2824) acc!652))))

(declare-fun b!714197 () Bool)

(declare-fun res!477385 () Bool)

(assert (=> b!714197 (=> (not res!477385) (not e!401454))))

(declare-fun subseq!446 (List!13459 List!13459) Bool)

(assert (=> b!714197 (= res!477385 (subseq!446 acc!652 newAcc!49))))

(declare-fun b!714198 () Bool)

(declare-fun res!477396 () Bool)

(assert (=> b!714198 (=> (not res!477396) (not e!401454))))

(assert (=> b!714198 (= res!477396 (not (contains!4002 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714199 () Bool)

(assert (=> b!714199 (= e!401454 false)))

(declare-fun lt!318713 () Bool)

(assert (=> b!714199 (= lt!318713 (contains!4002 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714200 () Bool)

(declare-fun res!477395 () Bool)

(assert (=> b!714200 (=> (not res!477395) (not e!401454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714200 (= res!477395 (validKeyInArray!0 k!2824))))

(assert (= (and start!63448 res!477393) b!714188))

(assert (= (and b!714188 res!477387) b!714195))

(assert (= (and b!714195 res!477384) b!714198))

(assert (= (and b!714198 res!477396) b!714194))

(assert (= (and b!714194 res!477392) b!714190))

(assert (= (and b!714190 res!477388) b!714193))

(assert (= (and b!714193 res!477386) b!714200))

(assert (= (and b!714200 res!477395) b!714192))

(assert (= (and b!714192 res!477394) b!714197))

(assert (= (and b!714197 res!477385) b!714191))

(assert (= (and b!714191 res!477389) b!714196))

(assert (= (and b!714196 res!477390) b!714189))

(assert (= (and b!714189 res!477391) b!714199))

(declare-fun m!670827 () Bool)

(assert (=> b!714194 m!670827))

(declare-fun m!670829 () Bool)

(assert (=> b!714196 m!670829))

(declare-fun m!670831 () Bool)

(assert (=> start!63448 m!670831))

(declare-fun m!670833 () Bool)

(assert (=> b!714190 m!670833))

(declare-fun m!670835 () Bool)

(assert (=> b!714195 m!670835))

(declare-fun m!670837 () Bool)

(assert (=> b!714200 m!670837))

(declare-fun m!670839 () Bool)

(assert (=> b!714198 m!670839))

(declare-fun m!670841 () Bool)

(assert (=> b!714197 m!670841))

(declare-fun m!670843 () Bool)

(assert (=> b!714192 m!670843))

(declare-fun m!670845 () Bool)

(assert (=> b!714193 m!670845))

(declare-fun m!670847 () Bool)

(assert (=> b!714189 m!670847))

(declare-fun m!670849 () Bool)

(assert (=> b!714188 m!670849))

(declare-fun m!670851 () Bool)

(assert (=> b!714191 m!670851))

(declare-fun m!670853 () Bool)

(assert (=> b!714199 m!670853))

(push 1)

(assert (not b!714192))

(assert (not b!714197))

(assert (not b!714196))

(assert (not b!714195))

(assert (not b!714198))

(assert (not b!714199))

(assert (not b!714188))

(assert (not b!714200))

(assert (not start!63448))

(assert (not b!714194))

(assert (not b!714190))

(assert (not b!714191))

(assert (not b!714189))

(assert (not b!714193))

(check-sat)

(pop 1)

