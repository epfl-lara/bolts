; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114064 () Bool)

(assert start!114064)

(declare-fun b!1353125 () Bool)

(declare-fun res!898466 () Bool)

(declare-fun e!769032 () Bool)

(assert (=> b!1353125 (=> (not res!898466) (not e!769032))))

(declare-datatypes ((List!31749 0))(
  ( (Nil!31746) (Cons!31745 (h!32954 (_ BitVec 64)) (t!46414 List!31749)) )
))
(declare-fun lt!597733 () List!31749)

(declare-fun contains!9314 (List!31749 (_ BitVec 64)) Bool)

(assert (=> b!1353125 (= res!898466 (not (contains!9314 lt!597733 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353126 () Bool)

(declare-datatypes ((Unit!44348 0))(
  ( (Unit!44349) )
))
(declare-fun e!769031 () Unit!44348)

(declare-fun lt!597730 () Unit!44348)

(assert (=> b!1353126 (= e!769031 lt!597730)))

(declare-fun lt!597734 () Unit!44348)

(declare-fun acc!759 () List!31749)

(declare-fun lemmaListSubSeqRefl!0 (List!31749) Unit!44348)

(assert (=> b!1353126 (= lt!597734 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!723 (List!31749 List!31749) Bool)

(assert (=> b!1353126 (subseq!723 acc!759 acc!759)))

(declare-datatypes ((array!92169 0))(
  ( (array!92170 (arr!44528 (Array (_ BitVec 32) (_ BitVec 64))) (size!45079 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92169)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92169 List!31749 List!31749 (_ BitVec 32)) Unit!44348)

(declare-fun $colon$colon!740 (List!31749 (_ BitVec 64)) List!31749)

(assert (=> b!1353126 (= lt!597730 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!740 acc!759 (select (arr!44528 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92169 (_ BitVec 32) List!31749) Bool)

(assert (=> b!1353126 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!898471 () Bool)

(declare-fun e!769030 () Bool)

(assert (=> start!114064 (=> (not res!898471) (not e!769030))))

(assert (=> start!114064 (= res!898471 (and (bvslt (size!45079 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45079 a!3742))))))

(assert (=> start!114064 e!769030))

(assert (=> start!114064 true))

(declare-fun array_inv!33473 (array!92169) Bool)

(assert (=> start!114064 (array_inv!33473 a!3742)))

(declare-fun b!1353127 () Bool)

(declare-fun res!898467 () Bool)

(assert (=> b!1353127 (=> (not res!898467) (not e!769030))))

(assert (=> b!1353127 (= res!898467 (not (contains!9314 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353128 () Bool)

(declare-fun res!898464 () Bool)

(assert (=> b!1353128 (=> (not res!898464) (not e!769032))))

(declare-fun noDuplicate!2193 (List!31749) Bool)

(assert (=> b!1353128 (= res!898464 (noDuplicate!2193 lt!597733))))

(declare-fun b!1353129 () Bool)

(declare-fun e!769033 () Bool)

(assert (=> b!1353129 (= e!769033 e!769032)))

(declare-fun res!898470 () Bool)

(assert (=> b!1353129 (=> (not res!898470) (not e!769032))))

(assert (=> b!1353129 (= res!898470 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353129 (= lt!597733 ($colon$colon!740 acc!759 (select (arr!44528 a!3742) from!3120)))))

(declare-fun b!1353130 () Bool)

(declare-fun res!898460 () Bool)

(assert (=> b!1353130 (=> (not res!898460) (not e!769030))))

(assert (=> b!1353130 (= res!898460 (noDuplicate!2193 acc!759))))

(declare-fun b!1353131 () Bool)

(assert (=> b!1353131 (= e!769030 e!769033)))

(declare-fun res!898465 () Bool)

(assert (=> b!1353131 (=> (not res!898465) (not e!769033))))

(declare-fun lt!597732 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353131 (= res!898465 (and (not (= from!3120 i!1404)) lt!597732))))

(declare-fun lt!597729 () Unit!44348)

(assert (=> b!1353131 (= lt!597729 e!769031)))

(declare-fun c!126775 () Bool)

(assert (=> b!1353131 (= c!126775 lt!597732)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353131 (= lt!597732 (validKeyInArray!0 (select (arr!44528 a!3742) from!3120)))))

(declare-fun b!1353132 () Bool)

(declare-fun res!898473 () Bool)

(assert (=> b!1353132 (=> (not res!898473) (not e!769032))))

(assert (=> b!1353132 (= res!898473 (not (contains!9314 lt!597733 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353133 () Bool)

(declare-fun res!898468 () Bool)

(assert (=> b!1353133 (=> (not res!898468) (not e!769030))))

(assert (=> b!1353133 (= res!898468 (not (contains!9314 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353134 () Bool)

(declare-fun res!898461 () Bool)

(assert (=> b!1353134 (=> (not res!898461) (not e!769030))))

(assert (=> b!1353134 (= res!898461 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45079 a!3742))))))

(declare-fun b!1353135 () Bool)

(declare-fun res!898472 () Bool)

(assert (=> b!1353135 (=> (not res!898472) (not e!769030))))

(assert (=> b!1353135 (= res!898472 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31746))))

(declare-fun b!1353136 () Bool)

(declare-fun res!898469 () Bool)

(assert (=> b!1353136 (=> (not res!898469) (not e!769030))))

(assert (=> b!1353136 (= res!898469 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353137 () Bool)

(declare-fun Unit!44350 () Unit!44348)

(assert (=> b!1353137 (= e!769031 Unit!44350)))

(declare-fun b!1353138 () Bool)

(declare-fun res!898462 () Bool)

(assert (=> b!1353138 (=> (not res!898462) (not e!769030))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353138 (= res!898462 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353139 () Bool)

(assert (=> b!1353139 (= e!769032 false)))

(declare-fun lt!597731 () Bool)

(assert (=> b!1353139 (= lt!597731 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597733))))

(declare-fun b!1353140 () Bool)

(declare-fun res!898463 () Bool)

(assert (=> b!1353140 (=> (not res!898463) (not e!769030))))

(assert (=> b!1353140 (= res!898463 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45079 a!3742)))))

(assert (= (and start!114064 res!898471) b!1353130))

(assert (= (and b!1353130 res!898460) b!1353133))

(assert (= (and b!1353133 res!898468) b!1353127))

(assert (= (and b!1353127 res!898467) b!1353135))

(assert (= (and b!1353135 res!898472) b!1353136))

(assert (= (and b!1353136 res!898469) b!1353134))

(assert (= (and b!1353134 res!898461) b!1353138))

(assert (= (and b!1353138 res!898462) b!1353140))

(assert (= (and b!1353140 res!898463) b!1353131))

(assert (= (and b!1353131 c!126775) b!1353126))

(assert (= (and b!1353131 (not c!126775)) b!1353137))

(assert (= (and b!1353131 res!898465) b!1353129))

(assert (= (and b!1353129 res!898470) b!1353128))

(assert (= (and b!1353128 res!898464) b!1353132))

(assert (= (and b!1353132 res!898473) b!1353125))

(assert (= (and b!1353125 res!898466) b!1353139))

(declare-fun m!1239841 () Bool)

(assert (=> b!1353131 m!1239841))

(assert (=> b!1353131 m!1239841))

(declare-fun m!1239843 () Bool)

(assert (=> b!1353131 m!1239843))

(declare-fun m!1239845 () Bool)

(assert (=> b!1353133 m!1239845))

(declare-fun m!1239847 () Bool)

(assert (=> b!1353126 m!1239847))

(assert (=> b!1353126 m!1239841))

(declare-fun m!1239849 () Bool)

(assert (=> b!1353126 m!1239849))

(declare-fun m!1239851 () Bool)

(assert (=> b!1353126 m!1239851))

(declare-fun m!1239853 () Bool)

(assert (=> b!1353126 m!1239853))

(assert (=> b!1353126 m!1239841))

(assert (=> b!1353126 m!1239849))

(declare-fun m!1239855 () Bool)

(assert (=> b!1353126 m!1239855))

(declare-fun m!1239857 () Bool)

(assert (=> b!1353138 m!1239857))

(declare-fun m!1239859 () Bool)

(assert (=> b!1353130 m!1239859))

(declare-fun m!1239861 () Bool)

(assert (=> b!1353128 m!1239861))

(declare-fun m!1239863 () Bool)

(assert (=> b!1353125 m!1239863))

(declare-fun m!1239865 () Bool)

(assert (=> b!1353127 m!1239865))

(assert (=> b!1353129 m!1239841))

(assert (=> b!1353129 m!1239841))

(assert (=> b!1353129 m!1239849))

(declare-fun m!1239867 () Bool)

(assert (=> b!1353132 m!1239867))

(declare-fun m!1239869 () Bool)

(assert (=> start!114064 m!1239869))

(declare-fun m!1239871 () Bool)

(assert (=> b!1353139 m!1239871))

(declare-fun m!1239873 () Bool)

(assert (=> b!1353136 m!1239873))

(declare-fun m!1239875 () Bool)

(assert (=> b!1353135 m!1239875))

(check-sat (not b!1353138) (not b!1353136) (not b!1353132) (not b!1353128) (not b!1353135) (not b!1353131) (not b!1353129) (not start!114064) (not b!1353125) (not b!1353127) (not b!1353130) (not b!1353126) (not b!1353139) (not b!1353133))
(check-sat)
