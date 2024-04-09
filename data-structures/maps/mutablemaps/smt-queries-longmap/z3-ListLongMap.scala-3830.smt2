; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52486 () Bool)

(assert start!52486)

(declare-fun b!572894 () Bool)

(declare-fun e!329570 () Bool)

(declare-fun e!329574 () Bool)

(assert (=> b!572894 (= e!329570 e!329574)))

(declare-fun res!362557 () Bool)

(assert (=> b!572894 (=> res!362557 e!329574)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261655 () (_ BitVec 64))

(declare-datatypes ((array!35837 0))(
  ( (array!35838 (arr!17203 (Array (_ BitVec 32) (_ BitVec 64))) (size!17567 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35837)

(assert (=> b!572894 (= res!362557 (or (= lt!261655 (select (arr!17203 a!3118) j!142)) (= lt!261655 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5659 0))(
  ( (MissingZero!5659 (index!24863 (_ BitVec 32))) (Found!5659 (index!24864 (_ BitVec 32))) (Intermediate!5659 (undefined!6471 Bool) (index!24865 (_ BitVec 32)) (x!53755 (_ BitVec 32))) (Undefined!5659) (MissingVacant!5659 (index!24866 (_ BitVec 32))) )
))
(declare-fun lt!261650 () SeekEntryResult!5659)

(assert (=> b!572894 (= lt!261655 (select (arr!17203 a!3118) (index!24865 lt!261650)))))

(declare-fun b!572895 () Bool)

(declare-fun res!362553 () Bool)

(declare-fun e!329569 () Bool)

(assert (=> b!572895 (=> (not res!362553) (not e!329569))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572895 (= res!362553 (validKeyInArray!0 k0!1914))))

(declare-fun b!572896 () Bool)

(declare-fun res!362554 () Bool)

(assert (=> b!572896 (=> (not res!362554) (not e!329569))))

(declare-fun arrayContainsKey!0 (array!35837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572896 (= res!362554 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!572897 () Bool)

(declare-fun e!329568 () Bool)

(get-info :version)

(assert (=> b!572897 (= e!329568 (not (or (undefined!6471 lt!261650) (not ((_ is Intermediate!5659) lt!261650)) (let ((bdg!17961 (select (arr!17203 a!3118) (index!24865 lt!261650)))) (or (= bdg!17961 (select (arr!17203 a!3118) j!142)) (= bdg!17961 #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!24865 lt!261650) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261650) (bvadd #b00000000000000000000000000000001 mask!3119))))))))))

(declare-fun e!329571 () Bool)

(assert (=> b!572897 e!329571))

(declare-fun res!362559 () Bool)

(assert (=> b!572897 (=> (not res!362559) (not e!329571))))

(declare-fun lt!261649 () SeekEntryResult!5659)

(assert (=> b!572897 (= res!362559 (= lt!261649 (Found!5659 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35837 (_ BitVec 32)) SeekEntryResult!5659)

(assert (=> b!572897 (= lt!261649 (seekEntryOrOpen!0 (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35837 (_ BitVec 32)) Bool)

(assert (=> b!572897 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18020 0))(
  ( (Unit!18021) )
))
(declare-fun lt!261651 () Unit!18020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18020)

(assert (=> b!572897 (= lt!261651 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572898 () Bool)

(declare-fun e!329573 () Bool)

(assert (=> b!572898 (= e!329569 e!329573)))

(declare-fun res!362555 () Bool)

(assert (=> b!572898 (=> (not res!362555) (not e!329573))))

(declare-fun lt!261653 () SeekEntryResult!5659)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572898 (= res!362555 (or (= lt!261653 (MissingZero!5659 i!1132)) (= lt!261653 (MissingVacant!5659 i!1132))))))

(assert (=> b!572898 (= lt!261653 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572899 () Bool)

(declare-fun e!329575 () Bool)

(assert (=> b!572899 (= e!329574 e!329575)))

(declare-fun res!362563 () Bool)

(assert (=> b!572899 (=> (not res!362563) (not e!329575))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35837 (_ BitVec 32)) SeekEntryResult!5659)

(assert (=> b!572899 (= res!362563 (= lt!261649 (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261650) (index!24865 lt!261650) (index!24865 lt!261650) (select (arr!17203 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun lt!261656 () (_ BitVec 64))

(declare-fun lt!261648 () array!35837)

(declare-fun b!572900 () Bool)

(assert (=> b!572900 (= e!329575 (= (seekEntryOrOpen!0 lt!261656 lt!261648 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261650) (index!24865 lt!261650) (index!24865 lt!261650) lt!261656 lt!261648 mask!3119)))))

(declare-fun b!572901 () Bool)

(assert (=> b!572901 (= e!329573 e!329568)))

(declare-fun res!362552 () Bool)

(assert (=> b!572901 (=> (not res!362552) (not e!329568))))

(declare-fun lt!261654 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35837 (_ BitVec 32)) SeekEntryResult!5659)

(assert (=> b!572901 (= res!362552 (= lt!261650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261654 lt!261656 lt!261648 mask!3119)))))

(declare-fun lt!261652 () (_ BitVec 32))

(assert (=> b!572901 (= lt!261650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261652 (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572901 (= lt!261654 (toIndex!0 lt!261656 mask!3119))))

(assert (=> b!572901 (= lt!261656 (select (store (arr!17203 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572901 (= lt!261652 (toIndex!0 (select (arr!17203 a!3118) j!142) mask!3119))))

(assert (=> b!572901 (= lt!261648 (array!35838 (store (arr!17203 a!3118) i!1132 k0!1914) (size!17567 a!3118)))))

(declare-fun b!572902 () Bool)

(declare-fun res!362560 () Bool)

(assert (=> b!572902 (=> (not res!362560) (not e!329569))))

(assert (=> b!572902 (= res!362560 (and (= (size!17567 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17567 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17567 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572903 () Bool)

(assert (=> b!572903 (= e!329571 e!329570)))

(declare-fun res!362562 () Bool)

(assert (=> b!572903 (=> res!362562 e!329570)))

(assert (=> b!572903 (= res!362562 (or (undefined!6471 lt!261650) (not ((_ is Intermediate!5659) lt!261650))))))

(declare-fun res!362561 () Bool)

(assert (=> start!52486 (=> (not res!362561) (not e!329569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52486 (= res!362561 (validMask!0 mask!3119))))

(assert (=> start!52486 e!329569))

(assert (=> start!52486 true))

(declare-fun array_inv!12977 (array!35837) Bool)

(assert (=> start!52486 (array_inv!12977 a!3118)))

(declare-fun b!572904 () Bool)

(declare-fun res!362564 () Bool)

(assert (=> b!572904 (=> (not res!362564) (not e!329573))))

(declare-datatypes ((List!11336 0))(
  ( (Nil!11333) (Cons!11332 (h!12359 (_ BitVec 64)) (t!17572 List!11336)) )
))
(declare-fun arrayNoDuplicates!0 (array!35837 (_ BitVec 32) List!11336) Bool)

(assert (=> b!572904 (= res!362564 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11333))))

(declare-fun b!572905 () Bool)

(declare-fun res!362558 () Bool)

(assert (=> b!572905 (=> (not res!362558) (not e!329569))))

(assert (=> b!572905 (= res!362558 (validKeyInArray!0 (select (arr!17203 a!3118) j!142)))))

(declare-fun b!572906 () Bool)

(declare-fun res!362556 () Bool)

(assert (=> b!572906 (=> (not res!362556) (not e!329573))))

(assert (=> b!572906 (= res!362556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52486 res!362561) b!572902))

(assert (= (and b!572902 res!362560) b!572905))

(assert (= (and b!572905 res!362558) b!572895))

(assert (= (and b!572895 res!362553) b!572896))

(assert (= (and b!572896 res!362554) b!572898))

(assert (= (and b!572898 res!362555) b!572906))

(assert (= (and b!572906 res!362556) b!572904))

(assert (= (and b!572904 res!362564) b!572901))

(assert (= (and b!572901 res!362552) b!572897))

(assert (= (and b!572897 res!362559) b!572903))

(assert (= (and b!572903 (not res!362562)) b!572894))

(assert (= (and b!572894 (not res!362557)) b!572899))

(assert (= (and b!572899 res!362563) b!572900))

(declare-fun m!551991 () Bool)

(assert (=> start!52486 m!551991))

(declare-fun m!551993 () Bool)

(assert (=> start!52486 m!551993))

(declare-fun m!551995 () Bool)

(assert (=> b!572895 m!551995))

(declare-fun m!551997 () Bool)

(assert (=> b!572894 m!551997))

(declare-fun m!551999 () Bool)

(assert (=> b!572894 m!551999))

(declare-fun m!552001 () Bool)

(assert (=> b!572898 m!552001))

(declare-fun m!552003 () Bool)

(assert (=> b!572904 m!552003))

(declare-fun m!552005 () Bool)

(assert (=> b!572906 m!552005))

(assert (=> b!572905 m!551997))

(assert (=> b!572905 m!551997))

(declare-fun m!552007 () Bool)

(assert (=> b!572905 m!552007))

(declare-fun m!552009 () Bool)

(assert (=> b!572896 m!552009))

(assert (=> b!572897 m!551997))

(declare-fun m!552011 () Bool)

(assert (=> b!572897 m!552011))

(declare-fun m!552013 () Bool)

(assert (=> b!572897 m!552013))

(assert (=> b!572897 m!551999))

(assert (=> b!572897 m!551997))

(declare-fun m!552015 () Bool)

(assert (=> b!572897 m!552015))

(assert (=> b!572901 m!551997))

(declare-fun m!552017 () Bool)

(assert (=> b!572901 m!552017))

(assert (=> b!572901 m!551997))

(declare-fun m!552019 () Bool)

(assert (=> b!572901 m!552019))

(declare-fun m!552021 () Bool)

(assert (=> b!572901 m!552021))

(declare-fun m!552023 () Bool)

(assert (=> b!572901 m!552023))

(declare-fun m!552025 () Bool)

(assert (=> b!572901 m!552025))

(assert (=> b!572901 m!551997))

(declare-fun m!552027 () Bool)

(assert (=> b!572901 m!552027))

(assert (=> b!572899 m!551997))

(assert (=> b!572899 m!551997))

(declare-fun m!552029 () Bool)

(assert (=> b!572899 m!552029))

(declare-fun m!552031 () Bool)

(assert (=> b!572900 m!552031))

(declare-fun m!552033 () Bool)

(assert (=> b!572900 m!552033))

(check-sat (not b!572896) (not b!572905) (not b!572900) (not b!572895) (not b!572898) (not b!572897) (not b!572901) (not b!572904) (not b!572906) (not start!52486) (not b!572899))
(check-sat)
(get-model)

(declare-fun d!84737 () Bool)

(declare-fun res!362608 () Bool)

(declare-fun e!329604 () Bool)

(assert (=> d!84737 (=> res!362608 e!329604)))

(assert (=> d!84737 (= res!362608 (= (select (arr!17203 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84737 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!329604)))

(declare-fun b!572950 () Bool)

(declare-fun e!329605 () Bool)

(assert (=> b!572950 (= e!329604 e!329605)))

(declare-fun res!362609 () Bool)

(assert (=> b!572950 (=> (not res!362609) (not e!329605))))

(assert (=> b!572950 (= res!362609 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17567 a!3118)))))

(declare-fun b!572951 () Bool)

(assert (=> b!572951 (= e!329605 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84737 (not res!362608)) b!572950))

(assert (= (and b!572950 res!362609) b!572951))

(declare-fun m!552079 () Bool)

(assert (=> d!84737 m!552079))

(declare-fun m!552081 () Bool)

(assert (=> b!572951 m!552081))

(assert (=> b!572896 d!84737))

(declare-fun d!84739 () Bool)

(assert (=> d!84739 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572895 d!84739))

(declare-fun b!572960 () Bool)

(declare-fun e!329613 () Bool)

(declare-fun e!329612 () Bool)

(assert (=> b!572960 (= e!329613 e!329612)))

(declare-fun lt!261691 () (_ BitVec 64))

(assert (=> b!572960 (= lt!261691 (select (arr!17203 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!261692 () Unit!18020)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35837 (_ BitVec 64) (_ BitVec 32)) Unit!18020)

(assert (=> b!572960 (= lt!261692 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261691 #b00000000000000000000000000000000))))

(assert (=> b!572960 (arrayContainsKey!0 a!3118 lt!261691 #b00000000000000000000000000000000)))

(declare-fun lt!261690 () Unit!18020)

(assert (=> b!572960 (= lt!261690 lt!261692)))

(declare-fun res!362615 () Bool)

(assert (=> b!572960 (= res!362615 (= (seekEntryOrOpen!0 (select (arr!17203 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5659 #b00000000000000000000000000000000)))))

(assert (=> b!572960 (=> (not res!362615) (not e!329612))))

(declare-fun b!572961 () Bool)

(declare-fun e!329614 () Bool)

(assert (=> b!572961 (= e!329614 e!329613)))

(declare-fun c!65531 () Bool)

(assert (=> b!572961 (= c!65531 (validKeyInArray!0 (select (arr!17203 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32621 () Bool)

(declare-fun call!32624 () Bool)

(assert (=> bm!32621 (= call!32624 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84741 () Bool)

(declare-fun res!362614 () Bool)

(assert (=> d!84741 (=> res!362614 e!329614)))

(assert (=> d!84741 (= res!362614 (bvsge #b00000000000000000000000000000000 (size!17567 a!3118)))))

(assert (=> d!84741 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!329614)))

(declare-fun b!572962 () Bool)

(assert (=> b!572962 (= e!329612 call!32624)))

(declare-fun b!572963 () Bool)

(assert (=> b!572963 (= e!329613 call!32624)))

(assert (= (and d!84741 (not res!362614)) b!572961))

(assert (= (and b!572961 c!65531) b!572960))

(assert (= (and b!572961 (not c!65531)) b!572963))

(assert (= (and b!572960 res!362615) b!572962))

(assert (= (or b!572962 b!572963) bm!32621))

(assert (=> b!572960 m!552079))

(declare-fun m!552083 () Bool)

(assert (=> b!572960 m!552083))

(declare-fun m!552085 () Bool)

(assert (=> b!572960 m!552085))

(assert (=> b!572960 m!552079))

(declare-fun m!552087 () Bool)

(assert (=> b!572960 m!552087))

(assert (=> b!572961 m!552079))

(assert (=> b!572961 m!552079))

(declare-fun m!552089 () Bool)

(assert (=> b!572961 m!552089))

(declare-fun m!552091 () Bool)

(assert (=> bm!32621 m!552091))

(assert (=> b!572906 d!84741))

(declare-fun d!84743 () Bool)

(assert (=> d!84743 (= (validKeyInArray!0 (select (arr!17203 a!3118) j!142)) (and (not (= (select (arr!17203 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17203 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572905 d!84743))

(declare-fun d!84745 () Bool)

(declare-fun res!362624 () Bool)

(declare-fun e!329623 () Bool)

(assert (=> d!84745 (=> res!362624 e!329623)))

(assert (=> d!84745 (= res!362624 (bvsge #b00000000000000000000000000000000 (size!17567 a!3118)))))

(assert (=> d!84745 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11333) e!329623)))

(declare-fun b!572974 () Bool)

(declare-fun e!329625 () Bool)

(declare-fun call!32627 () Bool)

(assert (=> b!572974 (= e!329625 call!32627)))

(declare-fun b!572975 () Bool)

(declare-fun e!329626 () Bool)

(declare-fun contains!2887 (List!11336 (_ BitVec 64)) Bool)

(assert (=> b!572975 (= e!329626 (contains!2887 Nil!11333 (select (arr!17203 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32624 () Bool)

(declare-fun c!65534 () Bool)

(assert (=> bm!32624 (= call!32627 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65534 (Cons!11332 (select (arr!17203 a!3118) #b00000000000000000000000000000000) Nil!11333) Nil!11333)))))

(declare-fun b!572976 () Bool)

(declare-fun e!329624 () Bool)

(assert (=> b!572976 (= e!329623 e!329624)))

(declare-fun res!362622 () Bool)

(assert (=> b!572976 (=> (not res!362622) (not e!329624))))

(assert (=> b!572976 (= res!362622 (not e!329626))))

(declare-fun res!362623 () Bool)

(assert (=> b!572976 (=> (not res!362623) (not e!329626))))

(assert (=> b!572976 (= res!362623 (validKeyInArray!0 (select (arr!17203 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!572977 () Bool)

(assert (=> b!572977 (= e!329624 e!329625)))

(assert (=> b!572977 (= c!65534 (validKeyInArray!0 (select (arr!17203 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!572978 () Bool)

(assert (=> b!572978 (= e!329625 call!32627)))

(assert (= (and d!84745 (not res!362624)) b!572976))

(assert (= (and b!572976 res!362623) b!572975))

(assert (= (and b!572976 res!362622) b!572977))

(assert (= (and b!572977 c!65534) b!572974))

(assert (= (and b!572977 (not c!65534)) b!572978))

(assert (= (or b!572974 b!572978) bm!32624))

(assert (=> b!572975 m!552079))

(assert (=> b!572975 m!552079))

(declare-fun m!552093 () Bool)

(assert (=> b!572975 m!552093))

(assert (=> bm!32624 m!552079))

(declare-fun m!552095 () Bool)

(assert (=> bm!32624 m!552095))

(assert (=> b!572976 m!552079))

(assert (=> b!572976 m!552079))

(assert (=> b!572976 m!552089))

(assert (=> b!572977 m!552079))

(assert (=> b!572977 m!552079))

(assert (=> b!572977 m!552089))

(assert (=> b!572904 d!84745))

(declare-fun d!84747 () Bool)

(assert (=> d!84747 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52486 d!84747))

(declare-fun d!84753 () Bool)

(assert (=> d!84753 (= (array_inv!12977 a!3118) (bvsge (size!17567 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52486 d!84753))

(declare-fun b!573033 () Bool)

(declare-fun e!329659 () SeekEntryResult!5659)

(assert (=> b!573033 (= e!329659 (Intermediate!5659 true lt!261654 #b00000000000000000000000000000000))))

(declare-fun b!573034 () Bool)

(declare-fun lt!261713 () SeekEntryResult!5659)

(assert (=> b!573034 (and (bvsge (index!24865 lt!261713) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261713) (size!17567 lt!261648)))))

(declare-fun e!329661 () Bool)

(assert (=> b!573034 (= e!329661 (= (select (arr!17203 lt!261648) (index!24865 lt!261713)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573035 () Bool)

(assert (=> b!573035 (and (bvsge (index!24865 lt!261713) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261713) (size!17567 lt!261648)))))

(declare-fun res!362646 () Bool)

(assert (=> b!573035 (= res!362646 (= (select (arr!17203 lt!261648) (index!24865 lt!261713)) lt!261656))))

(assert (=> b!573035 (=> res!362646 e!329661)))

(declare-fun e!329657 () Bool)

(assert (=> b!573035 (= e!329657 e!329661)))

(declare-fun b!573036 () Bool)

(declare-fun e!329660 () SeekEntryResult!5659)

(assert (=> b!573036 (= e!329659 e!329660)))

(declare-fun c!65553 () Bool)

(declare-fun lt!261714 () (_ BitVec 64))

(assert (=> b!573036 (= c!65553 (or (= lt!261714 lt!261656) (= (bvadd lt!261714 lt!261714) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573037 () Bool)

(declare-fun e!329658 () Bool)

(assert (=> b!573037 (= e!329658 e!329657)))

(declare-fun res!362644 () Bool)

(assert (=> b!573037 (= res!362644 (and ((_ is Intermediate!5659) lt!261713) (not (undefined!6471 lt!261713)) (bvslt (x!53755 lt!261713) #b01111111111111111111111111111110) (bvsge (x!53755 lt!261713) #b00000000000000000000000000000000) (bvsge (x!53755 lt!261713) #b00000000000000000000000000000000)))))

(assert (=> b!573037 (=> (not res!362644) (not e!329657))))

(declare-fun b!573039 () Bool)

(assert (=> b!573039 (= e!329658 (bvsge (x!53755 lt!261713) #b01111111111111111111111111111110))))

(declare-fun b!573040 () Bool)

(assert (=> b!573040 (= e!329660 (Intermediate!5659 false lt!261654 #b00000000000000000000000000000000))))

(declare-fun b!573041 () Bool)

(assert (=> b!573041 (and (bvsge (index!24865 lt!261713) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261713) (size!17567 lt!261648)))))

(declare-fun res!362645 () Bool)

(assert (=> b!573041 (= res!362645 (= (select (arr!17203 lt!261648) (index!24865 lt!261713)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573041 (=> res!362645 e!329661)))

(declare-fun d!84755 () Bool)

(assert (=> d!84755 e!329658))

(declare-fun c!65555 () Bool)

(assert (=> d!84755 (= c!65555 (and ((_ is Intermediate!5659) lt!261713) (undefined!6471 lt!261713)))))

(assert (=> d!84755 (= lt!261713 e!329659)))

(declare-fun c!65554 () Bool)

(assert (=> d!84755 (= c!65554 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84755 (= lt!261714 (select (arr!17203 lt!261648) lt!261654))))

(assert (=> d!84755 (validMask!0 mask!3119)))

(assert (=> d!84755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261654 lt!261656 lt!261648 mask!3119) lt!261713)))

(declare-fun b!573038 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573038 (= e!329660 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261654 #b00000000000000000000000000000000 mask!3119) lt!261656 lt!261648 mask!3119))))

(assert (= (and d!84755 c!65554) b!573033))

(assert (= (and d!84755 (not c!65554)) b!573036))

(assert (= (and b!573036 c!65553) b!573040))

(assert (= (and b!573036 (not c!65553)) b!573038))

(assert (= (and d!84755 c!65555) b!573039))

(assert (= (and d!84755 (not c!65555)) b!573037))

(assert (= (and b!573037 res!362644) b!573035))

(assert (= (and b!573035 (not res!362646)) b!573041))

(assert (= (and b!573041 (not res!362645)) b!573034))

(declare-fun m!552113 () Bool)

(assert (=> b!573035 m!552113))

(assert (=> b!573034 m!552113))

(declare-fun m!552115 () Bool)

(assert (=> d!84755 m!552115))

(assert (=> d!84755 m!551991))

(declare-fun m!552117 () Bool)

(assert (=> b!573038 m!552117))

(assert (=> b!573038 m!552117))

(declare-fun m!552119 () Bool)

(assert (=> b!573038 m!552119))

(assert (=> b!573041 m!552113))

(assert (=> b!572901 d!84755))

(declare-fun b!573046 () Bool)

(declare-fun e!329668 () SeekEntryResult!5659)

(assert (=> b!573046 (= e!329668 (Intermediate!5659 true lt!261652 #b00000000000000000000000000000000))))

(declare-fun b!573047 () Bool)

(declare-fun lt!261715 () SeekEntryResult!5659)

(assert (=> b!573047 (and (bvsge (index!24865 lt!261715) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261715) (size!17567 a!3118)))))

(declare-fun e!329670 () Bool)

(assert (=> b!573047 (= e!329670 (= (select (arr!17203 a!3118) (index!24865 lt!261715)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573048 () Bool)

(assert (=> b!573048 (and (bvsge (index!24865 lt!261715) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261715) (size!17567 a!3118)))))

(declare-fun res!362653 () Bool)

(assert (=> b!573048 (= res!362653 (= (select (arr!17203 a!3118) (index!24865 lt!261715)) (select (arr!17203 a!3118) j!142)))))

(assert (=> b!573048 (=> res!362653 e!329670)))

(declare-fun e!329666 () Bool)

(assert (=> b!573048 (= e!329666 e!329670)))

(declare-fun b!573049 () Bool)

(declare-fun e!329669 () SeekEntryResult!5659)

(assert (=> b!573049 (= e!329668 e!329669)))

(declare-fun c!65556 () Bool)

(declare-fun lt!261716 () (_ BitVec 64))

(assert (=> b!573049 (= c!65556 (or (= lt!261716 (select (arr!17203 a!3118) j!142)) (= (bvadd lt!261716 lt!261716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573050 () Bool)

(declare-fun e!329667 () Bool)

(assert (=> b!573050 (= e!329667 e!329666)))

(declare-fun res!362651 () Bool)

(assert (=> b!573050 (= res!362651 (and ((_ is Intermediate!5659) lt!261715) (not (undefined!6471 lt!261715)) (bvslt (x!53755 lt!261715) #b01111111111111111111111111111110) (bvsge (x!53755 lt!261715) #b00000000000000000000000000000000) (bvsge (x!53755 lt!261715) #b00000000000000000000000000000000)))))

(assert (=> b!573050 (=> (not res!362651) (not e!329666))))

(declare-fun b!573052 () Bool)

(assert (=> b!573052 (= e!329667 (bvsge (x!53755 lt!261715) #b01111111111111111111111111111110))))

(declare-fun b!573053 () Bool)

(assert (=> b!573053 (= e!329669 (Intermediate!5659 false lt!261652 #b00000000000000000000000000000000))))

(declare-fun b!573054 () Bool)

(assert (=> b!573054 (and (bvsge (index!24865 lt!261715) #b00000000000000000000000000000000) (bvslt (index!24865 lt!261715) (size!17567 a!3118)))))

(declare-fun res!362652 () Bool)

(assert (=> b!573054 (= res!362652 (= (select (arr!17203 a!3118) (index!24865 lt!261715)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573054 (=> res!362652 e!329670)))

(declare-fun d!84769 () Bool)

(assert (=> d!84769 e!329667))

(declare-fun c!65558 () Bool)

(assert (=> d!84769 (= c!65558 (and ((_ is Intermediate!5659) lt!261715) (undefined!6471 lt!261715)))))

(assert (=> d!84769 (= lt!261715 e!329668)))

(declare-fun c!65557 () Bool)

(assert (=> d!84769 (= c!65557 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84769 (= lt!261716 (select (arr!17203 a!3118) lt!261652))))

(assert (=> d!84769 (validMask!0 mask!3119)))

(assert (=> d!84769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261652 (select (arr!17203 a!3118) j!142) a!3118 mask!3119) lt!261715)))

(declare-fun b!573051 () Bool)

(assert (=> b!573051 (= e!329669 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261652 #b00000000000000000000000000000000 mask!3119) (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84769 c!65557) b!573046))

(assert (= (and d!84769 (not c!65557)) b!573049))

(assert (= (and b!573049 c!65556) b!573053))

(assert (= (and b!573049 (not c!65556)) b!573051))

(assert (= (and d!84769 c!65558) b!573052))

(assert (= (and d!84769 (not c!65558)) b!573050))

(assert (= (and b!573050 res!362651) b!573048))

(assert (= (and b!573048 (not res!362653)) b!573054))

(assert (= (and b!573054 (not res!362652)) b!573047))

(declare-fun m!552125 () Bool)

(assert (=> b!573048 m!552125))

(assert (=> b!573047 m!552125))

(declare-fun m!552127 () Bool)

(assert (=> d!84769 m!552127))

(assert (=> d!84769 m!551991))

(declare-fun m!552129 () Bool)

(assert (=> b!573051 m!552129))

(assert (=> b!573051 m!552129))

(assert (=> b!573051 m!551997))

(declare-fun m!552131 () Bool)

(assert (=> b!573051 m!552131))

(assert (=> b!573054 m!552125))

(assert (=> b!572901 d!84769))

(declare-fun d!84773 () Bool)

(declare-fun lt!261726 () (_ BitVec 32))

(declare-fun lt!261725 () (_ BitVec 32))

(assert (=> d!84773 (= lt!261726 (bvmul (bvxor lt!261725 (bvlshr lt!261725 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84773 (= lt!261725 ((_ extract 31 0) (bvand (bvxor lt!261656 (bvlshr lt!261656 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84773 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362656 (let ((h!12362 ((_ extract 31 0) (bvand (bvxor lt!261656 (bvlshr lt!261656 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53761 (bvmul (bvxor h!12362 (bvlshr h!12362 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53761 (bvlshr x!53761 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362656 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362656 #b00000000000000000000000000000000))))))

(assert (=> d!84773 (= (toIndex!0 lt!261656 mask!3119) (bvand (bvxor lt!261726 (bvlshr lt!261726 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572901 d!84773))

(declare-fun d!84775 () Bool)

(declare-fun lt!261728 () (_ BitVec 32))

(declare-fun lt!261727 () (_ BitVec 32))

(assert (=> d!84775 (= lt!261728 (bvmul (bvxor lt!261727 (bvlshr lt!261727 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84775 (= lt!261727 ((_ extract 31 0) (bvand (bvxor (select (arr!17203 a!3118) j!142) (bvlshr (select (arr!17203 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84775 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362656 (let ((h!12362 ((_ extract 31 0) (bvand (bvxor (select (arr!17203 a!3118) j!142) (bvlshr (select (arr!17203 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53761 (bvmul (bvxor h!12362 (bvlshr h!12362 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53761 (bvlshr x!53761 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362656 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362656 #b00000000000000000000000000000000))))))

(assert (=> d!84775 (= (toIndex!0 (select (arr!17203 a!3118) j!142) mask!3119) (bvand (bvxor lt!261728 (bvlshr lt!261728 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572901 d!84775))

(declare-fun lt!261762 () SeekEntryResult!5659)

(declare-fun b!573125 () Bool)

(declare-fun e!329714 () SeekEntryResult!5659)

(assert (=> b!573125 (= e!329714 (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261762) (index!24865 lt!261762) (index!24865 lt!261762) lt!261656 lt!261648 mask!3119))))

(declare-fun b!573127 () Bool)

(declare-fun e!329716 () SeekEntryResult!5659)

(assert (=> b!573127 (= e!329716 (Found!5659 (index!24865 lt!261762)))))

(declare-fun b!573128 () Bool)

(assert (=> b!573128 (= e!329714 (MissingZero!5659 (index!24865 lt!261762)))))

(declare-fun b!573126 () Bool)

(declare-fun c!65582 () Bool)

(declare-fun lt!261763 () (_ BitVec 64))

(assert (=> b!573126 (= c!65582 (= lt!261763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573126 (= e!329716 e!329714)))

(declare-fun d!84777 () Bool)

(declare-fun lt!261764 () SeekEntryResult!5659)

(assert (=> d!84777 (and (or ((_ is Undefined!5659) lt!261764) (not ((_ is Found!5659) lt!261764)) (and (bvsge (index!24864 lt!261764) #b00000000000000000000000000000000) (bvslt (index!24864 lt!261764) (size!17567 lt!261648)))) (or ((_ is Undefined!5659) lt!261764) ((_ is Found!5659) lt!261764) (not ((_ is MissingZero!5659) lt!261764)) (and (bvsge (index!24863 lt!261764) #b00000000000000000000000000000000) (bvslt (index!24863 lt!261764) (size!17567 lt!261648)))) (or ((_ is Undefined!5659) lt!261764) ((_ is Found!5659) lt!261764) ((_ is MissingZero!5659) lt!261764) (not ((_ is MissingVacant!5659) lt!261764)) (and (bvsge (index!24866 lt!261764) #b00000000000000000000000000000000) (bvslt (index!24866 lt!261764) (size!17567 lt!261648)))) (or ((_ is Undefined!5659) lt!261764) (ite ((_ is Found!5659) lt!261764) (= (select (arr!17203 lt!261648) (index!24864 lt!261764)) lt!261656) (ite ((_ is MissingZero!5659) lt!261764) (= (select (arr!17203 lt!261648) (index!24863 lt!261764)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5659) lt!261764) (= (select (arr!17203 lt!261648) (index!24866 lt!261764)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329715 () SeekEntryResult!5659)

(assert (=> d!84777 (= lt!261764 e!329715)))

(declare-fun c!65583 () Bool)

(assert (=> d!84777 (= c!65583 (and ((_ is Intermediate!5659) lt!261762) (undefined!6471 lt!261762)))))

(assert (=> d!84777 (= lt!261762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261656 mask!3119) lt!261656 lt!261648 mask!3119))))

(assert (=> d!84777 (validMask!0 mask!3119)))

(assert (=> d!84777 (= (seekEntryOrOpen!0 lt!261656 lt!261648 mask!3119) lt!261764)))

(declare-fun b!573129 () Bool)

(assert (=> b!573129 (= e!329715 Undefined!5659)))

(declare-fun b!573130 () Bool)

(assert (=> b!573130 (= e!329715 e!329716)))

(assert (=> b!573130 (= lt!261763 (select (arr!17203 lt!261648) (index!24865 lt!261762)))))

(declare-fun c!65584 () Bool)

(assert (=> b!573130 (= c!65584 (= lt!261763 lt!261656))))

(assert (= (and d!84777 c!65583) b!573129))

(assert (= (and d!84777 (not c!65583)) b!573130))

(assert (= (and b!573130 c!65584) b!573127))

(assert (= (and b!573130 (not c!65584)) b!573126))

(assert (= (and b!573126 c!65582) b!573128))

(assert (= (and b!573126 (not c!65582)) b!573125))

(declare-fun m!552159 () Bool)

(assert (=> b!573125 m!552159))

(declare-fun m!552161 () Bool)

(assert (=> d!84777 m!552161))

(declare-fun m!552163 () Bool)

(assert (=> d!84777 m!552163))

(assert (=> d!84777 m!552021))

(declare-fun m!552165 () Bool)

(assert (=> d!84777 m!552165))

(declare-fun m!552167 () Bool)

(assert (=> d!84777 m!552167))

(assert (=> d!84777 m!552021))

(assert (=> d!84777 m!551991))

(declare-fun m!552169 () Bool)

(assert (=> b!573130 m!552169))

(assert (=> b!572900 d!84777))

(declare-fun b!573165 () Bool)

(declare-fun e!329735 () SeekEntryResult!5659)

(assert (=> b!573165 (= e!329735 (Found!5659 (index!24865 lt!261650)))))

(declare-fun b!573166 () Bool)

(declare-fun e!329736 () SeekEntryResult!5659)

(assert (=> b!573166 (= e!329736 (MissingVacant!5659 (index!24865 lt!261650)))))

(declare-fun b!573167 () Bool)

(declare-fun e!329737 () SeekEntryResult!5659)

(assert (=> b!573167 (= e!329737 e!329735)))

(declare-fun c!65601 () Bool)

(declare-fun lt!261781 () (_ BitVec 64))

(assert (=> b!573167 (= c!65601 (= lt!261781 lt!261656))))

(declare-fun d!84795 () Bool)

(declare-fun lt!261782 () SeekEntryResult!5659)

(assert (=> d!84795 (and (or ((_ is Undefined!5659) lt!261782) (not ((_ is Found!5659) lt!261782)) (and (bvsge (index!24864 lt!261782) #b00000000000000000000000000000000) (bvslt (index!24864 lt!261782) (size!17567 lt!261648)))) (or ((_ is Undefined!5659) lt!261782) ((_ is Found!5659) lt!261782) (not ((_ is MissingVacant!5659) lt!261782)) (not (= (index!24866 lt!261782) (index!24865 lt!261650))) (and (bvsge (index!24866 lt!261782) #b00000000000000000000000000000000) (bvslt (index!24866 lt!261782) (size!17567 lt!261648)))) (or ((_ is Undefined!5659) lt!261782) (ite ((_ is Found!5659) lt!261782) (= (select (arr!17203 lt!261648) (index!24864 lt!261782)) lt!261656) (and ((_ is MissingVacant!5659) lt!261782) (= (index!24866 lt!261782) (index!24865 lt!261650)) (= (select (arr!17203 lt!261648) (index!24866 lt!261782)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84795 (= lt!261782 e!329737)))

(declare-fun c!65602 () Bool)

(assert (=> d!84795 (= c!65602 (bvsge (x!53755 lt!261650) #b01111111111111111111111111111110))))

(assert (=> d!84795 (= lt!261781 (select (arr!17203 lt!261648) (index!24865 lt!261650)))))

(assert (=> d!84795 (validMask!0 mask!3119)))

(assert (=> d!84795 (= (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261650) (index!24865 lt!261650) (index!24865 lt!261650) lt!261656 lt!261648 mask!3119) lt!261782)))

(declare-fun b!573168 () Bool)

(assert (=> b!573168 (= e!329736 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53755 lt!261650) #b00000000000000000000000000000001) (nextIndex!0 (index!24865 lt!261650) (x!53755 lt!261650) mask!3119) (index!24865 lt!261650) lt!261656 lt!261648 mask!3119))))

(declare-fun b!573169 () Bool)

(declare-fun c!65603 () Bool)

(assert (=> b!573169 (= c!65603 (= lt!261781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573169 (= e!329735 e!329736)))

(declare-fun b!573170 () Bool)

(assert (=> b!573170 (= e!329737 Undefined!5659)))

(assert (= (and d!84795 c!65602) b!573170))

(assert (= (and d!84795 (not c!65602)) b!573167))

(assert (= (and b!573167 c!65601) b!573165))

(assert (= (and b!573167 (not c!65601)) b!573169))

(assert (= (and b!573169 c!65603) b!573166))

(assert (= (and b!573169 (not c!65603)) b!573168))

(declare-fun m!552195 () Bool)

(assert (=> d!84795 m!552195))

(declare-fun m!552197 () Bool)

(assert (=> d!84795 m!552197))

(declare-fun m!552199 () Bool)

(assert (=> d!84795 m!552199))

(assert (=> d!84795 m!551991))

(declare-fun m!552201 () Bool)

(assert (=> b!573168 m!552201))

(assert (=> b!573168 m!552201))

(declare-fun m!552207 () Bool)

(assert (=> b!573168 m!552207))

(assert (=> b!572900 d!84795))

(declare-fun b!573175 () Bool)

(declare-fun e!329741 () SeekEntryResult!5659)

(assert (=> b!573175 (= e!329741 (Found!5659 (index!24865 lt!261650)))))

(declare-fun b!573176 () Bool)

(declare-fun e!329742 () SeekEntryResult!5659)

(assert (=> b!573176 (= e!329742 (MissingVacant!5659 (index!24865 lt!261650)))))

(declare-fun b!573177 () Bool)

(declare-fun e!329743 () SeekEntryResult!5659)

(assert (=> b!573177 (= e!329743 e!329741)))

(declare-fun lt!261786 () (_ BitVec 64))

(declare-fun c!65605 () Bool)

(assert (=> b!573177 (= c!65605 (= lt!261786 (select (arr!17203 a!3118) j!142)))))

(declare-fun lt!261787 () SeekEntryResult!5659)

(declare-fun d!84803 () Bool)

(assert (=> d!84803 (and (or ((_ is Undefined!5659) lt!261787) (not ((_ is Found!5659) lt!261787)) (and (bvsge (index!24864 lt!261787) #b00000000000000000000000000000000) (bvslt (index!24864 lt!261787) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261787) ((_ is Found!5659) lt!261787) (not ((_ is MissingVacant!5659) lt!261787)) (not (= (index!24866 lt!261787) (index!24865 lt!261650))) (and (bvsge (index!24866 lt!261787) #b00000000000000000000000000000000) (bvslt (index!24866 lt!261787) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261787) (ite ((_ is Found!5659) lt!261787) (= (select (arr!17203 a!3118) (index!24864 lt!261787)) (select (arr!17203 a!3118) j!142)) (and ((_ is MissingVacant!5659) lt!261787) (= (index!24866 lt!261787) (index!24865 lt!261650)) (= (select (arr!17203 a!3118) (index!24866 lt!261787)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84803 (= lt!261787 e!329743)))

(declare-fun c!65606 () Bool)

(assert (=> d!84803 (= c!65606 (bvsge (x!53755 lt!261650) #b01111111111111111111111111111110))))

(assert (=> d!84803 (= lt!261786 (select (arr!17203 a!3118) (index!24865 lt!261650)))))

(assert (=> d!84803 (validMask!0 mask!3119)))

(assert (=> d!84803 (= (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261650) (index!24865 lt!261650) (index!24865 lt!261650) (select (arr!17203 a!3118) j!142) a!3118 mask!3119) lt!261787)))

(declare-fun b!573178 () Bool)

(assert (=> b!573178 (= e!329742 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53755 lt!261650) #b00000000000000000000000000000001) (nextIndex!0 (index!24865 lt!261650) (x!53755 lt!261650) mask!3119) (index!24865 lt!261650) (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573179 () Bool)

(declare-fun c!65607 () Bool)

(assert (=> b!573179 (= c!65607 (= lt!261786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573179 (= e!329741 e!329742)))

(declare-fun b!573180 () Bool)

(assert (=> b!573180 (= e!329743 Undefined!5659)))

(assert (= (and d!84803 c!65606) b!573180))

(assert (= (and d!84803 (not c!65606)) b!573177))

(assert (= (and b!573177 c!65605) b!573175))

(assert (= (and b!573177 (not c!65605)) b!573179))

(assert (= (and b!573179 c!65607) b!573176))

(assert (= (and b!573179 (not c!65607)) b!573178))

(declare-fun m!552211 () Bool)

(assert (=> d!84803 m!552211))

(declare-fun m!552213 () Bool)

(assert (=> d!84803 m!552213))

(assert (=> d!84803 m!551999))

(assert (=> d!84803 m!551991))

(assert (=> b!573178 m!552201))

(assert (=> b!573178 m!552201))

(assert (=> b!573178 m!551997))

(declare-fun m!552215 () Bool)

(assert (=> b!573178 m!552215))

(assert (=> b!572899 d!84803))

(declare-fun lt!261788 () SeekEntryResult!5659)

(declare-fun e!329744 () SeekEntryResult!5659)

(declare-fun b!573181 () Bool)

(assert (=> b!573181 (= e!329744 (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261788) (index!24865 lt!261788) (index!24865 lt!261788) k0!1914 a!3118 mask!3119))))

(declare-fun b!573183 () Bool)

(declare-fun e!329746 () SeekEntryResult!5659)

(assert (=> b!573183 (= e!329746 (Found!5659 (index!24865 lt!261788)))))

(declare-fun b!573184 () Bool)

(assert (=> b!573184 (= e!329744 (MissingZero!5659 (index!24865 lt!261788)))))

(declare-fun b!573182 () Bool)

(declare-fun c!65608 () Bool)

(declare-fun lt!261789 () (_ BitVec 64))

(assert (=> b!573182 (= c!65608 (= lt!261789 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573182 (= e!329746 e!329744)))

(declare-fun d!84807 () Bool)

(declare-fun lt!261790 () SeekEntryResult!5659)

(assert (=> d!84807 (and (or ((_ is Undefined!5659) lt!261790) (not ((_ is Found!5659) lt!261790)) (and (bvsge (index!24864 lt!261790) #b00000000000000000000000000000000) (bvslt (index!24864 lt!261790) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261790) ((_ is Found!5659) lt!261790) (not ((_ is MissingZero!5659) lt!261790)) (and (bvsge (index!24863 lt!261790) #b00000000000000000000000000000000) (bvslt (index!24863 lt!261790) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261790) ((_ is Found!5659) lt!261790) ((_ is MissingZero!5659) lt!261790) (not ((_ is MissingVacant!5659) lt!261790)) (and (bvsge (index!24866 lt!261790) #b00000000000000000000000000000000) (bvslt (index!24866 lt!261790) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261790) (ite ((_ is Found!5659) lt!261790) (= (select (arr!17203 a!3118) (index!24864 lt!261790)) k0!1914) (ite ((_ is MissingZero!5659) lt!261790) (= (select (arr!17203 a!3118) (index!24863 lt!261790)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5659) lt!261790) (= (select (arr!17203 a!3118) (index!24866 lt!261790)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329745 () SeekEntryResult!5659)

(assert (=> d!84807 (= lt!261790 e!329745)))

(declare-fun c!65609 () Bool)

(assert (=> d!84807 (= c!65609 (and ((_ is Intermediate!5659) lt!261788) (undefined!6471 lt!261788)))))

(assert (=> d!84807 (= lt!261788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84807 (validMask!0 mask!3119)))

(assert (=> d!84807 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!261790)))

(declare-fun b!573185 () Bool)

(assert (=> b!573185 (= e!329745 Undefined!5659)))

(declare-fun b!573186 () Bool)

(assert (=> b!573186 (= e!329745 e!329746)))

(assert (=> b!573186 (= lt!261789 (select (arr!17203 a!3118) (index!24865 lt!261788)))))

(declare-fun c!65610 () Bool)

(assert (=> b!573186 (= c!65610 (= lt!261789 k0!1914))))

(assert (= (and d!84807 c!65609) b!573185))

(assert (= (and d!84807 (not c!65609)) b!573186))

(assert (= (and b!573186 c!65610) b!573183))

(assert (= (and b!573186 (not c!65610)) b!573182))

(assert (= (and b!573182 c!65608) b!573184))

(assert (= (and b!573182 (not c!65608)) b!573181))

(declare-fun m!552217 () Bool)

(assert (=> b!573181 m!552217))

(declare-fun m!552219 () Bool)

(assert (=> d!84807 m!552219))

(declare-fun m!552221 () Bool)

(assert (=> d!84807 m!552221))

(declare-fun m!552223 () Bool)

(assert (=> d!84807 m!552223))

(declare-fun m!552225 () Bool)

(assert (=> d!84807 m!552225))

(declare-fun m!552227 () Bool)

(assert (=> d!84807 m!552227))

(assert (=> d!84807 m!552223))

(assert (=> d!84807 m!551991))

(declare-fun m!552229 () Bool)

(assert (=> b!573186 m!552229))

(assert (=> b!572898 d!84807))

(declare-fun b!573187 () Bool)

(declare-fun lt!261791 () SeekEntryResult!5659)

(declare-fun e!329747 () SeekEntryResult!5659)

(assert (=> b!573187 (= e!329747 (seekKeyOrZeroReturnVacant!0 (x!53755 lt!261791) (index!24865 lt!261791) (index!24865 lt!261791) (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573189 () Bool)

(declare-fun e!329749 () SeekEntryResult!5659)

(assert (=> b!573189 (= e!329749 (Found!5659 (index!24865 lt!261791)))))

(declare-fun b!573190 () Bool)

(assert (=> b!573190 (= e!329747 (MissingZero!5659 (index!24865 lt!261791)))))

(declare-fun b!573188 () Bool)

(declare-fun c!65611 () Bool)

(declare-fun lt!261792 () (_ BitVec 64))

(assert (=> b!573188 (= c!65611 (= lt!261792 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573188 (= e!329749 e!329747)))

(declare-fun d!84809 () Bool)

(declare-fun lt!261793 () SeekEntryResult!5659)

(assert (=> d!84809 (and (or ((_ is Undefined!5659) lt!261793) (not ((_ is Found!5659) lt!261793)) (and (bvsge (index!24864 lt!261793) #b00000000000000000000000000000000) (bvslt (index!24864 lt!261793) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261793) ((_ is Found!5659) lt!261793) (not ((_ is MissingZero!5659) lt!261793)) (and (bvsge (index!24863 lt!261793) #b00000000000000000000000000000000) (bvslt (index!24863 lt!261793) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261793) ((_ is Found!5659) lt!261793) ((_ is MissingZero!5659) lt!261793) (not ((_ is MissingVacant!5659) lt!261793)) (and (bvsge (index!24866 lt!261793) #b00000000000000000000000000000000) (bvslt (index!24866 lt!261793) (size!17567 a!3118)))) (or ((_ is Undefined!5659) lt!261793) (ite ((_ is Found!5659) lt!261793) (= (select (arr!17203 a!3118) (index!24864 lt!261793)) (select (arr!17203 a!3118) j!142)) (ite ((_ is MissingZero!5659) lt!261793) (= (select (arr!17203 a!3118) (index!24863 lt!261793)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5659) lt!261793) (= (select (arr!17203 a!3118) (index!24866 lt!261793)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329748 () SeekEntryResult!5659)

(assert (=> d!84809 (= lt!261793 e!329748)))

(declare-fun c!65612 () Bool)

(assert (=> d!84809 (= c!65612 (and ((_ is Intermediate!5659) lt!261791) (undefined!6471 lt!261791)))))

(assert (=> d!84809 (= lt!261791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17203 a!3118) j!142) mask!3119) (select (arr!17203 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84809 (validMask!0 mask!3119)))

(assert (=> d!84809 (= (seekEntryOrOpen!0 (select (arr!17203 a!3118) j!142) a!3118 mask!3119) lt!261793)))

(declare-fun b!573191 () Bool)

(assert (=> b!573191 (= e!329748 Undefined!5659)))

(declare-fun b!573192 () Bool)

(assert (=> b!573192 (= e!329748 e!329749)))

(assert (=> b!573192 (= lt!261792 (select (arr!17203 a!3118) (index!24865 lt!261791)))))

(declare-fun c!65613 () Bool)

(assert (=> b!573192 (= c!65613 (= lt!261792 (select (arr!17203 a!3118) j!142)))))

(assert (= (and d!84809 c!65612) b!573191))

(assert (= (and d!84809 (not c!65612)) b!573192))

(assert (= (and b!573192 c!65613) b!573189))

(assert (= (and b!573192 (not c!65613)) b!573188))

(assert (= (and b!573188 c!65611) b!573190))

(assert (= (and b!573188 (not c!65611)) b!573187))

(assert (=> b!573187 m!551997))

(declare-fun m!552231 () Bool)

(assert (=> b!573187 m!552231))

(declare-fun m!552233 () Bool)

(assert (=> d!84809 m!552233))

(declare-fun m!552235 () Bool)

(assert (=> d!84809 m!552235))

(assert (=> d!84809 m!552017))

(assert (=> d!84809 m!551997))

(declare-fun m!552237 () Bool)

(assert (=> d!84809 m!552237))

(declare-fun m!552239 () Bool)

(assert (=> d!84809 m!552239))

(assert (=> d!84809 m!551997))

(assert (=> d!84809 m!552017))

(assert (=> d!84809 m!551991))

(declare-fun m!552241 () Bool)

(assert (=> b!573192 m!552241))

(assert (=> b!572897 d!84809))

(declare-fun b!573193 () Bool)

(declare-fun e!329751 () Bool)

(declare-fun e!329750 () Bool)

(assert (=> b!573193 (= e!329751 e!329750)))

(declare-fun lt!261795 () (_ BitVec 64))

(assert (=> b!573193 (= lt!261795 (select (arr!17203 a!3118) j!142))))

(declare-fun lt!261796 () Unit!18020)

(assert (=> b!573193 (= lt!261796 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261795 j!142))))

(assert (=> b!573193 (arrayContainsKey!0 a!3118 lt!261795 #b00000000000000000000000000000000)))

(declare-fun lt!261794 () Unit!18020)

(assert (=> b!573193 (= lt!261794 lt!261796)))

(declare-fun res!362685 () Bool)

(assert (=> b!573193 (= res!362685 (= (seekEntryOrOpen!0 (select (arr!17203 a!3118) j!142) a!3118 mask!3119) (Found!5659 j!142)))))

(assert (=> b!573193 (=> (not res!362685) (not e!329750))))

(declare-fun b!573194 () Bool)

(declare-fun e!329752 () Bool)

(assert (=> b!573194 (= e!329752 e!329751)))

(declare-fun c!65614 () Bool)

(assert (=> b!573194 (= c!65614 (validKeyInArray!0 (select (arr!17203 a!3118) j!142)))))

(declare-fun bm!32632 () Bool)

(declare-fun call!32635 () Bool)

(assert (=> bm!32632 (= call!32635 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84811 () Bool)

(declare-fun res!362684 () Bool)

(assert (=> d!84811 (=> res!362684 e!329752)))

(assert (=> d!84811 (= res!362684 (bvsge j!142 (size!17567 a!3118)))))

(assert (=> d!84811 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!329752)))

(declare-fun b!573195 () Bool)

(assert (=> b!573195 (= e!329750 call!32635)))

(declare-fun b!573196 () Bool)

(assert (=> b!573196 (= e!329751 call!32635)))

(assert (= (and d!84811 (not res!362684)) b!573194))

(assert (= (and b!573194 c!65614) b!573193))

(assert (= (and b!573194 (not c!65614)) b!573196))

(assert (= (and b!573193 res!362685) b!573195))

(assert (= (or b!573195 b!573196) bm!32632))

(assert (=> b!573193 m!551997))

(declare-fun m!552243 () Bool)

(assert (=> b!573193 m!552243))

(declare-fun m!552245 () Bool)

(assert (=> b!573193 m!552245))

(assert (=> b!573193 m!551997))

(assert (=> b!573193 m!552015))

(assert (=> b!573194 m!551997))

(assert (=> b!573194 m!551997))

(assert (=> b!573194 m!552007))

(declare-fun m!552247 () Bool)

(assert (=> bm!32632 m!552247))

(assert (=> b!572897 d!84811))

(declare-fun d!84813 () Bool)

(assert (=> d!84813 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!261811 () Unit!18020)

(declare-fun choose!38 (array!35837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18020)

(assert (=> d!84813 (= lt!261811 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84813 (validMask!0 mask!3119)))

(assert (=> d!84813 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!261811)))

(declare-fun bs!17752 () Bool)

(assert (= bs!17752 d!84813))

(assert (=> bs!17752 m!552011))

(declare-fun m!552265 () Bool)

(assert (=> bs!17752 m!552265))

(assert (=> bs!17752 m!551991))

(assert (=> b!572897 d!84813))

(check-sat (not b!573125) (not bm!32621) (not b!573187) (not d!84807) (not b!573181) (not b!572961) (not d!84795) (not d!84777) (not d!84809) (not b!572960) (not bm!32632) (not d!84755) (not d!84769) (not bm!32624) (not b!573193) (not b!573178) (not b!572975) (not b!573038) (not d!84813) (not b!572976) (not b!573051) (not b!573194) (not b!573168) (not b!572977) (not b!572951) (not d!84803))
(check-sat)
