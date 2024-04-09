; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114624 () Bool)

(assert start!114624)

(declare-fun b!1359623 () Bool)

(declare-fun e!771467 () Bool)

(declare-fun e!771468 () Bool)

(assert (=> b!1359623 (= e!771467 e!771468)))

(declare-fun res!904175 () Bool)

(assert (=> b!1359623 (=> (not res!904175) (not e!771468))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359623 (= res!904175 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44729 0))(
  ( (Unit!44730) )
))
(declare-fun lt!599619 () Unit!44729)

(declare-fun e!771469 () Unit!44729)

(assert (=> b!1359623 (= lt!599619 e!771469)))

(declare-fun c!127168 () Bool)

(declare-datatypes ((array!92492 0))(
  ( (array!92493 (arr!44682 (Array (_ BitVec 32) (_ BitVec 64))) (size!45233 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92492)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359623 (= c!127168 (validKeyInArray!0 (select (arr!44682 a!3742) from!3120)))))

(declare-fun b!1359624 () Bool)

(declare-fun res!904179 () Bool)

(assert (=> b!1359624 (=> (not res!904179) (not e!771467))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359624 (= res!904179 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359625 () Bool)

(declare-fun res!904178 () Bool)

(assert (=> b!1359625 (=> (not res!904178) (not e!771467))))

(assert (=> b!1359625 (= res!904178 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45233 a!3742)))))

(declare-fun b!1359626 () Bool)

(declare-fun res!904174 () Bool)

(assert (=> b!1359626 (=> (not res!904174) (not e!771467))))

(declare-datatypes ((List!31903 0))(
  ( (Nil!31900) (Cons!31899 (h!33108 (_ BitVec 64)) (t!46583 List!31903)) )
))
(declare-fun arrayNoDuplicates!0 (array!92492 (_ BitVec 32) List!31903) Bool)

(assert (=> b!1359626 (= res!904174 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31900))))

(declare-fun b!1359627 () Bool)

(declare-fun res!904182 () Bool)

(assert (=> b!1359627 (=> (not res!904182) (not e!771467))))

(declare-fun acc!759 () List!31903)

(assert (=> b!1359627 (= res!904182 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359628 () Bool)

(declare-fun Unit!44731 () Unit!44729)

(assert (=> b!1359628 (= e!771469 Unit!44731)))

(declare-fun b!1359630 () Bool)

(declare-fun res!904172 () Bool)

(assert (=> b!1359630 (=> (not res!904172) (not e!771467))))

(assert (=> b!1359630 (= res!904172 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45233 a!3742))))))

(declare-fun b!1359631 () Bool)

(declare-fun res!904177 () Bool)

(assert (=> b!1359631 (=> (not res!904177) (not e!771467))))

(declare-fun noDuplicate!2347 (List!31903) Bool)

(assert (=> b!1359631 (= res!904177 (noDuplicate!2347 acc!759))))

(declare-fun b!1359632 () Bool)

(declare-fun res!904176 () Bool)

(assert (=> b!1359632 (=> (not res!904176) (not e!771467))))

(declare-fun contains!9468 (List!31903 (_ BitVec 64)) Bool)

(assert (=> b!1359632 (= res!904176 (not (contains!9468 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359633 () Bool)

(assert (=> b!1359633 (= e!771468 (not true))))

(assert (=> b!1359633 (arrayNoDuplicates!0 (array!92493 (store (arr!44682 a!3742) i!1404 l!3587) (size!45233 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599620 () Unit!44729)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31903) Unit!44729)

(assert (=> b!1359633 (= lt!599620 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!904180 () Bool)

(assert (=> start!114624 (=> (not res!904180) (not e!771467))))

(assert (=> start!114624 (= res!904180 (and (bvslt (size!45233 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45233 a!3742))))))

(assert (=> start!114624 e!771467))

(assert (=> start!114624 true))

(declare-fun array_inv!33627 (array!92492) Bool)

(assert (=> start!114624 (array_inv!33627 a!3742)))

(declare-fun b!1359629 () Bool)

(declare-fun res!904181 () Bool)

(assert (=> b!1359629 (=> (not res!904181) (not e!771468))))

(assert (=> b!1359629 (= res!904181 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359634 () Bool)

(declare-fun lt!599621 () Unit!44729)

(assert (=> b!1359634 (= e!771469 lt!599621)))

(declare-fun lt!599618 () Unit!44729)

(declare-fun lemmaListSubSeqRefl!0 (List!31903) Unit!44729)

(assert (=> b!1359634 (= lt!599618 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!859 (List!31903 List!31903) Bool)

(assert (=> b!1359634 (subseq!859 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92492 List!31903 List!31903 (_ BitVec 32)) Unit!44729)

(declare-fun $colon$colon!864 (List!31903 (_ BitVec 64)) List!31903)

(assert (=> b!1359634 (= lt!599621 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!864 acc!759 (select (arr!44682 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359634 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359635 () Bool)

(declare-fun res!904173 () Bool)

(assert (=> b!1359635 (=> (not res!904173) (not e!771467))))

(assert (=> b!1359635 (= res!904173 (not (contains!9468 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114624 res!904180) b!1359631))

(assert (= (and b!1359631 res!904177) b!1359632))

(assert (= (and b!1359632 res!904176) b!1359635))

(assert (= (and b!1359635 res!904173) b!1359626))

(assert (= (and b!1359626 res!904174) b!1359627))

(assert (= (and b!1359627 res!904182) b!1359630))

(assert (= (and b!1359630 res!904172) b!1359624))

(assert (= (and b!1359624 res!904179) b!1359625))

(assert (= (and b!1359625 res!904178) b!1359623))

(assert (= (and b!1359623 c!127168) b!1359634))

(assert (= (and b!1359623 (not c!127168)) b!1359628))

(assert (= (and b!1359623 res!904175) b!1359629))

(assert (= (and b!1359629 res!904181) b!1359633))

(declare-fun m!1245009 () Bool)

(assert (=> b!1359634 m!1245009))

(declare-fun m!1245011 () Bool)

(assert (=> b!1359634 m!1245011))

(declare-fun m!1245013 () Bool)

(assert (=> b!1359634 m!1245013))

(declare-fun m!1245015 () Bool)

(assert (=> b!1359634 m!1245015))

(declare-fun m!1245017 () Bool)

(assert (=> b!1359634 m!1245017))

(assert (=> b!1359634 m!1245011))

(assert (=> b!1359634 m!1245013))

(declare-fun m!1245019 () Bool)

(assert (=> b!1359634 m!1245019))

(declare-fun m!1245021 () Bool)

(assert (=> b!1359632 m!1245021))

(declare-fun m!1245023 () Bool)

(assert (=> b!1359627 m!1245023))

(declare-fun m!1245025 () Bool)

(assert (=> start!114624 m!1245025))

(declare-fun m!1245027 () Bool)

(assert (=> b!1359624 m!1245027))

(declare-fun m!1245029 () Bool)

(assert (=> b!1359633 m!1245029))

(declare-fun m!1245031 () Bool)

(assert (=> b!1359633 m!1245031))

(declare-fun m!1245033 () Bool)

(assert (=> b!1359633 m!1245033))

(declare-fun m!1245035 () Bool)

(assert (=> b!1359626 m!1245035))

(assert (=> b!1359629 m!1245017))

(assert (=> b!1359623 m!1245011))

(assert (=> b!1359623 m!1245011))

(declare-fun m!1245037 () Bool)

(assert (=> b!1359623 m!1245037))

(declare-fun m!1245039 () Bool)

(assert (=> b!1359635 m!1245039))

(declare-fun m!1245041 () Bool)

(assert (=> b!1359631 m!1245041))

(push 1)

