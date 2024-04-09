; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114918 () Bool)

(assert start!114918)

(declare-fun b!1361750 () Bool)

(declare-fun res!905949 () Bool)

(declare-fun e!772547 () Bool)

(assert (=> b!1361750 (=> (not res!905949) (not e!772547))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92576 0))(
  ( (array!92577 (arr!44718 (Array (_ BitVec 32) (_ BitVec 64))) (size!45269 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92576)

(assert (=> b!1361750 (= res!905949 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45269 a!3742)))))

(declare-fun b!1361751 () Bool)

(declare-fun res!905946 () Bool)

(assert (=> b!1361751 (=> (not res!905946) (not e!772547))))

(declare-datatypes ((List!31939 0))(
  ( (Nil!31936) (Cons!31935 (h!33144 (_ BitVec 64)) (t!46631 List!31939)) )
))
(declare-fun acc!759 () List!31939)

(declare-fun arrayNoDuplicates!0 (array!92576 (_ BitVec 32) List!31939) Bool)

(assert (=> b!1361751 (= res!905946 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361752 () Bool)

(declare-fun res!905948 () Bool)

(declare-fun e!772546 () Bool)

(assert (=> b!1361752 (=> (not res!905948) (not e!772546))))

(declare-fun lt!600234 () List!31939)

(declare-fun contains!9504 (List!31939 (_ BitVec 64)) Bool)

(assert (=> b!1361752 (= res!905948 (not (contains!9504 lt!600234 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361753 () Bool)

(declare-fun res!905953 () Bool)

(assert (=> b!1361753 (=> (not res!905953) (not e!772546))))

(assert (=> b!1361753 (= res!905953 (not (contains!9504 lt!600234 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361754 () Bool)

(declare-fun res!905951 () Bool)

(assert (=> b!1361754 (=> (not res!905951) (not e!772547))))

(assert (=> b!1361754 (= res!905951 (not (contains!9504 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361755 () Bool)

(assert (=> b!1361755 (= e!772546 false)))

(declare-fun lt!600235 () Bool)

(assert (=> b!1361755 (= lt!600235 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600234))))

(declare-fun res!905956 () Bool)

(assert (=> start!114918 (=> (not res!905956) (not e!772547))))

(assert (=> start!114918 (= res!905956 (and (bvslt (size!45269 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45269 a!3742))))))

(assert (=> start!114918 e!772547))

(assert (=> start!114918 true))

(declare-fun array_inv!33663 (array!92576) Bool)

(assert (=> start!114918 (array_inv!33663 a!3742)))

(declare-fun b!1361756 () Bool)

(declare-fun res!905954 () Bool)

(assert (=> b!1361756 (=> (not res!905954) (not e!772547))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361756 (= res!905954 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45269 a!3742))))))

(declare-fun b!1361757 () Bool)

(declare-fun res!905950 () Bool)

(assert (=> b!1361757 (=> (not res!905950) (not e!772547))))

(assert (=> b!1361757 (= res!905950 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31936))))

(declare-fun b!1361758 () Bool)

(declare-datatypes ((Unit!44837 0))(
  ( (Unit!44838) )
))
(declare-fun e!772549 () Unit!44837)

(declare-fun lt!600236 () Unit!44837)

(assert (=> b!1361758 (= e!772549 lt!600236)))

(declare-fun lt!600237 () Unit!44837)

(declare-fun lemmaListSubSeqRefl!0 (List!31939) Unit!44837)

(assert (=> b!1361758 (= lt!600237 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!895 (List!31939 List!31939) Bool)

(assert (=> b!1361758 (subseq!895 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92576 List!31939 List!31939 (_ BitVec 32)) Unit!44837)

(declare-fun $colon$colon!900 (List!31939 (_ BitVec 64)) List!31939)

(assert (=> b!1361758 (= lt!600236 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!900 acc!759 (select (arr!44718 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361758 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361759 () Bool)

(declare-fun res!905947 () Bool)

(assert (=> b!1361759 (=> (not res!905947) (not e!772547))))

(assert (=> b!1361759 (= res!905947 (not (contains!9504 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361760 () Bool)

(declare-fun res!905945 () Bool)

(assert (=> b!1361760 (=> (not res!905945) (not e!772547))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361760 (= res!905945 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361761 () Bool)

(declare-fun e!772545 () Bool)

(assert (=> b!1361761 (= e!772547 e!772545)))

(declare-fun res!905955 () Bool)

(assert (=> b!1361761 (=> (not res!905955) (not e!772545))))

(declare-fun lt!600238 () Bool)

(assert (=> b!1361761 (= res!905955 (and (not (= from!3120 i!1404)) lt!600238))))

(declare-fun lt!600239 () Unit!44837)

(assert (=> b!1361761 (= lt!600239 e!772549)))

(declare-fun c!127345 () Bool)

(assert (=> b!1361761 (= c!127345 lt!600238)))

(assert (=> b!1361761 (= lt!600238 (validKeyInArray!0 (select (arr!44718 a!3742) from!3120)))))

(declare-fun b!1361762 () Bool)

(declare-fun Unit!44839 () Unit!44837)

(assert (=> b!1361762 (= e!772549 Unit!44839)))

(declare-fun b!1361763 () Bool)

(assert (=> b!1361763 (= e!772545 e!772546)))

(declare-fun res!905952 () Bool)

(assert (=> b!1361763 (=> (not res!905952) (not e!772546))))

(assert (=> b!1361763 (= res!905952 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361763 (= lt!600234 ($colon$colon!900 acc!759 (select (arr!44718 a!3742) from!3120)))))

(declare-fun b!1361764 () Bool)

(declare-fun res!905957 () Bool)

(assert (=> b!1361764 (=> (not res!905957) (not e!772547))))

(declare-fun noDuplicate!2383 (List!31939) Bool)

(assert (=> b!1361764 (= res!905957 (noDuplicate!2383 acc!759))))

(declare-fun b!1361765 () Bool)

(declare-fun res!905958 () Bool)

(assert (=> b!1361765 (=> (not res!905958) (not e!772546))))

(assert (=> b!1361765 (= res!905958 (noDuplicate!2383 lt!600234))))

(assert (= (and start!114918 res!905956) b!1361764))

(assert (= (and b!1361764 res!905957) b!1361754))

(assert (= (and b!1361754 res!905951) b!1361759))

(assert (= (and b!1361759 res!905947) b!1361757))

(assert (= (and b!1361757 res!905950) b!1361751))

(assert (= (and b!1361751 res!905946) b!1361756))

(assert (= (and b!1361756 res!905954) b!1361760))

(assert (= (and b!1361760 res!905945) b!1361750))

(assert (= (and b!1361750 res!905949) b!1361761))

(assert (= (and b!1361761 c!127345) b!1361758))

(assert (= (and b!1361761 (not c!127345)) b!1361762))

(assert (= (and b!1361761 res!905955) b!1361763))

(assert (= (and b!1361763 res!905952) b!1361765))

(assert (= (and b!1361765 res!905958) b!1361753))

(assert (= (and b!1361753 res!905953) b!1361752))

(assert (= (and b!1361752 res!905948) b!1361755))

(declare-fun m!1246825 () Bool)

(assert (=> b!1361761 m!1246825))

(assert (=> b!1361761 m!1246825))

(declare-fun m!1246827 () Bool)

(assert (=> b!1361761 m!1246827))

(declare-fun m!1246829 () Bool)

(assert (=> b!1361759 m!1246829))

(declare-fun m!1246831 () Bool)

(assert (=> start!114918 m!1246831))

(declare-fun m!1246833 () Bool)

(assert (=> b!1361754 m!1246833))

(declare-fun m!1246835 () Bool)

(assert (=> b!1361758 m!1246835))

(assert (=> b!1361758 m!1246825))

(declare-fun m!1246837 () Bool)

(assert (=> b!1361758 m!1246837))

(declare-fun m!1246839 () Bool)

(assert (=> b!1361758 m!1246839))

(declare-fun m!1246841 () Bool)

(assert (=> b!1361758 m!1246841))

(assert (=> b!1361758 m!1246825))

(assert (=> b!1361758 m!1246837))

(declare-fun m!1246843 () Bool)

(assert (=> b!1361758 m!1246843))

(declare-fun m!1246845 () Bool)

(assert (=> b!1361752 m!1246845))

(declare-fun m!1246847 () Bool)

(assert (=> b!1361757 m!1246847))

(declare-fun m!1246849 () Bool)

(assert (=> b!1361765 m!1246849))

(declare-fun m!1246851 () Bool)

(assert (=> b!1361755 m!1246851))

(assert (=> b!1361763 m!1246825))

(assert (=> b!1361763 m!1246825))

(assert (=> b!1361763 m!1246837))

(declare-fun m!1246853 () Bool)

(assert (=> b!1361764 m!1246853))

(declare-fun m!1246855 () Bool)

(assert (=> b!1361751 m!1246855))

(declare-fun m!1246857 () Bool)

(assert (=> b!1361753 m!1246857))

(declare-fun m!1246859 () Bool)

(assert (=> b!1361760 m!1246859))

(push 1)

