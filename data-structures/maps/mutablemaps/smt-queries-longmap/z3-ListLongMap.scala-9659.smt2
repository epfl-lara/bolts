; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114130 () Bool)

(assert start!114130)

(declare-fun b!1354732 () Bool)

(declare-fun res!899882 () Bool)

(declare-fun e!769528 () Bool)

(assert (=> b!1354732 (=> (not res!899882) (not e!769528))))

(declare-datatypes ((List!31782 0))(
  ( (Nil!31779) (Cons!31778 (h!32987 (_ BitVec 64)) (t!46447 List!31782)) )
))
(declare-fun lt!598327 () List!31782)

(declare-datatypes ((array!92235 0))(
  ( (array!92236 (arr!44561 (Array (_ BitVec 32) (_ BitVec 64))) (size!45112 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92235)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92235 (_ BitVec 32) List!31782) Bool)

(assert (=> b!1354732 (= res!899882 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598327))))

(declare-fun b!1354733 () Bool)

(declare-fun res!899878 () Bool)

(declare-fun e!769527 () Bool)

(assert (=> b!1354733 (=> (not res!899878) (not e!769527))))

(assert (=> b!1354733 (= res!899878 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31779))))

(declare-fun b!1354734 () Bool)

(declare-fun res!899883 () Bool)

(assert (=> b!1354734 (=> (not res!899883) (not e!769527))))

(assert (=> b!1354734 (= res!899883 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45112 a!3742)))))

(declare-fun b!1354735 () Bool)

(declare-datatypes ((Unit!44447 0))(
  ( (Unit!44448) )
))
(declare-fun e!769526 () Unit!44447)

(declare-fun Unit!44449 () Unit!44447)

(assert (=> b!1354735 (= e!769526 Unit!44449)))

(declare-fun b!1354736 () Bool)

(declare-fun res!899875 () Bool)

(assert (=> b!1354736 (=> (not res!899875) (not e!769527))))

(declare-fun acc!759 () List!31782)

(declare-fun noDuplicate!2226 (List!31782) Bool)

(assert (=> b!1354736 (= res!899875 (noDuplicate!2226 acc!759))))

(declare-fun b!1354737 () Bool)

(declare-fun res!899881 () Bool)

(assert (=> b!1354737 (=> (not res!899881) (not e!769527))))

(assert (=> b!1354737 (= res!899881 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354738 () Bool)

(declare-fun res!899874 () Bool)

(assert (=> b!1354738 (=> (not res!899874) (not e!769527))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354738 (= res!899874 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354739 () Bool)

(declare-fun res!899872 () Bool)

(assert (=> b!1354739 (=> (not res!899872) (not e!769527))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354739 (= res!899872 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45112 a!3742))))))

(declare-fun b!1354740 () Bool)

(declare-fun res!899877 () Bool)

(assert (=> b!1354740 (=> (not res!899877) (not e!769527))))

(declare-fun contains!9347 (List!31782 (_ BitVec 64)) Bool)

(assert (=> b!1354740 (= res!899877 (not (contains!9347 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354741 () Bool)

(declare-fun res!899873 () Bool)

(assert (=> b!1354741 (=> (not res!899873) (not e!769527))))

(assert (=> b!1354741 (= res!899873 (not (contains!9347 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354742 () Bool)

(assert (=> b!1354742 (= e!769528 (not true))))

(assert (=> b!1354742 (arrayNoDuplicates!0 (array!92236 (store (arr!44561 a!3742) i!1404 l!3587) (size!45112 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598327)))

(declare-fun lt!598325 () Unit!44447)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92235 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31782) Unit!44447)

(assert (=> b!1354742 (= lt!598325 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598327))))

(declare-fun b!1354743 () Bool)

(declare-fun lt!598323 () Unit!44447)

(assert (=> b!1354743 (= e!769526 lt!598323)))

(declare-fun lt!598328 () Unit!44447)

(declare-fun lemmaListSubSeqRefl!0 (List!31782) Unit!44447)

(assert (=> b!1354743 (= lt!598328 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!756 (List!31782 List!31782) Bool)

(assert (=> b!1354743 (subseq!756 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92235 List!31782 List!31782 (_ BitVec 32)) Unit!44447)

(declare-fun $colon$colon!773 (List!31782 (_ BitVec 64)) List!31782)

(assert (=> b!1354743 (= lt!598323 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!773 acc!759 (select (arr!44561 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354743 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354744 () Bool)

(declare-fun res!899870 () Bool)

(assert (=> b!1354744 (=> (not res!899870) (not e!769528))))

(assert (=> b!1354744 (= res!899870 (noDuplicate!2226 lt!598327))))

(declare-fun b!1354745 () Bool)

(declare-fun res!899869 () Bool)

(assert (=> b!1354745 (=> (not res!899869) (not e!769528))))

(assert (=> b!1354745 (= res!899869 (not (contains!9347 lt!598327 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354746 () Bool)

(declare-fun res!899879 () Bool)

(assert (=> b!1354746 (=> (not res!899879) (not e!769528))))

(assert (=> b!1354746 (= res!899879 (not (contains!9347 lt!598327 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354747 () Bool)

(declare-fun e!769524 () Bool)

(assert (=> b!1354747 (= e!769524 e!769528)))

(declare-fun res!899880 () Bool)

(assert (=> b!1354747 (=> (not res!899880) (not e!769528))))

(assert (=> b!1354747 (= res!899880 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354747 (= lt!598327 ($colon$colon!773 acc!759 (select (arr!44561 a!3742) from!3120)))))

(declare-fun res!899876 () Bool)

(assert (=> start!114130 (=> (not res!899876) (not e!769527))))

(assert (=> start!114130 (= res!899876 (and (bvslt (size!45112 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45112 a!3742))))))

(assert (=> start!114130 e!769527))

(assert (=> start!114130 true))

(declare-fun array_inv!33506 (array!92235) Bool)

(assert (=> start!114130 (array_inv!33506 a!3742)))

(declare-fun b!1354748 () Bool)

(assert (=> b!1354748 (= e!769527 e!769524)))

(declare-fun res!899871 () Bool)

(assert (=> b!1354748 (=> (not res!899871) (not e!769524))))

(declare-fun lt!598324 () Bool)

(assert (=> b!1354748 (= res!899871 (and (not (= from!3120 i!1404)) lt!598324))))

(declare-fun lt!598326 () Unit!44447)

(assert (=> b!1354748 (= lt!598326 e!769526)))

(declare-fun c!126874 () Bool)

(assert (=> b!1354748 (= c!126874 lt!598324)))

(assert (=> b!1354748 (= lt!598324 (validKeyInArray!0 (select (arr!44561 a!3742) from!3120)))))

(assert (= (and start!114130 res!899876) b!1354736))

(assert (= (and b!1354736 res!899875) b!1354741))

(assert (= (and b!1354741 res!899873) b!1354740))

(assert (= (and b!1354740 res!899877) b!1354733))

(assert (= (and b!1354733 res!899878) b!1354737))

(assert (= (and b!1354737 res!899881) b!1354739))

(assert (= (and b!1354739 res!899872) b!1354738))

(assert (= (and b!1354738 res!899874) b!1354734))

(assert (= (and b!1354734 res!899883) b!1354748))

(assert (= (and b!1354748 c!126874) b!1354743))

(assert (= (and b!1354748 (not c!126874)) b!1354735))

(assert (= (and b!1354748 res!899871) b!1354747))

(assert (= (and b!1354747 res!899880) b!1354744))

(assert (= (and b!1354744 res!899870) b!1354745))

(assert (= (and b!1354745 res!899869) b!1354746))

(assert (= (and b!1354746 res!899879) b!1354732))

(assert (= (and b!1354732 res!899882) b!1354742))

(declare-fun m!1241071 () Bool)

(assert (=> b!1354746 m!1241071))

(declare-fun m!1241073 () Bool)

(assert (=> b!1354741 m!1241073))

(declare-fun m!1241075 () Bool)

(assert (=> b!1354738 m!1241075))

(declare-fun m!1241077 () Bool)

(assert (=> b!1354732 m!1241077))

(declare-fun m!1241079 () Bool)

(assert (=> b!1354737 m!1241079))

(declare-fun m!1241081 () Bool)

(assert (=> b!1354744 m!1241081))

(declare-fun m!1241083 () Bool)

(assert (=> b!1354740 m!1241083))

(declare-fun m!1241085 () Bool)

(assert (=> b!1354748 m!1241085))

(assert (=> b!1354748 m!1241085))

(declare-fun m!1241087 () Bool)

(assert (=> b!1354748 m!1241087))

(declare-fun m!1241089 () Bool)

(assert (=> start!114130 m!1241089))

(declare-fun m!1241091 () Bool)

(assert (=> b!1354733 m!1241091))

(declare-fun m!1241093 () Bool)

(assert (=> b!1354742 m!1241093))

(declare-fun m!1241095 () Bool)

(assert (=> b!1354742 m!1241095))

(declare-fun m!1241097 () Bool)

(assert (=> b!1354742 m!1241097))

(assert (=> b!1354747 m!1241085))

(assert (=> b!1354747 m!1241085))

(declare-fun m!1241099 () Bool)

(assert (=> b!1354747 m!1241099))

(declare-fun m!1241101 () Bool)

(assert (=> b!1354743 m!1241101))

(assert (=> b!1354743 m!1241085))

(assert (=> b!1354743 m!1241099))

(declare-fun m!1241103 () Bool)

(assert (=> b!1354743 m!1241103))

(declare-fun m!1241105 () Bool)

(assert (=> b!1354743 m!1241105))

(assert (=> b!1354743 m!1241085))

(assert (=> b!1354743 m!1241099))

(declare-fun m!1241107 () Bool)

(assert (=> b!1354743 m!1241107))

(declare-fun m!1241109 () Bool)

(assert (=> b!1354745 m!1241109))

(declare-fun m!1241111 () Bool)

(assert (=> b!1354736 m!1241111))

(check-sat (not b!1354736) (not b!1354747) (not start!114130) (not b!1354740) (not b!1354748) (not b!1354733) (not b!1354746) (not b!1354737) (not b!1354743) (not b!1354741) (not b!1354744) (not b!1354732) (not b!1354738) (not b!1354745) (not b!1354742))
(check-sat)
