; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121842 () Bool)

(assert start!121842)

(declare-fun b!1414234 () Bool)

(declare-fun res!950860 () Bool)

(declare-fun e!800410 () Bool)

(assert (=> b!1414234 (=> (not res!950860) (not e!800410))))

(declare-datatypes ((array!96572 0))(
  ( (array!96573 (arr!46616 (Array (_ BitVec 32) (_ BitVec 64))) (size!47167 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96572)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96572 (_ BitVec 32)) Bool)

(assert (=> b!1414234 (= res!950860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1414235 () Bool)

(declare-fun res!950865 () Bool)

(assert (=> b!1414235 (=> (not res!950865) (not e!800410))))

(declare-datatypes ((List!33315 0))(
  ( (Nil!33312) (Cons!33311 (h!34592 (_ BitVec 64)) (t!48016 List!33315)) )
))
(declare-fun arrayNoDuplicates!0 (array!96572 (_ BitVec 32) List!33315) Bool)

(assert (=> b!1414235 (= res!950865 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33312))))

(declare-fun b!1414236 () Bool)

(declare-fun e!800412 () Bool)

(declare-fun e!800409 () Bool)

(assert (=> b!1414236 (= e!800412 e!800409)))

(declare-fun res!950864 () Bool)

(assert (=> b!1414236 (=> res!950864 e!800409)))

(declare-datatypes ((SeekEntryResult!10949 0))(
  ( (MissingZero!10949 (index!46181 (_ BitVec 32))) (Found!10949 (index!46182 (_ BitVec 32))) (Intermediate!10949 (undefined!11761 Bool) (index!46183 (_ BitVec 32)) (x!127783 (_ BitVec 32))) (Undefined!10949) (MissingVacant!10949 (index!46184 (_ BitVec 32))) )
))
(declare-fun lt!623447 () SeekEntryResult!10949)

(declare-fun lt!623446 () SeekEntryResult!10949)

(get-info :version)

(assert (=> b!1414236 (= res!950864 (or (= lt!623447 lt!623446) (not ((_ is Intermediate!10949) lt!623446))))))

(declare-fun lt!623448 () array!96572)

(declare-fun lt!623445 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96572 (_ BitVec 32)) SeekEntryResult!10949)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414236 (= lt!623446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623445 mask!2840) lt!623445 lt!623448 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1414236 (= lt!623445 (select (store (arr!46616 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414236 (= lt!623448 (array!96573 (store (arr!46616 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47167 a!2901)))))

(declare-fun res!950862 () Bool)

(assert (=> start!121842 (=> (not res!950862) (not e!800410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121842 (= res!950862 (validMask!0 mask!2840))))

(assert (=> start!121842 e!800410))

(assert (=> start!121842 true))

(declare-fun array_inv!35561 (array!96572) Bool)

(assert (=> start!121842 (array_inv!35561 a!2901)))

(declare-fun b!1414237 () Bool)

(declare-fun e!800413 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96572 (_ BitVec 32)) SeekEntryResult!10949)

(assert (=> b!1414237 (= e!800413 (= (seekEntryOrOpen!0 (select (arr!46616 a!2901) j!112) a!2901 mask!2840) (Found!10949 j!112)))))

(declare-fun b!1414238 () Bool)

(declare-fun res!950866 () Bool)

(assert (=> b!1414238 (=> (not res!950866) (not e!800410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414238 (= res!950866 (validKeyInArray!0 (select (arr!46616 a!2901) i!1037)))))

(declare-fun b!1414239 () Bool)

(declare-fun e!800414 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96572 (_ BitVec 32)) SeekEntryResult!10949)

(assert (=> b!1414239 (= e!800414 (= (seekEntryOrOpen!0 lt!623445 lt!623448 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127783 lt!623446) (index!46183 lt!623446) (index!46183 lt!623446) (select (arr!46616 a!2901) j!112) lt!623448 mask!2840)))))

(declare-fun b!1414240 () Bool)

(declare-fun lt!623444 () (_ BitVec 32))

(assert (=> b!1414240 (= e!800409 (or (bvslt (x!127783 lt!623447) #b00000000000000000000000000000000) (bvsgt (x!127783 lt!623447) #b01111111111111111111111111111110) (bvslt (x!127783 lt!623446) #b00000000000000000000000000000000) (bvsgt (x!127783 lt!623446) #b01111111111111111111111111111110) (and (bvsge lt!623444 #b00000000000000000000000000000000) (bvslt lt!623444 (size!47167 a!2901)))))))

(assert (=> b!1414240 e!800414))

(declare-fun res!950859 () Bool)

(assert (=> b!1414240 (=> (not res!950859) (not e!800414))))

(assert (=> b!1414240 (= res!950859 (and (not (undefined!11761 lt!623446)) (= (index!46183 lt!623446) i!1037) (bvslt (x!127783 lt!623446) (x!127783 lt!623447)) (= (select (store (arr!46616 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46183 lt!623446)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47822 0))(
  ( (Unit!47823) )
))
(declare-fun lt!623449 () Unit!47822)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47822)

(assert (=> b!1414240 (= lt!623449 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623444 (x!127783 lt!623447) (index!46183 lt!623447) (x!127783 lt!623446) (index!46183 lt!623446) (undefined!11761 lt!623446) mask!2840))))

(declare-fun b!1414241 () Bool)

(assert (=> b!1414241 (= e!800410 (not e!800412))))

(declare-fun res!950868 () Bool)

(assert (=> b!1414241 (=> res!950868 e!800412)))

(assert (=> b!1414241 (= res!950868 (or (not ((_ is Intermediate!10949) lt!623447)) (undefined!11761 lt!623447)))))

(assert (=> b!1414241 e!800413))

(declare-fun res!950861 () Bool)

(assert (=> b!1414241 (=> (not res!950861) (not e!800413))))

(assert (=> b!1414241 (= res!950861 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623443 () Unit!47822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47822)

(assert (=> b!1414241 (= lt!623443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1414241 (= lt!623447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623444 (select (arr!46616 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1414241 (= lt!623444 (toIndex!0 (select (arr!46616 a!2901) j!112) mask!2840))))

(declare-fun b!1414242 () Bool)

(declare-fun res!950863 () Bool)

(assert (=> b!1414242 (=> (not res!950863) (not e!800410))))

(assert (=> b!1414242 (= res!950863 (validKeyInArray!0 (select (arr!46616 a!2901) j!112)))))

(declare-fun b!1414243 () Bool)

(declare-fun res!950867 () Bool)

(assert (=> b!1414243 (=> (not res!950867) (not e!800410))))

(assert (=> b!1414243 (= res!950867 (and (= (size!47167 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47167 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47167 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121842 res!950862) b!1414243))

(assert (= (and b!1414243 res!950867) b!1414238))

(assert (= (and b!1414238 res!950866) b!1414242))

(assert (= (and b!1414242 res!950863) b!1414234))

(assert (= (and b!1414234 res!950860) b!1414235))

(assert (= (and b!1414235 res!950865) b!1414241))

(assert (= (and b!1414241 res!950861) b!1414237))

(assert (= (and b!1414241 (not res!950868)) b!1414236))

(assert (= (and b!1414236 (not res!950864)) b!1414240))

(assert (= (and b!1414240 res!950859) b!1414239))

(declare-fun m!1304597 () Bool)

(assert (=> b!1414242 m!1304597))

(assert (=> b!1414242 m!1304597))

(declare-fun m!1304599 () Bool)

(assert (=> b!1414242 m!1304599))

(declare-fun m!1304601 () Bool)

(assert (=> b!1414238 m!1304601))

(assert (=> b!1414238 m!1304601))

(declare-fun m!1304603 () Bool)

(assert (=> b!1414238 m!1304603))

(declare-fun m!1304605 () Bool)

(assert (=> start!121842 m!1304605))

(declare-fun m!1304607 () Bool)

(assert (=> start!121842 m!1304607))

(declare-fun m!1304609 () Bool)

(assert (=> b!1414235 m!1304609))

(declare-fun m!1304611 () Bool)

(assert (=> b!1414239 m!1304611))

(assert (=> b!1414239 m!1304597))

(assert (=> b!1414239 m!1304597))

(declare-fun m!1304613 () Bool)

(assert (=> b!1414239 m!1304613))

(declare-fun m!1304615 () Bool)

(assert (=> b!1414236 m!1304615))

(assert (=> b!1414236 m!1304615))

(declare-fun m!1304617 () Bool)

(assert (=> b!1414236 m!1304617))

(declare-fun m!1304619 () Bool)

(assert (=> b!1414236 m!1304619))

(declare-fun m!1304621 () Bool)

(assert (=> b!1414236 m!1304621))

(declare-fun m!1304623 () Bool)

(assert (=> b!1414234 m!1304623))

(assert (=> b!1414237 m!1304597))

(assert (=> b!1414237 m!1304597))

(declare-fun m!1304625 () Bool)

(assert (=> b!1414237 m!1304625))

(assert (=> b!1414241 m!1304597))

(declare-fun m!1304627 () Bool)

(assert (=> b!1414241 m!1304627))

(declare-fun m!1304629 () Bool)

(assert (=> b!1414241 m!1304629))

(assert (=> b!1414241 m!1304597))

(declare-fun m!1304631 () Bool)

(assert (=> b!1414241 m!1304631))

(assert (=> b!1414241 m!1304597))

(declare-fun m!1304633 () Bool)

(assert (=> b!1414241 m!1304633))

(assert (=> b!1414240 m!1304619))

(declare-fun m!1304635 () Bool)

(assert (=> b!1414240 m!1304635))

(declare-fun m!1304637 () Bool)

(assert (=> b!1414240 m!1304637))

(check-sat (not b!1414241) (not start!121842) (not b!1414242) (not b!1414238) (not b!1414239) (not b!1414236) (not b!1414240) (not b!1414235) (not b!1414234) (not b!1414237))
(check-sat)
(get-model)

(declare-fun d!152247 () Bool)

(assert (=> d!152247 (= (validKeyInArray!0 (select (arr!46616 a!2901) i!1037)) (and (not (= (select (arr!46616 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46616 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414238 d!152247))

(declare-fun b!1414286 () Bool)

(declare-fun e!800440 () SeekEntryResult!10949)

(assert (=> b!1414286 (= e!800440 Undefined!10949)))

(declare-fun b!1414287 () Bool)

(declare-fun e!800441 () SeekEntryResult!10949)

(declare-fun lt!623477 () SeekEntryResult!10949)

(assert (=> b!1414287 (= e!800441 (Found!10949 (index!46183 lt!623477)))))

(declare-fun b!1414288 () Bool)

(declare-fun c!131174 () Bool)

(declare-fun lt!623478 () (_ BitVec 64))

(assert (=> b!1414288 (= c!131174 (= lt!623478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800439 () SeekEntryResult!10949)

(assert (=> b!1414288 (= e!800441 e!800439)))

(declare-fun b!1414289 () Bool)

(assert (=> b!1414289 (= e!800440 e!800441)))

(assert (=> b!1414289 (= lt!623478 (select (arr!46616 lt!623448) (index!46183 lt!623477)))))

(declare-fun c!131173 () Bool)

(assert (=> b!1414289 (= c!131173 (= lt!623478 lt!623445))))

(declare-fun d!152249 () Bool)

(declare-fun lt!623479 () SeekEntryResult!10949)

(assert (=> d!152249 (and (or ((_ is Undefined!10949) lt!623479) (not ((_ is Found!10949) lt!623479)) (and (bvsge (index!46182 lt!623479) #b00000000000000000000000000000000) (bvslt (index!46182 lt!623479) (size!47167 lt!623448)))) (or ((_ is Undefined!10949) lt!623479) ((_ is Found!10949) lt!623479) (not ((_ is MissingZero!10949) lt!623479)) (and (bvsge (index!46181 lt!623479) #b00000000000000000000000000000000) (bvslt (index!46181 lt!623479) (size!47167 lt!623448)))) (or ((_ is Undefined!10949) lt!623479) ((_ is Found!10949) lt!623479) ((_ is MissingZero!10949) lt!623479) (not ((_ is MissingVacant!10949) lt!623479)) (and (bvsge (index!46184 lt!623479) #b00000000000000000000000000000000) (bvslt (index!46184 lt!623479) (size!47167 lt!623448)))) (or ((_ is Undefined!10949) lt!623479) (ite ((_ is Found!10949) lt!623479) (= (select (arr!46616 lt!623448) (index!46182 lt!623479)) lt!623445) (ite ((_ is MissingZero!10949) lt!623479) (= (select (arr!46616 lt!623448) (index!46181 lt!623479)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10949) lt!623479) (= (select (arr!46616 lt!623448) (index!46184 lt!623479)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152249 (= lt!623479 e!800440)))

(declare-fun c!131172 () Bool)

(assert (=> d!152249 (= c!131172 (and ((_ is Intermediate!10949) lt!623477) (undefined!11761 lt!623477)))))

(assert (=> d!152249 (= lt!623477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623445 mask!2840) lt!623445 lt!623448 mask!2840))))

(assert (=> d!152249 (validMask!0 mask!2840)))

(assert (=> d!152249 (= (seekEntryOrOpen!0 lt!623445 lt!623448 mask!2840) lt!623479)))

(declare-fun b!1414290 () Bool)

(assert (=> b!1414290 (= e!800439 (MissingZero!10949 (index!46183 lt!623477)))))

(declare-fun b!1414291 () Bool)

(assert (=> b!1414291 (= e!800439 (seekKeyOrZeroReturnVacant!0 (x!127783 lt!623477) (index!46183 lt!623477) (index!46183 lt!623477) lt!623445 lt!623448 mask!2840))))

(assert (= (and d!152249 c!131172) b!1414286))

(assert (= (and d!152249 (not c!131172)) b!1414289))

(assert (= (and b!1414289 c!131173) b!1414287))

(assert (= (and b!1414289 (not c!131173)) b!1414288))

(assert (= (and b!1414288 c!131174) b!1414290))

(assert (= (and b!1414288 (not c!131174)) b!1414291))

(declare-fun m!1304681 () Bool)

(assert (=> b!1414289 m!1304681))

(assert (=> d!152249 m!1304615))

(declare-fun m!1304683 () Bool)

(assert (=> d!152249 m!1304683))

(declare-fun m!1304685 () Bool)

(assert (=> d!152249 m!1304685))

(assert (=> d!152249 m!1304605))

(assert (=> d!152249 m!1304615))

(assert (=> d!152249 m!1304617))

(declare-fun m!1304687 () Bool)

(assert (=> d!152249 m!1304687))

(declare-fun m!1304689 () Bool)

(assert (=> b!1414291 m!1304689))

(assert (=> b!1414239 d!152249))

(declare-fun b!1414304 () Bool)

(declare-fun e!800448 () SeekEntryResult!10949)

(assert (=> b!1414304 (= e!800448 (Found!10949 (index!46183 lt!623446)))))

(declare-fun e!800450 () SeekEntryResult!10949)

(declare-fun b!1414305 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414305 (= e!800450 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127783 lt!623446) #b00000000000000000000000000000001) (nextIndex!0 (index!46183 lt!623446) (x!127783 lt!623446) mask!2840) (index!46183 lt!623446) (select (arr!46616 a!2901) j!112) lt!623448 mask!2840))))

(declare-fun b!1414307 () Bool)

(declare-fun e!800449 () SeekEntryResult!10949)

(assert (=> b!1414307 (= e!800449 Undefined!10949)))

(declare-fun b!1414308 () Bool)

(declare-fun c!131183 () Bool)

(declare-fun lt!623485 () (_ BitVec 64))

(assert (=> b!1414308 (= c!131183 (= lt!623485 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414308 (= e!800448 e!800450)))

(declare-fun b!1414309 () Bool)

(assert (=> b!1414309 (= e!800450 (MissingVacant!10949 (index!46183 lt!623446)))))

(declare-fun d!152251 () Bool)

(declare-fun lt!623484 () SeekEntryResult!10949)

(assert (=> d!152251 (and (or ((_ is Undefined!10949) lt!623484) (not ((_ is Found!10949) lt!623484)) (and (bvsge (index!46182 lt!623484) #b00000000000000000000000000000000) (bvslt (index!46182 lt!623484) (size!47167 lt!623448)))) (or ((_ is Undefined!10949) lt!623484) ((_ is Found!10949) lt!623484) (not ((_ is MissingVacant!10949) lt!623484)) (not (= (index!46184 lt!623484) (index!46183 lt!623446))) (and (bvsge (index!46184 lt!623484) #b00000000000000000000000000000000) (bvslt (index!46184 lt!623484) (size!47167 lt!623448)))) (or ((_ is Undefined!10949) lt!623484) (ite ((_ is Found!10949) lt!623484) (= (select (arr!46616 lt!623448) (index!46182 lt!623484)) (select (arr!46616 a!2901) j!112)) (and ((_ is MissingVacant!10949) lt!623484) (= (index!46184 lt!623484) (index!46183 lt!623446)) (= (select (arr!46616 lt!623448) (index!46184 lt!623484)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152251 (= lt!623484 e!800449)))

(declare-fun c!131181 () Bool)

(assert (=> d!152251 (= c!131181 (bvsge (x!127783 lt!623446) #b01111111111111111111111111111110))))

(assert (=> d!152251 (= lt!623485 (select (arr!46616 lt!623448) (index!46183 lt!623446)))))

(assert (=> d!152251 (validMask!0 mask!2840)))

(assert (=> d!152251 (= (seekKeyOrZeroReturnVacant!0 (x!127783 lt!623446) (index!46183 lt!623446) (index!46183 lt!623446) (select (arr!46616 a!2901) j!112) lt!623448 mask!2840) lt!623484)))

(declare-fun b!1414306 () Bool)

(assert (=> b!1414306 (= e!800449 e!800448)))

(declare-fun c!131182 () Bool)

(assert (=> b!1414306 (= c!131182 (= lt!623485 (select (arr!46616 a!2901) j!112)))))

(assert (= (and d!152251 c!131181) b!1414307))

(assert (= (and d!152251 (not c!131181)) b!1414306))

(assert (= (and b!1414306 c!131182) b!1414304))

(assert (= (and b!1414306 (not c!131182)) b!1414308))

(assert (= (and b!1414308 c!131183) b!1414309))

(assert (= (and b!1414308 (not c!131183)) b!1414305))

(declare-fun m!1304691 () Bool)

(assert (=> b!1414305 m!1304691))

(assert (=> b!1414305 m!1304691))

(assert (=> b!1414305 m!1304597))

(declare-fun m!1304693 () Bool)

(assert (=> b!1414305 m!1304693))

(declare-fun m!1304695 () Bool)

(assert (=> d!152251 m!1304695))

(declare-fun m!1304697 () Bool)

(assert (=> d!152251 m!1304697))

(declare-fun m!1304699 () Bool)

(assert (=> d!152251 m!1304699))

(assert (=> d!152251 m!1304605))

(assert (=> b!1414239 d!152251))

(declare-fun d!152265 () Bool)

(declare-fun res!950904 () Bool)

(declare-fun e!800459 () Bool)

(assert (=> d!152265 (=> res!950904 e!800459)))

(assert (=> d!152265 (= res!950904 (bvsge #b00000000000000000000000000000000 (size!47167 a!2901)))))

(assert (=> d!152265 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800459)))

(declare-fun b!1414318 () Bool)

(declare-fun e!800458 () Bool)

(assert (=> b!1414318 (= e!800459 e!800458)))

(declare-fun c!131186 () Bool)

(assert (=> b!1414318 (= c!131186 (validKeyInArray!0 (select (arr!46616 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414319 () Bool)

(declare-fun e!800457 () Bool)

(declare-fun call!67140 () Bool)

(assert (=> b!1414319 (= e!800457 call!67140)))

(declare-fun b!1414320 () Bool)

(assert (=> b!1414320 (= e!800458 e!800457)))

(declare-fun lt!623493 () (_ BitVec 64))

(assert (=> b!1414320 (= lt!623493 (select (arr!46616 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623494 () Unit!47822)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96572 (_ BitVec 64) (_ BitVec 32)) Unit!47822)

(assert (=> b!1414320 (= lt!623494 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623493 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414320 (arrayContainsKey!0 a!2901 lt!623493 #b00000000000000000000000000000000)))

(declare-fun lt!623492 () Unit!47822)

(assert (=> b!1414320 (= lt!623492 lt!623494)))

(declare-fun res!950903 () Bool)

(assert (=> b!1414320 (= res!950903 (= (seekEntryOrOpen!0 (select (arr!46616 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10949 #b00000000000000000000000000000000)))))

(assert (=> b!1414320 (=> (not res!950903) (not e!800457))))

(declare-fun bm!67137 () Bool)

(assert (=> bm!67137 (= call!67140 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414321 () Bool)

(assert (=> b!1414321 (= e!800458 call!67140)))

(assert (= (and d!152265 (not res!950904)) b!1414318))

(assert (= (and b!1414318 c!131186) b!1414320))

(assert (= (and b!1414318 (not c!131186)) b!1414321))

(assert (= (and b!1414320 res!950903) b!1414319))

(assert (= (or b!1414319 b!1414321) bm!67137))

(declare-fun m!1304701 () Bool)

(assert (=> b!1414318 m!1304701))

(assert (=> b!1414318 m!1304701))

(declare-fun m!1304703 () Bool)

(assert (=> b!1414318 m!1304703))

(assert (=> b!1414320 m!1304701))

(declare-fun m!1304705 () Bool)

(assert (=> b!1414320 m!1304705))

(declare-fun m!1304707 () Bool)

(assert (=> b!1414320 m!1304707))

(assert (=> b!1414320 m!1304701))

(declare-fun m!1304709 () Bool)

(assert (=> b!1414320 m!1304709))

(declare-fun m!1304711 () Bool)

(assert (=> bm!67137 m!1304711))

(assert (=> b!1414234 d!152265))

(declare-fun d!152267 () Bool)

(assert (=> d!152267 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121842 d!152267))

(declare-fun d!152271 () Bool)

(assert (=> d!152271 (= (array_inv!35561 a!2901) (bvsge (size!47167 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121842 d!152271))

(declare-fun d!152273 () Bool)

(assert (=> d!152273 (and (not (undefined!11761 lt!623446)) (= (index!46183 lt!623446) i!1037) (bvslt (x!127783 lt!623446) (x!127783 lt!623447)))))

(declare-fun lt!623515 () Unit!47822)

(declare-fun choose!62 (array!96572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47822)

(assert (=> d!152273 (= lt!623515 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623444 (x!127783 lt!623447) (index!46183 lt!623447) (x!127783 lt!623446) (index!46183 lt!623446) (undefined!11761 lt!623446) mask!2840))))

(assert (=> d!152273 (validMask!0 mask!2840)))

(assert (=> d!152273 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623444 (x!127783 lt!623447) (index!46183 lt!623447) (x!127783 lt!623446) (index!46183 lt!623446) (undefined!11761 lt!623446) mask!2840) lt!623515)))

(declare-fun bs!41228 () Bool)

(assert (= bs!41228 d!152273))

(declare-fun m!1304729 () Bool)

(assert (=> bs!41228 m!1304729))

(assert (=> bs!41228 m!1304605))

(assert (=> b!1414240 d!152273))

(declare-fun b!1414401 () Bool)

(declare-fun e!800513 () Bool)

(declare-fun call!67146 () Bool)

(assert (=> b!1414401 (= e!800513 call!67146)))

(declare-fun b!1414402 () Bool)

(declare-fun e!800510 () Bool)

(assert (=> b!1414402 (= e!800510 e!800513)))

(declare-fun c!131210 () Bool)

(assert (=> b!1414402 (= c!131210 (validKeyInArray!0 (select (arr!46616 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67143 () Bool)

(assert (=> bm!67143 (= call!67146 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131210 (Cons!33311 (select (arr!46616 a!2901) #b00000000000000000000000000000000) Nil!33312) Nil!33312)))))

(declare-fun d!152283 () Bool)

(declare-fun res!950941 () Bool)

(declare-fun e!800512 () Bool)

(assert (=> d!152283 (=> res!950941 e!800512)))

(assert (=> d!152283 (= res!950941 (bvsge #b00000000000000000000000000000000 (size!47167 a!2901)))))

(assert (=> d!152283 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33312) e!800512)))

(declare-fun b!1414403 () Bool)

(assert (=> b!1414403 (= e!800513 call!67146)))

(declare-fun b!1414404 () Bool)

(assert (=> b!1414404 (= e!800512 e!800510)))

(declare-fun res!950940 () Bool)

(assert (=> b!1414404 (=> (not res!950940) (not e!800510))))

(declare-fun e!800511 () Bool)

(assert (=> b!1414404 (= res!950940 (not e!800511))))

(declare-fun res!950942 () Bool)

(assert (=> b!1414404 (=> (not res!950942) (not e!800511))))

(assert (=> b!1414404 (= res!950942 (validKeyInArray!0 (select (arr!46616 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414405 () Bool)

(declare-fun contains!9833 (List!33315 (_ BitVec 64)) Bool)

(assert (=> b!1414405 (= e!800511 (contains!9833 Nil!33312 (select (arr!46616 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152283 (not res!950941)) b!1414404))

(assert (= (and b!1414404 res!950942) b!1414405))

(assert (= (and b!1414404 res!950940) b!1414402))

(assert (= (and b!1414402 c!131210) b!1414401))

(assert (= (and b!1414402 (not c!131210)) b!1414403))

(assert (= (or b!1414401 b!1414403) bm!67143))

(assert (=> b!1414402 m!1304701))

(assert (=> b!1414402 m!1304701))

(assert (=> b!1414402 m!1304703))

(assert (=> bm!67143 m!1304701))

(declare-fun m!1304739 () Bool)

(assert (=> bm!67143 m!1304739))

(assert (=> b!1414404 m!1304701))

(assert (=> b!1414404 m!1304701))

(assert (=> b!1414404 m!1304703))

(assert (=> b!1414405 m!1304701))

(assert (=> b!1414405 m!1304701))

(declare-fun m!1304741 () Bool)

(assert (=> b!1414405 m!1304741))

(assert (=> b!1414235 d!152283))

(declare-fun d!152289 () Bool)

(declare-fun res!950944 () Bool)

(declare-fun e!800516 () Bool)

(assert (=> d!152289 (=> res!950944 e!800516)))

(assert (=> d!152289 (= res!950944 (bvsge j!112 (size!47167 a!2901)))))

(assert (=> d!152289 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800516)))

(declare-fun b!1414406 () Bool)

(declare-fun e!800515 () Bool)

(assert (=> b!1414406 (= e!800516 e!800515)))

(declare-fun c!131211 () Bool)

(assert (=> b!1414406 (= c!131211 (validKeyInArray!0 (select (arr!46616 a!2901) j!112)))))

(declare-fun b!1414407 () Bool)

(declare-fun e!800514 () Bool)

(declare-fun call!67147 () Bool)

(assert (=> b!1414407 (= e!800514 call!67147)))

(declare-fun b!1414408 () Bool)

(assert (=> b!1414408 (= e!800515 e!800514)))

(declare-fun lt!623523 () (_ BitVec 64))

(assert (=> b!1414408 (= lt!623523 (select (arr!46616 a!2901) j!112))))

(declare-fun lt!623524 () Unit!47822)

(assert (=> b!1414408 (= lt!623524 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623523 j!112))))

(assert (=> b!1414408 (arrayContainsKey!0 a!2901 lt!623523 #b00000000000000000000000000000000)))

(declare-fun lt!623522 () Unit!47822)

(assert (=> b!1414408 (= lt!623522 lt!623524)))

(declare-fun res!950943 () Bool)

(assert (=> b!1414408 (= res!950943 (= (seekEntryOrOpen!0 (select (arr!46616 a!2901) j!112) a!2901 mask!2840) (Found!10949 j!112)))))

(assert (=> b!1414408 (=> (not res!950943) (not e!800514))))

(declare-fun bm!67144 () Bool)

(assert (=> bm!67144 (= call!67147 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414409 () Bool)

(assert (=> b!1414409 (= e!800515 call!67147)))

(assert (= (and d!152289 (not res!950944)) b!1414406))

(assert (= (and b!1414406 c!131211) b!1414408))

(assert (= (and b!1414406 (not c!131211)) b!1414409))

(assert (= (and b!1414408 res!950943) b!1414407))

(assert (= (or b!1414407 b!1414409) bm!67144))

(assert (=> b!1414406 m!1304597))

(assert (=> b!1414406 m!1304597))

(assert (=> b!1414406 m!1304599))

(assert (=> b!1414408 m!1304597))

(declare-fun m!1304743 () Bool)

(assert (=> b!1414408 m!1304743))

(declare-fun m!1304745 () Bool)

(assert (=> b!1414408 m!1304745))

(assert (=> b!1414408 m!1304597))

(assert (=> b!1414408 m!1304625))

(declare-fun m!1304747 () Bool)

(assert (=> bm!67144 m!1304747))

(assert (=> b!1414241 d!152289))

(declare-fun d!152291 () Bool)

(assert (=> d!152291 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623536 () Unit!47822)

(declare-fun choose!38 (array!96572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47822)

(assert (=> d!152291 (= lt!623536 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152291 (validMask!0 mask!2840)))

(assert (=> d!152291 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623536)))

(declare-fun bs!41229 () Bool)

(assert (= bs!41229 d!152291))

(assert (=> bs!41229 m!1304629))

(declare-fun m!1304755 () Bool)

(assert (=> bs!41229 m!1304755))

(assert (=> bs!41229 m!1304605))

(assert (=> b!1414241 d!152291))

(declare-fun b!1414467 () Bool)

(declare-fun lt!623558 () SeekEntryResult!10949)

(assert (=> b!1414467 (and (bvsge (index!46183 lt!623558) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623558) (size!47167 a!2901)))))

(declare-fun res!950962 () Bool)

(assert (=> b!1414467 (= res!950962 (= (select (arr!46616 a!2901) (index!46183 lt!623558)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800553 () Bool)

(assert (=> b!1414467 (=> res!950962 e!800553)))

(declare-fun b!1414468 () Bool)

(declare-fun e!800552 () SeekEntryResult!10949)

(assert (=> b!1414468 (= e!800552 (Intermediate!10949 true lt!623444 #b00000000000000000000000000000000))))

(declare-fun d!152295 () Bool)

(declare-fun e!800551 () Bool)

(assert (=> d!152295 e!800551))

(declare-fun c!131235 () Bool)

(assert (=> d!152295 (= c!131235 (and ((_ is Intermediate!10949) lt!623558) (undefined!11761 lt!623558)))))

(assert (=> d!152295 (= lt!623558 e!800552)))

(declare-fun c!131234 () Bool)

(assert (=> d!152295 (= c!131234 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623557 () (_ BitVec 64))

(assert (=> d!152295 (= lt!623557 (select (arr!46616 a!2901) lt!623444))))

(assert (=> d!152295 (validMask!0 mask!2840)))

(assert (=> d!152295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623444 (select (arr!46616 a!2901) j!112) a!2901 mask!2840) lt!623558)))

(declare-fun b!1414469 () Bool)

(declare-fun e!800550 () Bool)

(assert (=> b!1414469 (= e!800551 e!800550)))

(declare-fun res!950960 () Bool)

(assert (=> b!1414469 (= res!950960 (and ((_ is Intermediate!10949) lt!623558) (not (undefined!11761 lt!623558)) (bvslt (x!127783 lt!623558) #b01111111111111111111111111111110) (bvsge (x!127783 lt!623558) #b00000000000000000000000000000000) (bvsge (x!127783 lt!623558) #b00000000000000000000000000000000)))))

(assert (=> b!1414469 (=> (not res!950960) (not e!800550))))

(declare-fun b!1414470 () Bool)

(declare-fun e!800554 () SeekEntryResult!10949)

(assert (=> b!1414470 (= e!800552 e!800554)))

(declare-fun c!131233 () Bool)

(assert (=> b!1414470 (= c!131233 (or (= lt!623557 (select (arr!46616 a!2901) j!112)) (= (bvadd lt!623557 lt!623557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414471 () Bool)

(assert (=> b!1414471 (= e!800551 (bvsge (x!127783 lt!623558) #b01111111111111111111111111111110))))

(declare-fun b!1414472 () Bool)

(assert (=> b!1414472 (and (bvsge (index!46183 lt!623558) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623558) (size!47167 a!2901)))))

(assert (=> b!1414472 (= e!800553 (= (select (arr!46616 a!2901) (index!46183 lt!623558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414473 () Bool)

(assert (=> b!1414473 (= e!800554 (Intermediate!10949 false lt!623444 #b00000000000000000000000000000000))))

(declare-fun b!1414474 () Bool)

(assert (=> b!1414474 (and (bvsge (index!46183 lt!623558) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623558) (size!47167 a!2901)))))

(declare-fun res!950961 () Bool)

(assert (=> b!1414474 (= res!950961 (= (select (arr!46616 a!2901) (index!46183 lt!623558)) (select (arr!46616 a!2901) j!112)))))

(assert (=> b!1414474 (=> res!950961 e!800553)))

(assert (=> b!1414474 (= e!800550 e!800553)))

(declare-fun b!1414475 () Bool)

(assert (=> b!1414475 (= e!800554 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623444 #b00000000000000000000000000000000 mask!2840) (select (arr!46616 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!152295 c!131234) b!1414468))

(assert (= (and d!152295 (not c!131234)) b!1414470))

(assert (= (and b!1414470 c!131233) b!1414473))

(assert (= (and b!1414470 (not c!131233)) b!1414475))

(assert (= (and d!152295 c!131235) b!1414471))

(assert (= (and d!152295 (not c!131235)) b!1414469))

(assert (= (and b!1414469 res!950960) b!1414474))

(assert (= (and b!1414474 (not res!950961)) b!1414467))

(assert (= (and b!1414467 (not res!950962)) b!1414472))

(declare-fun m!1304779 () Bool)

(assert (=> b!1414472 m!1304779))

(assert (=> b!1414474 m!1304779))

(assert (=> b!1414467 m!1304779))

(declare-fun m!1304781 () Bool)

(assert (=> b!1414475 m!1304781))

(assert (=> b!1414475 m!1304781))

(assert (=> b!1414475 m!1304597))

(declare-fun m!1304783 () Bool)

(assert (=> b!1414475 m!1304783))

(declare-fun m!1304785 () Bool)

(assert (=> d!152295 m!1304785))

(assert (=> d!152295 m!1304605))

(assert (=> b!1414241 d!152295))

(declare-fun d!152305 () Bool)

(declare-fun lt!623573 () (_ BitVec 32))

(declare-fun lt!623572 () (_ BitVec 32))

(assert (=> d!152305 (= lt!623573 (bvmul (bvxor lt!623572 (bvlshr lt!623572 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152305 (= lt!623572 ((_ extract 31 0) (bvand (bvxor (select (arr!46616 a!2901) j!112) (bvlshr (select (arr!46616 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152305 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950963 (let ((h!34596 ((_ extract 31 0) (bvand (bvxor (select (arr!46616 a!2901) j!112) (bvlshr (select (arr!46616 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127792 (bvmul (bvxor h!34596 (bvlshr h!34596 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127792 (bvlshr x!127792 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950963 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950963 #b00000000000000000000000000000000))))))

(assert (=> d!152305 (= (toIndex!0 (select (arr!46616 a!2901) j!112) mask!2840) (bvand (bvxor lt!623573 (bvlshr lt!623573 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414241 d!152305))

(declare-fun b!1414494 () Bool)

(declare-fun lt!623575 () SeekEntryResult!10949)

(assert (=> b!1414494 (and (bvsge (index!46183 lt!623575) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623575) (size!47167 lt!623448)))))

(declare-fun res!950966 () Bool)

(assert (=> b!1414494 (= res!950966 (= (select (arr!46616 lt!623448) (index!46183 lt!623575)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800567 () Bool)

(assert (=> b!1414494 (=> res!950966 e!800567)))

(declare-fun b!1414495 () Bool)

(declare-fun e!800566 () SeekEntryResult!10949)

(assert (=> b!1414495 (= e!800566 (Intermediate!10949 true (toIndex!0 lt!623445 mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!152309 () Bool)

(declare-fun e!800565 () Bool)

(assert (=> d!152309 e!800565))

(declare-fun c!131247 () Bool)

(assert (=> d!152309 (= c!131247 (and ((_ is Intermediate!10949) lt!623575) (undefined!11761 lt!623575)))))

(assert (=> d!152309 (= lt!623575 e!800566)))

(declare-fun c!131246 () Bool)

(assert (=> d!152309 (= c!131246 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623574 () (_ BitVec 64))

(assert (=> d!152309 (= lt!623574 (select (arr!46616 lt!623448) (toIndex!0 lt!623445 mask!2840)))))

(assert (=> d!152309 (validMask!0 mask!2840)))

(assert (=> d!152309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623445 mask!2840) lt!623445 lt!623448 mask!2840) lt!623575)))

(declare-fun b!1414496 () Bool)

(declare-fun e!800564 () Bool)

(assert (=> b!1414496 (= e!800565 e!800564)))

(declare-fun res!950964 () Bool)

(assert (=> b!1414496 (= res!950964 (and ((_ is Intermediate!10949) lt!623575) (not (undefined!11761 lt!623575)) (bvslt (x!127783 lt!623575) #b01111111111111111111111111111110) (bvsge (x!127783 lt!623575) #b00000000000000000000000000000000) (bvsge (x!127783 lt!623575) #b00000000000000000000000000000000)))))

(assert (=> b!1414496 (=> (not res!950964) (not e!800564))))

(declare-fun b!1414497 () Bool)

(declare-fun e!800568 () SeekEntryResult!10949)

(assert (=> b!1414497 (= e!800566 e!800568)))

(declare-fun c!131245 () Bool)

(assert (=> b!1414497 (= c!131245 (or (= lt!623574 lt!623445) (= (bvadd lt!623574 lt!623574) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414498 () Bool)

(assert (=> b!1414498 (= e!800565 (bvsge (x!127783 lt!623575) #b01111111111111111111111111111110))))

(declare-fun b!1414499 () Bool)

(assert (=> b!1414499 (and (bvsge (index!46183 lt!623575) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623575) (size!47167 lt!623448)))))

(assert (=> b!1414499 (= e!800567 (= (select (arr!46616 lt!623448) (index!46183 lt!623575)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414500 () Bool)

(assert (=> b!1414500 (= e!800568 (Intermediate!10949 false (toIndex!0 lt!623445 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414501 () Bool)

(assert (=> b!1414501 (and (bvsge (index!46183 lt!623575) #b00000000000000000000000000000000) (bvslt (index!46183 lt!623575) (size!47167 lt!623448)))))

(declare-fun res!950965 () Bool)

(assert (=> b!1414501 (= res!950965 (= (select (arr!46616 lt!623448) (index!46183 lt!623575)) lt!623445))))

(assert (=> b!1414501 (=> res!950965 e!800567)))

(assert (=> b!1414501 (= e!800564 e!800567)))

(declare-fun b!1414502 () Bool)

(assert (=> b!1414502 (= e!800568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623445 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623445 lt!623448 mask!2840))))

(assert (= (and d!152309 c!131246) b!1414495))

(assert (= (and d!152309 (not c!131246)) b!1414497))

(assert (= (and b!1414497 c!131245) b!1414500))

(assert (= (and b!1414497 (not c!131245)) b!1414502))

(assert (= (and d!152309 c!131247) b!1414498))

(assert (= (and d!152309 (not c!131247)) b!1414496))

(assert (= (and b!1414496 res!950964) b!1414501))

(assert (= (and b!1414501 (not res!950965)) b!1414494))

(assert (= (and b!1414494 (not res!950966)) b!1414499))

(declare-fun m!1304799 () Bool)

(assert (=> b!1414499 m!1304799))

(assert (=> b!1414501 m!1304799))

(assert (=> b!1414494 m!1304799))

(assert (=> b!1414502 m!1304615))

(declare-fun m!1304801 () Bool)

(assert (=> b!1414502 m!1304801))

(assert (=> b!1414502 m!1304801))

(declare-fun m!1304803 () Bool)

(assert (=> b!1414502 m!1304803))

(assert (=> d!152309 m!1304615))

(declare-fun m!1304805 () Bool)

(assert (=> d!152309 m!1304805))

(assert (=> d!152309 m!1304605))

(assert (=> b!1414236 d!152309))

(declare-fun d!152315 () Bool)

(declare-fun lt!623580 () (_ BitVec 32))

(declare-fun lt!623579 () (_ BitVec 32))

(assert (=> d!152315 (= lt!623580 (bvmul (bvxor lt!623579 (bvlshr lt!623579 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152315 (= lt!623579 ((_ extract 31 0) (bvand (bvxor lt!623445 (bvlshr lt!623445 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152315 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950963 (let ((h!34596 ((_ extract 31 0) (bvand (bvxor lt!623445 (bvlshr lt!623445 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127792 (bvmul (bvxor h!34596 (bvlshr h!34596 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127792 (bvlshr x!127792 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950963 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950963 #b00000000000000000000000000000000))))))

(assert (=> d!152315 (= (toIndex!0 lt!623445 mask!2840) (bvand (bvxor lt!623580 (bvlshr lt!623580 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414236 d!152315))

(declare-fun d!152317 () Bool)

(assert (=> d!152317 (= (validKeyInArray!0 (select (arr!46616 a!2901) j!112)) (and (not (= (select (arr!46616 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46616 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414242 d!152317))

(declare-fun b!1414507 () Bool)

(declare-fun e!800573 () SeekEntryResult!10949)

(assert (=> b!1414507 (= e!800573 Undefined!10949)))

(declare-fun b!1414508 () Bool)

(declare-fun e!800574 () SeekEntryResult!10949)

(declare-fun lt!623581 () SeekEntryResult!10949)

(assert (=> b!1414508 (= e!800574 (Found!10949 (index!46183 lt!623581)))))

(declare-fun b!1414509 () Bool)

(declare-fun c!131251 () Bool)

(declare-fun lt!623582 () (_ BitVec 64))

(assert (=> b!1414509 (= c!131251 (= lt!623582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800572 () SeekEntryResult!10949)

(assert (=> b!1414509 (= e!800574 e!800572)))

(declare-fun b!1414510 () Bool)

(assert (=> b!1414510 (= e!800573 e!800574)))

(assert (=> b!1414510 (= lt!623582 (select (arr!46616 a!2901) (index!46183 lt!623581)))))

(declare-fun c!131250 () Bool)

(assert (=> b!1414510 (= c!131250 (= lt!623582 (select (arr!46616 a!2901) j!112)))))

(declare-fun d!152321 () Bool)

(declare-fun lt!623583 () SeekEntryResult!10949)

(assert (=> d!152321 (and (or ((_ is Undefined!10949) lt!623583) (not ((_ is Found!10949) lt!623583)) (and (bvsge (index!46182 lt!623583) #b00000000000000000000000000000000) (bvslt (index!46182 lt!623583) (size!47167 a!2901)))) (or ((_ is Undefined!10949) lt!623583) ((_ is Found!10949) lt!623583) (not ((_ is MissingZero!10949) lt!623583)) (and (bvsge (index!46181 lt!623583) #b00000000000000000000000000000000) (bvslt (index!46181 lt!623583) (size!47167 a!2901)))) (or ((_ is Undefined!10949) lt!623583) ((_ is Found!10949) lt!623583) ((_ is MissingZero!10949) lt!623583) (not ((_ is MissingVacant!10949) lt!623583)) (and (bvsge (index!46184 lt!623583) #b00000000000000000000000000000000) (bvslt (index!46184 lt!623583) (size!47167 a!2901)))) (or ((_ is Undefined!10949) lt!623583) (ite ((_ is Found!10949) lt!623583) (= (select (arr!46616 a!2901) (index!46182 lt!623583)) (select (arr!46616 a!2901) j!112)) (ite ((_ is MissingZero!10949) lt!623583) (= (select (arr!46616 a!2901) (index!46181 lt!623583)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10949) lt!623583) (= (select (arr!46616 a!2901) (index!46184 lt!623583)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152321 (= lt!623583 e!800573)))

(declare-fun c!131249 () Bool)

(assert (=> d!152321 (= c!131249 (and ((_ is Intermediate!10949) lt!623581) (undefined!11761 lt!623581)))))

(assert (=> d!152321 (= lt!623581 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46616 a!2901) j!112) mask!2840) (select (arr!46616 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152321 (validMask!0 mask!2840)))

(assert (=> d!152321 (= (seekEntryOrOpen!0 (select (arr!46616 a!2901) j!112) a!2901 mask!2840) lt!623583)))

(declare-fun b!1414511 () Bool)

(assert (=> b!1414511 (= e!800572 (MissingZero!10949 (index!46183 lt!623581)))))

(declare-fun b!1414512 () Bool)

(assert (=> b!1414512 (= e!800572 (seekKeyOrZeroReturnVacant!0 (x!127783 lt!623581) (index!46183 lt!623581) (index!46183 lt!623581) (select (arr!46616 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!152321 c!131249) b!1414507))

(assert (= (and d!152321 (not c!131249)) b!1414510))

(assert (= (and b!1414510 c!131250) b!1414508))

(assert (= (and b!1414510 (not c!131250)) b!1414509))

(assert (= (and b!1414509 c!131251) b!1414511))

(assert (= (and b!1414509 (not c!131251)) b!1414512))

(declare-fun m!1304819 () Bool)

(assert (=> b!1414510 m!1304819))

(assert (=> d!152321 m!1304597))

(assert (=> d!152321 m!1304633))

(declare-fun m!1304821 () Bool)

(assert (=> d!152321 m!1304821))

(declare-fun m!1304823 () Bool)

(assert (=> d!152321 m!1304823))

(assert (=> d!152321 m!1304605))

(assert (=> d!152321 m!1304633))

(assert (=> d!152321 m!1304597))

(declare-fun m!1304825 () Bool)

(assert (=> d!152321 m!1304825))

(declare-fun m!1304827 () Bool)

(assert (=> d!152321 m!1304827))

(assert (=> b!1414512 m!1304597))

(declare-fun m!1304829 () Bool)

(assert (=> b!1414512 m!1304829))

(assert (=> b!1414237 d!152321))

(check-sat (not b!1414406) (not b!1414402) (not d!152321) (not b!1414512) (not bm!67137) (not d!152295) (not b!1414408) (not d!152249) (not b!1414291) (not b!1414502) (not b!1414318) (not d!152273) (not bm!67143) (not b!1414320) (not b!1414305) (not d!152291) (not b!1414475) (not b!1414404) (not b!1414405) (not d!152251) (not bm!67144) (not d!152309))
(check-sat)
