; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114540 () Bool)

(assert start!114540)

(declare-fun b!1358914 () Bool)

(declare-fun res!903590 () Bool)

(declare-fun e!771150 () Bool)

(assert (=> b!1358914 (=> (not res!903590) (not e!771150))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92459 0))(
  ( (array!92460 (arr!44667 (Array (_ BitVec 32) (_ BitVec 64))) (size!45218 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92459)

(assert (=> b!1358914 (= res!903590 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45218 a!3742))))))

(declare-fun b!1358915 () Bool)

(assert (=> b!1358915 (= e!771150 false)))

(declare-datatypes ((Unit!44684 0))(
  ( (Unit!44685) )
))
(declare-fun lt!599428 () Unit!44684)

(declare-fun e!771151 () Unit!44684)

(assert (=> b!1358915 (= lt!599428 e!771151)))

(declare-fun c!127108 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358915 (= c!127108 (validKeyInArray!0 (select (arr!44667 a!3742) from!3120)))))

(declare-fun res!903586 () Bool)

(assert (=> start!114540 (=> (not res!903586) (not e!771150))))

(assert (=> start!114540 (= res!903586 (and (bvslt (size!45218 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45218 a!3742))))))

(assert (=> start!114540 e!771150))

(assert (=> start!114540 true))

(declare-fun array_inv!33612 (array!92459) Bool)

(assert (=> start!114540 (array_inv!33612 a!3742)))

(declare-fun b!1358916 () Bool)

(declare-fun res!903591 () Bool)

(assert (=> b!1358916 (=> (not res!903591) (not e!771150))))

(declare-datatypes ((List!31888 0))(
  ( (Nil!31885) (Cons!31884 (h!33093 (_ BitVec 64)) (t!46565 List!31888)) )
))
(declare-fun acc!759 () List!31888)

(declare-fun noDuplicate!2332 (List!31888) Bool)

(assert (=> b!1358916 (= res!903591 (noDuplicate!2332 acc!759))))

(declare-fun b!1358917 () Bool)

(declare-fun res!903588 () Bool)

(assert (=> b!1358917 (=> (not res!903588) (not e!771150))))

(declare-fun contains!9453 (List!31888 (_ BitVec 64)) Bool)

(assert (=> b!1358917 (= res!903588 (not (contains!9453 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358918 () Bool)

(declare-fun res!903584 () Bool)

(assert (=> b!1358918 (=> (not res!903584) (not e!771150))))

(declare-fun arrayNoDuplicates!0 (array!92459 (_ BitVec 32) List!31888) Bool)

(assert (=> b!1358918 (= res!903584 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31885))))

(declare-fun b!1358919 () Bool)

(declare-fun lt!599427 () Unit!44684)

(assert (=> b!1358919 (= e!771151 lt!599427)))

(declare-fun lt!599429 () Unit!44684)

(declare-fun lemmaListSubSeqRefl!0 (List!31888) Unit!44684)

(assert (=> b!1358919 (= lt!599429 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!844 (List!31888 List!31888) Bool)

(assert (=> b!1358919 (subseq!844 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92459 List!31888 List!31888 (_ BitVec 32)) Unit!44684)

(declare-fun $colon$colon!849 (List!31888 (_ BitVec 64)) List!31888)

(assert (=> b!1358919 (= lt!599427 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!849 acc!759 (select (arr!44667 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358919 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358920 () Bool)

(declare-fun res!903585 () Bool)

(assert (=> b!1358920 (=> (not res!903585) (not e!771150))))

(assert (=> b!1358920 (= res!903585 (not (contains!9453 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358921 () Bool)

(declare-fun res!903587 () Bool)

(assert (=> b!1358921 (=> (not res!903587) (not e!771150))))

(assert (=> b!1358921 (= res!903587 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45218 a!3742)))))

(declare-fun b!1358922 () Bool)

(declare-fun Unit!44686 () Unit!44684)

(assert (=> b!1358922 (= e!771151 Unit!44686)))

(declare-fun b!1358923 () Bool)

(declare-fun res!903583 () Bool)

(assert (=> b!1358923 (=> (not res!903583) (not e!771150))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358923 (= res!903583 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358924 () Bool)

(declare-fun res!903589 () Bool)

(assert (=> b!1358924 (=> (not res!903589) (not e!771150))))

(assert (=> b!1358924 (= res!903589 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114540 res!903586) b!1358916))

(assert (= (and b!1358916 res!903591) b!1358917))

(assert (= (and b!1358917 res!903588) b!1358920))

(assert (= (and b!1358920 res!903585) b!1358918))

(assert (= (and b!1358918 res!903584) b!1358924))

(assert (= (and b!1358924 res!903589) b!1358914))

(assert (= (and b!1358914 res!903590) b!1358923))

(assert (= (and b!1358923 res!903583) b!1358921))

(assert (= (and b!1358921 res!903587) b!1358915))

(assert (= (and b!1358915 c!127108) b!1358919))

(assert (= (and b!1358915 (not c!127108)) b!1358922))

(declare-fun m!1244451 () Bool)

(assert (=> b!1358923 m!1244451))

(declare-fun m!1244453 () Bool)

(assert (=> b!1358916 m!1244453))

(declare-fun m!1244455 () Bool)

(assert (=> b!1358919 m!1244455))

(declare-fun m!1244457 () Bool)

(assert (=> b!1358919 m!1244457))

(declare-fun m!1244459 () Bool)

(assert (=> b!1358919 m!1244459))

(declare-fun m!1244461 () Bool)

(assert (=> b!1358919 m!1244461))

(declare-fun m!1244463 () Bool)

(assert (=> b!1358919 m!1244463))

(assert (=> b!1358919 m!1244457))

(assert (=> b!1358919 m!1244459))

(declare-fun m!1244465 () Bool)

(assert (=> b!1358919 m!1244465))

(declare-fun m!1244467 () Bool)

(assert (=> b!1358918 m!1244467))

(declare-fun m!1244469 () Bool)

(assert (=> b!1358917 m!1244469))

(declare-fun m!1244471 () Bool)

(assert (=> b!1358924 m!1244471))

(assert (=> b!1358915 m!1244457))

(assert (=> b!1358915 m!1244457))

(declare-fun m!1244473 () Bool)

(assert (=> b!1358915 m!1244473))

(declare-fun m!1244475 () Bool)

(assert (=> start!114540 m!1244475))

(declare-fun m!1244477 () Bool)

(assert (=> b!1358920 m!1244477))

(push 1)

(assert (not b!1358924))

(assert (not start!114540))

(assert (not b!1358920))

(assert (not b!1358919))

(assert (not b!1358916))

(assert (not b!1358917))

(assert (not b!1358915))

(assert (not b!1358918))

(assert (not b!1358923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

