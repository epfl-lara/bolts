; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131342 () Bool)

(assert start!131342)

(declare-fun b!1539700 () Bool)

(declare-fun res!1056637 () Bool)

(declare-fun e!856392 () Bool)

(assert (=> b!1539700 (=> (not res!1056637) (not e!856392))))

(declare-datatypes ((array!102256 0))(
  ( (array!102257 (arr!49335 (Array (_ BitVec 32) (_ BitVec 64))) (size!49886 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102256)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539700 (= res!1056637 (validKeyInArray!0 (select (arr!49335 a!2792) i!951)))))

(declare-fun b!1539701 () Bool)

(declare-fun res!1056644 () Bool)

(assert (=> b!1539701 (=> (not res!1056644) (not e!856392))))

(declare-datatypes ((List!35989 0))(
  ( (Nil!35986) (Cons!35985 (h!37431 (_ BitVec 64)) (t!50690 List!35989)) )
))
(declare-fun arrayNoDuplicates!0 (array!102256 (_ BitVec 32) List!35989) Bool)

(assert (=> b!1539701 (= res!1056644 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35986))))

(declare-fun b!1539703 () Bool)

(declare-fun res!1056639 () Bool)

(assert (=> b!1539703 (=> (not res!1056639) (not e!856392))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102256 (_ BitVec 32)) Bool)

(assert (=> b!1539703 (= res!1056639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539704 () Bool)

(declare-fun res!1056641 () Bool)

(assert (=> b!1539704 (=> (not res!1056641) (not e!856392))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539704 (= res!1056641 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49886 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49886 a!2792)) (= (select (arr!49335 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539705 () Bool)

(declare-fun e!856391 () Bool)

(assert (=> b!1539705 (= e!856392 e!856391)))

(declare-fun res!1056645 () Bool)

(assert (=> b!1539705 (=> (not res!1056645) (not e!856391))))

(declare-datatypes ((SeekEntryResult!13484 0))(
  ( (MissingZero!13484 (index!56330 (_ BitVec 32))) (Found!13484 (index!56331 (_ BitVec 32))) (Intermediate!13484 (undefined!14296 Bool) (index!56332 (_ BitVec 32)) (x!138064 (_ BitVec 32))) (Undefined!13484) (MissingVacant!13484 (index!56333 (_ BitVec 32))) )
))
(declare-fun lt!665061 () SeekEntryResult!13484)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102256 (_ BitVec 32)) SeekEntryResult!13484)

(assert (=> b!1539705 (= res!1056645 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49335 a!2792) j!64) a!2792 mask!2480) lt!665061))))

(assert (=> b!1539705 (= lt!665061 (Found!13484 j!64))))

(declare-fun b!1539702 () Bool)

(declare-fun e!856393 () Bool)

(assert (=> b!1539702 (= e!856391 e!856393)))

(declare-fun res!1056642 () Bool)

(assert (=> b!1539702 (=> (not res!1056642) (not e!856393))))

(declare-fun lt!665062 () (_ BitVec 32))

(assert (=> b!1539702 (= res!1056642 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665062 #b00000000000000000000000000000000) (bvslt lt!665062 (size!49886 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539702 (= lt!665062 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1056636 () Bool)

(assert (=> start!131342 (=> (not res!1056636) (not e!856392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131342 (= res!1056636 (validMask!0 mask!2480))))

(assert (=> start!131342 e!856392))

(assert (=> start!131342 true))

(declare-fun array_inv!38280 (array!102256) Bool)

(assert (=> start!131342 (array_inv!38280 a!2792)))

(declare-fun b!1539706 () Bool)

(declare-fun res!1056638 () Bool)

(assert (=> b!1539706 (=> (not res!1056638) (not e!856392))))

(assert (=> b!1539706 (= res!1056638 (and (= (size!49886 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49886 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49886 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539707 () Bool)

(declare-fun res!1056643 () Bool)

(assert (=> b!1539707 (=> (not res!1056643) (not e!856391))))

(assert (=> b!1539707 (= res!1056643 (not (= (select (arr!49335 a!2792) index!463) (select (arr!49335 a!2792) j!64))))))

(declare-fun b!1539708 () Bool)

(declare-fun res!1056640 () Bool)

(assert (=> b!1539708 (=> (not res!1056640) (not e!856392))))

(assert (=> b!1539708 (= res!1056640 (validKeyInArray!0 (select (arr!49335 a!2792) j!64)))))

(declare-fun b!1539709 () Bool)

(assert (=> b!1539709 (= e!856393 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665062 vacantIndex!5 (select (arr!49335 a!2792) j!64) a!2792 mask!2480) lt!665061)))))

(assert (= (and start!131342 res!1056636) b!1539706))

(assert (= (and b!1539706 res!1056638) b!1539700))

(assert (= (and b!1539700 res!1056637) b!1539708))

(assert (= (and b!1539708 res!1056640) b!1539703))

(assert (= (and b!1539703 res!1056639) b!1539701))

(assert (= (and b!1539701 res!1056644) b!1539704))

(assert (= (and b!1539704 res!1056641) b!1539705))

(assert (= (and b!1539705 res!1056645) b!1539707))

(assert (= (and b!1539707 res!1056643) b!1539702))

(assert (= (and b!1539702 res!1056642) b!1539709))

(declare-fun m!1421929 () Bool)

(assert (=> b!1539704 m!1421929))

(declare-fun m!1421931 () Bool)

(assert (=> b!1539701 m!1421931))

(declare-fun m!1421933 () Bool)

(assert (=> b!1539702 m!1421933))

(declare-fun m!1421935 () Bool)

(assert (=> b!1539705 m!1421935))

(assert (=> b!1539705 m!1421935))

(declare-fun m!1421937 () Bool)

(assert (=> b!1539705 m!1421937))

(declare-fun m!1421939 () Bool)

(assert (=> start!131342 m!1421939))

(declare-fun m!1421941 () Bool)

(assert (=> start!131342 m!1421941))

(assert (=> b!1539708 m!1421935))

(assert (=> b!1539708 m!1421935))

(declare-fun m!1421943 () Bool)

(assert (=> b!1539708 m!1421943))

(assert (=> b!1539709 m!1421935))

(assert (=> b!1539709 m!1421935))

(declare-fun m!1421945 () Bool)

(assert (=> b!1539709 m!1421945))

(declare-fun m!1421947 () Bool)

(assert (=> b!1539707 m!1421947))

(assert (=> b!1539707 m!1421935))

(declare-fun m!1421949 () Bool)

(assert (=> b!1539700 m!1421949))

(assert (=> b!1539700 m!1421949))

(declare-fun m!1421951 () Bool)

(assert (=> b!1539700 m!1421951))

(declare-fun m!1421953 () Bool)

(assert (=> b!1539703 m!1421953))

(push 1)

(assert (not b!1539705))

(assert (not b!1539708))

(assert (not b!1539700))

(assert (not b!1539709))

(assert (not start!131342))

(assert (not b!1539701))

(assert (not b!1539702))

(assert (not b!1539703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1539718 () Bool)

(declare-fun e!856402 () Bool)

(declare-fun call!68634 () Bool)

(assert (=> b!1539718 (= e!856402 call!68634)))

(declare-fun b!1539719 () Bool)

(declare-fun e!856401 () Bool)

(assert (=> b!1539719 (= e!856402 e!856401)))

(declare-fun lt!665075 () (_ BitVec 64))

(assert (=> b!1539719 (= lt!665075 (select (arr!49335 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51362 0))(
  ( (Unit!51363) )
))
(declare-fun lt!665076 () Unit!51362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102256 (_ BitVec 64) (_ BitVec 32)) Unit!51362)

(assert (=> b!1539719 (= lt!665076 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665075 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539719 (arrayContainsKey!0 a!2792 lt!665075 #b00000000000000000000000000000000)))

(declare-fun lt!665077 () Unit!51362)

(assert (=> b!1539719 (= lt!665077 lt!665076)))

(declare-fun res!1056651 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102256 (_ BitVec 32)) SeekEntryResult!13484)

(assert (=> b!1539719 (= res!1056651 (= (seekEntryOrOpen!0 (select (arr!49335 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13484 #b00000000000000000000000000000000)))))

(assert (=> b!1539719 (=> (not res!1056651) (not e!856401))))

(declare-fun d!160405 () Bool)

(declare-fun res!1056650 () Bool)

(declare-fun e!856403 () Bool)

(assert (=> d!160405 (=> res!1056650 e!856403)))

(assert (=> d!160405 (= res!1056650 (bvsge #b00000000000000000000000000000000 (size!49886 a!2792)))))

(assert (=> d!160405 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856403)))

(declare-fun b!1539720 () Bool)

(assert (=> b!1539720 (= e!856403 e!856402)))

(declare-fun c!141095 () Bool)

(assert (=> b!1539720 (= c!141095 (validKeyInArray!0 (select (arr!49335 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68631 () Bool)

(assert (=> bm!68631 (= call!68634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1539721 () Bool)

(assert (=> b!1539721 (= e!856401 call!68634)))

(assert (= (and d!160405 (not res!1056650)) b!1539720))

(assert (= (and b!1539720 c!141095) b!1539719))

(assert (= (and b!1539720 (not c!141095)) b!1539718))

(assert (= (and b!1539719 res!1056651) b!1539721))

(assert (= (or b!1539721 b!1539718) bm!68631))

(declare-fun m!1421959 () Bool)

(assert (=> b!1539719 m!1421959))

(declare-fun m!1421961 () Bool)

(assert (=> b!1539719 m!1421961))

(declare-fun m!1421963 () Bool)

(assert (=> b!1539719 m!1421963))

(assert (=> b!1539719 m!1421959))

(declare-fun m!1421965 () Bool)

(assert (=> b!1539719 m!1421965))

(assert (=> b!1539720 m!1421959))

(assert (=> b!1539720 m!1421959))

(declare-fun m!1421967 () Bool)

(assert (=> b!1539720 m!1421967))

(declare-fun m!1421969 () Bool)

(assert (=> bm!68631 m!1421969))

(assert (=> b!1539703 d!160405))

(declare-fun d!160411 () Bool)

(assert (=> d!160411 (= (validKeyInArray!0 (select (arr!49335 a!2792) j!64)) (and (not (= (select (arr!49335 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49335 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539708 d!160411))

(declare-fun d!160413 () Bool)

(declare-fun lt!665084 () (_ BitVec 32))

(assert (=> d!160413 (and (bvsge lt!665084 #b00000000000000000000000000000000) (bvslt lt!665084 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160413 (= lt!665084 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160413 (validMask!0 mask!2480)))

(assert (=> d!160413 (= (nextIndex!0 index!463 x!510 mask!2480) lt!665084)))

(declare-fun bs!44197 () Bool)

(assert (= bs!44197 d!160413))

(declare-fun m!1421971 () Bool)

(assert (=> bs!44197 m!1421971))

(assert (=> bs!44197 m!1421939))

(assert (=> b!1539702 d!160413))

(declare-fun b!1539771 () Bool)

(declare-fun e!856438 () Bool)

(declare-fun call!68640 () Bool)

(assert (=> b!1539771 (= e!856438 call!68640)))

(declare-fun bm!68637 () Bool)

(declare-fun c!141113 () Bool)

(assert (=> bm!68637 (= call!68640 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141113 (Cons!35985 (select (arr!49335 a!2792) #b00000000000000000000000000000000) Nil!35986) Nil!35986)))))

(declare-fun b!1539772 () Bool)

(declare-fun e!856439 () Bool)

(assert (=> b!1539772 (= e!856439 e!856438)))

(assert (=> b!1539772 (= c!141113 (validKeyInArray!0 (select (arr!49335 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539773 () Bool)

(declare-fun e!856437 () Bool)

(assert (=> b!1539773 (= e!856437 e!856439)))

(declare-fun res!1056669 () Bool)

(assert (=> b!1539773 (=> (not res!1056669) (not e!856439))))

(declare-fun e!856436 () Bool)

(assert (=> b!1539773 (= res!1056669 (not e!856436))))

(declare-fun res!1056667 () Bool)

(assert (=> b!1539773 (=> (not res!1056667) (not e!856436))))

(assert (=> b!1539773 (= res!1056667 (validKeyInArray!0 (select (arr!49335 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160415 () Bool)

(declare-fun res!1056668 () Bool)

(assert (=> d!160415 (=> res!1056668 e!856437)))

(assert (=> d!160415 (= res!1056668 (bvsge #b00000000000000000000000000000000 (size!49886 a!2792)))))

(assert (=> d!160415 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35986) e!856437)))

(declare-fun b!1539774 () Bool)

(declare-fun contains!10032 (List!35989 (_ BitVec 64)) Bool)

(assert (=> b!1539774 (= e!856436 (contains!10032 Nil!35986 (select (arr!49335 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539775 () Bool)

(assert (=> b!1539775 (= e!856438 call!68640)))

(assert (= (and d!160415 (not res!1056668)) b!1539773))

(assert (= (and b!1539773 res!1056667) b!1539774))

(assert (= (and b!1539773 res!1056669) b!1539772))

(assert (= (and b!1539772 c!141113) b!1539771))

(assert (= (and b!1539772 (not c!141113)) b!1539775))

(assert (= (or b!1539771 b!1539775) bm!68637))

(assert (=> bm!68637 m!1421959))

(declare-fun m!1421997 () Bool)

(assert (=> bm!68637 m!1421997))

(assert (=> b!1539772 m!1421959))

(assert (=> b!1539772 m!1421959))

(assert (=> b!1539772 m!1421967))

(assert (=> b!1539773 m!1421959))

(assert (=> b!1539773 m!1421959))

(assert (=> b!1539773 m!1421967))

(assert (=> b!1539774 m!1421959))

(assert (=> b!1539774 m!1421959))

(declare-fun m!1421999 () Bool)

(assert (=> b!1539774 m!1421999))

(assert (=> b!1539701 d!160415))

(declare-fun d!160423 () Bool)

(assert (=> d!160423 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131342 d!160423))

(declare-fun d!160433 () Bool)

(assert (=> d!160433 (= (array_inv!38280 a!2792) (bvsge (size!49886 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131342 d!160433))

(declare-fun e!856476 () SeekEntryResult!13484)

(declare-fun b!1539827 () Bool)

(assert (=> b!1539827 (= e!856476 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49335 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539828 () Bool)

(declare-fun e!856477 () SeekEntryResult!13484)

(assert (=> b!1539828 (= e!856477 (Found!13484 index!463))))

(declare-fun b!1539829 () Bool)

(declare-fun e!856478 () SeekEntryResult!13484)

(assert (=> b!1539829 (= e!856478 e!856477)))

(declare-fun lt!665112 () (_ BitVec 64))

(declare-fun c!141129 () Bool)

(assert (=> b!1539829 (= c!141129 (= lt!665112 (select (arr!49335 a!2792) j!64)))))

(declare-fun b!1539830 () Bool)

(assert (=> b!1539830 (= e!856476 (MissingVacant!13484 vacantIndex!5))))

(declare-fun b!1539831 () Bool)

(assert (=> b!1539831 (= e!856478 Undefined!13484)))

(declare-fun d!160435 () Bool)

(declare-fun lt!665111 () SeekEntryResult!13484)

(assert (=> d!160435 (and (or (is-Undefined!13484 lt!665111) (not (is-Found!13484 lt!665111)) (and (bvsge (index!56331 lt!665111) #b00000000000000000000000000000000) (bvslt (index!56331 lt!665111) (size!49886 a!2792)))) (or (is-Undefined!13484 lt!665111) (is-Found!13484 lt!665111) (not (is-MissingVacant!13484 lt!665111)) (not (= (index!56333 lt!665111) vacantIndex!5)) (and (bvsge (index!56333 lt!665111) #b00000000000000000000000000000000) (bvslt (index!56333 lt!665111) (size!49886 a!2792)))) (or (is-Undefined!13484 lt!665111) (ite (is-Found!13484 lt!665111) (= (select (arr!49335 a!2792) (index!56331 lt!665111)) (select (arr!49335 a!2792) j!64)) (and (is-MissingVacant!13484 lt!665111) (= (index!56333 lt!665111) vacantIndex!5) (= (select (arr!49335 a!2792) (index!56333 lt!665111)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160435 (= lt!665111 e!856478)))

(declare-fun c!141131 () Bool)

(assert (=> d!160435 (= c!141131 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160435 (= lt!665112 (select (arr!49335 a!2792) index!463))))

(assert (=> d!160435 (validMask!0 mask!2480)))

(assert (=> d!160435 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49335 a!2792) j!64) a!2792 mask!2480) lt!665111)))

(declare-fun b!1539832 () Bool)

(declare-fun c!141130 () Bool)

(assert (=> b!1539832 (= c!141130 (= lt!665112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539832 (= e!856477 e!856476)))

(assert (= (and d!160435 c!141131) b!1539831))

(assert (= (and d!160435 (not c!141131)) b!1539829))

(assert (= (and b!1539829 c!141129) b!1539828))

(assert (= (and b!1539829 (not c!141129)) b!1539832))

(assert (= (and b!1539832 c!141130) b!1539830))

(assert (= (and b!1539832 (not c!141130)) b!1539827))

