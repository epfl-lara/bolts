; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115110 () Bool)

(assert start!115110)

(declare-fun b!1363625 () Bool)

(declare-fun res!907514 () Bool)

(declare-fun e!773329 () Bool)

(assert (=> b!1363625 (=> (not res!907514) (not e!773329))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92660 0))(
  ( (array!92661 (arr!44757 (Array (_ BitVec 32) (_ BitVec 64))) (size!45308 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92660)

(assert (=> b!1363625 (= res!907514 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45308 a!3742))))))

(declare-fun b!1363626 () Bool)

(declare-fun res!907516 () Bool)

(assert (=> b!1363626 (=> (not res!907516) (not e!773329))))

(declare-datatypes ((List!31978 0))(
  ( (Nil!31975) (Cons!31974 (h!33183 (_ BitVec 64)) (t!46676 List!31978)) )
))
(declare-fun acc!759 () List!31978)

(declare-fun contains!9543 (List!31978 (_ BitVec 64)) Bool)

(assert (=> b!1363626 (= res!907516 (not (contains!9543 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363627 () Bool)

(declare-fun e!773328 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1363627 (= e!773328 (bvsge (bvsub (size!45308 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45308 a!3742) from!3120)))))

(declare-fun b!1363628 () Bool)

(declare-datatypes ((Unit!44954 0))(
  ( (Unit!44955) )
))
(declare-fun e!773326 () Unit!44954)

(declare-fun Unit!44956 () Unit!44954)

(assert (=> b!1363628 (= e!773326 Unit!44956)))

(declare-fun b!1363629 () Bool)

(declare-fun res!907518 () Bool)

(assert (=> b!1363629 (=> (not res!907518) (not e!773329))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363629 (= res!907518 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!907513 () Bool)

(assert (=> start!115110 (=> (not res!907513) (not e!773329))))

(assert (=> start!115110 (= res!907513 (and (bvslt (size!45308 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45308 a!3742))))))

(assert (=> start!115110 e!773329))

(assert (=> start!115110 true))

(declare-fun array_inv!33702 (array!92660) Bool)

(assert (=> start!115110 (array_inv!33702 a!3742)))

(declare-fun b!1363630 () Bool)

(declare-fun lt!600809 () Unit!44954)

(assert (=> b!1363630 (= e!773326 lt!600809)))

(declare-fun lt!600808 () Unit!44954)

(declare-fun lemmaListSubSeqRefl!0 (List!31978) Unit!44954)

(assert (=> b!1363630 (= lt!600808 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!934 (List!31978 List!31978) Bool)

(assert (=> b!1363630 (subseq!934 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92660 List!31978 List!31978 (_ BitVec 32)) Unit!44954)

(declare-fun $colon$colon!939 (List!31978 (_ BitVec 64)) List!31978)

(assert (=> b!1363630 (= lt!600809 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!939 acc!759 (select (arr!44757 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92660 (_ BitVec 32) List!31978) Bool)

(assert (=> b!1363630 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363631 () Bool)

(declare-fun res!907515 () Bool)

(assert (=> b!1363631 (=> (not res!907515) (not e!773329))))

(assert (=> b!1363631 (= res!907515 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31975))))

(declare-fun b!1363632 () Bool)

(declare-fun res!907517 () Bool)

(assert (=> b!1363632 (=> (not res!907517) (not e!773329))))

(assert (=> b!1363632 (= res!907517 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363633 () Bool)

(declare-fun res!907511 () Bool)

(assert (=> b!1363633 (=> (not res!907511) (not e!773329))))

(assert (=> b!1363633 (= res!907511 (not (contains!9543 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363634 () Bool)

(declare-fun res!907510 () Bool)

(assert (=> b!1363634 (=> (not res!907510) (not e!773329))))

(declare-fun noDuplicate!2422 (List!31978) Bool)

(assert (=> b!1363634 (= res!907510 (noDuplicate!2422 acc!759))))

(declare-fun b!1363635 () Bool)

(assert (=> b!1363635 (= e!773329 e!773328)))

(declare-fun res!907508 () Bool)

(assert (=> b!1363635 (=> (not res!907508) (not e!773328))))

(declare-fun lt!600806 () Bool)

(assert (=> b!1363635 (= res!907508 (and (not (= from!3120 i!1404)) (not lt!600806) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600807 () Unit!44954)

(assert (=> b!1363635 (= lt!600807 e!773326)))

(declare-fun c!127501 () Bool)

(assert (=> b!1363635 (= c!127501 lt!600806)))

(assert (=> b!1363635 (= lt!600806 (validKeyInArray!0 (select (arr!44757 a!3742) from!3120)))))

(declare-fun b!1363636 () Bool)

(declare-fun res!907509 () Bool)

(assert (=> b!1363636 (=> (not res!907509) (not e!773328))))

(assert (=> b!1363636 (= res!907509 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363637 () Bool)

(declare-fun res!907512 () Bool)

(assert (=> b!1363637 (=> (not res!907512) (not e!773329))))

(assert (=> b!1363637 (= res!907512 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45308 a!3742)))))

(assert (= (and start!115110 res!907513) b!1363634))

(assert (= (and b!1363634 res!907510) b!1363633))

(assert (= (and b!1363633 res!907511) b!1363626))

(assert (= (and b!1363626 res!907516) b!1363631))

(assert (= (and b!1363631 res!907515) b!1363632))

(assert (= (and b!1363632 res!907517) b!1363625))

(assert (= (and b!1363625 res!907514) b!1363629))

(assert (= (and b!1363629 res!907518) b!1363637))

(assert (= (and b!1363637 res!907512) b!1363635))

(assert (= (and b!1363635 c!127501) b!1363630))

(assert (= (and b!1363635 (not c!127501)) b!1363628))

(assert (= (and b!1363635 res!907508) b!1363636))

(assert (= (and b!1363636 res!907509) b!1363627))

(declare-fun m!1248405 () Bool)

(assert (=> b!1363626 m!1248405))

(declare-fun m!1248407 () Bool)

(assert (=> b!1363629 m!1248407))

(declare-fun m!1248409 () Bool)

(assert (=> start!115110 m!1248409))

(declare-fun m!1248411 () Bool)

(assert (=> b!1363632 m!1248411))

(declare-fun m!1248413 () Bool)

(assert (=> b!1363630 m!1248413))

(declare-fun m!1248415 () Bool)

(assert (=> b!1363630 m!1248415))

(declare-fun m!1248417 () Bool)

(assert (=> b!1363630 m!1248417))

(declare-fun m!1248419 () Bool)

(assert (=> b!1363630 m!1248419))

(declare-fun m!1248421 () Bool)

(assert (=> b!1363630 m!1248421))

(assert (=> b!1363630 m!1248415))

(assert (=> b!1363630 m!1248417))

(declare-fun m!1248423 () Bool)

(assert (=> b!1363630 m!1248423))

(assert (=> b!1363636 m!1248421))

(declare-fun m!1248425 () Bool)

(assert (=> b!1363634 m!1248425))

(declare-fun m!1248427 () Bool)

(assert (=> b!1363633 m!1248427))

(declare-fun m!1248429 () Bool)

(assert (=> b!1363631 m!1248429))

(assert (=> b!1363635 m!1248415))

(assert (=> b!1363635 m!1248415))

(declare-fun m!1248431 () Bool)

(assert (=> b!1363635 m!1248431))

(push 1)

(assert (not b!1363635))

(assert (not b!1363633))

(assert (not b!1363626))

(assert (not b!1363632))

(assert (not b!1363634))

(assert (not start!115110))

(assert (not b!1363630))

(assert (not b!1363636))

(assert (not b!1363629))

(assert (not b!1363631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

