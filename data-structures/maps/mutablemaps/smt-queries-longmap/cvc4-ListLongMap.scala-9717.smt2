; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115014 () Bool)

(assert start!115014)

(declare-fun b!1362736 () Bool)

(declare-datatypes ((Unit!44891 0))(
  ( (Unit!44892) )
))
(declare-fun e!772965 () Unit!44891)

(declare-fun lt!600535 () Unit!44891)

(assert (=> b!1362736 (= e!772965 lt!600535)))

(declare-fun lt!600534 () Unit!44891)

(declare-datatypes ((List!31957 0))(
  ( (Nil!31954) (Cons!31953 (h!33162 (_ BitVec 64)) (t!46652 List!31957)) )
))
(declare-fun acc!759 () List!31957)

(declare-fun lemmaListSubSeqRefl!0 (List!31957) Unit!44891)

(assert (=> b!1362736 (= lt!600534 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!913 (List!31957 List!31957) Bool)

(assert (=> b!1362736 (subseq!913 acc!759 acc!759)))

(declare-datatypes ((array!92615 0))(
  ( (array!92616 (arr!44736 (Array (_ BitVec 32) (_ BitVec 64))) (size!45287 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92615)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92615 List!31957 List!31957 (_ BitVec 32)) Unit!44891)

(declare-fun $colon$colon!918 (List!31957 (_ BitVec 64)) List!31957)

(assert (=> b!1362736 (= lt!600535 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!918 acc!759 (select (arr!44736 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92615 (_ BitVec 32) List!31957) Bool)

(assert (=> b!1362736 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!906783 () Bool)

(declare-fun e!772964 () Bool)

(assert (=> start!115014 (=> (not res!906783) (not e!772964))))

(assert (=> start!115014 (= res!906783 (and (bvslt (size!45287 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45287 a!3742))))))

(assert (=> start!115014 e!772964))

(assert (=> start!115014 true))

(declare-fun array_inv!33681 (array!92615) Bool)

(assert (=> start!115014 (array_inv!33681 a!3742)))

(declare-fun b!1362737 () Bool)

(declare-fun res!906775 () Bool)

(assert (=> b!1362737 (=> (not res!906775) (not e!772964))))

(assert (=> b!1362737 (= res!906775 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31954))))

(declare-fun b!1362738 () Bool)

(assert (=> b!1362738 (= e!772964 false)))

(declare-fun lt!600536 () Unit!44891)

(assert (=> b!1362738 (= lt!600536 e!772965)))

(declare-fun c!127423 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362738 (= c!127423 (validKeyInArray!0 (select (arr!44736 a!3742) from!3120)))))

(declare-fun b!1362739 () Bool)

(declare-fun res!906779 () Bool)

(assert (=> b!1362739 (=> (not res!906779) (not e!772964))))

(declare-fun noDuplicate!2401 (List!31957) Bool)

(assert (=> b!1362739 (= res!906779 (noDuplicate!2401 acc!759))))

(declare-fun b!1362740 () Bool)

(declare-fun res!906780 () Bool)

(assert (=> b!1362740 (=> (not res!906780) (not e!772964))))

(declare-fun contains!9522 (List!31957 (_ BitVec 64)) Bool)

(assert (=> b!1362740 (= res!906780 (not (contains!9522 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362741 () Bool)

(declare-fun res!906778 () Bool)

(assert (=> b!1362741 (=> (not res!906778) (not e!772964))))

(assert (=> b!1362741 (= res!906778 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45287 a!3742)))))

(declare-fun b!1362742 () Bool)

(declare-fun res!906777 () Bool)

(assert (=> b!1362742 (=> (not res!906777) (not e!772964))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362742 (= res!906777 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45287 a!3742))))))

(declare-fun b!1362743 () Bool)

(declare-fun res!906781 () Bool)

(assert (=> b!1362743 (=> (not res!906781) (not e!772964))))

(assert (=> b!1362743 (= res!906781 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362744 () Bool)

(declare-fun res!906782 () Bool)

(assert (=> b!1362744 (=> (not res!906782) (not e!772964))))

(assert (=> b!1362744 (= res!906782 (not (contains!9522 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362745 () Bool)

(declare-fun res!906776 () Bool)

(assert (=> b!1362745 (=> (not res!906776) (not e!772964))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362745 (= res!906776 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362746 () Bool)

(declare-fun Unit!44893 () Unit!44891)

(assert (=> b!1362746 (= e!772965 Unit!44893)))

(assert (= (and start!115014 res!906783) b!1362739))

(assert (= (and b!1362739 res!906779) b!1362740))

(assert (= (and b!1362740 res!906780) b!1362744))

(assert (= (and b!1362744 res!906782) b!1362737))

(assert (= (and b!1362737 res!906775) b!1362743))

(assert (= (and b!1362743 res!906781) b!1362742))

(assert (= (and b!1362742 res!906777) b!1362745))

(assert (= (and b!1362745 res!906776) b!1362741))

(assert (= (and b!1362741 res!906778) b!1362738))

(assert (= (and b!1362738 c!127423) b!1362736))

(assert (= (and b!1362738 (not c!127423)) b!1362746))

(declare-fun m!1247691 () Bool)

(assert (=> b!1362738 m!1247691))

(assert (=> b!1362738 m!1247691))

(declare-fun m!1247693 () Bool)

(assert (=> b!1362738 m!1247693))

(declare-fun m!1247695 () Bool)

(assert (=> b!1362740 m!1247695))

(declare-fun m!1247697 () Bool)

(assert (=> start!115014 m!1247697))

(declare-fun m!1247699 () Bool)

(assert (=> b!1362744 m!1247699))

(declare-fun m!1247701 () Bool)

(assert (=> b!1362743 m!1247701))

(declare-fun m!1247703 () Bool)

(assert (=> b!1362745 m!1247703))

(declare-fun m!1247705 () Bool)

(assert (=> b!1362739 m!1247705))

(declare-fun m!1247707 () Bool)

(assert (=> b!1362737 m!1247707))

(declare-fun m!1247709 () Bool)

(assert (=> b!1362736 m!1247709))

(assert (=> b!1362736 m!1247691))

(declare-fun m!1247711 () Bool)

(assert (=> b!1362736 m!1247711))

(declare-fun m!1247713 () Bool)

(assert (=> b!1362736 m!1247713))

(declare-fun m!1247715 () Bool)

(assert (=> b!1362736 m!1247715))

(assert (=> b!1362736 m!1247691))

(assert (=> b!1362736 m!1247711))

(declare-fun m!1247717 () Bool)

(assert (=> b!1362736 m!1247717))

(push 1)

(assert (not b!1362739))

(assert (not b!1362744))

(assert (not b!1362740))

(assert (not start!115014))

(assert (not b!1362736))

(assert (not b!1362737))

(assert (not b!1362738))

(assert (not b!1362743))

(assert (not b!1362745))

(check-sat)

