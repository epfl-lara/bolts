; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60358 () Bool)

(assert start!60358)

(declare-fun b!677760 () Bool)

(declare-fun e!386277 () Bool)

(declare-datatypes ((List!12963 0))(
  ( (Nil!12960) (Cons!12959 (h!14004 (_ BitVec 64)) (t!19199 List!12963)) )
))
(declare-fun acc!681 () List!12963)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3506 (List!12963 (_ BitVec 64)) Bool)

(assert (=> b!677760 (= e!386277 (contains!3506 acc!681 k!2843))))

(declare-fun b!677762 () Bool)

(declare-fun e!386281 () Bool)

(assert (=> b!677762 (= e!386281 (not (contains!3506 acc!681 k!2843)))))

(declare-fun b!677763 () Bool)

(declare-fun res!444362 () Bool)

(declare-fun e!386279 () Bool)

(assert (=> b!677763 (=> (not res!444362) (not e!386279))))

(assert (=> b!677763 (= res!444362 (not (contains!3506 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677764 () Bool)

(declare-fun e!386280 () Bool)

(assert (=> b!677764 (= e!386280 e!386281)))

(declare-fun res!444367 () Bool)

(assert (=> b!677764 (=> (not res!444367) (not e!386281))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677764 (= res!444367 (bvsle from!3004 i!1382))))

(declare-fun b!677765 () Bool)

(declare-fun res!444368 () Bool)

(assert (=> b!677765 (=> (not res!444368) (not e!386279))))

(declare-fun noDuplicate!753 (List!12963) Bool)

(assert (=> b!677765 (= res!444368 (noDuplicate!753 acc!681))))

(declare-fun b!677766 () Bool)

(assert (=> b!677766 (= e!386279 false)))

(declare-fun lt!312789 () Bool)

(declare-datatypes ((array!39361 0))(
  ( (array!39362 (arr!18869 (Array (_ BitVec 32) (_ BitVec 64))) (size!19233 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39361)

(declare-fun arrayNoDuplicates!0 (array!39361 (_ BitVec 32) List!12963) Bool)

(assert (=> b!677766 (= lt!312789 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!444366 () Bool)

(assert (=> start!60358 (=> (not res!444366) (not e!386279))))

(assert (=> start!60358 (= res!444366 (and (bvslt (size!19233 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19233 a!3626))))))

(assert (=> start!60358 e!386279))

(assert (=> start!60358 true))

(declare-fun array_inv!14643 (array!39361) Bool)

(assert (=> start!60358 (array_inv!14643 a!3626)))

(declare-fun b!677761 () Bool)

(declare-fun res!444363 () Bool)

(assert (=> b!677761 (=> (not res!444363) (not e!386279))))

(assert (=> b!677761 (= res!444363 (not (contains!3506 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677767 () Bool)

(declare-fun res!444360 () Bool)

(assert (=> b!677767 (=> (not res!444360) (not e!386279))))

(assert (=> b!677767 (= res!444360 e!386280)))

(declare-fun res!444364 () Bool)

(assert (=> b!677767 (=> res!444364 e!386280)))

(assert (=> b!677767 (= res!444364 e!386277)))

(declare-fun res!444365 () Bool)

(assert (=> b!677767 (=> (not res!444365) (not e!386277))))

(assert (=> b!677767 (= res!444365 (bvsgt from!3004 i!1382))))

(declare-fun b!677768 () Bool)

(declare-fun res!444361 () Bool)

(assert (=> b!677768 (=> (not res!444361) (not e!386279))))

(assert (=> b!677768 (= res!444361 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12960))))

(assert (= (and start!60358 res!444366) b!677765))

(assert (= (and b!677765 res!444368) b!677761))

(assert (= (and b!677761 res!444363) b!677763))

(assert (= (and b!677763 res!444362) b!677767))

(assert (= (and b!677767 res!444365) b!677760))

(assert (= (and b!677767 (not res!444364)) b!677764))

(assert (= (and b!677764 res!444367) b!677762))

(assert (= (and b!677767 res!444360) b!677768))

(assert (= (and b!677768 res!444361) b!677766))

(declare-fun m!643843 () Bool)

(assert (=> b!677763 m!643843))

(declare-fun m!643845 () Bool)

(assert (=> b!677766 m!643845))

(declare-fun m!643847 () Bool)

(assert (=> b!677765 m!643847))

(declare-fun m!643849 () Bool)

(assert (=> b!677760 m!643849))

(declare-fun m!643851 () Bool)

(assert (=> b!677768 m!643851))

(assert (=> b!677762 m!643849))

(declare-fun m!643853 () Bool)

(assert (=> start!60358 m!643853))

(declare-fun m!643855 () Bool)

(assert (=> b!677761 m!643855))

(push 1)

(assert (not b!677760))

(assert (not b!677763))

(assert (not start!60358))

(assert (not b!677768))

(assert (not b!677762))

(assert (not b!677765))

(assert (not b!677766))

(assert (not b!677761))

(check-sat)

