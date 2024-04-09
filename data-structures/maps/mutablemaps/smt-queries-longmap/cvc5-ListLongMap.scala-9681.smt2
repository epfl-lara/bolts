; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114260 () Bool)

(assert start!114260)

(declare-fun b!1356827 () Bool)

(declare-fun res!901705 () Bool)

(declare-fun e!770187 () Bool)

(assert (=> b!1356827 (=> (not res!901705) (not e!770187))))

(declare-datatypes ((List!31847 0))(
  ( (Nil!31844) (Cons!31843 (h!33052 (_ BitVec 64)) (t!46512 List!31847)) )
))
(declare-fun acc!759 () List!31847)

(declare-fun contains!9412 (List!31847 (_ BitVec 64)) Bool)

(assert (=> b!1356827 (= res!901705 (not (contains!9412 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901711 () Bool)

(assert (=> start!114260 (=> (not res!901711) (not e!770187))))

(declare-datatypes ((array!92365 0))(
  ( (array!92366 (arr!44626 (Array (_ BitVec 32) (_ BitVec 64))) (size!45177 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92365)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114260 (= res!901711 (and (bvslt (size!45177 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45177 a!3742))))))

(assert (=> start!114260 e!770187))

(assert (=> start!114260 true))

(declare-fun array_inv!33571 (array!92365) Bool)

(assert (=> start!114260 (array_inv!33571 a!3742)))

(declare-fun b!1356828 () Bool)

(declare-fun res!901708 () Bool)

(assert (=> b!1356828 (=> (not res!901708) (not e!770187))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356828 (= res!901708 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356829 () Bool)

(declare-fun res!901712 () Bool)

(assert (=> b!1356829 (=> (not res!901712) (not e!770187))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356829 (= res!901712 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45177 a!3742))))))

(declare-fun b!1356830 () Bool)

(declare-fun res!901710 () Bool)

(assert (=> b!1356830 (=> (not res!901710) (not e!770187))))

(declare-fun arrayNoDuplicates!0 (array!92365 (_ BitVec 32) List!31847) Bool)

(assert (=> b!1356830 (= res!901710 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31844))))

(declare-fun b!1356831 () Bool)

(declare-fun res!901706 () Bool)

(assert (=> b!1356831 (=> (not res!901706) (not e!770187))))

(declare-fun noDuplicate!2291 (List!31847) Bool)

(assert (=> b!1356831 (= res!901706 (noDuplicate!2291 acc!759))))

(declare-fun b!1356832 () Bool)

(declare-fun res!901704 () Bool)

(assert (=> b!1356832 (=> (not res!901704) (not e!770187))))

(assert (=> b!1356832 (= res!901704 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356833 () Bool)

(assert (=> b!1356833 (= e!770187 (not true))))

(declare-fun subseq!803 (List!31847 List!31847) Bool)

(assert (=> b!1356833 (subseq!803 acc!759 acc!759)))

(declare-datatypes ((Unit!44585 0))(
  ( (Unit!44586) )
))
(declare-fun lt!599033 () Unit!44585)

(declare-fun lemmaListSubSeqRefl!0 (List!31847) Unit!44585)

(assert (=> b!1356833 (= lt!599033 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356834 () Bool)

(declare-fun res!901709 () Bool)

(assert (=> b!1356834 (=> (not res!901709) (not e!770187))))

(assert (=> b!1356834 (= res!901709 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45177 a!3742)))))

(declare-fun b!1356835 () Bool)

(declare-fun res!901713 () Bool)

(assert (=> b!1356835 (=> (not res!901713) (not e!770187))))

(assert (=> b!1356835 (= res!901713 (not (contains!9412 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356836 () Bool)

(declare-fun res!901707 () Bool)

(assert (=> b!1356836 (=> (not res!901707) (not e!770187))))

(assert (=> b!1356836 (= res!901707 (validKeyInArray!0 (select (arr!44626 a!3742) from!3120)))))

(assert (= (and start!114260 res!901711) b!1356831))

(assert (= (and b!1356831 res!901706) b!1356835))

(assert (= (and b!1356835 res!901713) b!1356827))

(assert (= (and b!1356827 res!901705) b!1356830))

(assert (= (and b!1356830 res!901710) b!1356832))

(assert (= (and b!1356832 res!901704) b!1356829))

(assert (= (and b!1356829 res!901712) b!1356828))

(assert (= (and b!1356828 res!901708) b!1356834))

(assert (= (and b!1356834 res!901709) b!1356836))

(assert (= (and b!1356836 res!901707) b!1356833))

(declare-fun m!1242739 () Bool)

(assert (=> b!1356835 m!1242739))

(declare-fun m!1242741 () Bool)

(assert (=> b!1356836 m!1242741))

(assert (=> b!1356836 m!1242741))

(declare-fun m!1242743 () Bool)

(assert (=> b!1356836 m!1242743))

(declare-fun m!1242745 () Bool)

(assert (=> b!1356832 m!1242745))

(declare-fun m!1242747 () Bool)

(assert (=> b!1356833 m!1242747))

(declare-fun m!1242749 () Bool)

(assert (=> b!1356833 m!1242749))

(declare-fun m!1242751 () Bool)

(assert (=> start!114260 m!1242751))

(declare-fun m!1242753 () Bool)

(assert (=> b!1356831 m!1242753))

(declare-fun m!1242755 () Bool)

(assert (=> b!1356830 m!1242755))

(declare-fun m!1242757 () Bool)

(assert (=> b!1356827 m!1242757))

(declare-fun m!1242759 () Bool)

(assert (=> b!1356828 m!1242759))

(push 1)

(assert (not start!114260))

(assert (not b!1356831))

(assert (not b!1356833))

(assert (not b!1356827))

(assert (not b!1356830))

(assert (not b!1356836))

(assert (not b!1356835))

(assert (not b!1356832))

(assert (not b!1356828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

