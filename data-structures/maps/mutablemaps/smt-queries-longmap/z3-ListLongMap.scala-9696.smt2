; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114604 () Bool)

(assert start!114604)

(declare-fun b!1359246 () Bool)

(declare-datatypes ((Unit!44699 0))(
  ( (Unit!44700) )
))
(declare-fun e!771348 () Unit!44699)

(declare-fun lt!599508 () Unit!44699)

(assert (=> b!1359246 (= e!771348 lt!599508)))

(declare-fun lt!599509 () Unit!44699)

(declare-datatypes ((List!31893 0))(
  ( (Nil!31890) (Cons!31889 (h!33098 (_ BitVec 64)) (t!46573 List!31893)) )
))
(declare-fun acc!759 () List!31893)

(declare-fun lemmaListSubSeqRefl!0 (List!31893) Unit!44699)

(assert (=> b!1359246 (= lt!599509 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!849 (List!31893 List!31893) Bool)

(assert (=> b!1359246 (subseq!849 acc!759 acc!759)))

(declare-datatypes ((array!92472 0))(
  ( (array!92473 (arr!44672 (Array (_ BitVec 32) (_ BitVec 64))) (size!45223 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92472)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92472 List!31893 List!31893 (_ BitVec 32)) Unit!44699)

(declare-fun $colon$colon!854 (List!31893 (_ BitVec 64)) List!31893)

(assert (=> b!1359246 (= lt!599508 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!854 acc!759 (select (arr!44672 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92472 (_ BitVec 32) List!31893) Bool)

(assert (=> b!1359246 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!903855 () Bool)

(declare-fun e!771349 () Bool)

(assert (=> start!114604 (=> (not res!903855) (not e!771349))))

(assert (=> start!114604 (= res!903855 (and (bvslt (size!45223 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45223 a!3742))))))

(assert (=> start!114604 e!771349))

(assert (=> start!114604 true))

(declare-fun array_inv!33617 (array!92472) Bool)

(assert (=> start!114604 (array_inv!33617 a!3742)))

(declare-fun b!1359247 () Bool)

(declare-fun res!903863 () Bool)

(assert (=> b!1359247 (=> (not res!903863) (not e!771349))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359247 (= res!903863 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45223 a!3742))))))

(declare-fun b!1359248 () Bool)

(declare-fun e!771346 () Bool)

(assert (=> b!1359248 (= e!771346 false)))

(declare-fun lt!599510 () Bool)

(assert (=> b!1359248 (= lt!599510 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359249 () Bool)

(declare-fun res!903860 () Bool)

(assert (=> b!1359249 (=> (not res!903860) (not e!771349))))

(declare-fun contains!9458 (List!31893 (_ BitVec 64)) Bool)

(assert (=> b!1359249 (= res!903860 (not (contains!9458 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359250 () Bool)

(declare-fun res!903857 () Bool)

(assert (=> b!1359250 (=> (not res!903857) (not e!771349))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359250 (= res!903857 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359251 () Bool)

(declare-fun res!903864 () Bool)

(assert (=> b!1359251 (=> (not res!903864) (not e!771349))))

(assert (=> b!1359251 (= res!903864 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31890))))

(declare-fun b!1359252 () Bool)

(declare-fun res!903862 () Bool)

(assert (=> b!1359252 (=> (not res!903862) (not e!771349))))

(assert (=> b!1359252 (= res!903862 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359253 () Bool)

(declare-fun Unit!44701 () Unit!44699)

(assert (=> b!1359253 (= e!771348 Unit!44701)))

(declare-fun b!1359254 () Bool)

(declare-fun res!903861 () Bool)

(assert (=> b!1359254 (=> (not res!903861) (not e!771349))))

(assert (=> b!1359254 (= res!903861 (not (contains!9458 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359255 () Bool)

(declare-fun res!903856 () Bool)

(assert (=> b!1359255 (=> (not res!903856) (not e!771349))))

(assert (=> b!1359255 (= res!903856 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45223 a!3742)))))

(declare-fun b!1359256 () Bool)

(declare-fun res!903858 () Bool)

(assert (=> b!1359256 (=> (not res!903858) (not e!771349))))

(declare-fun noDuplicate!2337 (List!31893) Bool)

(assert (=> b!1359256 (= res!903858 (noDuplicate!2337 acc!759))))

(declare-fun b!1359257 () Bool)

(assert (=> b!1359257 (= e!771349 e!771346)))

(declare-fun res!903859 () Bool)

(assert (=> b!1359257 (=> (not res!903859) (not e!771346))))

(assert (=> b!1359257 (= res!903859 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599507 () Unit!44699)

(assert (=> b!1359257 (= lt!599507 e!771348)))

(declare-fun c!127138 () Bool)

(assert (=> b!1359257 (= c!127138 (validKeyInArray!0 (select (arr!44672 a!3742) from!3120)))))

(assert (= (and start!114604 res!903855) b!1359256))

(assert (= (and b!1359256 res!903858) b!1359254))

(assert (= (and b!1359254 res!903861) b!1359249))

(assert (= (and b!1359249 res!903860) b!1359251))

(assert (= (and b!1359251 res!903864) b!1359252))

(assert (= (and b!1359252 res!903862) b!1359247))

(assert (= (and b!1359247 res!903863) b!1359250))

(assert (= (and b!1359250 res!903857) b!1359255))

(assert (= (and b!1359255 res!903856) b!1359257))

(assert (= (and b!1359257 c!127138) b!1359246))

(assert (= (and b!1359257 (not c!127138)) b!1359253))

(assert (= (and b!1359257 res!903859) b!1359248))

(declare-fun m!1244717 () Bool)

(assert (=> b!1359250 m!1244717))

(declare-fun m!1244719 () Bool)

(assert (=> start!114604 m!1244719))

(declare-fun m!1244721 () Bool)

(assert (=> b!1359256 m!1244721))

(declare-fun m!1244723 () Bool)

(assert (=> b!1359257 m!1244723))

(assert (=> b!1359257 m!1244723))

(declare-fun m!1244725 () Bool)

(assert (=> b!1359257 m!1244725))

(declare-fun m!1244727 () Bool)

(assert (=> b!1359251 m!1244727))

(declare-fun m!1244729 () Bool)

(assert (=> b!1359254 m!1244729))

(declare-fun m!1244731 () Bool)

(assert (=> b!1359252 m!1244731))

(declare-fun m!1244733 () Bool)

(assert (=> b!1359249 m!1244733))

(declare-fun m!1244735 () Bool)

(assert (=> b!1359248 m!1244735))

(declare-fun m!1244737 () Bool)

(assert (=> b!1359246 m!1244737))

(assert (=> b!1359246 m!1244723))

(declare-fun m!1244739 () Bool)

(assert (=> b!1359246 m!1244739))

(declare-fun m!1244741 () Bool)

(assert (=> b!1359246 m!1244741))

(assert (=> b!1359246 m!1244735))

(assert (=> b!1359246 m!1244723))

(assert (=> b!1359246 m!1244739))

(declare-fun m!1244743 () Bool)

(assert (=> b!1359246 m!1244743))

(check-sat (not b!1359248) (not b!1359252) (not b!1359251) (not b!1359246) (not b!1359257) (not b!1359250) (not start!114604) (not b!1359249) (not b!1359254) (not b!1359256))
(check-sat)
