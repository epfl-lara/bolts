; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114100 () Bool)

(assert start!114100)

(declare-fun b!1353989 () Bool)

(declare-fun res!899216 () Bool)

(declare-fun e!769301 () Bool)

(assert (=> b!1353989 (=> (not res!899216) (not e!769301))))

(declare-datatypes ((List!31767 0))(
  ( (Nil!31764) (Cons!31763 (h!32972 (_ BitVec 64)) (t!46432 List!31767)) )
))
(declare-fun acc!759 () List!31767)

(declare-datatypes ((array!92205 0))(
  ( (array!92206 (arr!44546 (Array (_ BitVec 32) (_ BitVec 64))) (size!45097 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92205)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92205 (_ BitVec 32) List!31767) Bool)

(assert (=> b!1353989 (= res!899216 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353990 () Bool)

(declare-fun res!899228 () Bool)

(declare-fun e!769299 () Bool)

(assert (=> b!1353990 (=> (not res!899228) (not e!769299))))

(declare-fun lt!598058 () List!31767)

(declare-fun contains!9332 (List!31767 (_ BitVec 64)) Bool)

(assert (=> b!1353990 (= res!899228 (not (contains!9332 lt!598058 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353991 () Bool)

(declare-fun res!899221 () Bool)

(assert (=> b!1353991 (=> (not res!899221) (not e!769299))))

(assert (=> b!1353991 (= res!899221 (not (contains!9332 lt!598058 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353992 () Bool)

(declare-fun e!769302 () Bool)

(assert (=> b!1353992 (= e!769301 e!769302)))

(declare-fun res!899224 () Bool)

(assert (=> b!1353992 (=> (not res!899224) (not e!769302))))

(declare-fun lt!598053 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353992 (= res!899224 (and (not (= from!3120 i!1404)) lt!598053))))

(declare-datatypes ((Unit!44402 0))(
  ( (Unit!44403) )
))
(declare-fun lt!598057 () Unit!44402)

(declare-fun e!769300 () Unit!44402)

(assert (=> b!1353992 (= lt!598057 e!769300)))

(declare-fun c!126829 () Bool)

(assert (=> b!1353992 (= c!126829 lt!598053)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353992 (= lt!598053 (validKeyInArray!0 (select (arr!44546 a!3742) from!3120)))))

(declare-fun b!1353993 () Bool)

(declare-fun res!899222 () Bool)

(assert (=> b!1353993 (=> (not res!899222) (not e!769301))))

(assert (=> b!1353993 (= res!899222 (not (contains!9332 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353994 () Bool)

(declare-fun res!899226 () Bool)

(assert (=> b!1353994 (=> (not res!899226) (not e!769301))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353994 (= res!899226 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353995 () Bool)

(assert (=> b!1353995 (= e!769302 e!769299)))

(declare-fun res!899220 () Bool)

(assert (=> b!1353995 (=> (not res!899220) (not e!769299))))

(assert (=> b!1353995 (= res!899220 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!758 (List!31767 (_ BitVec 64)) List!31767)

(assert (=> b!1353995 (= lt!598058 ($colon$colon!758 acc!759 (select (arr!44546 a!3742) from!3120)))))

(declare-fun b!1353996 () Bool)

(declare-fun res!899223 () Bool)

(assert (=> b!1353996 (=> (not res!899223) (not e!769301))))

(assert (=> b!1353996 (= res!899223 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45097 a!3742))))))

(declare-fun res!899229 () Bool)

(assert (=> start!114100 (=> (not res!899229) (not e!769301))))

(assert (=> start!114100 (= res!899229 (and (bvslt (size!45097 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45097 a!3742))))))

(assert (=> start!114100 e!769301))

(assert (=> start!114100 true))

(declare-fun array_inv!33491 (array!92205) Bool)

(assert (=> start!114100 (array_inv!33491 a!3742)))

(declare-fun b!1353997 () Bool)

(declare-fun res!899227 () Bool)

(assert (=> b!1353997 (=> (not res!899227) (not e!769301))))

(assert (=> b!1353997 (= res!899227 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31764))))

(declare-fun b!1353998 () Bool)

(declare-fun Unit!44404 () Unit!44402)

(assert (=> b!1353998 (= e!769300 Unit!44404)))

(declare-fun b!1353999 () Bool)

(declare-fun res!899218 () Bool)

(assert (=> b!1353999 (=> (not res!899218) (not e!769301))))

(declare-fun noDuplicate!2211 (List!31767) Bool)

(assert (=> b!1353999 (= res!899218 (noDuplicate!2211 acc!759))))

(declare-fun b!1354000 () Bool)

(declare-fun lt!598054 () Unit!44402)

(assert (=> b!1354000 (= e!769300 lt!598054)))

(declare-fun lt!598055 () Unit!44402)

(declare-fun lemmaListSubSeqRefl!0 (List!31767) Unit!44402)

(assert (=> b!1354000 (= lt!598055 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!741 (List!31767 List!31767) Bool)

(assert (=> b!1354000 (subseq!741 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92205 List!31767 List!31767 (_ BitVec 32)) Unit!44402)

(assert (=> b!1354000 (= lt!598054 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!758 acc!759 (select (arr!44546 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354000 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354001 () Bool)

(declare-fun res!899217 () Bool)

(assert (=> b!1354001 (=> (not res!899217) (not e!769299))))

(assert (=> b!1354001 (= res!899217 (noDuplicate!2211 lt!598058))))

(declare-fun b!1354002 () Bool)

(declare-fun res!899219 () Bool)

(assert (=> b!1354002 (=> (not res!899219) (not e!769301))))

(assert (=> b!1354002 (= res!899219 (not (contains!9332 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354003 () Bool)

(assert (=> b!1354003 (= e!769299 false)))

(declare-fun lt!598056 () Bool)

(assert (=> b!1354003 (= lt!598056 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598058))))

(declare-fun b!1354004 () Bool)

(declare-fun res!899225 () Bool)

(assert (=> b!1354004 (=> (not res!899225) (not e!769301))))

(assert (=> b!1354004 (= res!899225 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45097 a!3742)))))

(assert (= (and start!114100 res!899229) b!1353999))

(assert (= (and b!1353999 res!899218) b!1354002))

(assert (= (and b!1354002 res!899219) b!1353993))

(assert (= (and b!1353993 res!899222) b!1353997))

(assert (= (and b!1353997 res!899227) b!1353989))

(assert (= (and b!1353989 res!899216) b!1353996))

(assert (= (and b!1353996 res!899223) b!1353994))

(assert (= (and b!1353994 res!899226) b!1354004))

(assert (= (and b!1354004 res!899225) b!1353992))

(assert (= (and b!1353992 c!126829) b!1354000))

(assert (= (and b!1353992 (not c!126829)) b!1353998))

(assert (= (and b!1353992 res!899224) b!1353995))

(assert (= (and b!1353995 res!899220) b!1354001))

(assert (= (and b!1354001 res!899217) b!1353991))

(assert (= (and b!1353991 res!899221) b!1353990))

(assert (= (and b!1353990 res!899228) b!1354003))

(declare-fun m!1240489 () Bool)

(assert (=> b!1353989 m!1240489))

(declare-fun m!1240491 () Bool)

(assert (=> b!1354001 m!1240491))

(declare-fun m!1240493 () Bool)

(assert (=> b!1353999 m!1240493))

(declare-fun m!1240495 () Bool)

(assert (=> b!1354002 m!1240495))

(declare-fun m!1240497 () Bool)

(assert (=> b!1354000 m!1240497))

(declare-fun m!1240499 () Bool)

(assert (=> b!1354000 m!1240499))

(declare-fun m!1240501 () Bool)

(assert (=> b!1354000 m!1240501))

(declare-fun m!1240503 () Bool)

(assert (=> b!1354000 m!1240503))

(declare-fun m!1240505 () Bool)

(assert (=> b!1354000 m!1240505))

(assert (=> b!1354000 m!1240499))

(assert (=> b!1354000 m!1240501))

(declare-fun m!1240507 () Bool)

(assert (=> b!1354000 m!1240507))

(declare-fun m!1240509 () Bool)

(assert (=> b!1353990 m!1240509))

(declare-fun m!1240511 () Bool)

(assert (=> b!1353991 m!1240511))

(assert (=> b!1353992 m!1240499))

(assert (=> b!1353992 m!1240499))

(declare-fun m!1240513 () Bool)

(assert (=> b!1353992 m!1240513))

(declare-fun m!1240515 () Bool)

(assert (=> b!1354003 m!1240515))

(declare-fun m!1240517 () Bool)

(assert (=> b!1353993 m!1240517))

(assert (=> b!1353995 m!1240499))

(assert (=> b!1353995 m!1240499))

(assert (=> b!1353995 m!1240501))

(declare-fun m!1240519 () Bool)

(assert (=> b!1353994 m!1240519))

(declare-fun m!1240521 () Bool)

(assert (=> start!114100 m!1240521))

(declare-fun m!1240523 () Bool)

(assert (=> b!1353997 m!1240523))

(check-sat (not b!1353997) (not b!1353994) (not b!1353991) (not b!1354001) (not b!1353999) (not b!1354003) (not b!1353992) (not b!1353989) (not b!1353993) (not b!1354002) (not b!1353995) (not b!1353990) (not start!114100) (not b!1354000))
(check-sat)
