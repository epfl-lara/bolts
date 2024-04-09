; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60364 () Bool)

(assert start!60364)

(declare-fun b!677841 () Bool)

(declare-fun res!444449 () Bool)

(declare-fun e!386324 () Bool)

(assert (=> b!677841 (=> (not res!444449) (not e!386324))))

(declare-datatypes ((List!12966 0))(
  ( (Nil!12963) (Cons!12962 (h!14007 (_ BitVec 64)) (t!19202 List!12966)) )
))
(declare-fun acc!681 () List!12966)

(declare-fun contains!3509 (List!12966 (_ BitVec 64)) Bool)

(assert (=> b!677841 (= res!444449 (not (contains!3509 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!444448 () Bool)

(assert (=> start!60364 (=> (not res!444448) (not e!386324))))

(declare-datatypes ((array!39367 0))(
  ( (array!39368 (arr!18872 (Array (_ BitVec 32) (_ BitVec 64))) (size!19236 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39367)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60364 (= res!444448 (and (bvslt (size!19236 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19236 a!3626))))))

(assert (=> start!60364 e!386324))

(assert (=> start!60364 true))

(declare-fun array_inv!14646 (array!39367) Bool)

(assert (=> start!60364 (array_inv!14646 a!3626)))

(declare-fun b!677842 () Bool)

(declare-fun res!444445 () Bool)

(assert (=> b!677842 (=> (not res!444445) (not e!386324))))

(declare-fun arrayNoDuplicates!0 (array!39367 (_ BitVec 32) List!12966) Bool)

(assert (=> b!677842 (= res!444445 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12963))))

(declare-fun b!677843 () Bool)

(assert (=> b!677843 (= e!386324 false)))

(declare-fun lt!312798 () Bool)

(assert (=> b!677843 (= lt!312798 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677844 () Bool)

(declare-fun e!386322 () Bool)

(declare-fun e!386326 () Bool)

(assert (=> b!677844 (= e!386322 e!386326)))

(declare-fun res!444442 () Bool)

(assert (=> b!677844 (=> (not res!444442) (not e!386326))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677844 (= res!444442 (bvsle from!3004 i!1382))))

(declare-fun b!677845 () Bool)

(declare-fun res!444446 () Bool)

(assert (=> b!677845 (=> (not res!444446) (not e!386324))))

(declare-fun noDuplicate!756 (List!12966) Bool)

(assert (=> b!677845 (= res!444446 (noDuplicate!756 acc!681))))

(declare-fun b!677846 () Bool)

(declare-fun res!444444 () Bool)

(assert (=> b!677846 (=> (not res!444444) (not e!386324))))

(assert (=> b!677846 (= res!444444 e!386322)))

(declare-fun res!444447 () Bool)

(assert (=> b!677846 (=> res!444447 e!386322)))

(declare-fun e!386323 () Bool)

(assert (=> b!677846 (= res!444447 e!386323)))

(declare-fun res!444441 () Bool)

(assert (=> b!677846 (=> (not res!444441) (not e!386323))))

(assert (=> b!677846 (= res!444441 (bvsgt from!3004 i!1382))))

(declare-fun b!677847 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!677847 (= e!386326 (not (contains!3509 acc!681 k!2843)))))

(declare-fun b!677848 () Bool)

(assert (=> b!677848 (= e!386323 (contains!3509 acc!681 k!2843))))

(declare-fun b!677849 () Bool)

(declare-fun res!444443 () Bool)

(assert (=> b!677849 (=> (not res!444443) (not e!386324))))

(assert (=> b!677849 (= res!444443 (not (contains!3509 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60364 res!444448) b!677845))

(assert (= (and b!677845 res!444446) b!677849))

(assert (= (and b!677849 res!444443) b!677841))

(assert (= (and b!677841 res!444449) b!677846))

(assert (= (and b!677846 res!444441) b!677848))

(assert (= (and b!677846 (not res!444447)) b!677844))

(assert (= (and b!677844 res!444442) b!677847))

(assert (= (and b!677846 res!444444) b!677842))

(assert (= (and b!677842 res!444445) b!677843))

(declare-fun m!643885 () Bool)

(assert (=> b!677845 m!643885))

(declare-fun m!643887 () Bool)

(assert (=> start!60364 m!643887))

(declare-fun m!643889 () Bool)

(assert (=> b!677849 m!643889))

(declare-fun m!643891 () Bool)

(assert (=> b!677843 m!643891))

(declare-fun m!643893 () Bool)

(assert (=> b!677848 m!643893))

(declare-fun m!643895 () Bool)

(assert (=> b!677842 m!643895))

(assert (=> b!677847 m!643893))

(declare-fun m!643897 () Bool)

(assert (=> b!677841 m!643897))

(push 1)

(assert (not b!677842))

(assert (not b!677843))

(assert (not b!677848))

(assert (not b!677845))

(assert (not b!677847))

(assert (not b!677841))

(assert (not start!60364))

(assert (not b!677849))

(check-sat)

(pop 1)

(push 1)

