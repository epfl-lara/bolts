; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114080 () Bool)

(assert start!114080)

(declare-fun b!1353509 () Bool)

(declare-fun res!898807 () Bool)

(declare-fun e!769151 () Bool)

(assert (=> b!1353509 (=> (not res!898807) (not e!769151))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353509 (= res!898807 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353510 () Bool)

(declare-fun e!769152 () Bool)

(assert (=> b!1353510 (= e!769151 e!769152)))

(declare-fun res!898803 () Bool)

(assert (=> b!1353510 (=> (not res!898803) (not e!769152))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!597874 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353510 (= res!898803 (and (not (= from!3120 i!1404)) lt!597874))))

(declare-datatypes ((Unit!44372 0))(
  ( (Unit!44373) )
))
(declare-fun lt!597878 () Unit!44372)

(declare-fun e!769153 () Unit!44372)

(assert (=> b!1353510 (= lt!597878 e!769153)))

(declare-fun c!126799 () Bool)

(assert (=> b!1353510 (= c!126799 lt!597874)))

(declare-datatypes ((array!92185 0))(
  ( (array!92186 (arr!44536 (Array (_ BitVec 32) (_ BitVec 64))) (size!45087 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92185)

(assert (=> b!1353510 (= lt!597874 (validKeyInArray!0 (select (arr!44536 a!3742) from!3120)))))

(declare-fun res!898805 () Bool)

(assert (=> start!114080 (=> (not res!898805) (not e!769151))))

(assert (=> start!114080 (= res!898805 (and (bvslt (size!45087 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45087 a!3742))))))

(assert (=> start!114080 e!769151))

(assert (=> start!114080 true))

(declare-fun array_inv!33481 (array!92185) Bool)

(assert (=> start!114080 (array_inv!33481 a!3742)))

(declare-fun b!1353511 () Bool)

(declare-fun res!898806 () Bool)

(declare-fun e!769150 () Bool)

(assert (=> b!1353511 (=> (not res!898806) (not e!769150))))

(declare-datatypes ((List!31757 0))(
  ( (Nil!31754) (Cons!31753 (h!32962 (_ BitVec 64)) (t!46422 List!31757)) )
))
(declare-fun lt!597873 () List!31757)

(declare-fun noDuplicate!2201 (List!31757) Bool)

(assert (=> b!1353511 (= res!898806 (noDuplicate!2201 lt!597873))))

(declare-fun b!1353512 () Bool)

(declare-fun res!898799 () Bool)

(assert (=> b!1353512 (=> (not res!898799) (not e!769151))))

(declare-fun acc!759 () List!31757)

(assert (=> b!1353512 (= res!898799 (noDuplicate!2201 acc!759))))

(declare-fun b!1353513 () Bool)

(declare-fun Unit!44374 () Unit!44372)

(assert (=> b!1353513 (= e!769153 Unit!44374)))

(declare-fun b!1353514 () Bool)

(declare-fun res!898808 () Bool)

(assert (=> b!1353514 (=> (not res!898808) (not e!769151))))

(declare-fun contains!9322 (List!31757 (_ BitVec 64)) Bool)

(assert (=> b!1353514 (= res!898808 (not (contains!9322 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353515 () Bool)

(declare-fun res!898809 () Bool)

(assert (=> b!1353515 (=> (not res!898809) (not e!769150))))

(assert (=> b!1353515 (= res!898809 (not (contains!9322 lt!597873 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353516 () Bool)

(declare-fun res!898801 () Bool)

(assert (=> b!1353516 (=> (not res!898801) (not e!769151))))

(assert (=> b!1353516 (= res!898801 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45087 a!3742))))))

(declare-fun b!1353517 () Bool)

(assert (=> b!1353517 (= e!769150 false)))

(declare-fun lt!597875 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92185 (_ BitVec 32) List!31757) Bool)

(assert (=> b!1353517 (= lt!597875 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597873))))

(declare-fun b!1353518 () Bool)

(declare-fun res!898800 () Bool)

(assert (=> b!1353518 (=> (not res!898800) (not e!769151))))

(assert (=> b!1353518 (= res!898800 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353519 () Bool)

(declare-fun res!898802 () Bool)

(assert (=> b!1353519 (=> (not res!898802) (not e!769150))))

(assert (=> b!1353519 (= res!898802 (not (contains!9322 lt!597873 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353520 () Bool)

(declare-fun lt!597876 () Unit!44372)

(assert (=> b!1353520 (= e!769153 lt!597876)))

(declare-fun lt!597877 () Unit!44372)

(declare-fun lemmaListSubSeqRefl!0 (List!31757) Unit!44372)

(assert (=> b!1353520 (= lt!597877 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!731 (List!31757 List!31757) Bool)

(assert (=> b!1353520 (subseq!731 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92185 List!31757 List!31757 (_ BitVec 32)) Unit!44372)

(declare-fun $colon$colon!748 (List!31757 (_ BitVec 64)) List!31757)

(assert (=> b!1353520 (= lt!597876 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!748 acc!759 (select (arr!44536 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353520 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353521 () Bool)

(declare-fun res!898796 () Bool)

(assert (=> b!1353521 (=> (not res!898796) (not e!769151))))

(assert (=> b!1353521 (= res!898796 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31754))))

(declare-fun b!1353522 () Bool)

(assert (=> b!1353522 (= e!769152 e!769150)))

(declare-fun res!898804 () Bool)

(assert (=> b!1353522 (=> (not res!898804) (not e!769150))))

(assert (=> b!1353522 (= res!898804 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353522 (= lt!597873 ($colon$colon!748 acc!759 (select (arr!44536 a!3742) from!3120)))))

(declare-fun b!1353523 () Bool)

(declare-fun res!898797 () Bool)

(assert (=> b!1353523 (=> (not res!898797) (not e!769151))))

(assert (=> b!1353523 (= res!898797 (not (contains!9322 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353524 () Bool)

(declare-fun res!898798 () Bool)

(assert (=> b!1353524 (=> (not res!898798) (not e!769151))))

(assert (=> b!1353524 (= res!898798 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45087 a!3742)))))

(assert (= (and start!114080 res!898805) b!1353512))

(assert (= (and b!1353512 res!898799) b!1353523))

(assert (= (and b!1353523 res!898797) b!1353514))

(assert (= (and b!1353514 res!898808) b!1353521))

(assert (= (and b!1353521 res!898796) b!1353518))

(assert (= (and b!1353518 res!898800) b!1353516))

(assert (= (and b!1353516 res!898801) b!1353509))

(assert (= (and b!1353509 res!898807) b!1353524))

(assert (= (and b!1353524 res!898798) b!1353510))

(assert (= (and b!1353510 c!126799) b!1353520))

(assert (= (and b!1353510 (not c!126799)) b!1353513))

(assert (= (and b!1353510 res!898803) b!1353522))

(assert (= (and b!1353522 res!898804) b!1353511))

(assert (= (and b!1353511 res!898806) b!1353515))

(assert (= (and b!1353515 res!898809) b!1353519))

(assert (= (and b!1353519 res!898802) b!1353517))

(declare-fun m!1240129 () Bool)

(assert (=> b!1353509 m!1240129))

(declare-fun m!1240131 () Bool)

(assert (=> b!1353512 m!1240131))

(declare-fun m!1240133 () Bool)

(assert (=> b!1353522 m!1240133))

(assert (=> b!1353522 m!1240133))

(declare-fun m!1240135 () Bool)

(assert (=> b!1353522 m!1240135))

(declare-fun m!1240137 () Bool)

(assert (=> b!1353518 m!1240137))

(assert (=> b!1353510 m!1240133))

(assert (=> b!1353510 m!1240133))

(declare-fun m!1240139 () Bool)

(assert (=> b!1353510 m!1240139))

(declare-fun m!1240141 () Bool)

(assert (=> start!114080 m!1240141))

(declare-fun m!1240143 () Bool)

(assert (=> b!1353514 m!1240143))

(declare-fun m!1240145 () Bool)

(assert (=> b!1353520 m!1240145))

(assert (=> b!1353520 m!1240133))

(assert (=> b!1353520 m!1240135))

(declare-fun m!1240147 () Bool)

(assert (=> b!1353520 m!1240147))

(declare-fun m!1240149 () Bool)

(assert (=> b!1353520 m!1240149))

(assert (=> b!1353520 m!1240133))

(assert (=> b!1353520 m!1240135))

(declare-fun m!1240151 () Bool)

(assert (=> b!1353520 m!1240151))

(declare-fun m!1240153 () Bool)

(assert (=> b!1353515 m!1240153))

(declare-fun m!1240155 () Bool)

(assert (=> b!1353511 m!1240155))

(declare-fun m!1240157 () Bool)

(assert (=> b!1353519 m!1240157))

(declare-fun m!1240159 () Bool)

(assert (=> b!1353521 m!1240159))

(declare-fun m!1240161 () Bool)

(assert (=> b!1353523 m!1240161))

(declare-fun m!1240163 () Bool)

(assert (=> b!1353517 m!1240163))

(push 1)

