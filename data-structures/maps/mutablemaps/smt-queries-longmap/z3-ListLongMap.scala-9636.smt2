; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113992 () Bool)

(assert start!113992)

(declare-fun b!1351773 () Bool)

(declare-fun res!897332 () Bool)

(declare-fun e!768595 () Bool)

(assert (=> b!1351773 (=> (not res!897332) (not e!768595))))

(declare-datatypes ((List!31713 0))(
  ( (Nil!31710) (Cons!31709 (h!32918 (_ BitVec 64)) (t!46378 List!31713)) )
))
(declare-fun acc!759 () List!31713)

(declare-fun contains!9278 (List!31713 (_ BitVec 64)) Bool)

(assert (=> b!1351773 (= res!897332 (not (contains!9278 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351774 () Bool)

(declare-fun res!897326 () Bool)

(assert (=> b!1351774 (=> (not res!897326) (not e!768595))))

(declare-datatypes ((array!92097 0))(
  ( (array!92098 (arr!44492 (Array (_ BitVec 32) (_ BitVec 64))) (size!45043 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92097)

(declare-fun arrayNoDuplicates!0 (array!92097 (_ BitVec 32) List!31713) Bool)

(assert (=> b!1351774 (= res!897326 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31710))))

(declare-fun b!1351775 () Bool)

(declare-fun res!897333 () Bool)

(assert (=> b!1351775 (=> (not res!897333) (not e!768595))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1351775 (= res!897333 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351776 () Bool)

(declare-datatypes ((Unit!44240 0))(
  ( (Unit!44241) )
))
(declare-fun e!768593 () Unit!44240)

(declare-fun Unit!44242 () Unit!44240)

(assert (=> b!1351776 (= e!768593 Unit!44242)))

(declare-fun b!1351777 () Bool)

(declare-fun res!897327 () Bool)

(assert (=> b!1351777 (=> (not res!897327) (not e!768595))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351777 (= res!897327 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45043 a!3742))))))

(declare-fun b!1351778 () Bool)

(declare-fun lt!597288 () Unit!44240)

(assert (=> b!1351778 (= e!768593 lt!597288)))

(declare-fun lt!597289 () Unit!44240)

(declare-fun lemmaListSubSeqRefl!0 (List!31713) Unit!44240)

(assert (=> b!1351778 (= lt!597289 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!687 (List!31713 List!31713) Bool)

(assert (=> b!1351778 (subseq!687 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92097 List!31713 List!31713 (_ BitVec 32)) Unit!44240)

(declare-fun $colon$colon!704 (List!31713 (_ BitVec 64)) List!31713)

(assert (=> b!1351778 (= lt!597288 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!704 acc!759 (select (arr!44492 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351778 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351779 () Bool)

(declare-fun res!897328 () Bool)

(assert (=> b!1351779 (=> (not res!897328) (not e!768595))))

(assert (=> b!1351779 (= res!897328 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45043 a!3742)))))

(declare-fun b!1351780 () Bool)

(declare-fun res!897329 () Bool)

(assert (=> b!1351780 (=> (not res!897329) (not e!768595))))

(declare-fun noDuplicate!2157 (List!31713) Bool)

(assert (=> b!1351780 (= res!897329 (noDuplicate!2157 acc!759))))

(declare-fun b!1351781 () Bool)

(declare-fun e!768594 () Bool)

(assert (=> b!1351781 (= e!768594 false)))

(declare-fun lt!597290 () Bool)

(assert (=> b!1351781 (= lt!597290 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351782 () Bool)

(declare-fun res!897325 () Bool)

(assert (=> b!1351782 (=> (not res!897325) (not e!768595))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351782 (= res!897325 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!897330 () Bool)

(assert (=> start!113992 (=> (not res!897330) (not e!768595))))

(assert (=> start!113992 (= res!897330 (and (bvslt (size!45043 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45043 a!3742))))))

(assert (=> start!113992 e!768595))

(assert (=> start!113992 true))

(declare-fun array_inv!33437 (array!92097) Bool)

(assert (=> start!113992 (array_inv!33437 a!3742)))

(declare-fun b!1351783 () Bool)

(assert (=> b!1351783 (= e!768595 e!768594)))

(declare-fun res!897331 () Bool)

(assert (=> b!1351783 (=> (not res!897331) (not e!768594))))

(assert (=> b!1351783 (= res!897331 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597287 () Unit!44240)

(assert (=> b!1351783 (= lt!597287 e!768593)))

(declare-fun c!126667 () Bool)

(assert (=> b!1351783 (= c!126667 (validKeyInArray!0 (select (arr!44492 a!3742) from!3120)))))

(declare-fun b!1351784 () Bool)

(declare-fun res!897324 () Bool)

(assert (=> b!1351784 (=> (not res!897324) (not e!768595))))

(assert (=> b!1351784 (= res!897324 (not (contains!9278 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113992 res!897330) b!1351780))

(assert (= (and b!1351780 res!897329) b!1351784))

(assert (= (and b!1351784 res!897324) b!1351773))

(assert (= (and b!1351773 res!897332) b!1351774))

(assert (= (and b!1351774 res!897326) b!1351775))

(assert (= (and b!1351775 res!897333) b!1351777))

(assert (= (and b!1351777 res!897327) b!1351782))

(assert (= (and b!1351782 res!897325) b!1351779))

(assert (= (and b!1351779 res!897328) b!1351783))

(assert (= (and b!1351783 c!126667) b!1351778))

(assert (= (and b!1351783 (not c!126667)) b!1351776))

(assert (= (and b!1351783 res!897331) b!1351781))

(declare-fun m!1238753 () Bool)

(assert (=> b!1351782 m!1238753))

(declare-fun m!1238755 () Bool)

(assert (=> b!1351783 m!1238755))

(assert (=> b!1351783 m!1238755))

(declare-fun m!1238757 () Bool)

(assert (=> b!1351783 m!1238757))

(declare-fun m!1238759 () Bool)

(assert (=> b!1351773 m!1238759))

(declare-fun m!1238761 () Bool)

(assert (=> b!1351774 m!1238761))

(declare-fun m!1238763 () Bool)

(assert (=> b!1351780 m!1238763))

(declare-fun m!1238765 () Bool)

(assert (=> start!113992 m!1238765))

(declare-fun m!1238767 () Bool)

(assert (=> b!1351775 m!1238767))

(declare-fun m!1238769 () Bool)

(assert (=> b!1351784 m!1238769))

(declare-fun m!1238771 () Bool)

(assert (=> b!1351781 m!1238771))

(declare-fun m!1238773 () Bool)

(assert (=> b!1351778 m!1238773))

(assert (=> b!1351778 m!1238755))

(declare-fun m!1238775 () Bool)

(assert (=> b!1351778 m!1238775))

(declare-fun m!1238777 () Bool)

(assert (=> b!1351778 m!1238777))

(assert (=> b!1351778 m!1238771))

(assert (=> b!1351778 m!1238755))

(assert (=> b!1351778 m!1238775))

(declare-fun m!1238779 () Bool)

(assert (=> b!1351778 m!1238779))

(check-sat (not b!1351783) (not b!1351780) (not start!113992) (not b!1351781) (not b!1351774) (not b!1351775) (not b!1351784) (not b!1351782) (not b!1351778) (not b!1351773))
(check-sat)
