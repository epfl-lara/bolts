; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52230 () Bool)

(assert start!52230)

(declare-fun res!360025 () Bool)

(declare-fun e!327742 () Bool)

(assert (=> start!52230 (=> (not res!360025) (not e!327742))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52230 (= res!360025 (validMask!0 mask!3119))))

(assert (=> start!52230 e!327742))

(assert (=> start!52230 true))

(declare-datatypes ((array!35707 0))(
  ( (array!35708 (arr!17141 (Array (_ BitVec 32) (_ BitVec 64))) (size!17505 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35707)

(declare-fun array_inv!12915 (array!35707) Bool)

(assert (=> start!52230 (array_inv!12915 a!3118)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!327741 () Bool)

(declare-datatypes ((SeekEntryResult!5597 0))(
  ( (MissingZero!5597 (index!24615 (_ BitVec 32))) (Found!5597 (index!24616 (_ BitVec 32))) (Intermediate!5597 (undefined!6409 Bool) (index!24617 (_ BitVec 32)) (x!53507 (_ BitVec 32))) (Undefined!5597) (MissingVacant!5597 (index!24618 (_ BitVec 32))) )
))
(declare-fun lt!259825 () SeekEntryResult!5597)

(declare-fun lt!259821 () SeekEntryResult!5597)

(declare-fun b!569852 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35707 (_ BitVec 32)) SeekEntryResult!5597)

(assert (=> b!569852 (= e!327741 (= lt!259825 (seekKeyOrZeroReturnVacant!0 (x!53507 lt!259821) (index!24617 lt!259821) (index!24617 lt!259821) (select (arr!17141 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!569853 () Bool)

(declare-fun e!327738 () Bool)

(assert (=> b!569853 (= e!327742 e!327738)))

(declare-fun res!360024 () Bool)

(assert (=> b!569853 (=> (not res!360024) (not e!327738))))

(declare-fun lt!259826 () SeekEntryResult!5597)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569853 (= res!360024 (or (= lt!259826 (MissingZero!5597 i!1132)) (= lt!259826 (MissingVacant!5597 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35707 (_ BitVec 32)) SeekEntryResult!5597)

(assert (=> b!569853 (= lt!259826 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569854 () Bool)

(declare-fun res!360028 () Bool)

(assert (=> b!569854 (=> (not res!360028) (not e!327738))))

(declare-datatypes ((List!11274 0))(
  ( (Nil!11271) (Cons!11270 (h!12291 (_ BitVec 64)) (t!17510 List!11274)) )
))
(declare-fun arrayNoDuplicates!0 (array!35707 (_ BitVec 32) List!11274) Bool)

(assert (=> b!569854 (= res!360028 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11271))))

(declare-fun b!569855 () Bool)

(declare-fun res!360020 () Bool)

(assert (=> b!569855 (=> (not res!360020) (not e!327742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569855 (= res!360020 (validKeyInArray!0 (select (arr!17141 a!3118) j!142)))))

(declare-fun b!569856 () Bool)

(declare-fun e!327740 () Bool)

(assert (=> b!569856 (= e!327740 (not e!327741))))

(declare-fun res!360026 () Bool)

(assert (=> b!569856 (=> res!360026 e!327741)))

(assert (=> b!569856 (= res!360026 (or (undefined!6409 lt!259821) (not (is-Intermediate!5597 lt!259821)) (= (select (arr!17141 a!3118) (index!24617 lt!259821)) (select (arr!17141 a!3118) j!142)) (= (select (arr!17141 a!3118) (index!24617 lt!259821)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!569856 (= lt!259825 (Found!5597 j!142))))

(assert (=> b!569856 (= lt!259825 (seekEntryOrOpen!0 (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35707 (_ BitVec 32)) Bool)

(assert (=> b!569856 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17896 0))(
  ( (Unit!17897) )
))
(declare-fun lt!259822 () Unit!17896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17896)

(assert (=> b!569856 (= lt!259822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569857 () Bool)

(declare-fun res!360027 () Bool)

(assert (=> b!569857 (=> (not res!360027) (not e!327738))))

(assert (=> b!569857 (= res!360027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569858 () Bool)

(declare-fun res!360023 () Bool)

(assert (=> b!569858 (=> (not res!360023) (not e!327742))))

(assert (=> b!569858 (= res!360023 (validKeyInArray!0 k!1914))))

(declare-fun b!569859 () Bool)

(assert (=> b!569859 (= e!327738 e!327740)))

(declare-fun res!360022 () Bool)

(assert (=> b!569859 (=> (not res!360022) (not e!327740))))

(declare-fun lt!259823 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35707 (_ BitVec 32)) SeekEntryResult!5597)

(assert (=> b!569859 (= res!360022 (= lt!259821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259823 (select (store (arr!17141 a!3118) i!1132 k!1914) j!142) (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)) mask!3119)))))

(declare-fun lt!259824 () (_ BitVec 32))

(assert (=> b!569859 (= lt!259821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259824 (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569859 (= lt!259823 (toIndex!0 (select (store (arr!17141 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569859 (= lt!259824 (toIndex!0 (select (arr!17141 a!3118) j!142) mask!3119))))

(declare-fun b!569860 () Bool)

(declare-fun res!360021 () Bool)

(assert (=> b!569860 (=> (not res!360021) (not e!327742))))

(assert (=> b!569860 (= res!360021 (and (= (size!17505 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17505 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17505 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569861 () Bool)

(declare-fun res!360029 () Bool)

(assert (=> b!569861 (=> (not res!360029) (not e!327742))))

(declare-fun arrayContainsKey!0 (array!35707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569861 (= res!360029 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52230 res!360025) b!569860))

(assert (= (and b!569860 res!360021) b!569855))

(assert (= (and b!569855 res!360020) b!569858))

(assert (= (and b!569858 res!360023) b!569861))

(assert (= (and b!569861 res!360029) b!569853))

(assert (= (and b!569853 res!360024) b!569857))

(assert (= (and b!569857 res!360027) b!569854))

(assert (= (and b!569854 res!360028) b!569859))

(assert (= (and b!569859 res!360022) b!569856))

(assert (= (and b!569856 (not res!360026)) b!569852))

(declare-fun m!548823 () Bool)

(assert (=> b!569858 m!548823))

(declare-fun m!548825 () Bool)

(assert (=> b!569856 m!548825))

(declare-fun m!548827 () Bool)

(assert (=> b!569856 m!548827))

(declare-fun m!548829 () Bool)

(assert (=> b!569856 m!548829))

(declare-fun m!548831 () Bool)

(assert (=> b!569856 m!548831))

(assert (=> b!569856 m!548825))

(declare-fun m!548833 () Bool)

(assert (=> b!569856 m!548833))

(declare-fun m!548835 () Bool)

(assert (=> b!569853 m!548835))

(declare-fun m!548837 () Bool)

(assert (=> start!52230 m!548837))

(declare-fun m!548839 () Bool)

(assert (=> start!52230 m!548839))

(assert (=> b!569855 m!548825))

(assert (=> b!569855 m!548825))

(declare-fun m!548841 () Bool)

(assert (=> b!569855 m!548841))

(assert (=> b!569852 m!548825))

(assert (=> b!569852 m!548825))

(declare-fun m!548843 () Bool)

(assert (=> b!569852 m!548843))

(declare-fun m!548845 () Bool)

(assert (=> b!569861 m!548845))

(declare-fun m!548847 () Bool)

(assert (=> b!569857 m!548847))

(declare-fun m!548849 () Bool)

(assert (=> b!569854 m!548849))

(assert (=> b!569859 m!548825))

(declare-fun m!548851 () Bool)

(assert (=> b!569859 m!548851))

(declare-fun m!548853 () Bool)

(assert (=> b!569859 m!548853))

(declare-fun m!548855 () Bool)

(assert (=> b!569859 m!548855))

(assert (=> b!569859 m!548825))

(assert (=> b!569859 m!548825))

(declare-fun m!548857 () Bool)

(assert (=> b!569859 m!548857))

(assert (=> b!569859 m!548853))

(declare-fun m!548859 () Bool)

(assert (=> b!569859 m!548859))

(assert (=> b!569859 m!548853))

(declare-fun m!548861 () Bool)

(assert (=> b!569859 m!548861))

(push 1)

(assert (not b!569855))

(assert (not b!569853))

(assert (not b!569854))

(assert (not b!569858))

(assert (not b!569852))

(assert (not b!569859))

(assert (not b!569861))

(assert (not start!52230))

(assert (not b!569857))

(assert (not b!569856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84503 () Bool)

(declare-fun lt!259856 () SeekEntryResult!5597)

(assert (=> d!84503 (and (or (is-Undefined!5597 lt!259856) (not (is-Found!5597 lt!259856)) (and (bvsge (index!24616 lt!259856) #b00000000000000000000000000000000) (bvslt (index!24616 lt!259856) (size!17505 a!3118)))) (or (is-Undefined!5597 lt!259856) (is-Found!5597 lt!259856) (not (is-MissingVacant!5597 lt!259856)) (not (= (index!24618 lt!259856) (index!24617 lt!259821))) (and (bvsge (index!24618 lt!259856) #b00000000000000000000000000000000) (bvslt (index!24618 lt!259856) (size!17505 a!3118)))) (or (is-Undefined!5597 lt!259856) (ite (is-Found!5597 lt!259856) (= (select (arr!17141 a!3118) (index!24616 lt!259856)) (select (arr!17141 a!3118) j!142)) (and (is-MissingVacant!5597 lt!259856) (= (index!24618 lt!259856) (index!24617 lt!259821)) (= (select (arr!17141 a!3118) (index!24618 lt!259856)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!327815 () SeekEntryResult!5597)

(assert (=> d!84503 (= lt!259856 e!327815)))

(declare-fun c!65304 () Bool)

(assert (=> d!84503 (= c!65304 (bvsge (x!53507 lt!259821) #b01111111111111111111111111111110))))

(declare-fun lt!259855 () (_ BitVec 64))

(assert (=> d!84503 (= lt!259855 (select (arr!17141 a!3118) (index!24617 lt!259821)))))

(assert (=> d!84503 (validMask!0 mask!3119)))

(assert (=> d!84503 (= (seekKeyOrZeroReturnVacant!0 (x!53507 lt!259821) (index!24617 lt!259821) (index!24617 lt!259821) (select (arr!17141 a!3118) j!142) a!3118 mask!3119) lt!259856)))

(declare-fun b!569973 () Bool)

(declare-fun e!327814 () SeekEntryResult!5597)

(assert (=> b!569973 (= e!327815 e!327814)))

(declare-fun c!65305 () Bool)

(assert (=> b!569973 (= c!65305 (= lt!259855 (select (arr!17141 a!3118) j!142)))))

(declare-fun b!569974 () Bool)

(assert (=> b!569974 (= e!327814 (Found!5597 (index!24617 lt!259821)))))

(declare-fun b!569975 () Bool)

(assert (=> b!569975 (= e!327815 Undefined!5597)))

(declare-fun b!569976 () Bool)

(declare-fun c!65306 () Bool)

(assert (=> b!569976 (= c!65306 (= lt!259855 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!327813 () SeekEntryResult!5597)

(assert (=> b!569976 (= e!327814 e!327813)))

(declare-fun b!569977 () Bool)

(assert (=> b!569977 (= e!327813 (MissingVacant!5597 (index!24617 lt!259821)))))

(declare-fun b!569978 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569978 (= e!327813 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53507 lt!259821) #b00000000000000000000000000000001) (nextIndex!0 (index!24617 lt!259821) (x!53507 lt!259821) mask!3119) (index!24617 lt!259821) (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84503 c!65304) b!569975))

(assert (= (and d!84503 (not c!65304)) b!569973))

(assert (= (and b!569973 c!65305) b!569974))

(assert (= (and b!569973 (not c!65305)) b!569976))

(assert (= (and b!569976 c!65306) b!569977))

(assert (= (and b!569976 (not c!65306)) b!569978))

(declare-fun m!548909 () Bool)

(assert (=> d!84503 m!548909))

(declare-fun m!548911 () Bool)

(assert (=> d!84503 m!548911))

(assert (=> d!84503 m!548829))

(assert (=> d!84503 m!548837))

(declare-fun m!548913 () Bool)

(assert (=> b!569978 m!548913))

(assert (=> b!569978 m!548913))

(assert (=> b!569978 m!548825))

(declare-fun m!548915 () Bool)

(assert (=> b!569978 m!548915))

(assert (=> b!569852 d!84503))

(declare-fun b!569987 () Bool)

(declare-fun e!327822 () Bool)

(declare-fun e!327823 () Bool)

(assert (=> b!569987 (= e!327822 e!327823)))

(declare-fun lt!259872 () (_ BitVec 64))

(assert (=> b!569987 (= lt!259872 (select (arr!17141 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!259871 () Unit!17896)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35707 (_ BitVec 64) (_ BitVec 32)) Unit!17896)

(assert (=> b!569987 (= lt!259871 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259872 #b00000000000000000000000000000000))))

(assert (=> b!569987 (arrayContainsKey!0 a!3118 lt!259872 #b00000000000000000000000000000000)))

(declare-fun lt!259873 () Unit!17896)

(assert (=> b!569987 (= lt!259873 lt!259871)))

(declare-fun res!360082 () Bool)

(assert (=> b!569987 (= res!360082 (= (seekEntryOrOpen!0 (select (arr!17141 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5597 #b00000000000000000000000000000000)))))

(assert (=> b!569987 (=> (not res!360082) (not e!327823))))

(declare-fun d!84519 () Bool)

(declare-fun res!360081 () Bool)

(declare-fun e!327824 () Bool)

(assert (=> d!84519 (=> res!360081 e!327824)))

(assert (=> d!84519 (= res!360081 (bvsge #b00000000000000000000000000000000 (size!17505 a!3118)))))

(assert (=> d!84519 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327824)))

(declare-fun bm!32582 () Bool)

(declare-fun call!32585 () Bool)

(assert (=> bm!32582 (= call!32585 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!569988 () Bool)

(assert (=> b!569988 (= e!327823 call!32585)))

(declare-fun b!569989 () Bool)

(assert (=> b!569989 (= e!327824 e!327822)))

(declare-fun c!65309 () Bool)

(assert (=> b!569989 (= c!65309 (validKeyInArray!0 (select (arr!17141 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!569990 () Bool)

(assert (=> b!569990 (= e!327822 call!32585)))

(assert (= (and d!84519 (not res!360081)) b!569989))

(assert (= (and b!569989 c!65309) b!569987))

(assert (= (and b!569989 (not c!65309)) b!569990))

(assert (= (and b!569987 res!360082) b!569988))

(assert (= (or b!569988 b!569990) bm!32582))

(declare-fun m!548917 () Bool)

(assert (=> b!569987 m!548917))

(declare-fun m!548919 () Bool)

(assert (=> b!569987 m!548919))

(declare-fun m!548921 () Bool)

(assert (=> b!569987 m!548921))

(assert (=> b!569987 m!548917))

(declare-fun m!548923 () Bool)

(assert (=> b!569987 m!548923))

(declare-fun m!548925 () Bool)

(assert (=> bm!32582 m!548925))

(assert (=> b!569989 m!548917))

(assert (=> b!569989 m!548917))

(declare-fun m!548927 () Bool)

(assert (=> b!569989 m!548927))

(assert (=> b!569857 d!84519))

(declare-fun b!570045 () Bool)

(declare-fun c!65336 () Bool)

(declare-fun lt!259904 () (_ BitVec 64))

(assert (=> b!570045 (= c!65336 (= lt!259904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!327855 () SeekEntryResult!5597)

(declare-fun e!327854 () SeekEntryResult!5597)

(assert (=> b!570045 (= e!327855 e!327854)))

(declare-fun d!84529 () Bool)

(declare-fun lt!259905 () SeekEntryResult!5597)

(assert (=> d!84529 (and (or (is-Undefined!5597 lt!259905) (not (is-Found!5597 lt!259905)) (and (bvsge (index!24616 lt!259905) #b00000000000000000000000000000000) (bvslt (index!24616 lt!259905) (size!17505 a!3118)))) (or (is-Undefined!5597 lt!259905) (is-Found!5597 lt!259905) (not (is-MissingZero!5597 lt!259905)) (and (bvsge (index!24615 lt!259905) #b00000000000000000000000000000000) (bvslt (index!24615 lt!259905) (size!17505 a!3118)))) (or (is-Undefined!5597 lt!259905) (is-Found!5597 lt!259905) (is-MissingZero!5597 lt!259905) (not (is-MissingVacant!5597 lt!259905)) (and (bvsge (index!24618 lt!259905) #b00000000000000000000000000000000) (bvslt (index!24618 lt!259905) (size!17505 a!3118)))) (or (is-Undefined!5597 lt!259905) (ite (is-Found!5597 lt!259905) (= (select (arr!17141 a!3118) (index!24616 lt!259905)) (select (arr!17141 a!3118) j!142)) (ite (is-MissingZero!5597 lt!259905) (= (select (arr!17141 a!3118) (index!24615 lt!259905)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5597 lt!259905) (= (select (arr!17141 a!3118) (index!24618 lt!259905)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!327853 () SeekEntryResult!5597)

(assert (=> d!84529 (= lt!259905 e!327853)))

(declare-fun c!65337 () Bool)

(declare-fun lt!259906 () SeekEntryResult!5597)

(assert (=> d!84529 (= c!65337 (and (is-Intermediate!5597 lt!259906) (undefined!6409 lt!259906)))))

(assert (=> d!84529 (= lt!259906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17141 a!3118) j!142) mask!3119) (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84529 (validMask!0 mask!3119)))

(assert (=> d!84529 (= (seekEntryOrOpen!0 (select (arr!17141 a!3118) j!142) a!3118 mask!3119) lt!259905)))

(declare-fun b!570046 () Bool)

(assert (=> b!570046 (= e!327854 (seekKeyOrZeroReturnVacant!0 (x!53507 lt!259906) (index!24617 lt!259906) (index!24617 lt!259906) (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570047 () Bool)

(assert (=> b!570047 (= e!327853 Undefined!5597)))

(declare-fun b!570048 () Bool)

(assert (=> b!570048 (= e!327855 (Found!5597 (index!24617 lt!259906)))))

(declare-fun b!570049 () Bool)

(assert (=> b!570049 (= e!327854 (MissingZero!5597 (index!24617 lt!259906)))))

(declare-fun b!570050 () Bool)

(assert (=> b!570050 (= e!327853 e!327855)))

(assert (=> b!570050 (= lt!259904 (select (arr!17141 a!3118) (index!24617 lt!259906)))))

(declare-fun c!65338 () Bool)

(assert (=> b!570050 (= c!65338 (= lt!259904 (select (arr!17141 a!3118) j!142)))))

(assert (= (and d!84529 c!65337) b!570047))

(assert (= (and d!84529 (not c!65337)) b!570050))

(assert (= (and b!570050 c!65338) b!570048))

(assert (= (and b!570050 (not c!65338)) b!570045))

(assert (= (and b!570045 c!65336) b!570049))

(assert (= (and b!570045 (not c!65336)) b!570046))

(declare-fun m!548953 () Bool)

(assert (=> d!84529 m!548953))

(assert (=> d!84529 m!548851))

(assert (=> d!84529 m!548825))

(declare-fun m!548955 () Bool)

(assert (=> d!84529 m!548955))

(declare-fun m!548957 () Bool)

(assert (=> d!84529 m!548957))

(assert (=> d!84529 m!548837))

(assert (=> d!84529 m!548825))

(assert (=> d!84529 m!548851))

(declare-fun m!548959 () Bool)

(assert (=> d!84529 m!548959))

(assert (=> b!570046 m!548825))

(declare-fun m!548961 () Bool)

(assert (=> b!570046 m!548961))

(declare-fun m!548963 () Bool)

(assert (=> b!570050 m!548963))

(assert (=> b!569856 d!84529))

(declare-fun b!570053 () Bool)

(declare-fun e!327858 () Bool)

(declare-fun e!327859 () Bool)

(assert (=> b!570053 (= e!327858 e!327859)))

(declare-fun lt!259908 () (_ BitVec 64))

(assert (=> b!570053 (= lt!259908 (select (arr!17141 a!3118) j!142))))

(declare-fun lt!259907 () Unit!17896)

(assert (=> b!570053 (= lt!259907 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259908 j!142))))

(assert (=> b!570053 (arrayContainsKey!0 a!3118 lt!259908 #b00000000000000000000000000000000)))

(declare-fun lt!259909 () Unit!17896)

(assert (=> b!570053 (= lt!259909 lt!259907)))

(declare-fun res!360088 () Bool)

(assert (=> b!570053 (= res!360088 (= (seekEntryOrOpen!0 (select (arr!17141 a!3118) j!142) a!3118 mask!3119) (Found!5597 j!142)))))

(assert (=> b!570053 (=> (not res!360088) (not e!327859))))

(declare-fun d!84535 () Bool)

(declare-fun res!360087 () Bool)

(declare-fun e!327860 () Bool)

(assert (=> d!84535 (=> res!360087 e!327860)))

(assert (=> d!84535 (= res!360087 (bvsge j!142 (size!17505 a!3118)))))

(assert (=> d!84535 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327860)))

(declare-fun bm!32585 () Bool)

(declare-fun call!32588 () Bool)

(assert (=> bm!32585 (= call!32588 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!570054 () Bool)

(assert (=> b!570054 (= e!327859 call!32588)))

(declare-fun b!570055 () Bool)

(assert (=> b!570055 (= e!327860 e!327858)))

(declare-fun c!65339 () Bool)

(assert (=> b!570055 (= c!65339 (validKeyInArray!0 (select (arr!17141 a!3118) j!142)))))

(declare-fun b!570056 () Bool)

(assert (=> b!570056 (= e!327858 call!32588)))

(assert (= (and d!84535 (not res!360087)) b!570055))

(assert (= (and b!570055 c!65339) b!570053))

(assert (= (and b!570055 (not c!65339)) b!570056))

(assert (= (and b!570053 res!360088) b!570054))

(assert (= (or b!570054 b!570056) bm!32585))

(assert (=> b!570053 m!548825))

(declare-fun m!548965 () Bool)

(assert (=> b!570053 m!548965))

(declare-fun m!548967 () Bool)

(assert (=> b!570053 m!548967))

(assert (=> b!570053 m!548825))

(assert (=> b!570053 m!548833))

(declare-fun m!548969 () Bool)

(assert (=> bm!32585 m!548969))

(assert (=> b!570055 m!548825))

(assert (=> b!570055 m!548825))

(assert (=> b!570055 m!548841))

(assert (=> b!569856 d!84535))

(declare-fun d!84537 () Bool)

(assert (=> d!84537 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259921 () Unit!17896)

(declare-fun choose!38 (array!35707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17896)

(assert (=> d!84537 (= lt!259921 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84537 (validMask!0 mask!3119)))

(assert (=> d!84537 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259921)))

(declare-fun bs!17682 () Bool)

(assert (= bs!17682 d!84537))

(assert (=> bs!17682 m!548827))

(declare-fun m!548977 () Bool)

(assert (=> bs!17682 m!548977))

(assert (=> bs!17682 m!548837))

(assert (=> b!569856 d!84537))

(declare-fun d!84541 () Bool)

(declare-fun res!360101 () Bool)

(declare-fun e!327877 () Bool)

(assert (=> d!84541 (=> res!360101 e!327877)))

(assert (=> d!84541 (= res!360101 (= (select (arr!17141 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84541 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!327877)))

(declare-fun b!570077 () Bool)

(declare-fun e!327878 () Bool)

(assert (=> b!570077 (= e!327877 e!327878)))

(declare-fun res!360102 () Bool)

(assert (=> b!570077 (=> (not res!360102) (not e!327878))))

(assert (=> b!570077 (= res!360102 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17505 a!3118)))))

(declare-fun b!570078 () Bool)

(assert (=> b!570078 (= e!327878 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84541 (not res!360101)) b!570077))

(assert (= (and b!570077 res!360102) b!570078))

(assert (=> d!84541 m!548917))

(declare-fun m!548987 () Bool)

(assert (=> b!570078 m!548987))

(assert (=> b!569861 d!84541))

(declare-fun d!84547 () Bool)

(assert (=> d!84547 (= (validKeyInArray!0 (select (arr!17141 a!3118) j!142)) (and (not (= (select (arr!17141 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17141 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!569855 d!84547))

(declare-fun b!570115 () Bool)

(declare-fun e!327908 () Bool)

(declare-fun e!327907 () Bool)

(assert (=> b!570115 (= e!327908 e!327907)))

(declare-fun res!360121 () Bool)

(assert (=> b!570115 (=> (not res!360121) (not e!327907))))

(declare-fun e!327906 () Bool)

(assert (=> b!570115 (= res!360121 (not e!327906))))

(declare-fun res!360122 () Bool)

(assert (=> b!570115 (=> (not res!360122) (not e!327906))))

(assert (=> b!570115 (= res!360122 (validKeyInArray!0 (select (arr!17141 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570116 () Bool)

(declare-fun e!327905 () Bool)

(declare-fun call!32599 () Bool)

(assert (=> b!570116 (= e!327905 call!32599)))

(declare-fun bm!32596 () Bool)

(declare-fun c!65353 () Bool)

(assert (=> bm!32596 (= call!32599 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65353 (Cons!11270 (select (arr!17141 a!3118) #b00000000000000000000000000000000) Nil!11271) Nil!11271)))))

(declare-fun d!84549 () Bool)

(declare-fun res!360120 () Bool)

(assert (=> d!84549 (=> res!360120 e!327908)))

(assert (=> d!84549 (= res!360120 (bvsge #b00000000000000000000000000000000 (size!17505 a!3118)))))

(assert (=> d!84549 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11271) e!327908)))

(declare-fun b!570114 () Bool)

(assert (=> b!570114 (= e!327907 e!327905)))

(assert (=> b!570114 (= c!65353 (validKeyInArray!0 (select (arr!17141 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570117 () Bool)

(assert (=> b!570117 (= e!327905 call!32599)))

(declare-fun b!570118 () Bool)

(declare-fun contains!2884 (List!11274 (_ BitVec 64)) Bool)

(assert (=> b!570118 (= e!327906 (contains!2884 Nil!11271 (select (arr!17141 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84549 (not res!360120)) b!570115))

(assert (= (and b!570115 res!360122) b!570118))

(assert (= (and b!570115 res!360121) b!570114))

(assert (= (and b!570114 c!65353) b!570116))

(assert (= (and b!570114 (not c!65353)) b!570117))

(assert (= (or b!570116 b!570117) bm!32596))

(assert (=> b!570115 m!548917))

(assert (=> b!570115 m!548917))

(assert (=> b!570115 m!548927))

(assert (=> bm!32596 m!548917))

(declare-fun m!549019 () Bool)

(assert (=> bm!32596 m!549019))

(assert (=> b!570114 m!548917))

(assert (=> b!570114 m!548917))

(assert (=> b!570114 m!548927))

(assert (=> b!570118 m!548917))

(assert (=> b!570118 m!548917))

(declare-fun m!549021 () Bool)

(assert (=> b!570118 m!549021))

(assert (=> b!569854 d!84549))

(declare-fun b!570161 () Bool)

(declare-fun e!327931 () Bool)

(declare-fun e!327932 () Bool)

(assert (=> b!570161 (= e!327931 e!327932)))

(declare-fun res!360131 () Bool)

(declare-fun lt!259951 () SeekEntryResult!5597)

(assert (=> b!570161 (= res!360131 (and (is-Intermediate!5597 lt!259951) (not (undefined!6409 lt!259951)) (bvslt (x!53507 lt!259951) #b01111111111111111111111111111110) (bvsge (x!53507 lt!259951) #b00000000000000000000000000000000) (bvsge (x!53507 lt!259951) #b00000000000000000000000000000000)))))

(assert (=> b!570161 (=> (not res!360131) (not e!327932))))

(declare-fun b!570162 () Bool)

(declare-fun e!327933 () SeekEntryResult!5597)

(assert (=> b!570162 (= e!327933 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259823 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17141 a!3118) i!1132 k!1914) j!142) (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)) mask!3119))))

(declare-fun b!570163 () Bool)

(assert (=> b!570163 (and (bvsge (index!24617 lt!259951) #b00000000000000000000000000000000) (bvslt (index!24617 lt!259951) (size!17505 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)))))))

(declare-fun e!327935 () Bool)

(assert (=> b!570163 (= e!327935 (= (select (arr!17141 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118))) (index!24617 lt!259951)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!570164 () Bool)

(assert (=> b!570164 (= e!327933 (Intermediate!5597 false lt!259823 #b00000000000000000000000000000000))))

(declare-fun b!570165 () Bool)

(declare-fun e!327934 () SeekEntryResult!5597)

(assert (=> b!570165 (= e!327934 (Intermediate!5597 true lt!259823 #b00000000000000000000000000000000))))

(declare-fun b!570166 () Bool)

(assert (=> b!570166 (= e!327931 (bvsge (x!53507 lt!259951) #b01111111111111111111111111111110))))

(declare-fun b!570168 () Bool)

(assert (=> b!570168 (and (bvsge (index!24617 lt!259951) #b00000000000000000000000000000000) (bvslt (index!24617 lt!259951) (size!17505 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)))))))

(declare-fun res!360129 () Bool)

(assert (=> b!570168 (= res!360129 (= (select (arr!17141 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118))) (index!24617 lt!259951)) (select (store (arr!17141 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!570168 (=> res!360129 e!327935)))

(assert (=> b!570168 (= e!327932 e!327935)))

(declare-fun b!570169 () Bool)

(assert (=> b!570169 (and (bvsge (index!24617 lt!259951) #b00000000000000000000000000000000) (bvslt (index!24617 lt!259951) (size!17505 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)))))))

(declare-fun res!360130 () Bool)

(assert (=> b!570169 (= res!360130 (= (select (arr!17141 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118))) (index!24617 lt!259951)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570169 (=> res!360130 e!327935)))

(declare-fun d!84559 () Bool)

(assert (=> d!84559 e!327931))

(declare-fun c!65373 () Bool)

(assert (=> d!84559 (= c!65373 (and (is-Intermediate!5597 lt!259951) (undefined!6409 lt!259951)))))

(assert (=> d!84559 (= lt!259951 e!327934)))

(declare-fun c!65372 () Bool)

(assert (=> d!84559 (= c!65372 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!259950 () (_ BitVec 64))

(assert (=> d!84559 (= lt!259950 (select (arr!17141 (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118))) lt!259823))))

(assert (=> d!84559 (validMask!0 mask!3119)))

(assert (=> d!84559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259823 (select (store (arr!17141 a!3118) i!1132 k!1914) j!142) (array!35708 (store (arr!17141 a!3118) i!1132 k!1914) (size!17505 a!3118)) mask!3119) lt!259951)))

(declare-fun b!570167 () Bool)

(assert (=> b!570167 (= e!327934 e!327933)))

(declare-fun c!65374 () Bool)

(assert (=> b!570167 (= c!65374 (or (= lt!259950 (select (store (arr!17141 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!259950 lt!259950) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84559 c!65372) b!570165))

(assert (= (and d!84559 (not c!65372)) b!570167))

(assert (= (and b!570167 c!65374) b!570164))

(assert (= (and b!570167 (not c!65374)) b!570162))

(assert (= (and d!84559 c!65373) b!570166))

(assert (= (and d!84559 (not c!65373)) b!570161))

(assert (= (and b!570161 res!360131) b!570168))

(assert (= (and b!570168 (not res!360129)) b!570169))

(assert (= (and b!570169 (not res!360130)) b!570163))

(declare-fun m!549045 () Bool)

(assert (=> b!570163 m!549045))

(assert (=> b!570169 m!549045))

(declare-fun m!549047 () Bool)

(assert (=> d!84559 m!549047))

(assert (=> d!84559 m!548837))

(assert (=> b!570168 m!549045))

(declare-fun m!549049 () Bool)

(assert (=> b!570162 m!549049))

(assert (=> b!570162 m!549049))

(assert (=> b!570162 m!548853))

(declare-fun m!549051 () Bool)

(assert (=> b!570162 m!549051))

(assert (=> b!569859 d!84559))

(declare-fun b!570170 () Bool)

(declare-fun e!327936 () Bool)

(declare-fun e!327937 () Bool)

(assert (=> b!570170 (= e!327936 e!327937)))

(declare-fun res!360134 () Bool)

(declare-fun lt!259953 () SeekEntryResult!5597)

(assert (=> b!570170 (= res!360134 (and (is-Intermediate!5597 lt!259953) (not (undefined!6409 lt!259953)) (bvslt (x!53507 lt!259953) #b01111111111111111111111111111110) (bvsge (x!53507 lt!259953) #b00000000000000000000000000000000) (bvsge (x!53507 lt!259953) #b00000000000000000000000000000000)))))

(assert (=> b!570170 (=> (not res!360134) (not e!327937))))

(declare-fun e!327938 () SeekEntryResult!5597)

(declare-fun b!570171 () Bool)

(assert (=> b!570171 (= e!327938 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259824 #b00000000000000000000000000000000 mask!3119) (select (arr!17141 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570172 () Bool)

(assert (=> b!570172 (and (bvsge (index!24617 lt!259953) #b00000000000000000000000000000000) (bvslt (index!24617 lt!259953) (size!17505 a!3118)))))

(declare-fun e!327940 () Bool)

(assert (=> b!570172 (= e!327940 (= (select (arr!17141 a!3118) (index!24617 lt!259953)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!570173 () Bool)

(assert (=> b!570173 (= e!327938 (Intermediate!5597 false lt!259824 #b00000000000000000000000000000000))))

(declare-fun b!570174 () Bool)

(declare-fun e!327939 () SeekEntryResult!5597)

(assert (=> b!570174 (= e!327939 (Intermediate!5597 true lt!259824 #b00000000000000000000000000000000))))

(declare-fun b!570175 () Bool)

(assert (=> b!570175 (= e!327936 (bvsge (x!53507 lt!259953) #b01111111111111111111111111111110))))

(declare-fun b!570177 () Bool)

(assert (=> b!570177 (and (bvsge (index!24617 lt!259953) #b00000000000000000000000000000000) (bvslt (index!24617 lt!259953) (size!17505 a!3118)))))

(declare-fun res!360132 () Bool)

(assert (=> b!570177 (= res!360132 (= (select (arr!17141 a!3118) (index!24617 lt!259953)) (select (arr!17141 a!3118) j!142)))))

(assert (=> b!570177 (=> res!360132 e!327940)))

(assert (=> b!570177 (= e!327937 e!327940)))

