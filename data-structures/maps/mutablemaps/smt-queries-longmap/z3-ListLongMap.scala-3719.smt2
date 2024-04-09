; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51196 () Bool)

(assert start!51196)

(declare-fun b!558874 () Bool)

(declare-fun res!350654 () Bool)

(declare-fun e!321966 () Bool)

(assert (=> b!558874 (=> (not res!350654) (not e!321966))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558874 (= res!350654 (validKeyInArray!0 k0!1914))))

(declare-fun b!558875 () Bool)

(declare-fun res!350651 () Bool)

(assert (=> b!558875 (=> (not res!350651) (not e!321966))))

(declare-datatypes ((array!35141 0))(
  ( (array!35142 (arr!16870 (Array (_ BitVec 32) (_ BitVec 64))) (size!17234 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35141)

(declare-fun arrayContainsKey!0 (array!35141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558875 (= res!350651 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558876 () Bool)

(declare-fun res!350649 () Bool)

(declare-fun e!321965 () Bool)

(assert (=> b!558876 (=> (not res!350649) (not e!321965))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35141 (_ BitVec 32)) Bool)

(assert (=> b!558876 (= res!350649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558877 () Bool)

(declare-fun res!350650 () Bool)

(assert (=> b!558877 (=> (not res!350650) (not e!321966))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!558877 (= res!350650 (validKeyInArray!0 (select (arr!16870 a!3118) j!142)))))

(declare-fun b!558878 () Bool)

(assert (=> b!558878 (= e!321966 e!321965)))

(declare-fun res!350659 () Bool)

(assert (=> b!558878 (=> (not res!350659) (not e!321965))))

(declare-datatypes ((SeekEntryResult!5326 0))(
  ( (MissingZero!5326 (index!23531 (_ BitVec 32))) (Found!5326 (index!23532 (_ BitVec 32))) (Intermediate!5326 (undefined!6138 Bool) (index!23533 (_ BitVec 32)) (x!52462 (_ BitVec 32))) (Undefined!5326) (MissingVacant!5326 (index!23534 (_ BitVec 32))) )
))
(declare-fun lt!254043 () SeekEntryResult!5326)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558878 (= res!350659 (or (= lt!254043 (MissingZero!5326 i!1132)) (= lt!254043 (MissingVacant!5326 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35141 (_ BitVec 32)) SeekEntryResult!5326)

(assert (=> b!558878 (= lt!254043 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558879 () Bool)

(declare-fun res!350652 () Bool)

(assert (=> b!558879 (=> (not res!350652) (not e!321966))))

(assert (=> b!558879 (= res!350652 (and (= (size!17234 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17234 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17234 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558880 () Bool)

(declare-fun e!321964 () Bool)

(declare-fun e!321961 () Bool)

(assert (=> b!558880 (= e!321964 e!321961)))

(declare-fun res!350657 () Bool)

(assert (=> b!558880 (=> res!350657 e!321961)))

(declare-fun lt!254047 () SeekEntryResult!5326)

(get-info :version)

(assert (=> b!558880 (= res!350657 (or (undefined!6138 lt!254047) (not ((_ is Intermediate!5326) lt!254047))))))

(declare-fun b!558873 () Bool)

(declare-fun res!350658 () Bool)

(assert (=> b!558873 (=> (not res!350658) (not e!321965))))

(declare-datatypes ((List!11003 0))(
  ( (Nil!11000) (Cons!10999 (h!11996 (_ BitVec 64)) (t!17239 List!11003)) )
))
(declare-fun arrayNoDuplicates!0 (array!35141 (_ BitVec 32) List!11003) Bool)

(assert (=> b!558873 (= res!350658 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11000))))

(declare-fun res!350653 () Bool)

(assert (=> start!51196 (=> (not res!350653) (not e!321966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51196 (= res!350653 (validMask!0 mask!3119))))

(assert (=> start!51196 e!321966))

(assert (=> start!51196 true))

(declare-fun array_inv!12644 (array!35141) Bool)

(assert (=> start!51196 (array_inv!12644 a!3118)))

(declare-fun b!558881 () Bool)

(declare-fun e!321963 () Bool)

(assert (=> b!558881 (= e!321965 e!321963)))

(declare-fun res!350660 () Bool)

(assert (=> b!558881 (=> (not res!350660) (not e!321963))))

(declare-fun lt!254048 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35141 (_ BitVec 32)) SeekEntryResult!5326)

(assert (=> b!558881 (= res!350660 (= lt!254047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254048 (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)) mask!3119)))))

(declare-fun lt!254046 () (_ BitVec 32))

(assert (=> b!558881 (= lt!254047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254046 (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558881 (= lt!254048 (toIndex!0 (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558881 (= lt!254046 (toIndex!0 (select (arr!16870 a!3118) j!142) mask!3119))))

(declare-fun b!558882 () Bool)

(declare-fun e!321962 () Bool)

(assert (=> b!558882 (= e!321961 e!321962)))

(declare-fun res!350656 () Bool)

(assert (=> b!558882 (=> res!350656 e!321962)))

(declare-fun lt!254044 () (_ BitVec 64))

(assert (=> b!558882 (= res!350656 (or (= lt!254044 (select (arr!16870 a!3118) j!142)) (= lt!254044 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!558882 (= lt!254044 (select (arr!16870 a!3118) (index!23533 lt!254047)))))

(declare-fun b!558883 () Bool)

(assert (=> b!558883 (= e!321963 (not (or (undefined!6138 lt!254047) (not ((_ is Intermediate!5326) lt!254047)) (let ((bdg!16952 (select (arr!16870 a!3118) (index!23533 lt!254047)))) (or (= bdg!16952 (select (arr!16870 a!3118) j!142)) (= bdg!16952 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23533 lt!254047) #b00000000000000000000000000000000) (bvsge (index!23533 lt!254047) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52462 lt!254047) #b01111111111111111111111111111110) (bvsge (x!52462 lt!254047) #b00000000000000000000000000000000)))))))))

(assert (=> b!558883 e!321964))

(declare-fun res!350655 () Bool)

(assert (=> b!558883 (=> (not res!350655) (not e!321964))))

(declare-fun lt!254045 () SeekEntryResult!5326)

(assert (=> b!558883 (= res!350655 (= lt!254045 (Found!5326 j!142)))))

(assert (=> b!558883 (= lt!254045 (seekEntryOrOpen!0 (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558883 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17426 0))(
  ( (Unit!17427) )
))
(declare-fun lt!254042 () Unit!17426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17426)

(assert (=> b!558883 (= lt!254042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558884 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35141 (_ BitVec 32)) SeekEntryResult!5326)

(assert (=> b!558884 (= e!321962 (= lt!254045 (seekKeyOrZeroReturnVacant!0 (x!52462 lt!254047) (index!23533 lt!254047) (index!23533 lt!254047) (select (arr!16870 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51196 res!350653) b!558879))

(assert (= (and b!558879 res!350652) b!558877))

(assert (= (and b!558877 res!350650) b!558874))

(assert (= (and b!558874 res!350654) b!558875))

(assert (= (and b!558875 res!350651) b!558878))

(assert (= (and b!558878 res!350659) b!558876))

(assert (= (and b!558876 res!350649) b!558873))

(assert (= (and b!558873 res!350658) b!558881))

(assert (= (and b!558881 res!350660) b!558883))

(assert (= (and b!558883 res!350655) b!558880))

(assert (= (and b!558880 (not res!350657)) b!558882))

(assert (= (and b!558882 (not res!350656)) b!558884))

(declare-fun m!536825 () Bool)

(assert (=> b!558874 m!536825))

(declare-fun m!536827 () Bool)

(assert (=> start!51196 m!536827))

(declare-fun m!536829 () Bool)

(assert (=> start!51196 m!536829))

(declare-fun m!536831 () Bool)

(assert (=> b!558881 m!536831))

(declare-fun m!536833 () Bool)

(assert (=> b!558881 m!536833))

(assert (=> b!558881 m!536831))

(declare-fun m!536835 () Bool)

(assert (=> b!558881 m!536835))

(declare-fun m!536837 () Bool)

(assert (=> b!558881 m!536837))

(assert (=> b!558881 m!536835))

(assert (=> b!558881 m!536831))

(declare-fun m!536839 () Bool)

(assert (=> b!558881 m!536839))

(declare-fun m!536841 () Bool)

(assert (=> b!558881 m!536841))

(assert (=> b!558881 m!536835))

(declare-fun m!536843 () Bool)

(assert (=> b!558881 m!536843))

(assert (=> b!558882 m!536831))

(declare-fun m!536845 () Bool)

(assert (=> b!558882 m!536845))

(declare-fun m!536847 () Bool)

(assert (=> b!558876 m!536847))

(assert (=> b!558883 m!536831))

(declare-fun m!536849 () Bool)

(assert (=> b!558883 m!536849))

(assert (=> b!558883 m!536845))

(declare-fun m!536851 () Bool)

(assert (=> b!558883 m!536851))

(assert (=> b!558883 m!536831))

(declare-fun m!536853 () Bool)

(assert (=> b!558883 m!536853))

(declare-fun m!536855 () Bool)

(assert (=> b!558878 m!536855))

(assert (=> b!558884 m!536831))

(assert (=> b!558884 m!536831))

(declare-fun m!536857 () Bool)

(assert (=> b!558884 m!536857))

(declare-fun m!536859 () Bool)

(assert (=> b!558875 m!536859))

(declare-fun m!536861 () Bool)

(assert (=> b!558873 m!536861))

(assert (=> b!558877 m!536831))

(assert (=> b!558877 m!536831))

(declare-fun m!536863 () Bool)

(assert (=> b!558877 m!536863))

(check-sat (not b!558873) (not b!558876) (not b!558875) (not b!558881) (not b!558878) (not start!51196) (not b!558883) (not b!558884) (not b!558874) (not b!558877))
(check-sat)
(get-model)

(declare-fun b!558933 () Bool)

(declare-fun e!321997 () SeekEntryResult!5326)

(assert (=> b!558933 (= e!321997 Undefined!5326)))

(declare-fun b!558934 () Bool)

(declare-fun e!321995 () SeekEntryResult!5326)

(declare-fun lt!254076 () SeekEntryResult!5326)

(assert (=> b!558934 (= e!321995 (Found!5326 (index!23533 lt!254076)))))

(declare-fun b!558935 () Bool)

(declare-fun e!321996 () SeekEntryResult!5326)

(assert (=> b!558935 (= e!321996 (MissingZero!5326 (index!23533 lt!254076)))))

(declare-fun b!558936 () Bool)

(declare-fun c!64461 () Bool)

(declare-fun lt!254077 () (_ BitVec 64))

(assert (=> b!558936 (= c!64461 (= lt!254077 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558936 (= e!321995 e!321996)))

(declare-fun d!83567 () Bool)

(declare-fun lt!254078 () SeekEntryResult!5326)

(assert (=> d!83567 (and (or ((_ is Undefined!5326) lt!254078) (not ((_ is Found!5326) lt!254078)) (and (bvsge (index!23532 lt!254078) #b00000000000000000000000000000000) (bvslt (index!23532 lt!254078) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254078) ((_ is Found!5326) lt!254078) (not ((_ is MissingZero!5326) lt!254078)) (and (bvsge (index!23531 lt!254078) #b00000000000000000000000000000000) (bvslt (index!23531 lt!254078) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254078) ((_ is Found!5326) lt!254078) ((_ is MissingZero!5326) lt!254078) (not ((_ is MissingVacant!5326) lt!254078)) (and (bvsge (index!23534 lt!254078) #b00000000000000000000000000000000) (bvslt (index!23534 lt!254078) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254078) (ite ((_ is Found!5326) lt!254078) (= (select (arr!16870 a!3118) (index!23532 lt!254078)) k0!1914) (ite ((_ is MissingZero!5326) lt!254078) (= (select (arr!16870 a!3118) (index!23531 lt!254078)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5326) lt!254078) (= (select (arr!16870 a!3118) (index!23534 lt!254078)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83567 (= lt!254078 e!321997)))

(declare-fun c!64462 () Bool)

(assert (=> d!83567 (= c!64462 (and ((_ is Intermediate!5326) lt!254076) (undefined!6138 lt!254076)))))

(assert (=> d!83567 (= lt!254076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83567 (validMask!0 mask!3119)))

(assert (=> d!83567 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!254078)))

(declare-fun b!558937 () Bool)

(assert (=> b!558937 (= e!321996 (seekKeyOrZeroReturnVacant!0 (x!52462 lt!254076) (index!23533 lt!254076) (index!23533 lt!254076) k0!1914 a!3118 mask!3119))))

(declare-fun b!558938 () Bool)

(assert (=> b!558938 (= e!321997 e!321995)))

(assert (=> b!558938 (= lt!254077 (select (arr!16870 a!3118) (index!23533 lt!254076)))))

(declare-fun c!64463 () Bool)

(assert (=> b!558938 (= c!64463 (= lt!254077 k0!1914))))

(assert (= (and d!83567 c!64462) b!558933))

(assert (= (and d!83567 (not c!64462)) b!558938))

(assert (= (and b!558938 c!64463) b!558934))

(assert (= (and b!558938 (not c!64463)) b!558936))

(assert (= (and b!558936 c!64461) b!558935))

(assert (= (and b!558936 (not c!64461)) b!558937))

(declare-fun m!536905 () Bool)

(assert (=> d!83567 m!536905))

(assert (=> d!83567 m!536827))

(declare-fun m!536907 () Bool)

(assert (=> d!83567 m!536907))

(assert (=> d!83567 m!536907))

(declare-fun m!536909 () Bool)

(assert (=> d!83567 m!536909))

(declare-fun m!536911 () Bool)

(assert (=> d!83567 m!536911))

(declare-fun m!536913 () Bool)

(assert (=> d!83567 m!536913))

(declare-fun m!536915 () Bool)

(assert (=> b!558937 m!536915))

(declare-fun m!536917 () Bool)

(assert (=> b!558938 m!536917))

(assert (=> b!558878 d!83567))

(declare-fun b!558939 () Bool)

(declare-fun e!322000 () SeekEntryResult!5326)

(assert (=> b!558939 (= e!322000 Undefined!5326)))

(declare-fun b!558940 () Bool)

(declare-fun e!321998 () SeekEntryResult!5326)

(declare-fun lt!254079 () SeekEntryResult!5326)

(assert (=> b!558940 (= e!321998 (Found!5326 (index!23533 lt!254079)))))

(declare-fun b!558941 () Bool)

(declare-fun e!321999 () SeekEntryResult!5326)

(assert (=> b!558941 (= e!321999 (MissingZero!5326 (index!23533 lt!254079)))))

(declare-fun b!558942 () Bool)

(declare-fun c!64464 () Bool)

(declare-fun lt!254080 () (_ BitVec 64))

(assert (=> b!558942 (= c!64464 (= lt!254080 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558942 (= e!321998 e!321999)))

(declare-fun d!83571 () Bool)

(declare-fun lt!254081 () SeekEntryResult!5326)

(assert (=> d!83571 (and (or ((_ is Undefined!5326) lt!254081) (not ((_ is Found!5326) lt!254081)) (and (bvsge (index!23532 lt!254081) #b00000000000000000000000000000000) (bvslt (index!23532 lt!254081) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254081) ((_ is Found!5326) lt!254081) (not ((_ is MissingZero!5326) lt!254081)) (and (bvsge (index!23531 lt!254081) #b00000000000000000000000000000000) (bvslt (index!23531 lt!254081) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254081) ((_ is Found!5326) lt!254081) ((_ is MissingZero!5326) lt!254081) (not ((_ is MissingVacant!5326) lt!254081)) (and (bvsge (index!23534 lt!254081) #b00000000000000000000000000000000) (bvslt (index!23534 lt!254081) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254081) (ite ((_ is Found!5326) lt!254081) (= (select (arr!16870 a!3118) (index!23532 lt!254081)) (select (arr!16870 a!3118) j!142)) (ite ((_ is MissingZero!5326) lt!254081) (= (select (arr!16870 a!3118) (index!23531 lt!254081)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5326) lt!254081) (= (select (arr!16870 a!3118) (index!23534 lt!254081)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83571 (= lt!254081 e!322000)))

(declare-fun c!64465 () Bool)

(assert (=> d!83571 (= c!64465 (and ((_ is Intermediate!5326) lt!254079) (undefined!6138 lt!254079)))))

(assert (=> d!83571 (= lt!254079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16870 a!3118) j!142) mask!3119) (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83571 (validMask!0 mask!3119)))

(assert (=> d!83571 (= (seekEntryOrOpen!0 (select (arr!16870 a!3118) j!142) a!3118 mask!3119) lt!254081)))

(declare-fun b!558943 () Bool)

(assert (=> b!558943 (= e!321999 (seekKeyOrZeroReturnVacant!0 (x!52462 lt!254079) (index!23533 lt!254079) (index!23533 lt!254079) (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558944 () Bool)

(assert (=> b!558944 (= e!322000 e!321998)))

(assert (=> b!558944 (= lt!254080 (select (arr!16870 a!3118) (index!23533 lt!254079)))))

(declare-fun c!64466 () Bool)

(assert (=> b!558944 (= c!64466 (= lt!254080 (select (arr!16870 a!3118) j!142)))))

(assert (= (and d!83571 c!64465) b!558939))

(assert (= (and d!83571 (not c!64465)) b!558944))

(assert (= (and b!558944 c!64466) b!558940))

(assert (= (and b!558944 (not c!64466)) b!558942))

(assert (= (and b!558942 c!64464) b!558941))

(assert (= (and b!558942 (not c!64464)) b!558943))

(declare-fun m!536919 () Bool)

(assert (=> d!83571 m!536919))

(assert (=> d!83571 m!536827))

(assert (=> d!83571 m!536831))

(assert (=> d!83571 m!536833))

(assert (=> d!83571 m!536833))

(assert (=> d!83571 m!536831))

(declare-fun m!536921 () Bool)

(assert (=> d!83571 m!536921))

(declare-fun m!536923 () Bool)

(assert (=> d!83571 m!536923))

(declare-fun m!536925 () Bool)

(assert (=> d!83571 m!536925))

(assert (=> b!558943 m!536831))

(declare-fun m!536927 () Bool)

(assert (=> b!558943 m!536927))

(declare-fun m!536929 () Bool)

(assert (=> b!558944 m!536929))

(assert (=> b!558883 d!83571))

(declare-fun d!83573 () Bool)

(declare-fun res!350710 () Bool)

(declare-fun e!322019 () Bool)

(assert (=> d!83573 (=> res!350710 e!322019)))

(assert (=> d!83573 (= res!350710 (bvsge j!142 (size!17234 a!3118)))))

(assert (=> d!83573 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322019)))

(declare-fun b!558968 () Bool)

(declare-fun e!322020 () Bool)

(assert (=> b!558968 (= e!322019 e!322020)))

(declare-fun c!64472 () Bool)

(assert (=> b!558968 (= c!64472 (validKeyInArray!0 (select (arr!16870 a!3118) j!142)))))

(declare-fun b!558969 () Bool)

(declare-fun call!32417 () Bool)

(assert (=> b!558969 (= e!322020 call!32417)))

(declare-fun b!558970 () Bool)

(declare-fun e!322021 () Bool)

(assert (=> b!558970 (= e!322020 e!322021)))

(declare-fun lt!254090 () (_ BitVec 64))

(assert (=> b!558970 (= lt!254090 (select (arr!16870 a!3118) j!142))))

(declare-fun lt!254089 () Unit!17426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35141 (_ BitVec 64) (_ BitVec 32)) Unit!17426)

(assert (=> b!558970 (= lt!254089 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254090 j!142))))

(assert (=> b!558970 (arrayContainsKey!0 a!3118 lt!254090 #b00000000000000000000000000000000)))

(declare-fun lt!254088 () Unit!17426)

(assert (=> b!558970 (= lt!254088 lt!254089)))

(declare-fun res!350711 () Bool)

(assert (=> b!558970 (= res!350711 (= (seekEntryOrOpen!0 (select (arr!16870 a!3118) j!142) a!3118 mask!3119) (Found!5326 j!142)))))

(assert (=> b!558970 (=> (not res!350711) (not e!322021))))

(declare-fun b!558971 () Bool)

(assert (=> b!558971 (= e!322021 call!32417)))

(declare-fun bm!32414 () Bool)

(assert (=> bm!32414 (= call!32417 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83573 (not res!350710)) b!558968))

(assert (= (and b!558968 c!64472) b!558970))

(assert (= (and b!558968 (not c!64472)) b!558969))

(assert (= (and b!558970 res!350711) b!558971))

(assert (= (or b!558971 b!558969) bm!32414))

(assert (=> b!558968 m!536831))

(assert (=> b!558968 m!536831))

(assert (=> b!558968 m!536863))

(assert (=> b!558970 m!536831))

(declare-fun m!536939 () Bool)

(assert (=> b!558970 m!536939))

(declare-fun m!536941 () Bool)

(assert (=> b!558970 m!536941))

(assert (=> b!558970 m!536831))

(assert (=> b!558970 m!536853))

(declare-fun m!536943 () Bool)

(assert (=> bm!32414 m!536943))

(assert (=> b!558883 d!83573))

(declare-fun d!83577 () Bool)

(assert (=> d!83577 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254093 () Unit!17426)

(declare-fun choose!38 (array!35141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17426)

(assert (=> d!83577 (= lt!254093 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83577 (validMask!0 mask!3119)))

(assert (=> d!83577 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254093)))

(declare-fun bs!17388 () Bool)

(assert (= bs!17388 d!83577))

(assert (=> bs!17388 m!536849))

(declare-fun m!536945 () Bool)

(assert (=> bs!17388 m!536945))

(assert (=> bs!17388 m!536827))

(assert (=> b!558883 d!83577))

(declare-fun b!559016 () Bool)

(declare-fun e!322047 () SeekEntryResult!5326)

(assert (=> b!559016 (= e!322047 (Found!5326 (index!23533 lt!254047)))))

(declare-fun e!322046 () SeekEntryResult!5326)

(declare-fun b!559017 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559017 (= e!322046 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52462 lt!254047) #b00000000000000000000000000000001) (nextIndex!0 (index!23533 lt!254047) (x!52462 lt!254047) mask!3119) (index!23533 lt!254047) (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559018 () Bool)

(assert (=> b!559018 (= e!322046 (MissingVacant!5326 (index!23533 lt!254047)))))

(declare-fun b!559019 () Bool)

(declare-fun e!322045 () SeekEntryResult!5326)

(assert (=> b!559019 (= e!322045 e!322047)))

(declare-fun lt!254111 () (_ BitVec 64))

(declare-fun c!64496 () Bool)

(assert (=> b!559019 (= c!64496 (= lt!254111 (select (arr!16870 a!3118) j!142)))))

(declare-fun b!559020 () Bool)

(assert (=> b!559020 (= e!322045 Undefined!5326)))

(declare-fun b!559021 () Bool)

(declare-fun c!64494 () Bool)

(assert (=> b!559021 (= c!64494 (= lt!254111 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559021 (= e!322047 e!322046)))

(declare-fun d!83581 () Bool)

(declare-fun lt!254112 () SeekEntryResult!5326)

(assert (=> d!83581 (and (or ((_ is Undefined!5326) lt!254112) (not ((_ is Found!5326) lt!254112)) (and (bvsge (index!23532 lt!254112) #b00000000000000000000000000000000) (bvslt (index!23532 lt!254112) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254112) ((_ is Found!5326) lt!254112) (not ((_ is MissingVacant!5326) lt!254112)) (not (= (index!23534 lt!254112) (index!23533 lt!254047))) (and (bvsge (index!23534 lt!254112) #b00000000000000000000000000000000) (bvslt (index!23534 lt!254112) (size!17234 a!3118)))) (or ((_ is Undefined!5326) lt!254112) (ite ((_ is Found!5326) lt!254112) (= (select (arr!16870 a!3118) (index!23532 lt!254112)) (select (arr!16870 a!3118) j!142)) (and ((_ is MissingVacant!5326) lt!254112) (= (index!23534 lt!254112) (index!23533 lt!254047)) (= (select (arr!16870 a!3118) (index!23534 lt!254112)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!83581 (= lt!254112 e!322045)))

(declare-fun c!64495 () Bool)

(assert (=> d!83581 (= c!64495 (bvsge (x!52462 lt!254047) #b01111111111111111111111111111110))))

(assert (=> d!83581 (= lt!254111 (select (arr!16870 a!3118) (index!23533 lt!254047)))))

(assert (=> d!83581 (validMask!0 mask!3119)))

(assert (=> d!83581 (= (seekKeyOrZeroReturnVacant!0 (x!52462 lt!254047) (index!23533 lt!254047) (index!23533 lt!254047) (select (arr!16870 a!3118) j!142) a!3118 mask!3119) lt!254112)))

(assert (= (and d!83581 c!64495) b!559020))

(assert (= (and d!83581 (not c!64495)) b!559019))

(assert (= (and b!559019 c!64496) b!559016))

(assert (= (and b!559019 (not c!64496)) b!559021))

(assert (= (and b!559021 c!64494) b!559018))

(assert (= (and b!559021 (not c!64494)) b!559017))

(declare-fun m!536959 () Bool)

(assert (=> b!559017 m!536959))

(assert (=> b!559017 m!536959))

(assert (=> b!559017 m!536831))

(declare-fun m!536961 () Bool)

(assert (=> b!559017 m!536961))

(declare-fun m!536963 () Bool)

(assert (=> d!83581 m!536963))

(declare-fun m!536965 () Bool)

(assert (=> d!83581 m!536965))

(assert (=> d!83581 m!536845))

(assert (=> d!83581 m!536827))

(assert (=> b!558884 d!83581))

(declare-fun b!559066 () Bool)

(declare-fun e!322077 () Bool)

(declare-fun contains!2861 (List!11003 (_ BitVec 64)) Bool)

(assert (=> b!559066 (= e!322077 (contains!2861 Nil!11000 (select (arr!16870 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559067 () Bool)

(declare-fun e!322079 () Bool)

(declare-fun e!322078 () Bool)

(assert (=> b!559067 (= e!322079 e!322078)))

(declare-fun res!350738 () Bool)

(assert (=> b!559067 (=> (not res!350738) (not e!322078))))

(assert (=> b!559067 (= res!350738 (not e!322077))))

(declare-fun res!350739 () Bool)

(assert (=> b!559067 (=> (not res!350739) (not e!322077))))

(assert (=> b!559067 (= res!350739 (validKeyInArray!0 (select (arr!16870 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83585 () Bool)

(declare-fun res!350737 () Bool)

(assert (=> d!83585 (=> res!350737 e!322079)))

(assert (=> d!83585 (= res!350737 (bvsge #b00000000000000000000000000000000 (size!17234 a!3118)))))

(assert (=> d!83585 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11000) e!322079)))

(declare-fun b!559068 () Bool)

(declare-fun e!322080 () Bool)

(declare-fun call!32423 () Bool)

(assert (=> b!559068 (= e!322080 call!32423)))

(declare-fun bm!32420 () Bool)

(declare-fun c!64508 () Bool)

(assert (=> bm!32420 (= call!32423 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64508 (Cons!10999 (select (arr!16870 a!3118) #b00000000000000000000000000000000) Nil!11000) Nil!11000)))))

(declare-fun b!559069 () Bool)

(assert (=> b!559069 (= e!322080 call!32423)))

(declare-fun b!559070 () Bool)

(assert (=> b!559070 (= e!322078 e!322080)))

(assert (=> b!559070 (= c!64508 (validKeyInArray!0 (select (arr!16870 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83585 (not res!350737)) b!559067))

(assert (= (and b!559067 res!350739) b!559066))

(assert (= (and b!559067 res!350738) b!559070))

(assert (= (and b!559070 c!64508) b!559068))

(assert (= (and b!559070 (not c!64508)) b!559069))

(assert (= (or b!559068 b!559069) bm!32420))

(declare-fun m!536989 () Bool)

(assert (=> b!559066 m!536989))

(assert (=> b!559066 m!536989))

(declare-fun m!536991 () Bool)

(assert (=> b!559066 m!536991))

(assert (=> b!559067 m!536989))

(assert (=> b!559067 m!536989))

(declare-fun m!536993 () Bool)

(assert (=> b!559067 m!536993))

(assert (=> bm!32420 m!536989))

(declare-fun m!536995 () Bool)

(assert (=> bm!32420 m!536995))

(assert (=> b!559070 m!536989))

(assert (=> b!559070 m!536989))

(assert (=> b!559070 m!536993))

(assert (=> b!558873 d!83585))

(declare-fun d!83593 () Bool)

(assert (=> d!83593 (= (validKeyInArray!0 (select (arr!16870 a!3118) j!142)) (and (not (= (select (arr!16870 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16870 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558877 d!83593))

(declare-fun d!83595 () Bool)

(declare-fun res!350744 () Bool)

(declare-fun e!322085 () Bool)

(assert (=> d!83595 (=> res!350744 e!322085)))

(assert (=> d!83595 (= res!350744 (= (select (arr!16870 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83595 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!322085)))

(declare-fun b!559075 () Bool)

(declare-fun e!322086 () Bool)

(assert (=> b!559075 (= e!322085 e!322086)))

(declare-fun res!350745 () Bool)

(assert (=> b!559075 (=> (not res!350745) (not e!322086))))

(assert (=> b!559075 (= res!350745 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17234 a!3118)))))

(declare-fun b!559076 () Bool)

(assert (=> b!559076 (= e!322086 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83595 (not res!350744)) b!559075))

(assert (= (and b!559075 res!350745) b!559076))

(assert (=> d!83595 m!536989))

(declare-fun m!536999 () Bool)

(assert (=> b!559076 m!536999))

(assert (=> b!558875 d!83595))

(declare-fun d!83603 () Bool)

(declare-fun res!350746 () Bool)

(declare-fun e!322087 () Bool)

(assert (=> d!83603 (=> res!350746 e!322087)))

(assert (=> d!83603 (= res!350746 (bvsge #b00000000000000000000000000000000 (size!17234 a!3118)))))

(assert (=> d!83603 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322087)))

(declare-fun b!559077 () Bool)

(declare-fun e!322088 () Bool)

(assert (=> b!559077 (= e!322087 e!322088)))

(declare-fun c!64509 () Bool)

(assert (=> b!559077 (= c!64509 (validKeyInArray!0 (select (arr!16870 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559078 () Bool)

(declare-fun call!32424 () Bool)

(assert (=> b!559078 (= e!322088 call!32424)))

(declare-fun b!559079 () Bool)

(declare-fun e!322089 () Bool)

(assert (=> b!559079 (= e!322088 e!322089)))

(declare-fun lt!254139 () (_ BitVec 64))

(assert (=> b!559079 (= lt!254139 (select (arr!16870 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254138 () Unit!17426)

(assert (=> b!559079 (= lt!254138 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254139 #b00000000000000000000000000000000))))

(assert (=> b!559079 (arrayContainsKey!0 a!3118 lt!254139 #b00000000000000000000000000000000)))

(declare-fun lt!254137 () Unit!17426)

(assert (=> b!559079 (= lt!254137 lt!254138)))

(declare-fun res!350747 () Bool)

(assert (=> b!559079 (= res!350747 (= (seekEntryOrOpen!0 (select (arr!16870 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5326 #b00000000000000000000000000000000)))))

(assert (=> b!559079 (=> (not res!350747) (not e!322089))))

(declare-fun b!559080 () Bool)

(assert (=> b!559080 (= e!322089 call!32424)))

(declare-fun bm!32421 () Bool)

(assert (=> bm!32421 (= call!32424 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83603 (not res!350746)) b!559077))

(assert (= (and b!559077 c!64509) b!559079))

(assert (= (and b!559077 (not c!64509)) b!559078))

(assert (= (and b!559079 res!350747) b!559080))

(assert (= (or b!559080 b!559078) bm!32421))

(assert (=> b!559077 m!536989))

(assert (=> b!559077 m!536989))

(assert (=> b!559077 m!536993))

(assert (=> b!559079 m!536989))

(declare-fun m!537001 () Bool)

(assert (=> b!559079 m!537001))

(declare-fun m!537003 () Bool)

(assert (=> b!559079 m!537003))

(assert (=> b!559079 m!536989))

(declare-fun m!537005 () Bool)

(assert (=> b!559079 m!537005))

(declare-fun m!537007 () Bool)

(assert (=> bm!32421 m!537007))

(assert (=> b!558876 d!83603))

(declare-fun b!559159 () Bool)

(declare-fun e!322143 () Bool)

(declare-fun e!322142 () Bool)

(assert (=> b!559159 (= e!322143 e!322142)))

(declare-fun res!350786 () Bool)

(declare-fun lt!254159 () SeekEntryResult!5326)

(assert (=> b!559159 (= res!350786 (and ((_ is Intermediate!5326) lt!254159) (not (undefined!6138 lt!254159)) (bvslt (x!52462 lt!254159) #b01111111111111111111111111111110) (bvsge (x!52462 lt!254159) #b00000000000000000000000000000000) (bvsge (x!52462 lt!254159) #b00000000000000000000000000000000)))))

(assert (=> b!559159 (=> (not res!350786) (not e!322142))))

(declare-fun b!559160 () Bool)

(declare-fun e!322145 () SeekEntryResult!5326)

(assert (=> b!559160 (= e!322145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254048 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)) mask!3119))))

(declare-fun b!559161 () Bool)

(assert (=> b!559161 (= e!322143 (bvsge (x!52462 lt!254159) #b01111111111111111111111111111110))))

(declare-fun d!83607 () Bool)

(assert (=> d!83607 e!322143))

(declare-fun c!64533 () Bool)

(assert (=> d!83607 (= c!64533 (and ((_ is Intermediate!5326) lt!254159) (undefined!6138 lt!254159)))))

(declare-fun e!322146 () SeekEntryResult!5326)

(assert (=> d!83607 (= lt!254159 e!322146)))

(declare-fun c!64531 () Bool)

(assert (=> d!83607 (= c!64531 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254160 () (_ BitVec 64))

(assert (=> d!83607 (= lt!254160 (select (arr!16870 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118))) lt!254048))))

(assert (=> d!83607 (validMask!0 mask!3119)))

(assert (=> d!83607 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254048 (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)) mask!3119) lt!254159)))

(declare-fun b!559162 () Bool)

(assert (=> b!559162 (and (bvsge (index!23533 lt!254159) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254159) (size!17234 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)))))))

(declare-fun e!322144 () Bool)

(assert (=> b!559162 (= e!322144 (= (select (arr!16870 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118))) (index!23533 lt!254159)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559163 () Bool)

(assert (=> b!559163 (and (bvsge (index!23533 lt!254159) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254159) (size!17234 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)))))))

(declare-fun res!350785 () Bool)

(assert (=> b!559163 (= res!350785 (= (select (arr!16870 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118))) (index!23533 lt!254159)) (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!559163 (=> res!350785 e!322144)))

(assert (=> b!559163 (= e!322142 e!322144)))

(declare-fun b!559164 () Bool)

(assert (=> b!559164 (and (bvsge (index!23533 lt!254159) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254159) (size!17234 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118)))))))

(declare-fun res!350784 () Bool)

(assert (=> b!559164 (= res!350784 (= (select (arr!16870 (array!35142 (store (arr!16870 a!3118) i!1132 k0!1914) (size!17234 a!3118))) (index!23533 lt!254159)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559164 (=> res!350784 e!322144)))

(declare-fun b!559165 () Bool)

(assert (=> b!559165 (= e!322146 (Intermediate!5326 true lt!254048 #b00000000000000000000000000000000))))

(declare-fun b!559166 () Bool)

(assert (=> b!559166 (= e!322145 (Intermediate!5326 false lt!254048 #b00000000000000000000000000000000))))

(declare-fun b!559167 () Bool)

(assert (=> b!559167 (= e!322146 e!322145)))

(declare-fun c!64532 () Bool)

(assert (=> b!559167 (= c!64532 (or (= lt!254160 (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!254160 lt!254160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!83607 c!64531) b!559165))

(assert (= (and d!83607 (not c!64531)) b!559167))

(assert (= (and b!559167 c!64532) b!559166))

(assert (= (and b!559167 (not c!64532)) b!559160))

(assert (= (and d!83607 c!64533) b!559161))

(assert (= (and d!83607 (not c!64533)) b!559159))

(assert (= (and b!559159 res!350786) b!559163))

(assert (= (and b!559163 (not res!350785)) b!559164))

(assert (= (and b!559164 (not res!350784)) b!559162))

(declare-fun m!537035 () Bool)

(assert (=> d!83607 m!537035))

(assert (=> d!83607 m!536827))

(declare-fun m!537037 () Bool)

(assert (=> b!559163 m!537037))

(assert (=> b!559162 m!537037))

(assert (=> b!559164 m!537037))

(declare-fun m!537043 () Bool)

(assert (=> b!559160 m!537043))

(assert (=> b!559160 m!537043))

(assert (=> b!559160 m!536835))

(declare-fun m!537047 () Bool)

(assert (=> b!559160 m!537047))

(assert (=> b!558881 d!83607))

(declare-fun b!559177 () Bool)

(declare-fun e!322153 () Bool)

(declare-fun e!322152 () Bool)

(assert (=> b!559177 (= e!322153 e!322152)))

(declare-fun res!350792 () Bool)

(declare-fun lt!254163 () SeekEntryResult!5326)

(assert (=> b!559177 (= res!350792 (and ((_ is Intermediate!5326) lt!254163) (not (undefined!6138 lt!254163)) (bvslt (x!52462 lt!254163) #b01111111111111111111111111111110) (bvsge (x!52462 lt!254163) #b00000000000000000000000000000000) (bvsge (x!52462 lt!254163) #b00000000000000000000000000000000)))))

(assert (=> b!559177 (=> (not res!350792) (not e!322152))))

(declare-fun e!322155 () SeekEntryResult!5326)

(declare-fun b!559178 () Bool)

(assert (=> b!559178 (= e!322155 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254046 #b00000000000000000000000000000000 mask!3119) (select (arr!16870 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559179 () Bool)

(assert (=> b!559179 (= e!322153 (bvsge (x!52462 lt!254163) #b01111111111111111111111111111110))))

(declare-fun d!83617 () Bool)

(assert (=> d!83617 e!322153))

(declare-fun c!64539 () Bool)

(assert (=> d!83617 (= c!64539 (and ((_ is Intermediate!5326) lt!254163) (undefined!6138 lt!254163)))))

(declare-fun e!322156 () SeekEntryResult!5326)

(assert (=> d!83617 (= lt!254163 e!322156)))

(declare-fun c!64537 () Bool)

(assert (=> d!83617 (= c!64537 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254164 () (_ BitVec 64))

(assert (=> d!83617 (= lt!254164 (select (arr!16870 a!3118) lt!254046))))

(assert (=> d!83617 (validMask!0 mask!3119)))

(assert (=> d!83617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254046 (select (arr!16870 a!3118) j!142) a!3118 mask!3119) lt!254163)))

(declare-fun b!559180 () Bool)

(assert (=> b!559180 (and (bvsge (index!23533 lt!254163) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254163) (size!17234 a!3118)))))

(declare-fun e!322154 () Bool)

(assert (=> b!559180 (= e!322154 (= (select (arr!16870 a!3118) (index!23533 lt!254163)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559181 () Bool)

(assert (=> b!559181 (and (bvsge (index!23533 lt!254163) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254163) (size!17234 a!3118)))))

(declare-fun res!350791 () Bool)

(assert (=> b!559181 (= res!350791 (= (select (arr!16870 a!3118) (index!23533 lt!254163)) (select (arr!16870 a!3118) j!142)))))

(assert (=> b!559181 (=> res!350791 e!322154)))

(assert (=> b!559181 (= e!322152 e!322154)))

(declare-fun b!559182 () Bool)

(assert (=> b!559182 (and (bvsge (index!23533 lt!254163) #b00000000000000000000000000000000) (bvslt (index!23533 lt!254163) (size!17234 a!3118)))))

(declare-fun res!350790 () Bool)

(assert (=> b!559182 (= res!350790 (= (select (arr!16870 a!3118) (index!23533 lt!254163)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559182 (=> res!350790 e!322154)))

(declare-fun b!559183 () Bool)

(assert (=> b!559183 (= e!322156 (Intermediate!5326 true lt!254046 #b00000000000000000000000000000000))))

(declare-fun b!559184 () Bool)

(assert (=> b!559184 (= e!322155 (Intermediate!5326 false lt!254046 #b00000000000000000000000000000000))))

(declare-fun b!559185 () Bool)

(assert (=> b!559185 (= e!322156 e!322155)))

(declare-fun c!64538 () Bool)

(assert (=> b!559185 (= c!64538 (or (= lt!254164 (select (arr!16870 a!3118) j!142)) (= (bvadd lt!254164 lt!254164) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!83617 c!64537) b!559183))

(assert (= (and d!83617 (not c!64537)) b!559185))

(assert (= (and b!559185 c!64538) b!559184))

(assert (= (and b!559185 (not c!64538)) b!559178))

(assert (= (and d!83617 c!64539) b!559179))

(assert (= (and d!83617 (not c!64539)) b!559177))

(assert (= (and b!559177 res!350792) b!559181))

(assert (= (and b!559181 (not res!350791)) b!559182))

(assert (= (and b!559182 (not res!350790)) b!559180))

(declare-fun m!537051 () Bool)

(assert (=> d!83617 m!537051))

(assert (=> d!83617 m!536827))

(declare-fun m!537053 () Bool)

(assert (=> b!559181 m!537053))

(assert (=> b!559180 m!537053))

(assert (=> b!559182 m!537053))

(declare-fun m!537055 () Bool)

(assert (=> b!559178 m!537055))

(assert (=> b!559178 m!537055))

(assert (=> b!559178 m!536831))

(declare-fun m!537057 () Bool)

(assert (=> b!559178 m!537057))

(assert (=> b!558881 d!83617))

(declare-fun d!83621 () Bool)

(declare-fun lt!254181 () (_ BitVec 32))

(declare-fun lt!254180 () (_ BitVec 32))

(assert (=> d!83621 (= lt!254181 (bvmul (bvxor lt!254180 (bvlshr lt!254180 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83621 (= lt!254180 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83621 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350794 (let ((h!12000 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52470 (bvmul (bvxor h!12000 (bvlshr h!12000 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52470 (bvlshr x!52470 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350794 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350794 #b00000000000000000000000000000000))))))

(assert (=> d!83621 (= (toIndex!0 (select (store (arr!16870 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!254181 (bvlshr lt!254181 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558881 d!83621))

(declare-fun d!83627 () Bool)

(declare-fun lt!254183 () (_ BitVec 32))

(declare-fun lt!254182 () (_ BitVec 32))

(assert (=> d!83627 (= lt!254183 (bvmul (bvxor lt!254182 (bvlshr lt!254182 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83627 (= lt!254182 ((_ extract 31 0) (bvand (bvxor (select (arr!16870 a!3118) j!142) (bvlshr (select (arr!16870 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83627 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350794 (let ((h!12000 ((_ extract 31 0) (bvand (bvxor (select (arr!16870 a!3118) j!142) (bvlshr (select (arr!16870 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52470 (bvmul (bvxor h!12000 (bvlshr h!12000 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52470 (bvlshr x!52470 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350794 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350794 #b00000000000000000000000000000000))))))

(assert (=> d!83627 (= (toIndex!0 (select (arr!16870 a!3118) j!142) mask!3119) (bvand (bvxor lt!254183 (bvlshr lt!254183 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558881 d!83627))

(declare-fun d!83629 () Bool)

(assert (=> d!83629 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558874 d!83629))

(declare-fun d!83633 () Bool)

(assert (=> d!83633 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51196 d!83633))

(declare-fun d!83645 () Bool)

(assert (=> d!83645 (= (array_inv!12644 a!3118) (bvsge (size!17234 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51196 d!83645))

(check-sat (not b!559077) (not d!83567) (not bm!32420) (not d!83581) (not b!559017) (not bm!32421) (not b!559067) (not b!558970) (not b!559160) (not d!83617) (not b!558937) (not bm!32414) (not d!83577) (not d!83607) (not b!558968) (not b!559076) (not d!83571) (not b!559178) (not b!559079) (not b!559070) (not b!558943) (not b!559066))
(check-sat)
