; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113990 () Bool)

(assert start!113990)

(declare-fun b!1351737 () Bool)

(declare-fun res!897303 () Bool)

(declare-fun e!768580 () Bool)

(assert (=> b!1351737 (=> (not res!897303) (not e!768580))))

(declare-datatypes ((List!31712 0))(
  ( (Nil!31709) (Cons!31708 (h!32917 (_ BitVec 64)) (t!46377 List!31712)) )
))
(declare-fun acc!759 () List!31712)

(declare-fun noDuplicate!2156 (List!31712) Bool)

(assert (=> b!1351737 (= res!897303 (noDuplicate!2156 acc!759))))

(declare-fun b!1351738 () Bool)

(declare-fun res!897300 () Bool)

(assert (=> b!1351738 (=> (not res!897300) (not e!768580))))

(declare-datatypes ((array!92095 0))(
  ( (array!92096 (arr!44491 (Array (_ BitVec 32) (_ BitVec 64))) (size!45042 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92095)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92095 (_ BitVec 32) List!31712) Bool)

(assert (=> b!1351738 (= res!897300 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351739 () Bool)

(declare-fun res!897297 () Bool)

(assert (=> b!1351739 (=> (not res!897297) (not e!768580))))

(assert (=> b!1351739 (= res!897297 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45042 a!3742)))))

(declare-fun b!1351740 () Bool)

(declare-fun res!897302 () Bool)

(assert (=> b!1351740 (=> (not res!897302) (not e!768580))))

(declare-fun contains!9277 (List!31712 (_ BitVec 64)) Bool)

(assert (=> b!1351740 (= res!897302 (not (contains!9277 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351741 () Bool)

(declare-fun res!897298 () Bool)

(assert (=> b!1351741 (=> (not res!897298) (not e!768580))))

(assert (=> b!1351741 (= res!897298 (not (contains!9277 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351742 () Bool)

(declare-datatypes ((Unit!44237 0))(
  ( (Unit!44238) )
))
(declare-fun e!768583 () Unit!44237)

(declare-fun lt!597277 () Unit!44237)

(assert (=> b!1351742 (= e!768583 lt!597277)))

(declare-fun lt!597278 () Unit!44237)

(declare-fun lemmaListSubSeqRefl!0 (List!31712) Unit!44237)

(assert (=> b!1351742 (= lt!597278 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!686 (List!31712 List!31712) Bool)

(assert (=> b!1351742 (subseq!686 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92095 List!31712 List!31712 (_ BitVec 32)) Unit!44237)

(declare-fun $colon$colon!703 (List!31712 (_ BitVec 64)) List!31712)

(assert (=> b!1351742 (= lt!597277 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!703 acc!759 (select (arr!44491 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351742 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351743 () Bool)

(declare-fun e!768581 () Bool)

(assert (=> b!1351743 (= e!768580 e!768581)))

(declare-fun res!897295 () Bool)

(assert (=> b!1351743 (=> (not res!897295) (not e!768581))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351743 (= res!897295 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597276 () Unit!44237)

(assert (=> b!1351743 (= lt!597276 e!768583)))

(declare-fun c!126664 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351743 (= c!126664 (validKeyInArray!0 (select (arr!44491 a!3742) from!3120)))))

(declare-fun b!1351745 () Bool)

(assert (=> b!1351745 (= e!768581 false)))

(declare-fun lt!597275 () Bool)

(assert (=> b!1351745 (= lt!597275 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351746 () Bool)

(declare-fun res!897299 () Bool)

(assert (=> b!1351746 (=> (not res!897299) (not e!768580))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351746 (= res!897299 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351747 () Bool)

(declare-fun res!897296 () Bool)

(assert (=> b!1351747 (=> (not res!897296) (not e!768580))))

(assert (=> b!1351747 (= res!897296 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31709))))

(declare-fun b!1351748 () Bool)

(declare-fun Unit!44239 () Unit!44237)

(assert (=> b!1351748 (= e!768583 Unit!44239)))

(declare-fun res!897294 () Bool)

(assert (=> start!113990 (=> (not res!897294) (not e!768580))))

(assert (=> start!113990 (= res!897294 (and (bvslt (size!45042 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45042 a!3742))))))

(assert (=> start!113990 e!768580))

(assert (=> start!113990 true))

(declare-fun array_inv!33436 (array!92095) Bool)

(assert (=> start!113990 (array_inv!33436 a!3742)))

(declare-fun b!1351744 () Bool)

(declare-fun res!897301 () Bool)

(assert (=> b!1351744 (=> (not res!897301) (not e!768580))))

(assert (=> b!1351744 (= res!897301 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45042 a!3742))))))

(assert (= (and start!113990 res!897294) b!1351737))

(assert (= (and b!1351737 res!897303) b!1351741))

(assert (= (and b!1351741 res!897298) b!1351740))

(assert (= (and b!1351740 res!897302) b!1351747))

(assert (= (and b!1351747 res!897296) b!1351738))

(assert (= (and b!1351738 res!897300) b!1351744))

(assert (= (and b!1351744 res!897301) b!1351746))

(assert (= (and b!1351746 res!897299) b!1351739))

(assert (= (and b!1351739 res!897297) b!1351743))

(assert (= (and b!1351743 c!126664) b!1351742))

(assert (= (and b!1351743 (not c!126664)) b!1351748))

(assert (= (and b!1351743 res!897295) b!1351745))

(declare-fun m!1238725 () Bool)

(assert (=> b!1351741 m!1238725))

(declare-fun m!1238727 () Bool)

(assert (=> b!1351742 m!1238727))

(declare-fun m!1238729 () Bool)

(assert (=> b!1351742 m!1238729))

(declare-fun m!1238731 () Bool)

(assert (=> b!1351742 m!1238731))

(declare-fun m!1238733 () Bool)

(assert (=> b!1351742 m!1238733))

(declare-fun m!1238735 () Bool)

(assert (=> b!1351742 m!1238735))

(assert (=> b!1351742 m!1238729))

(assert (=> b!1351742 m!1238731))

(declare-fun m!1238737 () Bool)

(assert (=> b!1351742 m!1238737))

(declare-fun m!1238739 () Bool)

(assert (=> b!1351740 m!1238739))

(declare-fun m!1238741 () Bool)

(assert (=> b!1351737 m!1238741))

(declare-fun m!1238743 () Bool)

(assert (=> b!1351738 m!1238743))

(declare-fun m!1238745 () Bool)

(assert (=> b!1351747 m!1238745))

(assert (=> b!1351745 m!1238735))

(assert (=> b!1351743 m!1238729))

(assert (=> b!1351743 m!1238729))

(declare-fun m!1238747 () Bool)

(assert (=> b!1351743 m!1238747))

(declare-fun m!1238749 () Bool)

(assert (=> start!113990 m!1238749))

(declare-fun m!1238751 () Bool)

(assert (=> b!1351746 m!1238751))

(push 1)

