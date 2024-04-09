; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114096 () Bool)

(assert start!114096)

(declare-fun b!1353893 () Bool)

(declare-fun res!899143 () Bool)

(declare-fun e!769269 () Bool)

(assert (=> b!1353893 (=> (not res!899143) (not e!769269))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92201 0))(
  ( (array!92202 (arr!44544 (Array (_ BitVec 32) (_ BitVec 64))) (size!45095 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92201)

(assert (=> b!1353893 (= res!899143 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45095 a!3742)))))

(declare-fun b!1353894 () Bool)

(declare-fun res!899137 () Bool)

(assert (=> b!1353894 (=> (not res!899137) (not e!769269))))

(declare-datatypes ((List!31765 0))(
  ( (Nil!31762) (Cons!31761 (h!32970 (_ BitVec 64)) (t!46430 List!31765)) )
))
(declare-fun acc!759 () List!31765)

(declare-fun contains!9330 (List!31765 (_ BitVec 64)) Bool)

(assert (=> b!1353894 (= res!899137 (not (contains!9330 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899140 () Bool)

(assert (=> start!114096 (=> (not res!899140) (not e!769269))))

(assert (=> start!114096 (= res!899140 (and (bvslt (size!45095 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45095 a!3742))))))

(assert (=> start!114096 e!769269))

(assert (=> start!114096 true))

(declare-fun array_inv!33489 (array!92201) Bool)

(assert (=> start!114096 (array_inv!33489 a!3742)))

(declare-fun b!1353895 () Bool)

(declare-fun res!899138 () Bool)

(assert (=> b!1353895 (=> (not res!899138) (not e!769269))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353895 (= res!899138 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45095 a!3742))))))

(declare-fun b!1353896 () Bool)

(declare-fun res!899135 () Bool)

(assert (=> b!1353896 (=> (not res!899135) (not e!769269))))

(declare-fun noDuplicate!2209 (List!31765) Bool)

(assert (=> b!1353896 (= res!899135 (noDuplicate!2209 acc!759))))

(declare-fun b!1353897 () Bool)

(declare-fun res!899139 () Bool)

(declare-fun e!769271 () Bool)

(assert (=> b!1353897 (=> (not res!899139) (not e!769271))))

(declare-fun lt!598020 () List!31765)

(assert (=> b!1353897 (= res!899139 (not (contains!9330 lt!598020 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353898 () Bool)

(declare-fun res!899132 () Bool)

(assert (=> b!1353898 (=> (not res!899132) (not e!769269))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353898 (= res!899132 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353899 () Bool)

(declare-fun e!769270 () Bool)

(assert (=> b!1353899 (= e!769269 e!769270)))

(declare-fun res!899141 () Bool)

(assert (=> b!1353899 (=> (not res!899141) (not e!769270))))

(declare-fun lt!598021 () Bool)

(assert (=> b!1353899 (= res!899141 (and (not (= from!3120 i!1404)) lt!598021))))

(declare-datatypes ((Unit!44396 0))(
  ( (Unit!44397) )
))
(declare-fun lt!598022 () Unit!44396)

(declare-fun e!769272 () Unit!44396)

(assert (=> b!1353899 (= lt!598022 e!769272)))

(declare-fun c!126823 () Bool)

(assert (=> b!1353899 (= c!126823 lt!598021)))

(assert (=> b!1353899 (= lt!598021 (validKeyInArray!0 (select (arr!44544 a!3742) from!3120)))))

(declare-fun b!1353900 () Bool)

(declare-fun Unit!44398 () Unit!44396)

(assert (=> b!1353900 (= e!769272 Unit!44398)))

(declare-fun b!1353901 () Bool)

(declare-fun res!899134 () Bool)

(assert (=> b!1353901 (=> (not res!899134) (not e!769271))))

(assert (=> b!1353901 (= res!899134 (not (contains!9330 lt!598020 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353902 () Bool)

(declare-fun res!899142 () Bool)

(assert (=> b!1353902 (=> (not res!899142) (not e!769271))))

(assert (=> b!1353902 (= res!899142 (noDuplicate!2209 lt!598020))))

(declare-fun b!1353903 () Bool)

(declare-fun res!899145 () Bool)

(assert (=> b!1353903 (=> (not res!899145) (not e!769269))))

(declare-fun arrayNoDuplicates!0 (array!92201 (_ BitVec 32) List!31765) Bool)

(assert (=> b!1353903 (= res!899145 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353904 () Bool)

(declare-fun res!899144 () Bool)

(assert (=> b!1353904 (=> (not res!899144) (not e!769269))))

(assert (=> b!1353904 (= res!899144 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31762))))

(declare-fun b!1353905 () Bool)

(declare-fun res!899133 () Bool)

(assert (=> b!1353905 (=> (not res!899133) (not e!769269))))

(assert (=> b!1353905 (= res!899133 (not (contains!9330 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353906 () Bool)

(declare-fun lt!598018 () Unit!44396)

(assert (=> b!1353906 (= e!769272 lt!598018)))

(declare-fun lt!598017 () Unit!44396)

(declare-fun lemmaListSubSeqRefl!0 (List!31765) Unit!44396)

(assert (=> b!1353906 (= lt!598017 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!739 (List!31765 List!31765) Bool)

(assert (=> b!1353906 (subseq!739 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92201 List!31765 List!31765 (_ BitVec 32)) Unit!44396)

(declare-fun $colon$colon!756 (List!31765 (_ BitVec 64)) List!31765)

(assert (=> b!1353906 (= lt!598018 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!756 acc!759 (select (arr!44544 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353906 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353907 () Bool)

(assert (=> b!1353907 (= e!769271 false)))

(declare-fun lt!598019 () Bool)

(assert (=> b!1353907 (= lt!598019 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598020))))

(declare-fun b!1353908 () Bool)

(assert (=> b!1353908 (= e!769270 e!769271)))

(declare-fun res!899136 () Bool)

(assert (=> b!1353908 (=> (not res!899136) (not e!769271))))

(assert (=> b!1353908 (= res!899136 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353908 (= lt!598020 ($colon$colon!756 acc!759 (select (arr!44544 a!3742) from!3120)))))

(assert (= (and start!114096 res!899140) b!1353896))

(assert (= (and b!1353896 res!899135) b!1353905))

(assert (= (and b!1353905 res!899133) b!1353894))

(assert (= (and b!1353894 res!899137) b!1353904))

(assert (= (and b!1353904 res!899144) b!1353903))

(assert (= (and b!1353903 res!899145) b!1353895))

(assert (= (and b!1353895 res!899138) b!1353898))

(assert (= (and b!1353898 res!899132) b!1353893))

(assert (= (and b!1353893 res!899143) b!1353899))

(assert (= (and b!1353899 c!126823) b!1353906))

(assert (= (and b!1353899 (not c!126823)) b!1353900))

(assert (= (and b!1353899 res!899141) b!1353908))

(assert (= (and b!1353908 res!899136) b!1353902))

(assert (= (and b!1353902 res!899142) b!1353901))

(assert (= (and b!1353901 res!899134) b!1353897))

(assert (= (and b!1353897 res!899139) b!1353907))

(declare-fun m!1240417 () Bool)

(assert (=> b!1353896 m!1240417))

(declare-fun m!1240419 () Bool)

(assert (=> b!1353894 m!1240419))

(declare-fun m!1240421 () Bool)

(assert (=> b!1353898 m!1240421))

(declare-fun m!1240423 () Bool)

(assert (=> b!1353901 m!1240423))

(declare-fun m!1240425 () Bool)

(assert (=> b!1353905 m!1240425))

(declare-fun m!1240427 () Bool)

(assert (=> b!1353903 m!1240427))

(declare-fun m!1240429 () Bool)

(assert (=> b!1353897 m!1240429))

(declare-fun m!1240431 () Bool)

(assert (=> b!1353899 m!1240431))

(assert (=> b!1353899 m!1240431))

(declare-fun m!1240433 () Bool)

(assert (=> b!1353899 m!1240433))

(declare-fun m!1240435 () Bool)

(assert (=> b!1353906 m!1240435))

(assert (=> b!1353906 m!1240431))

(declare-fun m!1240437 () Bool)

(assert (=> b!1353906 m!1240437))

(declare-fun m!1240439 () Bool)

(assert (=> b!1353906 m!1240439))

(declare-fun m!1240441 () Bool)

(assert (=> b!1353906 m!1240441))

(assert (=> b!1353906 m!1240431))

(assert (=> b!1353906 m!1240437))

(declare-fun m!1240443 () Bool)

(assert (=> b!1353906 m!1240443))

(declare-fun m!1240445 () Bool)

(assert (=> b!1353907 m!1240445))

(declare-fun m!1240447 () Bool)

(assert (=> b!1353902 m!1240447))

(declare-fun m!1240449 () Bool)

(assert (=> b!1353904 m!1240449))

(declare-fun m!1240451 () Bool)

(assert (=> start!114096 m!1240451))

(assert (=> b!1353908 m!1240431))

(assert (=> b!1353908 m!1240431))

(assert (=> b!1353908 m!1240437))

(push 1)

