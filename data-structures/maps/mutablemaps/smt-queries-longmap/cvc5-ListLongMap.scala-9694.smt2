; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114536 () Bool)

(assert start!114536)

(declare-fun b!1358848 () Bool)

(declare-fun res!903533 () Bool)

(declare-fun e!771132 () Bool)

(assert (=> b!1358848 (=> (not res!903533) (not e!771132))))

(declare-datatypes ((List!31886 0))(
  ( (Nil!31883) (Cons!31882 (h!33091 (_ BitVec 64)) (t!46563 List!31886)) )
))
(declare-fun acc!759 () List!31886)

(declare-datatypes ((array!92455 0))(
  ( (array!92456 (arr!44665 (Array (_ BitVec 32) (_ BitVec 64))) (size!45216 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92455)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92455 (_ BitVec 32) List!31886) Bool)

(assert (=> b!1358848 (= res!903533 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358849 () Bool)

(declare-fun res!903530 () Bool)

(assert (=> b!1358849 (=> (not res!903530) (not e!771132))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358849 (= res!903530 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45216 a!3742))))))

(declare-fun b!1358850 () Bool)

(declare-fun res!903535 () Bool)

(assert (=> b!1358850 (=> (not res!903535) (not e!771132))))

(declare-fun contains!9451 (List!31886 (_ BitVec 64)) Bool)

(assert (=> b!1358850 (= res!903535 (not (contains!9451 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358851 () Bool)

(declare-datatypes ((Unit!44678 0))(
  ( (Unit!44679) )
))
(declare-fun e!771133 () Unit!44678)

(declare-fun Unit!44680 () Unit!44678)

(assert (=> b!1358851 (= e!771133 Unit!44680)))

(declare-fun b!1358852 () Bool)

(declare-fun res!903531 () Bool)

(assert (=> b!1358852 (=> (not res!903531) (not e!771132))))

(assert (=> b!1358852 (= res!903531 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45216 a!3742)))))

(declare-fun b!1358853 () Bool)

(declare-fun res!903532 () Bool)

(assert (=> b!1358853 (=> (not res!903532) (not e!771132))))

(declare-fun noDuplicate!2330 (List!31886) Bool)

(assert (=> b!1358853 (= res!903532 (noDuplicate!2330 acc!759))))

(declare-fun b!1358854 () Bool)

(declare-fun res!903534 () Bool)

(assert (=> b!1358854 (=> (not res!903534) (not e!771132))))

(assert (=> b!1358854 (= res!903534 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31883))))

(declare-fun b!1358855 () Bool)

(assert (=> b!1358855 (= e!771132 false)))

(declare-fun lt!599409 () Unit!44678)

(assert (=> b!1358855 (= lt!599409 e!771133)))

(declare-fun c!127102 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358855 (= c!127102 (validKeyInArray!0 (select (arr!44665 a!3742) from!3120)))))

(declare-fun res!903529 () Bool)

(assert (=> start!114536 (=> (not res!903529) (not e!771132))))

(assert (=> start!114536 (= res!903529 (and (bvslt (size!45216 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45216 a!3742))))))

(assert (=> start!114536 e!771132))

(assert (=> start!114536 true))

(declare-fun array_inv!33610 (array!92455) Bool)

(assert (=> start!114536 (array_inv!33610 a!3742)))

(declare-fun b!1358856 () Bool)

(declare-fun lt!599410 () Unit!44678)

(assert (=> b!1358856 (= e!771133 lt!599410)))

(declare-fun lt!599411 () Unit!44678)

(declare-fun lemmaListSubSeqRefl!0 (List!31886) Unit!44678)

(assert (=> b!1358856 (= lt!599411 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!842 (List!31886 List!31886) Bool)

(assert (=> b!1358856 (subseq!842 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92455 List!31886 List!31886 (_ BitVec 32)) Unit!44678)

(declare-fun $colon$colon!847 (List!31886 (_ BitVec 64)) List!31886)

(assert (=> b!1358856 (= lt!599410 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!847 acc!759 (select (arr!44665 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358856 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358857 () Bool)

(declare-fun res!903537 () Bool)

(assert (=> b!1358857 (=> (not res!903537) (not e!771132))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358857 (= res!903537 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358858 () Bool)

(declare-fun res!903536 () Bool)

(assert (=> b!1358858 (=> (not res!903536) (not e!771132))))

(assert (=> b!1358858 (= res!903536 (not (contains!9451 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114536 res!903529) b!1358853))

(assert (= (and b!1358853 res!903532) b!1358850))

(assert (= (and b!1358850 res!903535) b!1358858))

(assert (= (and b!1358858 res!903536) b!1358854))

(assert (= (and b!1358854 res!903534) b!1358848))

(assert (= (and b!1358848 res!903533) b!1358849))

(assert (= (and b!1358849 res!903530) b!1358857))

(assert (= (and b!1358857 res!903537) b!1358852))

(assert (= (and b!1358852 res!903531) b!1358855))

(assert (= (and b!1358855 c!127102) b!1358856))

(assert (= (and b!1358855 (not c!127102)) b!1358851))

(declare-fun m!1244395 () Bool)

(assert (=> start!114536 m!1244395))

(declare-fun m!1244397 () Bool)

(assert (=> b!1358848 m!1244397))

(declare-fun m!1244399 () Bool)

(assert (=> b!1358857 m!1244399))

(declare-fun m!1244401 () Bool)

(assert (=> b!1358855 m!1244401))

(assert (=> b!1358855 m!1244401))

(declare-fun m!1244403 () Bool)

(assert (=> b!1358855 m!1244403))

(declare-fun m!1244405 () Bool)

(assert (=> b!1358856 m!1244405))

(assert (=> b!1358856 m!1244401))

(declare-fun m!1244407 () Bool)

(assert (=> b!1358856 m!1244407))

(declare-fun m!1244409 () Bool)

(assert (=> b!1358856 m!1244409))

(declare-fun m!1244411 () Bool)

(assert (=> b!1358856 m!1244411))

(assert (=> b!1358856 m!1244401))

(assert (=> b!1358856 m!1244407))

(declare-fun m!1244413 () Bool)

(assert (=> b!1358856 m!1244413))

(declare-fun m!1244415 () Bool)

(assert (=> b!1358850 m!1244415))

(declare-fun m!1244417 () Bool)

(assert (=> b!1358853 m!1244417))

(declare-fun m!1244419 () Bool)

(assert (=> b!1358858 m!1244419))

(declare-fun m!1244421 () Bool)

(assert (=> b!1358854 m!1244421))

(push 1)

(assert (not b!1358858))

(assert (not b!1358856))

(assert (not b!1358854))

(assert (not b!1358853))

(assert (not b!1358857))

(assert (not b!1358850))

(assert (not b!1358848))

(assert (not b!1358855))

(assert (not start!114536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

