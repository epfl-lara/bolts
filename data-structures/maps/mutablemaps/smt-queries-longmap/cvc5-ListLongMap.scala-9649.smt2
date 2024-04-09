; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114068 () Bool)

(assert start!114068)

(declare-fun b!1353221 () Bool)

(declare-fun res!898546 () Bool)

(declare-fun e!769061 () Bool)

(assert (=> b!1353221 (=> (not res!898546) (not e!769061))))

(declare-datatypes ((array!92173 0))(
  ( (array!92174 (arr!44530 (Array (_ BitVec 32) (_ BitVec 64))) (size!45081 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92173)

(declare-datatypes ((List!31751 0))(
  ( (Nil!31748) (Cons!31747 (h!32956 (_ BitVec 64)) (t!46416 List!31751)) )
))
(declare-fun arrayNoDuplicates!0 (array!92173 (_ BitVec 32) List!31751) Bool)

(assert (=> b!1353221 (= res!898546 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31748))))

(declare-fun b!1353222 () Bool)

(declare-fun e!769063 () Bool)

(declare-fun e!769062 () Bool)

(assert (=> b!1353222 (= e!769063 e!769062)))

(declare-fun res!898548 () Bool)

(assert (=> b!1353222 (=> (not res!898548) (not e!769062))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353222 (= res!898548 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31751)

(declare-fun lt!597765 () List!31751)

(declare-fun $colon$colon!742 (List!31751 (_ BitVec 64)) List!31751)

(assert (=> b!1353222 (= lt!597765 ($colon$colon!742 acc!759 (select (arr!44530 a!3742) from!3120)))))

(declare-fun b!1353223 () Bool)

(declare-fun res!898552 () Bool)

(assert (=> b!1353223 (=> (not res!898552) (not e!769062))))

(declare-fun noDuplicate!2195 (List!31751) Bool)

(assert (=> b!1353223 (= res!898552 (noDuplicate!2195 lt!597765))))

(declare-fun b!1353224 () Bool)

(declare-fun res!898557 () Bool)

(assert (=> b!1353224 (=> (not res!898557) (not e!769061))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353224 (= res!898557 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353225 () Bool)

(declare-fun res!898549 () Bool)

(assert (=> b!1353225 (=> (not res!898549) (not e!769061))))

(assert (=> b!1353225 (= res!898549 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45081 a!3742)))))

(declare-fun b!1353226 () Bool)

(declare-fun res!898545 () Bool)

(assert (=> b!1353226 (=> (not res!898545) (not e!769062))))

(declare-fun contains!9316 (List!31751 (_ BitVec 64)) Bool)

(assert (=> b!1353226 (= res!898545 (not (contains!9316 lt!597765 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353227 () Bool)

(declare-fun res!898544 () Bool)

(assert (=> b!1353227 (=> (not res!898544) (not e!769061))))

(assert (=> b!1353227 (= res!898544 (noDuplicate!2195 acc!759))))

(declare-fun b!1353228 () Bool)

(declare-datatypes ((Unit!44354 0))(
  ( (Unit!44355) )
))
(declare-fun e!769059 () Unit!44354)

(declare-fun lt!597767 () Unit!44354)

(assert (=> b!1353228 (= e!769059 lt!597767)))

(declare-fun lt!597770 () Unit!44354)

(declare-fun lemmaListSubSeqRefl!0 (List!31751) Unit!44354)

(assert (=> b!1353228 (= lt!597770 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!725 (List!31751 List!31751) Bool)

(assert (=> b!1353228 (subseq!725 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92173 List!31751 List!31751 (_ BitVec 32)) Unit!44354)

(assert (=> b!1353228 (= lt!597767 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!742 acc!759 (select (arr!44530 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353228 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353229 () Bool)

(declare-fun res!898551 () Bool)

(assert (=> b!1353229 (=> (not res!898551) (not e!769062))))

(assert (=> b!1353229 (= res!898551 (not (contains!9316 lt!597765 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353230 () Bool)

(assert (=> b!1353230 (= e!769062 false)))

(declare-fun lt!597766 () Bool)

(assert (=> b!1353230 (= lt!597766 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597765))))

(declare-fun b!1353231 () Bool)

(declare-fun Unit!44356 () Unit!44354)

(assert (=> b!1353231 (= e!769059 Unit!44356)))

(declare-fun res!898555 () Bool)

(assert (=> start!114068 (=> (not res!898555) (not e!769061))))

(assert (=> start!114068 (= res!898555 (and (bvslt (size!45081 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45081 a!3742))))))

(assert (=> start!114068 e!769061))

(assert (=> start!114068 true))

(declare-fun array_inv!33475 (array!92173) Bool)

(assert (=> start!114068 (array_inv!33475 a!3742)))

(declare-fun b!1353232 () Bool)

(assert (=> b!1353232 (= e!769061 e!769063)))

(declare-fun res!898553 () Bool)

(assert (=> b!1353232 (=> (not res!898553) (not e!769063))))

(declare-fun lt!597769 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353232 (= res!898553 (and (not (= from!3120 i!1404)) lt!597769))))

(declare-fun lt!597768 () Unit!44354)

(assert (=> b!1353232 (= lt!597768 e!769059)))

(declare-fun c!126781 () Bool)

(assert (=> b!1353232 (= c!126781 lt!597769)))

(assert (=> b!1353232 (= lt!597769 (validKeyInArray!0 (select (arr!44530 a!3742) from!3120)))))

(declare-fun b!1353233 () Bool)

(declare-fun res!898547 () Bool)

(assert (=> b!1353233 (=> (not res!898547) (not e!769061))))

(assert (=> b!1353233 (= res!898547 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45081 a!3742))))))

(declare-fun b!1353234 () Bool)

(declare-fun res!898556 () Bool)

(assert (=> b!1353234 (=> (not res!898556) (not e!769061))))

(assert (=> b!1353234 (= res!898556 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353235 () Bool)

(declare-fun res!898550 () Bool)

(assert (=> b!1353235 (=> (not res!898550) (not e!769061))))

(assert (=> b!1353235 (= res!898550 (not (contains!9316 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353236 () Bool)

(declare-fun res!898554 () Bool)

(assert (=> b!1353236 (=> (not res!898554) (not e!769061))))

(assert (=> b!1353236 (= res!898554 (not (contains!9316 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114068 res!898555) b!1353227))

(assert (= (and b!1353227 res!898544) b!1353236))

(assert (= (and b!1353236 res!898554) b!1353235))

(assert (= (and b!1353235 res!898550) b!1353221))

(assert (= (and b!1353221 res!898546) b!1353234))

(assert (= (and b!1353234 res!898556) b!1353233))

(assert (= (and b!1353233 res!898547) b!1353224))

(assert (= (and b!1353224 res!898557) b!1353225))

(assert (= (and b!1353225 res!898549) b!1353232))

(assert (= (and b!1353232 c!126781) b!1353228))

(assert (= (and b!1353232 (not c!126781)) b!1353231))

(assert (= (and b!1353232 res!898553) b!1353222))

(assert (= (and b!1353222 res!898548) b!1353223))

(assert (= (and b!1353223 res!898552) b!1353226))

(assert (= (and b!1353226 res!898545) b!1353229))

(assert (= (and b!1353229 res!898551) b!1353230))

(declare-fun m!1239913 () Bool)

(assert (=> start!114068 m!1239913))

(declare-fun m!1239915 () Bool)

(assert (=> b!1353229 m!1239915))

(declare-fun m!1239917 () Bool)

(assert (=> b!1353224 m!1239917))

(declare-fun m!1239919 () Bool)

(assert (=> b!1353234 m!1239919))

(declare-fun m!1239921 () Bool)

(assert (=> b!1353222 m!1239921))

(assert (=> b!1353222 m!1239921))

(declare-fun m!1239923 () Bool)

(assert (=> b!1353222 m!1239923))

(declare-fun m!1239925 () Bool)

(assert (=> b!1353235 m!1239925))

(declare-fun m!1239927 () Bool)

(assert (=> b!1353236 m!1239927))

(declare-fun m!1239929 () Bool)

(assert (=> b!1353221 m!1239929))

(declare-fun m!1239931 () Bool)

(assert (=> b!1353230 m!1239931))

(declare-fun m!1239933 () Bool)

(assert (=> b!1353223 m!1239933))

(assert (=> b!1353232 m!1239921))

(assert (=> b!1353232 m!1239921))

(declare-fun m!1239935 () Bool)

(assert (=> b!1353232 m!1239935))

(declare-fun m!1239937 () Bool)

(assert (=> b!1353227 m!1239937))

(declare-fun m!1239939 () Bool)

(assert (=> b!1353226 m!1239939))

(declare-fun m!1239941 () Bool)

(assert (=> b!1353228 m!1239941))

(assert (=> b!1353228 m!1239921))

(assert (=> b!1353228 m!1239923))

(declare-fun m!1239943 () Bool)

(assert (=> b!1353228 m!1239943))

(declare-fun m!1239945 () Bool)

(assert (=> b!1353228 m!1239945))

(assert (=> b!1353228 m!1239921))

(assert (=> b!1353228 m!1239923))

(declare-fun m!1239947 () Bool)

(assert (=> b!1353228 m!1239947))

(push 1)

