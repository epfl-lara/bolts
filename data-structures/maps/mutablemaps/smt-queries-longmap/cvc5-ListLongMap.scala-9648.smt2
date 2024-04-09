; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114062 () Bool)

(assert start!114062)

(declare-fun b!1353077 () Bool)

(declare-fun res!898430 () Bool)

(declare-fun e!769015 () Bool)

(assert (=> b!1353077 (=> (not res!898430) (not e!769015))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92167 0))(
  ( (array!92168 (arr!44527 (Array (_ BitVec 32) (_ BitVec 64))) (size!45078 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92167)

(assert (=> b!1353077 (= res!898430 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45078 a!3742)))))

(declare-fun b!1353078 () Bool)

(declare-fun res!898423 () Bool)

(declare-fun e!769017 () Bool)

(assert (=> b!1353078 (=> (not res!898423) (not e!769017))))

(declare-datatypes ((List!31748 0))(
  ( (Nil!31745) (Cons!31744 (h!32953 (_ BitVec 64)) (t!46413 List!31748)) )
))
(declare-fun lt!597716 () List!31748)

(declare-fun contains!9313 (List!31748 (_ BitVec 64)) Bool)

(assert (=> b!1353078 (= res!898423 (not (contains!9313 lt!597716 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353079 () Bool)

(assert (=> b!1353079 (= e!769017 false)))

(declare-fun lt!597715 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92167 (_ BitVec 32) List!31748) Bool)

(assert (=> b!1353079 (= lt!597715 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597716))))

(declare-fun b!1353080 () Bool)

(declare-fun res!898425 () Bool)

(assert (=> b!1353080 (=> (not res!898425) (not e!769015))))

(declare-fun acc!759 () List!31748)

(declare-fun noDuplicate!2192 (List!31748) Bool)

(assert (=> b!1353080 (= res!898425 (noDuplicate!2192 acc!759))))

(declare-fun b!1353081 () Bool)

(declare-fun e!769018 () Bool)

(assert (=> b!1353081 (= e!769015 e!769018)))

(declare-fun res!898424 () Bool)

(assert (=> b!1353081 (=> (not res!898424) (not e!769018))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!597713 () Bool)

(assert (=> b!1353081 (= res!898424 (and (not (= from!3120 i!1404)) lt!597713))))

(declare-datatypes ((Unit!44345 0))(
  ( (Unit!44346) )
))
(declare-fun lt!597712 () Unit!44345)

(declare-fun e!769014 () Unit!44345)

(assert (=> b!1353081 (= lt!597712 e!769014)))

(declare-fun c!126772 () Bool)

(assert (=> b!1353081 (= c!126772 lt!597713)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353081 (= lt!597713 (validKeyInArray!0 (select (arr!44527 a!3742) from!3120)))))

(declare-fun b!1353082 () Bool)

(declare-fun res!898431 () Bool)

(assert (=> b!1353082 (=> (not res!898431) (not e!769017))))

(assert (=> b!1353082 (= res!898431 (noDuplicate!2192 lt!597716))))

(declare-fun b!1353083 () Bool)

(declare-fun res!898422 () Bool)

(assert (=> b!1353083 (=> (not res!898422) (not e!769015))))

(assert (=> b!1353083 (= res!898422 (not (contains!9313 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353084 () Bool)

(declare-fun res!898428 () Bool)

(assert (=> b!1353084 (=> (not res!898428) (not e!769015))))

(assert (=> b!1353084 (= res!898428 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353085 () Bool)

(assert (=> b!1353085 (= e!769018 e!769017)))

(declare-fun res!898429 () Bool)

(assert (=> b!1353085 (=> (not res!898429) (not e!769017))))

(assert (=> b!1353085 (= res!898429 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!739 (List!31748 (_ BitVec 64)) List!31748)

(assert (=> b!1353085 (= lt!597716 ($colon$colon!739 acc!759 (select (arr!44527 a!3742) from!3120)))))

(declare-fun b!1353086 () Bool)

(declare-fun lt!597714 () Unit!44345)

(assert (=> b!1353086 (= e!769014 lt!597714)))

(declare-fun lt!597711 () Unit!44345)

(declare-fun lemmaListSubSeqRefl!0 (List!31748) Unit!44345)

(assert (=> b!1353086 (= lt!597711 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!722 (List!31748 List!31748) Bool)

(assert (=> b!1353086 (subseq!722 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92167 List!31748 List!31748 (_ BitVec 32)) Unit!44345)

(assert (=> b!1353086 (= lt!597714 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!739 acc!759 (select (arr!44527 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353086 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353087 () Bool)

(declare-fun res!898427 () Bool)

(assert (=> b!1353087 (=> (not res!898427) (not e!769015))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353087 (= res!898427 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353089 () Bool)

(declare-fun res!898419 () Bool)

(assert (=> b!1353089 (=> (not res!898419) (not e!769015))))

(assert (=> b!1353089 (= res!898419 (not (contains!9313 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353090 () Bool)

(declare-fun res!898418 () Bool)

(assert (=> b!1353090 (=> (not res!898418) (not e!769017))))

(assert (=> b!1353090 (= res!898418 (not (contains!9313 lt!597716 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353091 () Bool)

(declare-fun res!898426 () Bool)

(assert (=> b!1353091 (=> (not res!898426) (not e!769015))))

(assert (=> b!1353091 (= res!898426 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45078 a!3742))))))

(declare-fun b!1353092 () Bool)

(declare-fun res!898421 () Bool)

(assert (=> b!1353092 (=> (not res!898421) (not e!769015))))

(assert (=> b!1353092 (= res!898421 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31745))))

(declare-fun res!898420 () Bool)

(assert (=> start!114062 (=> (not res!898420) (not e!769015))))

(assert (=> start!114062 (= res!898420 (and (bvslt (size!45078 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45078 a!3742))))))

(assert (=> start!114062 e!769015))

(assert (=> start!114062 true))

(declare-fun array_inv!33472 (array!92167) Bool)

(assert (=> start!114062 (array_inv!33472 a!3742)))

(declare-fun b!1353088 () Bool)

(declare-fun Unit!44347 () Unit!44345)

(assert (=> b!1353088 (= e!769014 Unit!44347)))

(assert (= (and start!114062 res!898420) b!1353080))

(assert (= (and b!1353080 res!898425) b!1353089))

(assert (= (and b!1353089 res!898419) b!1353083))

(assert (= (and b!1353083 res!898422) b!1353092))

(assert (= (and b!1353092 res!898421) b!1353084))

(assert (= (and b!1353084 res!898428) b!1353091))

(assert (= (and b!1353091 res!898426) b!1353087))

(assert (= (and b!1353087 res!898427) b!1353077))

(assert (= (and b!1353077 res!898430) b!1353081))

(assert (= (and b!1353081 c!126772) b!1353086))

(assert (= (and b!1353081 (not c!126772)) b!1353088))

(assert (= (and b!1353081 res!898424) b!1353085))

(assert (= (and b!1353085 res!898429) b!1353082))

(assert (= (and b!1353082 res!898431) b!1353078))

(assert (= (and b!1353078 res!898423) b!1353090))

(assert (= (and b!1353090 res!898418) b!1353079))

(declare-fun m!1239805 () Bool)

(assert (=> b!1353080 m!1239805))

(declare-fun m!1239807 () Bool)

(assert (=> b!1353089 m!1239807))

(declare-fun m!1239809 () Bool)

(assert (=> b!1353078 m!1239809))

(declare-fun m!1239811 () Bool)

(assert (=> b!1353086 m!1239811))

(declare-fun m!1239813 () Bool)

(assert (=> b!1353086 m!1239813))

(declare-fun m!1239815 () Bool)

(assert (=> b!1353086 m!1239815))

(declare-fun m!1239817 () Bool)

(assert (=> b!1353086 m!1239817))

(declare-fun m!1239819 () Bool)

(assert (=> b!1353086 m!1239819))

(assert (=> b!1353086 m!1239813))

(assert (=> b!1353086 m!1239815))

(declare-fun m!1239821 () Bool)

(assert (=> b!1353086 m!1239821))

(declare-fun m!1239823 () Bool)

(assert (=> b!1353083 m!1239823))

(declare-fun m!1239825 () Bool)

(assert (=> b!1353082 m!1239825))

(assert (=> b!1353081 m!1239813))

(assert (=> b!1353081 m!1239813))

(declare-fun m!1239827 () Bool)

(assert (=> b!1353081 m!1239827))

(declare-fun m!1239829 () Bool)

(assert (=> b!1353079 m!1239829))

(declare-fun m!1239831 () Bool)

(assert (=> b!1353087 m!1239831))

(declare-fun m!1239833 () Bool)

(assert (=> b!1353092 m!1239833))

(declare-fun m!1239835 () Bool)

(assert (=> b!1353090 m!1239835))

(declare-fun m!1239837 () Bool)

(assert (=> start!114062 m!1239837))

(assert (=> b!1353085 m!1239813))

(assert (=> b!1353085 m!1239813))

(assert (=> b!1353085 m!1239815))

(declare-fun m!1239839 () Bool)

(assert (=> b!1353084 m!1239839))

(push 1)

