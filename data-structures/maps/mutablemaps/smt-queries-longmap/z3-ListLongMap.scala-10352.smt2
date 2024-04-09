; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121770 () Bool)

(assert start!121770)

(declare-fun b!1413817 () Bool)

(declare-fun e!800165 () Bool)

(declare-fun e!800164 () Bool)

(assert (=> b!1413817 (= e!800165 (not e!800164))))

(declare-fun res!950681 () Bool)

(assert (=> b!1413817 (=> res!950681 e!800164)))

(declare-datatypes ((SeekEntryResult!10946 0))(
  ( (MissingZero!10946 (index!46166 (_ BitVec 32))) (Found!10946 (index!46167 (_ BitVec 32))) (Intermediate!10946 (undefined!11758 Bool) (index!46168 (_ BitVec 32)) (x!127760 (_ BitVec 32))) (Undefined!10946) (MissingVacant!10946 (index!46169 (_ BitVec 32))) )
))
(declare-fun lt!623225 () SeekEntryResult!10946)

(get-info :version)

(assert (=> b!1413817 (= res!950681 (or (not ((_ is Intermediate!10946) lt!623225)) (undefined!11758 lt!623225)))))

(declare-fun e!800163 () Bool)

(assert (=> b!1413817 e!800163))

(declare-fun res!950688 () Bool)

(assert (=> b!1413817 (=> (not res!950688) (not e!800163))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96563 0))(
  ( (array!96564 (arr!46613 (Array (_ BitVec 32) (_ BitVec 64))) (size!47164 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96563)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96563 (_ BitVec 32)) Bool)

(assert (=> b!1413817 (= res!950688 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47816 0))(
  ( (Unit!47817) )
))
(declare-fun lt!623224 () Unit!47816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47816)

(assert (=> b!1413817 (= lt!623224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623230 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96563 (_ BitVec 32)) SeekEntryResult!10946)

(assert (=> b!1413817 (= lt!623225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623230 (select (arr!46613 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413817 (= lt!623230 (toIndex!0 (select (arr!46613 a!2901) j!112) mask!2840))))

(declare-fun b!1413818 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96563 (_ BitVec 32)) SeekEntryResult!10946)

(assert (=> b!1413818 (= e!800163 (= (seekEntryOrOpen!0 (select (arr!46613 a!2901) j!112) a!2901 mask!2840) (Found!10946 j!112)))))

(declare-fun b!1413819 () Bool)

(declare-fun res!950679 () Bool)

(assert (=> b!1413819 (=> (not res!950679) (not e!800165))))

(assert (=> b!1413819 (= res!950679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413820 () Bool)

(declare-fun res!950680 () Bool)

(assert (=> b!1413820 (=> (not res!950680) (not e!800165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413820 (= res!950680 (validKeyInArray!0 (select (arr!46613 a!2901) j!112)))))

(declare-fun b!1413821 () Bool)

(declare-fun res!950683 () Bool)

(assert (=> b!1413821 (=> (not res!950683) (not e!800165))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413821 (= res!950683 (validKeyInArray!0 (select (arr!46613 a!2901) i!1037)))))

(declare-fun b!1413822 () Bool)

(declare-fun e!800161 () Bool)

(declare-fun lt!623227 () SeekEntryResult!10946)

(assert (=> b!1413822 (= e!800161 (or (bvslt (x!127760 lt!623225) #b00000000000000000000000000000000) (bvsgt (x!127760 lt!623225) #b01111111111111111111111111111110) (and (bvsge (x!127760 lt!623227) #b00000000000000000000000000000000) (bvsle (x!127760 lt!623227) #b01111111111111111111111111111110))))))

(declare-fun e!800162 () Bool)

(assert (=> b!1413822 e!800162))

(declare-fun res!950686 () Bool)

(assert (=> b!1413822 (=> (not res!950686) (not e!800162))))

(assert (=> b!1413822 (= res!950686 (and (not (undefined!11758 lt!623227)) (= (index!46168 lt!623227) i!1037) (bvslt (x!127760 lt!623227) (x!127760 lt!623225)) (= (select (store (arr!46613 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46168 lt!623227)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623229 () Unit!47816)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47816)

(assert (=> b!1413822 (= lt!623229 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623230 (x!127760 lt!623225) (index!46168 lt!623225) (x!127760 lt!623227) (index!46168 lt!623227) (undefined!11758 lt!623227) mask!2840))))

(declare-fun b!1413823 () Bool)

(declare-fun res!950684 () Bool)

(assert (=> b!1413823 (=> (not res!950684) (not e!800165))))

(assert (=> b!1413823 (= res!950684 (and (= (size!47164 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47164 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47164 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413825 () Bool)

(declare-fun res!950687 () Bool)

(assert (=> b!1413825 (=> (not res!950687) (not e!800165))))

(declare-datatypes ((List!33312 0))(
  ( (Nil!33309) (Cons!33308 (h!34586 (_ BitVec 64)) (t!48013 List!33312)) )
))
(declare-fun arrayNoDuplicates!0 (array!96563 (_ BitVec 32) List!33312) Bool)

(assert (=> b!1413825 (= res!950687 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33309))))

(declare-fun lt!623226 () array!96563)

(declare-fun b!1413826 () Bool)

(declare-fun lt!623228 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96563 (_ BitVec 32)) SeekEntryResult!10946)

(assert (=> b!1413826 (= e!800162 (= (seekEntryOrOpen!0 lt!623228 lt!623226 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127760 lt!623227) (index!46168 lt!623227) (index!46168 lt!623227) (select (arr!46613 a!2901) j!112) lt!623226 mask!2840)))))

(declare-fun b!1413824 () Bool)

(assert (=> b!1413824 (= e!800164 e!800161)))

(declare-fun res!950682 () Bool)

(assert (=> b!1413824 (=> res!950682 e!800161)))

(assert (=> b!1413824 (= res!950682 (or (= lt!623225 lt!623227) (not ((_ is Intermediate!10946) lt!623227))))))

(assert (=> b!1413824 (= lt!623227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623228 mask!2840) lt!623228 lt!623226 mask!2840))))

(assert (=> b!1413824 (= lt!623228 (select (store (arr!46613 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413824 (= lt!623226 (array!96564 (store (arr!46613 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47164 a!2901)))))

(declare-fun res!950685 () Bool)

(assert (=> start!121770 (=> (not res!950685) (not e!800165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121770 (= res!950685 (validMask!0 mask!2840))))

(assert (=> start!121770 e!800165))

(assert (=> start!121770 true))

(declare-fun array_inv!35558 (array!96563) Bool)

(assert (=> start!121770 (array_inv!35558 a!2901)))

(assert (= (and start!121770 res!950685) b!1413823))

(assert (= (and b!1413823 res!950684) b!1413821))

(assert (= (and b!1413821 res!950683) b!1413820))

(assert (= (and b!1413820 res!950680) b!1413819))

(assert (= (and b!1413819 res!950679) b!1413825))

(assert (= (and b!1413825 res!950687) b!1413817))

(assert (= (and b!1413817 res!950688) b!1413818))

(assert (= (and b!1413817 (not res!950681)) b!1413824))

(assert (= (and b!1413824 (not res!950682)) b!1413822))

(assert (= (and b!1413822 res!950686) b!1413826))

(declare-fun m!1304249 () Bool)

(assert (=> b!1413817 m!1304249))

(declare-fun m!1304251 () Bool)

(assert (=> b!1413817 m!1304251))

(assert (=> b!1413817 m!1304249))

(declare-fun m!1304253 () Bool)

(assert (=> b!1413817 m!1304253))

(assert (=> b!1413817 m!1304249))

(declare-fun m!1304255 () Bool)

(assert (=> b!1413817 m!1304255))

(declare-fun m!1304257 () Bool)

(assert (=> b!1413817 m!1304257))

(declare-fun m!1304259 () Bool)

(assert (=> b!1413825 m!1304259))

(assert (=> b!1413818 m!1304249))

(assert (=> b!1413818 m!1304249))

(declare-fun m!1304261 () Bool)

(assert (=> b!1413818 m!1304261))

(declare-fun m!1304263 () Bool)

(assert (=> b!1413824 m!1304263))

(assert (=> b!1413824 m!1304263))

(declare-fun m!1304265 () Bool)

(assert (=> b!1413824 m!1304265))

(declare-fun m!1304267 () Bool)

(assert (=> b!1413824 m!1304267))

(declare-fun m!1304269 () Bool)

(assert (=> b!1413824 m!1304269))

(declare-fun m!1304271 () Bool)

(assert (=> b!1413826 m!1304271))

(assert (=> b!1413826 m!1304249))

(assert (=> b!1413826 m!1304249))

(declare-fun m!1304273 () Bool)

(assert (=> b!1413826 m!1304273))

(assert (=> b!1413822 m!1304267))

(declare-fun m!1304275 () Bool)

(assert (=> b!1413822 m!1304275))

(declare-fun m!1304277 () Bool)

(assert (=> b!1413822 m!1304277))

(declare-fun m!1304279 () Bool)

(assert (=> b!1413821 m!1304279))

(assert (=> b!1413821 m!1304279))

(declare-fun m!1304281 () Bool)

(assert (=> b!1413821 m!1304281))

(declare-fun m!1304283 () Bool)

(assert (=> start!121770 m!1304283))

(declare-fun m!1304285 () Bool)

(assert (=> start!121770 m!1304285))

(assert (=> b!1413820 m!1304249))

(assert (=> b!1413820 m!1304249))

(declare-fun m!1304287 () Bool)

(assert (=> b!1413820 m!1304287))

(declare-fun m!1304289 () Bool)

(assert (=> b!1413819 m!1304289))

(check-sat (not b!1413817) (not b!1413824) (not b!1413820) (not b!1413822) (not start!121770) (not b!1413826) (not b!1413821) (not b!1413818) (not b!1413825) (not b!1413819))
(check-sat)
(get-model)

(declare-fun d!152149 () Bool)

(assert (=> d!152149 (and (not (undefined!11758 lt!623227)) (= (index!46168 lt!623227) i!1037) (bvslt (x!127760 lt!623227) (x!127760 lt!623225)))))

(declare-fun lt!623254 () Unit!47816)

(declare-fun choose!62 (array!96563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47816)

(assert (=> d!152149 (= lt!623254 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623230 (x!127760 lt!623225) (index!46168 lt!623225) (x!127760 lt!623227) (index!46168 lt!623227) (undefined!11758 lt!623227) mask!2840))))

(assert (=> d!152149 (validMask!0 mask!2840)))

(assert (=> d!152149 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623230 (x!127760 lt!623225) (index!46168 lt!623225) (x!127760 lt!623227) (index!46168 lt!623227) (undefined!11758 lt!623227) mask!2840) lt!623254)))

(declare-fun bs!41219 () Bool)

(assert (= bs!41219 d!152149))

(declare-fun m!1304333 () Bool)

(assert (=> bs!41219 m!1304333))

(assert (=> bs!41219 m!1304283))

(assert (=> b!1413822 d!152149))

(declare-fun d!152151 () Bool)

(assert (=> d!152151 (= (validKeyInArray!0 (select (arr!46613 a!2901) i!1037)) (and (not (= (select (arr!46613 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46613 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413821 d!152151))

(declare-fun d!152153 () Bool)

(assert (=> d!152153 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121770 d!152153))

(declare-fun d!152155 () Bool)

(assert (=> d!152155 (= (array_inv!35558 a!2901) (bvsge (size!47164 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121770 d!152155))

(declare-fun lt!623262 () SeekEntryResult!10946)

(declare-fun b!1413869 () Bool)

(declare-fun e!800190 () SeekEntryResult!10946)

(assert (=> b!1413869 (= e!800190 (seekKeyOrZeroReturnVacant!0 (x!127760 lt!623262) (index!46168 lt!623262) (index!46168 lt!623262) (select (arr!46613 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413870 () Bool)

(assert (=> b!1413870 (= e!800190 (MissingZero!10946 (index!46168 lt!623262)))))

(declare-fun d!152157 () Bool)

(declare-fun lt!623263 () SeekEntryResult!10946)

(assert (=> d!152157 (and (or ((_ is Undefined!10946) lt!623263) (not ((_ is Found!10946) lt!623263)) (and (bvsge (index!46167 lt!623263) #b00000000000000000000000000000000) (bvslt (index!46167 lt!623263) (size!47164 a!2901)))) (or ((_ is Undefined!10946) lt!623263) ((_ is Found!10946) lt!623263) (not ((_ is MissingZero!10946) lt!623263)) (and (bvsge (index!46166 lt!623263) #b00000000000000000000000000000000) (bvslt (index!46166 lt!623263) (size!47164 a!2901)))) (or ((_ is Undefined!10946) lt!623263) ((_ is Found!10946) lt!623263) ((_ is MissingZero!10946) lt!623263) (not ((_ is MissingVacant!10946) lt!623263)) (and (bvsge (index!46169 lt!623263) #b00000000000000000000000000000000) (bvslt (index!46169 lt!623263) (size!47164 a!2901)))) (or ((_ is Undefined!10946) lt!623263) (ite ((_ is Found!10946) lt!623263) (= (select (arr!46613 a!2901) (index!46167 lt!623263)) (select (arr!46613 a!2901) j!112)) (ite ((_ is MissingZero!10946) lt!623263) (= (select (arr!46613 a!2901) (index!46166 lt!623263)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10946) lt!623263) (= (select (arr!46613 a!2901) (index!46169 lt!623263)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800191 () SeekEntryResult!10946)

(assert (=> d!152157 (= lt!623263 e!800191)))

(declare-fun c!131054 () Bool)

(assert (=> d!152157 (= c!131054 (and ((_ is Intermediate!10946) lt!623262) (undefined!11758 lt!623262)))))

(assert (=> d!152157 (= lt!623262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46613 a!2901) j!112) mask!2840) (select (arr!46613 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152157 (validMask!0 mask!2840)))

(assert (=> d!152157 (= (seekEntryOrOpen!0 (select (arr!46613 a!2901) j!112) a!2901 mask!2840) lt!623263)))

(declare-fun b!1413871 () Bool)

(assert (=> b!1413871 (= e!800191 Undefined!10946)))

(declare-fun b!1413872 () Bool)

(declare-fun e!800192 () SeekEntryResult!10946)

(assert (=> b!1413872 (= e!800191 e!800192)))

(declare-fun lt!623261 () (_ BitVec 64))

(assert (=> b!1413872 (= lt!623261 (select (arr!46613 a!2901) (index!46168 lt!623262)))))

(declare-fun c!131053 () Bool)

(assert (=> b!1413872 (= c!131053 (= lt!623261 (select (arr!46613 a!2901) j!112)))))

(declare-fun b!1413873 () Bool)

(declare-fun c!131052 () Bool)

(assert (=> b!1413873 (= c!131052 (= lt!623261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413873 (= e!800192 e!800190)))

(declare-fun b!1413874 () Bool)

(assert (=> b!1413874 (= e!800192 (Found!10946 (index!46168 lt!623262)))))

(assert (= (and d!152157 c!131054) b!1413871))

(assert (= (and d!152157 (not c!131054)) b!1413872))

(assert (= (and b!1413872 c!131053) b!1413874))

(assert (= (and b!1413872 (not c!131053)) b!1413873))

(assert (= (and b!1413873 c!131052) b!1413870))

(assert (= (and b!1413873 (not c!131052)) b!1413869))

(assert (=> b!1413869 m!1304249))

(declare-fun m!1304335 () Bool)

(assert (=> b!1413869 m!1304335))

(assert (=> d!152157 m!1304249))

(assert (=> d!152157 m!1304251))

(assert (=> d!152157 m!1304251))

(assert (=> d!152157 m!1304249))

(declare-fun m!1304337 () Bool)

(assert (=> d!152157 m!1304337))

(assert (=> d!152157 m!1304283))

(declare-fun m!1304339 () Bool)

(assert (=> d!152157 m!1304339))

(declare-fun m!1304341 () Bool)

(assert (=> d!152157 m!1304341))

(declare-fun m!1304343 () Bool)

(assert (=> d!152157 m!1304343))

(declare-fun m!1304345 () Bool)

(assert (=> b!1413872 m!1304345))

(assert (=> b!1413818 d!152157))

(declare-fun call!67122 () Bool)

(declare-fun bm!67119 () Bool)

(assert (=> bm!67119 (= call!67122 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413916 () Bool)

(declare-fun e!800221 () Bool)

(declare-fun e!800222 () Bool)

(assert (=> b!1413916 (= e!800221 e!800222)))

(declare-fun lt!623277 () (_ BitVec 64))

(assert (=> b!1413916 (= lt!623277 (select (arr!46613 a!2901) j!112))))

(declare-fun lt!623278 () Unit!47816)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96563 (_ BitVec 64) (_ BitVec 32)) Unit!47816)

(assert (=> b!1413916 (= lt!623278 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623277 j!112))))

(declare-fun arrayContainsKey!0 (array!96563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1413916 (arrayContainsKey!0 a!2901 lt!623277 #b00000000000000000000000000000000)))

(declare-fun lt!623279 () Unit!47816)

(assert (=> b!1413916 (= lt!623279 lt!623278)))

(declare-fun res!950739 () Bool)

(assert (=> b!1413916 (= res!950739 (= (seekEntryOrOpen!0 (select (arr!46613 a!2901) j!112) a!2901 mask!2840) (Found!10946 j!112)))))

(assert (=> b!1413916 (=> (not res!950739) (not e!800222))))

(declare-fun b!1413917 () Bool)

(declare-fun e!800223 () Bool)

(assert (=> b!1413917 (= e!800223 e!800221)))

(declare-fun c!131066 () Bool)

(assert (=> b!1413917 (= c!131066 (validKeyInArray!0 (select (arr!46613 a!2901) j!112)))))

(declare-fun b!1413918 () Bool)

(assert (=> b!1413918 (= e!800222 call!67122)))

(declare-fun d!152165 () Bool)

(declare-fun res!950738 () Bool)

(assert (=> d!152165 (=> res!950738 e!800223)))

(assert (=> d!152165 (= res!950738 (bvsge j!112 (size!47164 a!2901)))))

(assert (=> d!152165 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800223)))

(declare-fun b!1413919 () Bool)

(assert (=> b!1413919 (= e!800221 call!67122)))

(assert (= (and d!152165 (not res!950738)) b!1413917))

(assert (= (and b!1413917 c!131066) b!1413916))

(assert (= (and b!1413917 (not c!131066)) b!1413919))

(assert (= (and b!1413916 res!950739) b!1413918))

(assert (= (or b!1413918 b!1413919) bm!67119))

(declare-fun m!1304357 () Bool)

(assert (=> bm!67119 m!1304357))

(assert (=> b!1413916 m!1304249))

(declare-fun m!1304359 () Bool)

(assert (=> b!1413916 m!1304359))

(declare-fun m!1304361 () Bool)

(assert (=> b!1413916 m!1304361))

(assert (=> b!1413916 m!1304249))

(assert (=> b!1413916 m!1304261))

(assert (=> b!1413917 m!1304249))

(assert (=> b!1413917 m!1304249))

(assert (=> b!1413917 m!1304287))

(assert (=> b!1413817 d!152165))

(declare-fun d!152171 () Bool)

(assert (=> d!152171 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623284 () Unit!47816)

(declare-fun choose!38 (array!96563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47816)

(assert (=> d!152171 (= lt!623284 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152171 (validMask!0 mask!2840)))

(assert (=> d!152171 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623284)))

(declare-fun bs!41221 () Bool)

(assert (= bs!41221 d!152171))

(assert (=> bs!41221 m!1304257))

(declare-fun m!1304371 () Bool)

(assert (=> bs!41221 m!1304371))

(assert (=> bs!41221 m!1304283))

(assert (=> b!1413817 d!152171))

(declare-fun b!1413980 () Bool)

(declare-fun lt!623304 () SeekEntryResult!10946)

(assert (=> b!1413980 (and (bvsge (index!46168 lt!623304) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623304) (size!47164 a!2901)))))

(declare-fun res!950761 () Bool)

(assert (=> b!1413980 (= res!950761 (= (select (arr!46613 a!2901) (index!46168 lt!623304)) (select (arr!46613 a!2901) j!112)))))

(declare-fun e!800261 () Bool)

(assert (=> b!1413980 (=> res!950761 e!800261)))

(declare-fun e!800264 () Bool)

(assert (=> b!1413980 (= e!800264 e!800261)))

(declare-fun b!1413981 () Bool)

(assert (=> b!1413981 (and (bvsge (index!46168 lt!623304) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623304) (size!47164 a!2901)))))

(assert (=> b!1413981 (= e!800261 (= (select (arr!46613 a!2901) (index!46168 lt!623304)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!152175 () Bool)

(declare-fun e!800263 () Bool)

(assert (=> d!152175 e!800263))

(declare-fun c!131088 () Bool)

(assert (=> d!152175 (= c!131088 (and ((_ is Intermediate!10946) lt!623304) (undefined!11758 lt!623304)))))

(declare-fun e!800260 () SeekEntryResult!10946)

(assert (=> d!152175 (= lt!623304 e!800260)))

(declare-fun c!131090 () Bool)

(assert (=> d!152175 (= c!131090 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623305 () (_ BitVec 64))

(assert (=> d!152175 (= lt!623305 (select (arr!46613 a!2901) lt!623230))))

(assert (=> d!152175 (validMask!0 mask!2840)))

(assert (=> d!152175 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623230 (select (arr!46613 a!2901) j!112) a!2901 mask!2840) lt!623304)))

(declare-fun b!1413982 () Bool)

(declare-fun e!800262 () SeekEntryResult!10946)

(assert (=> b!1413982 (= e!800260 e!800262)))

(declare-fun c!131089 () Bool)

(assert (=> b!1413982 (= c!131089 (or (= lt!623305 (select (arr!46613 a!2901) j!112)) (= (bvadd lt!623305 lt!623305) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1413983 () Bool)

(assert (=> b!1413983 (and (bvsge (index!46168 lt!623304) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623304) (size!47164 a!2901)))))

(declare-fun res!950760 () Bool)

(assert (=> b!1413983 (= res!950760 (= (select (arr!46613 a!2901) (index!46168 lt!623304)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413983 (=> res!950760 e!800261)))

(declare-fun b!1413984 () Bool)

(assert (=> b!1413984 (= e!800260 (Intermediate!10946 true lt!623230 #b00000000000000000000000000000000))))

(declare-fun b!1413985 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413985 (= e!800262 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623230 #b00000000000000000000000000000000 mask!2840) (select (arr!46613 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1413986 () Bool)

(assert (=> b!1413986 (= e!800263 (bvsge (x!127760 lt!623304) #b01111111111111111111111111111110))))

(declare-fun b!1413987 () Bool)

(assert (=> b!1413987 (= e!800263 e!800264)))

(declare-fun res!950759 () Bool)

(assert (=> b!1413987 (= res!950759 (and ((_ is Intermediate!10946) lt!623304) (not (undefined!11758 lt!623304)) (bvslt (x!127760 lt!623304) #b01111111111111111111111111111110) (bvsge (x!127760 lt!623304) #b00000000000000000000000000000000) (bvsge (x!127760 lt!623304) #b00000000000000000000000000000000)))))

(assert (=> b!1413987 (=> (not res!950759) (not e!800264))))

(declare-fun b!1413988 () Bool)

(assert (=> b!1413988 (= e!800262 (Intermediate!10946 false lt!623230 #b00000000000000000000000000000000))))

(assert (= (and d!152175 c!131090) b!1413984))

(assert (= (and d!152175 (not c!131090)) b!1413982))

(assert (= (and b!1413982 c!131089) b!1413988))

(assert (= (and b!1413982 (not c!131089)) b!1413985))

(assert (= (and d!152175 c!131088) b!1413986))

(assert (= (and d!152175 (not c!131088)) b!1413987))

(assert (= (and b!1413987 res!950759) b!1413980))

(assert (= (and b!1413980 (not res!950761)) b!1413983))

(assert (= (and b!1413983 (not res!950760)) b!1413981))

(declare-fun m!1304393 () Bool)

(assert (=> b!1413983 m!1304393))

(assert (=> b!1413981 m!1304393))

(declare-fun m!1304395 () Bool)

(assert (=> b!1413985 m!1304395))

(assert (=> b!1413985 m!1304395))

(assert (=> b!1413985 m!1304249))

(declare-fun m!1304397 () Bool)

(assert (=> b!1413985 m!1304397))

(declare-fun m!1304399 () Bool)

(assert (=> d!152175 m!1304399))

(assert (=> d!152175 m!1304283))

(assert (=> b!1413980 m!1304393))

(assert (=> b!1413817 d!152175))

(declare-fun d!152189 () Bool)

(declare-fun lt!623311 () (_ BitVec 32))

(declare-fun lt!623310 () (_ BitVec 32))

(assert (=> d!152189 (= lt!623311 (bvmul (bvxor lt!623310 (bvlshr lt!623310 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152189 (= lt!623310 ((_ extract 31 0) (bvand (bvxor (select (arr!46613 a!2901) j!112) (bvlshr (select (arr!46613 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152189 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950762 (let ((h!34589 ((_ extract 31 0) (bvand (bvxor (select (arr!46613 a!2901) j!112) (bvlshr (select (arr!46613 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127767 (bvmul (bvxor h!34589 (bvlshr h!34589 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127767 (bvlshr x!127767 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950762 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950762 #b00000000000000000000000000000000))))))

(assert (=> d!152189 (= (toIndex!0 (select (arr!46613 a!2901) j!112) mask!2840) (bvand (bvxor lt!623311 (bvlshr lt!623311 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413817 d!152189))

(declare-fun bm!67123 () Bool)

(declare-fun call!67126 () Bool)

(assert (=> bm!67123 (= call!67126 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1413989 () Bool)

(declare-fun e!800265 () Bool)

(declare-fun e!800266 () Bool)

(assert (=> b!1413989 (= e!800265 e!800266)))

(declare-fun lt!623312 () (_ BitVec 64))

(assert (=> b!1413989 (= lt!623312 (select (arr!46613 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623313 () Unit!47816)

(assert (=> b!1413989 (= lt!623313 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623312 #b00000000000000000000000000000000))))

(assert (=> b!1413989 (arrayContainsKey!0 a!2901 lt!623312 #b00000000000000000000000000000000)))

(declare-fun lt!623314 () Unit!47816)

(assert (=> b!1413989 (= lt!623314 lt!623313)))

(declare-fun res!950764 () Bool)

(assert (=> b!1413989 (= res!950764 (= (seekEntryOrOpen!0 (select (arr!46613 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10946 #b00000000000000000000000000000000)))))

(assert (=> b!1413989 (=> (not res!950764) (not e!800266))))

(declare-fun b!1413990 () Bool)

(declare-fun e!800267 () Bool)

(assert (=> b!1413990 (= e!800267 e!800265)))

(declare-fun c!131091 () Bool)

(assert (=> b!1413990 (= c!131091 (validKeyInArray!0 (select (arr!46613 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413991 () Bool)

(assert (=> b!1413991 (= e!800266 call!67126)))

(declare-fun d!152195 () Bool)

(declare-fun res!950763 () Bool)

(assert (=> d!152195 (=> res!950763 e!800267)))

(assert (=> d!152195 (= res!950763 (bvsge #b00000000000000000000000000000000 (size!47164 a!2901)))))

(assert (=> d!152195 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800267)))

(declare-fun b!1413992 () Bool)

(assert (=> b!1413992 (= e!800265 call!67126)))

(assert (= (and d!152195 (not res!950763)) b!1413990))

(assert (= (and b!1413990 c!131091) b!1413989))

(assert (= (and b!1413990 (not c!131091)) b!1413992))

(assert (= (and b!1413989 res!950764) b!1413991))

(assert (= (or b!1413991 b!1413992) bm!67123))

(declare-fun m!1304401 () Bool)

(assert (=> bm!67123 m!1304401))

(declare-fun m!1304403 () Bool)

(assert (=> b!1413989 m!1304403))

(declare-fun m!1304405 () Bool)

(assert (=> b!1413989 m!1304405))

(declare-fun m!1304407 () Bool)

(assert (=> b!1413989 m!1304407))

(assert (=> b!1413989 m!1304403))

(declare-fun m!1304409 () Bool)

(assert (=> b!1413989 m!1304409))

(assert (=> b!1413990 m!1304403))

(assert (=> b!1413990 m!1304403))

(declare-fun m!1304411 () Bool)

(assert (=> b!1413990 m!1304411))

(assert (=> b!1413819 d!152195))

(declare-fun b!1413993 () Bool)

(declare-fun lt!623315 () SeekEntryResult!10946)

(assert (=> b!1413993 (and (bvsge (index!46168 lt!623315) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623315) (size!47164 lt!623226)))))

(declare-fun res!950767 () Bool)

(assert (=> b!1413993 (= res!950767 (= (select (arr!46613 lt!623226) (index!46168 lt!623315)) lt!623228))))

(declare-fun e!800269 () Bool)

(assert (=> b!1413993 (=> res!950767 e!800269)))

(declare-fun e!800272 () Bool)

(assert (=> b!1413993 (= e!800272 e!800269)))

(declare-fun b!1413994 () Bool)

(assert (=> b!1413994 (and (bvsge (index!46168 lt!623315) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623315) (size!47164 lt!623226)))))

(assert (=> b!1413994 (= e!800269 (= (select (arr!46613 lt!623226) (index!46168 lt!623315)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!152197 () Bool)

(declare-fun e!800271 () Bool)

(assert (=> d!152197 e!800271))

(declare-fun c!131092 () Bool)

(assert (=> d!152197 (= c!131092 (and ((_ is Intermediate!10946) lt!623315) (undefined!11758 lt!623315)))))

(declare-fun e!800268 () SeekEntryResult!10946)

(assert (=> d!152197 (= lt!623315 e!800268)))

(declare-fun c!131094 () Bool)

(assert (=> d!152197 (= c!131094 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623316 () (_ BitVec 64))

(assert (=> d!152197 (= lt!623316 (select (arr!46613 lt!623226) (toIndex!0 lt!623228 mask!2840)))))

(assert (=> d!152197 (validMask!0 mask!2840)))

(assert (=> d!152197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623228 mask!2840) lt!623228 lt!623226 mask!2840) lt!623315)))

(declare-fun b!1413995 () Bool)

(declare-fun e!800270 () SeekEntryResult!10946)

(assert (=> b!1413995 (= e!800268 e!800270)))

(declare-fun c!131093 () Bool)

(assert (=> b!1413995 (= c!131093 (or (= lt!623316 lt!623228) (= (bvadd lt!623316 lt!623316) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1413996 () Bool)

(assert (=> b!1413996 (and (bvsge (index!46168 lt!623315) #b00000000000000000000000000000000) (bvslt (index!46168 lt!623315) (size!47164 lt!623226)))))

(declare-fun res!950766 () Bool)

(assert (=> b!1413996 (= res!950766 (= (select (arr!46613 lt!623226) (index!46168 lt!623315)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413996 (=> res!950766 e!800269)))

(declare-fun b!1413997 () Bool)

(assert (=> b!1413997 (= e!800268 (Intermediate!10946 true (toIndex!0 lt!623228 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1413998 () Bool)

(assert (=> b!1413998 (= e!800270 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623228 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623228 lt!623226 mask!2840))))

(declare-fun b!1413999 () Bool)

(assert (=> b!1413999 (= e!800271 (bvsge (x!127760 lt!623315) #b01111111111111111111111111111110))))

(declare-fun b!1414000 () Bool)

(assert (=> b!1414000 (= e!800271 e!800272)))

(declare-fun res!950765 () Bool)

(assert (=> b!1414000 (= res!950765 (and ((_ is Intermediate!10946) lt!623315) (not (undefined!11758 lt!623315)) (bvslt (x!127760 lt!623315) #b01111111111111111111111111111110) (bvsge (x!127760 lt!623315) #b00000000000000000000000000000000) (bvsge (x!127760 lt!623315) #b00000000000000000000000000000000)))))

(assert (=> b!1414000 (=> (not res!950765) (not e!800272))))

(declare-fun b!1414001 () Bool)

(assert (=> b!1414001 (= e!800270 (Intermediate!10946 false (toIndex!0 lt!623228 mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!152197 c!131094) b!1413997))

(assert (= (and d!152197 (not c!131094)) b!1413995))

(assert (= (and b!1413995 c!131093) b!1414001))

(assert (= (and b!1413995 (not c!131093)) b!1413998))

(assert (= (and d!152197 c!131092) b!1413999))

(assert (= (and d!152197 (not c!131092)) b!1414000))

(assert (= (and b!1414000 res!950765) b!1413993))

(assert (= (and b!1413993 (not res!950767)) b!1413996))

(assert (= (and b!1413996 (not res!950766)) b!1413994))

(declare-fun m!1304413 () Bool)

(assert (=> b!1413996 m!1304413))

(assert (=> b!1413994 m!1304413))

(assert (=> b!1413998 m!1304263))

(declare-fun m!1304415 () Bool)

(assert (=> b!1413998 m!1304415))

(assert (=> b!1413998 m!1304415))

(declare-fun m!1304417 () Bool)

(assert (=> b!1413998 m!1304417))

(assert (=> d!152197 m!1304263))

(declare-fun m!1304419 () Bool)

(assert (=> d!152197 m!1304419))

(assert (=> d!152197 m!1304283))

(assert (=> b!1413993 m!1304413))

(assert (=> b!1413824 d!152197))

(declare-fun d!152199 () Bool)

(declare-fun lt!623318 () (_ BitVec 32))

(declare-fun lt!623317 () (_ BitVec 32))

(assert (=> d!152199 (= lt!623318 (bvmul (bvxor lt!623317 (bvlshr lt!623317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152199 (= lt!623317 ((_ extract 31 0) (bvand (bvxor lt!623228 (bvlshr lt!623228 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152199 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950762 (let ((h!34589 ((_ extract 31 0) (bvand (bvxor lt!623228 (bvlshr lt!623228 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127767 (bvmul (bvxor h!34589 (bvlshr h!34589 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127767 (bvlshr x!127767 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950762 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950762 #b00000000000000000000000000000000))))))

(assert (=> d!152199 (= (toIndex!0 lt!623228 mask!2840) (bvand (bvxor lt!623318 (bvlshr lt!623318 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413824 d!152199))

(declare-fun e!800273 () SeekEntryResult!10946)

(declare-fun lt!623320 () SeekEntryResult!10946)

(declare-fun b!1414002 () Bool)

(assert (=> b!1414002 (= e!800273 (seekKeyOrZeroReturnVacant!0 (x!127760 lt!623320) (index!46168 lt!623320) (index!46168 lt!623320) lt!623228 lt!623226 mask!2840))))

(declare-fun b!1414003 () Bool)

(assert (=> b!1414003 (= e!800273 (MissingZero!10946 (index!46168 lt!623320)))))

(declare-fun d!152201 () Bool)

(declare-fun lt!623321 () SeekEntryResult!10946)

(assert (=> d!152201 (and (or ((_ is Undefined!10946) lt!623321) (not ((_ is Found!10946) lt!623321)) (and (bvsge (index!46167 lt!623321) #b00000000000000000000000000000000) (bvslt (index!46167 lt!623321) (size!47164 lt!623226)))) (or ((_ is Undefined!10946) lt!623321) ((_ is Found!10946) lt!623321) (not ((_ is MissingZero!10946) lt!623321)) (and (bvsge (index!46166 lt!623321) #b00000000000000000000000000000000) (bvslt (index!46166 lt!623321) (size!47164 lt!623226)))) (or ((_ is Undefined!10946) lt!623321) ((_ is Found!10946) lt!623321) ((_ is MissingZero!10946) lt!623321) (not ((_ is MissingVacant!10946) lt!623321)) (and (bvsge (index!46169 lt!623321) #b00000000000000000000000000000000) (bvslt (index!46169 lt!623321) (size!47164 lt!623226)))) (or ((_ is Undefined!10946) lt!623321) (ite ((_ is Found!10946) lt!623321) (= (select (arr!46613 lt!623226) (index!46167 lt!623321)) lt!623228) (ite ((_ is MissingZero!10946) lt!623321) (= (select (arr!46613 lt!623226) (index!46166 lt!623321)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10946) lt!623321) (= (select (arr!46613 lt!623226) (index!46169 lt!623321)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800274 () SeekEntryResult!10946)

(assert (=> d!152201 (= lt!623321 e!800274)))

(declare-fun c!131097 () Bool)

(assert (=> d!152201 (= c!131097 (and ((_ is Intermediate!10946) lt!623320) (undefined!11758 lt!623320)))))

(assert (=> d!152201 (= lt!623320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623228 mask!2840) lt!623228 lt!623226 mask!2840))))

(assert (=> d!152201 (validMask!0 mask!2840)))

(assert (=> d!152201 (= (seekEntryOrOpen!0 lt!623228 lt!623226 mask!2840) lt!623321)))

(declare-fun b!1414004 () Bool)

(assert (=> b!1414004 (= e!800274 Undefined!10946)))

(declare-fun b!1414005 () Bool)

(declare-fun e!800275 () SeekEntryResult!10946)

(assert (=> b!1414005 (= e!800274 e!800275)))

(declare-fun lt!623319 () (_ BitVec 64))

(assert (=> b!1414005 (= lt!623319 (select (arr!46613 lt!623226) (index!46168 lt!623320)))))

(declare-fun c!131096 () Bool)

(assert (=> b!1414005 (= c!131096 (= lt!623319 lt!623228))))

(declare-fun b!1414006 () Bool)

(declare-fun c!131095 () Bool)

(assert (=> b!1414006 (= c!131095 (= lt!623319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414006 (= e!800275 e!800273)))

(declare-fun b!1414007 () Bool)

(assert (=> b!1414007 (= e!800275 (Found!10946 (index!46168 lt!623320)))))

(assert (= (and d!152201 c!131097) b!1414004))

(assert (= (and d!152201 (not c!131097)) b!1414005))

(assert (= (and b!1414005 c!131096) b!1414007))

(assert (= (and b!1414005 (not c!131096)) b!1414006))

(assert (= (and b!1414006 c!131095) b!1414003))

(assert (= (and b!1414006 (not c!131095)) b!1414002))

(declare-fun m!1304421 () Bool)

(assert (=> b!1414002 m!1304421))

(assert (=> d!152201 m!1304263))

(assert (=> d!152201 m!1304263))

(assert (=> d!152201 m!1304265))

(assert (=> d!152201 m!1304283))

(declare-fun m!1304423 () Bool)

(assert (=> d!152201 m!1304423))

(declare-fun m!1304425 () Bool)

(assert (=> d!152201 m!1304425))

(declare-fun m!1304427 () Bool)

(assert (=> d!152201 m!1304427))

(declare-fun m!1304429 () Bool)

(assert (=> b!1414005 m!1304429))

(assert (=> b!1413826 d!152201))

(declare-fun b!1414050 () Bool)

(declare-fun e!800300 () SeekEntryResult!10946)

(declare-fun e!800302 () SeekEntryResult!10946)

(assert (=> b!1414050 (= e!800300 e!800302)))

(declare-fun lt!623347 () (_ BitVec 64))

(declare-fun c!131116 () Bool)

(assert (=> b!1414050 (= c!131116 (= lt!623347 (select (arr!46613 a!2901) j!112)))))

(declare-fun b!1414051 () Bool)

(assert (=> b!1414051 (= e!800302 (Found!10946 (index!46168 lt!623227)))))

(declare-fun lt!623348 () SeekEntryResult!10946)

(declare-fun d!152203 () Bool)

(assert (=> d!152203 (and (or ((_ is Undefined!10946) lt!623348) (not ((_ is Found!10946) lt!623348)) (and (bvsge (index!46167 lt!623348) #b00000000000000000000000000000000) (bvslt (index!46167 lt!623348) (size!47164 lt!623226)))) (or ((_ is Undefined!10946) lt!623348) ((_ is Found!10946) lt!623348) (not ((_ is MissingVacant!10946) lt!623348)) (not (= (index!46169 lt!623348) (index!46168 lt!623227))) (and (bvsge (index!46169 lt!623348) #b00000000000000000000000000000000) (bvslt (index!46169 lt!623348) (size!47164 lt!623226)))) (or ((_ is Undefined!10946) lt!623348) (ite ((_ is Found!10946) lt!623348) (= (select (arr!46613 lt!623226) (index!46167 lt!623348)) (select (arr!46613 a!2901) j!112)) (and ((_ is MissingVacant!10946) lt!623348) (= (index!46169 lt!623348) (index!46168 lt!623227)) (= (select (arr!46613 lt!623226) (index!46169 lt!623348)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152203 (= lt!623348 e!800300)))

(declare-fun c!131117 () Bool)

(assert (=> d!152203 (= c!131117 (bvsge (x!127760 lt!623227) #b01111111111111111111111111111110))))

(assert (=> d!152203 (= lt!623347 (select (arr!46613 lt!623226) (index!46168 lt!623227)))))

(assert (=> d!152203 (validMask!0 mask!2840)))

(assert (=> d!152203 (= (seekKeyOrZeroReturnVacant!0 (x!127760 lt!623227) (index!46168 lt!623227) (index!46168 lt!623227) (select (arr!46613 a!2901) j!112) lt!623226 mask!2840) lt!623348)))

(declare-fun b!1414052 () Bool)

(declare-fun c!131118 () Bool)

(assert (=> b!1414052 (= c!131118 (= lt!623347 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800301 () SeekEntryResult!10946)

(assert (=> b!1414052 (= e!800302 e!800301)))

(declare-fun b!1414053 () Bool)

(assert (=> b!1414053 (= e!800301 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127760 lt!623227) #b00000000000000000000000000000001) (nextIndex!0 (index!46168 lt!623227) (x!127760 lt!623227) mask!2840) (index!46168 lt!623227) (select (arr!46613 a!2901) j!112) lt!623226 mask!2840))))

(declare-fun b!1414054 () Bool)

(assert (=> b!1414054 (= e!800300 Undefined!10946)))

(declare-fun b!1414055 () Bool)

(assert (=> b!1414055 (= e!800301 (MissingVacant!10946 (index!46168 lt!623227)))))

(assert (= (and d!152203 c!131117) b!1414054))

(assert (= (and d!152203 (not c!131117)) b!1414050))

(assert (= (and b!1414050 c!131116) b!1414051))

(assert (= (and b!1414050 (not c!131116)) b!1414052))

(assert (= (and b!1414052 c!131118) b!1414055))

(assert (= (and b!1414052 (not c!131118)) b!1414053))

(declare-fun m!1304451 () Bool)

(assert (=> d!152203 m!1304451))

(declare-fun m!1304453 () Bool)

(assert (=> d!152203 m!1304453))

(declare-fun m!1304455 () Bool)

(assert (=> d!152203 m!1304455))

(assert (=> d!152203 m!1304283))

(declare-fun m!1304457 () Bool)

(assert (=> b!1414053 m!1304457))

(assert (=> b!1414053 m!1304457))

(assert (=> b!1414053 m!1304249))

(declare-fun m!1304459 () Bool)

(assert (=> b!1414053 m!1304459))

(assert (=> b!1413826 d!152203))

(declare-fun b!1414078 () Bool)

(declare-fun e!800321 () Bool)

(declare-fun e!800322 () Bool)

(assert (=> b!1414078 (= e!800321 e!800322)))

(declare-fun c!131124 () Bool)

(assert (=> b!1414078 (= c!131124 (validKeyInArray!0 (select (arr!46613 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67132 () Bool)

(declare-fun call!67135 () Bool)

(assert (=> bm!67132 (= call!67135 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131124 (Cons!33308 (select (arr!46613 a!2901) #b00000000000000000000000000000000) Nil!33309) Nil!33309)))))

(declare-fun b!1414079 () Bool)

(declare-fun e!800320 () Bool)

(assert (=> b!1414079 (= e!800320 e!800321)))

(declare-fun res!950787 () Bool)

(assert (=> b!1414079 (=> (not res!950787) (not e!800321))))

(declare-fun e!800323 () Bool)

(assert (=> b!1414079 (= res!950787 (not e!800323))))

(declare-fun res!950786 () Bool)

(assert (=> b!1414079 (=> (not res!950786) (not e!800323))))

(assert (=> b!1414079 (= res!950786 (validKeyInArray!0 (select (arr!46613 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414080 () Bool)

(assert (=> b!1414080 (= e!800322 call!67135)))

(declare-fun b!1414081 () Bool)

(declare-fun contains!9832 (List!33312 (_ BitVec 64)) Bool)

(assert (=> b!1414081 (= e!800323 (contains!9832 Nil!33309 (select (arr!46613 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414082 () Bool)

(assert (=> b!1414082 (= e!800322 call!67135)))

(declare-fun d!152211 () Bool)

(declare-fun res!950788 () Bool)

(assert (=> d!152211 (=> res!950788 e!800320)))

(assert (=> d!152211 (= res!950788 (bvsge #b00000000000000000000000000000000 (size!47164 a!2901)))))

(assert (=> d!152211 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33309) e!800320)))

(assert (= (and d!152211 (not res!950788)) b!1414079))

(assert (= (and b!1414079 res!950786) b!1414081))

(assert (= (and b!1414079 res!950787) b!1414078))

(assert (= (and b!1414078 c!131124) b!1414082))

(assert (= (and b!1414078 (not c!131124)) b!1414080))

(assert (= (or b!1414082 b!1414080) bm!67132))

(assert (=> b!1414078 m!1304403))

(assert (=> b!1414078 m!1304403))

(assert (=> b!1414078 m!1304411))

(assert (=> bm!67132 m!1304403))

(declare-fun m!1304467 () Bool)

(assert (=> bm!67132 m!1304467))

(assert (=> b!1414079 m!1304403))

(assert (=> b!1414079 m!1304403))

(assert (=> b!1414079 m!1304411))

(assert (=> b!1414081 m!1304403))

(assert (=> b!1414081 m!1304403))

(declare-fun m!1304469 () Bool)

(assert (=> b!1414081 m!1304469))

(assert (=> b!1413825 d!152211))

(declare-fun d!152215 () Bool)

(assert (=> d!152215 (= (validKeyInArray!0 (select (arr!46613 a!2901) j!112)) (and (not (= (select (arr!46613 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46613 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413820 d!152215))

(check-sat (not b!1413990) (not b!1413917) (not b!1413989) (not d!152203) (not bm!67132) (not bm!67123) (not b!1414002) (not b!1413985) (not b!1413998) (not b!1414078) (not bm!67119) (not d!152149) (not d!152201) (not d!152175) (not b!1414081) (not b!1414079) (not d!152171) (not d!152197) (not b!1413869) (not b!1413916) (not d!152157) (not b!1414053))
(check-sat)
