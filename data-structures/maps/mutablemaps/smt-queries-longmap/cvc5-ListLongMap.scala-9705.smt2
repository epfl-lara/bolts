; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114716 () Bool)

(assert start!114716)

(declare-fun b!1360363 () Bool)

(declare-fun res!904779 () Bool)

(declare-fun e!771793 () Bool)

(assert (=> b!1360363 (=> (not res!904779) (not e!771793))))

(declare-datatypes ((List!31919 0))(
  ( (Nil!31916) (Cons!31915 (h!33124 (_ BitVec 64)) (t!46602 List!31919)) )
))
(declare-fun acc!759 () List!31919)

(declare-fun contains!9484 (List!31919 (_ BitVec 64)) Bool)

(assert (=> b!1360363 (= res!904779 (not (contains!9484 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360364 () Bool)

(declare-fun res!904775 () Bool)

(assert (=> b!1360364 (=> (not res!904775) (not e!771793))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92527 0))(
  ( (array!92528 (arr!44698 (Array (_ BitVec 32) (_ BitVec 64))) (size!45249 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92527)

(assert (=> b!1360364 (= res!904775 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45249 a!3742)))))

(declare-fun b!1360365 () Bool)

(declare-fun res!904776 () Bool)

(assert (=> b!1360365 (=> (not res!904776) (not e!771793))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360365 (= res!904776 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360366 () Bool)

(declare-fun res!904781 () Bool)

(assert (=> b!1360366 (=> (not res!904781) (not e!771793))))

(declare-fun arrayNoDuplicates!0 (array!92527 (_ BitVec 32) List!31919) Bool)

(assert (=> b!1360366 (= res!904781 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31916))))

(declare-fun b!1360367 () Bool)

(declare-fun res!904778 () Bool)

(assert (=> b!1360367 (=> (not res!904778) (not e!771793))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360367 (= res!904778 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45249 a!3742))))))

(declare-fun b!1360368 () Bool)

(declare-datatypes ((Unit!44777 0))(
  ( (Unit!44778) )
))
(declare-fun e!771791 () Unit!44777)

(declare-fun Unit!44779 () Unit!44777)

(assert (=> b!1360368 (= e!771791 Unit!44779)))

(declare-fun b!1360369 () Bool)

(declare-fun res!904780 () Bool)

(assert (=> b!1360369 (=> (not res!904780) (not e!771793))))

(assert (=> b!1360369 (= res!904780 (not (contains!9484 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!904774 () Bool)

(assert (=> start!114716 (=> (not res!904774) (not e!771793))))

(assert (=> start!114716 (= res!904774 (and (bvslt (size!45249 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45249 a!3742))))))

(assert (=> start!114716 e!771793))

(assert (=> start!114716 true))

(declare-fun array_inv!33643 (array!92527) Bool)

(assert (=> start!114716 (array_inv!33643 a!3742)))

(declare-fun b!1360370 () Bool)

(assert (=> b!1360370 (= e!771793 false)))

(declare-fun lt!599829 () Unit!44777)

(assert (=> b!1360370 (= lt!599829 e!771791)))

(declare-fun c!127237 () Bool)

(assert (=> b!1360370 (= c!127237 (validKeyInArray!0 (select (arr!44698 a!3742) from!3120)))))

(declare-fun b!1360371 () Bool)

(declare-fun res!904782 () Bool)

(assert (=> b!1360371 (=> (not res!904782) (not e!771793))))

(declare-fun noDuplicate!2363 (List!31919) Bool)

(assert (=> b!1360371 (= res!904782 (noDuplicate!2363 acc!759))))

(declare-fun b!1360372 () Bool)

(declare-fun lt!599831 () Unit!44777)

(assert (=> b!1360372 (= e!771791 lt!599831)))

(declare-fun lt!599830 () Unit!44777)

(declare-fun lemmaListSubSeqRefl!0 (List!31919) Unit!44777)

(assert (=> b!1360372 (= lt!599830 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!875 (List!31919 List!31919) Bool)

(assert (=> b!1360372 (subseq!875 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92527 List!31919 List!31919 (_ BitVec 32)) Unit!44777)

(declare-fun $colon$colon!880 (List!31919 (_ BitVec 64)) List!31919)

(assert (=> b!1360372 (= lt!599831 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!880 acc!759 (select (arr!44698 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360372 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360373 () Bool)

(declare-fun res!904777 () Bool)

(assert (=> b!1360373 (=> (not res!904777) (not e!771793))))

(assert (=> b!1360373 (= res!904777 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114716 res!904774) b!1360371))

(assert (= (and b!1360371 res!904782) b!1360363))

(assert (= (and b!1360363 res!904779) b!1360369))

(assert (= (and b!1360369 res!904780) b!1360366))

(assert (= (and b!1360366 res!904781) b!1360373))

(assert (= (and b!1360373 res!904777) b!1360367))

(assert (= (and b!1360367 res!904778) b!1360365))

(assert (= (and b!1360365 res!904776) b!1360364))

(assert (= (and b!1360364 res!904775) b!1360370))

(assert (= (and b!1360370 c!127237) b!1360372))

(assert (= (and b!1360370 (not c!127237)) b!1360368))

(declare-fun m!1245673 () Bool)

(assert (=> b!1360366 m!1245673))

(declare-fun m!1245675 () Bool)

(assert (=> b!1360372 m!1245675))

(declare-fun m!1245677 () Bool)

(assert (=> b!1360372 m!1245677))

(declare-fun m!1245679 () Bool)

(assert (=> b!1360372 m!1245679))

(declare-fun m!1245681 () Bool)

(assert (=> b!1360372 m!1245681))

(declare-fun m!1245683 () Bool)

(assert (=> b!1360372 m!1245683))

(assert (=> b!1360372 m!1245677))

(assert (=> b!1360372 m!1245679))

(declare-fun m!1245685 () Bool)

(assert (=> b!1360372 m!1245685))

(declare-fun m!1245687 () Bool)

(assert (=> b!1360369 m!1245687))

(declare-fun m!1245689 () Bool)

(assert (=> b!1360363 m!1245689))

(declare-fun m!1245691 () Bool)

(assert (=> b!1360371 m!1245691))

(declare-fun m!1245693 () Bool)

(assert (=> b!1360365 m!1245693))

(assert (=> b!1360370 m!1245677))

(assert (=> b!1360370 m!1245677))

(declare-fun m!1245695 () Bool)

(assert (=> b!1360370 m!1245695))

(declare-fun m!1245697 () Bool)

(assert (=> start!114716 m!1245697))

(declare-fun m!1245699 () Bool)

(assert (=> b!1360373 m!1245699))

(push 1)

(assert (not b!1360370))

(assert (not b!1360371))

(assert (not b!1360363))

(assert (not start!114716))

(assert (not b!1360372))

(assert (not b!1360369))

(assert (not b!1360373))

(assert (not b!1360365))

(assert (not b!1360366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

