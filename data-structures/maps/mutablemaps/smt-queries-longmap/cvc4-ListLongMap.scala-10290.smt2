; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120944 () Bool)

(assert start!120944)

(declare-fun b!1406714 () Bool)

(declare-fun res!945040 () Bool)

(declare-fun e!796200 () Bool)

(assert (=> b!1406714 (=> (not res!945040) (not e!796200))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96169 0))(
  ( (array!96170 (arr!46428 (Array (_ BitVec 32) (_ BitVec 64))) (size!46979 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96169)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406714 (= res!945040 (and (= (size!46979 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46979 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46979 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!945045 () Bool)

(assert (=> start!120944 (=> (not res!945045) (not e!796200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120944 (= res!945045 (validMask!0 mask!2840))))

(assert (=> start!120944 e!796200))

(assert (=> start!120944 true))

(declare-fun array_inv!35373 (array!96169) Bool)

(assert (=> start!120944 (array_inv!35373 a!2901)))

(declare-fun b!1406715 () Bool)

(declare-fun res!945043 () Bool)

(assert (=> b!1406715 (=> (not res!945043) (not e!796200))))

(declare-datatypes ((List!33127 0))(
  ( (Nil!33124) (Cons!33123 (h!34377 (_ BitVec 64)) (t!47828 List!33127)) )
))
(declare-fun arrayNoDuplicates!0 (array!96169 (_ BitVec 32) List!33127) Bool)

(assert (=> b!1406715 (= res!945043 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33124))))

(declare-fun b!1406716 () Bool)

(declare-fun res!945046 () Bool)

(assert (=> b!1406716 (=> (not res!945046) (not e!796200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96169 (_ BitVec 32)) Bool)

(assert (=> b!1406716 (= res!945046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406717 () Bool)

(declare-fun res!945047 () Bool)

(assert (=> b!1406717 (=> (not res!945047) (not e!796200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406717 (= res!945047 (validKeyInArray!0 (select (arr!46428 a!2901) i!1037)))))

(declare-fun b!1406718 () Bool)

(declare-fun res!945042 () Bool)

(declare-fun e!796201 () Bool)

(assert (=> b!1406718 (=> res!945042 e!796201)))

(declare-datatypes ((SeekEntryResult!10761 0))(
  ( (MissingZero!10761 (index!45420 (_ BitVec 32))) (Found!10761 (index!45421 (_ BitVec 32))) (Intermediate!10761 (undefined!11573 Bool) (index!45422 (_ BitVec 32)) (x!127019 (_ BitVec 32))) (Undefined!10761) (MissingVacant!10761 (index!45423 (_ BitVec 32))) )
))
(declare-fun lt!619446 () SeekEntryResult!10761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96169 (_ BitVec 32)) SeekEntryResult!10761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406718 (= res!945042 (not (= lt!619446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)) mask!2840))))))

(declare-fun b!1406719 () Bool)

(assert (=> b!1406719 (= e!796200 (not e!796201))))

(declare-fun res!945041 () Bool)

(assert (=> b!1406719 (=> res!945041 e!796201)))

(assert (=> b!1406719 (= res!945041 (or (not (is-Intermediate!10761 lt!619446)) (undefined!11573 lt!619446)))))

(declare-fun e!796199 () Bool)

(assert (=> b!1406719 e!796199))

(declare-fun res!945048 () Bool)

(assert (=> b!1406719 (=> (not res!945048) (not e!796199))))

(assert (=> b!1406719 (= res!945048 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47446 0))(
  ( (Unit!47447) )
))
(declare-fun lt!619447 () Unit!47446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47446)

(assert (=> b!1406719 (= lt!619447 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406719 (= lt!619446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) (select (arr!46428 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406720 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96169 (_ BitVec 32)) SeekEntryResult!10761)

(assert (=> b!1406720 (= e!796199 (= (seekEntryOrOpen!0 (select (arr!46428 a!2901) j!112) a!2901 mask!2840) (Found!10761 j!112)))))

(declare-fun b!1406721 () Bool)

(declare-fun res!945044 () Bool)

(assert (=> b!1406721 (=> (not res!945044) (not e!796200))))

(assert (=> b!1406721 (= res!945044 (validKeyInArray!0 (select (arr!46428 a!2901) j!112)))))

(declare-fun b!1406722 () Bool)

(assert (=> b!1406722 (= e!796201 (and (bvsge (x!127019 lt!619446) #b00000000000000000000000000000000) (bvsle (x!127019 lt!619446) #b01111111111111111111111111111110)))))

(assert (= (and start!120944 res!945045) b!1406714))

(assert (= (and b!1406714 res!945040) b!1406717))

(assert (= (and b!1406717 res!945047) b!1406721))

(assert (= (and b!1406721 res!945044) b!1406716))

(assert (= (and b!1406716 res!945046) b!1406715))

(assert (= (and b!1406715 res!945043) b!1406719))

(assert (= (and b!1406719 res!945048) b!1406720))

(assert (= (and b!1406719 (not res!945041)) b!1406718))

(assert (= (and b!1406718 (not res!945042)) b!1406722))

(declare-fun m!1296055 () Bool)

(assert (=> b!1406719 m!1296055))

(declare-fun m!1296057 () Bool)

(assert (=> b!1406719 m!1296057))

(assert (=> b!1406719 m!1296055))

(declare-fun m!1296059 () Bool)

(assert (=> b!1406719 m!1296059))

(assert (=> b!1406719 m!1296057))

(assert (=> b!1406719 m!1296055))

(declare-fun m!1296061 () Bool)

(assert (=> b!1406719 m!1296061))

(declare-fun m!1296063 () Bool)

(assert (=> b!1406719 m!1296063))

(declare-fun m!1296065 () Bool)

(assert (=> start!120944 m!1296065))

(declare-fun m!1296067 () Bool)

(assert (=> start!120944 m!1296067))

(declare-fun m!1296069 () Bool)

(assert (=> b!1406716 m!1296069))

(assert (=> b!1406720 m!1296055))

(assert (=> b!1406720 m!1296055))

(declare-fun m!1296071 () Bool)

(assert (=> b!1406720 m!1296071))

(declare-fun m!1296073 () Bool)

(assert (=> b!1406718 m!1296073))

(declare-fun m!1296075 () Bool)

(assert (=> b!1406718 m!1296075))

(assert (=> b!1406718 m!1296075))

(declare-fun m!1296077 () Bool)

(assert (=> b!1406718 m!1296077))

(assert (=> b!1406718 m!1296077))

(assert (=> b!1406718 m!1296075))

(declare-fun m!1296079 () Bool)

(assert (=> b!1406718 m!1296079))

(declare-fun m!1296081 () Bool)

(assert (=> b!1406717 m!1296081))

(assert (=> b!1406717 m!1296081))

(declare-fun m!1296083 () Bool)

(assert (=> b!1406717 m!1296083))

(assert (=> b!1406721 m!1296055))

(assert (=> b!1406721 m!1296055))

(declare-fun m!1296085 () Bool)

(assert (=> b!1406721 m!1296085))

(declare-fun m!1296087 () Bool)

(assert (=> b!1406715 m!1296087))

(push 1)

(assert (not b!1406720))

(assert (not b!1406719))

(assert (not b!1406716))

(assert (not start!120944))

(assert (not b!1406718))

(assert (not b!1406715))

(assert (not b!1406717))

(assert (not b!1406721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151371 () Bool)

(assert (=> d!151371 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120944 d!151371))

(declare-fun d!151373 () Bool)

(assert (=> d!151373 (= (array_inv!35373 a!2901) (bvsge (size!46979 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120944 d!151373))

(declare-fun b!1406807 () Bool)

(declare-fun e!796256 () SeekEntryResult!10761)

(declare-fun e!796255 () SeekEntryResult!10761)

(assert (=> b!1406807 (= e!796256 e!796255)))

(declare-fun lt!619486 () (_ BitVec 64))

(declare-fun lt!619485 () SeekEntryResult!10761)

(assert (=> b!1406807 (= lt!619486 (select (arr!46428 a!2901) (index!45422 lt!619485)))))

(declare-fun c!130333 () Bool)

(assert (=> b!1406807 (= c!130333 (= lt!619486 (select (arr!46428 a!2901) j!112)))))

(declare-fun b!1406808 () Bool)

(declare-fun e!796254 () SeekEntryResult!10761)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96169 (_ BitVec 32)) SeekEntryResult!10761)

(assert (=> b!1406808 (= e!796254 (seekKeyOrZeroReturnVacant!0 (x!127019 lt!619485) (index!45422 lt!619485) (index!45422 lt!619485) (select (arr!46428 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406810 () Bool)

(assert (=> b!1406810 (= e!796256 Undefined!10761)))

(declare-fun b!1406811 () Bool)

(declare-fun c!130334 () Bool)

(assert (=> b!1406811 (= c!130334 (= lt!619486 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406811 (= e!796255 e!796254)))

(declare-fun b!1406812 () Bool)

(assert (=> b!1406812 (= e!796254 (MissingZero!10761 (index!45422 lt!619485)))))

(declare-fun b!1406809 () Bool)

(assert (=> b!1406809 (= e!796255 (Found!10761 (index!45422 lt!619485)))))

(declare-fun d!151375 () Bool)

(declare-fun lt!619484 () SeekEntryResult!10761)

(assert (=> d!151375 (and (or (is-Undefined!10761 lt!619484) (not (is-Found!10761 lt!619484)) (and (bvsge (index!45421 lt!619484) #b00000000000000000000000000000000) (bvslt (index!45421 lt!619484) (size!46979 a!2901)))) (or (is-Undefined!10761 lt!619484) (is-Found!10761 lt!619484) (not (is-MissingZero!10761 lt!619484)) (and (bvsge (index!45420 lt!619484) #b00000000000000000000000000000000) (bvslt (index!45420 lt!619484) (size!46979 a!2901)))) (or (is-Undefined!10761 lt!619484) (is-Found!10761 lt!619484) (is-MissingZero!10761 lt!619484) (not (is-MissingVacant!10761 lt!619484)) (and (bvsge (index!45423 lt!619484) #b00000000000000000000000000000000) (bvslt (index!45423 lt!619484) (size!46979 a!2901)))) (or (is-Undefined!10761 lt!619484) (ite (is-Found!10761 lt!619484) (= (select (arr!46428 a!2901) (index!45421 lt!619484)) (select (arr!46428 a!2901) j!112)) (ite (is-MissingZero!10761 lt!619484) (= (select (arr!46428 a!2901) (index!45420 lt!619484)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10761 lt!619484) (= (select (arr!46428 a!2901) (index!45423 lt!619484)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151375 (= lt!619484 e!796256)))

(declare-fun c!130332 () Bool)

(assert (=> d!151375 (= c!130332 (and (is-Intermediate!10761 lt!619485) (undefined!11573 lt!619485)))))

(assert (=> d!151375 (= lt!619485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) (select (arr!46428 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151375 (validMask!0 mask!2840)))

(assert (=> d!151375 (= (seekEntryOrOpen!0 (select (arr!46428 a!2901) j!112) a!2901 mask!2840) lt!619484)))

(assert (= (and d!151375 c!130332) b!1406810))

(assert (= (and d!151375 (not c!130332)) b!1406807))

(assert (= (and b!1406807 c!130333) b!1406809))

(assert (= (and b!1406807 (not c!130333)) b!1406811))

(assert (= (and b!1406811 c!130334) b!1406812))

(assert (= (and b!1406811 (not c!130334)) b!1406808))

(declare-fun m!1296123 () Bool)

(assert (=> b!1406807 m!1296123))

(assert (=> b!1406808 m!1296055))

(declare-fun m!1296125 () Bool)

(assert (=> b!1406808 m!1296125))

(declare-fun m!1296127 () Bool)

(assert (=> d!151375 m!1296127))

(declare-fun m!1296129 () Bool)

(assert (=> d!151375 m!1296129))

(declare-fun m!1296131 () Bool)

(assert (=> d!151375 m!1296131))

(assert (=> d!151375 m!1296065))

(assert (=> d!151375 m!1296055))

(assert (=> d!151375 m!1296057))

(assert (=> d!151375 m!1296057))

(assert (=> d!151375 m!1296055))

(assert (=> d!151375 m!1296061))

(assert (=> b!1406720 d!151375))

(declare-fun b!1406835 () Bool)

(declare-fun e!796274 () Bool)

(declare-fun contains!9809 (List!33127 (_ BitVec 64)) Bool)

(assert (=> b!1406835 (= e!796274 (contains!9809 Nil!33124 (select (arr!46428 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151389 () Bool)

(declare-fun res!945082 () Bool)

(declare-fun e!796273 () Bool)

(assert (=> d!151389 (=> res!945082 e!796273)))

(assert (=> d!151389 (= res!945082 (bvsge #b00000000000000000000000000000000 (size!46979 a!2901)))))

(assert (=> d!151389 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33124) e!796273)))

(declare-fun b!1406836 () Bool)

(declare-fun e!796272 () Bool)

(assert (=> b!1406836 (= e!796273 e!796272)))

(declare-fun res!945081 () Bool)

(assert (=> b!1406836 (=> (not res!945081) (not e!796272))))

(assert (=> b!1406836 (= res!945081 (not e!796274))))

(declare-fun res!945080 () Bool)

(assert (=> b!1406836 (=> (not res!945080) (not e!796274))))

(assert (=> b!1406836 (= res!945080 (validKeyInArray!0 (select (arr!46428 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406837 () Bool)

(declare-fun e!796271 () Bool)

(assert (=> b!1406837 (= e!796272 e!796271)))

(declare-fun c!130343 () Bool)

(assert (=> b!1406837 (= c!130343 (validKeyInArray!0 (select (arr!46428 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406838 () Bool)

(declare-fun call!66957 () Bool)

(assert (=> b!1406838 (= e!796271 call!66957)))

(declare-fun bm!66954 () Bool)

(assert (=> bm!66954 (= call!66957 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130343 (Cons!33123 (select (arr!46428 a!2901) #b00000000000000000000000000000000) Nil!33124) Nil!33124)))))

(declare-fun b!1406839 () Bool)

(assert (=> b!1406839 (= e!796271 call!66957)))

(assert (= (and d!151389 (not res!945082)) b!1406836))

(assert (= (and b!1406836 res!945080) b!1406835))

(assert (= (and b!1406836 res!945081) b!1406837))

(assert (= (and b!1406837 c!130343) b!1406838))

(assert (= (and b!1406837 (not c!130343)) b!1406839))

(assert (= (or b!1406838 b!1406839) bm!66954))

(declare-fun m!1296133 () Bool)

(assert (=> b!1406835 m!1296133))

(assert (=> b!1406835 m!1296133))

(declare-fun m!1296135 () Bool)

(assert (=> b!1406835 m!1296135))

(assert (=> b!1406836 m!1296133))

(assert (=> b!1406836 m!1296133))

(declare-fun m!1296137 () Bool)

(assert (=> b!1406836 m!1296137))

(assert (=> b!1406837 m!1296133))

(assert (=> b!1406837 m!1296133))

(assert (=> b!1406837 m!1296137))

(assert (=> bm!66954 m!1296133))

(declare-fun m!1296139 () Bool)

(assert (=> bm!66954 m!1296139))

(assert (=> b!1406715 d!151389))

(declare-fun b!1406906 () Bool)

(declare-fun e!796318 () Bool)

(declare-fun lt!619510 () SeekEntryResult!10761)

(assert (=> b!1406906 (= e!796318 (bvsge (x!127019 lt!619510) #b01111111111111111111111111111110))))

(declare-fun b!1406907 () Bool)

(assert (=> b!1406907 (and (bvsge (index!45422 lt!619510) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619510) (size!46979 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)))))))

(declare-fun res!945109 () Bool)

(assert (=> b!1406907 (= res!945109 (= (select (arr!46428 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901))) (index!45422 lt!619510)) (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!796315 () Bool)

(assert (=> b!1406907 (=> res!945109 e!796315)))

(declare-fun e!796316 () Bool)

(assert (=> b!1406907 (= e!796316 e!796315)))

(declare-fun b!1406908 () Bool)

(assert (=> b!1406908 (and (bvsge (index!45422 lt!619510) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619510) (size!46979 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)))))))

(declare-fun res!945108 () Bool)

(assert (=> b!1406908 (= res!945108 (= (select (arr!46428 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901))) (index!45422 lt!619510)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406908 (=> res!945108 e!796315)))

(declare-fun e!796317 () SeekEntryResult!10761)

(declare-fun b!1406909 () Bool)

(assert (=> b!1406909 (= e!796317 (Intermediate!10761 true (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406910 () Bool)

(assert (=> b!1406910 (= e!796318 e!796316)))

(declare-fun res!945110 () Bool)

(assert (=> b!1406910 (= res!945110 (and (is-Intermediate!10761 lt!619510) (not (undefined!11573 lt!619510)) (bvslt (x!127019 lt!619510) #b01111111111111111111111111111110) (bvsge (x!127019 lt!619510) #b00000000000000000000000000000000) (bvsge (x!127019 lt!619510) #b00000000000000000000000000000000)))))

(assert (=> b!1406910 (=> (not res!945110) (not e!796316))))

(declare-fun b!1406911 () Bool)

(assert (=> b!1406911 (and (bvsge (index!45422 lt!619510) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619510) (size!46979 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)))))))

(assert (=> b!1406911 (= e!796315 (= (select (arr!46428 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901))) (index!45422 lt!619510)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1406913 () Bool)

(declare-fun e!796319 () SeekEntryResult!10761)

(assert (=> b!1406913 (= e!796319 (Intermediate!10761 false (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406914 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406914 (= e!796319 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)) mask!2840))))

(declare-fun d!151397 () Bool)

(assert (=> d!151397 e!796318))

(declare-fun c!130367 () Bool)

(assert (=> d!151397 (= c!130367 (and (is-Intermediate!10761 lt!619510) (undefined!11573 lt!619510)))))

(assert (=> d!151397 (= lt!619510 e!796317)))

(declare-fun c!130366 () Bool)

(assert (=> d!151397 (= c!130366 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619511 () (_ BitVec 64))

(assert (=> d!151397 (= lt!619511 (select (arr!46428 (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901))) (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151397 (validMask!0 mask!2840)))

(assert (=> d!151397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96170 (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46979 a!2901)) mask!2840) lt!619510)))

(declare-fun b!1406912 () Bool)

(assert (=> b!1406912 (= e!796317 e!796319)))

(declare-fun c!130365 () Bool)

(assert (=> b!1406912 (= c!130365 (or (= lt!619511 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619511 lt!619511) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151397 c!130366) b!1406909))

(assert (= (and d!151397 (not c!130366)) b!1406912))

(assert (= (and b!1406912 c!130365) b!1406913))

(assert (= (and b!1406912 (not c!130365)) b!1406914))

(assert (= (and d!151397 c!130367) b!1406906))

(assert (= (and d!151397 (not c!130367)) b!1406910))

(assert (= (and b!1406910 res!945110) b!1406907))

(assert (= (and b!1406907 (not res!945109)) b!1406908))

(assert (= (and b!1406908 (not res!945108)) b!1406911))

(declare-fun m!1296167 () Bool)

(assert (=> b!1406907 m!1296167))

(assert (=> b!1406908 m!1296167))

(assert (=> b!1406914 m!1296077))

(declare-fun m!1296169 () Bool)

(assert (=> b!1406914 m!1296169))

(assert (=> b!1406914 m!1296169))

(assert (=> b!1406914 m!1296075))

(declare-fun m!1296171 () Bool)

(assert (=> b!1406914 m!1296171))

(assert (=> b!1406911 m!1296167))

(assert (=> d!151397 m!1296077))

(declare-fun m!1296173 () Bool)

(assert (=> d!151397 m!1296173))

(assert (=> d!151397 m!1296065))

(assert (=> b!1406718 d!151397))

(declare-fun d!151413 () Bool)

(declare-fun lt!619525 () (_ BitVec 32))

(declare-fun lt!619524 () (_ BitVec 32))

(assert (=> d!151413 (= lt!619525 (bvmul (bvxor lt!619524 (bvlshr lt!619524 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151413 (= lt!619524 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151413 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945113 (let ((h!34380 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127025 (bvmul (bvxor h!34380 (bvlshr h!34380 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127025 (bvlshr x!127025 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945113 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945113 #b00000000000000000000000000000000))))))

(assert (=> d!151413 (= (toIndex!0 (select (store (arr!46428 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619525 (bvlshr lt!619525 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406718 d!151413))

(declare-fun b!1406948 () Bool)

(declare-fun e!796345 () Bool)

(declare-fun e!796343 () Bool)

(assert (=> b!1406948 (= e!796345 e!796343)))

(declare-fun c!130377 () Bool)

(assert (=> b!1406948 (= c!130377 (validKeyInArray!0 (select (arr!46428 a!2901) j!112)))))

(declare-fun call!66967 () Bool)

(declare-fun bm!66964 () Bool)

(assert (=> bm!66964 (= call!66967 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1406949 () Bool)

(assert (=> b!1406949 (= e!796343 call!66967)))

(declare-fun b!1406950 () Bool)

(declare-fun e!796344 () Bool)

(assert (=> b!1406950 (= e!796343 e!796344)))

(declare-fun lt!619549 () (_ BitVec 64))

(assert (=> b!1406950 (= lt!619549 (select (arr!46428 a!2901) j!112))))

(declare-fun lt!619547 () Unit!47446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96169 (_ BitVec 64) (_ BitVec 32)) Unit!47446)

(assert (=> b!1406950 (= lt!619547 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619549 j!112))))

(declare-fun arrayContainsKey!0 (array!96169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1406950 (arrayContainsKey!0 a!2901 lt!619549 #b00000000000000000000000000000000)))

(declare-fun lt!619548 () Unit!47446)

(assert (=> b!1406950 (= lt!619548 lt!619547)))

(declare-fun res!945128 () Bool)

(assert (=> b!1406950 (= res!945128 (= (seekEntryOrOpen!0 (select (arr!46428 a!2901) j!112) a!2901 mask!2840) (Found!10761 j!112)))))

(assert (=> b!1406950 (=> (not res!945128) (not e!796344))))

(declare-fun b!1406951 () Bool)

(assert (=> b!1406951 (= e!796344 call!66967)))

(declare-fun d!151419 () Bool)

(declare-fun res!945127 () Bool)

(assert (=> d!151419 (=> res!945127 e!796345)))

(assert (=> d!151419 (= res!945127 (bvsge j!112 (size!46979 a!2901)))))

(assert (=> d!151419 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796345)))

(assert (= (and d!151419 (not res!945127)) b!1406948))

(assert (= (and b!1406948 c!130377) b!1406950))

(assert (= (and b!1406948 (not c!130377)) b!1406949))

(assert (= (and b!1406950 res!945128) b!1406951))

(assert (= (or b!1406951 b!1406949) bm!66964))

(assert (=> b!1406948 m!1296055))

(assert (=> b!1406948 m!1296055))

(assert (=> b!1406948 m!1296085))

(declare-fun m!1296199 () Bool)

(assert (=> bm!66964 m!1296199))

(assert (=> b!1406950 m!1296055))

(declare-fun m!1296201 () Bool)

(assert (=> b!1406950 m!1296201))

(declare-fun m!1296203 () Bool)

(assert (=> b!1406950 m!1296203))

(assert (=> b!1406950 m!1296055))

(assert (=> b!1406950 m!1296071))

(assert (=> b!1406719 d!151419))

(declare-fun d!151427 () Bool)

(assert (=> d!151427 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619560 () Unit!47446)

(declare-fun choose!38 (array!96169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47446)

(assert (=> d!151427 (= lt!619560 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151427 (validMask!0 mask!2840)))

(assert (=> d!151427 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619560)))

(declare-fun bs!41005 () Bool)

(assert (= bs!41005 d!151427))

(assert (=> bs!41005 m!1296063))

(declare-fun m!1296221 () Bool)

(assert (=> bs!41005 m!1296221))

(assert (=> bs!41005 m!1296065))

(assert (=> b!1406719 d!151427))

(declare-fun b!1406965 () Bool)

(declare-fun e!796357 () Bool)

(declare-fun lt!619561 () SeekEntryResult!10761)

(assert (=> b!1406965 (= e!796357 (bvsge (x!127019 lt!619561) #b01111111111111111111111111111110))))

(declare-fun b!1406966 () Bool)

(assert (=> b!1406966 (and (bvsge (index!45422 lt!619561) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619561) (size!46979 a!2901)))))

(declare-fun res!945135 () Bool)

(assert (=> b!1406966 (= res!945135 (= (select (arr!46428 a!2901) (index!45422 lt!619561)) (select (arr!46428 a!2901) j!112)))))

(declare-fun e!796354 () Bool)

(assert (=> b!1406966 (=> res!945135 e!796354)))

(declare-fun e!796355 () Bool)

(assert (=> b!1406966 (= e!796355 e!796354)))

(declare-fun b!1406967 () Bool)

(assert (=> b!1406967 (and (bvsge (index!45422 lt!619561) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619561) (size!46979 a!2901)))))

(declare-fun res!945134 () Bool)

(assert (=> b!1406967 (= res!945134 (= (select (arr!46428 a!2901) (index!45422 lt!619561)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406967 (=> res!945134 e!796354)))

(declare-fun e!796356 () SeekEntryResult!10761)

(declare-fun b!1406968 () Bool)

(assert (=> b!1406968 (= e!796356 (Intermediate!10761 true (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406969 () Bool)

(assert (=> b!1406969 (= e!796357 e!796355)))

(declare-fun res!945136 () Bool)

(assert (=> b!1406969 (= res!945136 (and (is-Intermediate!10761 lt!619561) (not (undefined!11573 lt!619561)) (bvslt (x!127019 lt!619561) #b01111111111111111111111111111110) (bvsge (x!127019 lt!619561) #b00000000000000000000000000000000) (bvsge (x!127019 lt!619561) #b00000000000000000000000000000000)))))

(assert (=> b!1406969 (=> (not res!945136) (not e!796355))))

(declare-fun b!1406970 () Bool)

(assert (=> b!1406970 (and (bvsge (index!45422 lt!619561) #b00000000000000000000000000000000) (bvslt (index!45422 lt!619561) (size!46979 a!2901)))))

(assert (=> b!1406970 (= e!796354 (= (select (arr!46428 a!2901) (index!45422 lt!619561)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796358 () SeekEntryResult!10761)

(declare-fun b!1406972 () Bool)

(assert (=> b!1406972 (= e!796358 (Intermediate!10761 false (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406973 () Bool)

(assert (=> b!1406973 (= e!796358 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46428 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151433 () Bool)

(assert (=> d!151433 e!796357))

(declare-fun c!130384 () Bool)

(assert (=> d!151433 (= c!130384 (and (is-Intermediate!10761 lt!619561) (undefined!11573 lt!619561)))))

(assert (=> d!151433 (= lt!619561 e!796356)))

(declare-fun c!130383 () Bool)

(assert (=> d!151433 (= c!130383 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619562 () (_ BitVec 64))

(assert (=> d!151433 (= lt!619562 (select (arr!46428 a!2901) (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840)))))

(assert (=> d!151433 (validMask!0 mask!2840)))

(assert (=> d!151433 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46428 a!2901) j!112) mask!2840) (select (arr!46428 a!2901) j!112) a!2901 mask!2840) lt!619561)))

(declare-fun b!1406971 () Bool)

(assert (=> b!1406971 (= e!796356 e!796358)))

(declare-fun c!130382 () Bool)

(assert (=> b!1406971 (= c!130382 (or (= lt!619562 (select (arr!46428 a!2901) j!112)) (= (bvadd lt!619562 lt!619562) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151433 c!130383) b!1406968))

(assert (= (and d!151433 (not c!130383)) b!1406971))

(assert (= (and b!1406971 c!130382) b!1406972))

(assert (= (and b!1406971 (not c!130382)) b!1406973))

(assert (= (and d!151433 c!130384) b!1406965))

(assert (= (and d!151433 (not c!130384)) b!1406969))

(assert (= (and b!1406969 res!945136) b!1406966))

(assert (= (and b!1406966 (not res!945135)) b!1406967))

(assert (= (and b!1406967 (not res!945134)) b!1406970))

(declare-fun m!1296223 () Bool)

(assert (=> b!1406966 m!1296223))

(assert (=> b!1406967 m!1296223))

(assert (=> b!1406973 m!1296057))

(declare-fun m!1296225 () Bool)

(assert (=> b!1406973 m!1296225))

(assert (=> b!1406973 m!1296225))

(assert (=> b!1406973 m!1296055))

(declare-fun m!1296227 () Bool)

(assert (=> b!1406973 m!1296227))

(assert (=> b!1406970 m!1296223))

(assert (=> d!151433 m!1296057))

(declare-fun m!1296229 () Bool)

(assert (=> d!151433 m!1296229))

(assert (=> d!151433 m!1296065))

(assert (=> b!1406719 d!151433))

(declare-fun d!151435 () Bool)

(declare-fun lt!619564 () (_ BitVec 32))

(declare-fun lt!619563 () (_ BitVec 32))

(assert (=> d!151435 (= lt!619564 (bvmul (bvxor lt!619563 (bvlshr lt!619563 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

