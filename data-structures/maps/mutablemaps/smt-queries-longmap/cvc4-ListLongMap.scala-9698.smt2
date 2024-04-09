; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114618 () Bool)

(assert start!114618)

(declare-fun b!1359506 () Bool)

(declare-fun res!904077 () Bool)

(declare-fun e!771433 () Bool)

(assert (=> b!1359506 (=> (not res!904077) (not e!771433))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359506 (= res!904077 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!904074 () Bool)

(assert (=> start!114618 (=> (not res!904074) (not e!771433))))

(declare-datatypes ((array!92486 0))(
  ( (array!92487 (arr!44679 (Array (_ BitVec 32) (_ BitVec 64))) (size!45230 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92486)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114618 (= res!904074 (and (bvslt (size!45230 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45230 a!3742))))))

(assert (=> start!114618 e!771433))

(assert (=> start!114618 true))

(declare-fun array_inv!33624 (array!92486) Bool)

(assert (=> start!114618 (array_inv!33624 a!3742)))

(declare-fun b!1359507 () Bool)

(declare-datatypes ((Unit!44720 0))(
  ( (Unit!44721) )
))
(declare-fun e!771432 () Unit!44720)

(declare-fun lt!599585 () Unit!44720)

(assert (=> b!1359507 (= e!771432 lt!599585)))

(declare-fun lt!599583 () Unit!44720)

(declare-datatypes ((List!31900 0))(
  ( (Nil!31897) (Cons!31896 (h!33105 (_ BitVec 64)) (t!46580 List!31900)) )
))
(declare-fun acc!759 () List!31900)

(declare-fun lemmaListSubSeqRefl!0 (List!31900) Unit!44720)

(assert (=> b!1359507 (= lt!599583 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!856 (List!31900 List!31900) Bool)

(assert (=> b!1359507 (subseq!856 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92486 List!31900 List!31900 (_ BitVec 32)) Unit!44720)

(declare-fun $colon$colon!861 (List!31900 (_ BitVec 64)) List!31900)

(assert (=> b!1359507 (= lt!599585 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!861 acc!759 (select (arr!44679 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92486 (_ BitVec 32) List!31900) Bool)

(assert (=> b!1359507 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359508 () Bool)

(declare-fun res!904081 () Bool)

(declare-fun e!771431 () Bool)

(assert (=> b!1359508 (=> (not res!904081) (not e!771431))))

(assert (=> b!1359508 (= res!904081 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359509 () Bool)

(assert (=> b!1359509 (= e!771433 e!771431)))

(declare-fun res!904078 () Bool)

(assert (=> b!1359509 (=> (not res!904078) (not e!771431))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359509 (= res!904078 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599584 () Unit!44720)

(assert (=> b!1359509 (= lt!599584 e!771432)))

(declare-fun c!127159 () Bool)

(assert (=> b!1359509 (= c!127159 (validKeyInArray!0 (select (arr!44679 a!3742) from!3120)))))

(declare-fun b!1359510 () Bool)

(declare-fun res!904075 () Bool)

(assert (=> b!1359510 (=> (not res!904075) (not e!771433))))

(declare-fun contains!9465 (List!31900 (_ BitVec 64)) Bool)

(assert (=> b!1359510 (= res!904075 (not (contains!9465 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359511 () Bool)

(declare-fun res!904079 () Bool)

(assert (=> b!1359511 (=> (not res!904079) (not e!771433))))

(assert (=> b!1359511 (= res!904079 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45230 a!3742))))))

(declare-fun b!1359512 () Bool)

(declare-fun res!904080 () Bool)

(assert (=> b!1359512 (=> (not res!904080) (not e!771433))))

(assert (=> b!1359512 (= res!904080 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45230 a!3742)))))

(declare-fun b!1359513 () Bool)

(assert (=> b!1359513 (= e!771431 (bvsge (bvsub (size!45230 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45230 a!3742) from!3120)))))

(declare-fun b!1359514 () Bool)

(declare-fun res!904073 () Bool)

(assert (=> b!1359514 (=> (not res!904073) (not e!771433))))

(assert (=> b!1359514 (= res!904073 (not (contains!9465 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359515 () Bool)

(declare-fun res!904082 () Bool)

(assert (=> b!1359515 (=> (not res!904082) (not e!771433))))

(declare-fun noDuplicate!2344 (List!31900) Bool)

(assert (=> b!1359515 (= res!904082 (noDuplicate!2344 acc!759))))

(declare-fun b!1359516 () Bool)

(declare-fun res!904083 () Bool)

(assert (=> b!1359516 (=> (not res!904083) (not e!771433))))

(assert (=> b!1359516 (= res!904083 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359517 () Bool)

(declare-fun res!904076 () Bool)

(assert (=> b!1359517 (=> (not res!904076) (not e!771433))))

(assert (=> b!1359517 (= res!904076 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31897))))

(declare-fun b!1359518 () Bool)

(declare-fun Unit!44722 () Unit!44720)

(assert (=> b!1359518 (= e!771432 Unit!44722)))

(assert (= (and start!114618 res!904074) b!1359515))

(assert (= (and b!1359515 res!904082) b!1359510))

(assert (= (and b!1359510 res!904075) b!1359514))

(assert (= (and b!1359514 res!904073) b!1359517))

(assert (= (and b!1359517 res!904076) b!1359516))

(assert (= (and b!1359516 res!904083) b!1359511))

(assert (= (and b!1359511 res!904079) b!1359506))

(assert (= (and b!1359506 res!904077) b!1359512))

(assert (= (and b!1359512 res!904080) b!1359509))

(assert (= (and b!1359509 c!127159) b!1359507))

(assert (= (and b!1359509 (not c!127159)) b!1359518))

(assert (= (and b!1359509 res!904078) b!1359508))

(assert (= (and b!1359508 res!904081) b!1359513))

(declare-fun m!1244913 () Bool)

(assert (=> b!1359517 m!1244913))

(declare-fun m!1244915 () Bool)

(assert (=> b!1359514 m!1244915))

(declare-fun m!1244917 () Bool)

(assert (=> b!1359515 m!1244917))

(declare-fun m!1244919 () Bool)

(assert (=> b!1359507 m!1244919))

(declare-fun m!1244921 () Bool)

(assert (=> b!1359507 m!1244921))

(declare-fun m!1244923 () Bool)

(assert (=> b!1359507 m!1244923))

(declare-fun m!1244925 () Bool)

(assert (=> b!1359507 m!1244925))

(declare-fun m!1244927 () Bool)

(assert (=> b!1359507 m!1244927))

(assert (=> b!1359507 m!1244921))

(assert (=> b!1359507 m!1244923))

(declare-fun m!1244929 () Bool)

(assert (=> b!1359507 m!1244929))

(declare-fun m!1244931 () Bool)

(assert (=> start!114618 m!1244931))

(assert (=> b!1359509 m!1244921))

(assert (=> b!1359509 m!1244921))

(declare-fun m!1244933 () Bool)

(assert (=> b!1359509 m!1244933))

(declare-fun m!1244935 () Bool)

(assert (=> b!1359510 m!1244935))

(declare-fun m!1244937 () Bool)

(assert (=> b!1359516 m!1244937))

(declare-fun m!1244939 () Bool)

(assert (=> b!1359506 m!1244939))

(assert (=> b!1359508 m!1244927))

(push 1)

(assert (not b!1359515))

(assert (not b!1359508))

(assert (not b!1359509))

(assert (not b!1359510))

(assert (not b!1359516))

(assert (not b!1359506))

(assert (not start!114618))

(assert (not b!1359517))

(assert (not b!1359514))

(assert (not b!1359507))

(check-sat)

(pop 1)

(push 1)

(check-sat)

