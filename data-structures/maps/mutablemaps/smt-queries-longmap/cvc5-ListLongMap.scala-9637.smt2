; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113996 () Bool)

(assert start!113996)

(declare-fun res!897393 () Bool)

(declare-fun e!768617 () Bool)

(assert (=> start!113996 (=> (not res!897393) (not e!768617))))

(declare-datatypes ((array!92101 0))(
  ( (array!92102 (arr!44494 (Array (_ BitVec 32) (_ BitVec 64))) (size!45045 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92101)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113996 (= res!897393 (and (bvslt (size!45045 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45045 a!3742))))))

(assert (=> start!113996 e!768617))

(assert (=> start!113996 true))

(declare-fun array_inv!33439 (array!92101) Bool)

(assert (=> start!113996 (array_inv!33439 a!3742)))

(declare-fun b!1351845 () Bool)

(declare-fun res!897392 () Bool)

(assert (=> b!1351845 (=> (not res!897392) (not e!768617))))

(declare-datatypes ((List!31715 0))(
  ( (Nil!31712) (Cons!31711 (h!32920 (_ BitVec 64)) (t!46380 List!31715)) )
))
(declare-fun arrayNoDuplicates!0 (array!92101 (_ BitVec 32) List!31715) Bool)

(assert (=> b!1351845 (= res!897392 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31712))))

(declare-fun b!1351846 () Bool)

(declare-fun res!897388 () Bool)

(assert (=> b!1351846 (=> (not res!897388) (not e!768617))))

(declare-fun acc!759 () List!31715)

(declare-fun contains!9280 (List!31715 (_ BitVec 64)) Bool)

(assert (=> b!1351846 (= res!897388 (not (contains!9280 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351847 () Bool)

(declare-fun res!897390 () Bool)

(assert (=> b!1351847 (=> (not res!897390) (not e!768617))))

(assert (=> b!1351847 (= res!897390 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351848 () Bool)

(declare-fun res!897391 () Bool)

(assert (=> b!1351848 (=> (not res!897391) (not e!768617))))

(declare-fun noDuplicate!2159 (List!31715) Bool)

(assert (=> b!1351848 (= res!897391 (noDuplicate!2159 acc!759))))

(declare-fun b!1351849 () Bool)

(declare-datatypes ((Unit!44246 0))(
  ( (Unit!44247) )
))
(declare-fun e!768619 () Unit!44246)

(declare-fun lt!597313 () Unit!44246)

(assert (=> b!1351849 (= e!768619 lt!597313)))

(declare-fun lt!597312 () Unit!44246)

(declare-fun lemmaListSubSeqRefl!0 (List!31715) Unit!44246)

(assert (=> b!1351849 (= lt!597312 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!689 (List!31715 List!31715) Bool)

(assert (=> b!1351849 (subseq!689 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92101 List!31715 List!31715 (_ BitVec 32)) Unit!44246)

(declare-fun $colon$colon!706 (List!31715 (_ BitVec 64)) List!31715)

(assert (=> b!1351849 (= lt!597313 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!706 acc!759 (select (arr!44494 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351849 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351850 () Bool)

(declare-fun res!897387 () Bool)

(assert (=> b!1351850 (=> (not res!897387) (not e!768617))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351850 (= res!897387 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351851 () Bool)

(declare-fun res!897384 () Bool)

(assert (=> b!1351851 (=> (not res!897384) (not e!768617))))

(assert (=> b!1351851 (= res!897384 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45045 a!3742)))))

(declare-fun b!1351852 () Bool)

(declare-fun Unit!44248 () Unit!44246)

(assert (=> b!1351852 (= e!768619 Unit!44248)))

(declare-fun b!1351853 () Bool)

(declare-fun res!897389 () Bool)

(assert (=> b!1351853 (=> (not res!897389) (not e!768617))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351853 (= res!897389 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45045 a!3742))))))

(declare-fun b!1351854 () Bool)

(declare-fun e!768618 () Bool)

(assert (=> b!1351854 (= e!768618 false)))

(declare-fun lt!597311 () Bool)

(assert (=> b!1351854 (= lt!597311 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351855 () Bool)

(assert (=> b!1351855 (= e!768617 e!768618)))

(declare-fun res!897386 () Bool)

(assert (=> b!1351855 (=> (not res!897386) (not e!768618))))

(assert (=> b!1351855 (= res!897386 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597314 () Unit!44246)

(assert (=> b!1351855 (= lt!597314 e!768619)))

(declare-fun c!126673 () Bool)

(assert (=> b!1351855 (= c!126673 (validKeyInArray!0 (select (arr!44494 a!3742) from!3120)))))

(declare-fun b!1351856 () Bool)

(declare-fun res!897385 () Bool)

(assert (=> b!1351856 (=> (not res!897385) (not e!768617))))

(assert (=> b!1351856 (= res!897385 (not (contains!9280 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113996 res!897393) b!1351848))

(assert (= (and b!1351848 res!897391) b!1351856))

(assert (= (and b!1351856 res!897385) b!1351846))

(assert (= (and b!1351846 res!897388) b!1351845))

(assert (= (and b!1351845 res!897392) b!1351847))

(assert (= (and b!1351847 res!897390) b!1351853))

(assert (= (and b!1351853 res!897389) b!1351850))

(assert (= (and b!1351850 res!897387) b!1351851))

(assert (= (and b!1351851 res!897384) b!1351855))

(assert (= (and b!1351855 c!126673) b!1351849))

(assert (= (and b!1351855 (not c!126673)) b!1351852))

(assert (= (and b!1351855 res!897386) b!1351854))

(declare-fun m!1238809 () Bool)

(assert (=> b!1351847 m!1238809))

(declare-fun m!1238811 () Bool)

(assert (=> b!1351848 m!1238811))

(declare-fun m!1238813 () Bool)

(assert (=> start!113996 m!1238813))

(declare-fun m!1238815 () Bool)

(assert (=> b!1351849 m!1238815))

(declare-fun m!1238817 () Bool)

(assert (=> b!1351849 m!1238817))

(declare-fun m!1238819 () Bool)

(assert (=> b!1351849 m!1238819))

(declare-fun m!1238821 () Bool)

(assert (=> b!1351849 m!1238821))

(declare-fun m!1238823 () Bool)

(assert (=> b!1351849 m!1238823))

(assert (=> b!1351849 m!1238817))

(assert (=> b!1351849 m!1238819))

(declare-fun m!1238825 () Bool)

(assert (=> b!1351849 m!1238825))

(declare-fun m!1238827 () Bool)

(assert (=> b!1351845 m!1238827))

(declare-fun m!1238829 () Bool)

(assert (=> b!1351846 m!1238829))

(assert (=> b!1351855 m!1238817))

(assert (=> b!1351855 m!1238817))

(declare-fun m!1238831 () Bool)

(assert (=> b!1351855 m!1238831))

(declare-fun m!1238833 () Bool)

(assert (=> b!1351856 m!1238833))

(declare-fun m!1238835 () Bool)

(assert (=> b!1351850 m!1238835))

(assert (=> b!1351854 m!1238823))

(push 1)

