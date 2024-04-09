; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114532 () Bool)

(assert start!114532)

(declare-fun b!1358782 () Bool)

(declare-fun res!903481 () Bool)

(declare-fun e!771113 () Bool)

(assert (=> b!1358782 (=> (not res!903481) (not e!771113))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358782 (= res!903481 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358783 () Bool)

(declare-fun res!903482 () Bool)

(assert (=> b!1358783 (=> (not res!903482) (not e!771113))))

(declare-datatypes ((List!31884 0))(
  ( (Nil!31881) (Cons!31880 (h!33089 (_ BitVec 64)) (t!46561 List!31884)) )
))
(declare-fun acc!759 () List!31884)

(declare-fun contains!9449 (List!31884 (_ BitVec 64)) Bool)

(assert (=> b!1358783 (= res!903482 (not (contains!9449 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358784 () Bool)

(declare-datatypes ((Unit!44672 0))(
  ( (Unit!44673) )
))
(declare-fun e!771115 () Unit!44672)

(declare-fun lt!599392 () Unit!44672)

(assert (=> b!1358784 (= e!771115 lt!599392)))

(declare-fun lt!599391 () Unit!44672)

(declare-fun lemmaListSubSeqRefl!0 (List!31884) Unit!44672)

(assert (=> b!1358784 (= lt!599391 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!840 (List!31884 List!31884) Bool)

(assert (=> b!1358784 (subseq!840 acc!759 acc!759)))

(declare-datatypes ((array!92451 0))(
  ( (array!92452 (arr!44663 (Array (_ BitVec 32) (_ BitVec 64))) (size!45214 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92451)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92451 List!31884 List!31884 (_ BitVec 32)) Unit!44672)

(declare-fun $colon$colon!845 (List!31884 (_ BitVec 64)) List!31884)

(assert (=> b!1358784 (= lt!599392 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!845 acc!759 (select (arr!44663 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92451 (_ BitVec 32) List!31884) Bool)

(assert (=> b!1358784 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358785 () Bool)

(declare-fun res!903483 () Bool)

(assert (=> b!1358785 (=> (not res!903483) (not e!771113))))

(assert (=> b!1358785 (= res!903483 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45214 a!3742)))))

(declare-fun b!1358786 () Bool)

(declare-fun res!903476 () Bool)

(assert (=> b!1358786 (=> (not res!903476) (not e!771113))))

(assert (=> b!1358786 (= res!903476 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31881))))

(declare-fun res!903480 () Bool)

(assert (=> start!114532 (=> (not res!903480) (not e!771113))))

(assert (=> start!114532 (= res!903480 (and (bvslt (size!45214 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45214 a!3742))))))

(assert (=> start!114532 e!771113))

(assert (=> start!114532 true))

(declare-fun array_inv!33608 (array!92451) Bool)

(assert (=> start!114532 (array_inv!33608 a!3742)))

(declare-fun b!1358787 () Bool)

(declare-fun res!903478 () Bool)

(assert (=> b!1358787 (=> (not res!903478) (not e!771113))))

(assert (=> b!1358787 (= res!903478 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358788 () Bool)

(assert (=> b!1358788 (= e!771113 false)))

(declare-fun lt!599393 () Unit!44672)

(assert (=> b!1358788 (= lt!599393 e!771115)))

(declare-fun c!127096 () Bool)

(assert (=> b!1358788 (= c!127096 (validKeyInArray!0 (select (arr!44663 a!3742) from!3120)))))

(declare-fun b!1358789 () Bool)

(declare-fun res!903477 () Bool)

(assert (=> b!1358789 (=> (not res!903477) (not e!771113))))

(assert (=> b!1358789 (= res!903477 (not (contains!9449 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358790 () Bool)

(declare-fun res!903479 () Bool)

(assert (=> b!1358790 (=> (not res!903479) (not e!771113))))

(declare-fun noDuplicate!2328 (List!31884) Bool)

(assert (=> b!1358790 (= res!903479 (noDuplicate!2328 acc!759))))

(declare-fun b!1358791 () Bool)

(declare-fun Unit!44674 () Unit!44672)

(assert (=> b!1358791 (= e!771115 Unit!44674)))

(declare-fun b!1358792 () Bool)

(declare-fun res!903475 () Bool)

(assert (=> b!1358792 (=> (not res!903475) (not e!771113))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358792 (= res!903475 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45214 a!3742))))))

(assert (= (and start!114532 res!903480) b!1358790))

(assert (= (and b!1358790 res!903479) b!1358783))

(assert (= (and b!1358783 res!903482) b!1358789))

(assert (= (and b!1358789 res!903477) b!1358786))

(assert (= (and b!1358786 res!903476) b!1358787))

(assert (= (and b!1358787 res!903478) b!1358792))

(assert (= (and b!1358792 res!903475) b!1358782))

(assert (= (and b!1358782 res!903481) b!1358785))

(assert (= (and b!1358785 res!903483) b!1358788))

(assert (= (and b!1358788 c!127096) b!1358784))

(assert (= (and b!1358788 (not c!127096)) b!1358791))

(declare-fun m!1244339 () Bool)

(assert (=> b!1358789 m!1244339))

(declare-fun m!1244341 () Bool)

(assert (=> b!1358784 m!1244341))

(declare-fun m!1244343 () Bool)

(assert (=> b!1358784 m!1244343))

(declare-fun m!1244345 () Bool)

(assert (=> b!1358784 m!1244345))

(declare-fun m!1244347 () Bool)

(assert (=> b!1358784 m!1244347))

(declare-fun m!1244349 () Bool)

(assert (=> b!1358784 m!1244349))

(assert (=> b!1358784 m!1244343))

(assert (=> b!1358784 m!1244345))

(declare-fun m!1244351 () Bool)

(assert (=> b!1358784 m!1244351))

(declare-fun m!1244353 () Bool)

(assert (=> b!1358783 m!1244353))

(declare-fun m!1244355 () Bool)

(assert (=> b!1358782 m!1244355))

(assert (=> b!1358788 m!1244343))

(assert (=> b!1358788 m!1244343))

(declare-fun m!1244357 () Bool)

(assert (=> b!1358788 m!1244357))

(declare-fun m!1244359 () Bool)

(assert (=> b!1358786 m!1244359))

(declare-fun m!1244361 () Bool)

(assert (=> b!1358790 m!1244361))

(declare-fun m!1244363 () Bool)

(assert (=> start!114532 m!1244363))

(declare-fun m!1244365 () Bool)

(assert (=> b!1358787 m!1244365))

(check-sat (not b!1358789) (not start!114532) (not b!1358787) (not b!1358788) (not b!1358790) (not b!1358784) (not b!1358786) (not b!1358782) (not b!1358783))
