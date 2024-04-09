; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114924 () Bool)

(assert start!114924)

(declare-fun b!1361902 () Bool)

(declare-fun res!906090 () Bool)

(declare-fun e!772590 () Bool)

(assert (=> b!1361902 (=> (not res!906090) (not e!772590))))

(declare-datatypes ((List!31942 0))(
  ( (Nil!31939) (Cons!31938 (h!33147 (_ BitVec 64)) (t!46634 List!31942)) )
))
(declare-fun acc!759 () List!31942)

(declare-datatypes ((array!92582 0))(
  ( (array!92583 (arr!44721 (Array (_ BitVec 32) (_ BitVec 64))) (size!45272 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92582)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92582 (_ BitVec 32) List!31942) Bool)

(assert (=> b!1361902 (= res!906090 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361903 () Bool)

(declare-fun res!906092 () Bool)

(declare-fun e!772593 () Bool)

(assert (=> b!1361903 (=> (not res!906092) (not e!772593))))

(declare-fun lt!600280 () List!31942)

(declare-fun contains!9507 (List!31942 (_ BitVec 64)) Bool)

(assert (=> b!1361903 (= res!906092 (not (contains!9507 lt!600280 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361904 () Bool)

(declare-fun res!906089 () Bool)

(assert (=> b!1361904 (=> (not res!906089) (not e!772593))))

(assert (=> b!1361904 (= res!906089 (not (contains!9507 lt!600280 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361906 () Bool)

(declare-fun e!772594 () Bool)

(assert (=> b!1361906 (= e!772594 e!772593)))

(declare-fun res!906085 () Bool)

(assert (=> b!1361906 (=> (not res!906085) (not e!772593))))

(assert (=> b!1361906 (= res!906085 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!903 (List!31942 (_ BitVec 64)) List!31942)

(assert (=> b!1361906 (= lt!600280 ($colon$colon!903 acc!759 (select (arr!44721 a!3742) from!3120)))))

(declare-fun b!1361907 () Bool)

(declare-fun res!906082 () Bool)

(assert (=> b!1361907 (=> (not res!906082) (not e!772590))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361907 (= res!906082 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361908 () Bool)

(assert (=> b!1361908 (= e!772593 (bvsge (bvsub (size!45272 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45272 a!3742) from!3120)))))

(declare-fun b!1361909 () Bool)

(declare-fun res!906079 () Bool)

(assert (=> b!1361909 (=> (not res!906079) (not e!772590))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361909 (= res!906079 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45272 a!3742))))))

(declare-fun b!1361910 () Bool)

(declare-fun res!906088 () Bool)

(assert (=> b!1361910 (=> (not res!906088) (not e!772593))))

(declare-fun noDuplicate!2386 (List!31942) Bool)

(assert (=> b!1361910 (= res!906088 (noDuplicate!2386 lt!600280))))

(declare-fun b!1361911 () Bool)

(declare-fun res!906093 () Bool)

(assert (=> b!1361911 (=> (not res!906093) (not e!772590))))

(assert (=> b!1361911 (= res!906093 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31939))))

(declare-fun b!1361912 () Bool)

(declare-fun res!906080 () Bool)

(assert (=> b!1361912 (=> (not res!906080) (not e!772593))))

(assert (=> b!1361912 (= res!906080 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600280))))

(declare-fun b!1361913 () Bool)

(declare-fun res!906084 () Bool)

(assert (=> b!1361913 (=> (not res!906084) (not e!772590))))

(assert (=> b!1361913 (= res!906084 (not (contains!9507 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361914 () Bool)

(declare-fun res!906087 () Bool)

(assert (=> b!1361914 (=> (not res!906087) (not e!772590))))

(assert (=> b!1361914 (= res!906087 (not (contains!9507 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906083 () Bool)

(assert (=> start!114924 (=> (not res!906083) (not e!772590))))

(assert (=> start!114924 (= res!906083 (and (bvslt (size!45272 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45272 a!3742))))))

(assert (=> start!114924 e!772590))

(assert (=> start!114924 true))

(declare-fun array_inv!33666 (array!92582) Bool)

(assert (=> start!114924 (array_inv!33666 a!3742)))

(declare-fun b!1361905 () Bool)

(assert (=> b!1361905 (= e!772590 e!772594)))

(declare-fun res!906086 () Bool)

(assert (=> b!1361905 (=> (not res!906086) (not e!772594))))

(declare-fun lt!600283 () Bool)

(assert (=> b!1361905 (= res!906086 (and (not (= from!3120 i!1404)) lt!600283))))

(declare-datatypes ((Unit!44846 0))(
  ( (Unit!44847) )
))
(declare-fun lt!600284 () Unit!44846)

(declare-fun e!772592 () Unit!44846)

(assert (=> b!1361905 (= lt!600284 e!772592)))

(declare-fun c!127354 () Bool)

(assert (=> b!1361905 (= c!127354 lt!600283)))

(assert (=> b!1361905 (= lt!600283 (validKeyInArray!0 (select (arr!44721 a!3742) from!3120)))))

(declare-fun b!1361915 () Bool)

(declare-fun res!906091 () Bool)

(assert (=> b!1361915 (=> (not res!906091) (not e!772590))))

(assert (=> b!1361915 (= res!906091 (noDuplicate!2386 acc!759))))

(declare-fun b!1361916 () Bool)

(declare-fun lt!600282 () Unit!44846)

(assert (=> b!1361916 (= e!772592 lt!600282)))

(declare-fun lt!600281 () Unit!44846)

(declare-fun lemmaListSubSeqRefl!0 (List!31942) Unit!44846)

(assert (=> b!1361916 (= lt!600281 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!898 (List!31942 List!31942) Bool)

(assert (=> b!1361916 (subseq!898 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92582 List!31942 List!31942 (_ BitVec 32)) Unit!44846)

(assert (=> b!1361916 (= lt!600282 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!903 acc!759 (select (arr!44721 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361916 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361917 () Bool)

(declare-fun Unit!44848 () Unit!44846)

(assert (=> b!1361917 (= e!772592 Unit!44848)))

(declare-fun b!1361918 () Bool)

(declare-fun res!906081 () Bool)

(assert (=> b!1361918 (=> (not res!906081) (not e!772590))))

(assert (=> b!1361918 (= res!906081 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45272 a!3742)))))

(assert (= (and start!114924 res!906083) b!1361915))

(assert (= (and b!1361915 res!906091) b!1361913))

(assert (= (and b!1361913 res!906084) b!1361914))

(assert (= (and b!1361914 res!906087) b!1361911))

(assert (= (and b!1361911 res!906093) b!1361902))

(assert (= (and b!1361902 res!906090) b!1361909))

(assert (= (and b!1361909 res!906079) b!1361907))

(assert (= (and b!1361907 res!906082) b!1361918))

(assert (= (and b!1361918 res!906081) b!1361905))

(assert (= (and b!1361905 c!127354) b!1361916))

(assert (= (and b!1361905 (not c!127354)) b!1361917))

(assert (= (and b!1361905 res!906086) b!1361906))

(assert (= (and b!1361906 res!906085) b!1361910))

(assert (= (and b!1361910 res!906088) b!1361904))

(assert (= (and b!1361904 res!906089) b!1361903))

(assert (= (and b!1361903 res!906092) b!1361912))

(assert (= (and b!1361912 res!906080) b!1361908))

(declare-fun m!1246933 () Bool)

(assert (=> b!1361905 m!1246933))

(assert (=> b!1361905 m!1246933))

(declare-fun m!1246935 () Bool)

(assert (=> b!1361905 m!1246935))

(assert (=> b!1361906 m!1246933))

(assert (=> b!1361906 m!1246933))

(declare-fun m!1246937 () Bool)

(assert (=> b!1361906 m!1246937))

(declare-fun m!1246939 () Bool)

(assert (=> b!1361903 m!1246939))

(declare-fun m!1246941 () Bool)

(assert (=> b!1361916 m!1246941))

(assert (=> b!1361916 m!1246933))

(assert (=> b!1361916 m!1246937))

(declare-fun m!1246943 () Bool)

(assert (=> b!1361916 m!1246943))

(declare-fun m!1246945 () Bool)

(assert (=> b!1361916 m!1246945))

(assert (=> b!1361916 m!1246933))

(assert (=> b!1361916 m!1246937))

(declare-fun m!1246947 () Bool)

(assert (=> b!1361916 m!1246947))

(declare-fun m!1246949 () Bool)

(assert (=> b!1361914 m!1246949))

(declare-fun m!1246951 () Bool)

(assert (=> b!1361902 m!1246951))

(declare-fun m!1246953 () Bool)

(assert (=> start!114924 m!1246953))

(declare-fun m!1246955 () Bool)

(assert (=> b!1361911 m!1246955))

(declare-fun m!1246957 () Bool)

(assert (=> b!1361907 m!1246957))

(declare-fun m!1246959 () Bool)

(assert (=> b!1361913 m!1246959))

(declare-fun m!1246961 () Bool)

(assert (=> b!1361912 m!1246961))

(declare-fun m!1246963 () Bool)

(assert (=> b!1361904 m!1246963))

(declare-fun m!1246965 () Bool)

(assert (=> b!1361910 m!1246965))

(declare-fun m!1246967 () Bool)

(assert (=> b!1361915 m!1246967))

(push 1)

(assert (not b!1361907))

(assert (not b!1361906))

(assert (not b!1361915))

(assert (not b!1361904))

(assert (not b!1361914))

(assert (not b!1361912))

(assert (not b!1361905))

(assert (not start!114924))

(assert (not b!1361913))

(assert (not b!1361903))

(assert (not b!1361902))

(assert (not b!1361916))

(assert (not b!1361911))

(assert (not b!1361910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

