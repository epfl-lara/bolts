; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114692 () Bool)

(assert start!114692)

(declare-fun b!1359967 () Bool)

(declare-fun res!904457 () Bool)

(declare-fun e!771685 () Bool)

(assert (=> b!1359967 (=> (not res!904457) (not e!771685))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359967 (= res!904457 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359968 () Bool)

(declare-fun res!904456 () Bool)

(assert (=> b!1359968 (=> (not res!904456) (not e!771685))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92503 0))(
  ( (array!92504 (arr!44686 (Array (_ BitVec 32) (_ BitVec 64))) (size!45237 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92503)

(assert (=> b!1359968 (= res!904456 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45237 a!3742)))))

(declare-fun b!1359969 () Bool)

(declare-fun res!904451 () Bool)

(assert (=> b!1359969 (=> (not res!904451) (not e!771685))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359969 (= res!904451 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45237 a!3742))))))

(declare-fun b!1359970 () Bool)

(assert (=> b!1359970 (= e!771685 false)))

(declare-datatypes ((Unit!44741 0))(
  ( (Unit!44742) )
))
(declare-fun lt!599713 () Unit!44741)

(declare-fun e!771684 () Unit!44741)

(assert (=> b!1359970 (= lt!599713 e!771684)))

(declare-fun c!127201 () Bool)

(assert (=> b!1359970 (= c!127201 (validKeyInArray!0 (select (arr!44686 a!3742) from!3120)))))

(declare-fun b!1359971 () Bool)

(declare-fun res!904458 () Bool)

(assert (=> b!1359971 (=> (not res!904458) (not e!771685))))

(declare-datatypes ((List!31907 0))(
  ( (Nil!31904) (Cons!31903 (h!33112 (_ BitVec 64)) (t!46590 List!31907)) )
))
(declare-fun acc!759 () List!31907)

(declare-fun contains!9472 (List!31907 (_ BitVec 64)) Bool)

(assert (=> b!1359971 (= res!904458 (not (contains!9472 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359972 () Bool)

(declare-fun res!904454 () Bool)

(assert (=> b!1359972 (=> (not res!904454) (not e!771685))))

(declare-fun arrayNoDuplicates!0 (array!92503 (_ BitVec 32) List!31907) Bool)

(assert (=> b!1359972 (= res!904454 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31904))))

(declare-fun b!1359973 () Bool)

(declare-fun Unit!44743 () Unit!44741)

(assert (=> b!1359973 (= e!771684 Unit!44743)))

(declare-fun b!1359974 () Bool)

(declare-fun lt!599714 () Unit!44741)

(assert (=> b!1359974 (= e!771684 lt!599714)))

(declare-fun lt!599712 () Unit!44741)

(declare-fun lemmaListSubSeqRefl!0 (List!31907) Unit!44741)

(assert (=> b!1359974 (= lt!599712 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!863 (List!31907 List!31907) Bool)

(assert (=> b!1359974 (subseq!863 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92503 List!31907 List!31907 (_ BitVec 32)) Unit!44741)

(declare-fun $colon$colon!868 (List!31907 (_ BitVec 64)) List!31907)

(assert (=> b!1359974 (= lt!599714 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!868 acc!759 (select (arr!44686 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359974 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!904453 () Bool)

(assert (=> start!114692 (=> (not res!904453) (not e!771685))))

(assert (=> start!114692 (= res!904453 (and (bvslt (size!45237 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45237 a!3742))))))

(assert (=> start!114692 e!771685))

(assert (=> start!114692 true))

(declare-fun array_inv!33631 (array!92503) Bool)

(assert (=> start!114692 (array_inv!33631 a!3742)))

(declare-fun b!1359975 () Bool)

(declare-fun res!904450 () Bool)

(assert (=> b!1359975 (=> (not res!904450) (not e!771685))))

(declare-fun noDuplicate!2351 (List!31907) Bool)

(assert (=> b!1359975 (= res!904450 (noDuplicate!2351 acc!759))))

(declare-fun b!1359976 () Bool)

(declare-fun res!904455 () Bool)

(assert (=> b!1359976 (=> (not res!904455) (not e!771685))))

(assert (=> b!1359976 (= res!904455 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359977 () Bool)

(declare-fun res!904452 () Bool)

(assert (=> b!1359977 (=> (not res!904452) (not e!771685))))

(assert (=> b!1359977 (= res!904452 (not (contains!9472 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114692 res!904453) b!1359975))

(assert (= (and b!1359975 res!904450) b!1359977))

(assert (= (and b!1359977 res!904452) b!1359971))

(assert (= (and b!1359971 res!904458) b!1359972))

(assert (= (and b!1359972 res!904454) b!1359976))

(assert (= (and b!1359976 res!904455) b!1359969))

(assert (= (and b!1359969 res!904451) b!1359967))

(assert (= (and b!1359967 res!904457) b!1359968))

(assert (= (and b!1359968 res!904456) b!1359970))

(assert (= (and b!1359970 c!127201) b!1359974))

(assert (= (and b!1359970 (not c!127201)) b!1359973))

(declare-fun m!1245337 () Bool)

(assert (=> b!1359972 m!1245337))

(declare-fun m!1245339 () Bool)

(assert (=> b!1359967 m!1245339))

(declare-fun m!1245341 () Bool)

(assert (=> b!1359977 m!1245341))

(declare-fun m!1245343 () Bool)

(assert (=> b!1359974 m!1245343))

(declare-fun m!1245345 () Bool)

(assert (=> b!1359974 m!1245345))

(declare-fun m!1245347 () Bool)

(assert (=> b!1359974 m!1245347))

(declare-fun m!1245349 () Bool)

(assert (=> b!1359974 m!1245349))

(declare-fun m!1245351 () Bool)

(assert (=> b!1359974 m!1245351))

(assert (=> b!1359974 m!1245345))

(assert (=> b!1359974 m!1245347))

(declare-fun m!1245353 () Bool)

(assert (=> b!1359974 m!1245353))

(declare-fun m!1245355 () Bool)

(assert (=> b!1359971 m!1245355))

(declare-fun m!1245357 () Bool)

(assert (=> b!1359976 m!1245357))

(declare-fun m!1245359 () Bool)

(assert (=> b!1359975 m!1245359))

(declare-fun m!1245361 () Bool)

(assert (=> start!114692 m!1245361))

(assert (=> b!1359970 m!1245345))

(assert (=> b!1359970 m!1245345))

(declare-fun m!1245363 () Bool)

(assert (=> b!1359970 m!1245363))

(push 1)

(assert (not b!1359971))

(assert (not start!114692))

(assert (not b!1359970))

(assert (not b!1359972))

(assert (not b!1359976))

(assert (not b!1359975))

(assert (not b!1359977))

(assert (not b!1359967))

(assert (not b!1359974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

