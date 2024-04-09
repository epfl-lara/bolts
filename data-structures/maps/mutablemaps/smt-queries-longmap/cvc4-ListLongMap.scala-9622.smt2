; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113892 () Bool)

(assert start!113892)

(declare-fun res!895888 () Bool)

(declare-fun e!768187 () Bool)

(assert (=> start!113892 (=> (not res!895888) (not e!768187))))

(declare-datatypes ((array!92012 0))(
  ( (array!92013 (arr!44451 (Array (_ BitVec 32) (_ BitVec 64))) (size!45002 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92012)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113892 (= res!895888 (and (bvslt (size!45002 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45002 a!3742))))))

(assert (=> start!113892 e!768187))

(declare-fun array_inv!33396 (array!92012) Bool)

(assert (=> start!113892 (array_inv!33396 a!3742)))

(assert (=> start!113892 true))

(declare-fun b!1350305 () Bool)

(declare-fun e!768186 () Bool)

(assert (=> b!1350305 (= e!768187 e!768186)))

(declare-fun res!895886 () Bool)

(assert (=> b!1350305 (=> res!895886 e!768186)))

(declare-datatypes ((List!31672 0))(
  ( (Nil!31669) (Cons!31668 (h!32877 (_ BitVec 64)) (t!46337 List!31672)) )
))
(declare-fun contains!9237 (List!31672 (_ BitVec 64)) Bool)

(assert (=> b!1350305 (= res!895886 (contains!9237 Nil!31669 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350306 () Bool)

(declare-fun res!895884 () Bool)

(assert (=> b!1350306 (=> (not res!895884) (not e!768187))))

(declare-fun acc!759 () List!31672)

(assert (=> b!1350306 (= res!895884 (not (contains!9237 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350307 () Bool)

(declare-fun res!895889 () Bool)

(assert (=> b!1350307 (=> (not res!895889) (not e!768187))))

(declare-fun noDuplicate!2116 (List!31672) Bool)

(assert (=> b!1350307 (= res!895889 (noDuplicate!2116 Nil!31669))))

(declare-fun b!1350308 () Bool)

(declare-fun res!895890 () Bool)

(assert (=> b!1350308 (=> (not res!895890) (not e!768187))))

(assert (=> b!1350308 (= res!895890 (bvsle #b00000000000000000000000000000000 (size!45002 a!3742)))))

(declare-fun b!1350309 () Bool)

(assert (=> b!1350309 (= e!768186 (contains!9237 Nil!31669 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350310 () Bool)

(declare-fun res!895885 () Bool)

(assert (=> b!1350310 (=> (not res!895885) (not e!768187))))

(assert (=> b!1350310 (= res!895885 (noDuplicate!2116 acc!759))))

(declare-fun b!1350311 () Bool)

(declare-fun res!895887 () Bool)

(assert (=> b!1350311 (=> (not res!895887) (not e!768187))))

(assert (=> b!1350311 (= res!895887 (not (contains!9237 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113892 res!895888) b!1350310))

(assert (= (and b!1350310 res!895885) b!1350311))

(assert (= (and b!1350311 res!895887) b!1350306))

(assert (= (and b!1350306 res!895884) b!1350308))

(assert (= (and b!1350308 res!895890) b!1350307))

(assert (= (and b!1350307 res!895889) b!1350305))

(assert (= (and b!1350305 (not res!895886)) b!1350309))

(declare-fun m!1237559 () Bool)

(assert (=> b!1350311 m!1237559))

(declare-fun m!1237561 () Bool)

(assert (=> start!113892 m!1237561))

(declare-fun m!1237563 () Bool)

(assert (=> b!1350309 m!1237563))

(declare-fun m!1237565 () Bool)

(assert (=> b!1350310 m!1237565))

(declare-fun m!1237567 () Bool)

(assert (=> b!1350307 m!1237567))

(declare-fun m!1237569 () Bool)

(assert (=> b!1350306 m!1237569))

(declare-fun m!1237571 () Bool)

(assert (=> b!1350305 m!1237571))

(push 1)

(assert (not start!113892))

(assert (not b!1350305))

(assert (not b!1350311))

(assert (not b!1350306))

(assert (not b!1350310))

(assert (not b!1350307))

(assert (not b!1350309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144847 () Bool)

(declare-fun lt!596909 () Bool)

(declare-fun content!680 (List!31672) (Set (_ BitVec 64)))

(assert (=> d!144847 (= lt!596909 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!680 Nil!31669)))))

(declare-fun e!768219 () Bool)

(assert (=> d!144847 (= lt!596909 e!768219)))

(declare-fun res!895921 () Bool)

(assert (=> d!144847 (=> (not res!895921) (not e!768219))))

(assert (=> d!144847 (= res!895921 (is-Cons!31668 Nil!31669))))

(assert (=> d!144847 (= (contains!9237 Nil!31669 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596909)))

(declare-fun b!1350342 () Bool)

(declare-fun e!768218 () Bool)

(assert (=> b!1350342 (= e!768219 e!768218)))

(declare-fun res!895922 () Bool)

(assert (=> b!1350342 (=> res!895922 e!768218)))

(assert (=> b!1350342 (= res!895922 (= (h!32877 Nil!31669) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350343 () Bool)

(assert (=> b!1350343 (= e!768218 (contains!9237 (t!46337 Nil!31669) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144847 res!895921) b!1350342))

(assert (= (and b!1350342 (not res!895922)) b!1350343))

(declare-fun m!1237607 () Bool)

(assert (=> d!144847 m!1237607))

(declare-fun m!1237609 () Bool)

(assert (=> d!144847 m!1237609))

(declare-fun m!1237611 () Bool)

(assert (=> b!1350343 m!1237611))

(assert (=> b!1350309 d!144847))

(declare-fun d!144857 () Bool)

(assert (=> d!144857 (= (array_inv!33396 a!3742) (bvsge (size!45002 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!113892 d!144857))

(declare-fun d!144859 () Bool)

(declare-fun res!895939 () Bool)

(declare-fun e!768236 () Bool)

(assert (=> d!144859 (=> res!895939 e!768236)))

(assert (=> d!144859 (= res!895939 (is-Nil!31669 Nil!31669))))

(assert (=> d!144859 (= (noDuplicate!2116 Nil!31669) e!768236)))

(declare-fun b!1350360 () Bool)

(declare-fun e!768237 () Bool)

(assert (=> b!1350360 (= e!768236 e!768237)))

(declare-fun res!895940 () Bool)

(assert (=> b!1350360 (=> (not res!895940) (not e!768237))))

(assert (=> b!1350360 (= res!895940 (not (contains!9237 (t!46337 Nil!31669) (h!32877 Nil!31669))))))

(declare-fun b!1350361 () Bool)

(assert (=> b!1350361 (= e!768237 (noDuplicate!2116 (t!46337 Nil!31669)))))

(assert (= (and d!144859 (not res!895939)) b!1350360))

(assert (= (and b!1350360 res!895940) b!1350361))

(declare-fun m!1237631 () Bool)

(assert (=> b!1350360 m!1237631))

(declare-fun m!1237633 () Bool)

(assert (=> b!1350361 m!1237633))

(assert (=> b!1350307 d!144859))

(declare-fun d!144869 () Bool)

(declare-fun lt!596912 () Bool)

(assert (=> d!144869 (= lt!596912 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!680 acc!759)))))

