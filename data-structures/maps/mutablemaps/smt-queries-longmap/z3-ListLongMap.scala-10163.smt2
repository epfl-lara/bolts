; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119784 () Bool)

(assert start!119784)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!789724 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1394876 () Bool)

(declare-datatypes ((array!95384 0))(
  ( (array!95385 (arr!46046 (Array (_ BitVec 32) (_ BitVec 64))) (size!46597 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95384)

(declare-datatypes ((SeekEntryResult!10385 0))(
  ( (MissingZero!10385 (index!43910 (_ BitVec 32))) (Found!10385 (index!43911 (_ BitVec 32))) (Intermediate!10385 (undefined!11197 Bool) (index!43912 (_ BitVec 32)) (x!125576 (_ BitVec 32))) (Undefined!10385) (MissingVacant!10385 (index!43913 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95384 (_ BitVec 32)) SeekEntryResult!10385)

(assert (=> b!1394876 (= e!789724 (= (seekEntryOrOpen!0 (select (arr!46046 a!2901) j!112) a!2901 mask!2840) (Found!10385 j!112)))))

(declare-fun b!1394878 () Bool)

(declare-fun e!789723 () Bool)

(assert (=> b!1394878 (= e!789723 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1394879 () Bool)

(declare-fun res!934395 () Bool)

(declare-fun e!789722 () Bool)

(assert (=> b!1394879 (=> (not res!934395) (not e!789722))))

(declare-datatypes ((List!32745 0))(
  ( (Nil!32742) (Cons!32741 (h!33974 (_ BitVec 64)) (t!47446 List!32745)) )
))
(declare-fun arrayNoDuplicates!0 (array!95384 (_ BitVec 32) List!32745) Bool)

(assert (=> b!1394879 (= res!934395 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32742))))

(declare-fun b!1394880 () Bool)

(declare-fun res!934396 () Bool)

(assert (=> b!1394880 (=> res!934396 e!789723)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612738 () SeekEntryResult!10385)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95384 (_ BitVec 32)) SeekEntryResult!10385)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394880 (= res!934396 (= lt!612738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)) mask!2840)))))

(declare-fun b!1394881 () Bool)

(declare-fun res!934393 () Bool)

(assert (=> b!1394881 (=> (not res!934393) (not e!789722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95384 (_ BitVec 32)) Bool)

(assert (=> b!1394881 (= res!934393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394882 () Bool)

(declare-fun res!934398 () Bool)

(assert (=> b!1394882 (=> (not res!934398) (not e!789722))))

(assert (=> b!1394882 (= res!934398 (and (= (size!46597 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46597 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46597 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394883 () Bool)

(assert (=> b!1394883 (= e!789722 (not e!789723))))

(declare-fun res!934399 () Bool)

(assert (=> b!1394883 (=> res!934399 e!789723)))

(get-info :version)

(assert (=> b!1394883 (= res!934399 (or (not ((_ is Intermediate!10385) lt!612738)) (undefined!11197 lt!612738)))))

(assert (=> b!1394883 e!789724))

(declare-fun res!934400 () Bool)

(assert (=> b!1394883 (=> (not res!934400) (not e!789724))))

(assert (=> b!1394883 (= res!934400 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46724 0))(
  ( (Unit!46725) )
))
(declare-fun lt!612739 () Unit!46724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46724)

(assert (=> b!1394883 (= lt!612739 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394883 (= lt!612738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) (select (arr!46046 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394884 () Bool)

(declare-fun res!934394 () Bool)

(assert (=> b!1394884 (=> (not res!934394) (not e!789722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394884 (= res!934394 (validKeyInArray!0 (select (arr!46046 a!2901) j!112)))))

(declare-fun res!934401 () Bool)

(assert (=> start!119784 (=> (not res!934401) (not e!789722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119784 (= res!934401 (validMask!0 mask!2840))))

(assert (=> start!119784 e!789722))

(assert (=> start!119784 true))

(declare-fun array_inv!34991 (array!95384) Bool)

(assert (=> start!119784 (array_inv!34991 a!2901)))

(declare-fun b!1394877 () Bool)

(declare-fun res!934397 () Bool)

(assert (=> b!1394877 (=> (not res!934397) (not e!789722))))

(assert (=> b!1394877 (= res!934397 (validKeyInArray!0 (select (arr!46046 a!2901) i!1037)))))

(assert (= (and start!119784 res!934401) b!1394882))

(assert (= (and b!1394882 res!934398) b!1394877))

(assert (= (and b!1394877 res!934397) b!1394884))

(assert (= (and b!1394884 res!934394) b!1394881))

(assert (= (and b!1394881 res!934393) b!1394879))

(assert (= (and b!1394879 res!934395) b!1394883))

(assert (= (and b!1394883 res!934400) b!1394876))

(assert (= (and b!1394883 (not res!934399)) b!1394880))

(assert (= (and b!1394880 (not res!934396)) b!1394878))

(declare-fun m!1281447 () Bool)

(assert (=> b!1394884 m!1281447))

(assert (=> b!1394884 m!1281447))

(declare-fun m!1281449 () Bool)

(assert (=> b!1394884 m!1281449))

(assert (=> b!1394883 m!1281447))

(declare-fun m!1281451 () Bool)

(assert (=> b!1394883 m!1281451))

(assert (=> b!1394883 m!1281447))

(declare-fun m!1281453 () Bool)

(assert (=> b!1394883 m!1281453))

(assert (=> b!1394883 m!1281451))

(assert (=> b!1394883 m!1281447))

(declare-fun m!1281455 () Bool)

(assert (=> b!1394883 m!1281455))

(declare-fun m!1281457 () Bool)

(assert (=> b!1394883 m!1281457))

(assert (=> b!1394876 m!1281447))

(assert (=> b!1394876 m!1281447))

(declare-fun m!1281459 () Bool)

(assert (=> b!1394876 m!1281459))

(declare-fun m!1281461 () Bool)

(assert (=> start!119784 m!1281461))

(declare-fun m!1281463 () Bool)

(assert (=> start!119784 m!1281463))

(declare-fun m!1281465 () Bool)

(assert (=> b!1394881 m!1281465))

(declare-fun m!1281467 () Bool)

(assert (=> b!1394880 m!1281467))

(declare-fun m!1281469 () Bool)

(assert (=> b!1394880 m!1281469))

(assert (=> b!1394880 m!1281469))

(declare-fun m!1281471 () Bool)

(assert (=> b!1394880 m!1281471))

(assert (=> b!1394880 m!1281471))

(assert (=> b!1394880 m!1281469))

(declare-fun m!1281473 () Bool)

(assert (=> b!1394880 m!1281473))

(declare-fun m!1281475 () Bool)

(assert (=> b!1394879 m!1281475))

(declare-fun m!1281477 () Bool)

(assert (=> b!1394877 m!1281477))

(assert (=> b!1394877 m!1281477))

(declare-fun m!1281479 () Bool)

(assert (=> b!1394877 m!1281479))

(check-sat (not start!119784) (not b!1394880) (not b!1394884) (not b!1394877) (not b!1394883) (not b!1394876) (not b!1394879) (not b!1394881))
(check-sat)
(get-model)

(declare-fun d!150565 () Bool)

(assert (=> d!150565 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119784 d!150565))

(declare-fun d!150569 () Bool)

(assert (=> d!150569 (= (array_inv!34991 a!2901) (bvsge (size!46597 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119784 d!150569))

(declare-fun b!1394963 () Bool)

(declare-fun lt!612771 () SeekEntryResult!10385)

(declare-fun e!789773 () SeekEntryResult!10385)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95384 (_ BitVec 32)) SeekEntryResult!10385)

(assert (=> b!1394963 (= e!789773 (seekKeyOrZeroReturnVacant!0 (x!125576 lt!612771) (index!43912 lt!612771) (index!43912 lt!612771) (select (arr!46046 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394964 () Bool)

(assert (=> b!1394964 (= e!789773 (MissingZero!10385 (index!43912 lt!612771)))))

(declare-fun b!1394965 () Bool)

(declare-fun e!789772 () SeekEntryResult!10385)

(assert (=> b!1394965 (= e!789772 (Found!10385 (index!43912 lt!612771)))))

(declare-fun d!150571 () Bool)

(declare-fun lt!612772 () SeekEntryResult!10385)

(assert (=> d!150571 (and (or ((_ is Undefined!10385) lt!612772) (not ((_ is Found!10385) lt!612772)) (and (bvsge (index!43911 lt!612772) #b00000000000000000000000000000000) (bvslt (index!43911 lt!612772) (size!46597 a!2901)))) (or ((_ is Undefined!10385) lt!612772) ((_ is Found!10385) lt!612772) (not ((_ is MissingZero!10385) lt!612772)) (and (bvsge (index!43910 lt!612772) #b00000000000000000000000000000000) (bvslt (index!43910 lt!612772) (size!46597 a!2901)))) (or ((_ is Undefined!10385) lt!612772) ((_ is Found!10385) lt!612772) ((_ is MissingZero!10385) lt!612772) (not ((_ is MissingVacant!10385) lt!612772)) (and (bvsge (index!43913 lt!612772) #b00000000000000000000000000000000) (bvslt (index!43913 lt!612772) (size!46597 a!2901)))) (or ((_ is Undefined!10385) lt!612772) (ite ((_ is Found!10385) lt!612772) (= (select (arr!46046 a!2901) (index!43911 lt!612772)) (select (arr!46046 a!2901) j!112)) (ite ((_ is MissingZero!10385) lt!612772) (= (select (arr!46046 a!2901) (index!43910 lt!612772)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10385) lt!612772) (= (select (arr!46046 a!2901) (index!43913 lt!612772)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!789771 () SeekEntryResult!10385)

(assert (=> d!150571 (= lt!612772 e!789771)))

(declare-fun c!129714 () Bool)

(assert (=> d!150571 (= c!129714 (and ((_ is Intermediate!10385) lt!612771) (undefined!11197 lt!612771)))))

(assert (=> d!150571 (= lt!612771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) (select (arr!46046 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150571 (validMask!0 mask!2840)))

(assert (=> d!150571 (= (seekEntryOrOpen!0 (select (arr!46046 a!2901) j!112) a!2901 mask!2840) lt!612772)))

(declare-fun b!1394966 () Bool)

(declare-fun c!129715 () Bool)

(declare-fun lt!612770 () (_ BitVec 64))

(assert (=> b!1394966 (= c!129715 (= lt!612770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1394966 (= e!789772 e!789773)))

(declare-fun b!1394967 () Bool)

(assert (=> b!1394967 (= e!789771 Undefined!10385)))

(declare-fun b!1394968 () Bool)

(assert (=> b!1394968 (= e!789771 e!789772)))

(assert (=> b!1394968 (= lt!612770 (select (arr!46046 a!2901) (index!43912 lt!612771)))))

(declare-fun c!129716 () Bool)

(assert (=> b!1394968 (= c!129716 (= lt!612770 (select (arr!46046 a!2901) j!112)))))

(assert (= (and d!150571 c!129714) b!1394967))

(assert (= (and d!150571 (not c!129714)) b!1394968))

(assert (= (and b!1394968 c!129716) b!1394965))

(assert (= (and b!1394968 (not c!129716)) b!1394966))

(assert (= (and b!1394966 c!129715) b!1394964))

(assert (= (and b!1394966 (not c!129715)) b!1394963))

(assert (=> b!1394963 m!1281447))

(declare-fun m!1281531 () Bool)

(assert (=> b!1394963 m!1281531))

(assert (=> d!150571 m!1281461))

(declare-fun m!1281533 () Bool)

(assert (=> d!150571 m!1281533))

(assert (=> d!150571 m!1281451))

(assert (=> d!150571 m!1281447))

(assert (=> d!150571 m!1281455))

(declare-fun m!1281535 () Bool)

(assert (=> d!150571 m!1281535))

(declare-fun m!1281537 () Bool)

(assert (=> d!150571 m!1281537))

(assert (=> d!150571 m!1281447))

(assert (=> d!150571 m!1281451))

(declare-fun m!1281539 () Bool)

(assert (=> b!1394968 m!1281539))

(assert (=> b!1394876 d!150571))

(declare-fun d!150581 () Bool)

(assert (=> d!150581 (= (validKeyInArray!0 (select (arr!46046 a!2901) i!1037)) (and (not (= (select (arr!46046 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46046 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394877 d!150581))

(declare-fun b!1394985 () Bool)

(declare-fun e!789785 () Bool)

(declare-fun e!789784 () Bool)

(assert (=> b!1394985 (= e!789785 e!789784)))

(declare-fun c!129722 () Bool)

(assert (=> b!1394985 (= c!129722 (validKeyInArray!0 (select (arr!46046 a!2901) j!112)))))

(declare-fun bm!66807 () Bool)

(declare-fun call!66810 () Bool)

(assert (=> bm!66807 (= call!66810 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1394986 () Bool)

(assert (=> b!1394986 (= e!789784 call!66810)))

(declare-fun b!1394987 () Bool)

(declare-fun e!789783 () Bool)

(assert (=> b!1394987 (= e!789784 e!789783)))

(declare-fun lt!612786 () (_ BitVec 64))

(assert (=> b!1394987 (= lt!612786 (select (arr!46046 a!2901) j!112))))

(declare-fun lt!612788 () Unit!46724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95384 (_ BitVec 64) (_ BitVec 32)) Unit!46724)

(assert (=> b!1394987 (= lt!612788 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612786 j!112))))

(declare-fun arrayContainsKey!0 (array!95384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1394987 (arrayContainsKey!0 a!2901 lt!612786 #b00000000000000000000000000000000)))

(declare-fun lt!612787 () Unit!46724)

(assert (=> b!1394987 (= lt!612787 lt!612788)))

(declare-fun res!934448 () Bool)

(assert (=> b!1394987 (= res!934448 (= (seekEntryOrOpen!0 (select (arr!46046 a!2901) j!112) a!2901 mask!2840) (Found!10385 j!112)))))

(assert (=> b!1394987 (=> (not res!934448) (not e!789783))))

(declare-fun b!1394988 () Bool)

(assert (=> b!1394988 (= e!789783 call!66810)))

(declare-fun d!150583 () Bool)

(declare-fun res!934449 () Bool)

(assert (=> d!150583 (=> res!934449 e!789785)))

(assert (=> d!150583 (= res!934449 (bvsge j!112 (size!46597 a!2901)))))

(assert (=> d!150583 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!789785)))

(assert (= (and d!150583 (not res!934449)) b!1394985))

(assert (= (and b!1394985 c!129722) b!1394987))

(assert (= (and b!1394985 (not c!129722)) b!1394986))

(assert (= (and b!1394987 res!934448) b!1394988))

(assert (= (or b!1394988 b!1394986) bm!66807))

(assert (=> b!1394985 m!1281447))

(assert (=> b!1394985 m!1281447))

(assert (=> b!1394985 m!1281449))

(declare-fun m!1281551 () Bool)

(assert (=> bm!66807 m!1281551))

(assert (=> b!1394987 m!1281447))

(declare-fun m!1281553 () Bool)

(assert (=> b!1394987 m!1281553))

(declare-fun m!1281555 () Bool)

(assert (=> b!1394987 m!1281555))

(assert (=> b!1394987 m!1281447))

(assert (=> b!1394987 m!1281459))

(assert (=> b!1394883 d!150583))

(declare-fun d!150587 () Bool)

(assert (=> d!150587 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612791 () Unit!46724)

(declare-fun choose!38 (array!95384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46724)

(assert (=> d!150587 (= lt!612791 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150587 (validMask!0 mask!2840)))

(assert (=> d!150587 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!612791)))

(declare-fun bs!40596 () Bool)

(assert (= bs!40596 d!150587))

(assert (=> bs!40596 m!1281457))

(declare-fun m!1281557 () Bool)

(assert (=> bs!40596 m!1281557))

(assert (=> bs!40596 m!1281461))

(assert (=> b!1394883 d!150587))

(declare-fun e!789824 () SeekEntryResult!10385)

(declare-fun b!1395044 () Bool)

(assert (=> b!1395044 (= e!789824 (Intermediate!10385 false (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395045 () Bool)

(declare-fun e!789820 () Bool)

(declare-fun e!789821 () Bool)

(assert (=> b!1395045 (= e!789820 e!789821)))

(declare-fun res!934473 () Bool)

(declare-fun lt!612817 () SeekEntryResult!10385)

(assert (=> b!1395045 (= res!934473 (and ((_ is Intermediate!10385) lt!612817) (not (undefined!11197 lt!612817)) (bvslt (x!125576 lt!612817) #b01111111111111111111111111111110) (bvsge (x!125576 lt!612817) #b00000000000000000000000000000000) (bvsge (x!125576 lt!612817) #b00000000000000000000000000000000)))))

(assert (=> b!1395045 (=> (not res!934473) (not e!789821))))

(declare-fun b!1395046 () Bool)

(assert (=> b!1395046 (and (bvsge (index!43912 lt!612817) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612817) (size!46597 a!2901)))))

(declare-fun res!934474 () Bool)

(assert (=> b!1395046 (= res!934474 (= (select (arr!46046 a!2901) (index!43912 lt!612817)) (select (arr!46046 a!2901) j!112)))))

(declare-fun e!789822 () Bool)

(assert (=> b!1395046 (=> res!934474 e!789822)))

(assert (=> b!1395046 (= e!789821 e!789822)))

(declare-fun b!1395047 () Bool)

(declare-fun e!789823 () SeekEntryResult!10385)

(assert (=> b!1395047 (= e!789823 (Intermediate!10385 true (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395048 () Bool)

(assert (=> b!1395048 (= e!789820 (bvsge (x!125576 lt!612817) #b01111111111111111111111111111110))))

(declare-fun b!1395049 () Bool)

(assert (=> b!1395049 (= e!789823 e!789824)))

(declare-fun c!129742 () Bool)

(declare-fun lt!612816 () (_ BitVec 64))

(assert (=> b!1395049 (= c!129742 (or (= lt!612816 (select (arr!46046 a!2901) j!112)) (= (bvadd lt!612816 lt!612816) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395050 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395050 (= e!789824 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46046 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395051 () Bool)

(assert (=> b!1395051 (and (bvsge (index!43912 lt!612817) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612817) (size!46597 a!2901)))))

(assert (=> b!1395051 (= e!789822 (= (select (arr!46046 a!2901) (index!43912 lt!612817)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150593 () Bool)

(assert (=> d!150593 e!789820))

(declare-fun c!129743 () Bool)

(assert (=> d!150593 (= c!129743 (and ((_ is Intermediate!10385) lt!612817) (undefined!11197 lt!612817)))))

(assert (=> d!150593 (= lt!612817 e!789823)))

(declare-fun c!129741 () Bool)

(assert (=> d!150593 (= c!129741 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150593 (= lt!612816 (select (arr!46046 a!2901) (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840)))))

(assert (=> d!150593 (validMask!0 mask!2840)))

(assert (=> d!150593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) (select (arr!46046 a!2901) j!112) a!2901 mask!2840) lt!612817)))

(declare-fun b!1395052 () Bool)

(assert (=> b!1395052 (and (bvsge (index!43912 lt!612817) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612817) (size!46597 a!2901)))))

(declare-fun res!934472 () Bool)

(assert (=> b!1395052 (= res!934472 (= (select (arr!46046 a!2901) (index!43912 lt!612817)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395052 (=> res!934472 e!789822)))

(assert (= (and d!150593 c!129741) b!1395047))

(assert (= (and d!150593 (not c!129741)) b!1395049))

(assert (= (and b!1395049 c!129742) b!1395044))

(assert (= (and b!1395049 (not c!129742)) b!1395050))

(assert (= (and d!150593 c!129743) b!1395048))

(assert (= (and d!150593 (not c!129743)) b!1395045))

(assert (= (and b!1395045 res!934473) b!1395046))

(assert (= (and b!1395046 (not res!934474)) b!1395052))

(assert (= (and b!1395052 (not res!934472)) b!1395051))

(assert (=> b!1395050 m!1281451))

(declare-fun m!1281575 () Bool)

(assert (=> b!1395050 m!1281575))

(assert (=> b!1395050 m!1281575))

(assert (=> b!1395050 m!1281447))

(declare-fun m!1281577 () Bool)

(assert (=> b!1395050 m!1281577))

(declare-fun m!1281579 () Bool)

(assert (=> b!1395046 m!1281579))

(assert (=> b!1395052 m!1281579))

(assert (=> b!1395051 m!1281579))

(assert (=> d!150593 m!1281451))

(declare-fun m!1281581 () Bool)

(assert (=> d!150593 m!1281581))

(assert (=> d!150593 m!1281461))

(assert (=> b!1394883 d!150593))

(declare-fun d!150603 () Bool)

(declare-fun lt!612833 () (_ BitVec 32))

(declare-fun lt!612832 () (_ BitVec 32))

(assert (=> d!150603 (= lt!612833 (bvmul (bvxor lt!612832 (bvlshr lt!612832 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150603 (= lt!612832 ((_ extract 31 0) (bvand (bvxor (select (arr!46046 a!2901) j!112) (bvlshr (select (arr!46046 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150603 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934475 (let ((h!33977 ((_ extract 31 0) (bvand (bvxor (select (arr!46046 a!2901) j!112) (bvlshr (select (arr!46046 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125581 (bvmul (bvxor h!33977 (bvlshr h!33977 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125581 (bvlshr x!125581 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934475 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934475 #b00000000000000000000000000000000))))))

(assert (=> d!150603 (= (toIndex!0 (select (arr!46046 a!2901) j!112) mask!2840) (bvand (bvxor lt!612833 (bvlshr lt!612833 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394883 d!150603))

(declare-fun d!150605 () Bool)

(assert (=> d!150605 (= (validKeyInArray!0 (select (arr!46046 a!2901) j!112)) (and (not (= (select (arr!46046 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46046 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394884 d!150605))

(declare-fun b!1395108 () Bool)

(declare-fun e!789857 () Bool)

(declare-fun contains!9788 (List!32745 (_ BitVec 64)) Bool)

(assert (=> b!1395108 (= e!789857 (contains!9788 Nil!32742 (select (arr!46046 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395110 () Bool)

(declare-fun e!789859 () Bool)

(declare-fun call!66816 () Bool)

(assert (=> b!1395110 (= e!789859 call!66816)))

(declare-fun b!1395111 () Bool)

(declare-fun e!789858 () Bool)

(declare-fun e!789860 () Bool)

(assert (=> b!1395111 (= e!789858 e!789860)))

(declare-fun res!934492 () Bool)

(assert (=> b!1395111 (=> (not res!934492) (not e!789860))))

(assert (=> b!1395111 (= res!934492 (not e!789857))))

(declare-fun res!934493 () Bool)

(assert (=> b!1395111 (=> (not res!934493) (not e!789857))))

(assert (=> b!1395111 (= res!934493 (validKeyInArray!0 (select (arr!46046 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395112 () Bool)

(assert (=> b!1395112 (= e!789860 e!789859)))

(declare-fun c!129764 () Bool)

(assert (=> b!1395112 (= c!129764 (validKeyInArray!0 (select (arr!46046 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66813 () Bool)

(assert (=> bm!66813 (= call!66816 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129764 (Cons!32741 (select (arr!46046 a!2901) #b00000000000000000000000000000000) Nil!32742) Nil!32742)))))

(declare-fun b!1395109 () Bool)

(assert (=> b!1395109 (= e!789859 call!66816)))

(declare-fun d!150607 () Bool)

(declare-fun res!934494 () Bool)

(assert (=> d!150607 (=> res!934494 e!789858)))

(assert (=> d!150607 (= res!934494 (bvsge #b00000000000000000000000000000000 (size!46597 a!2901)))))

(assert (=> d!150607 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32742) e!789858)))

(assert (= (and d!150607 (not res!934494)) b!1395111))

(assert (= (and b!1395111 res!934493) b!1395108))

(assert (= (and b!1395111 res!934492) b!1395112))

(assert (= (and b!1395112 c!129764) b!1395110))

(assert (= (and b!1395112 (not c!129764)) b!1395109))

(assert (= (or b!1395110 b!1395109) bm!66813))

(declare-fun m!1281601 () Bool)

(assert (=> b!1395108 m!1281601))

(assert (=> b!1395108 m!1281601))

(declare-fun m!1281603 () Bool)

(assert (=> b!1395108 m!1281603))

(assert (=> b!1395111 m!1281601))

(assert (=> b!1395111 m!1281601))

(declare-fun m!1281605 () Bool)

(assert (=> b!1395111 m!1281605))

(assert (=> b!1395112 m!1281601))

(assert (=> b!1395112 m!1281601))

(assert (=> b!1395112 m!1281605))

(assert (=> bm!66813 m!1281601))

(declare-fun m!1281607 () Bool)

(assert (=> bm!66813 m!1281607))

(assert (=> b!1394879 d!150607))

(declare-fun e!789865 () SeekEntryResult!10385)

(declare-fun b!1395113 () Bool)

(assert (=> b!1395113 (= e!789865 (Intermediate!10385 false (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395114 () Bool)

(declare-fun e!789861 () Bool)

(declare-fun e!789862 () Bool)

(assert (=> b!1395114 (= e!789861 e!789862)))

(declare-fun res!934496 () Bool)

(declare-fun lt!612840 () SeekEntryResult!10385)

(assert (=> b!1395114 (= res!934496 (and ((_ is Intermediate!10385) lt!612840) (not (undefined!11197 lt!612840)) (bvslt (x!125576 lt!612840) #b01111111111111111111111111111110) (bvsge (x!125576 lt!612840) #b00000000000000000000000000000000) (bvsge (x!125576 lt!612840) #b00000000000000000000000000000000)))))

(assert (=> b!1395114 (=> (not res!934496) (not e!789862))))

(declare-fun b!1395115 () Bool)

(assert (=> b!1395115 (and (bvsge (index!43912 lt!612840) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612840) (size!46597 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)))))))

(declare-fun res!934497 () Bool)

(assert (=> b!1395115 (= res!934497 (= (select (arr!46046 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901))) (index!43912 lt!612840)) (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!789863 () Bool)

(assert (=> b!1395115 (=> res!934497 e!789863)))

(assert (=> b!1395115 (= e!789862 e!789863)))

(declare-fun b!1395116 () Bool)

(declare-fun e!789864 () SeekEntryResult!10385)

(assert (=> b!1395116 (= e!789864 (Intermediate!10385 true (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395117 () Bool)

(assert (=> b!1395117 (= e!789861 (bvsge (x!125576 lt!612840) #b01111111111111111111111111111110))))

(declare-fun b!1395118 () Bool)

(assert (=> b!1395118 (= e!789864 e!789865)))

(declare-fun c!129766 () Bool)

(declare-fun lt!612839 () (_ BitVec 64))

(assert (=> b!1395118 (= c!129766 (or (= lt!612839 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!612839 lt!612839) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1395119 () Bool)

(assert (=> b!1395119 (= e!789865 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)) mask!2840))))

(declare-fun b!1395120 () Bool)

(assert (=> b!1395120 (and (bvsge (index!43912 lt!612840) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612840) (size!46597 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)))))))

(assert (=> b!1395120 (= e!789863 (= (select (arr!46046 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901))) (index!43912 lt!612840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150617 () Bool)

(assert (=> d!150617 e!789861))

(declare-fun c!129767 () Bool)

(assert (=> d!150617 (= c!129767 (and ((_ is Intermediate!10385) lt!612840) (undefined!11197 lt!612840)))))

(assert (=> d!150617 (= lt!612840 e!789864)))

(declare-fun c!129765 () Bool)

(assert (=> d!150617 (= c!129765 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150617 (= lt!612839 (select (arr!46046 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901))) (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150617 (validMask!0 mask!2840)))

(assert (=> d!150617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)) mask!2840) lt!612840)))

(declare-fun b!1395121 () Bool)

(assert (=> b!1395121 (and (bvsge (index!43912 lt!612840) #b00000000000000000000000000000000) (bvslt (index!43912 lt!612840) (size!46597 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901)))))))

(declare-fun res!934495 () Bool)

(assert (=> b!1395121 (= res!934495 (= (select (arr!46046 (array!95385 (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46597 a!2901))) (index!43912 lt!612840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395121 (=> res!934495 e!789863)))

(assert (= (and d!150617 c!129765) b!1395116))

(assert (= (and d!150617 (not c!129765)) b!1395118))

(assert (= (and b!1395118 c!129766) b!1395113))

(assert (= (and b!1395118 (not c!129766)) b!1395119))

(assert (= (and d!150617 c!129767) b!1395117))

(assert (= (and d!150617 (not c!129767)) b!1395114))

(assert (= (and b!1395114 res!934496) b!1395115))

(assert (= (and b!1395115 (not res!934497)) b!1395121))

(assert (= (and b!1395121 (not res!934495)) b!1395120))

(assert (=> b!1395119 m!1281471))

(declare-fun m!1281609 () Bool)

(assert (=> b!1395119 m!1281609))

(assert (=> b!1395119 m!1281609))

(assert (=> b!1395119 m!1281469))

(declare-fun m!1281611 () Bool)

(assert (=> b!1395119 m!1281611))

(declare-fun m!1281613 () Bool)

(assert (=> b!1395115 m!1281613))

(assert (=> b!1395121 m!1281613))

(assert (=> b!1395120 m!1281613))

(assert (=> d!150617 m!1281471))

(declare-fun m!1281615 () Bool)

(assert (=> d!150617 m!1281615))

(assert (=> d!150617 m!1281461))

(assert (=> b!1394880 d!150617))

(declare-fun d!150619 () Bool)

(declare-fun lt!612842 () (_ BitVec 32))

(declare-fun lt!612841 () (_ BitVec 32))

(assert (=> d!150619 (= lt!612842 (bvmul (bvxor lt!612841 (bvlshr lt!612841 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150619 (= lt!612841 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150619 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934475 (let ((h!33977 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125581 (bvmul (bvxor h!33977 (bvlshr h!33977 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125581 (bvlshr x!125581 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934475 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934475 #b00000000000000000000000000000000))))))

(assert (=> d!150619 (= (toIndex!0 (select (store (arr!46046 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!612842 (bvlshr lt!612842 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394880 d!150619))

(declare-fun b!1395122 () Bool)

(declare-fun e!789868 () Bool)

(declare-fun e!789867 () Bool)

(assert (=> b!1395122 (= e!789868 e!789867)))

(declare-fun c!129768 () Bool)

(assert (=> b!1395122 (= c!129768 (validKeyInArray!0 (select (arr!46046 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66814 () Bool)

(declare-fun call!66817 () Bool)

(assert (=> bm!66814 (= call!66817 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395123 () Bool)

(assert (=> b!1395123 (= e!789867 call!66817)))

(declare-fun b!1395124 () Bool)

(declare-fun e!789866 () Bool)

(assert (=> b!1395124 (= e!789867 e!789866)))

(declare-fun lt!612843 () (_ BitVec 64))

(assert (=> b!1395124 (= lt!612843 (select (arr!46046 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!612845 () Unit!46724)

(assert (=> b!1395124 (= lt!612845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612843 #b00000000000000000000000000000000))))

(assert (=> b!1395124 (arrayContainsKey!0 a!2901 lt!612843 #b00000000000000000000000000000000)))

(declare-fun lt!612844 () Unit!46724)

(assert (=> b!1395124 (= lt!612844 lt!612845)))

(declare-fun res!934498 () Bool)

(assert (=> b!1395124 (= res!934498 (= (seekEntryOrOpen!0 (select (arr!46046 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10385 #b00000000000000000000000000000000)))))

(assert (=> b!1395124 (=> (not res!934498) (not e!789866))))

(declare-fun b!1395125 () Bool)

(assert (=> b!1395125 (= e!789866 call!66817)))

(declare-fun d!150621 () Bool)

(declare-fun res!934499 () Bool)

(assert (=> d!150621 (=> res!934499 e!789868)))

(assert (=> d!150621 (= res!934499 (bvsge #b00000000000000000000000000000000 (size!46597 a!2901)))))

(assert (=> d!150621 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!789868)))

(assert (= (and d!150621 (not res!934499)) b!1395122))

(assert (= (and b!1395122 c!129768) b!1395124))

(assert (= (and b!1395122 (not c!129768)) b!1395123))

(assert (= (and b!1395124 res!934498) b!1395125))

(assert (= (or b!1395125 b!1395123) bm!66814))

(assert (=> b!1395122 m!1281601))

(assert (=> b!1395122 m!1281601))

(assert (=> b!1395122 m!1281605))

(declare-fun m!1281617 () Bool)

(assert (=> bm!66814 m!1281617))

(assert (=> b!1395124 m!1281601))

(declare-fun m!1281619 () Bool)

(assert (=> b!1395124 m!1281619))

(declare-fun m!1281621 () Bool)

(assert (=> b!1395124 m!1281621))

(assert (=> b!1395124 m!1281601))

(declare-fun m!1281623 () Bool)

(assert (=> b!1395124 m!1281623))

(assert (=> b!1394881 d!150621))

(check-sat (not b!1395124) (not b!1395050) (not b!1394987) (not bm!66813) (not b!1395112) (not d!150617) (not b!1395111) (not b!1394985) (not b!1395119) (not b!1394963) (not bm!66814) (not bm!66807) (not d!150593) (not d!150587) (not b!1395108) (not d!150571) (not b!1395122))
(check-sat)
