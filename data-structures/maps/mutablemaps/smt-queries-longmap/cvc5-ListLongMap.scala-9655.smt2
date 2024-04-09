; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114104 () Bool)

(assert start!114104)

(declare-fun b!1354085 () Bool)

(declare-datatypes ((Unit!44408 0))(
  ( (Unit!44409) )
))
(declare-fun e!769333 () Unit!44408)

(declare-fun lt!598094 () Unit!44408)

(assert (=> b!1354085 (= e!769333 lt!598094)))

(declare-fun lt!598091 () Unit!44408)

(declare-datatypes ((List!31769 0))(
  ( (Nil!31766) (Cons!31765 (h!32974 (_ BitVec 64)) (t!46434 List!31769)) )
))
(declare-fun acc!759 () List!31769)

(declare-fun lemmaListSubSeqRefl!0 (List!31769) Unit!44408)

(assert (=> b!1354085 (= lt!598091 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!743 (List!31769 List!31769) Bool)

(assert (=> b!1354085 (subseq!743 acc!759 acc!759)))

(declare-datatypes ((array!92209 0))(
  ( (array!92210 (arr!44548 (Array (_ BitVec 32) (_ BitVec 64))) (size!45099 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92209)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92209 List!31769 List!31769 (_ BitVec 32)) Unit!44408)

(declare-fun $colon$colon!760 (List!31769 (_ BitVec 64)) List!31769)

(assert (=> b!1354085 (= lt!598094 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!760 acc!759 (select (arr!44548 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92209 (_ BitVec 32) List!31769) Bool)

(assert (=> b!1354085 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354086 () Bool)

(declare-fun e!769332 () Bool)

(declare-fun e!769329 () Bool)

(assert (=> b!1354086 (= e!769332 e!769329)))

(declare-fun res!899310 () Bool)

(assert (=> b!1354086 (=> (not res!899310) (not e!769329))))

(assert (=> b!1354086 (= res!899310 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!598090 () List!31769)

(assert (=> b!1354086 (= lt!598090 ($colon$colon!760 acc!759 (select (arr!44548 a!3742) from!3120)))))

(declare-fun b!1354088 () Bool)

(assert (=> b!1354088 (= e!769329 false)))

(declare-fun lt!598092 () Bool)

(assert (=> b!1354088 (= lt!598092 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598090))))

(declare-fun b!1354089 () Bool)

(declare-fun res!899301 () Bool)

(assert (=> b!1354089 (=> (not res!899301) (not e!769329))))

(declare-fun contains!9334 (List!31769 (_ BitVec 64)) Bool)

(assert (=> b!1354089 (= res!899301 (not (contains!9334 lt!598090 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354090 () Bool)

(declare-fun res!899307 () Bool)

(declare-fun e!769330 () Bool)

(assert (=> b!1354090 (=> (not res!899307) (not e!769330))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354090 (= res!899307 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45099 a!3742))))))

(declare-fun b!1354091 () Bool)

(declare-fun res!899309 () Bool)

(assert (=> b!1354091 (=> (not res!899309) (not e!769330))))

(assert (=> b!1354091 (= res!899309 (not (contains!9334 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354092 () Bool)

(declare-fun res!899313 () Bool)

(assert (=> b!1354092 (=> (not res!899313) (not e!769330))))

(declare-fun noDuplicate!2213 (List!31769) Bool)

(assert (=> b!1354092 (= res!899313 (noDuplicate!2213 acc!759))))

(declare-fun b!1354093 () Bool)

(declare-fun res!899305 () Bool)

(assert (=> b!1354093 (=> (not res!899305) (not e!769329))))

(assert (=> b!1354093 (= res!899305 (not (contains!9334 lt!598090 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354094 () Bool)

(declare-fun res!899311 () Bool)

(assert (=> b!1354094 (=> (not res!899311) (not e!769329))))

(assert (=> b!1354094 (= res!899311 (noDuplicate!2213 lt!598090))))

(declare-fun b!1354095 () Bool)

(declare-fun Unit!44410 () Unit!44408)

(assert (=> b!1354095 (= e!769333 Unit!44410)))

(declare-fun b!1354096 () Bool)

(declare-fun res!899300 () Bool)

(assert (=> b!1354096 (=> (not res!899300) (not e!769330))))

(assert (=> b!1354096 (= res!899300 (not (contains!9334 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899312 () Bool)

(assert (=> start!114104 (=> (not res!899312) (not e!769330))))

(assert (=> start!114104 (= res!899312 (and (bvslt (size!45099 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45099 a!3742))))))

(assert (=> start!114104 e!769330))

(assert (=> start!114104 true))

(declare-fun array_inv!33493 (array!92209) Bool)

(assert (=> start!114104 (array_inv!33493 a!3742)))

(declare-fun b!1354087 () Bool)

(declare-fun res!899308 () Bool)

(assert (=> b!1354087 (=> (not res!899308) (not e!769330))))

(assert (=> b!1354087 (= res!899308 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31766))))

(declare-fun b!1354097 () Bool)

(declare-fun res!899304 () Bool)

(assert (=> b!1354097 (=> (not res!899304) (not e!769330))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354097 (= res!899304 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354098 () Bool)

(declare-fun res!899306 () Bool)

(assert (=> b!1354098 (=> (not res!899306) (not e!769330))))

(assert (=> b!1354098 (= res!899306 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354099 () Bool)

(declare-fun res!899302 () Bool)

(assert (=> b!1354099 (=> (not res!899302) (not e!769330))))

(assert (=> b!1354099 (= res!899302 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45099 a!3742)))))

(declare-fun b!1354100 () Bool)

(assert (=> b!1354100 (= e!769330 e!769332)))

(declare-fun res!899303 () Bool)

(assert (=> b!1354100 (=> (not res!899303) (not e!769332))))

(declare-fun lt!598089 () Bool)

(assert (=> b!1354100 (= res!899303 (and (not (= from!3120 i!1404)) lt!598089))))

(declare-fun lt!598093 () Unit!44408)

(assert (=> b!1354100 (= lt!598093 e!769333)))

(declare-fun c!126835 () Bool)

(assert (=> b!1354100 (= c!126835 lt!598089)))

(assert (=> b!1354100 (= lt!598089 (validKeyInArray!0 (select (arr!44548 a!3742) from!3120)))))

(assert (= (and start!114104 res!899312) b!1354092))

(assert (= (and b!1354092 res!899313) b!1354091))

(assert (= (and b!1354091 res!899309) b!1354096))

(assert (= (and b!1354096 res!899300) b!1354087))

(assert (= (and b!1354087 res!899308) b!1354098))

(assert (= (and b!1354098 res!899306) b!1354090))

(assert (= (and b!1354090 res!899307) b!1354097))

(assert (= (and b!1354097 res!899304) b!1354099))

(assert (= (and b!1354099 res!899302) b!1354100))

(assert (= (and b!1354100 c!126835) b!1354085))

(assert (= (and b!1354100 (not c!126835)) b!1354095))

(assert (= (and b!1354100 res!899303) b!1354086))

(assert (= (and b!1354086 res!899310) b!1354094))

(assert (= (and b!1354094 res!899311) b!1354089))

(assert (= (and b!1354089 res!899301) b!1354093))

(assert (= (and b!1354093 res!899305) b!1354088))

(declare-fun m!1240561 () Bool)

(assert (=> b!1354093 m!1240561))

(declare-fun m!1240563 () Bool)

(assert (=> start!114104 m!1240563))

(declare-fun m!1240565 () Bool)

(assert (=> b!1354094 m!1240565))

(declare-fun m!1240567 () Bool)

(assert (=> b!1354086 m!1240567))

(assert (=> b!1354086 m!1240567))

(declare-fun m!1240569 () Bool)

(assert (=> b!1354086 m!1240569))

(assert (=> b!1354100 m!1240567))

(assert (=> b!1354100 m!1240567))

(declare-fun m!1240571 () Bool)

(assert (=> b!1354100 m!1240571))

(declare-fun m!1240573 () Bool)

(assert (=> b!1354087 m!1240573))

(declare-fun m!1240575 () Bool)

(assert (=> b!1354085 m!1240575))

(assert (=> b!1354085 m!1240567))

(assert (=> b!1354085 m!1240569))

(declare-fun m!1240577 () Bool)

(assert (=> b!1354085 m!1240577))

(declare-fun m!1240579 () Bool)

(assert (=> b!1354085 m!1240579))

(assert (=> b!1354085 m!1240567))

(assert (=> b!1354085 m!1240569))

(declare-fun m!1240581 () Bool)

(assert (=> b!1354085 m!1240581))

(declare-fun m!1240583 () Bool)

(assert (=> b!1354091 m!1240583))

(declare-fun m!1240585 () Bool)

(assert (=> b!1354089 m!1240585))

(declare-fun m!1240587 () Bool)

(assert (=> b!1354096 m!1240587))

(declare-fun m!1240589 () Bool)

(assert (=> b!1354088 m!1240589))

(declare-fun m!1240591 () Bool)

(assert (=> b!1354098 m!1240591))

(declare-fun m!1240593 () Bool)

(assert (=> b!1354092 m!1240593))

(declare-fun m!1240595 () Bool)

(assert (=> b!1354097 m!1240595))

(push 1)

