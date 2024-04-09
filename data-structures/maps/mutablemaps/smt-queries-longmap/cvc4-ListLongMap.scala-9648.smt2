; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114066 () Bool)

(assert start!114066)

(declare-fun b!1353173 () Bool)

(declare-fun res!898511 () Bool)

(declare-fun e!769047 () Bool)

(assert (=> b!1353173 (=> (not res!898511) (not e!769047))))

(declare-datatypes ((List!31750 0))(
  ( (Nil!31747) (Cons!31746 (h!32955 (_ BitVec 64)) (t!46415 List!31750)) )
))
(declare-fun acc!759 () List!31750)

(declare-fun noDuplicate!2194 (List!31750) Bool)

(assert (=> b!1353173 (= res!898511 (noDuplicate!2194 acc!759))))

(declare-fun b!1353174 () Bool)

(declare-fun res!898515 () Bool)

(assert (=> b!1353174 (=> (not res!898515) (not e!769047))))

(declare-fun contains!9315 (List!31750 (_ BitVec 64)) Bool)

(assert (=> b!1353174 (= res!898515 (not (contains!9315 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353175 () Bool)

(declare-fun e!769044 () Bool)

(assert (=> b!1353175 (= e!769044 false)))

(declare-fun lt!597747 () List!31750)

(declare-fun lt!597751 () Bool)

(declare-datatypes ((array!92171 0))(
  ( (array!92172 (arr!44529 (Array (_ BitVec 32) (_ BitVec 64))) (size!45080 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92171)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92171 (_ BitVec 32) List!31750) Bool)

(assert (=> b!1353175 (= lt!597751 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597747))))

(declare-fun b!1353176 () Bool)

(declare-fun res!898502 () Bool)

(assert (=> b!1353176 (=> (not res!898502) (not e!769044))))

(assert (=> b!1353176 (= res!898502 (not (contains!9315 lt!597747 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353178 () Bool)

(declare-fun res!898513 () Bool)

(assert (=> b!1353178 (=> (not res!898513) (not e!769047))))

(assert (=> b!1353178 (= res!898513 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353179 () Bool)

(declare-datatypes ((Unit!44351 0))(
  ( (Unit!44352) )
))
(declare-fun e!769048 () Unit!44351)

(declare-fun Unit!44353 () Unit!44351)

(assert (=> b!1353179 (= e!769048 Unit!44353)))

(declare-fun b!1353180 () Bool)

(declare-fun e!769046 () Bool)

(assert (=> b!1353180 (= e!769046 e!769044)))

(declare-fun res!898512 () Bool)

(assert (=> b!1353180 (=> (not res!898512) (not e!769044))))

(assert (=> b!1353180 (= res!898512 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!741 (List!31750 (_ BitVec 64)) List!31750)

(assert (=> b!1353180 (= lt!597747 ($colon$colon!741 acc!759 (select (arr!44529 a!3742) from!3120)))))

(declare-fun b!1353181 () Bool)

(declare-fun res!898510 () Bool)

(assert (=> b!1353181 (=> (not res!898510) (not e!769047))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353181 (= res!898510 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353182 () Bool)

(assert (=> b!1353182 (= e!769047 e!769046)))

(declare-fun res!898504 () Bool)

(assert (=> b!1353182 (=> (not res!898504) (not e!769046))))

(declare-fun lt!597750 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353182 (= res!898504 (and (not (= from!3120 i!1404)) lt!597750))))

(declare-fun lt!597752 () Unit!44351)

(assert (=> b!1353182 (= lt!597752 e!769048)))

(declare-fun c!126778 () Bool)

(assert (=> b!1353182 (= c!126778 lt!597750)))

(assert (=> b!1353182 (= lt!597750 (validKeyInArray!0 (select (arr!44529 a!3742) from!3120)))))

(declare-fun b!1353183 () Bool)

(declare-fun res!898506 () Bool)

(assert (=> b!1353183 (=> (not res!898506) (not e!769047))))

(assert (=> b!1353183 (= res!898506 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31747))))

(declare-fun b!1353184 () Bool)

(declare-fun res!898514 () Bool)

(assert (=> b!1353184 (=> (not res!898514) (not e!769044))))

(assert (=> b!1353184 (= res!898514 (noDuplicate!2194 lt!597747))))

(declare-fun b!1353185 () Bool)

(declare-fun res!898505 () Bool)

(assert (=> b!1353185 (=> (not res!898505) (not e!769044))))

(assert (=> b!1353185 (= res!898505 (not (contains!9315 lt!597747 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353186 () Bool)

(declare-fun res!898507 () Bool)

(assert (=> b!1353186 (=> (not res!898507) (not e!769047))))

(assert (=> b!1353186 (= res!898507 (not (contains!9315 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!898509 () Bool)

(assert (=> start!114066 (=> (not res!898509) (not e!769047))))

(assert (=> start!114066 (= res!898509 (and (bvslt (size!45080 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45080 a!3742))))))

(assert (=> start!114066 e!769047))

(assert (=> start!114066 true))

(declare-fun array_inv!33474 (array!92171) Bool)

(assert (=> start!114066 (array_inv!33474 a!3742)))

(declare-fun b!1353177 () Bool)

(declare-fun res!898508 () Bool)

(assert (=> b!1353177 (=> (not res!898508) (not e!769047))))

(assert (=> b!1353177 (= res!898508 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45080 a!3742))))))

(declare-fun b!1353187 () Bool)

(declare-fun res!898503 () Bool)

(assert (=> b!1353187 (=> (not res!898503) (not e!769047))))

(assert (=> b!1353187 (= res!898503 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45080 a!3742)))))

(declare-fun b!1353188 () Bool)

(declare-fun lt!597749 () Unit!44351)

(assert (=> b!1353188 (= e!769048 lt!597749)))

(declare-fun lt!597748 () Unit!44351)

(declare-fun lemmaListSubSeqRefl!0 (List!31750) Unit!44351)

(assert (=> b!1353188 (= lt!597748 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!724 (List!31750 List!31750) Bool)

(assert (=> b!1353188 (subseq!724 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92171 List!31750 List!31750 (_ BitVec 32)) Unit!44351)

(assert (=> b!1353188 (= lt!597749 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!741 acc!759 (select (arr!44529 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353188 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114066 res!898509) b!1353173))

(assert (= (and b!1353173 res!898511) b!1353174))

(assert (= (and b!1353174 res!898515) b!1353186))

(assert (= (and b!1353186 res!898507) b!1353183))

(assert (= (and b!1353183 res!898506) b!1353178))

(assert (= (and b!1353178 res!898513) b!1353177))

(assert (= (and b!1353177 res!898508) b!1353181))

(assert (= (and b!1353181 res!898510) b!1353187))

(assert (= (and b!1353187 res!898503) b!1353182))

(assert (= (and b!1353182 c!126778) b!1353188))

(assert (= (and b!1353182 (not c!126778)) b!1353179))

(assert (= (and b!1353182 res!898504) b!1353180))

(assert (= (and b!1353180 res!898512) b!1353184))

(assert (= (and b!1353184 res!898514) b!1353176))

(assert (= (and b!1353176 res!898502) b!1353185))

(assert (= (and b!1353185 res!898505) b!1353175))

(declare-fun m!1239877 () Bool)

(assert (=> b!1353188 m!1239877))

(declare-fun m!1239879 () Bool)

(assert (=> b!1353188 m!1239879))

(declare-fun m!1239881 () Bool)

(assert (=> b!1353188 m!1239881))

(declare-fun m!1239883 () Bool)

(assert (=> b!1353188 m!1239883))

(declare-fun m!1239885 () Bool)

(assert (=> b!1353188 m!1239885))

(assert (=> b!1353188 m!1239879))

(assert (=> b!1353188 m!1239881))

(declare-fun m!1239887 () Bool)

(assert (=> b!1353188 m!1239887))

(declare-fun m!1239889 () Bool)

(assert (=> start!114066 m!1239889))

(declare-fun m!1239891 () Bool)

(assert (=> b!1353174 m!1239891))

(declare-fun m!1239893 () Bool)

(assert (=> b!1353181 m!1239893))

(declare-fun m!1239895 () Bool)

(assert (=> b!1353185 m!1239895))

(declare-fun m!1239897 () Bool)

(assert (=> b!1353186 m!1239897))

(declare-fun m!1239899 () Bool)

(assert (=> b!1353176 m!1239899))

(declare-fun m!1239901 () Bool)

(assert (=> b!1353184 m!1239901))

(assert (=> b!1353180 m!1239879))

(assert (=> b!1353180 m!1239879))

(assert (=> b!1353180 m!1239881))

(declare-fun m!1239903 () Bool)

(assert (=> b!1353183 m!1239903))

(assert (=> b!1353182 m!1239879))

(assert (=> b!1353182 m!1239879))

(declare-fun m!1239905 () Bool)

(assert (=> b!1353182 m!1239905))

(declare-fun m!1239907 () Bool)

(assert (=> b!1353173 m!1239907))

(declare-fun m!1239909 () Bool)

(assert (=> b!1353175 m!1239909))

(declare-fun m!1239911 () Bool)

(assert (=> b!1353178 m!1239911))

(push 1)

