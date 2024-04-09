; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114028 () Bool)

(assert start!114028)

(declare-fun b!1352421 () Bool)

(declare-fun res!897872 () Bool)

(declare-fun e!768808 () Bool)

(assert (=> b!1352421 (=> (not res!897872) (not e!768808))))

(declare-datatypes ((List!31731 0))(
  ( (Nil!31728) (Cons!31727 (h!32936 (_ BitVec 64)) (t!46396 List!31731)) )
))
(declare-fun acc!759 () List!31731)

(declare-datatypes ((array!92133 0))(
  ( (array!92134 (arr!44510 (Array (_ BitVec 32) (_ BitVec 64))) (size!45061 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92133)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92133 (_ BitVec 32) List!31731) Bool)

(assert (=> b!1352421 (= res!897872 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352422 () Bool)

(declare-fun res!897870 () Bool)

(assert (=> b!1352422 (=> (not res!897870) (not e!768808))))

(declare-fun contains!9296 (List!31731 (_ BitVec 64)) Bool)

(assert (=> b!1352422 (= res!897870 (not (contains!9296 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352423 () Bool)

(declare-fun res!897865 () Bool)

(assert (=> b!1352423 (=> (not res!897865) (not e!768808))))

(assert (=> b!1352423 (= res!897865 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31728))))

(declare-fun b!1352424 () Bool)

(declare-fun res!897866 () Bool)

(assert (=> b!1352424 (=> (not res!897866) (not e!768808))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352424 (= res!897866 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45061 a!3742))))))

(declare-fun res!897868 () Bool)

(assert (=> start!114028 (=> (not res!897868) (not e!768808))))

(assert (=> start!114028 (= res!897868 (and (bvslt (size!45061 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45061 a!3742))))))

(assert (=> start!114028 e!768808))

(assert (=> start!114028 true))

(declare-fun array_inv!33455 (array!92133) Bool)

(assert (=> start!114028 (array_inv!33455 a!3742)))

(declare-fun b!1352425 () Bool)

(declare-datatypes ((Unit!44294 0))(
  ( (Unit!44295) )
))
(declare-fun e!768811 () Unit!44294)

(declare-fun lt!597505 () Unit!44294)

(assert (=> b!1352425 (= e!768811 lt!597505)))

(declare-fun lt!597506 () Unit!44294)

(declare-fun lemmaListSubSeqRefl!0 (List!31731) Unit!44294)

(assert (=> b!1352425 (= lt!597506 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!705 (List!31731 List!31731) Bool)

(assert (=> b!1352425 (subseq!705 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92133 List!31731 List!31731 (_ BitVec 32)) Unit!44294)

(declare-fun $colon$colon!722 (List!31731 (_ BitVec 64)) List!31731)

(assert (=> b!1352425 (= lt!597505 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!722 acc!759 (select (arr!44510 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352425 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352426 () Bool)

(declare-fun e!768809 () Bool)

(assert (=> b!1352426 (= e!768808 e!768809)))

(declare-fun res!897873 () Bool)

(assert (=> b!1352426 (=> (not res!897873) (not e!768809))))

(assert (=> b!1352426 (= res!897873 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597504 () Unit!44294)

(assert (=> b!1352426 (= lt!597504 e!768811)))

(declare-fun c!126721 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352426 (= c!126721 (validKeyInArray!0 (select (arr!44510 a!3742) from!3120)))))

(declare-fun b!1352427 () Bool)

(declare-fun res!897871 () Bool)

(assert (=> b!1352427 (=> (not res!897871) (not e!768808))))

(declare-fun noDuplicate!2175 (List!31731) Bool)

(assert (=> b!1352427 (= res!897871 (noDuplicate!2175 acc!759))))

(declare-fun b!1352428 () Bool)

(declare-fun res!897864 () Bool)

(assert (=> b!1352428 (=> (not res!897864) (not e!768808))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352428 (= res!897864 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352429 () Bool)

(assert (=> b!1352429 (= e!768809 false)))

(declare-fun lt!597503 () Bool)

(assert (=> b!1352429 (= lt!597503 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352430 () Bool)

(declare-fun res!897869 () Bool)

(assert (=> b!1352430 (=> (not res!897869) (not e!768808))))

(assert (=> b!1352430 (= res!897869 (not (contains!9296 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352431 () Bool)

(declare-fun res!897867 () Bool)

(assert (=> b!1352431 (=> (not res!897867) (not e!768808))))

(assert (=> b!1352431 (= res!897867 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45061 a!3742)))))

(declare-fun b!1352432 () Bool)

(declare-fun Unit!44296 () Unit!44294)

(assert (=> b!1352432 (= e!768811 Unit!44296)))

(assert (= (and start!114028 res!897868) b!1352427))

(assert (= (and b!1352427 res!897871) b!1352430))

(assert (= (and b!1352430 res!897869) b!1352422))

(assert (= (and b!1352422 res!897870) b!1352423))

(assert (= (and b!1352423 res!897865) b!1352421))

(assert (= (and b!1352421 res!897872) b!1352424))

(assert (= (and b!1352424 res!897866) b!1352428))

(assert (= (and b!1352428 res!897864) b!1352431))

(assert (= (and b!1352431 res!897867) b!1352426))

(assert (= (and b!1352426 c!126721) b!1352425))

(assert (= (and b!1352426 (not c!126721)) b!1352432))

(assert (= (and b!1352426 res!897873) b!1352429))

(declare-fun m!1239257 () Bool)

(assert (=> b!1352428 m!1239257))

(declare-fun m!1239259 () Bool)

(assert (=> b!1352427 m!1239259))

(declare-fun m!1239261 () Bool)

(assert (=> b!1352426 m!1239261))

(assert (=> b!1352426 m!1239261))

(declare-fun m!1239263 () Bool)

(assert (=> b!1352426 m!1239263))

(declare-fun m!1239265 () Bool)

(assert (=> b!1352423 m!1239265))

(declare-fun m!1239267 () Bool)

(assert (=> b!1352425 m!1239267))

(assert (=> b!1352425 m!1239261))

(declare-fun m!1239269 () Bool)

(assert (=> b!1352425 m!1239269))

(declare-fun m!1239271 () Bool)

(assert (=> b!1352425 m!1239271))

(declare-fun m!1239273 () Bool)

(assert (=> b!1352425 m!1239273))

(assert (=> b!1352425 m!1239261))

(assert (=> b!1352425 m!1239269))

(declare-fun m!1239275 () Bool)

(assert (=> b!1352425 m!1239275))

(declare-fun m!1239277 () Bool)

(assert (=> b!1352421 m!1239277))

(declare-fun m!1239279 () Bool)

(assert (=> start!114028 m!1239279))

(declare-fun m!1239281 () Bool)

(assert (=> b!1352430 m!1239281))

(declare-fun m!1239283 () Bool)

(assert (=> b!1352422 m!1239283))

(assert (=> b!1352429 m!1239273))

(check-sat (not b!1352425) (not start!114028) (not b!1352421) (not b!1352427) (not b!1352423) (not b!1352422) (not b!1352428) (not b!1352426) (not b!1352429) (not b!1352430))
(check-sat)
