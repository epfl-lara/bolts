; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114088 () Bool)

(assert start!114088)

(declare-fun b!1353701 () Bool)

(declare-fun e!769212 () Bool)

(assert (=> b!1353701 (= e!769212 false)))

(declare-fun lt!597946 () Bool)

(declare-datatypes ((List!31761 0))(
  ( (Nil!31758) (Cons!31757 (h!32966 (_ BitVec 64)) (t!46426 List!31761)) )
))
(declare-fun lt!597949 () List!31761)

(declare-datatypes ((array!92193 0))(
  ( (array!92194 (arr!44540 (Array (_ BitVec 32) (_ BitVec 64))) (size!45091 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92193)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92193 (_ BitVec 32) List!31761) Bool)

(assert (=> b!1353701 (= lt!597946 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597949))))

(declare-fun b!1353703 () Bool)

(declare-fun res!898971 () Bool)

(assert (=> b!1353703 (=> (not res!898971) (not e!769212))))

(declare-fun contains!9326 (List!31761 (_ BitVec 64)) Bool)

(assert (=> b!1353703 (= res!898971 (not (contains!9326 lt!597949 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353704 () Bool)

(declare-fun e!769213 () Bool)

(declare-fun e!769210 () Bool)

(assert (=> b!1353704 (= e!769213 e!769210)))

(declare-fun res!898976 () Bool)

(assert (=> b!1353704 (=> (not res!898976) (not e!769210))))

(declare-fun lt!597947 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353704 (= res!898976 (and (not (= from!3120 i!1404)) lt!597947))))

(declare-datatypes ((Unit!44384 0))(
  ( (Unit!44385) )
))
(declare-fun lt!597948 () Unit!44384)

(declare-fun e!769209 () Unit!44384)

(assert (=> b!1353704 (= lt!597948 e!769209)))

(declare-fun c!126811 () Bool)

(assert (=> b!1353704 (= c!126811 lt!597947)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353704 (= lt!597947 (validKeyInArray!0 (select (arr!44540 a!3742) from!3120)))))

(declare-fun b!1353705 () Bool)

(declare-fun res!898974 () Bool)

(assert (=> b!1353705 (=> (not res!898974) (not e!769213))))

(assert (=> b!1353705 (= res!898974 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45091 a!3742))))))

(declare-fun b!1353706 () Bool)

(declare-fun res!898970 () Bool)

(assert (=> b!1353706 (=> (not res!898970) (not e!769213))))

(declare-fun acc!759 () List!31761)

(declare-fun noDuplicate!2205 (List!31761) Bool)

(assert (=> b!1353706 (= res!898970 (noDuplicate!2205 acc!759))))

(declare-fun b!1353707 () Bool)

(declare-fun res!898965 () Bool)

(assert (=> b!1353707 (=> (not res!898965) (not e!769213))))

(assert (=> b!1353707 (= res!898965 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45091 a!3742)))))

(declare-fun b!1353702 () Bool)

(declare-fun res!898968 () Bool)

(assert (=> b!1353702 (=> (not res!898968) (not e!769213))))

(assert (=> b!1353702 (= res!898968 (not (contains!9326 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!898972 () Bool)

(assert (=> start!114088 (=> (not res!898972) (not e!769213))))

(assert (=> start!114088 (= res!898972 (and (bvslt (size!45091 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45091 a!3742))))))

(assert (=> start!114088 e!769213))

(assert (=> start!114088 true))

(declare-fun array_inv!33485 (array!92193) Bool)

(assert (=> start!114088 (array_inv!33485 a!3742)))

(declare-fun b!1353708 () Bool)

(declare-fun Unit!44386 () Unit!44384)

(assert (=> b!1353708 (= e!769209 Unit!44386)))

(declare-fun b!1353709 () Bool)

(declare-fun res!898973 () Bool)

(assert (=> b!1353709 (=> (not res!898973) (not e!769212))))

(assert (=> b!1353709 (= res!898973 (noDuplicate!2205 lt!597949))))

(declare-fun b!1353710 () Bool)

(declare-fun lt!597950 () Unit!44384)

(assert (=> b!1353710 (= e!769209 lt!597950)))

(declare-fun lt!597945 () Unit!44384)

(declare-fun lemmaListSubSeqRefl!0 (List!31761) Unit!44384)

(assert (=> b!1353710 (= lt!597945 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!735 (List!31761 List!31761) Bool)

(assert (=> b!1353710 (subseq!735 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92193 List!31761 List!31761 (_ BitVec 32)) Unit!44384)

(declare-fun $colon$colon!752 (List!31761 (_ BitVec 64)) List!31761)

(assert (=> b!1353710 (= lt!597950 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!752 acc!759 (select (arr!44540 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353710 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353711 () Bool)

(declare-fun res!898977 () Bool)

(assert (=> b!1353711 (=> (not res!898977) (not e!769213))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353711 (= res!898977 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353712 () Bool)

(declare-fun res!898969 () Bool)

(assert (=> b!1353712 (=> (not res!898969) (not e!769213))))

(assert (=> b!1353712 (= res!898969 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31758))))

(declare-fun b!1353713 () Bool)

(declare-fun res!898964 () Bool)

(assert (=> b!1353713 (=> (not res!898964) (not e!769213))))

(assert (=> b!1353713 (= res!898964 (not (contains!9326 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353714 () Bool)

(declare-fun res!898975 () Bool)

(assert (=> b!1353714 (=> (not res!898975) (not e!769213))))

(assert (=> b!1353714 (= res!898975 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353715 () Bool)

(assert (=> b!1353715 (= e!769210 e!769212)))

(declare-fun res!898967 () Bool)

(assert (=> b!1353715 (=> (not res!898967) (not e!769212))))

(assert (=> b!1353715 (= res!898967 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353715 (= lt!597949 ($colon$colon!752 acc!759 (select (arr!44540 a!3742) from!3120)))))

(declare-fun b!1353716 () Bool)

(declare-fun res!898966 () Bool)

(assert (=> b!1353716 (=> (not res!898966) (not e!769212))))

(assert (=> b!1353716 (= res!898966 (not (contains!9326 lt!597949 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114088 res!898972) b!1353706))

(assert (= (and b!1353706 res!898970) b!1353713))

(assert (= (and b!1353713 res!898964) b!1353702))

(assert (= (and b!1353702 res!898968) b!1353712))

(assert (= (and b!1353712 res!898969) b!1353714))

(assert (= (and b!1353714 res!898975) b!1353705))

(assert (= (and b!1353705 res!898974) b!1353711))

(assert (= (and b!1353711 res!898977) b!1353707))

(assert (= (and b!1353707 res!898965) b!1353704))

(assert (= (and b!1353704 c!126811) b!1353710))

(assert (= (and b!1353704 (not c!126811)) b!1353708))

(assert (= (and b!1353704 res!898976) b!1353715))

(assert (= (and b!1353715 res!898967) b!1353709))

(assert (= (and b!1353709 res!898973) b!1353716))

(assert (= (and b!1353716 res!898966) b!1353703))

(assert (= (and b!1353703 res!898971) b!1353701))

(declare-fun m!1240273 () Bool)

(assert (=> b!1353711 m!1240273))

(declare-fun m!1240275 () Bool)

(assert (=> b!1353701 m!1240275))

(declare-fun m!1240277 () Bool)

(assert (=> b!1353713 m!1240277))

(declare-fun m!1240279 () Bool)

(assert (=> b!1353704 m!1240279))

(assert (=> b!1353704 m!1240279))

(declare-fun m!1240281 () Bool)

(assert (=> b!1353704 m!1240281))

(declare-fun m!1240283 () Bool)

(assert (=> b!1353709 m!1240283))

(declare-fun m!1240285 () Bool)

(assert (=> b!1353712 m!1240285))

(declare-fun m!1240287 () Bool)

(assert (=> start!114088 m!1240287))

(declare-fun m!1240289 () Bool)

(assert (=> b!1353706 m!1240289))

(declare-fun m!1240291 () Bool)

(assert (=> b!1353702 m!1240291))

(declare-fun m!1240293 () Bool)

(assert (=> b!1353703 m!1240293))

(assert (=> b!1353715 m!1240279))

(assert (=> b!1353715 m!1240279))

(declare-fun m!1240295 () Bool)

(assert (=> b!1353715 m!1240295))

(declare-fun m!1240297 () Bool)

(assert (=> b!1353716 m!1240297))

(declare-fun m!1240299 () Bool)

(assert (=> b!1353714 m!1240299))

(declare-fun m!1240301 () Bool)

(assert (=> b!1353710 m!1240301))

(assert (=> b!1353710 m!1240279))

(assert (=> b!1353710 m!1240295))

(declare-fun m!1240303 () Bool)

(assert (=> b!1353710 m!1240303))

(declare-fun m!1240305 () Bool)

(assert (=> b!1353710 m!1240305))

(assert (=> b!1353710 m!1240279))

(assert (=> b!1353710 m!1240295))

(declare-fun m!1240307 () Bool)

(assert (=> b!1353710 m!1240307))

(check-sat (not b!1353712) (not b!1353704) (not b!1353709) (not b!1353702) (not b!1353701) (not b!1353716) (not b!1353713) (not b!1353703) (not b!1353714) (not b!1353715) (not b!1353711) (not b!1353710) (not start!114088) (not b!1353706))
(check-sat)
