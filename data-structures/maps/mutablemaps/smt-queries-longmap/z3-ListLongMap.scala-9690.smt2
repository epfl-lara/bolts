; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114514 () Bool)

(assert start!114514)

(declare-fun b!1358485 () Bool)

(declare-fun res!903233 () Bool)

(declare-fun e!771034 () Bool)

(assert (=> b!1358485 (=> (not res!903233) (not e!771034))))

(declare-datatypes ((List!31875 0))(
  ( (Nil!31872) (Cons!31871 (h!33080 (_ BitVec 64)) (t!46552 List!31875)) )
))
(declare-fun acc!759 () List!31875)

(declare-datatypes ((array!92433 0))(
  ( (array!92434 (arr!44654 (Array (_ BitVec 32) (_ BitVec 64))) (size!45205 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92433)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92433 (_ BitVec 32) List!31875) Bool)

(assert (=> b!1358485 (= res!903233 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358486 () Bool)

(declare-fun res!903232 () Bool)

(assert (=> b!1358486 (=> (not res!903232) (not e!771034))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358486 (= res!903232 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358488 () Bool)

(declare-fun res!903240 () Bool)

(assert (=> b!1358488 (=> (not res!903240) (not e!771034))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358488 (= res!903240 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45205 a!3742))))))

(declare-fun b!1358489 () Bool)

(declare-fun res!903239 () Bool)

(assert (=> b!1358489 (=> (not res!903239) (not e!771034))))

(declare-fun noDuplicate!2319 (List!31875) Bool)

(assert (=> b!1358489 (= res!903239 (noDuplicate!2319 acc!759))))

(declare-fun b!1358490 () Bool)

(declare-datatypes ((Unit!44645 0))(
  ( (Unit!44646) )
))
(declare-fun e!771032 () Unit!44645)

(declare-fun Unit!44647 () Unit!44645)

(assert (=> b!1358490 (= e!771032 Unit!44647)))

(declare-fun b!1358491 () Bool)

(assert (=> b!1358491 (= e!771034 (and (= from!3120 i!1404) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599310 () Unit!44645)

(assert (=> b!1358491 (= lt!599310 e!771032)))

(declare-fun c!127069 () Bool)

(assert (=> b!1358491 (= c!127069 (validKeyInArray!0 (select (arr!44654 a!3742) from!3120)))))

(declare-fun b!1358492 () Bool)

(declare-fun res!903235 () Bool)

(assert (=> b!1358492 (=> (not res!903235) (not e!771034))))

(declare-fun contains!9440 (List!31875 (_ BitVec 64)) Bool)

(assert (=> b!1358492 (= res!903235 (not (contains!9440 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358493 () Bool)

(declare-fun res!903234 () Bool)

(assert (=> b!1358493 (=> (not res!903234) (not e!771034))))

(assert (=> b!1358493 (= res!903234 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45205 a!3742)))))

(declare-fun b!1358487 () Bool)

(declare-fun res!903237 () Bool)

(assert (=> b!1358487 (=> (not res!903237) (not e!771034))))

(assert (=> b!1358487 (= res!903237 (not (contains!9440 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!903238 () Bool)

(assert (=> start!114514 (=> (not res!903238) (not e!771034))))

(assert (=> start!114514 (= res!903238 (and (bvslt (size!45205 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45205 a!3742))))))

(assert (=> start!114514 e!771034))

(assert (=> start!114514 true))

(declare-fun array_inv!33599 (array!92433) Bool)

(assert (=> start!114514 (array_inv!33599 a!3742)))

(declare-fun b!1358494 () Bool)

(declare-fun res!903236 () Bool)

(assert (=> b!1358494 (=> (not res!903236) (not e!771034))))

(assert (=> b!1358494 (= res!903236 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31872))))

(declare-fun b!1358495 () Bool)

(declare-fun lt!599311 () Unit!44645)

(assert (=> b!1358495 (= e!771032 lt!599311)))

(declare-fun lt!599312 () Unit!44645)

(declare-fun lemmaListSubSeqRefl!0 (List!31875) Unit!44645)

(assert (=> b!1358495 (= lt!599312 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!831 (List!31875 List!31875) Bool)

(assert (=> b!1358495 (subseq!831 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92433 List!31875 List!31875 (_ BitVec 32)) Unit!44645)

(declare-fun $colon$colon!836 (List!31875 (_ BitVec 64)) List!31875)

(assert (=> b!1358495 (= lt!599311 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!836 acc!759 (select (arr!44654 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358495 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114514 res!903238) b!1358489))

(assert (= (and b!1358489 res!903239) b!1358487))

(assert (= (and b!1358487 res!903237) b!1358492))

(assert (= (and b!1358492 res!903235) b!1358494))

(assert (= (and b!1358494 res!903236) b!1358485))

(assert (= (and b!1358485 res!903233) b!1358488))

(assert (= (and b!1358488 res!903240) b!1358486))

(assert (= (and b!1358486 res!903232) b!1358493))

(assert (= (and b!1358493 res!903234) b!1358491))

(assert (= (and b!1358491 c!127069) b!1358495))

(assert (= (and b!1358491 (not c!127069)) b!1358490))

(declare-fun m!1244087 () Bool)

(assert (=> b!1358494 m!1244087))

(declare-fun m!1244089 () Bool)

(assert (=> b!1358486 m!1244089))

(declare-fun m!1244091 () Bool)

(assert (=> b!1358485 m!1244091))

(declare-fun m!1244093 () Bool)

(assert (=> b!1358492 m!1244093))

(declare-fun m!1244095 () Bool)

(assert (=> b!1358487 m!1244095))

(declare-fun m!1244097 () Bool)

(assert (=> b!1358489 m!1244097))

(declare-fun m!1244099 () Bool)

(assert (=> b!1358491 m!1244099))

(assert (=> b!1358491 m!1244099))

(declare-fun m!1244101 () Bool)

(assert (=> b!1358491 m!1244101))

(declare-fun m!1244103 () Bool)

(assert (=> b!1358495 m!1244103))

(assert (=> b!1358495 m!1244099))

(declare-fun m!1244105 () Bool)

(assert (=> b!1358495 m!1244105))

(declare-fun m!1244107 () Bool)

(assert (=> b!1358495 m!1244107))

(declare-fun m!1244109 () Bool)

(assert (=> b!1358495 m!1244109))

(assert (=> b!1358495 m!1244099))

(assert (=> b!1358495 m!1244105))

(declare-fun m!1244111 () Bool)

(assert (=> b!1358495 m!1244111))

(declare-fun m!1244113 () Bool)

(assert (=> start!114514 m!1244113))

(check-sat (not b!1358489) (not b!1358485) (not b!1358486) (not b!1358492) (not start!114514) (not b!1358495) (not b!1358491) (not b!1358494) (not b!1358487))
(check-sat)
