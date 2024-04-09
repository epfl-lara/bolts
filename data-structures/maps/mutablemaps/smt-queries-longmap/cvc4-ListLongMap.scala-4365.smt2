; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60238 () Bool)

(assert start!60238)

(declare-fun b!674079 () Bool)

(declare-fun res!440751 () Bool)

(declare-fun e!384807 () Bool)

(assert (=> b!674079 (=> (not res!440751) (not e!384807))))

(declare-datatypes ((List!12903 0))(
  ( (Nil!12900) (Cons!12899 (h!13944 (_ BitVec 64)) (t!19139 List!12903)) )
))
(declare-fun lt!312534 () List!12903)

(declare-fun contains!3446 (List!12903 (_ BitVec 64)) Bool)

(assert (=> b!674079 (= res!440751 (not (contains!3446 lt!312534 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674080 () Bool)

(declare-fun res!440745 () Bool)

(declare-fun e!384806 () Bool)

(assert (=> b!674080 (=> (not res!440745) (not e!384806))))

(declare-datatypes ((array!39241 0))(
  ( (array!39242 (arr!18809 (Array (_ BitVec 32) (_ BitVec 64))) (size!19173 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39241)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674080 (= res!440745 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674081 () Bool)

(declare-fun res!440743 () Bool)

(assert (=> b!674081 (=> (not res!440743) (not e!384806))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun acc!681 () List!12903)

(declare-fun arrayNoDuplicates!0 (array!39241 (_ BitVec 32) List!12903) Bool)

(assert (=> b!674081 (= res!440743 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674082 () Bool)

(declare-fun res!440737 () Bool)

(assert (=> b!674082 (=> (not res!440737) (not e!384806))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674082 (= res!440737 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19173 a!3626))))))

(declare-fun b!674083 () Bool)

(declare-fun res!440756 () Bool)

(assert (=> b!674083 (=> (not res!440756) (not e!384806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674083 (= res!440756 (validKeyInArray!0 (select (arr!18809 a!3626) from!3004)))))

(declare-fun b!674084 () Bool)

(declare-fun res!440747 () Bool)

(assert (=> b!674084 (=> (not res!440747) (not e!384806))))

(assert (=> b!674084 (= res!440747 (validKeyInArray!0 k!2843))))

(declare-fun b!674085 () Bool)

(declare-datatypes ((Unit!23700 0))(
  ( (Unit!23701) )
))
(declare-fun e!384813 () Unit!23700)

(declare-fun Unit!23702 () Unit!23700)

(assert (=> b!674085 (= e!384813 Unit!23702)))

(assert (=> b!674085 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312537 () Unit!23700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39241 (_ BitVec 64) (_ BitVec 32)) Unit!23700)

(assert (=> b!674085 (= lt!312537 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674085 false))

(declare-fun res!440754 () Bool)

(assert (=> start!60238 (=> (not res!440754) (not e!384806))))

(assert (=> start!60238 (= res!440754 (and (bvslt (size!19173 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19173 a!3626))))))

(assert (=> start!60238 e!384806))

(assert (=> start!60238 true))

(declare-fun array_inv!14583 (array!39241) Bool)

(assert (=> start!60238 (array_inv!14583 a!3626)))

(declare-fun b!674086 () Bool)

(declare-fun res!440738 () Bool)

(assert (=> b!674086 (=> (not res!440738) (not e!384806))))

(assert (=> b!674086 (= res!440738 (not (contains!3446 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674087 () Bool)

(declare-fun e!384812 () Bool)

(assert (=> b!674087 (= e!384812 (not (contains!3446 acc!681 k!2843)))))

(declare-fun b!674088 () Bool)

(declare-fun res!440759 () Bool)

(assert (=> b!674088 (=> (not res!440759) (not e!384807))))

(assert (=> b!674088 (= res!440759 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312534))))

(declare-fun b!674089 () Bool)

(assert (=> b!674089 (= e!384807 (not (bvsle from!3004 (size!19173 a!3626))))))

(assert (=> b!674089 (arrayNoDuplicates!0 (array!39242 (store (arr!18809 a!3626) i!1382 k!2843) (size!19173 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312534)))

(declare-fun lt!312535 () Unit!23700)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39241 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12903) Unit!23700)

(assert (=> b!674089 (= lt!312535 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312534))))

(declare-fun b!674090 () Bool)

(declare-fun e!384814 () Bool)

(assert (=> b!674090 (= e!384814 e!384807)))

(declare-fun res!440746 () Bool)

(assert (=> b!674090 (=> (not res!440746) (not e!384807))))

(assert (=> b!674090 (= res!440746 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!294 (List!12903 (_ BitVec 64)) List!12903)

(assert (=> b!674090 (= lt!312534 ($colon$colon!294 acc!681 (select (arr!18809 a!3626) from!3004)))))

(declare-fun b!674091 () Bool)

(declare-fun e!384811 () Bool)

(assert (=> b!674091 (= e!384811 (contains!3446 lt!312534 k!2843))))

(declare-fun b!674092 () Bool)

(declare-fun e!384805 () Bool)

(assert (=> b!674092 (= e!384805 (contains!3446 acc!681 k!2843))))

(declare-fun b!674093 () Bool)

(declare-fun res!440739 () Bool)

(assert (=> b!674093 (=> (not res!440739) (not e!384807))))

(declare-fun e!384808 () Bool)

(assert (=> b!674093 (= res!440739 e!384808)))

(declare-fun res!440757 () Bool)

(assert (=> b!674093 (=> res!440757 e!384808)))

(assert (=> b!674093 (= res!440757 e!384811)))

(declare-fun res!440749 () Bool)

(assert (=> b!674093 (=> (not res!440749) (not e!384811))))

(assert (=> b!674093 (= res!440749 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674094 () Bool)

(assert (=> b!674094 (= e!384806 e!384814)))

(declare-fun res!440758 () Bool)

(assert (=> b!674094 (=> (not res!440758) (not e!384814))))

(assert (=> b!674094 (= res!440758 (not (= (select (arr!18809 a!3626) from!3004) k!2843)))))

(declare-fun lt!312536 () Unit!23700)

(assert (=> b!674094 (= lt!312536 e!384813)))

(declare-fun c!77039 () Bool)

(assert (=> b!674094 (= c!77039 (= (select (arr!18809 a!3626) from!3004) k!2843))))

(declare-fun b!674095 () Bool)

(declare-fun res!440750 () Bool)

(assert (=> b!674095 (=> (not res!440750) (not e!384807))))

(declare-fun noDuplicate!693 (List!12903) Bool)

(assert (=> b!674095 (= res!440750 (noDuplicate!693 lt!312534))))

(declare-fun b!674096 () Bool)

(declare-fun e!384809 () Bool)

(assert (=> b!674096 (= e!384809 e!384812)))

(declare-fun res!440740 () Bool)

(assert (=> b!674096 (=> (not res!440740) (not e!384812))))

(assert (=> b!674096 (= res!440740 (bvsle from!3004 i!1382))))

(declare-fun b!674097 () Bool)

(declare-fun res!440753 () Bool)

(assert (=> b!674097 (=> (not res!440753) (not e!384807))))

(assert (=> b!674097 (= res!440753 (not (contains!3446 lt!312534 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674098 () Bool)

(declare-fun res!440741 () Bool)

(assert (=> b!674098 (=> (not res!440741) (not e!384806))))

(assert (=> b!674098 (= res!440741 e!384809)))

(declare-fun res!440736 () Bool)

(assert (=> b!674098 (=> res!440736 e!384809)))

(assert (=> b!674098 (= res!440736 e!384805)))

(declare-fun res!440748 () Bool)

(assert (=> b!674098 (=> (not res!440748) (not e!384805))))

(assert (=> b!674098 (= res!440748 (bvsgt from!3004 i!1382))))

(declare-fun b!674099 () Bool)

(declare-fun Unit!23703 () Unit!23700)

(assert (=> b!674099 (= e!384813 Unit!23703)))

(declare-fun b!674100 () Bool)

(declare-fun e!384804 () Bool)

(assert (=> b!674100 (= e!384804 (not (contains!3446 lt!312534 k!2843)))))

(declare-fun b!674101 () Bool)

(declare-fun res!440735 () Bool)

(assert (=> b!674101 (=> (not res!440735) (not e!384806))))

(assert (=> b!674101 (= res!440735 (noDuplicate!693 acc!681))))

(declare-fun b!674102 () Bool)

(declare-fun res!440755 () Bool)

(assert (=> b!674102 (=> (not res!440755) (not e!384806))))

(assert (=> b!674102 (= res!440755 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19173 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674103 () Bool)

(declare-fun res!440742 () Bool)

(assert (=> b!674103 (=> (not res!440742) (not e!384806))))

(assert (=> b!674103 (= res!440742 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12900))))

(declare-fun b!674104 () Bool)

(declare-fun res!440752 () Bool)

(assert (=> b!674104 (=> (not res!440752) (not e!384806))))

(assert (=> b!674104 (= res!440752 (not (contains!3446 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674105 () Bool)

(assert (=> b!674105 (= e!384808 e!384804)))

(declare-fun res!440744 () Bool)

(assert (=> b!674105 (=> (not res!440744) (not e!384804))))

(assert (=> b!674105 (= res!440744 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60238 res!440754) b!674101))

(assert (= (and b!674101 res!440735) b!674104))

(assert (= (and b!674104 res!440752) b!674086))

(assert (= (and b!674086 res!440738) b!674098))

(assert (= (and b!674098 res!440748) b!674092))

(assert (= (and b!674098 (not res!440736)) b!674096))

(assert (= (and b!674096 res!440740) b!674087))

(assert (= (and b!674098 res!440741) b!674103))

(assert (= (and b!674103 res!440742) b!674081))

(assert (= (and b!674081 res!440743) b!674082))

(assert (= (and b!674082 res!440737) b!674084))

(assert (= (and b!674084 res!440747) b!674080))

(assert (= (and b!674080 res!440745) b!674102))

(assert (= (and b!674102 res!440755) b!674083))

(assert (= (and b!674083 res!440756) b!674094))

(assert (= (and b!674094 c!77039) b!674085))

(assert (= (and b!674094 (not c!77039)) b!674099))

(assert (= (and b!674094 res!440758) b!674090))

(assert (= (and b!674090 res!440746) b!674095))

(assert (= (and b!674095 res!440750) b!674097))

(assert (= (and b!674097 res!440753) b!674079))

(assert (= (and b!674079 res!440751) b!674093))

(assert (= (and b!674093 res!440749) b!674091))

(assert (= (and b!674093 (not res!440757)) b!674105))

(assert (= (and b!674105 res!440744) b!674100))

(assert (= (and b!674093 res!440739) b!674088))

(assert (= (and b!674088 res!440759) b!674089))

(declare-fun m!642169 () Bool)

(assert (=> b!674087 m!642169))

(declare-fun m!642171 () Bool)

(assert (=> b!674083 m!642171))

(assert (=> b!674083 m!642171))

(declare-fun m!642173 () Bool)

(assert (=> b!674083 m!642173))

(declare-fun m!642175 () Bool)

(assert (=> b!674086 m!642175))

(declare-fun m!642177 () Bool)

(assert (=> b!674091 m!642177))

(declare-fun m!642179 () Bool)

(assert (=> b!674097 m!642179))

(assert (=> b!674100 m!642177))

(declare-fun m!642181 () Bool)

(assert (=> b!674080 m!642181))

(assert (=> b!674092 m!642169))

(declare-fun m!642183 () Bool)

(assert (=> b!674085 m!642183))

(declare-fun m!642185 () Bool)

(assert (=> b!674085 m!642185))

(declare-fun m!642187 () Bool)

(assert (=> b!674089 m!642187))

(declare-fun m!642189 () Bool)

(assert (=> b!674089 m!642189))

(declare-fun m!642191 () Bool)

(assert (=> b!674089 m!642191))

(assert (=> b!674090 m!642171))

(assert (=> b!674090 m!642171))

(declare-fun m!642193 () Bool)

(assert (=> b!674090 m!642193))

(declare-fun m!642195 () Bool)

(assert (=> b!674081 m!642195))

(declare-fun m!642197 () Bool)

(assert (=> b!674101 m!642197))

(declare-fun m!642199 () Bool)

(assert (=> b!674103 m!642199))

(declare-fun m!642201 () Bool)

(assert (=> b!674079 m!642201))

(declare-fun m!642203 () Bool)

(assert (=> b!674095 m!642203))

(declare-fun m!642205 () Bool)

(assert (=> b!674084 m!642205))

(declare-fun m!642207 () Bool)

(assert (=> b!674088 m!642207))

(declare-fun m!642209 () Bool)

(assert (=> b!674104 m!642209))

(declare-fun m!642211 () Bool)

(assert (=> start!60238 m!642211))

(assert (=> b!674094 m!642171))

(push 1)

(assert (not b!674101))

(assert (not b!674104))

(assert (not b!674100))

(assert (not b!674081))

(assert (not b!674097))

(assert (not b!674080))

(assert (not b!674091))

(assert (not b!674086))

(assert (not b!674088))

(assert (not b!674103))

(assert (not b!674095))

(assert (not start!60238))

(assert (not b!674085))

(assert (not b!674092))

(assert (not b!674084))

(assert (not b!674087))

(assert (not b!674083))

(assert (not b!674090))

(assert (not b!674089))

(assert (not b!674079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

