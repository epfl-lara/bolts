; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113968 () Bool)

(assert start!113968)

(declare-fun b!1351275 () Bool)

(declare-fun res!896855 () Bool)

(declare-fun e!768470 () Bool)

(assert (=> b!1351275 (=> (not res!896855) (not e!768470))))

(declare-datatypes ((array!92073 0))(
  ( (array!92074 (arr!44480 (Array (_ BitVec 32) (_ BitVec 64))) (size!45031 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92073)

(declare-datatypes ((List!31701 0))(
  ( (Nil!31698) (Cons!31697 (h!32906 (_ BitVec 64)) (t!46366 List!31701)) )
))
(declare-fun arrayNoDuplicates!0 (array!92073 (_ BitVec 32) List!31701) Bool)

(assert (=> b!1351275 (= res!896855 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31698))))

(declare-fun b!1351276 () Bool)

(declare-fun res!896857 () Bool)

(assert (=> b!1351276 (=> (not res!896857) (not e!768470))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351276 (= res!896857 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351277 () Bool)

(declare-fun res!896856 () Bool)

(declare-fun e!768471 () Bool)

(assert (=> b!1351277 (=> res!896856 e!768471)))

(declare-fun lt!597144 () List!31701)

(declare-fun contains!9266 (List!31701 (_ BitVec 64)) Bool)

(assert (=> b!1351277 (= res!896856 (contains!9266 lt!597144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351278 () Bool)

(declare-fun res!896858 () Bool)

(assert (=> b!1351278 (=> res!896858 e!768471)))

(declare-fun noDuplicate!2145 (List!31701) Bool)

(assert (=> b!1351278 (= res!896858 (not (noDuplicate!2145 lt!597144)))))

(declare-fun b!1351279 () Bool)

(declare-fun res!896854 () Bool)

(assert (=> b!1351279 (=> (not res!896854) (not e!768470))))

(declare-fun acc!759 () List!31701)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1351279 (= res!896854 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351281 () Bool)

(declare-fun res!896863 () Bool)

(assert (=> b!1351281 (=> (not res!896863) (not e!768470))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351281 (= res!896863 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45031 a!3742))))))

(declare-fun b!1351282 () Bool)

(declare-fun res!896866 () Bool)

(assert (=> b!1351282 (=> (not res!896866) (not e!768470))))

(assert (=> b!1351282 (= res!896866 (not (contains!9266 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351283 () Bool)

(declare-fun res!896867 () Bool)

(assert (=> b!1351283 (=> res!896867 e!768471)))

(assert (=> b!1351283 (= res!896867 (contains!9266 lt!597144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351284 () Bool)

(assert (=> b!1351284 (= e!768470 (not e!768471))))

(declare-fun res!896860 () Bool)

(assert (=> b!1351284 (=> res!896860 e!768471)))

(assert (=> b!1351284 (= res!896860 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!692 (List!31701 (_ BitVec 64)) List!31701)

(assert (=> b!1351284 (= lt!597144 ($colon$colon!692 acc!759 (select (arr!44480 a!3742) from!3120)))))

(declare-fun subseq!675 (List!31701 List!31701) Bool)

(assert (=> b!1351284 (subseq!675 acc!759 acc!759)))

(declare-datatypes ((Unit!44212 0))(
  ( (Unit!44213) )
))
(declare-fun lt!597145 () Unit!44212)

(declare-fun lemmaListSubSeqRefl!0 (List!31701) Unit!44212)

(assert (=> b!1351284 (= lt!597145 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351285 () Bool)

(declare-fun res!896865 () Bool)

(assert (=> b!1351285 (=> (not res!896865) (not e!768470))))

(assert (=> b!1351285 (= res!896865 (validKeyInArray!0 (select (arr!44480 a!3742) from!3120)))))

(declare-fun b!1351286 () Bool)

(declare-fun res!896859 () Bool)

(assert (=> b!1351286 (=> (not res!896859) (not e!768470))))

(assert (=> b!1351286 (= res!896859 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45031 a!3742)))))

(declare-fun b!1351287 () Bool)

(declare-fun res!896868 () Bool)

(assert (=> b!1351287 (=> (not res!896868) (not e!768470))))

(assert (=> b!1351287 (= res!896868 (noDuplicate!2145 acc!759))))

(declare-fun b!1351280 () Bool)

(declare-fun res!896861 () Bool)

(assert (=> b!1351280 (=> (not res!896861) (not e!768470))))

(assert (=> b!1351280 (= res!896861 (not (contains!9266 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896862 () Bool)

(assert (=> start!113968 (=> (not res!896862) (not e!768470))))

(assert (=> start!113968 (= res!896862 (and (bvslt (size!45031 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45031 a!3742))))))

(assert (=> start!113968 e!768470))

(assert (=> start!113968 true))

(declare-fun array_inv!33425 (array!92073) Bool)

(assert (=> start!113968 (array_inv!33425 a!3742)))

(declare-fun b!1351288 () Bool)

(assert (=> b!1351288 (= e!768471 true)))

(declare-fun lt!597143 () Bool)

(assert (=> b!1351288 (= lt!597143 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597144))))

(declare-fun lt!597146 () Unit!44212)

(declare-fun noDuplicateSubseq!126 (List!31701 List!31701) Unit!44212)

(assert (=> b!1351288 (= lt!597146 (noDuplicateSubseq!126 acc!759 lt!597144))))

(declare-fun b!1351289 () Bool)

(declare-fun res!896864 () Bool)

(assert (=> b!1351289 (=> res!896864 e!768471)))

(assert (=> b!1351289 (= res!896864 (not (subseq!675 acc!759 lt!597144)))))

(assert (= (and start!113968 res!896862) b!1351287))

(assert (= (and b!1351287 res!896868) b!1351280))

(assert (= (and b!1351280 res!896861) b!1351282))

(assert (= (and b!1351282 res!896866) b!1351275))

(assert (= (and b!1351275 res!896855) b!1351279))

(assert (= (and b!1351279 res!896854) b!1351281))

(assert (= (and b!1351281 res!896863) b!1351276))

(assert (= (and b!1351276 res!896857) b!1351286))

(assert (= (and b!1351286 res!896859) b!1351285))

(assert (= (and b!1351285 res!896865) b!1351284))

(assert (= (and b!1351284 (not res!896860)) b!1351278))

(assert (= (and b!1351278 (not res!896858)) b!1351277))

(assert (= (and b!1351277 (not res!896856)) b!1351283))

(assert (= (and b!1351283 (not res!896867)) b!1351289))

(assert (= (and b!1351289 (not res!896864)) b!1351288))

(declare-fun m!1238353 () Bool)

(assert (=> b!1351283 m!1238353))

(declare-fun m!1238355 () Bool)

(assert (=> b!1351280 m!1238355))

(declare-fun m!1238357 () Bool)

(assert (=> b!1351277 m!1238357))

(declare-fun m!1238359 () Bool)

(assert (=> b!1351282 m!1238359))

(declare-fun m!1238361 () Bool)

(assert (=> b!1351287 m!1238361))

(declare-fun m!1238363 () Bool)

(assert (=> b!1351284 m!1238363))

(assert (=> b!1351284 m!1238363))

(declare-fun m!1238365 () Bool)

(assert (=> b!1351284 m!1238365))

(declare-fun m!1238367 () Bool)

(assert (=> b!1351284 m!1238367))

(declare-fun m!1238369 () Bool)

(assert (=> b!1351284 m!1238369))

(declare-fun m!1238371 () Bool)

(assert (=> b!1351288 m!1238371))

(declare-fun m!1238373 () Bool)

(assert (=> b!1351288 m!1238373))

(declare-fun m!1238375 () Bool)

(assert (=> start!113968 m!1238375))

(declare-fun m!1238377 () Bool)

(assert (=> b!1351279 m!1238377))

(declare-fun m!1238379 () Bool)

(assert (=> b!1351275 m!1238379))

(declare-fun m!1238381 () Bool)

(assert (=> b!1351276 m!1238381))

(assert (=> b!1351285 m!1238363))

(assert (=> b!1351285 m!1238363))

(declare-fun m!1238383 () Bool)

(assert (=> b!1351285 m!1238383))

(declare-fun m!1238385 () Bool)

(assert (=> b!1351289 m!1238385))

(declare-fun m!1238387 () Bool)

(assert (=> b!1351278 m!1238387))

(check-sat (not b!1351276) (not b!1351282) (not b!1351283) (not b!1351287) (not b!1351289) (not start!113968) (not b!1351284) (not b!1351285) (not b!1351288) (not b!1351279) (not b!1351275) (not b!1351277) (not b!1351280) (not b!1351278))
(check-sat)
