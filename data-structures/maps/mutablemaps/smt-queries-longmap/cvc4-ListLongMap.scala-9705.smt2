; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114720 () Bool)

(assert start!114720)

(declare-fun b!1360429 () Bool)

(declare-fun res!904834 () Bool)

(declare-fun e!771809 () Bool)

(assert (=> b!1360429 (=> (not res!904834) (not e!771809))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92531 0))(
  ( (array!92532 (arr!44700 (Array (_ BitVec 32) (_ BitVec 64))) (size!45251 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92531)

(assert (=> b!1360429 (= res!904834 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45251 a!3742))))))

(declare-fun b!1360430 () Bool)

(declare-fun res!904836 () Bool)

(assert (=> b!1360430 (=> (not res!904836) (not e!771809))))

(declare-datatypes ((List!31921 0))(
  ( (Nil!31918) (Cons!31917 (h!33126 (_ BitVec 64)) (t!46604 List!31921)) )
))
(declare-fun acc!759 () List!31921)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92531 (_ BitVec 32) List!31921) Bool)

(assert (=> b!1360430 (= res!904836 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360431 () Bool)

(assert (=> b!1360431 (= e!771809 false)))

(declare-datatypes ((Unit!44783 0))(
  ( (Unit!44784) )
))
(declare-fun lt!599848 () Unit!44783)

(declare-fun e!771811 () Unit!44783)

(assert (=> b!1360431 (= lt!599848 e!771811)))

(declare-fun c!127243 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360431 (= c!127243 (validKeyInArray!0 (select (arr!44700 a!3742) from!3120)))))

(declare-fun res!904831 () Bool)

(assert (=> start!114720 (=> (not res!904831) (not e!771809))))

(assert (=> start!114720 (= res!904831 (and (bvslt (size!45251 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45251 a!3742))))))

(assert (=> start!114720 e!771809))

(assert (=> start!114720 true))

(declare-fun array_inv!33645 (array!92531) Bool)

(assert (=> start!114720 (array_inv!33645 a!3742)))

(declare-fun b!1360432 () Bool)

(declare-fun res!904830 () Bool)

(assert (=> b!1360432 (=> (not res!904830) (not e!771809))))

(assert (=> b!1360432 (= res!904830 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31918))))

(declare-fun b!1360433 () Bool)

(declare-fun lt!599849 () Unit!44783)

(assert (=> b!1360433 (= e!771811 lt!599849)))

(declare-fun lt!599847 () Unit!44783)

(declare-fun lemmaListSubSeqRefl!0 (List!31921) Unit!44783)

(assert (=> b!1360433 (= lt!599847 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!877 (List!31921 List!31921) Bool)

(assert (=> b!1360433 (subseq!877 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92531 List!31921 List!31921 (_ BitVec 32)) Unit!44783)

(declare-fun $colon$colon!882 (List!31921 (_ BitVec 64)) List!31921)

(assert (=> b!1360433 (= lt!599849 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!882 acc!759 (select (arr!44700 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360433 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360434 () Bool)

(declare-fun res!904835 () Bool)

(assert (=> b!1360434 (=> (not res!904835) (not e!771809))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360434 (= res!904835 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360435 () Bool)

(declare-fun Unit!44785 () Unit!44783)

(assert (=> b!1360435 (= e!771811 Unit!44785)))

(declare-fun b!1360436 () Bool)

(declare-fun res!904832 () Bool)

(assert (=> b!1360436 (=> (not res!904832) (not e!771809))))

(assert (=> b!1360436 (= res!904832 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45251 a!3742)))))

(declare-fun b!1360437 () Bool)

(declare-fun res!904833 () Bool)

(assert (=> b!1360437 (=> (not res!904833) (not e!771809))))

(declare-fun contains!9486 (List!31921 (_ BitVec 64)) Bool)

(assert (=> b!1360437 (= res!904833 (not (contains!9486 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360438 () Bool)

(declare-fun res!904828 () Bool)

(assert (=> b!1360438 (=> (not res!904828) (not e!771809))))

(assert (=> b!1360438 (= res!904828 (not (contains!9486 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360439 () Bool)

(declare-fun res!904829 () Bool)

(assert (=> b!1360439 (=> (not res!904829) (not e!771809))))

(declare-fun noDuplicate!2365 (List!31921) Bool)

(assert (=> b!1360439 (= res!904829 (noDuplicate!2365 acc!759))))

(assert (= (and start!114720 res!904831) b!1360439))

(assert (= (and b!1360439 res!904829) b!1360437))

(assert (= (and b!1360437 res!904833) b!1360438))

(assert (= (and b!1360438 res!904828) b!1360432))

(assert (= (and b!1360432 res!904830) b!1360430))

(assert (= (and b!1360430 res!904836) b!1360429))

(assert (= (and b!1360429 res!904834) b!1360434))

(assert (= (and b!1360434 res!904835) b!1360436))

(assert (= (and b!1360436 res!904832) b!1360431))

(assert (= (and b!1360431 c!127243) b!1360433))

(assert (= (and b!1360431 (not c!127243)) b!1360435))

(declare-fun m!1245729 () Bool)

(assert (=> b!1360432 m!1245729))

(declare-fun m!1245731 () Bool)

(assert (=> start!114720 m!1245731))

(declare-fun m!1245733 () Bool)

(assert (=> b!1360438 m!1245733))

(declare-fun m!1245735 () Bool)

(assert (=> b!1360431 m!1245735))

(assert (=> b!1360431 m!1245735))

(declare-fun m!1245737 () Bool)

(assert (=> b!1360431 m!1245737))

(declare-fun m!1245739 () Bool)

(assert (=> b!1360437 m!1245739))

(declare-fun m!1245741 () Bool)

(assert (=> b!1360434 m!1245741))

(declare-fun m!1245743 () Bool)

(assert (=> b!1360439 m!1245743))

(declare-fun m!1245745 () Bool)

(assert (=> b!1360433 m!1245745))

(assert (=> b!1360433 m!1245735))

(declare-fun m!1245747 () Bool)

(assert (=> b!1360433 m!1245747))

(declare-fun m!1245749 () Bool)

(assert (=> b!1360433 m!1245749))

(declare-fun m!1245751 () Bool)

(assert (=> b!1360433 m!1245751))

(assert (=> b!1360433 m!1245735))

(assert (=> b!1360433 m!1245747))

(declare-fun m!1245753 () Bool)

(assert (=> b!1360433 m!1245753))

(declare-fun m!1245755 () Bool)

(assert (=> b!1360430 m!1245755))

(push 1)

(assert (not b!1360434))

(assert (not b!1360437))

(assert (not b!1360438))

(assert (not b!1360430))

(assert (not b!1360431))

(assert (not b!1360432))

(assert (not b!1360439))

(assert (not start!114720))

(assert (not b!1360433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

