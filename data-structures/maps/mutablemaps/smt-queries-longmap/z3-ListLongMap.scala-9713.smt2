; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114928 () Bool)

(assert start!114928)

(declare-fun b!1362004 () Bool)

(declare-fun res!906177 () Bool)

(declare-fun e!772624 () Bool)

(assert (=> b!1362004 (=> (not res!906177) (not e!772624))))

(declare-datatypes ((array!92586 0))(
  ( (array!92587 (arr!44723 (Array (_ BitVec 32) (_ BitVec 64))) (size!45274 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92586)

(declare-datatypes ((List!31944 0))(
  ( (Nil!31941) (Cons!31940 (h!33149 (_ BitVec 64)) (t!46636 List!31944)) )
))
(declare-fun arrayNoDuplicates!0 (array!92586 (_ BitVec 32) List!31944) Bool)

(assert (=> b!1362004 (= res!906177 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31941))))

(declare-fun b!1362005 () Bool)

(declare-datatypes ((Unit!44852 0))(
  ( (Unit!44853) )
))
(declare-fun e!772623 () Unit!44852)

(declare-fun Unit!44854 () Unit!44852)

(assert (=> b!1362005 (= e!772623 Unit!44854)))

(declare-fun res!906174 () Bool)

(assert (=> start!114928 (=> (not res!906174) (not e!772624))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114928 (= res!906174 (and (bvslt (size!45274 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45274 a!3742))))))

(assert (=> start!114928 e!772624))

(assert (=> start!114928 true))

(declare-fun array_inv!33668 (array!92586) Bool)

(assert (=> start!114928 (array_inv!33668 a!3742)))

(declare-fun b!1362006 () Bool)

(declare-fun res!906183 () Bool)

(declare-fun e!772621 () Bool)

(assert (=> b!1362006 (=> (not res!906183) (not e!772621))))

(declare-fun lt!600320 () List!31944)

(declare-fun contains!9509 (List!31944 (_ BitVec 64)) Bool)

(assert (=> b!1362006 (= res!906183 (not (contains!9509 lt!600320 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362007 () Bool)

(declare-fun res!906173 () Bool)

(assert (=> b!1362007 (=> (not res!906173) (not e!772624))))

(declare-fun acc!759 () List!31944)

(declare-fun noDuplicate!2388 (List!31944) Bool)

(assert (=> b!1362007 (= res!906173 (noDuplicate!2388 acc!759))))

(declare-fun b!1362008 () Bool)

(declare-fun res!906172 () Bool)

(assert (=> b!1362008 (=> (not res!906172) (not e!772624))))

(assert (=> b!1362008 (= res!906172 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45274 a!3742)))))

(declare-fun b!1362009 () Bool)

(declare-fun e!772620 () Bool)

(assert (=> b!1362009 (= e!772624 e!772620)))

(declare-fun res!906178 () Bool)

(assert (=> b!1362009 (=> (not res!906178) (not e!772620))))

(declare-fun lt!600317 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362009 (= res!906178 (and (not (= from!3120 i!1404)) lt!600317))))

(declare-fun lt!600318 () Unit!44852)

(assert (=> b!1362009 (= lt!600318 e!772623)))

(declare-fun c!127360 () Bool)

(assert (=> b!1362009 (= c!127360 lt!600317)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362009 (= lt!600317 (validKeyInArray!0 (select (arr!44723 a!3742) from!3120)))))

(declare-fun b!1362010 () Bool)

(declare-fun res!906181 () Bool)

(assert (=> b!1362010 (=> (not res!906181) (not e!772624))))

(assert (=> b!1362010 (= res!906181 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45274 a!3742))))))

(declare-fun b!1362011 () Bool)

(declare-fun res!906180 () Bool)

(assert (=> b!1362011 (=> (not res!906180) (not e!772624))))

(assert (=> b!1362011 (= res!906180 (not (contains!9509 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362012 () Bool)

(declare-fun res!906171 () Bool)

(assert (=> b!1362012 (=> (not res!906171) (not e!772624))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362012 (= res!906171 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362013 () Bool)

(declare-fun res!906179 () Bool)

(assert (=> b!1362013 (=> (not res!906179) (not e!772621))))

(assert (=> b!1362013 (= res!906179 (not (contains!9509 lt!600320 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362014 () Bool)

(assert (=> b!1362014 (= e!772620 e!772621)))

(declare-fun res!906176 () Bool)

(assert (=> b!1362014 (=> (not res!906176) (not e!772621))))

(assert (=> b!1362014 (= res!906176 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!905 (List!31944 (_ BitVec 64)) List!31944)

(assert (=> b!1362014 (= lt!600320 ($colon$colon!905 acc!759 (select (arr!44723 a!3742) from!3120)))))

(declare-fun b!1362015 () Bool)

(declare-fun lt!600316 () Unit!44852)

(assert (=> b!1362015 (= e!772623 lt!600316)))

(declare-fun lt!600315 () Unit!44852)

(declare-fun lemmaListSubSeqRefl!0 (List!31944) Unit!44852)

(assert (=> b!1362015 (= lt!600315 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!900 (List!31944 List!31944) Bool)

(assert (=> b!1362015 (subseq!900 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92586 List!31944 List!31944 (_ BitVec 32)) Unit!44852)

(assert (=> b!1362015 (= lt!600316 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!905 acc!759 (select (arr!44723 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362015 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362016 () Bool)

(declare-fun res!906170 () Bool)

(assert (=> b!1362016 (=> (not res!906170) (not e!772621))))

(assert (=> b!1362016 (= res!906170 (noDuplicate!2388 lt!600320))))

(declare-fun b!1362017 () Bool)

(declare-fun res!906169 () Bool)

(assert (=> b!1362017 (=> (not res!906169) (not e!772624))))

(assert (=> b!1362017 (= res!906169 (not (contains!9509 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362018 () Bool)

(declare-fun res!906175 () Bool)

(assert (=> b!1362018 (=> (not res!906175) (not e!772621))))

(assert (=> b!1362018 (= res!906175 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600320))))

(declare-fun b!1362019 () Bool)

(declare-fun res!906182 () Bool)

(assert (=> b!1362019 (=> (not res!906182) (not e!772624))))

(assert (=> b!1362019 (= res!906182 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362020 () Bool)

(assert (=> b!1362020 (= e!772621 (not true))))

(assert (=> b!1362020 (arrayNoDuplicates!0 (array!92587 (store (arr!44723 a!3742) i!1404 l!3587) (size!45274 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!600320)))

(declare-fun lt!600319 () Unit!44852)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31944) Unit!44852)

(assert (=> b!1362020 (= lt!600319 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600320))))

(assert (= (and start!114928 res!906174) b!1362007))

(assert (= (and b!1362007 res!906173) b!1362011))

(assert (= (and b!1362011 res!906180) b!1362017))

(assert (= (and b!1362017 res!906169) b!1362004))

(assert (= (and b!1362004 res!906177) b!1362019))

(assert (= (and b!1362019 res!906182) b!1362010))

(assert (= (and b!1362010 res!906181) b!1362012))

(assert (= (and b!1362012 res!906171) b!1362008))

(assert (= (and b!1362008 res!906172) b!1362009))

(assert (= (and b!1362009 c!127360) b!1362015))

(assert (= (and b!1362009 (not c!127360)) b!1362005))

(assert (= (and b!1362009 res!906178) b!1362014))

(assert (= (and b!1362014 res!906176) b!1362016))

(assert (= (and b!1362016 res!906170) b!1362006))

(assert (= (and b!1362006 res!906183) b!1362013))

(assert (= (and b!1362013 res!906179) b!1362018))

(assert (= (and b!1362018 res!906175) b!1362020))

(declare-fun m!1247011 () Bool)

(assert (=> b!1362004 m!1247011))

(declare-fun m!1247013 () Bool)

(assert (=> b!1362020 m!1247013))

(declare-fun m!1247015 () Bool)

(assert (=> b!1362020 m!1247015))

(declare-fun m!1247017 () Bool)

(assert (=> b!1362020 m!1247017))

(declare-fun m!1247019 () Bool)

(assert (=> b!1362017 m!1247019))

(declare-fun m!1247021 () Bool)

(assert (=> b!1362014 m!1247021))

(assert (=> b!1362014 m!1247021))

(declare-fun m!1247023 () Bool)

(assert (=> b!1362014 m!1247023))

(assert (=> b!1362009 m!1247021))

(assert (=> b!1362009 m!1247021))

(declare-fun m!1247025 () Bool)

(assert (=> b!1362009 m!1247025))

(declare-fun m!1247027 () Bool)

(assert (=> b!1362012 m!1247027))

(declare-fun m!1247029 () Bool)

(assert (=> b!1362007 m!1247029))

(declare-fun m!1247031 () Bool)

(assert (=> b!1362016 m!1247031))

(declare-fun m!1247033 () Bool)

(assert (=> b!1362019 m!1247033))

(declare-fun m!1247035 () Bool)

(assert (=> start!114928 m!1247035))

(declare-fun m!1247037 () Bool)

(assert (=> b!1362013 m!1247037))

(declare-fun m!1247039 () Bool)

(assert (=> b!1362018 m!1247039))

(declare-fun m!1247041 () Bool)

(assert (=> b!1362015 m!1247041))

(assert (=> b!1362015 m!1247021))

(assert (=> b!1362015 m!1247023))

(declare-fun m!1247043 () Bool)

(assert (=> b!1362015 m!1247043))

(declare-fun m!1247045 () Bool)

(assert (=> b!1362015 m!1247045))

(assert (=> b!1362015 m!1247021))

(assert (=> b!1362015 m!1247023))

(declare-fun m!1247047 () Bool)

(assert (=> b!1362015 m!1247047))

(declare-fun m!1247049 () Bool)

(assert (=> b!1362006 m!1247049))

(declare-fun m!1247051 () Bool)

(assert (=> b!1362011 m!1247051))

(check-sat (not b!1362006) (not start!114928) (not b!1362018) (not b!1362012) (not b!1362016) (not b!1362015) (not b!1362007) (not b!1362020) (not b!1362013) (not b!1362017) (not b!1362014) (not b!1362011) (not b!1362009) (not b!1362019) (not b!1362004))
(check-sat)
