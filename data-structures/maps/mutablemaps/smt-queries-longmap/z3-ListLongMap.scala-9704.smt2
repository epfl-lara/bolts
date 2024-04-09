; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114712 () Bool)

(assert start!114712)

(declare-fun b!1360297 () Bool)

(declare-fun res!904728 () Bool)

(declare-fun e!771774 () Bool)

(assert (=> b!1360297 (=> (not res!904728) (not e!771774))))

(declare-datatypes ((List!31917 0))(
  ( (Nil!31914) (Cons!31913 (h!33122 (_ BitVec 64)) (t!46600 List!31917)) )
))
(declare-fun acc!759 () List!31917)

(declare-fun contains!9482 (List!31917 (_ BitVec 64)) Bool)

(assert (=> b!1360297 (= res!904728 (not (contains!9482 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360298 () Bool)

(declare-fun res!904720 () Bool)

(assert (=> b!1360298 (=> (not res!904720) (not e!771774))))

(declare-datatypes ((array!92523 0))(
  ( (array!92524 (arr!44696 (Array (_ BitVec 32) (_ BitVec 64))) (size!45247 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92523)

(declare-fun arrayNoDuplicates!0 (array!92523 (_ BitVec 32) List!31917) Bool)

(assert (=> b!1360298 (= res!904720 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31914))))

(declare-fun b!1360299 () Bool)

(declare-fun res!904721 () Bool)

(assert (=> b!1360299 (=> (not res!904721) (not e!771774))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360299 (= res!904721 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360300 () Bool)

(declare-fun res!904723 () Bool)

(assert (=> b!1360300 (=> (not res!904723) (not e!771774))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360300 (= res!904723 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45247 a!3742))))))

(declare-fun res!904725 () Bool)

(assert (=> start!114712 (=> (not res!904725) (not e!771774))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114712 (= res!904725 (and (bvslt (size!45247 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45247 a!3742))))))

(assert (=> start!114712 e!771774))

(assert (=> start!114712 true))

(declare-fun array_inv!33641 (array!92523) Bool)

(assert (=> start!114712 (array_inv!33641 a!3742)))

(declare-fun b!1360301 () Bool)

(declare-fun res!904724 () Bool)

(assert (=> b!1360301 (=> (not res!904724) (not e!771774))))

(assert (=> b!1360301 (= res!904724 (not (contains!9482 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360302 () Bool)

(declare-datatypes ((Unit!44771 0))(
  ( (Unit!44772) )
))
(declare-fun e!771775 () Unit!44771)

(declare-fun lt!599809 () Unit!44771)

(assert (=> b!1360302 (= e!771775 lt!599809)))

(declare-fun lt!599807 () Unit!44771)

(declare-fun lemmaListSubSeqRefl!0 (List!31917) Unit!44771)

(assert (=> b!1360302 (= lt!599807 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!873 (List!31917 List!31917) Bool)

(assert (=> b!1360302 (subseq!873 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92523 List!31917 List!31917 (_ BitVec 32)) Unit!44771)

(declare-fun $colon$colon!878 (List!31917 (_ BitVec 64)) List!31917)

(assert (=> b!1360302 (= lt!599809 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!878 acc!759 (select (arr!44696 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360302 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360303 () Bool)

(declare-fun res!904726 () Bool)

(assert (=> b!1360303 (=> (not res!904726) (not e!771774))))

(assert (=> b!1360303 (= res!904726 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360304 () Bool)

(declare-fun lt!599810 () Bool)

(assert (=> b!1360304 (= e!771774 (and (not (= from!3120 i!1404)) lt!599810 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599808 () Unit!44771)

(assert (=> b!1360304 (= lt!599808 e!771775)))

(declare-fun c!127231 () Bool)

(assert (=> b!1360304 (= c!127231 lt!599810)))

(assert (=> b!1360304 (= lt!599810 (validKeyInArray!0 (select (arr!44696 a!3742) from!3120)))))

(declare-fun b!1360305 () Bool)

(declare-fun res!904727 () Bool)

(assert (=> b!1360305 (=> (not res!904727) (not e!771774))))

(declare-fun noDuplicate!2361 (List!31917) Bool)

(assert (=> b!1360305 (= res!904727 (noDuplicate!2361 acc!759))))

(declare-fun b!1360306 () Bool)

(declare-fun res!904722 () Bool)

(assert (=> b!1360306 (=> (not res!904722) (not e!771774))))

(assert (=> b!1360306 (= res!904722 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45247 a!3742)))))

(declare-fun b!1360307 () Bool)

(declare-fun Unit!44773 () Unit!44771)

(assert (=> b!1360307 (= e!771775 Unit!44773)))

(assert (= (and start!114712 res!904725) b!1360305))

(assert (= (and b!1360305 res!904727) b!1360301))

(assert (= (and b!1360301 res!904724) b!1360297))

(assert (= (and b!1360297 res!904728) b!1360298))

(assert (= (and b!1360298 res!904720) b!1360303))

(assert (= (and b!1360303 res!904726) b!1360300))

(assert (= (and b!1360300 res!904723) b!1360299))

(assert (= (and b!1360299 res!904721) b!1360306))

(assert (= (and b!1360306 res!904722) b!1360304))

(assert (= (and b!1360304 c!127231) b!1360302))

(assert (= (and b!1360304 (not c!127231)) b!1360307))

(declare-fun m!1245617 () Bool)

(assert (=> b!1360298 m!1245617))

(declare-fun m!1245619 () Bool)

(assert (=> b!1360303 m!1245619))

(declare-fun m!1245621 () Bool)

(assert (=> b!1360297 m!1245621))

(declare-fun m!1245623 () Bool)

(assert (=> b!1360302 m!1245623))

(declare-fun m!1245625 () Bool)

(assert (=> b!1360302 m!1245625))

(declare-fun m!1245627 () Bool)

(assert (=> b!1360302 m!1245627))

(declare-fun m!1245629 () Bool)

(assert (=> b!1360302 m!1245629))

(declare-fun m!1245631 () Bool)

(assert (=> b!1360302 m!1245631))

(assert (=> b!1360302 m!1245625))

(assert (=> b!1360302 m!1245627))

(declare-fun m!1245633 () Bool)

(assert (=> b!1360302 m!1245633))

(assert (=> b!1360304 m!1245625))

(assert (=> b!1360304 m!1245625))

(declare-fun m!1245635 () Bool)

(assert (=> b!1360304 m!1245635))

(declare-fun m!1245637 () Bool)

(assert (=> b!1360299 m!1245637))

(declare-fun m!1245639 () Bool)

(assert (=> start!114712 m!1245639))

(declare-fun m!1245641 () Bool)

(assert (=> b!1360301 m!1245641))

(declare-fun m!1245643 () Bool)

(assert (=> b!1360305 m!1245643))

(check-sat (not b!1360304) (not b!1360305) (not start!114712) (not b!1360297) (not b!1360299) (not b!1360298) (not b!1360301) (not b!1360303) (not b!1360302))
(check-sat)
