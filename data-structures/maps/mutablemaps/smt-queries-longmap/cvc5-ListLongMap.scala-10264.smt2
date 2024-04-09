; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120730 () Bool)

(assert start!120730)

(declare-fun b!1404655 () Bool)

(declare-fun res!943129 () Bool)

(declare-fun e!795194 () Bool)

(assert (=> b!1404655 (=> (not res!943129) (not e!795194))))

(declare-datatypes ((array!96006 0))(
  ( (array!96007 (arr!46348 (Array (_ BitVec 32) (_ BitVec 64))) (size!46899 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96006)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404655 (= res!943129 (validKeyInArray!0 (select (arr!46348 a!2901) i!1037)))))

(declare-fun b!1404656 () Bool)

(declare-fun res!943133 () Bool)

(assert (=> b!1404656 (=> (not res!943133) (not e!795194))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404656 (= res!943133 (and (= (size!46899 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46899 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46899 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404657 () Bool)

(declare-fun res!943130 () Bool)

(assert (=> b!1404657 (=> (not res!943130) (not e!795194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96006 (_ BitVec 32)) Bool)

(assert (=> b!1404657 (= res!943130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404658 () Bool)

(declare-fun res!943128 () Bool)

(assert (=> b!1404658 (=> (not res!943128) (not e!795194))))

(declare-datatypes ((List!33047 0))(
  ( (Nil!33044) (Cons!33043 (h!34294 (_ BitVec 64)) (t!47748 List!33047)) )
))
(declare-fun arrayNoDuplicates!0 (array!96006 (_ BitVec 32) List!33047) Bool)

(assert (=> b!1404658 (= res!943128 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33044))))

(declare-fun res!943134 () Bool)

(assert (=> start!120730 (=> (not res!943134) (not e!795194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120730 (= res!943134 (validMask!0 mask!2840))))

(assert (=> start!120730 e!795194))

(assert (=> start!120730 true))

(declare-fun array_inv!35293 (array!96006) Bool)

(assert (=> start!120730 (array_inv!35293 a!2901)))

(declare-fun b!1404659 () Bool)

(declare-fun e!795192 () Bool)

(declare-datatypes ((SeekEntryResult!10681 0))(
  ( (MissingZero!10681 (index!45100 (_ BitVec 32))) (Found!10681 (index!45101 (_ BitVec 32))) (Intermediate!10681 (undefined!11493 Bool) (index!45102 (_ BitVec 32)) (x!126725 (_ BitVec 32))) (Undefined!10681) (MissingVacant!10681 (index!45103 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96006 (_ BitVec 32)) SeekEntryResult!10681)

(assert (=> b!1404659 (= e!795192 (= (seekEntryOrOpen!0 (select (arr!46348 a!2901) j!112) a!2901 mask!2840) (Found!10681 j!112)))))

(declare-fun b!1404660 () Bool)

(declare-fun res!943131 () Bool)

(assert (=> b!1404660 (=> (not res!943131) (not e!795194))))

(assert (=> b!1404660 (= res!943131 (validKeyInArray!0 (select (arr!46348 a!2901) j!112)))))

(declare-fun b!1404661 () Bool)

(declare-fun lt!618723 () SeekEntryResult!10681)

(assert (=> b!1404661 (= e!795194 (not (or (not (is-Intermediate!10681 lt!618723)) (not (undefined!11493 lt!618723)))))))

(assert (=> b!1404661 e!795192))

(declare-fun res!943132 () Bool)

(assert (=> b!1404661 (=> (not res!943132) (not e!795192))))

(assert (=> b!1404661 (= res!943132 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47286 0))(
  ( (Unit!47287) )
))
(declare-fun lt!618724 () Unit!47286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47286)

(assert (=> b!1404661 (= lt!618724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96006 (_ BitVec 32)) SeekEntryResult!10681)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404661 (= lt!618723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) (select (arr!46348 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120730 res!943134) b!1404656))

(assert (= (and b!1404656 res!943133) b!1404655))

(assert (= (and b!1404655 res!943129) b!1404660))

(assert (= (and b!1404660 res!943131) b!1404657))

(assert (= (and b!1404657 res!943130) b!1404658))

(assert (= (and b!1404658 res!943128) b!1404661))

(assert (= (and b!1404661 res!943132) b!1404659))

(declare-fun m!1293485 () Bool)

(assert (=> b!1404661 m!1293485))

(declare-fun m!1293487 () Bool)

(assert (=> b!1404661 m!1293487))

(assert (=> b!1404661 m!1293485))

(declare-fun m!1293489 () Bool)

(assert (=> b!1404661 m!1293489))

(assert (=> b!1404661 m!1293487))

(assert (=> b!1404661 m!1293485))

(declare-fun m!1293491 () Bool)

(assert (=> b!1404661 m!1293491))

(declare-fun m!1293493 () Bool)

(assert (=> b!1404661 m!1293493))

(declare-fun m!1293495 () Bool)

(assert (=> b!1404657 m!1293495))

(declare-fun m!1293497 () Bool)

(assert (=> b!1404655 m!1293497))

(assert (=> b!1404655 m!1293497))

(declare-fun m!1293499 () Bool)

(assert (=> b!1404655 m!1293499))

(assert (=> b!1404660 m!1293485))

(assert (=> b!1404660 m!1293485))

(declare-fun m!1293501 () Bool)

(assert (=> b!1404660 m!1293501))

(declare-fun m!1293503 () Bool)

(assert (=> start!120730 m!1293503))

(declare-fun m!1293505 () Bool)

(assert (=> start!120730 m!1293505))

(assert (=> b!1404659 m!1293485))

(assert (=> b!1404659 m!1293485))

(declare-fun m!1293507 () Bool)

(assert (=> b!1404659 m!1293507))

(declare-fun m!1293509 () Bool)

(assert (=> b!1404658 m!1293509))

(push 1)

(assert (not b!1404660))

(assert (not b!1404655))

(assert (not b!1404661))

(assert (not b!1404657))

(assert (not b!1404658))

(assert (not start!120730))

(assert (not b!1404659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1404726 () Bool)

(declare-fun e!795232 () Bool)

(declare-fun contains!9805 (List!33047 (_ BitVec 64)) Bool)

(assert (=> b!1404726 (= e!795232 (contains!9805 Nil!33044 (select (arr!46348 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151251 () Bool)

(declare-fun res!943191 () Bool)

(declare-fun e!795230 () Bool)

(assert (=> d!151251 (=> res!943191 e!795230)))

(assert (=> d!151251 (= res!943191 (bvsge #b00000000000000000000000000000000 (size!46899 a!2901)))))

(assert (=> d!151251 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33044) e!795230)))

(declare-fun b!1404727 () Bool)

(declare-fun e!795231 () Bool)

(declare-fun call!66933 () Bool)

(assert (=> b!1404727 (= e!795231 call!66933)))

(declare-fun b!1404728 () Bool)

(assert (=> b!1404728 (= e!795231 call!66933)))

(declare-fun b!1404729 () Bool)

(declare-fun e!795233 () Bool)

(assert (=> b!1404729 (= e!795233 e!795231)))

(declare-fun c!130232 () Bool)

(assert (=> b!1404729 (= c!130232 (validKeyInArray!0 (select (arr!46348 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404730 () Bool)

(assert (=> b!1404730 (= e!795230 e!795233)))

(declare-fun res!943190 () Bool)

(assert (=> b!1404730 (=> (not res!943190) (not e!795233))))

(assert (=> b!1404730 (= res!943190 (not e!795232))))

(declare-fun res!943189 () Bool)

(assert (=> b!1404730 (=> (not res!943189) (not e!795232))))

(assert (=> b!1404730 (= res!943189 (validKeyInArray!0 (select (arr!46348 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66930 () Bool)

(assert (=> bm!66930 (= call!66933 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130232 (Cons!33043 (select (arr!46348 a!2901) #b00000000000000000000000000000000) Nil!33044) Nil!33044)))))

(assert (= (and d!151251 (not res!943191)) b!1404730))

(assert (= (and b!1404730 res!943189) b!1404726))

(assert (= (and b!1404730 res!943190) b!1404729))

(assert (= (and b!1404729 c!130232) b!1404728))

(assert (= (and b!1404729 (not c!130232)) b!1404727))

(assert (= (or b!1404728 b!1404727) bm!66930))

(declare-fun m!1293569 () Bool)

(assert (=> b!1404726 m!1293569))

(assert (=> b!1404726 m!1293569))

(declare-fun m!1293571 () Bool)

(assert (=> b!1404726 m!1293571))

(assert (=> b!1404729 m!1293569))

(assert (=> b!1404729 m!1293569))

(declare-fun m!1293573 () Bool)

(assert (=> b!1404729 m!1293573))

(assert (=> b!1404730 m!1293569))

(assert (=> b!1404730 m!1293569))

(assert (=> b!1404730 m!1293573))

(assert (=> bm!66930 m!1293569))

(declare-fun m!1293575 () Bool)

(assert (=> bm!66930 m!1293575))

(assert (=> b!1404658 d!151251))

(declare-fun b!1404739 () Bool)

(declare-fun e!795241 () Bool)

(declare-fun e!795242 () Bool)

(assert (=> b!1404739 (= e!795241 e!795242)))

(declare-fun lt!618757 () (_ BitVec 64))

(assert (=> b!1404739 (= lt!618757 (select (arr!46348 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618755 () Unit!47286)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96006 (_ BitVec 64) (_ BitVec 32)) Unit!47286)

(assert (=> b!1404739 (= lt!618755 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618757 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404739 (arrayContainsKey!0 a!2901 lt!618757 #b00000000000000000000000000000000)))

(declare-fun lt!618756 () Unit!47286)

(assert (=> b!1404739 (= lt!618756 lt!618755)))

(declare-fun res!943196 () Bool)

(assert (=> b!1404739 (= res!943196 (= (seekEntryOrOpen!0 (select (arr!46348 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10681 #b00000000000000000000000000000000)))))

(assert (=> b!1404739 (=> (not res!943196) (not e!795242))))

(declare-fun b!1404741 () Bool)

(declare-fun e!795240 () Bool)

(assert (=> b!1404741 (= e!795240 e!795241)))

(declare-fun c!130235 () Bool)

(assert (=> b!1404741 (= c!130235 (validKeyInArray!0 (select (arr!46348 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404742 () Bool)

(declare-fun call!66936 () Bool)

(assert (=> b!1404742 (= e!795241 call!66936)))

(declare-fun bm!66933 () Bool)

(assert (=> bm!66933 (= call!66936 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404740 () Bool)

(assert (=> b!1404740 (= e!795242 call!66936)))

(declare-fun d!151259 () Bool)

(declare-fun res!943197 () Bool)

(assert (=> d!151259 (=> res!943197 e!795240)))

(assert (=> d!151259 (= res!943197 (bvsge #b00000000000000000000000000000000 (size!46899 a!2901)))))

(assert (=> d!151259 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795240)))

(assert (= (and d!151259 (not res!943197)) b!1404741))

(assert (= (and b!1404741 c!130235) b!1404739))

(assert (= (and b!1404741 (not c!130235)) b!1404742))

(assert (= (and b!1404739 res!943196) b!1404740))

(assert (= (or b!1404740 b!1404742) bm!66933))

(assert (=> b!1404739 m!1293569))

(declare-fun m!1293579 () Bool)

(assert (=> b!1404739 m!1293579))

(declare-fun m!1293581 () Bool)

(assert (=> b!1404739 m!1293581))

(assert (=> b!1404739 m!1293569))

(declare-fun m!1293583 () Bool)

(assert (=> b!1404739 m!1293583))

(assert (=> b!1404741 m!1293569))

(assert (=> b!1404741 m!1293569))

(assert (=> b!1404741 m!1293573))

(declare-fun m!1293585 () Bool)

(assert (=> bm!66933 m!1293585))

(assert (=> b!1404657 d!151259))

(declare-fun d!151263 () Bool)

(assert (=> d!151263 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120730 d!151263))

(declare-fun d!151267 () Bool)

(assert (=> d!151267 (= (array_inv!35293 a!2901) (bvsge (size!46899 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120730 d!151267))

(declare-fun b!1404827 () Bool)

(declare-fun e!795295 () SeekEntryResult!10681)

(declare-fun lt!618797 () SeekEntryResult!10681)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96006 (_ BitVec 32)) SeekEntryResult!10681)

(assert (=> b!1404827 (= e!795295 (seekKeyOrZeroReturnVacant!0 (x!126725 lt!618797) (index!45102 lt!618797) (index!45102 lt!618797) (select (arr!46348 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404829 () Bool)

(declare-fun e!795294 () SeekEntryResult!10681)

(assert (=> b!1404829 (= e!795294 Undefined!10681)))

(declare-fun b!1404830 () Bool)

(declare-fun c!130268 () Bool)

(declare-fun lt!618799 () (_ BitVec 64))

(assert (=> b!1404830 (= c!130268 (= lt!618799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!795296 () SeekEntryResult!10681)

(assert (=> b!1404830 (= e!795296 e!795295)))

(declare-fun b!1404831 () Bool)

(assert (=> b!1404831 (= e!795294 e!795296)))

(assert (=> b!1404831 (= lt!618799 (select (arr!46348 a!2901) (index!45102 lt!618797)))))

(declare-fun c!130266 () Bool)

(assert (=> b!1404831 (= c!130266 (= lt!618799 (select (arr!46348 a!2901) j!112)))))

(declare-fun b!1404832 () Bool)

(assert (=> b!1404832 (= e!795296 (Found!10681 (index!45102 lt!618797)))))

(declare-fun b!1404828 () Bool)

(assert (=> b!1404828 (= e!795295 (MissingZero!10681 (index!45102 lt!618797)))))

(declare-fun d!151269 () Bool)

(declare-fun lt!618798 () SeekEntryResult!10681)

(assert (=> d!151269 (and (or (is-Undefined!10681 lt!618798) (not (is-Found!10681 lt!618798)) (and (bvsge (index!45101 lt!618798) #b00000000000000000000000000000000) (bvslt (index!45101 lt!618798) (size!46899 a!2901)))) (or (is-Undefined!10681 lt!618798) (is-Found!10681 lt!618798) (not (is-MissingZero!10681 lt!618798)) (and (bvsge (index!45100 lt!618798) #b00000000000000000000000000000000) (bvslt (index!45100 lt!618798) (size!46899 a!2901)))) (or (is-Undefined!10681 lt!618798) (is-Found!10681 lt!618798) (is-MissingZero!10681 lt!618798) (not (is-MissingVacant!10681 lt!618798)) (and (bvsge (index!45103 lt!618798) #b00000000000000000000000000000000) (bvslt (index!45103 lt!618798) (size!46899 a!2901)))) (or (is-Undefined!10681 lt!618798) (ite (is-Found!10681 lt!618798) (= (select (arr!46348 a!2901) (index!45101 lt!618798)) (select (arr!46348 a!2901) j!112)) (ite (is-MissingZero!10681 lt!618798) (= (select (arr!46348 a!2901) (index!45100 lt!618798)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10681 lt!618798) (= (select (arr!46348 a!2901) (index!45103 lt!618798)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151269 (= lt!618798 e!795294)))

(declare-fun c!130267 () Bool)

(assert (=> d!151269 (= c!130267 (and (is-Intermediate!10681 lt!618797) (undefined!11493 lt!618797)))))

(assert (=> d!151269 (= lt!618797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) (select (arr!46348 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151269 (validMask!0 mask!2840)))

(assert (=> d!151269 (= (seekEntryOrOpen!0 (select (arr!46348 a!2901) j!112) a!2901 mask!2840) lt!618798)))

(assert (= (and d!151269 c!130267) b!1404829))

(assert (= (and d!151269 (not c!130267)) b!1404831))

(assert (= (and b!1404831 c!130266) b!1404832))

(assert (= (and b!1404831 (not c!130266)) b!1404830))

(assert (= (and b!1404830 c!130268) b!1404828))

(assert (= (and b!1404830 (not c!130268)) b!1404827))

(assert (=> b!1404827 m!1293485))

(declare-fun m!1293621 () Bool)

(assert (=> b!1404827 m!1293621))

(declare-fun m!1293623 () Bool)

(assert (=> b!1404831 m!1293623))

(assert (=> d!151269 m!1293503))

(declare-fun m!1293625 () Bool)

(assert (=> d!151269 m!1293625))

(declare-fun m!1293627 () Bool)

(assert (=> d!151269 m!1293627))

(declare-fun m!1293629 () Bool)

(assert (=> d!151269 m!1293629))

(assert (=> d!151269 m!1293485))

(assert (=> d!151269 m!1293487))

(assert (=> d!151269 m!1293487))

(assert (=> d!151269 m!1293485))

(assert (=> d!151269 m!1293491))

(assert (=> b!1404659 d!151269))

(declare-fun d!151281 () Bool)

(assert (=> d!151281 (= (validKeyInArray!0 (select (arr!46348 a!2901) i!1037)) (and (not (= (select (arr!46348 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46348 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404655 d!151281))

(declare-fun d!151283 () Bool)

(assert (=> d!151283 (= (validKeyInArray!0 (select (arr!46348 a!2901) j!112)) (and (not (= (select (arr!46348 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46348 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404660 d!151283))

(declare-fun b!1404833 () Bool)

(declare-fun e!795298 () Bool)

(declare-fun e!795299 () Bool)

(assert (=> b!1404833 (= e!795298 e!795299)))

(declare-fun lt!618802 () (_ BitVec 64))

(assert (=> b!1404833 (= lt!618802 (select (arr!46348 a!2901) j!112))))

(declare-fun lt!618800 () Unit!47286)

(assert (=> b!1404833 (= lt!618800 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618802 j!112))))

(assert (=> b!1404833 (arrayContainsKey!0 a!2901 lt!618802 #b00000000000000000000000000000000)))

(declare-fun lt!618801 () Unit!47286)

(assert (=> b!1404833 (= lt!618801 lt!618800)))

(declare-fun res!943223 () Bool)

(assert (=> b!1404833 (= res!943223 (= (seekEntryOrOpen!0 (select (arr!46348 a!2901) j!112) a!2901 mask!2840) (Found!10681 j!112)))))

(assert (=> b!1404833 (=> (not res!943223) (not e!795299))))

(declare-fun b!1404835 () Bool)

(declare-fun e!795297 () Bool)

(assert (=> b!1404835 (= e!795297 e!795298)))

(declare-fun c!130269 () Bool)

(assert (=> b!1404835 (= c!130269 (validKeyInArray!0 (select (arr!46348 a!2901) j!112)))))

(declare-fun b!1404836 () Bool)

(declare-fun call!66943 () Bool)

(assert (=> b!1404836 (= e!795298 call!66943)))

(declare-fun bm!66940 () Bool)

(assert (=> bm!66940 (= call!66943 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404834 () Bool)

(assert (=> b!1404834 (= e!795299 call!66943)))

(declare-fun d!151285 () Bool)

(declare-fun res!943224 () Bool)

(assert (=> d!151285 (=> res!943224 e!795297)))

(assert (=> d!151285 (= res!943224 (bvsge j!112 (size!46899 a!2901)))))

(assert (=> d!151285 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!795297)))

(assert (= (and d!151285 (not res!943224)) b!1404835))

(assert (= (and b!1404835 c!130269) b!1404833))

(assert (= (and b!1404835 (not c!130269)) b!1404836))

(assert (= (and b!1404833 res!943223) b!1404834))

(assert (= (or b!1404834 b!1404836) bm!66940))

(assert (=> b!1404833 m!1293485))

(declare-fun m!1293631 () Bool)

(assert (=> b!1404833 m!1293631))

(declare-fun m!1293633 () Bool)

(assert (=> b!1404833 m!1293633))

(assert (=> b!1404833 m!1293485))

(assert (=> b!1404833 m!1293507))

(assert (=> b!1404835 m!1293485))

(assert (=> b!1404835 m!1293485))

(assert (=> b!1404835 m!1293501))

(declare-fun m!1293635 () Bool)

(assert (=> bm!66940 m!1293635))

(assert (=> b!1404661 d!151285))

(declare-fun d!151287 () Bool)

(assert (=> d!151287 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618811 () Unit!47286)

(declare-fun choose!38 (array!96006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47286)

(assert (=> d!151287 (= lt!618811 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151287 (validMask!0 mask!2840)))

(assert (=> d!151287 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618811)))

(declare-fun bs!40924 () Bool)

(assert (= bs!40924 d!151287))

(assert (=> bs!40924 m!1293493))

(declare-fun m!1293637 () Bool)

(assert (=> bs!40924 m!1293637))

(assert (=> bs!40924 m!1293503))

(assert (=> b!1404661 d!151287))

(declare-fun d!151289 () Bool)

(declare-fun e!795348 () Bool)

(assert (=> d!151289 e!795348))

(declare-fun c!130300 () Bool)

(declare-fun lt!618837 () SeekEntryResult!10681)

(assert (=> d!151289 (= c!130300 (and (is-Intermediate!10681 lt!618837) (undefined!11493 lt!618837)))))

(declare-fun e!795351 () SeekEntryResult!10681)

(assert (=> d!151289 (= lt!618837 e!795351)))

(declare-fun c!130298 () Bool)

(assert (=> d!151289 (= c!130298 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!618838 () (_ BitVec 64))

(assert (=> d!151289 (= lt!618838 (select (arr!46348 a!2901) (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840)))))

(assert (=> d!151289 (validMask!0 mask!2840)))

(assert (=> d!151289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) (select (arr!46348 a!2901) j!112) a!2901 mask!2840) lt!618837)))

(declare-fun b!1404918 () Bool)

(declare-fun e!795350 () SeekEntryResult!10681)

(assert (=> b!1404918 (= e!795350 (Intermediate!10681 false (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404919 () Bool)

(assert (=> b!1404919 (= e!795351 e!795350)))

(declare-fun c!130299 () Bool)

(assert (=> b!1404919 (= c!130299 (or (= lt!618838 (select (arr!46348 a!2901) j!112)) (= (bvadd lt!618838 lt!618838) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1404920 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404920 (= e!795350 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46348 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404921 () Bool)

(assert (=> b!1404921 (= e!795348 (bvsge (x!126725 lt!618837) #b01111111111111111111111111111110))))

(declare-fun b!1404922 () Bool)

(assert (=> b!1404922 (= e!795351 (Intermediate!10681 true (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404923 () Bool)

(assert (=> b!1404923 (and (bvsge (index!45102 lt!618837) #b00000000000000000000000000000000) (bvslt (index!45102 lt!618837) (size!46899 a!2901)))))

(declare-fun res!943251 () Bool)

(assert (=> b!1404923 (= res!943251 (= (select (arr!46348 a!2901) (index!45102 lt!618837)) (select (arr!46348 a!2901) j!112)))))

(declare-fun e!795352 () Bool)

(assert (=> b!1404923 (=> res!943251 e!795352)))

(declare-fun e!795349 () Bool)

(assert (=> b!1404923 (= e!795349 e!795352)))

(declare-fun b!1404924 () Bool)

(assert (=> b!1404924 (= e!795348 e!795349)))

(declare-fun res!943253 () Bool)

(assert (=> b!1404924 (= res!943253 (and (is-Intermediate!10681 lt!618837) (not (undefined!11493 lt!618837)) (bvslt (x!126725 lt!618837) #b01111111111111111111111111111110) (bvsge (x!126725 lt!618837) #b00000000000000000000000000000000) (bvsge (x!126725 lt!618837) #b00000000000000000000000000000000)))))

(assert (=> b!1404924 (=> (not res!943253) (not e!795349))))

(declare-fun b!1404925 () Bool)

(assert (=> b!1404925 (and (bvsge (index!45102 lt!618837) #b00000000000000000000000000000000) (bvslt (index!45102 lt!618837) (size!46899 a!2901)))))

(assert (=> b!1404925 (= e!795352 (= (select (arr!46348 a!2901) (index!45102 lt!618837)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1404926 () Bool)

(assert (=> b!1404926 (and (bvsge (index!45102 lt!618837) #b00000000000000000000000000000000) (bvslt (index!45102 lt!618837) (size!46899 a!2901)))))

(declare-fun res!943252 () Bool)

(assert (=> b!1404926 (= res!943252 (= (select (arr!46348 a!2901) (index!45102 lt!618837)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404926 (=> res!943252 e!795352)))

(assert (= (and d!151289 c!130298) b!1404922))

(assert (= (and d!151289 (not c!130298)) b!1404919))

(assert (= (and b!1404919 c!130299) b!1404918))

(assert (= (and b!1404919 (not c!130299)) b!1404920))

(assert (= (and d!151289 c!130300) b!1404921))

(assert (= (and d!151289 (not c!130300)) b!1404924))

(assert (= (and b!1404924 res!943253) b!1404923))

(assert (= (and b!1404923 (not res!943251)) b!1404926))

(assert (= (and b!1404926 (not res!943252)) b!1404925))

(assert (=> d!151289 m!1293487))

(declare-fun m!1293679 () Bool)

(assert (=> d!151289 m!1293679))

(assert (=> d!151289 m!1293503))

(declare-fun m!1293683 () Bool)

(assert (=> b!1404923 m!1293683))

(assert (=> b!1404926 m!1293683))

(assert (=> b!1404920 m!1293487))

(declare-fun m!1293685 () Bool)

(assert (=> b!1404920 m!1293685))

(assert (=> b!1404920 m!1293685))

(assert (=> b!1404920 m!1293485))

(declare-fun m!1293687 () Bool)

(assert (=> b!1404920 m!1293687))

(assert (=> b!1404925 m!1293683))

(assert (=> b!1404661 d!151289))

(declare-fun d!151307 () Bool)

(declare-fun lt!618844 () (_ BitVec 32))

(declare-fun lt!618843 () (_ BitVec 32))

(assert (=> d!151307 (= lt!618844 (bvmul (bvxor lt!618843 (bvlshr lt!618843 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151307 (= lt!618843 ((_ extract 31 0) (bvand (bvxor (select (arr!46348 a!2901) j!112) (bvlshr (select (arr!46348 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151307 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943257 (let ((h!34299 ((_ extract 31 0) (bvand (bvxor (select (arr!46348 a!2901) j!112) (bvlshr (select (arr!46348 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126733 (bvmul (bvxor h!34299 (bvlshr h!34299 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126733 (bvlshr x!126733 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943257 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943257 #b00000000000000000000000000000000))))))

(assert (=> d!151307 (= (toIndex!0 (select (arr!46348 a!2901) j!112) mask!2840) (bvand (bvxor lt!618844 (bvlshr lt!618844 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1404661 d!151307))

(push 1)

(assert (not d!151269))

(assert (not b!1404920))

