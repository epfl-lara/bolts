; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113966 () Bool)

(assert start!113966)

(declare-fun b!1351230 () Bool)

(declare-fun res!896816 () Bool)

(declare-fun e!768462 () Bool)

(assert (=> b!1351230 (=> res!896816 e!768462)))

(declare-datatypes ((List!31700 0))(
  ( (Nil!31697) (Cons!31696 (h!32905 (_ BitVec 64)) (t!46365 List!31700)) )
))
(declare-fun acc!759 () List!31700)

(declare-fun lt!597133 () List!31700)

(declare-fun subseq!674 (List!31700 List!31700) Bool)

(assert (=> b!1351230 (= res!896816 (not (subseq!674 acc!759 lt!597133)))))

(declare-fun b!1351231 () Bool)

(declare-fun res!896822 () Bool)

(declare-fun e!768463 () Bool)

(assert (=> b!1351231 (=> (not res!896822) (not e!768463))))

(declare-datatypes ((array!92071 0))(
  ( (array!92072 (arr!44479 (Array (_ BitVec 32) (_ BitVec 64))) (size!45030 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92071)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351231 (= res!896822 (validKeyInArray!0 (select (arr!44479 a!3742) from!3120)))))

(declare-fun b!1351232 () Bool)

(declare-fun res!896814 () Bool)

(assert (=> b!1351232 (=> (not res!896814) (not e!768463))))

(assert (=> b!1351232 (= res!896814 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45030 a!3742)))))

(declare-fun b!1351233 () Bool)

(declare-fun res!896811 () Bool)

(assert (=> b!1351233 (=> (not res!896811) (not e!768463))))

(declare-fun arrayNoDuplicates!0 (array!92071 (_ BitVec 32) List!31700) Bool)

(assert (=> b!1351233 (= res!896811 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31697))))

(declare-fun b!1351234 () Bool)

(declare-fun res!896809 () Bool)

(assert (=> b!1351234 (=> (not res!896809) (not e!768463))))

(declare-fun noDuplicate!2144 (List!31700) Bool)

(assert (=> b!1351234 (= res!896809 (noDuplicate!2144 acc!759))))

(declare-fun b!1351235 () Bool)

(declare-fun res!896820 () Bool)

(assert (=> b!1351235 (=> res!896820 e!768462)))

(assert (=> b!1351235 (= res!896820 (not (noDuplicate!2144 lt!597133)))))

(declare-fun b!1351236 () Bool)

(declare-fun res!896821 () Bool)

(assert (=> b!1351236 (=> (not res!896821) (not e!768463))))

(assert (=> b!1351236 (= res!896821 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351237 () Bool)

(declare-fun res!896815 () Bool)

(assert (=> b!1351237 (=> (not res!896815) (not e!768463))))

(declare-fun contains!9265 (List!31700 (_ BitVec 64)) Bool)

(assert (=> b!1351237 (= res!896815 (not (contains!9265 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896819 () Bool)

(assert (=> start!113966 (=> (not res!896819) (not e!768463))))

(assert (=> start!113966 (= res!896819 (and (bvslt (size!45030 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45030 a!3742))))))

(assert (=> start!113966 e!768463))

(assert (=> start!113966 true))

(declare-fun array_inv!33424 (array!92071) Bool)

(assert (=> start!113966 (array_inv!33424 a!3742)))

(declare-fun b!1351238 () Bool)

(declare-fun res!896812 () Bool)

(assert (=> b!1351238 (=> res!896812 e!768462)))

(assert (=> b!1351238 (= res!896812 (contains!9265 lt!597133 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351239 () Bool)

(declare-fun res!896823 () Bool)

(assert (=> b!1351239 (=> res!896823 e!768462)))

(assert (=> b!1351239 (= res!896823 (contains!9265 lt!597133 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351240 () Bool)

(assert (=> b!1351240 (= e!768462 true)))

(declare-fun lt!597132 () Bool)

(assert (=> b!1351240 (= lt!597132 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597133))))

(declare-datatypes ((Unit!44210 0))(
  ( (Unit!44211) )
))
(declare-fun lt!597131 () Unit!44210)

(declare-fun noDuplicateSubseq!125 (List!31700 List!31700) Unit!44210)

(assert (=> b!1351240 (= lt!597131 (noDuplicateSubseq!125 acc!759 lt!597133))))

(declare-fun b!1351241 () Bool)

(declare-fun res!896813 () Bool)

(assert (=> b!1351241 (=> (not res!896813) (not e!768463))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351241 (= res!896813 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45030 a!3742))))))

(declare-fun b!1351242 () Bool)

(assert (=> b!1351242 (= e!768463 (not e!768462))))

(declare-fun res!896810 () Bool)

(assert (=> b!1351242 (=> res!896810 e!768462)))

(assert (=> b!1351242 (= res!896810 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!691 (List!31700 (_ BitVec 64)) List!31700)

(assert (=> b!1351242 (= lt!597133 ($colon$colon!691 acc!759 (select (arr!44479 a!3742) from!3120)))))

(assert (=> b!1351242 (subseq!674 acc!759 acc!759)))

(declare-fun lt!597134 () Unit!44210)

(declare-fun lemmaListSubSeqRefl!0 (List!31700) Unit!44210)

(assert (=> b!1351242 (= lt!597134 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351243 () Bool)

(declare-fun res!896817 () Bool)

(assert (=> b!1351243 (=> (not res!896817) (not e!768463))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351243 (= res!896817 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351244 () Bool)

(declare-fun res!896818 () Bool)

(assert (=> b!1351244 (=> (not res!896818) (not e!768463))))

(assert (=> b!1351244 (= res!896818 (not (contains!9265 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113966 res!896819) b!1351234))

(assert (= (and b!1351234 res!896809) b!1351237))

(assert (= (and b!1351237 res!896815) b!1351244))

(assert (= (and b!1351244 res!896818) b!1351233))

(assert (= (and b!1351233 res!896811) b!1351236))

(assert (= (and b!1351236 res!896821) b!1351241))

(assert (= (and b!1351241 res!896813) b!1351243))

(assert (= (and b!1351243 res!896817) b!1351232))

(assert (= (and b!1351232 res!896814) b!1351231))

(assert (= (and b!1351231 res!896822) b!1351242))

(assert (= (and b!1351242 (not res!896810)) b!1351235))

(assert (= (and b!1351235 (not res!896820)) b!1351238))

(assert (= (and b!1351238 (not res!896812)) b!1351239))

(assert (= (and b!1351239 (not res!896823)) b!1351230))

(assert (= (and b!1351230 (not res!896816)) b!1351240))

(declare-fun m!1238317 () Bool)

(assert (=> b!1351236 m!1238317))

(declare-fun m!1238319 () Bool)

(assert (=> b!1351233 m!1238319))

(declare-fun m!1238321 () Bool)

(assert (=> b!1351244 m!1238321))

(declare-fun m!1238323 () Bool)

(assert (=> b!1351231 m!1238323))

(assert (=> b!1351231 m!1238323))

(declare-fun m!1238325 () Bool)

(assert (=> b!1351231 m!1238325))

(declare-fun m!1238327 () Bool)

(assert (=> b!1351234 m!1238327))

(declare-fun m!1238329 () Bool)

(assert (=> b!1351238 m!1238329))

(declare-fun m!1238331 () Bool)

(assert (=> start!113966 m!1238331))

(assert (=> b!1351242 m!1238323))

(assert (=> b!1351242 m!1238323))

(declare-fun m!1238333 () Bool)

(assert (=> b!1351242 m!1238333))

(declare-fun m!1238335 () Bool)

(assert (=> b!1351242 m!1238335))

(declare-fun m!1238337 () Bool)

(assert (=> b!1351242 m!1238337))

(declare-fun m!1238339 () Bool)

(assert (=> b!1351235 m!1238339))

(declare-fun m!1238341 () Bool)

(assert (=> b!1351240 m!1238341))

(declare-fun m!1238343 () Bool)

(assert (=> b!1351240 m!1238343))

(declare-fun m!1238345 () Bool)

(assert (=> b!1351237 m!1238345))

(declare-fun m!1238347 () Bool)

(assert (=> b!1351230 m!1238347))

(declare-fun m!1238349 () Bool)

(assert (=> b!1351239 m!1238349))

(declare-fun m!1238351 () Bool)

(assert (=> b!1351243 m!1238351))

(push 1)

(assert (not b!1351233))

(assert (not b!1351234))

(assert (not b!1351244))

(assert (not b!1351230))

(assert (not b!1351235))

(assert (not b!1351242))

(assert (not b!1351240))

(assert (not b!1351231))

(assert (not b!1351239))

(assert (not start!113966))

(assert (not b!1351238))

(assert (not b!1351237))

(assert (not b!1351236))

(assert (not b!1351243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

