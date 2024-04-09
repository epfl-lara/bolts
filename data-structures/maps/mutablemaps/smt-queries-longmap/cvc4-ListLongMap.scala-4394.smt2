; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60448 () Bool)

(assert start!60448)

(declare-fun b!678904 () Bool)

(declare-fun e!386811 () Bool)

(declare-datatypes ((List!12990 0))(
  ( (Nil!12987) (Cons!12986 (h!14031 (_ BitVec 64)) (t!19226 List!12990)) )
))
(declare-fun acc!681 () List!12990)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3533 (List!12990 (_ BitVec 64)) Bool)

(assert (=> b!678904 (= e!386811 (contains!3533 acc!681 k!2843))))

(declare-fun b!678905 () Bool)

(declare-fun res!445469 () Bool)

(declare-fun e!386814 () Bool)

(assert (=> b!678905 (=> (not res!445469) (not e!386814))))

(declare-fun e!386815 () Bool)

(assert (=> b!678905 (= res!445469 e!386815)))

(declare-fun res!445466 () Bool)

(assert (=> b!678905 (=> res!445466 e!386815)))

(assert (=> b!678905 (= res!445466 e!386811)))

(declare-fun res!445465 () Bool)

(assert (=> b!678905 (=> (not res!445465) (not e!386811))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678905 (= res!445465 (bvsgt from!3004 i!1382))))

(declare-fun b!678906 () Bool)

(declare-fun res!445474 () Bool)

(assert (=> b!678906 (=> (not res!445474) (not e!386814))))

(assert (=> b!678906 (= res!445474 (not (contains!3533 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678907 () Bool)

(declare-fun res!445473 () Bool)

(assert (=> b!678907 (=> (not res!445473) (not e!386814))))

(declare-datatypes ((array!39418 0))(
  ( (array!39419 (arr!18896 (Array (_ BitVec 32) (_ BitVec 64))) (size!19260 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39418)

(declare-fun arrayNoDuplicates!0 (array!39418 (_ BitVec 32) List!12990) Bool)

(assert (=> b!678907 (= res!445473 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12987))))

(declare-fun b!678908 () Bool)

(declare-fun e!386812 () Bool)

(assert (=> b!678908 (= e!386812 (not (contains!3533 acc!681 k!2843)))))

(declare-fun res!445471 () Bool)

(assert (=> start!60448 (=> (not res!445471) (not e!386814))))

(assert (=> start!60448 (= res!445471 (and (bvslt (size!19260 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19260 a!3626))))))

(assert (=> start!60448 e!386814))

(assert (=> start!60448 true))

(declare-fun array_inv!14670 (array!39418) Bool)

(assert (=> start!60448 (array_inv!14670 a!3626)))

(declare-fun b!678909 () Bool)

(declare-fun res!445463 () Bool)

(assert (=> b!678909 (=> (not res!445463) (not e!386814))))

(assert (=> b!678909 (= res!445463 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19260 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678910 () Bool)

(declare-fun res!445475 () Bool)

(assert (=> b!678910 (=> (not res!445475) (not e!386814))))

(assert (=> b!678910 (= res!445475 (not (contains!3533 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678911 () Bool)

(declare-fun res!445467 () Bool)

(assert (=> b!678911 (=> (not res!445467) (not e!386814))))

(assert (=> b!678911 (= res!445467 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678912 () Bool)

(declare-fun res!445462 () Bool)

(assert (=> b!678912 (=> (not res!445462) (not e!386814))))

(assert (=> b!678912 (= res!445462 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19260 a!3626))))))

(declare-fun b!678913 () Bool)

(assert (=> b!678913 (= e!386815 e!386812)))

(declare-fun res!445470 () Bool)

(assert (=> b!678913 (=> (not res!445470) (not e!386812))))

(assert (=> b!678913 (= res!445470 (bvsle from!3004 i!1382))))

(declare-fun b!678914 () Bool)

(declare-fun res!445472 () Bool)

(assert (=> b!678914 (=> (not res!445472) (not e!386814))))

(declare-fun noDuplicate!780 (List!12990) Bool)

(assert (=> b!678914 (= res!445472 (noDuplicate!780 acc!681))))

(declare-fun b!678915 () Bool)

(declare-fun res!445468 () Bool)

(assert (=> b!678915 (=> (not res!445468) (not e!386814))))

(declare-fun arrayContainsKey!0 (array!39418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678915 (= res!445468 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678916 () Bool)

(declare-fun res!445464 () Bool)

(assert (=> b!678916 (=> (not res!445464) (not e!386814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678916 (= res!445464 (validKeyInArray!0 k!2843))))

(declare-fun b!678917 () Bool)

(assert (=> b!678917 (= e!386814 (not true))))

(assert (=> b!678917 (arrayContainsKey!0 (array!39419 (store (arr!18896 a!3626) i!1382 k!2843) (size!19260 a!3626)) k!2843 from!3004)))

(assert (= (and start!60448 res!445471) b!678914))

(assert (= (and b!678914 res!445472) b!678906))

(assert (= (and b!678906 res!445474) b!678910))

(assert (= (and b!678910 res!445475) b!678905))

(assert (= (and b!678905 res!445465) b!678904))

(assert (= (and b!678905 (not res!445466)) b!678913))

(assert (= (and b!678913 res!445470) b!678908))

(assert (= (and b!678905 res!445469) b!678907))

(assert (= (and b!678907 res!445473) b!678911))

(assert (= (and b!678911 res!445467) b!678912))

(assert (= (and b!678912 res!445462) b!678916))

(assert (= (and b!678916 res!445464) b!678915))

(assert (= (and b!678915 res!445468) b!678909))

(assert (= (and b!678909 res!445463) b!678917))

(declare-fun m!644477 () Bool)

(assert (=> b!678914 m!644477))

(declare-fun m!644479 () Bool)

(assert (=> start!60448 m!644479))

(declare-fun m!644481 () Bool)

(assert (=> b!678906 m!644481))

(declare-fun m!644483 () Bool)

(assert (=> b!678911 m!644483))

(declare-fun m!644485 () Bool)

(assert (=> b!678904 m!644485))

(declare-fun m!644487 () Bool)

(assert (=> b!678915 m!644487))

(declare-fun m!644489 () Bool)

(assert (=> b!678910 m!644489))

(declare-fun m!644491 () Bool)

(assert (=> b!678916 m!644491))

(declare-fun m!644493 () Bool)

(assert (=> b!678917 m!644493))

(declare-fun m!644495 () Bool)

(assert (=> b!678917 m!644495))

(assert (=> b!678908 m!644485))

(declare-fun m!644497 () Bool)

(assert (=> b!678907 m!644497))

(push 1)

(assert (not b!678904))

(assert (not b!678915))

(assert (not start!60448))

(assert (not b!678916))

(assert (not b!678917))

(assert (not b!678911))

(assert (not b!678914))

(assert (not b!678908))

(assert (not b!678906))

(assert (not b!678907))

(assert (not b!678910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

