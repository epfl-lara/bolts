; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114108 () Bool)

(assert start!114108)

(declare-fun b!1354181 () Bool)

(declare-fun res!899392 () Bool)

(declare-fun e!769360 () Bool)

(assert (=> b!1354181 (=> (not res!899392) (not e!769360))))

(declare-datatypes ((List!31771 0))(
  ( (Nil!31768) (Cons!31767 (h!32976 (_ BitVec 64)) (t!46436 List!31771)) )
))
(declare-fun acc!759 () List!31771)

(declare-fun contains!9336 (List!31771 (_ BitVec 64)) Bool)

(assert (=> b!1354181 (= res!899392 (not (contains!9336 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354182 () Bool)

(declare-fun res!899388 () Bool)

(assert (=> b!1354182 (=> (not res!899388) (not e!769360))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92213 0))(
  ( (array!92214 (arr!44550 (Array (_ BitVec 32) (_ BitVec 64))) (size!45101 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92213)

(assert (=> b!1354182 (= res!899388 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45101 a!3742))))))

(declare-fun b!1354183 () Bool)

(declare-fun e!769362 () Bool)

(assert (=> b!1354183 (= e!769362 false)))

(declare-fun lt!598130 () List!31771)

(declare-fun lt!598129 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92213 (_ BitVec 32) List!31771) Bool)

(assert (=> b!1354183 (= lt!598129 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598130))))

(declare-fun b!1354184 () Bool)

(declare-fun res!899389 () Bool)

(assert (=> b!1354184 (=> (not res!899389) (not e!769360))))

(declare-fun noDuplicate!2215 (List!31771) Bool)

(assert (=> b!1354184 (= res!899389 (noDuplicate!2215 acc!759))))

(declare-fun b!1354185 () Bool)

(declare-fun res!899385 () Bool)

(assert (=> b!1354185 (=> (not res!899385) (not e!769360))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354185 (= res!899385 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354186 () Bool)

(declare-fun res!899386 () Bool)

(assert (=> b!1354186 (=> (not res!899386) (not e!769360))))

(assert (=> b!1354186 (= res!899386 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45101 a!3742)))))

(declare-fun b!1354187 () Bool)

(declare-datatypes ((Unit!44414 0))(
  ( (Unit!44415) )
))
(declare-fun e!769359 () Unit!44414)

(declare-fun lt!598127 () Unit!44414)

(assert (=> b!1354187 (= e!769359 lt!598127)))

(declare-fun lt!598128 () Unit!44414)

(declare-fun lemmaListSubSeqRefl!0 (List!31771) Unit!44414)

(assert (=> b!1354187 (= lt!598128 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!745 (List!31771 List!31771) Bool)

(assert (=> b!1354187 (subseq!745 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92213 List!31771 List!31771 (_ BitVec 32)) Unit!44414)

(declare-fun $colon$colon!762 (List!31771 (_ BitVec 64)) List!31771)

(assert (=> b!1354187 (= lt!598127 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!762 acc!759 (select (arr!44550 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354187 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354188 () Bool)

(declare-fun res!899390 () Bool)

(assert (=> b!1354188 (=> (not res!899390) (not e!769360))))

(assert (=> b!1354188 (= res!899390 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31768))))

(declare-fun res!899394 () Bool)

(assert (=> start!114108 (=> (not res!899394) (not e!769360))))

(assert (=> start!114108 (= res!899394 (and (bvslt (size!45101 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45101 a!3742))))))

(assert (=> start!114108 e!769360))

(assert (=> start!114108 true))

(declare-fun array_inv!33495 (array!92213) Bool)

(assert (=> start!114108 (array_inv!33495 a!3742)))

(declare-fun b!1354189 () Bool)

(declare-fun res!899384 () Bool)

(assert (=> b!1354189 (=> (not res!899384) (not e!769362))))

(assert (=> b!1354189 (= res!899384 (not (contains!9336 lt!598130 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354190 () Bool)

(declare-fun res!899391 () Bool)

(assert (=> b!1354190 (=> (not res!899391) (not e!769362))))

(assert (=> b!1354190 (= res!899391 (not (contains!9336 lt!598130 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354191 () Bool)

(declare-fun e!769363 () Bool)

(assert (=> b!1354191 (= e!769360 e!769363)))

(declare-fun res!899396 () Bool)

(assert (=> b!1354191 (=> (not res!899396) (not e!769363))))

(declare-fun lt!598125 () Bool)

(assert (=> b!1354191 (= res!899396 (and (not (= from!3120 i!1404)) lt!598125))))

(declare-fun lt!598126 () Unit!44414)

(assert (=> b!1354191 (= lt!598126 e!769359)))

(declare-fun c!126841 () Bool)

(assert (=> b!1354191 (= c!126841 lt!598125)))

(assert (=> b!1354191 (= lt!598125 (validKeyInArray!0 (select (arr!44550 a!3742) from!3120)))))

(declare-fun b!1354192 () Bool)

(declare-fun res!899397 () Bool)

(assert (=> b!1354192 (=> (not res!899397) (not e!769360))))

(assert (=> b!1354192 (= res!899397 (not (contains!9336 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354193 () Bool)

(declare-fun res!899393 () Bool)

(assert (=> b!1354193 (=> (not res!899393) (not e!769362))))

(assert (=> b!1354193 (= res!899393 (noDuplicate!2215 lt!598130))))

(declare-fun b!1354194 () Bool)

(assert (=> b!1354194 (= e!769363 e!769362)))

(declare-fun res!899395 () Bool)

(assert (=> b!1354194 (=> (not res!899395) (not e!769362))))

(assert (=> b!1354194 (= res!899395 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354194 (= lt!598130 ($colon$colon!762 acc!759 (select (arr!44550 a!3742) from!3120)))))

(declare-fun b!1354195 () Bool)

(declare-fun res!899387 () Bool)

(assert (=> b!1354195 (=> (not res!899387) (not e!769360))))

(assert (=> b!1354195 (= res!899387 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354196 () Bool)

(declare-fun Unit!44416 () Unit!44414)

(assert (=> b!1354196 (= e!769359 Unit!44416)))

(assert (= (and start!114108 res!899394) b!1354184))

(assert (= (and b!1354184 res!899389) b!1354192))

(assert (= (and b!1354192 res!899397) b!1354181))

(assert (= (and b!1354181 res!899392) b!1354188))

(assert (= (and b!1354188 res!899390) b!1354195))

(assert (= (and b!1354195 res!899387) b!1354182))

(assert (= (and b!1354182 res!899388) b!1354185))

(assert (= (and b!1354185 res!899385) b!1354186))

(assert (= (and b!1354186 res!899386) b!1354191))

(assert (= (and b!1354191 c!126841) b!1354187))

(assert (= (and b!1354191 (not c!126841)) b!1354196))

(assert (= (and b!1354191 res!899396) b!1354194))

(assert (= (and b!1354194 res!899395) b!1354193))

(assert (= (and b!1354193 res!899393) b!1354189))

(assert (= (and b!1354189 res!899384) b!1354190))

(assert (= (and b!1354190 res!899391) b!1354183))

(declare-fun m!1240633 () Bool)

(assert (=> start!114108 m!1240633))

(declare-fun m!1240635 () Bool)

(assert (=> b!1354193 m!1240635))

(declare-fun m!1240637 () Bool)

(assert (=> b!1354187 m!1240637))

(declare-fun m!1240639 () Bool)

(assert (=> b!1354187 m!1240639))

(declare-fun m!1240641 () Bool)

(assert (=> b!1354187 m!1240641))

(declare-fun m!1240643 () Bool)

(assert (=> b!1354187 m!1240643))

(declare-fun m!1240645 () Bool)

(assert (=> b!1354187 m!1240645))

(assert (=> b!1354187 m!1240639))

(assert (=> b!1354187 m!1240641))

(declare-fun m!1240647 () Bool)

(assert (=> b!1354187 m!1240647))

(assert (=> b!1354194 m!1240639))

(assert (=> b!1354194 m!1240639))

(assert (=> b!1354194 m!1240641))

(assert (=> b!1354191 m!1240639))

(assert (=> b!1354191 m!1240639))

(declare-fun m!1240649 () Bool)

(assert (=> b!1354191 m!1240649))

(declare-fun m!1240651 () Bool)

(assert (=> b!1354181 m!1240651))

(declare-fun m!1240653 () Bool)

(assert (=> b!1354192 m!1240653))

(declare-fun m!1240655 () Bool)

(assert (=> b!1354184 m!1240655))

(declare-fun m!1240657 () Bool)

(assert (=> b!1354185 m!1240657))

(declare-fun m!1240659 () Bool)

(assert (=> b!1354190 m!1240659))

(declare-fun m!1240661 () Bool)

(assert (=> b!1354189 m!1240661))

(declare-fun m!1240663 () Bool)

(assert (=> b!1354188 m!1240663))

(declare-fun m!1240665 () Bool)

(assert (=> b!1354183 m!1240665))

(declare-fun m!1240667 () Bool)

(assert (=> b!1354195 m!1240667))

(push 1)

