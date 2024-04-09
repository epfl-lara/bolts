; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120942 () Bool)

(assert start!120942)

(declare-fun b!1406687 () Bool)

(declare-fun res!945020 () Bool)

(declare-fun e!796187 () Bool)

(assert (=> b!1406687 (=> (not res!945020) (not e!796187))))

(declare-datatypes ((array!96167 0))(
  ( (array!96168 (arr!46427 (Array (_ BitVec 32) (_ BitVec 64))) (size!46978 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96167)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406687 (= res!945020 (validKeyInArray!0 (select (arr!46427 a!2901) j!112)))))

(declare-fun b!1406688 () Bool)

(declare-fun e!796190 () Bool)

(assert (=> b!1406688 (= e!796187 (not e!796190))))

(declare-fun res!945018 () Bool)

(assert (=> b!1406688 (=> res!945018 e!796190)))

(declare-datatypes ((SeekEntryResult!10760 0))(
  ( (MissingZero!10760 (index!45416 (_ BitVec 32))) (Found!10760 (index!45417 (_ BitVec 32))) (Intermediate!10760 (undefined!11572 Bool) (index!45418 (_ BitVec 32)) (x!127018 (_ BitVec 32))) (Undefined!10760) (MissingVacant!10760 (index!45419 (_ BitVec 32))) )
))
(declare-fun lt!619441 () SeekEntryResult!10760)

(get-info :version)

(assert (=> b!1406688 (= res!945018 (or (not ((_ is Intermediate!10760) lt!619441)) (undefined!11572 lt!619441)))))

(declare-fun e!796188 () Bool)

(assert (=> b!1406688 e!796188))

(declare-fun res!945013 () Bool)

(assert (=> b!1406688 (=> (not res!945013) (not e!796188))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96167 (_ BitVec 32)) Bool)

(assert (=> b!1406688 (= res!945013 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47444 0))(
  ( (Unit!47445) )
))
(declare-fun lt!619440 () Unit!47444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47444)

(assert (=> b!1406688 (= lt!619440 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96167 (_ BitVec 32)) SeekEntryResult!10760)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406688 (= lt!619441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) (select (arr!46427 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406689 () Bool)

(declare-fun res!945016 () Bool)

(assert (=> b!1406689 (=> (not res!945016) (not e!796187))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406689 (= res!945016 (validKeyInArray!0 (select (arr!46427 a!2901) i!1037)))))

(declare-fun b!1406690 () Bool)

(declare-fun res!945014 () Bool)

(assert (=> b!1406690 (=> (not res!945014) (not e!796187))))

(assert (=> b!1406690 (= res!945014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406691 () Bool)

(assert (=> b!1406691 (= e!796190 (and (bvsge (x!127018 lt!619441) #b00000000000000000000000000000000) (bvsle (x!127018 lt!619441) #b01111111111111111111111111111110)))))

(declare-fun res!945021 () Bool)

(assert (=> start!120942 (=> (not res!945021) (not e!796187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120942 (= res!945021 (validMask!0 mask!2840))))

(assert (=> start!120942 e!796187))

(assert (=> start!120942 true))

(declare-fun array_inv!35372 (array!96167) Bool)

(assert (=> start!120942 (array_inv!35372 a!2901)))

(declare-fun b!1406692 () Bool)

(declare-fun res!945015 () Bool)

(assert (=> b!1406692 (=> (not res!945015) (not e!796187))))

(declare-datatypes ((List!33126 0))(
  ( (Nil!33123) (Cons!33122 (h!34376 (_ BitVec 64)) (t!47827 List!33126)) )
))
(declare-fun arrayNoDuplicates!0 (array!96167 (_ BitVec 32) List!33126) Bool)

(assert (=> b!1406692 (= res!945015 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33123))))

(declare-fun b!1406693 () Bool)

(declare-fun res!945017 () Bool)

(assert (=> b!1406693 (=> res!945017 e!796190)))

(assert (=> b!1406693 (= res!945017 (not (= lt!619441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)) mask!2840))))))

(declare-fun b!1406694 () Bool)

(declare-fun res!945019 () Bool)

(assert (=> b!1406694 (=> (not res!945019) (not e!796187))))

(assert (=> b!1406694 (= res!945019 (and (= (size!46978 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46978 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46978 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406695 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96167 (_ BitVec 32)) SeekEntryResult!10760)

(assert (=> b!1406695 (= e!796188 (= (seekEntryOrOpen!0 (select (arr!46427 a!2901) j!112) a!2901 mask!2840) (Found!10760 j!112)))))

(assert (= (and start!120942 res!945021) b!1406694))

(assert (= (and b!1406694 res!945019) b!1406689))

(assert (= (and b!1406689 res!945016) b!1406687))

(assert (= (and b!1406687 res!945020) b!1406690))

(assert (= (and b!1406690 res!945014) b!1406692))

(assert (= (and b!1406692 res!945015) b!1406688))

(assert (= (and b!1406688 res!945013) b!1406695))

(assert (= (and b!1406688 (not res!945018)) b!1406693))

(assert (= (and b!1406693 (not res!945017)) b!1406691))

(declare-fun m!1296021 () Bool)

(assert (=> b!1406693 m!1296021))

(declare-fun m!1296023 () Bool)

(assert (=> b!1406693 m!1296023))

(assert (=> b!1406693 m!1296023))

(declare-fun m!1296025 () Bool)

(assert (=> b!1406693 m!1296025))

(assert (=> b!1406693 m!1296025))

(assert (=> b!1406693 m!1296023))

(declare-fun m!1296027 () Bool)

(assert (=> b!1406693 m!1296027))

(declare-fun m!1296029 () Bool)

(assert (=> b!1406695 m!1296029))

(assert (=> b!1406695 m!1296029))

(declare-fun m!1296031 () Bool)

(assert (=> b!1406695 m!1296031))

(declare-fun m!1296033 () Bool)

(assert (=> b!1406690 m!1296033))

(assert (=> b!1406688 m!1296029))

(declare-fun m!1296035 () Bool)

(assert (=> b!1406688 m!1296035))

(assert (=> b!1406688 m!1296029))

(declare-fun m!1296037 () Bool)

(assert (=> b!1406688 m!1296037))

(assert (=> b!1406688 m!1296035))

(assert (=> b!1406688 m!1296029))

(declare-fun m!1296039 () Bool)

(assert (=> b!1406688 m!1296039))

(declare-fun m!1296041 () Bool)

(assert (=> b!1406688 m!1296041))

(assert (=> b!1406687 m!1296029))

(assert (=> b!1406687 m!1296029))

(declare-fun m!1296043 () Bool)

(assert (=> b!1406687 m!1296043))

(declare-fun m!1296045 () Bool)

(assert (=> b!1406689 m!1296045))

(assert (=> b!1406689 m!1296045))

(declare-fun m!1296047 () Bool)

(assert (=> b!1406689 m!1296047))

(declare-fun m!1296049 () Bool)

(assert (=> b!1406692 m!1296049))

(declare-fun m!1296051 () Bool)

(assert (=> start!120942 m!1296051))

(declare-fun m!1296053 () Bool)

(assert (=> start!120942 m!1296053))

(check-sat (not b!1406690) (not b!1406693) (not b!1406689) (not start!120942) (not b!1406692) (not b!1406695) (not b!1406687) (not b!1406688))
(check-sat)
(get-model)

(declare-fun b!1406733 () Bool)

(declare-fun e!796214 () Bool)

(declare-fun e!796213 () Bool)

(assert (=> b!1406733 (= e!796214 e!796213)))

(declare-fun c!130304 () Bool)

(assert (=> b!1406733 (= c!130304 (validKeyInArray!0 (select (arr!46427 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406734 () Bool)

(declare-fun e!796212 () Bool)

(declare-fun contains!9808 (List!33126 (_ BitVec 64)) Bool)

(assert (=> b!1406734 (= e!796212 (contains!9808 Nil!33123 (select (arr!46427 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406735 () Bool)

(declare-fun call!66951 () Bool)

(assert (=> b!1406735 (= e!796213 call!66951)))

(declare-fun bm!66948 () Bool)

(assert (=> bm!66948 (= call!66951 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130304 (Cons!33122 (select (arr!46427 a!2901) #b00000000000000000000000000000000) Nil!33123) Nil!33123)))))

(declare-fun b!1406736 () Bool)

(declare-fun e!796211 () Bool)

(assert (=> b!1406736 (= e!796211 e!796214)))

(declare-fun res!945057 () Bool)

(assert (=> b!1406736 (=> (not res!945057) (not e!796214))))

(assert (=> b!1406736 (= res!945057 (not e!796212))))

(declare-fun res!945055 () Bool)

(assert (=> b!1406736 (=> (not res!945055) (not e!796212))))

(assert (=> b!1406736 (= res!945055 (validKeyInArray!0 (select (arr!46427 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151365 () Bool)

(declare-fun res!945056 () Bool)

(assert (=> d!151365 (=> res!945056 e!796211)))

(assert (=> d!151365 (= res!945056 (bvsge #b00000000000000000000000000000000 (size!46978 a!2901)))))

(assert (=> d!151365 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33123) e!796211)))

(declare-fun b!1406737 () Bool)

(assert (=> b!1406737 (= e!796213 call!66951)))

(assert (= (and d!151365 (not res!945056)) b!1406736))

(assert (= (and b!1406736 res!945055) b!1406734))

(assert (= (and b!1406736 res!945057) b!1406733))

(assert (= (and b!1406733 c!130304) b!1406737))

(assert (= (and b!1406733 (not c!130304)) b!1406735))

(assert (= (or b!1406737 b!1406735) bm!66948))

(declare-fun m!1296089 () Bool)

(assert (=> b!1406733 m!1296089))

(assert (=> b!1406733 m!1296089))

(declare-fun m!1296091 () Bool)

(assert (=> b!1406733 m!1296091))

(assert (=> b!1406734 m!1296089))

(assert (=> b!1406734 m!1296089))

(declare-fun m!1296093 () Bool)

(assert (=> b!1406734 m!1296093))

(assert (=> bm!66948 m!1296089))

(declare-fun m!1296095 () Bool)

(assert (=> bm!66948 m!1296095))

(assert (=> b!1406736 m!1296089))

(assert (=> b!1406736 m!1296089))

(assert (=> b!1406736 m!1296091))

(assert (=> b!1406692 d!151365))

(declare-fun b!1406768 () Bool)

(declare-fun e!796233 () SeekEntryResult!10760)

(declare-fun lt!619458 () SeekEntryResult!10760)

(assert (=> b!1406768 (= e!796233 (Found!10760 (index!45418 lt!619458)))))

(declare-fun e!796231 () SeekEntryResult!10760)

(declare-fun b!1406769 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96167 (_ BitVec 32)) SeekEntryResult!10760)

(assert (=> b!1406769 (= e!796231 (seekKeyOrZeroReturnVacant!0 (x!127018 lt!619458) (index!45418 lt!619458) (index!45418 lt!619458) (select (arr!46427 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406771 () Bool)

(declare-fun e!796232 () SeekEntryResult!10760)

(assert (=> b!1406771 (= e!796232 Undefined!10760)))

(declare-fun b!1406772 () Bool)

(declare-fun c!130318 () Bool)

(declare-fun lt!619459 () (_ BitVec 64))

(assert (=> b!1406772 (= c!130318 (= lt!619459 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406772 (= e!796233 e!796231)))

(declare-fun b!1406773 () Bool)

(assert (=> b!1406773 (= e!796231 (MissingZero!10760 (index!45418 lt!619458)))))

(declare-fun d!151367 () Bool)

(declare-fun lt!619460 () SeekEntryResult!10760)

(assert (=> d!151367 (and (or ((_ is Undefined!10760) lt!619460) (not ((_ is Found!10760) lt!619460)) (and (bvsge (index!45417 lt!619460) #b00000000000000000000000000000000) (bvslt (index!45417 lt!619460) (size!46978 a!2901)))) (or ((_ is Undefined!10760) lt!619460) ((_ is Found!10760) lt!619460) (not ((_ is MissingZero!10760) lt!619460)) (and (bvsge (index!45416 lt!619460) #b00000000000000000000000000000000) (bvslt (index!45416 lt!619460) (size!46978 a!2901)))) (or ((_ is Undefined!10760) lt!619460) ((_ is Found!10760) lt!619460) ((_ is MissingZero!10760) lt!619460) (not ((_ is MissingVacant!10760) lt!619460)) (and (bvsge (index!45419 lt!619460) #b00000000000000000000000000000000) (bvslt (index!45419 lt!619460) (size!46978 a!2901)))) (or ((_ is Undefined!10760) lt!619460) (ite ((_ is Found!10760) lt!619460) (= (select (arr!46427 a!2901) (index!45417 lt!619460)) (select (arr!46427 a!2901) j!112)) (ite ((_ is MissingZero!10760) lt!619460) (= (select (arr!46427 a!2901) (index!45416 lt!619460)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10760) lt!619460) (= (select (arr!46427 a!2901) (index!45419 lt!619460)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151367 (= lt!619460 e!796232)))

(declare-fun c!130317 () Bool)

(assert (=> d!151367 (= c!130317 (and ((_ is Intermediate!10760) lt!619458) (undefined!11572 lt!619458)))))

(assert (=> d!151367 (= lt!619458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) (select (arr!46427 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151367 (validMask!0 mask!2840)))

(assert (=> d!151367 (= (seekEntryOrOpen!0 (select (arr!46427 a!2901) j!112) a!2901 mask!2840) lt!619460)))

(declare-fun b!1406770 () Bool)

(assert (=> b!1406770 (= e!796232 e!796233)))

(assert (=> b!1406770 (= lt!619459 (select (arr!46427 a!2901) (index!45418 lt!619458)))))

(declare-fun c!130319 () Bool)

(assert (=> b!1406770 (= c!130319 (= lt!619459 (select (arr!46427 a!2901) j!112)))))

(assert (= (and d!151367 c!130317) b!1406771))

(assert (= (and d!151367 (not c!130317)) b!1406770))

(assert (= (and b!1406770 c!130319) b!1406768))

(assert (= (and b!1406770 (not c!130319)) b!1406772))

(assert (= (and b!1406772 c!130318) b!1406773))

(assert (= (and b!1406772 (not c!130318)) b!1406769))

(assert (=> b!1406769 m!1296029))

(declare-fun m!1296097 () Bool)

(assert (=> b!1406769 m!1296097))

(declare-fun m!1296099 () Bool)

(assert (=> d!151367 m!1296099))

(assert (=> d!151367 m!1296035))

(assert (=> d!151367 m!1296029))

(assert (=> d!151367 m!1296039))

(declare-fun m!1296101 () Bool)

(assert (=> d!151367 m!1296101))

(assert (=> d!151367 m!1296029))

(assert (=> d!151367 m!1296035))

(assert (=> d!151367 m!1296051))

(declare-fun m!1296103 () Bool)

(assert (=> d!151367 m!1296103))

(declare-fun m!1296105 () Bool)

(assert (=> b!1406770 m!1296105))

(assert (=> b!1406695 d!151367))

(declare-fun d!151377 () Bool)

(declare-fun res!945073 () Bool)

(declare-fun e!796246 () Bool)

(assert (=> d!151377 (=> res!945073 e!796246)))

(assert (=> d!151377 (= res!945073 (bvsge #b00000000000000000000000000000000 (size!46978 a!2901)))))

(assert (=> d!151377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796246)))

(declare-fun b!1406791 () Bool)

(declare-fun e!796247 () Bool)

(assert (=> b!1406791 (= e!796246 e!796247)))

(declare-fun c!130325 () Bool)

(assert (=> b!1406791 (= c!130325 (validKeyInArray!0 (select (arr!46427 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406792 () Bool)

(declare-fun e!796245 () Bool)

(assert (=> b!1406792 (= e!796247 e!796245)))

(declare-fun lt!619476 () (_ BitVec 64))

(assert (=> b!1406792 (= lt!619476 (select (arr!46427 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619477 () Unit!47444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96167 (_ BitVec 64) (_ BitVec 32)) Unit!47444)

(assert (=> b!1406792 (= lt!619477 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619476 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1406792 (arrayContainsKey!0 a!2901 lt!619476 #b00000000000000000000000000000000)))

(declare-fun lt!619475 () Unit!47444)

(assert (=> b!1406792 (= lt!619475 lt!619477)))

(declare-fun res!945072 () Bool)

(assert (=> b!1406792 (= res!945072 (= (seekEntryOrOpen!0 (select (arr!46427 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10760 #b00000000000000000000000000000000)))))

(assert (=> b!1406792 (=> (not res!945072) (not e!796245))))

(declare-fun b!1406793 () Bool)

(declare-fun call!66954 () Bool)

(assert (=> b!1406793 (= e!796245 call!66954)))

(declare-fun bm!66951 () Bool)

(assert (=> bm!66951 (= call!66954 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1406794 () Bool)

(assert (=> b!1406794 (= e!796247 call!66954)))

(assert (= (and d!151377 (not res!945073)) b!1406791))

(assert (= (and b!1406791 c!130325) b!1406792))

(assert (= (and b!1406791 (not c!130325)) b!1406794))

(assert (= (and b!1406792 res!945072) b!1406793))

(assert (= (or b!1406793 b!1406794) bm!66951))

(assert (=> b!1406791 m!1296089))

(assert (=> b!1406791 m!1296089))

(assert (=> b!1406791 m!1296091))

(assert (=> b!1406792 m!1296089))

(declare-fun m!1296115 () Bool)

(assert (=> b!1406792 m!1296115))

(declare-fun m!1296117 () Bool)

(assert (=> b!1406792 m!1296117))

(assert (=> b!1406792 m!1296089))

(declare-fun m!1296119 () Bool)

(assert (=> b!1406792 m!1296119))

(declare-fun m!1296121 () Bool)

(assert (=> bm!66951 m!1296121))

(assert (=> b!1406690 d!151377))

(declare-fun d!151385 () Bool)

(assert (=> d!151385 (= (validKeyInArray!0 (select (arr!46427 a!2901) i!1037)) (and (not (= (select (arr!46427 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46427 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1406689 d!151385))

(declare-fun d!151387 () Bool)

(assert (=> d!151387 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120942 d!151387))

(declare-fun d!151391 () Bool)

(assert (=> d!151391 (= (array_inv!35372 a!2901) (bvsge (size!46978 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120942 d!151391))

(declare-fun d!151393 () Bool)

(assert (=> d!151393 (= (validKeyInArray!0 (select (arr!46427 a!2901) j!112)) (and (not (= (select (arr!46427 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46427 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1406687 d!151393))

(declare-fun b!1406864 () Bool)

(declare-fun e!796288 () Bool)

(declare-fun e!796291 () Bool)

(assert (=> b!1406864 (= e!796288 e!796291)))

(declare-fun res!945089 () Bool)

(declare-fun lt!619505 () SeekEntryResult!10760)

(assert (=> b!1406864 (= res!945089 (and ((_ is Intermediate!10760) lt!619505) (not (undefined!11572 lt!619505)) (bvslt (x!127018 lt!619505) #b01111111111111111111111111111110) (bvsge (x!127018 lt!619505) #b00000000000000000000000000000000) (bvsge (x!127018 lt!619505) #b00000000000000000000000000000000)))))

(assert (=> b!1406864 (=> (not res!945089) (not e!796291))))

(declare-fun d!151395 () Bool)

(assert (=> d!151395 e!796288))

(declare-fun c!130354 () Bool)

(assert (=> d!151395 (= c!130354 (and ((_ is Intermediate!10760) lt!619505) (undefined!11572 lt!619505)))))

(declare-fun e!796289 () SeekEntryResult!10760)

(assert (=> d!151395 (= lt!619505 e!796289)))

(declare-fun c!130353 () Bool)

(assert (=> d!151395 (= c!130353 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619504 () (_ BitVec 64))

(assert (=> d!151395 (= lt!619504 (select (arr!46427 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901))) (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151395 (validMask!0 mask!2840)))

(assert (=> d!151395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)) mask!2840) lt!619505)))

(declare-fun b!1406865 () Bool)

(assert (=> b!1406865 (= e!796288 (bvsge (x!127018 lt!619505) #b01111111111111111111111111111110))))

(declare-fun b!1406866 () Bool)

(assert (=> b!1406866 (and (bvsge (index!45418 lt!619505) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619505) (size!46978 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)))))))

(declare-fun res!945091 () Bool)

(assert (=> b!1406866 (= res!945091 (= (select (arr!46427 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901))) (index!45418 lt!619505)) (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!796292 () Bool)

(assert (=> b!1406866 (=> res!945091 e!796292)))

(assert (=> b!1406866 (= e!796291 e!796292)))

(declare-fun b!1406867 () Bool)

(assert (=> b!1406867 (= e!796289 (Intermediate!10760 true (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406868 () Bool)

(declare-fun e!796290 () SeekEntryResult!10760)

(assert (=> b!1406868 (= e!796289 e!796290)))

(declare-fun c!130355 () Bool)

(assert (=> b!1406868 (= c!130355 (or (= lt!619504 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619504 lt!619504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1406869 () Bool)

(assert (=> b!1406869 (= e!796290 (Intermediate!10760 false (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406870 () Bool)

(assert (=> b!1406870 (and (bvsge (index!45418 lt!619505) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619505) (size!46978 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)))))))

(assert (=> b!1406870 (= e!796292 (= (select (arr!46427 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901))) (index!45418 lt!619505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1406871 () Bool)

(assert (=> b!1406871 (and (bvsge (index!45418 lt!619505) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619505) (size!46978 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)))))))

(declare-fun res!945090 () Bool)

(assert (=> b!1406871 (= res!945090 (= (select (arr!46427 (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901))) (index!45418 lt!619505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406871 (=> res!945090 e!796292)))

(declare-fun b!1406872 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406872 (= e!796290 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96168 (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46978 a!2901)) mask!2840))))

(assert (= (and d!151395 c!130353) b!1406867))

(assert (= (and d!151395 (not c!130353)) b!1406868))

(assert (= (and b!1406868 c!130355) b!1406869))

(assert (= (and b!1406868 (not c!130355)) b!1406872))

(assert (= (and d!151395 c!130354) b!1406865))

(assert (= (and d!151395 (not c!130354)) b!1406864))

(assert (= (and b!1406864 res!945089) b!1406866))

(assert (= (and b!1406866 (not res!945091)) b!1406871))

(assert (= (and b!1406871 (not res!945090)) b!1406870))

(assert (=> b!1406872 m!1296025))

(declare-fun m!1296151 () Bool)

(assert (=> b!1406872 m!1296151))

(assert (=> b!1406872 m!1296151))

(assert (=> b!1406872 m!1296023))

(declare-fun m!1296153 () Bool)

(assert (=> b!1406872 m!1296153))

(declare-fun m!1296155 () Bool)

(assert (=> b!1406870 m!1296155))

(assert (=> b!1406866 m!1296155))

(assert (=> d!151395 m!1296025))

(declare-fun m!1296157 () Bool)

(assert (=> d!151395 m!1296157))

(assert (=> d!151395 m!1296051))

(assert (=> b!1406871 m!1296155))

(assert (=> b!1406693 d!151395))

(declare-fun d!151405 () Bool)

(declare-fun lt!619513 () (_ BitVec 32))

(declare-fun lt!619512 () (_ BitVec 32))

(assert (=> d!151405 (= lt!619513 (bvmul (bvxor lt!619512 (bvlshr lt!619512 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151405 (= lt!619512 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151405 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945096 (let ((h!34379 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127024 (bvmul (bvxor h!34379 (bvlshr h!34379 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127024 (bvlshr x!127024 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945096 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945096 #b00000000000000000000000000000000))))))

(assert (=> d!151405 (= (toIndex!0 (select (store (arr!46427 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619513 (bvlshr lt!619513 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406693 d!151405))

(declare-fun d!151407 () Bool)

(declare-fun res!945112 () Bool)

(declare-fun e!796321 () Bool)

(assert (=> d!151407 (=> res!945112 e!796321)))

(assert (=> d!151407 (= res!945112 (bvsge j!112 (size!46978 a!2901)))))

(assert (=> d!151407 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796321)))

(declare-fun b!1406915 () Bool)

(declare-fun e!796322 () Bool)

(assert (=> b!1406915 (= e!796321 e!796322)))

(declare-fun c!130368 () Bool)

(assert (=> b!1406915 (= c!130368 (validKeyInArray!0 (select (arr!46427 a!2901) j!112)))))

(declare-fun b!1406916 () Bool)

(declare-fun e!796320 () Bool)

(assert (=> b!1406916 (= e!796322 e!796320)))

(declare-fun lt!619515 () (_ BitVec 64))

(assert (=> b!1406916 (= lt!619515 (select (arr!46427 a!2901) j!112))))

(declare-fun lt!619516 () Unit!47444)

(assert (=> b!1406916 (= lt!619516 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619515 j!112))))

(assert (=> b!1406916 (arrayContainsKey!0 a!2901 lt!619515 #b00000000000000000000000000000000)))

(declare-fun lt!619514 () Unit!47444)

(assert (=> b!1406916 (= lt!619514 lt!619516)))

(declare-fun res!945111 () Bool)

(assert (=> b!1406916 (= res!945111 (= (seekEntryOrOpen!0 (select (arr!46427 a!2901) j!112) a!2901 mask!2840) (Found!10760 j!112)))))

(assert (=> b!1406916 (=> (not res!945111) (not e!796320))))

(declare-fun b!1406917 () Bool)

(declare-fun call!66961 () Bool)

(assert (=> b!1406917 (= e!796320 call!66961)))

(declare-fun bm!66958 () Bool)

(assert (=> bm!66958 (= call!66961 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1406918 () Bool)

(assert (=> b!1406918 (= e!796322 call!66961)))

(assert (= (and d!151407 (not res!945112)) b!1406915))

(assert (= (and b!1406915 c!130368) b!1406916))

(assert (= (and b!1406915 (not c!130368)) b!1406918))

(assert (= (and b!1406916 res!945111) b!1406917))

(assert (= (or b!1406917 b!1406918) bm!66958))

(assert (=> b!1406915 m!1296029))

(assert (=> b!1406915 m!1296029))

(assert (=> b!1406915 m!1296043))

(assert (=> b!1406916 m!1296029))

(declare-fun m!1296175 () Bool)

(assert (=> b!1406916 m!1296175))

(declare-fun m!1296177 () Bool)

(assert (=> b!1406916 m!1296177))

(assert (=> b!1406916 m!1296029))

(assert (=> b!1406916 m!1296031))

(declare-fun m!1296179 () Bool)

(assert (=> bm!66958 m!1296179))

(assert (=> b!1406688 d!151407))

(declare-fun d!151415 () Bool)

(assert (=> d!151415 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619523 () Unit!47444)

(declare-fun choose!38 (array!96167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47444)

(assert (=> d!151415 (= lt!619523 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151415 (validMask!0 mask!2840)))

(assert (=> d!151415 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619523)))

(declare-fun bs!41003 () Bool)

(assert (= bs!41003 d!151415))

(assert (=> bs!41003 m!1296041))

(declare-fun m!1296181 () Bool)

(assert (=> bs!41003 m!1296181))

(assert (=> bs!41003 m!1296051))

(assert (=> b!1406688 d!151415))

(declare-fun b!1406919 () Bool)

(declare-fun e!796323 () Bool)

(declare-fun e!796326 () Bool)

(assert (=> b!1406919 (= e!796323 e!796326)))

(declare-fun res!945114 () Bool)

(declare-fun lt!619527 () SeekEntryResult!10760)

(assert (=> b!1406919 (= res!945114 (and ((_ is Intermediate!10760) lt!619527) (not (undefined!11572 lt!619527)) (bvslt (x!127018 lt!619527) #b01111111111111111111111111111110) (bvsge (x!127018 lt!619527) #b00000000000000000000000000000000) (bvsge (x!127018 lt!619527) #b00000000000000000000000000000000)))))

(assert (=> b!1406919 (=> (not res!945114) (not e!796326))))

(declare-fun d!151417 () Bool)

(assert (=> d!151417 e!796323))

(declare-fun c!130370 () Bool)

(assert (=> d!151417 (= c!130370 (and ((_ is Intermediate!10760) lt!619527) (undefined!11572 lt!619527)))))

(declare-fun e!796324 () SeekEntryResult!10760)

(assert (=> d!151417 (= lt!619527 e!796324)))

(declare-fun c!130369 () Bool)

(assert (=> d!151417 (= c!130369 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619526 () (_ BitVec 64))

(assert (=> d!151417 (= lt!619526 (select (arr!46427 a!2901) (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840)))))

(assert (=> d!151417 (validMask!0 mask!2840)))

(assert (=> d!151417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) (select (arr!46427 a!2901) j!112) a!2901 mask!2840) lt!619527)))

(declare-fun b!1406920 () Bool)

(assert (=> b!1406920 (= e!796323 (bvsge (x!127018 lt!619527) #b01111111111111111111111111111110))))

(declare-fun b!1406921 () Bool)

(assert (=> b!1406921 (and (bvsge (index!45418 lt!619527) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619527) (size!46978 a!2901)))))

(declare-fun res!945116 () Bool)

(assert (=> b!1406921 (= res!945116 (= (select (arr!46427 a!2901) (index!45418 lt!619527)) (select (arr!46427 a!2901) j!112)))))

(declare-fun e!796327 () Bool)

(assert (=> b!1406921 (=> res!945116 e!796327)))

(assert (=> b!1406921 (= e!796326 e!796327)))

(declare-fun b!1406922 () Bool)

(assert (=> b!1406922 (= e!796324 (Intermediate!10760 true (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406923 () Bool)

(declare-fun e!796325 () SeekEntryResult!10760)

(assert (=> b!1406923 (= e!796324 e!796325)))

(declare-fun c!130371 () Bool)

(assert (=> b!1406923 (= c!130371 (or (= lt!619526 (select (arr!46427 a!2901) j!112)) (= (bvadd lt!619526 lt!619526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1406924 () Bool)

(assert (=> b!1406924 (= e!796325 (Intermediate!10760 false (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406925 () Bool)

(assert (=> b!1406925 (and (bvsge (index!45418 lt!619527) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619527) (size!46978 a!2901)))))

(assert (=> b!1406925 (= e!796327 (= (select (arr!46427 a!2901) (index!45418 lt!619527)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1406926 () Bool)

(assert (=> b!1406926 (and (bvsge (index!45418 lt!619527) #b00000000000000000000000000000000) (bvslt (index!45418 lt!619527) (size!46978 a!2901)))))

(declare-fun res!945115 () Bool)

(assert (=> b!1406926 (= res!945115 (= (select (arr!46427 a!2901) (index!45418 lt!619527)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406926 (=> res!945115 e!796327)))

(declare-fun b!1406927 () Bool)

(assert (=> b!1406927 (= e!796325 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46427 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151417 c!130369) b!1406922))

(assert (= (and d!151417 (not c!130369)) b!1406923))

(assert (= (and b!1406923 c!130371) b!1406924))

(assert (= (and b!1406923 (not c!130371)) b!1406927))

(assert (= (and d!151417 c!130370) b!1406920))

(assert (= (and d!151417 (not c!130370)) b!1406919))

(assert (= (and b!1406919 res!945114) b!1406921))

(assert (= (and b!1406921 (not res!945116)) b!1406926))

(assert (= (and b!1406926 (not res!945115)) b!1406925))

(assert (=> b!1406927 m!1296035))

(declare-fun m!1296183 () Bool)

(assert (=> b!1406927 m!1296183))

(assert (=> b!1406927 m!1296183))

(assert (=> b!1406927 m!1296029))

(declare-fun m!1296185 () Bool)

(assert (=> b!1406927 m!1296185))

(declare-fun m!1296187 () Bool)

(assert (=> b!1406925 m!1296187))

(assert (=> b!1406921 m!1296187))

(assert (=> d!151417 m!1296035))

(declare-fun m!1296189 () Bool)

(assert (=> d!151417 m!1296189))

(assert (=> d!151417 m!1296051))

(assert (=> b!1406926 m!1296187))

(assert (=> b!1406688 d!151417))

(declare-fun d!151421 () Bool)

(declare-fun lt!619535 () (_ BitVec 32))

(declare-fun lt!619534 () (_ BitVec 32))

(assert (=> d!151421 (= lt!619535 (bvmul (bvxor lt!619534 (bvlshr lt!619534 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151421 (= lt!619534 ((_ extract 31 0) (bvand (bvxor (select (arr!46427 a!2901) j!112) (bvlshr (select (arr!46427 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151421 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945096 (let ((h!34379 ((_ extract 31 0) (bvand (bvxor (select (arr!46427 a!2901) j!112) (bvlshr (select (arr!46427 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127024 (bvmul (bvxor h!34379 (bvlshr h!34379 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127024 (bvlshr x!127024 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945096 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945096 #b00000000000000000000000000000000))))))

(assert (=> d!151421 (= (toIndex!0 (select (arr!46427 a!2901) j!112) mask!2840) (bvand (bvxor lt!619535 (bvlshr lt!619535 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406688 d!151421))

(check-sat (not b!1406734) (not bm!66951) (not d!151367) (not bm!66948) (not d!151417) (not b!1406916) (not b!1406872) (not bm!66958) (not b!1406915) (not b!1406769) (not b!1406792) (not b!1406733) (not d!151395) (not b!1406736) (not d!151415) (not b!1406927) (not b!1406791))
(check-sat)
