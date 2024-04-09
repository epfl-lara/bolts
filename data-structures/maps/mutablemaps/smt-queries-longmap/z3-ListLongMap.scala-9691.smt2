; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114520 () Bool)

(assert start!114520)

(declare-fun b!1358584 () Bool)

(declare-fun e!771059 () Bool)

(assert (=> b!1358584 (= e!771059 false)))

(declare-datatypes ((Unit!44654 0))(
  ( (Unit!44655) )
))
(declare-fun lt!599338 () Unit!44654)

(declare-fun e!771060 () Unit!44654)

(assert (=> b!1358584 (= lt!599338 e!771060)))

(declare-fun c!127078 () Bool)

(declare-datatypes ((array!92439 0))(
  ( (array!92440 (arr!44657 (Array (_ BitVec 32) (_ BitVec 64))) (size!45208 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92439)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358584 (= c!127078 (validKeyInArray!0 (select (arr!44657 a!3742) from!3120)))))

(declare-fun b!1358585 () Bool)

(declare-fun res!903321 () Bool)

(assert (=> b!1358585 (=> (not res!903321) (not e!771059))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358585 (= res!903321 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45208 a!3742))))))

(declare-fun b!1358587 () Bool)

(declare-fun res!903314 () Bool)

(assert (=> b!1358587 (=> (not res!903314) (not e!771059))))

(declare-datatypes ((List!31878 0))(
  ( (Nil!31875) (Cons!31874 (h!33083 (_ BitVec 64)) (t!46555 List!31878)) )
))
(declare-fun acc!759 () List!31878)

(declare-fun noDuplicate!2322 (List!31878) Bool)

(assert (=> b!1358587 (= res!903314 (noDuplicate!2322 acc!759))))

(declare-fun b!1358588 () Bool)

(declare-fun res!903316 () Bool)

(assert (=> b!1358588 (=> (not res!903316) (not e!771059))))

(declare-fun contains!9443 (List!31878 (_ BitVec 64)) Bool)

(assert (=> b!1358588 (= res!903316 (not (contains!9443 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358589 () Bool)

(declare-fun Unit!44656 () Unit!44654)

(assert (=> b!1358589 (= e!771060 Unit!44656)))

(declare-fun b!1358590 () Bool)

(declare-fun res!903315 () Bool)

(assert (=> b!1358590 (=> (not res!903315) (not e!771059))))

(declare-fun arrayNoDuplicates!0 (array!92439 (_ BitVec 32) List!31878) Bool)

(assert (=> b!1358590 (= res!903315 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31875))))

(declare-fun b!1358591 () Bool)

(declare-fun res!903318 () Bool)

(assert (=> b!1358591 (=> (not res!903318) (not e!771059))))

(assert (=> b!1358591 (= res!903318 (not (contains!9443 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358592 () Bool)

(declare-fun lt!599337 () Unit!44654)

(assert (=> b!1358592 (= e!771060 lt!599337)))

(declare-fun lt!599339 () Unit!44654)

(declare-fun lemmaListSubSeqRefl!0 (List!31878) Unit!44654)

(assert (=> b!1358592 (= lt!599339 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!834 (List!31878 List!31878) Bool)

(assert (=> b!1358592 (subseq!834 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92439 List!31878 List!31878 (_ BitVec 32)) Unit!44654)

(declare-fun $colon$colon!839 (List!31878 (_ BitVec 64)) List!31878)

(assert (=> b!1358592 (= lt!599337 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!839 acc!759 (select (arr!44657 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358592 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!903313 () Bool)

(assert (=> start!114520 (=> (not res!903313) (not e!771059))))

(assert (=> start!114520 (= res!903313 (and (bvslt (size!45208 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45208 a!3742))))))

(assert (=> start!114520 e!771059))

(assert (=> start!114520 true))

(declare-fun array_inv!33602 (array!92439) Bool)

(assert (=> start!114520 (array_inv!33602 a!3742)))

(declare-fun b!1358586 () Bool)

(declare-fun res!903317 () Bool)

(assert (=> b!1358586 (=> (not res!903317) (not e!771059))))

(assert (=> b!1358586 (= res!903317 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45208 a!3742)))))

(declare-fun b!1358593 () Bool)

(declare-fun res!903319 () Bool)

(assert (=> b!1358593 (=> (not res!903319) (not e!771059))))

(assert (=> b!1358593 (= res!903319 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358594 () Bool)

(declare-fun res!903320 () Bool)

(assert (=> b!1358594 (=> (not res!903320) (not e!771059))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358594 (= res!903320 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114520 res!903313) b!1358587))

(assert (= (and b!1358587 res!903314) b!1358588))

(assert (= (and b!1358588 res!903316) b!1358591))

(assert (= (and b!1358591 res!903318) b!1358590))

(assert (= (and b!1358590 res!903315) b!1358593))

(assert (= (and b!1358593 res!903319) b!1358585))

(assert (= (and b!1358585 res!903321) b!1358594))

(assert (= (and b!1358594 res!903320) b!1358586))

(assert (= (and b!1358586 res!903317) b!1358584))

(assert (= (and b!1358584 c!127078) b!1358592))

(assert (= (and b!1358584 (not c!127078)) b!1358589))

(declare-fun m!1244171 () Bool)

(assert (=> b!1358584 m!1244171))

(assert (=> b!1358584 m!1244171))

(declare-fun m!1244173 () Bool)

(assert (=> b!1358584 m!1244173))

(declare-fun m!1244175 () Bool)

(assert (=> start!114520 m!1244175))

(declare-fun m!1244177 () Bool)

(assert (=> b!1358591 m!1244177))

(declare-fun m!1244179 () Bool)

(assert (=> b!1358588 m!1244179))

(declare-fun m!1244181 () Bool)

(assert (=> b!1358590 m!1244181))

(declare-fun m!1244183 () Bool)

(assert (=> b!1358592 m!1244183))

(assert (=> b!1358592 m!1244171))

(declare-fun m!1244185 () Bool)

(assert (=> b!1358592 m!1244185))

(declare-fun m!1244187 () Bool)

(assert (=> b!1358592 m!1244187))

(declare-fun m!1244189 () Bool)

(assert (=> b!1358592 m!1244189))

(assert (=> b!1358592 m!1244171))

(assert (=> b!1358592 m!1244185))

(declare-fun m!1244191 () Bool)

(assert (=> b!1358592 m!1244191))

(declare-fun m!1244193 () Bool)

(assert (=> b!1358594 m!1244193))

(declare-fun m!1244195 () Bool)

(assert (=> b!1358593 m!1244195))

(declare-fun m!1244197 () Bool)

(assert (=> b!1358587 m!1244197))

(check-sat (not b!1358593) (not b!1358587) (not b!1358588) (not start!114520) (not b!1358590) (not b!1358592) (not b!1358591) (not b!1358584) (not b!1358594))
