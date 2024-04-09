; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60366 () Bool)

(assert start!60366)

(declare-fun b!677868 () Bool)

(declare-fun res!444472 () Bool)

(declare-fun e!386339 () Bool)

(assert (=> b!677868 (=> (not res!444472) (not e!386339))))

(declare-datatypes ((List!12967 0))(
  ( (Nil!12964) (Cons!12963 (h!14008 (_ BitVec 64)) (t!19203 List!12967)) )
))
(declare-fun acc!681 () List!12967)

(declare-fun contains!3510 (List!12967 (_ BitVec 64)) Bool)

(assert (=> b!677868 (= res!444472 (not (contains!3510 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677869 () Bool)

(declare-fun res!444471 () Bool)

(assert (=> b!677869 (=> (not res!444471) (not e!386339))))

(declare-fun noDuplicate!757 (List!12967) Bool)

(assert (=> b!677869 (= res!444471 (noDuplicate!757 acc!681))))

(declare-fun b!677870 () Bool)

(assert (=> b!677870 (= e!386339 false)))

(declare-datatypes ((array!39369 0))(
  ( (array!39370 (arr!18873 (Array (_ BitVec 32) (_ BitVec 64))) (size!19237 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39369)

(declare-fun lt!312801 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39369 (_ BitVec 32) List!12967) Bool)

(assert (=> b!677870 (= lt!312801 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677871 () Bool)

(declare-fun res!444476 () Bool)

(assert (=> b!677871 (=> (not res!444476) (not e!386339))))

(assert (=> b!677871 (= res!444476 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12964))))

(declare-fun b!677872 () Bool)

(declare-fun e!386337 () Bool)

(declare-fun e!386341 () Bool)

(assert (=> b!677872 (= e!386337 e!386341)))

(declare-fun res!444468 () Bool)

(assert (=> b!677872 (=> (not res!444468) (not e!386341))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677872 (= res!444468 (bvsle from!3004 i!1382))))

(declare-fun b!677873 () Bool)

(declare-fun res!444474 () Bool)

(assert (=> b!677873 (=> (not res!444474) (not e!386339))))

(assert (=> b!677873 (= res!444474 (not (contains!3510 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677874 () Bool)

(declare-fun e!386338 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!677874 (= e!386338 (contains!3510 acc!681 k!2843))))

(declare-fun res!444470 () Bool)

(assert (=> start!60366 (=> (not res!444470) (not e!386339))))

(assert (=> start!60366 (= res!444470 (and (bvslt (size!19237 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19237 a!3626))))))

(assert (=> start!60366 e!386339))

(assert (=> start!60366 true))

(declare-fun array_inv!14647 (array!39369) Bool)

(assert (=> start!60366 (array_inv!14647 a!3626)))

(declare-fun b!677875 () Bool)

(declare-fun res!444473 () Bool)

(assert (=> b!677875 (=> (not res!444473) (not e!386339))))

(assert (=> b!677875 (= res!444473 e!386337)))

(declare-fun res!444469 () Bool)

(assert (=> b!677875 (=> res!444469 e!386337)))

(assert (=> b!677875 (= res!444469 e!386338)))

(declare-fun res!444475 () Bool)

(assert (=> b!677875 (=> (not res!444475) (not e!386338))))

(assert (=> b!677875 (= res!444475 (bvsgt from!3004 i!1382))))

(declare-fun b!677876 () Bool)

(assert (=> b!677876 (= e!386341 (not (contains!3510 acc!681 k!2843)))))

(assert (= (and start!60366 res!444470) b!677869))

(assert (= (and b!677869 res!444471) b!677868))

(assert (= (and b!677868 res!444472) b!677873))

(assert (= (and b!677873 res!444474) b!677875))

(assert (= (and b!677875 res!444475) b!677874))

(assert (= (and b!677875 (not res!444469)) b!677872))

(assert (= (and b!677872 res!444468) b!677876))

(assert (= (and b!677875 res!444473) b!677871))

(assert (= (and b!677871 res!444476) b!677870))

(declare-fun m!643899 () Bool)

(assert (=> b!677876 m!643899))

(declare-fun m!643901 () Bool)

(assert (=> b!677873 m!643901))

(declare-fun m!643903 () Bool)

(assert (=> b!677871 m!643903))

(declare-fun m!643905 () Bool)

(assert (=> b!677868 m!643905))

(declare-fun m!643907 () Bool)

(assert (=> start!60366 m!643907))

(assert (=> b!677874 m!643899))

(declare-fun m!643909 () Bool)

(assert (=> b!677870 m!643909))

(declare-fun m!643911 () Bool)

(assert (=> b!677869 m!643911))

(push 1)

(assert (not b!677871))

(assert (not b!677868))

(assert (not start!60366))

(assert (not b!677874))

(assert (not b!677869))

(assert (not b!677870))

(assert (not b!677873))

(assert (not b!677876))

(check-sat)

