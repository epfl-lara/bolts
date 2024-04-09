; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114004 () Bool)

(assert start!114004)

(declare-fun b!1351989 () Bool)

(declare-fun res!897510 () Bool)

(declare-fun e!768666 () Bool)

(assert (=> b!1351989 (=> (not res!897510) (not e!768666))))

(declare-datatypes ((List!31719 0))(
  ( (Nil!31716) (Cons!31715 (h!32924 (_ BitVec 64)) (t!46384 List!31719)) )
))
(declare-fun acc!759 () List!31719)

(declare-fun contains!9284 (List!31719 (_ BitVec 64)) Bool)

(assert (=> b!1351989 (= res!897510 (not (contains!9284 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351990 () Bool)

(declare-fun res!897513 () Bool)

(assert (=> b!1351990 (=> (not res!897513) (not e!768666))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92109 0))(
  ( (array!92110 (arr!44498 (Array (_ BitVec 32) (_ BitVec 64))) (size!45049 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92109)

(assert (=> b!1351990 (= res!897513 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45049 a!3742)))))

(declare-fun b!1351992 () Bool)

(declare-datatypes ((Unit!44258 0))(
  ( (Unit!44259) )
))
(declare-fun e!768664 () Unit!44258)

(declare-fun Unit!44260 () Unit!44258)

(assert (=> b!1351992 (= e!768664 Unit!44260)))

(declare-fun b!1351993 () Bool)

(declare-fun res!897511 () Bool)

(assert (=> b!1351993 (=> (not res!897511) (not e!768666))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351993 (= res!897511 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351994 () Bool)

(declare-fun res!897506 () Bool)

(assert (=> b!1351994 (=> (not res!897506) (not e!768666))))

(declare-fun noDuplicate!2163 (List!31719) Bool)

(assert (=> b!1351994 (= res!897506 (noDuplicate!2163 acc!759))))

(declare-fun b!1351995 () Bool)

(declare-fun res!897504 () Bool)

(assert (=> b!1351995 (=> (not res!897504) (not e!768666))))

(declare-fun arrayNoDuplicates!0 (array!92109 (_ BitVec 32) List!31719) Bool)

(assert (=> b!1351995 (= res!897504 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351996 () Bool)

(declare-fun res!897507 () Bool)

(assert (=> b!1351996 (=> (not res!897507) (not e!768666))))

(assert (=> b!1351996 (= res!897507 (not (contains!9284 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351997 () Bool)

(declare-fun res!897508 () Bool)

(assert (=> b!1351997 (=> (not res!897508) (not e!768666))))

(assert (=> b!1351997 (= res!897508 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31716))))

(declare-fun b!1351998 () Bool)

(declare-fun lt!597359 () Unit!44258)

(assert (=> b!1351998 (= e!768664 lt!597359)))

(declare-fun lt!597361 () Unit!44258)

(declare-fun lemmaListSubSeqRefl!0 (List!31719) Unit!44258)

(assert (=> b!1351998 (= lt!597361 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!693 (List!31719 List!31719) Bool)

(assert (=> b!1351998 (subseq!693 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92109 List!31719 List!31719 (_ BitVec 32)) Unit!44258)

(declare-fun $colon$colon!710 (List!31719 (_ BitVec 64)) List!31719)

(assert (=> b!1351998 (= lt!597359 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!710 acc!759 (select (arr!44498 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351998 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!897512 () Bool)

(assert (=> start!114004 (=> (not res!897512) (not e!768666))))

(assert (=> start!114004 (= res!897512 (and (bvslt (size!45049 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45049 a!3742))))))

(assert (=> start!114004 e!768666))

(assert (=> start!114004 true))

(declare-fun array_inv!33443 (array!92109) Bool)

(assert (=> start!114004 (array_inv!33443 a!3742)))

(declare-fun b!1351991 () Bool)

(declare-fun res!897509 () Bool)

(assert (=> b!1351991 (=> (not res!897509) (not e!768666))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351991 (= res!897509 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45049 a!3742))))))

(declare-fun b!1351999 () Bool)

(declare-fun e!768667 () Bool)

(assert (=> b!1351999 (= e!768666 e!768667)))

(declare-fun res!897505 () Bool)

(assert (=> b!1351999 (=> (not res!897505) (not e!768667))))

(assert (=> b!1351999 (= res!897505 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597362 () Unit!44258)

(assert (=> b!1351999 (= lt!597362 e!768664)))

(declare-fun c!126685 () Bool)

(assert (=> b!1351999 (= c!126685 (validKeyInArray!0 (select (arr!44498 a!3742) from!3120)))))

(declare-fun b!1352000 () Bool)

(assert (=> b!1352000 (= e!768667 false)))

(declare-fun lt!597360 () Bool)

(assert (=> b!1352000 (= lt!597360 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114004 res!897512) b!1351994))

(assert (= (and b!1351994 res!897506) b!1351996))

(assert (= (and b!1351996 res!897507) b!1351989))

(assert (= (and b!1351989 res!897510) b!1351997))

(assert (= (and b!1351997 res!897508) b!1351995))

(assert (= (and b!1351995 res!897504) b!1351991))

(assert (= (and b!1351991 res!897509) b!1351993))

(assert (= (and b!1351993 res!897511) b!1351990))

(assert (= (and b!1351990 res!897513) b!1351999))

(assert (= (and b!1351999 c!126685) b!1351998))

(assert (= (and b!1351999 (not c!126685)) b!1351992))

(assert (= (and b!1351999 res!897505) b!1352000))

(declare-fun m!1238921 () Bool)

(assert (=> b!1351999 m!1238921))

(assert (=> b!1351999 m!1238921))

(declare-fun m!1238923 () Bool)

(assert (=> b!1351999 m!1238923))

(declare-fun m!1238925 () Bool)

(assert (=> b!1351994 m!1238925))

(declare-fun m!1238927 () Bool)

(assert (=> b!1351989 m!1238927))

(declare-fun m!1238929 () Bool)

(assert (=> b!1351997 m!1238929))

(declare-fun m!1238931 () Bool)

(assert (=> b!1351995 m!1238931))

(declare-fun m!1238933 () Bool)

(assert (=> b!1351998 m!1238933))

(assert (=> b!1351998 m!1238921))

(declare-fun m!1238935 () Bool)

(assert (=> b!1351998 m!1238935))

(declare-fun m!1238937 () Bool)

(assert (=> b!1351998 m!1238937))

(declare-fun m!1238939 () Bool)

(assert (=> b!1351998 m!1238939))

(assert (=> b!1351998 m!1238921))

(assert (=> b!1351998 m!1238935))

(declare-fun m!1238941 () Bool)

(assert (=> b!1351998 m!1238941))

(assert (=> b!1352000 m!1238939))

(declare-fun m!1238943 () Bool)

(assert (=> start!114004 m!1238943))

(declare-fun m!1238945 () Bool)

(assert (=> b!1351993 m!1238945))

(declare-fun m!1238947 () Bool)

(assert (=> b!1351996 m!1238947))

(check-sat (not b!1351996) (not b!1351994) (not b!1351999) (not b!1351995) (not b!1351993) (not b!1352000) (not start!114004) (not b!1351989) (not b!1351997) (not b!1351998))
(check-sat)
