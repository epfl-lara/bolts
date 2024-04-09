; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114696 () Bool)

(assert start!114696)

(declare-fun b!1360033 () Bool)

(declare-datatypes ((Unit!44747 0))(
  ( (Unit!44748) )
))
(declare-fun e!771701 () Unit!44747)

(declare-fun Unit!44749 () Unit!44747)

(assert (=> b!1360033 (= e!771701 Unit!44749)))

(declare-fun b!1360034 () Bool)

(declare-fun lt!599730 () Unit!44747)

(assert (=> b!1360034 (= e!771701 lt!599730)))

(declare-fun lt!599731 () Unit!44747)

(declare-datatypes ((List!31909 0))(
  ( (Nil!31906) (Cons!31905 (h!33114 (_ BitVec 64)) (t!46592 List!31909)) )
))
(declare-fun acc!759 () List!31909)

(declare-fun lemmaListSubSeqRefl!0 (List!31909) Unit!44747)

(assert (=> b!1360034 (= lt!599731 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!865 (List!31909 List!31909) Bool)

(assert (=> b!1360034 (subseq!865 acc!759 acc!759)))

(declare-datatypes ((array!92507 0))(
  ( (array!92508 (arr!44688 (Array (_ BitVec 32) (_ BitVec 64))) (size!45239 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92507)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92507 List!31909 List!31909 (_ BitVec 32)) Unit!44747)

(declare-fun $colon$colon!870 (List!31909 (_ BitVec 64)) List!31909)

(assert (=> b!1360034 (= lt!599730 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!870 acc!759 (select (arr!44688 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92507 (_ BitVec 32) List!31909) Bool)

(assert (=> b!1360034 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360035 () Bool)

(declare-fun res!904504 () Bool)

(declare-fun e!771703 () Bool)

(assert (=> b!1360035 (=> (not res!904504) (not e!771703))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360035 (= res!904504 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45239 a!3742))))))

(declare-fun b!1360036 () Bool)

(declare-fun res!904512 () Bool)

(assert (=> b!1360036 (=> (not res!904512) (not e!771703))))

(declare-fun contains!9474 (List!31909 (_ BitVec 64)) Bool)

(assert (=> b!1360036 (= res!904512 (not (contains!9474 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360038 () Bool)

(declare-fun res!904510 () Bool)

(assert (=> b!1360038 (=> (not res!904510) (not e!771703))))

(declare-fun noDuplicate!2353 (List!31909) Bool)

(assert (=> b!1360038 (= res!904510 (noDuplicate!2353 acc!759))))

(declare-fun b!1360039 () Bool)

(declare-fun res!904508 () Bool)

(assert (=> b!1360039 (=> (not res!904508) (not e!771703))))

(assert (=> b!1360039 (= res!904508 (not (contains!9474 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360040 () Bool)

(assert (=> b!1360040 (= e!771703 false)))

(declare-fun lt!599732 () Unit!44747)

(assert (=> b!1360040 (= lt!599732 e!771701)))

(declare-fun c!127207 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360040 (= c!127207 (validKeyInArray!0 (select (arr!44688 a!3742) from!3120)))))

(declare-fun b!1360041 () Bool)

(declare-fun res!904506 () Bool)

(assert (=> b!1360041 (=> (not res!904506) (not e!771703))))

(assert (=> b!1360041 (= res!904506 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360042 () Bool)

(declare-fun res!904509 () Bool)

(assert (=> b!1360042 (=> (not res!904509) (not e!771703))))

(assert (=> b!1360042 (= res!904509 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31906))))

(declare-fun b!1360043 () Bool)

(declare-fun res!904511 () Bool)

(assert (=> b!1360043 (=> (not res!904511) (not e!771703))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360043 (= res!904511 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!904505 () Bool)

(assert (=> start!114696 (=> (not res!904505) (not e!771703))))

(assert (=> start!114696 (= res!904505 (and (bvslt (size!45239 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45239 a!3742))))))

(assert (=> start!114696 e!771703))

(assert (=> start!114696 true))

(declare-fun array_inv!33633 (array!92507) Bool)

(assert (=> start!114696 (array_inv!33633 a!3742)))

(declare-fun b!1360037 () Bool)

(declare-fun res!904507 () Bool)

(assert (=> b!1360037 (=> (not res!904507) (not e!771703))))

(assert (=> b!1360037 (= res!904507 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45239 a!3742)))))

(assert (= (and start!114696 res!904505) b!1360038))

(assert (= (and b!1360038 res!904510) b!1360036))

(assert (= (and b!1360036 res!904512) b!1360039))

(assert (= (and b!1360039 res!904508) b!1360042))

(assert (= (and b!1360042 res!904509) b!1360041))

(assert (= (and b!1360041 res!904506) b!1360035))

(assert (= (and b!1360035 res!904504) b!1360043))

(assert (= (and b!1360043 res!904511) b!1360037))

(assert (= (and b!1360037 res!904507) b!1360040))

(assert (= (and b!1360040 c!127207) b!1360034))

(assert (= (and b!1360040 (not c!127207)) b!1360033))

(declare-fun m!1245393 () Bool)

(assert (=> b!1360034 m!1245393))

(declare-fun m!1245395 () Bool)

(assert (=> b!1360034 m!1245395))

(declare-fun m!1245397 () Bool)

(assert (=> b!1360034 m!1245397))

(declare-fun m!1245399 () Bool)

(assert (=> b!1360034 m!1245399))

(declare-fun m!1245401 () Bool)

(assert (=> b!1360034 m!1245401))

(assert (=> b!1360034 m!1245395))

(assert (=> b!1360034 m!1245397))

(declare-fun m!1245403 () Bool)

(assert (=> b!1360034 m!1245403))

(declare-fun m!1245405 () Bool)

(assert (=> b!1360043 m!1245405))

(declare-fun m!1245407 () Bool)

(assert (=> b!1360041 m!1245407))

(declare-fun m!1245409 () Bool)

(assert (=> b!1360039 m!1245409))

(assert (=> b!1360040 m!1245395))

(assert (=> b!1360040 m!1245395))

(declare-fun m!1245411 () Bool)

(assert (=> b!1360040 m!1245411))

(declare-fun m!1245413 () Bool)

(assert (=> b!1360038 m!1245413))

(declare-fun m!1245415 () Bool)

(assert (=> b!1360036 m!1245415))

(declare-fun m!1245417 () Bool)

(assert (=> start!114696 m!1245417))

(declare-fun m!1245419 () Bool)

(assert (=> b!1360042 m!1245419))

(push 1)

(assert (not b!1360038))

(assert (not b!1360042))

(assert (not b!1360036))

(assert (not b!1360034))

(assert (not b!1360039))

(assert (not b!1360041))

(assert (not start!114696))

(assert (not b!1360040))

(assert (not b!1360043))

