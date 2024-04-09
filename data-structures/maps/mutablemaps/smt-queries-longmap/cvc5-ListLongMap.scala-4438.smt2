; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61710 () Bool)

(assert start!61710)

(declare-fun b!690012 () Bool)

(declare-fun e!392917 () Bool)

(declare-datatypes ((List!13120 0))(
  ( (Nil!13117) (Cons!13116 (h!14161 (_ BitVec 64)) (t!19395 List!13120)) )
))
(declare-fun acc!681 () List!13120)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3663 (List!13120 (_ BitVec 64)) Bool)

(assert (=> b!690012 (= e!392917 (contains!3663 acc!681 k!2843))))

(declare-fun b!690013 () Bool)

(declare-fun e!392914 () Bool)

(assert (=> b!690013 (= e!392914 false)))

(declare-fun lt!316356 () Bool)

(declare-datatypes ((array!39720 0))(
  ( (array!39721 (arr!19026 (Array (_ BitVec 32) (_ BitVec 64))) (size!19409 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39720)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39720 (_ BitVec 32) List!13120) Bool)

(assert (=> b!690013 (= lt!316356 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690014 () Bool)

(declare-fun res!454594 () Bool)

(assert (=> b!690014 (=> (not res!454594) (not e!392914))))

(assert (=> b!690014 (= res!454594 (not (contains!3663 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690015 () Bool)

(declare-fun e!392915 () Bool)

(declare-fun e!392916 () Bool)

(assert (=> b!690015 (= e!392915 e!392916)))

(declare-fun res!454595 () Bool)

(assert (=> b!690015 (=> (not res!454595) (not e!392916))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690015 (= res!454595 (bvsle from!3004 i!1382))))

(declare-fun b!690016 () Bool)

(declare-fun res!454593 () Bool)

(assert (=> b!690016 (=> (not res!454593) (not e!392914))))

(assert (=> b!690016 (= res!454593 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13117))))

(declare-fun b!690017 () Bool)

(declare-fun res!454592 () Bool)

(assert (=> b!690017 (=> (not res!454592) (not e!392914))))

(assert (=> b!690017 (= res!454592 (not (contains!3663 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690018 () Bool)

(declare-fun res!454597 () Bool)

(assert (=> b!690018 (=> (not res!454597) (not e!392914))))

(declare-fun noDuplicate!910 (List!13120) Bool)

(assert (=> b!690018 (= res!454597 (noDuplicate!910 acc!681))))

(declare-fun res!454590 () Bool)

(assert (=> start!61710 (=> (not res!454590) (not e!392914))))

(assert (=> start!61710 (= res!454590 (and (bvslt (size!19409 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19409 a!3626))))))

(assert (=> start!61710 e!392914))

(assert (=> start!61710 true))

(declare-fun array_inv!14800 (array!39720) Bool)

(assert (=> start!61710 (array_inv!14800 a!3626)))

(declare-fun b!690019 () Bool)

(assert (=> b!690019 (= e!392916 (not (contains!3663 acc!681 k!2843)))))

(declare-fun b!690020 () Bool)

(declare-fun res!454598 () Bool)

(assert (=> b!690020 (=> (not res!454598) (not e!392914))))

(assert (=> b!690020 (= res!454598 e!392915)))

(declare-fun res!454596 () Bool)

(assert (=> b!690020 (=> res!454596 e!392915)))

(assert (=> b!690020 (= res!454596 e!392917)))

(declare-fun res!454591 () Bool)

(assert (=> b!690020 (=> (not res!454591) (not e!392917))))

(assert (=> b!690020 (= res!454591 (bvsgt from!3004 i!1382))))

(assert (= (and start!61710 res!454590) b!690018))

(assert (= (and b!690018 res!454597) b!690017))

(assert (= (and b!690017 res!454592) b!690014))

(assert (= (and b!690014 res!454594) b!690020))

(assert (= (and b!690020 res!454591) b!690012))

(assert (= (and b!690020 (not res!454596)) b!690015))

(assert (= (and b!690015 res!454595) b!690019))

(assert (= (and b!690020 res!454598) b!690016))

(assert (= (and b!690016 res!454593) b!690013))

(declare-fun m!653679 () Bool)

(assert (=> start!61710 m!653679))

(declare-fun m!653681 () Bool)

(assert (=> b!690014 m!653681))

(declare-fun m!653683 () Bool)

(assert (=> b!690013 m!653683))

(declare-fun m!653685 () Bool)

(assert (=> b!690016 m!653685))

(declare-fun m!653687 () Bool)

(assert (=> b!690019 m!653687))

(declare-fun m!653689 () Bool)

(assert (=> b!690018 m!653689))

(declare-fun m!653691 () Bool)

(assert (=> b!690017 m!653691))

(assert (=> b!690012 m!653687))

(push 1)

(assert (not b!690019))

(assert (not b!690016))

(assert (not b!690018))

(assert (not b!690012))

(assert (not b!690017))

(assert (not start!61710))

(assert (not b!690014))

(assert (not b!690013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

