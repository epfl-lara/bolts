; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114698 () Bool)

(assert start!114698)

(declare-fun b!1360066 () Bool)

(declare-fun res!904538 () Bool)

(declare-fun e!771712 () Bool)

(assert (=> b!1360066 (=> (not res!904538) (not e!771712))))

(declare-datatypes ((List!31910 0))(
  ( (Nil!31907) (Cons!31906 (h!33115 (_ BitVec 64)) (t!46593 List!31910)) )
))
(declare-fun acc!759 () List!31910)

(declare-fun noDuplicate!2354 (List!31910) Bool)

(assert (=> b!1360066 (= res!904538 (noDuplicate!2354 acc!759))))

(declare-fun b!1360067 () Bool)

(declare-fun res!904536 () Bool)

(assert (=> b!1360067 (=> (not res!904536) (not e!771712))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360067 (= res!904536 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360068 () Bool)

(declare-fun res!904535 () Bool)

(assert (=> b!1360068 (=> (not res!904535) (not e!771712))))

(declare-datatypes ((array!92509 0))(
  ( (array!92510 (arr!44689 (Array (_ BitVec 32) (_ BitVec 64))) (size!45240 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92509)

(declare-fun arrayNoDuplicates!0 (array!92509 (_ BitVec 32) List!31910) Bool)

(assert (=> b!1360068 (= res!904535 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31907))))

(declare-fun b!1360069 () Bool)

(assert (=> b!1360069 (= e!771712 false)))

(declare-datatypes ((Unit!44750 0))(
  ( (Unit!44751) )
))
(declare-fun lt!599740 () Unit!44750)

(declare-fun e!771711 () Unit!44750)

(assert (=> b!1360069 (= lt!599740 e!771711)))

(declare-fun c!127210 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1360069 (= c!127210 (validKeyInArray!0 (select (arr!44689 a!3742) from!3120)))))

(declare-fun b!1360070 () Bool)

(declare-fun res!904532 () Bool)

(assert (=> b!1360070 (=> (not res!904532) (not e!771712))))

(assert (=> b!1360070 (= res!904532 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45240 a!3742)))))

(declare-fun b!1360071 () Bool)

(declare-fun res!904534 () Bool)

(assert (=> b!1360071 (=> (not res!904534) (not e!771712))))

(assert (=> b!1360071 (= res!904534 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360072 () Bool)

(declare-fun res!904533 () Bool)

(assert (=> b!1360072 (=> (not res!904533) (not e!771712))))

(declare-fun contains!9475 (List!31910 (_ BitVec 64)) Bool)

(assert (=> b!1360072 (= res!904533 (not (contains!9475 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360073 () Bool)

(declare-fun res!904537 () Bool)

(assert (=> b!1360073 (=> (not res!904537) (not e!771712))))

(assert (=> b!1360073 (= res!904537 (not (contains!9475 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360074 () Bool)

(declare-fun lt!599739 () Unit!44750)

(assert (=> b!1360074 (= e!771711 lt!599739)))

(declare-fun lt!599741 () Unit!44750)

(declare-fun lemmaListSubSeqRefl!0 (List!31910) Unit!44750)

(assert (=> b!1360074 (= lt!599741 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!866 (List!31910 List!31910) Bool)

(assert (=> b!1360074 (subseq!866 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92509 List!31910 List!31910 (_ BitVec 32)) Unit!44750)

(declare-fun $colon$colon!871 (List!31910 (_ BitVec 64)) List!31910)

(assert (=> b!1360074 (= lt!599739 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!871 acc!759 (select (arr!44689 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360074 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!904531 () Bool)

(assert (=> start!114698 (=> (not res!904531) (not e!771712))))

(assert (=> start!114698 (= res!904531 (and (bvslt (size!45240 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45240 a!3742))))))

(assert (=> start!114698 e!771712))

(assert (=> start!114698 true))

(declare-fun array_inv!33634 (array!92509) Bool)

(assert (=> start!114698 (array_inv!33634 a!3742)))

(declare-fun b!1360075 () Bool)

(declare-fun res!904539 () Bool)

(assert (=> b!1360075 (=> (not res!904539) (not e!771712))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360075 (= res!904539 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45240 a!3742))))))

(declare-fun b!1360076 () Bool)

(declare-fun Unit!44752 () Unit!44750)

(assert (=> b!1360076 (= e!771711 Unit!44752)))

(assert (= (and start!114698 res!904531) b!1360066))

(assert (= (and b!1360066 res!904538) b!1360072))

(assert (= (and b!1360072 res!904533) b!1360073))

(assert (= (and b!1360073 res!904537) b!1360068))

(assert (= (and b!1360068 res!904535) b!1360071))

(assert (= (and b!1360071 res!904534) b!1360075))

(assert (= (and b!1360075 res!904539) b!1360067))

(assert (= (and b!1360067 res!904536) b!1360070))

(assert (= (and b!1360070 res!904532) b!1360069))

(assert (= (and b!1360069 c!127210) b!1360074))

(assert (= (and b!1360069 (not c!127210)) b!1360076))

(declare-fun m!1245421 () Bool)

(assert (=> b!1360073 m!1245421))

(declare-fun m!1245423 () Bool)

(assert (=> start!114698 m!1245423))

(declare-fun m!1245425 () Bool)

(assert (=> b!1360071 m!1245425))

(declare-fun m!1245427 () Bool)

(assert (=> b!1360072 m!1245427))

(declare-fun m!1245429 () Bool)

(assert (=> b!1360066 m!1245429))

(declare-fun m!1245431 () Bool)

(assert (=> b!1360067 m!1245431))

(declare-fun m!1245433 () Bool)

(assert (=> b!1360069 m!1245433))

(assert (=> b!1360069 m!1245433))

(declare-fun m!1245435 () Bool)

(assert (=> b!1360069 m!1245435))

(declare-fun m!1245437 () Bool)

(assert (=> b!1360074 m!1245437))

(assert (=> b!1360074 m!1245433))

(declare-fun m!1245439 () Bool)

(assert (=> b!1360074 m!1245439))

(declare-fun m!1245441 () Bool)

(assert (=> b!1360074 m!1245441))

(declare-fun m!1245443 () Bool)

(assert (=> b!1360074 m!1245443))

(assert (=> b!1360074 m!1245433))

(assert (=> b!1360074 m!1245439))

(declare-fun m!1245445 () Bool)

(assert (=> b!1360074 m!1245445))

(declare-fun m!1245447 () Bool)

(assert (=> b!1360068 m!1245447))

(push 1)

(assert (not b!1360069))

(assert (not b!1360073))

(assert (not b!1360071))

(assert (not b!1360067))

(assert (not start!114698))

(assert (not b!1360068))

(assert (not b!1360074))

(assert (not b!1360066))

(assert (not b!1360072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

