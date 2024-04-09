; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120166 () Bool)

(assert start!120166)

(declare-fun b!1398584 () Bool)

(declare-fun res!937611 () Bool)

(declare-fun e!791800 () Bool)

(assert (=> b!1398584 (=> (not res!937611) (not e!791800))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95613 0))(
  ( (array!95614 (arr!46156 (Array (_ BitVec 32) (_ BitVec 64))) (size!46707 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95613)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398584 (= res!937611 (and (= (size!46707 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46707 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46707 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398585 () Bool)

(declare-fun res!937613 () Bool)

(assert (=> b!1398585 (=> (not res!937613) (not e!791800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398585 (= res!937613 (validKeyInArray!0 (select (arr!46156 a!2901) j!112)))))

(declare-fun b!1398586 () Bool)

(declare-fun e!791802 () Bool)

(declare-fun e!791804 () Bool)

(assert (=> b!1398586 (= e!791802 e!791804)))

(declare-fun res!937614 () Bool)

(assert (=> b!1398586 (=> res!937614 e!791804)))

(declare-datatypes ((SeekEntryResult!10495 0))(
  ( (MissingZero!10495 (index!44350 (_ BitVec 32))) (Found!10495 (index!44351 (_ BitVec 32))) (Intermediate!10495 (undefined!11307 Bool) (index!44352 (_ BitVec 32)) (x!126000 (_ BitVec 32))) (Undefined!10495) (MissingVacant!10495 (index!44353 (_ BitVec 32))) )
))
(declare-fun lt!615018 () SeekEntryResult!10495)

(declare-fun lt!615020 () SeekEntryResult!10495)

(assert (=> b!1398586 (= res!937614 (or (= lt!615018 lt!615020) (not (is-Intermediate!10495 lt!615020))))))

(declare-fun lt!615019 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95613 (_ BitVec 32)) SeekEntryResult!10495)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398586 (= lt!615020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615019 mask!2840) lt!615019 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)) mask!2840))))

(assert (=> b!1398586 (= lt!615019 (select (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun e!791803 () Bool)

(declare-fun b!1398587 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95613 (_ BitVec 32)) SeekEntryResult!10495)

(assert (=> b!1398587 (= e!791803 (= (seekEntryOrOpen!0 (select (arr!46156 a!2901) j!112) a!2901 mask!2840) (Found!10495 j!112)))))

(declare-fun b!1398588 () Bool)

(declare-fun res!937612 () Bool)

(assert (=> b!1398588 (=> (not res!937612) (not e!791800))))

(declare-datatypes ((List!32855 0))(
  ( (Nil!32852) (Cons!32851 (h!34093 (_ BitVec 64)) (t!47556 List!32855)) )
))
(declare-fun arrayNoDuplicates!0 (array!95613 (_ BitVec 32) List!32855) Bool)

(assert (=> b!1398588 (= res!937612 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32852))))

(declare-fun b!1398589 () Bool)

(assert (=> b!1398589 (= e!791800 (not e!791802))))

(declare-fun res!937607 () Bool)

(assert (=> b!1398589 (=> res!937607 e!791802)))

(assert (=> b!1398589 (= res!937607 (or (not (is-Intermediate!10495 lt!615018)) (undefined!11307 lt!615018)))))

(assert (=> b!1398589 e!791803))

(declare-fun res!937609 () Bool)

(assert (=> b!1398589 (=> (not res!937609) (not e!791803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95613 (_ BitVec 32)) Bool)

(assert (=> b!1398589 (= res!937609 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46944 0))(
  ( (Unit!46945) )
))
(declare-fun lt!615022 () Unit!46944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46944)

(assert (=> b!1398589 (= lt!615022 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615021 () (_ BitVec 32))

(assert (=> b!1398589 (= lt!615018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615021 (select (arr!46156 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398589 (= lt!615021 (toIndex!0 (select (arr!46156 a!2901) j!112) mask!2840))))

(declare-fun res!937608 () Bool)

(assert (=> start!120166 (=> (not res!937608) (not e!791800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120166 (= res!937608 (validMask!0 mask!2840))))

(assert (=> start!120166 e!791800))

(assert (=> start!120166 true))

(declare-fun array_inv!35101 (array!95613) Bool)

(assert (=> start!120166 (array_inv!35101 a!2901)))

(declare-fun b!1398590 () Bool)

(declare-fun res!937610 () Bool)

(assert (=> b!1398590 (=> (not res!937610) (not e!791800))))

(assert (=> b!1398590 (= res!937610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398591 () Bool)

(assert (=> b!1398591 (= e!791804 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt (index!44352 lt!615020) #b00000000000000000000000000000000) (bvsge (index!44352 lt!615020) (bvadd #b00000000000000000000000000000001 mask!2840)) (and (bvsle (x!126000 lt!615020) #b01111111111111111111111111111110) (bvsge (x!126000 lt!615020) #b00000000000000000000000000000000))))))

(assert (=> b!1398591 (and (not (undefined!11307 lt!615020)) (= (index!44352 lt!615020) i!1037) (bvslt (x!126000 lt!615020) (x!126000 lt!615018)) (= (select (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44352 lt!615020)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615017 () Unit!46944)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46944)

(assert (=> b!1398591 (= lt!615017 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615021 (x!126000 lt!615018) (index!44352 lt!615018) (x!126000 lt!615020) (index!44352 lt!615020) (undefined!11307 lt!615020) mask!2840))))

(declare-fun b!1398592 () Bool)

(declare-fun res!937606 () Bool)

(assert (=> b!1398592 (=> (not res!937606) (not e!791800))))

(assert (=> b!1398592 (= res!937606 (validKeyInArray!0 (select (arr!46156 a!2901) i!1037)))))

(assert (= (and start!120166 res!937608) b!1398584))

(assert (= (and b!1398584 res!937611) b!1398592))

(assert (= (and b!1398592 res!937606) b!1398585))

(assert (= (and b!1398585 res!937613) b!1398590))

(assert (= (and b!1398590 res!937610) b!1398588))

(assert (= (and b!1398588 res!937612) b!1398589))

(assert (= (and b!1398589 res!937609) b!1398587))

(assert (= (and b!1398589 (not res!937607)) b!1398586))

(assert (= (and b!1398586 (not res!937614)) b!1398591))

(declare-fun m!1285865 () Bool)

(assert (=> b!1398592 m!1285865))

(assert (=> b!1398592 m!1285865))

(declare-fun m!1285867 () Bool)

(assert (=> b!1398592 m!1285867))

(declare-fun m!1285869 () Bool)

(assert (=> b!1398587 m!1285869))

(assert (=> b!1398587 m!1285869))

(declare-fun m!1285871 () Bool)

(assert (=> b!1398587 m!1285871))

(declare-fun m!1285873 () Bool)

(assert (=> b!1398591 m!1285873))

(declare-fun m!1285875 () Bool)

(assert (=> b!1398591 m!1285875))

(declare-fun m!1285877 () Bool)

(assert (=> b!1398591 m!1285877))

(assert (=> b!1398585 m!1285869))

(assert (=> b!1398585 m!1285869))

(declare-fun m!1285879 () Bool)

(assert (=> b!1398585 m!1285879))

(declare-fun m!1285881 () Bool)

(assert (=> start!120166 m!1285881))

(declare-fun m!1285883 () Bool)

(assert (=> start!120166 m!1285883))

(declare-fun m!1285885 () Bool)

(assert (=> b!1398586 m!1285885))

(assert (=> b!1398586 m!1285873))

(assert (=> b!1398586 m!1285885))

(declare-fun m!1285887 () Bool)

(assert (=> b!1398586 m!1285887))

(declare-fun m!1285889 () Bool)

(assert (=> b!1398586 m!1285889))

(assert (=> b!1398589 m!1285869))

(declare-fun m!1285891 () Bool)

(assert (=> b!1398589 m!1285891))

(assert (=> b!1398589 m!1285869))

(assert (=> b!1398589 m!1285869))

(declare-fun m!1285893 () Bool)

(assert (=> b!1398589 m!1285893))

(declare-fun m!1285895 () Bool)

(assert (=> b!1398589 m!1285895))

(declare-fun m!1285897 () Bool)

(assert (=> b!1398589 m!1285897))

(declare-fun m!1285899 () Bool)

(assert (=> b!1398590 m!1285899))

(declare-fun m!1285901 () Bool)

(assert (=> b!1398588 m!1285901))

(push 1)

(assert (not b!1398585))

(assert (not start!120166))

(assert (not b!1398586))

(assert (not b!1398590))

(assert (not b!1398587))

(assert (not b!1398588))

(assert (not b!1398589))

(assert (not b!1398592))

(assert (not b!1398591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150879 () Bool)

(assert (=> d!150879 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120166 d!150879))

(declare-fun d!150881 () Bool)

(assert (=> d!150881 (= (array_inv!35101 a!2901) (bvsge (size!46707 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120166 d!150881))

(declare-fun d!150883 () Bool)

(assert (=> d!150883 (= (validKeyInArray!0 (select (arr!46156 a!2901) j!112)) (and (not (= (select (arr!46156 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46156 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398585 d!150883))

(declare-fun d!150885 () Bool)

(assert (=> d!150885 (and (not (undefined!11307 lt!615020)) (= (index!44352 lt!615020) i!1037) (bvslt (x!126000 lt!615020) (x!126000 lt!615018)))))

(declare-fun lt!615077 () Unit!46944)

(declare-fun choose!62 (array!95613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46944)

(assert (=> d!150885 (= lt!615077 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615021 (x!126000 lt!615018) (index!44352 lt!615018) (x!126000 lt!615020) (index!44352 lt!615020) (undefined!11307 lt!615020) mask!2840))))

(assert (=> d!150885 (validMask!0 mask!2840)))

(assert (=> d!150885 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615021 (x!126000 lt!615018) (index!44352 lt!615018) (x!126000 lt!615020) (index!44352 lt!615020) (undefined!11307 lt!615020) mask!2840) lt!615077)))

(declare-fun bs!40716 () Bool)

(assert (= bs!40716 d!150885))

(declare-fun m!1285987 () Bool)

(assert (=> bs!40716 m!1285987))

(assert (=> bs!40716 m!1285881))

(assert (=> b!1398591 d!150885))

(declare-fun b!1398717 () Bool)

(declare-fun e!791882 () SeekEntryResult!10495)

(assert (=> b!1398717 (= e!791882 (Intermediate!10495 false (toIndex!0 lt!615019 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1398718 () Bool)

(declare-fun lt!615101 () SeekEntryResult!10495)

(assert (=> b!1398718 (and (bvsge (index!44352 lt!615101) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615101) (size!46707 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)))))))

(declare-fun res!937698 () Bool)

(assert (=> b!1398718 (= res!937698 (= (select (arr!46156 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901))) (index!44352 lt!615101)) lt!615019))))

(declare-fun e!791880 () Bool)

(assert (=> b!1398718 (=> res!937698 e!791880)))

(declare-fun e!791881 () Bool)

(assert (=> b!1398718 (= e!791881 e!791880)))

(declare-fun b!1398719 () Bool)

(assert (=> b!1398719 (and (bvsge (index!44352 lt!615101) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615101) (size!46707 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)))))))

(declare-fun res!937697 () Bool)

(assert (=> b!1398719 (= res!937697 (= (select (arr!46156 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901))) (index!44352 lt!615101)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1398719 (=> res!937697 e!791880)))

(declare-fun b!1398720 () Bool)

(assert (=> b!1398720 (and (bvsge (index!44352 lt!615101) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615101) (size!46707 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)))))))

(assert (=> b!1398720 (= e!791880 (= (select (arr!46156 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901))) (index!44352 lt!615101)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1398716 () Bool)

(declare-fun e!791878 () SeekEntryResult!10495)

(assert (=> b!1398716 (= e!791878 (Intermediate!10495 true (toIndex!0 lt!615019 mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!150889 () Bool)

(declare-fun e!791879 () Bool)

(assert (=> d!150889 e!791879))

(declare-fun c!129971 () Bool)

(assert (=> d!150889 (= c!129971 (and (is-Intermediate!10495 lt!615101) (undefined!11307 lt!615101)))))

(assert (=> d!150889 (= lt!615101 e!791878)))

(declare-fun c!129969 () Bool)

(assert (=> d!150889 (= c!129969 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615102 () (_ BitVec 64))

(assert (=> d!150889 (= lt!615102 (select (arr!46156 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901))) (toIndex!0 lt!615019 mask!2840)))))

(assert (=> d!150889 (validMask!0 mask!2840)))

(assert (=> d!150889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615019 mask!2840) lt!615019 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)) mask!2840) lt!615101)))

(declare-fun b!1398721 () Bool)

(assert (=> b!1398721 (= e!791879 (bvsge (x!126000 lt!615101) #b01111111111111111111111111111110))))

(declare-fun b!1398722 () Bool)

(assert (=> b!1398722 (= e!791879 e!791881)))

(declare-fun res!937699 () Bool)

(assert (=> b!1398722 (= res!937699 (and (is-Intermediate!10495 lt!615101) (not (undefined!11307 lt!615101)) (bvslt (x!126000 lt!615101) #b01111111111111111111111111111110) (bvsge (x!126000 lt!615101) #b00000000000000000000000000000000) (bvsge (x!126000 lt!615101) #b00000000000000000000000000000000)))))

(assert (=> b!1398722 (=> (not res!937699) (not e!791881))))

(declare-fun b!1398723 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398723 (= e!791882 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615019 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615019 (array!95614 (store (arr!46156 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46707 a!2901)) mask!2840))))

(declare-fun b!1398724 () Bool)

(assert (=> b!1398724 (= e!791878 e!791882)))

(declare-fun c!129970 () Bool)

(assert (=> b!1398724 (= c!129970 (or (= lt!615102 lt!615019) (= (bvadd lt!615102 lt!615102) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150889 c!129969) b!1398716))

(assert (= (and d!150889 (not c!129969)) b!1398724))

(assert (= (and b!1398724 c!129970) b!1398717))

(assert (= (and b!1398724 (not c!129970)) b!1398723))

(assert (= (and d!150889 c!129971) b!1398721))

(assert (= (and d!150889 (not c!129971)) b!1398722))

(assert (= (and b!1398722 res!937699) b!1398718))

(assert (= (and b!1398718 (not res!937698)) b!1398719))

(assert (= (and b!1398719 (not res!937697)) b!1398720))

(declare-fun m!1286009 () Bool)

(assert (=> b!1398720 m!1286009))

(assert (=> b!1398718 m!1286009))

(assert (=> d!150889 m!1285885))

(declare-fun m!1286011 () Bool)

(assert (=> d!150889 m!1286011))

(assert (=> d!150889 m!1285881))

(assert (=> b!1398719 m!1286009))

(assert (=> b!1398723 m!1285885))

(declare-fun m!1286013 () Bool)

(assert (=> b!1398723 m!1286013))

(assert (=> b!1398723 m!1286013))

(declare-fun m!1286015 () Bool)

(assert (=> b!1398723 m!1286015))

(assert (=> b!1398586 d!150889))

(declare-fun d!150901 () Bool)

(declare-fun lt!615109 () (_ BitVec 32))

(declare-fun lt!615108 () (_ BitVec 32))

(assert (=> d!150901 (= lt!615109 (bvmul (bvxor lt!615108 (bvlshr lt!615108 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150901 (= lt!615108 ((_ extract 31 0) (bvand (bvxor lt!615019 (bvlshr lt!615019 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150901 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!937700 (let ((h!34097 ((_ extract 31 0) (bvand (bvxor lt!615019 (bvlshr lt!615019 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126008 (bvmul (bvxor h!34097 (bvlshr h!34097 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126008 (bvlshr x!126008 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!937700 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!937700 #b00000000000000000000000000000000))))))

(assert (=> d!150901 (= (toIndex!0 lt!615019 mask!2840) (bvand (bvxor lt!615109 (bvlshr lt!615109 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1398586 d!150901))

(declare-fun d!150905 () Bool)

(assert (=> d!150905 (= (validKeyInArray!0 (select (arr!46156 a!2901) i!1037)) (and (not (= (select (arr!46156 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46156 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398592 d!150905))

(declare-fun b!1398749 () Bool)

(declare-fun lt!615123 () SeekEntryResult!10495)

(declare-fun e!791895 () SeekEntryResult!10495)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95613 (_ BitVec 32)) SeekEntryResult!10495)

(assert (=> b!1398749 (= e!791895 (seekKeyOrZeroReturnVacant!0 (x!126000 lt!615123) (index!44352 lt!615123) (index!44352 lt!615123) (select (arr!46156 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1398750 () Bool)

(declare-fun c!129985 () Bool)

(declare-fun lt!615122 () (_ BitVec 64))

(assert (=> b!1398750 (= c!129985 (= lt!615122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!791896 () SeekEntryResult!10495)

(assert (=> b!1398750 (= e!791896 e!791895)))

(declare-fun b!1398751 () Bool)

(assert (=> b!1398751 (= e!791896 (Found!10495 (index!44352 lt!615123)))))

(declare-fun b!1398753 () Bool)

(declare-fun e!791897 () SeekEntryResult!10495)

(assert (=> b!1398753 (= e!791897 Undefined!10495)))

(declare-fun b!1398754 () Bool)

(assert (=> b!1398754 (= e!791897 e!791896)))

(assert (=> b!1398754 (= lt!615122 (select (arr!46156 a!2901) (index!44352 lt!615123)))))

(declare-fun c!129984 () Bool)

(assert (=> b!1398754 (= c!129984 (= lt!615122 (select (arr!46156 a!2901) j!112)))))

(declare-fun d!150907 () Bool)

(declare-fun lt!615124 () SeekEntryResult!10495)

(assert (=> d!150907 (and (or (is-Undefined!10495 lt!615124) (not (is-Found!10495 lt!615124)) (and (bvsge (index!44351 lt!615124) #b00000000000000000000000000000000) (bvslt (index!44351 lt!615124) (size!46707 a!2901)))) (or (is-Undefined!10495 lt!615124) (is-Found!10495 lt!615124) (not (is-MissingZero!10495 lt!615124)) (and (bvsge (index!44350 lt!615124) #b00000000000000000000000000000000) (bvslt (index!44350 lt!615124) (size!46707 a!2901)))) (or (is-Undefined!10495 lt!615124) (is-Found!10495 lt!615124) (is-MissingZero!10495 lt!615124) (not (is-MissingVacant!10495 lt!615124)) (and (bvsge (index!44353 lt!615124) #b00000000000000000000000000000000) (bvslt (index!44353 lt!615124) (size!46707 a!2901)))) (or (is-Undefined!10495 lt!615124) (ite (is-Found!10495 lt!615124) (= (select (arr!46156 a!2901) (index!44351 lt!615124)) (select (arr!46156 a!2901) j!112)) (ite (is-MissingZero!10495 lt!615124) (= (select (arr!46156 a!2901) (index!44350 lt!615124)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10495 lt!615124) (= (select (arr!46156 a!2901) (index!44353 lt!615124)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150907 (= lt!615124 e!791897)))

(declare-fun c!129986 () Bool)

(assert (=> d!150907 (= c!129986 (and (is-Intermediate!10495 lt!615123) (undefined!11307 lt!615123)))))

(assert (=> d!150907 (= lt!615123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46156 a!2901) j!112) mask!2840) (select (arr!46156 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150907 (validMask!0 mask!2840)))

(assert (=> d!150907 (= (seekEntryOrOpen!0 (select (arr!46156 a!2901) j!112) a!2901 mask!2840) lt!615124)))

(declare-fun b!1398752 () Bool)

(assert (=> b!1398752 (= e!791895 (MissingZero!10495 (index!44352 lt!615123)))))

(assert (= (and d!150907 c!129986) b!1398753))

(assert (= (and d!150907 (not c!129986)) b!1398754))

(assert (= (and b!1398754 c!129984) b!1398751))

(assert (= (and b!1398754 (not c!129984)) b!1398750))

(assert (= (and b!1398750 c!129985) b!1398752))

(assert (= (and b!1398750 (not c!129985)) b!1398749))

(assert (=> b!1398749 m!1285869))

(declare-fun m!1286019 () Bool)

(assert (=> b!1398749 m!1286019))

(declare-fun m!1286021 () Bool)

(assert (=> b!1398754 m!1286021))

(assert (=> d!150907 m!1285881))

(declare-fun m!1286023 () Bool)

(assert (=> d!150907 m!1286023))

(assert (=> d!150907 m!1285869))

(assert (=> d!150907 m!1285891))

(assert (=> d!150907 m!1285891))

(assert (=> d!150907 m!1285869))

(declare-fun m!1286025 () Bool)

(assert (=> d!150907 m!1286025))

(declare-fun m!1286027 () Bool)

(assert (=> d!150907 m!1286027))

(declare-fun m!1286029 () Bool)

(assert (=> d!150907 m!1286029))

(assert (=> b!1398587 d!150907))

(declare-fun bm!66870 () Bool)

(declare-fun call!66873 () Bool)

(declare-fun c!129992 () Bool)

(assert (=> bm!66870 (= call!66873 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129992 (Cons!32851 (select (arr!46156 a!2901) #b00000000000000000000000000000000) Nil!32852) Nil!32852)))))

(declare-fun b!1398771 () Bool)

(declare-fun e!791911 () Bool)

(assert (=> b!1398771 (= e!791911 call!66873)))

(declare-fun d!150913 () Bool)

(declare-fun res!937707 () Bool)

(declare-fun e!791910 () Bool)

(assert (=> d!150913 (=> res!937707 e!791910)))

(assert (=> d!150913 (= res!937707 (bvsge #b00000000000000000000000000000000 (size!46707 a!2901)))))

(assert (=> d!150913 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32852) e!791910)))

(declare-fun b!1398772 () Bool)

(assert (=> b!1398772 (= e!791911 call!66873)))

(declare-fun b!1398773 () Bool)

(declare-fun e!791909 () Bool)

(declare-fun contains!9796 (List!32855 (_ BitVec 64)) Bool)

(assert (=> b!1398773 (= e!791909 (contains!9796 Nil!32852 (select (arr!46156 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398774 () Bool)

(declare-fun e!791912 () Bool)

(assert (=> b!1398774 (= e!791910 e!791912)))

(declare-fun res!937709 () Bool)

(assert (=> b!1398774 (=> (not res!937709) (not e!791912))))

(assert (=> b!1398774 (= res!937709 (not e!791909))))

(declare-fun res!937708 () Bool)

(assert (=> b!1398774 (=> (not res!937708) (not e!791909))))

(assert (=> b!1398774 (= res!937708 (validKeyInArray!0 (select (arr!46156 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398775 () Bool)

(assert (=> b!1398775 (= e!791912 e!791911)))

(assert (=> b!1398775 (= c!129992 (validKeyInArray!0 (select (arr!46156 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150913 (not res!937707)) b!1398774))

(assert (= (and b!1398774 res!937708) b!1398773))

(assert (= (and b!1398774 res!937709) b!1398775))

(assert (= (and b!1398775 c!129992) b!1398771))

(assert (= (and b!1398775 (not c!129992)) b!1398772))

(assert (= (or b!1398771 b!1398772) bm!66870))

(declare-fun m!1286043 () Bool)

(assert (=> bm!66870 m!1286043))

(declare-fun m!1286045 () Bool)

(assert (=> bm!66870 m!1286045))

(assert (=> b!1398773 m!1286043))

(assert (=> b!1398773 m!1286043))

(declare-fun m!1286047 () Bool)

(assert (=> b!1398773 m!1286047))

(assert (=> b!1398774 m!1286043))

(assert (=> b!1398774 m!1286043))

(declare-fun m!1286049 () Bool)

(assert (=> b!1398774 m!1286049))

(assert (=> b!1398775 m!1286043))

(assert (=> b!1398775 m!1286043))

(assert (=> b!1398775 m!1286049))

(assert (=> b!1398588 d!150913))

(declare-fun d!150919 () Bool)

(declare-fun res!937714 () Bool)

(declare-fun e!791924 () Bool)

(assert (=> d!150919 (=> res!937714 e!791924)))

(assert (=> d!150919 (= res!937714 (bvsge j!112 (size!46707 a!2901)))))

(assert (=> d!150919 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!791924)))

(declare-fun b!1398792 () Bool)

(declare-fun e!791925 () Bool)

(declare-fun e!791923 () Bool)

(assert (=> b!1398792 (= e!791925 e!791923)))

(declare-fun lt!615140 () (_ BitVec 64))

(assert (=> b!1398792 (= lt!615140 (select (arr!46156 a!2901) j!112))))

(declare-fun lt!615138 () Unit!46944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95613 (_ BitVec 64) (_ BitVec 32)) Unit!46944)

(assert (=> b!1398792 (= lt!615138 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615140 j!112))))

(declare-fun arrayContainsKey!0 (array!95613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1398792 (arrayContainsKey!0 a!2901 lt!615140 #b00000000000000000000000000000000)))

(declare-fun lt!615139 () Unit!46944)

(assert (=> b!1398792 (= lt!615139 lt!615138)))

(declare-fun res!937715 () Bool)

(assert (=> b!1398792 (= res!937715 (= (seekEntryOrOpen!0 (select (arr!46156 a!2901) j!112) a!2901 mask!2840) (Found!10495 j!112)))))

(assert (=> b!1398792 (=> (not res!937715) (not e!791923))))

(declare-fun b!1398793 () Bool)

(declare-fun call!66876 () Bool)

(assert (=> b!1398793 (= e!791925 call!66876)))

(declare-fun b!1398794 () Bool)

(assert (=> b!1398794 (= e!791924 e!791925)))

(declare-fun c!129999 () Bool)

(assert (=> b!1398794 (= c!129999 (validKeyInArray!0 (select (arr!46156 a!2901) j!112)))))

(declare-fun b!1398795 () Bool)

(assert (=> b!1398795 (= e!791923 call!66876)))

(declare-fun bm!66873 () Bool)

(assert (=> bm!66873 (= call!66876 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150919 (not res!937714)) b!1398794))

(assert (= (and b!1398794 c!129999) b!1398792))

(assert (= (and b!1398794 (not c!129999)) b!1398793))

(assert (= (and b!1398792 res!937715) b!1398795))

(assert (= (or b!1398795 b!1398793) bm!66873))

(assert (=> b!1398792 m!1285869))

(declare-fun m!1286051 () Bool)

(assert (=> b!1398792 m!1286051))

(declare-fun m!1286053 () Bool)

(assert (=> b!1398792 m!1286053))

(assert (=> b!1398792 m!1285869))

(assert (=> b!1398792 m!1285871))

(assert (=> b!1398794 m!1285869))

(assert (=> b!1398794 m!1285869))

(assert (=> b!1398794 m!1285879))

(declare-fun m!1286055 () Bool)

(assert (=> bm!66873 m!1286055))

(assert (=> b!1398589 d!150919))

(declare-fun d!150921 () Bool)

(assert (=> d!150921 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!615143 () Unit!46944)

(declare-fun choose!38 (array!95613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46944)

(assert (=> d!150921 (= lt!615143 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150921 (validMask!0 mask!2840)))

(assert (=> d!150921 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!615143)))

(declare-fun bs!40718 () Bool)

(assert (= bs!40718 d!150921))

(assert (=> bs!40718 m!1285897))

(declare-fun m!1286057 () Bool)

(assert (=> bs!40718 m!1286057))

(assert (=> bs!40718 m!1285881))

(assert (=> b!1398589 d!150921))

(declare-fun b!1398807 () Bool)

(declare-fun e!791936 () SeekEntryResult!10495)

(assert (=> b!1398807 (= e!791936 (Intermediate!10495 false lt!615021 #b00000000000000000000000000000000))))

(declare-fun b!1398808 () Bool)

(declare-fun lt!615144 () SeekEntryResult!10495)

(assert (=> b!1398808 (and (bvsge (index!44352 lt!615144) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615144) (size!46707 a!2901)))))

(declare-fun res!937723 () Bool)

(assert (=> b!1398808 (= res!937723 (= (select (arr!46156 a!2901) (index!44352 lt!615144)) (select (arr!46156 a!2901) j!112)))))

(declare-fun e!791934 () Bool)

(assert (=> b!1398808 (=> res!937723 e!791934)))

(declare-fun e!791935 () Bool)

(assert (=> b!1398808 (= e!791935 e!791934)))

(declare-fun b!1398809 () Bool)

(assert (=> b!1398809 (and (bvsge (index!44352 lt!615144) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615144) (size!46707 a!2901)))))

(declare-fun res!937722 () Bool)

(assert (=> b!1398809 (= res!937722 (= (select (arr!46156 a!2901) (index!44352 lt!615144)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1398809 (=> res!937722 e!791934)))

(declare-fun b!1398810 () Bool)

(assert (=> b!1398810 (and (bvsge (index!44352 lt!615144) #b00000000000000000000000000000000) (bvslt (index!44352 lt!615144) (size!46707 a!2901)))))

(assert (=> b!1398810 (= e!791934 (= (select (arr!46156 a!2901) (index!44352 lt!615144)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1398806 () Bool)

(declare-fun e!791932 () SeekEntryResult!10495)

(assert (=> b!1398806 (= e!791932 (Intermediate!10495 true lt!615021 #b00000000000000000000000000000000))))

(declare-fun d!150923 () Bool)

(declare-fun e!791933 () Bool)

(assert (=> d!150923 e!791933))

(declare-fun c!130004 () Bool)

(assert (=> d!150923 (= c!130004 (and (is-Intermediate!10495 lt!615144) (undefined!11307 lt!615144)))))

(assert (=> d!150923 (= lt!615144 e!791932)))

(declare-fun c!130002 () Bool)

(assert (=> d!150923 (= c!130002 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615145 () (_ BitVec 64))

(assert (=> d!150923 (= lt!615145 (select (arr!46156 a!2901) lt!615021))))

(assert (=> d!150923 (validMask!0 mask!2840)))

(assert (=> d!150923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615021 (select (arr!46156 a!2901) j!112) a!2901 mask!2840) lt!615144)))

(declare-fun b!1398811 () Bool)

(assert (=> b!1398811 (= e!791933 (bvsge (x!126000 lt!615144) #b01111111111111111111111111111110))))

(declare-fun b!1398812 () Bool)

(assert (=> b!1398812 (= e!791933 e!791935)))

(declare-fun res!937724 () Bool)

(assert (=> b!1398812 (= res!937724 (and (is-Intermediate!10495 lt!615144) (not (undefined!11307 lt!615144)) (bvslt (x!126000 lt!615144) #b01111111111111111111111111111110) (bvsge (x!126000 lt!615144) #b00000000000000000000000000000000) (bvsge (x!126000 lt!615144) #b00000000000000000000000000000000)))))

(assert (=> b!1398812 (=> (not res!937724) (not e!791935))))

(declare-fun b!1398813 () Bool)

(assert (=> b!1398813 (= e!791936 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!615021 #b00000000000000000000000000000000 mask!2840) (select (arr!46156 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1398814 () Bool)

(assert (=> b!1398814 (= e!791932 e!791936)))

(declare-fun c!130003 () Bool)

(assert (=> b!1398814 (= c!130003 (or (= lt!615145 (select (arr!46156 a!2901) j!112)) (= (bvadd lt!615145 lt!615145) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150923 c!130002) b!1398806))

(assert (= (and d!150923 (not c!130002)) b!1398814))

(assert (= (and b!1398814 c!130003) b!1398807))

(assert (= (and b!1398814 (not c!130003)) b!1398813))

(assert (= (and d!150923 c!130004) b!1398811))

(assert (= (and d!150923 (not c!130004)) b!1398812))

(assert (= (and b!1398812 res!937724) b!1398808))

(assert (= (and b!1398808 (not res!937723)) b!1398809))

(assert (= (and b!1398809 (not res!937722)) b!1398810))

(declare-fun m!1286059 () Bool)

(assert (=> b!1398810 m!1286059))

(assert (=> b!1398808 m!1286059))

(declare-fun m!1286061 () Bool)

(assert (=> d!150923 m!1286061))

(assert (=> d!150923 m!1285881))

(assert (=> b!1398809 m!1286059))

(declare-fun m!1286063 () Bool)

(assert (=> b!1398813 m!1286063))

(assert (=> b!1398813 m!1286063))

(assert (=> b!1398813 m!1285869))

(declare-fun m!1286065 () Bool)

(assert (=> b!1398813 m!1286065))

(assert (=> b!1398589 d!150923))

(declare-fun d!150927 () Bool)

(declare-fun lt!615147 () (_ BitVec 32))

(declare-fun lt!615146 () (_ BitVec 32))

(assert (=> d!150927 (= lt!615147 (bvmul (bvxor lt!615146 (bvlshr lt!615146 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150927 (= lt!615146 ((_ extract 31 0) (bvand (bvxor (select (arr!46156 a!2901) j!112) (bvlshr (select (arr!46156 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150927 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!937700 (let ((h!34097 ((_ extract 31 0) (bvand (bvxor (select (arr!46156 a!2901) j!112) (bvlshr (select (arr!46156 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126008 (bvmul (bvxor h!34097 (bvlshr h!34097 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126008 (bvlshr x!126008 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!937700 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!937700 #b00000000000000000000000000000000))))))

(assert (=> d!150927 (= (toIndex!0 (select (arr!46156 a!2901) j!112) mask!2840) (bvand (bvxor lt!615147 (bvlshr lt!615147 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1398589 d!150927))

(declare-fun d!150931 () Bool)

(declare-fun res!937725 () Bool)

(declare-fun e!791938 () Bool)

(assert (=> d!150931 (=> res!937725 e!791938)))

(assert (=> d!150931 (= res!937725 (bvsge #b00000000000000000000000000000000 (size!46707 a!2901)))))

(assert (=> d!150931 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!791938)))

(declare-fun b!1398815 () Bool)

(declare-fun e!791939 () Bool)

(declare-fun e!791937 () Bool)

(assert (=> b!1398815 (= e!791939 e!791937)))

(declare-fun lt!615150 () (_ BitVec 64))

(assert (=> b!1398815 (= lt!615150 (select (arr!46156 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615148 () Unit!46944)

(assert (=> b!1398815 (= lt!615148 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615150 #b00000000000000000000000000000000))))

(assert (=> b!1398815 (arrayContainsKey!0 a!2901 lt!615150 #b00000000000000000000000000000000)))

(declare-fun lt!615149 () Unit!46944)

(assert (=> b!1398815 (= lt!615149 lt!615148)))

(declare-fun res!937726 () Bool)

(assert (=> b!1398815 (= res!937726 (= (seekEntryOrOpen!0 (select (arr!46156 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10495 #b00000000000000000000000000000000)))))

(assert (=> b!1398815 (=> (not res!937726) (not e!791937))))

(declare-fun b!1398816 () Bool)

(declare-fun call!66877 () Bool)

(assert (=> b!1398816 (= e!791939 call!66877)))

(declare-fun b!1398817 () Bool)

(assert (=> b!1398817 (= e!791938 e!791939)))

(declare-fun c!130005 () Bool)

(assert (=> b!1398817 (= c!130005 (validKeyInArray!0 (select (arr!46156 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398818 () Bool)

(assert (=> b!1398818 (= e!791937 call!66877)))

(declare-fun bm!66874 () Bool)

(assert (=> bm!66874 (= call!66877 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150931 (not res!937725)) b!1398817))

(assert (= (and b!1398817 c!130005) b!1398815))

(assert (= (and b!1398817 (not c!130005)) b!1398816))

(assert (= (and b!1398815 res!937726) b!1398818))

(assert (= (or b!1398818 b!1398816) bm!66874))

(assert (=> b!1398815 m!1286043))

(declare-fun m!1286067 () Bool)

(assert (=> b!1398815 m!1286067))

(declare-fun m!1286069 () Bool)

(assert (=> b!1398815 m!1286069))

(assert (=> b!1398815 m!1286043))

(declare-fun m!1286071 () Bool)

(assert (=> b!1398815 m!1286071))

(assert (=> b!1398817 m!1286043))

(assert (=> b!1398817 m!1286043))

(assert (=> b!1398817 m!1286049))

(declare-fun m!1286073 () Bool)

(assert (=> bm!66874 m!1286073))

(assert (=> b!1398590 d!150931))

(push 1)

(assert (not b!1398749))

(assert (not b!1398723))

(assert (not d!150923))

(assert (not bm!66874))

(assert (not d!150885))

(assert (not b!1398817))

(assert (not d!150889))

(assert (not b!1398815))

(assert (not b!1398773))

(assert (not b!1398792))

(assert (not b!1398794))

(assert (not b!1398775))

(assert (not b!1398774))

(assert (not d!150907))

(assert (not b!1398813))

(assert (not d!150921))

(assert (not bm!66870))

(assert (not bm!66873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

