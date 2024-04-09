; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52636 () Bool)

(assert start!52636)

(declare-fun b!574007 () Bool)

(declare-fun res!363128 () Bool)

(declare-fun e!330246 () Bool)

(assert (=> b!574007 (=> (not res!363128) (not e!330246))))

(declare-datatypes ((array!35861 0))(
  ( (array!35862 (arr!17212 (Array (_ BitVec 32) (_ BitVec 64))) (size!17576 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35861)

(declare-datatypes ((List!11345 0))(
  ( (Nil!11342) (Cons!11341 (h!12374 (_ BitVec 64)) (t!17581 List!11345)) )
))
(declare-fun arrayNoDuplicates!0 (array!35861 (_ BitVec 32) List!11345) Bool)

(assert (=> b!574007 (= res!363128 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11342))))

(declare-fun b!574008 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5668 0))(
  ( (MissingZero!5668 (index!24899 (_ BitVec 32))) (Found!5668 (index!24900 (_ BitVec 32))) (Intermediate!5668 (undefined!6480 Bool) (index!24901 (_ BitVec 32)) (x!53806 (_ BitVec 32))) (Undefined!5668) (MissingVacant!5668 (index!24902 (_ BitVec 32))) )
))
(declare-fun lt!262222 () SeekEntryResult!5668)

(declare-fun e!330250 () Bool)

(get-info :version)

(assert (=> b!574008 (= e!330250 (not (or (undefined!6480 lt!262222) (not ((_ is Intermediate!5668) lt!262222)) (let ((bdg!18009 (select (arr!17212 a!3118) (index!24901 lt!262222)))) (or (= bdg!18009 (select (arr!17212 a!3118) j!142)) (= bdg!18009 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24901 lt!262222) #b00000000000000000000000000000000) (bvsge (index!24901 lt!262222) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53806 lt!262222) #b01111111111111111111111111111110) (bvslt (x!53806 lt!262222) #b00000000000000000000000000000000) (= bdg!18009 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330251 () Bool)

(assert (=> b!574008 e!330251))

(declare-fun res!363129 () Bool)

(assert (=> b!574008 (=> (not res!363129) (not e!330251))))

(declare-fun lt!262220 () SeekEntryResult!5668)

(assert (=> b!574008 (= res!363129 (= lt!262220 (Found!5668 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35861 (_ BitVec 32)) SeekEntryResult!5668)

(assert (=> b!574008 (= lt!262220 (seekEntryOrOpen!0 (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35861 (_ BitVec 32)) Bool)

(assert (=> b!574008 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18038 0))(
  ( (Unit!18039) )
))
(declare-fun lt!262217 () Unit!18038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18038)

(assert (=> b!574008 (= lt!262217 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574009 () Bool)

(declare-fun e!330248 () Bool)

(assert (=> b!574009 (= e!330251 e!330248)))

(declare-fun res!363123 () Bool)

(assert (=> b!574009 (=> res!363123 e!330248)))

(assert (=> b!574009 (= res!363123 (or (undefined!6480 lt!262222) (not ((_ is Intermediate!5668) lt!262222))))))

(declare-fun b!574011 () Bool)

(declare-fun e!330247 () Bool)

(assert (=> b!574011 (= e!330247 e!330246)))

(declare-fun res!363131 () Bool)

(assert (=> b!574011 (=> (not res!363131) (not e!330246))))

(declare-fun lt!262218 () SeekEntryResult!5668)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!574011 (= res!363131 (or (= lt!262218 (MissingZero!5668 i!1132)) (= lt!262218 (MissingVacant!5668 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!574011 (= lt!262218 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!574012 () Bool)

(declare-fun res!363127 () Bool)

(assert (=> b!574012 (=> (not res!363127) (not e!330247))))

(declare-fun arrayContainsKey!0 (array!35861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574012 (= res!363127 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun lt!262223 () array!35861)

(declare-fun b!574013 () Bool)

(declare-fun e!330252 () Bool)

(declare-fun lt!262221 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35861 (_ BitVec 32)) SeekEntryResult!5668)

(assert (=> b!574013 (= e!330252 (= (seekEntryOrOpen!0 lt!262221 lt!262223 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262222) (index!24901 lt!262222) (index!24901 lt!262222) lt!262221 lt!262223 mask!3119)))))

(declare-fun b!574014 () Bool)

(declare-fun res!363119 () Bool)

(assert (=> b!574014 (=> (not res!363119) (not e!330247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574014 (= res!363119 (validKeyInArray!0 k0!1914))))

(declare-fun b!574015 () Bool)

(declare-fun res!363120 () Bool)

(assert (=> b!574015 (=> (not res!363120) (not e!330247))))

(assert (=> b!574015 (= res!363120 (and (= (size!17576 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17576 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17576 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!363122 () Bool)

(assert (=> start!52636 (=> (not res!363122) (not e!330247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52636 (= res!363122 (validMask!0 mask!3119))))

(assert (=> start!52636 e!330247))

(assert (=> start!52636 true))

(declare-fun array_inv!12986 (array!35861) Bool)

(assert (=> start!52636 (array_inv!12986 a!3118)))

(declare-fun b!574010 () Bool)

(declare-fun e!330249 () Bool)

(assert (=> b!574010 (= e!330248 e!330249)))

(declare-fun res!363130 () Bool)

(assert (=> b!574010 (=> res!363130 e!330249)))

(declare-fun lt!262216 () (_ BitVec 64))

(assert (=> b!574010 (= res!363130 (or (= lt!262216 (select (arr!17212 a!3118) j!142)) (= lt!262216 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574010 (= lt!262216 (select (arr!17212 a!3118) (index!24901 lt!262222)))))

(declare-fun b!574016 () Bool)

(declare-fun res!363126 () Bool)

(assert (=> b!574016 (=> (not res!363126) (not e!330247))))

(assert (=> b!574016 (= res!363126 (validKeyInArray!0 (select (arr!17212 a!3118) j!142)))))

(declare-fun b!574017 () Bool)

(assert (=> b!574017 (= e!330246 e!330250)))

(declare-fun res!363121 () Bool)

(assert (=> b!574017 (=> (not res!363121) (not e!330250))))

(declare-fun lt!262215 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35861 (_ BitVec 32)) SeekEntryResult!5668)

(assert (=> b!574017 (= res!363121 (= lt!262222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262215 lt!262221 lt!262223 mask!3119)))))

(declare-fun lt!262219 () (_ BitVec 32))

(assert (=> b!574017 (= lt!262222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262219 (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574017 (= lt!262215 (toIndex!0 lt!262221 mask!3119))))

(assert (=> b!574017 (= lt!262221 (select (store (arr!17212 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!574017 (= lt!262219 (toIndex!0 (select (arr!17212 a!3118) j!142) mask!3119))))

(assert (=> b!574017 (= lt!262223 (array!35862 (store (arr!17212 a!3118) i!1132 k0!1914) (size!17576 a!3118)))))

(declare-fun b!574018 () Bool)

(declare-fun res!363125 () Bool)

(assert (=> b!574018 (=> (not res!363125) (not e!330246))))

(assert (=> b!574018 (= res!363125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!574019 () Bool)

(assert (=> b!574019 (= e!330249 e!330252)))

(declare-fun res!363124 () Bool)

(assert (=> b!574019 (=> (not res!363124) (not e!330252))))

(assert (=> b!574019 (= res!363124 (= lt!262220 (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262222) (index!24901 lt!262222) (index!24901 lt!262222) (select (arr!17212 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52636 res!363122) b!574015))

(assert (= (and b!574015 res!363120) b!574016))

(assert (= (and b!574016 res!363126) b!574014))

(assert (= (and b!574014 res!363119) b!574012))

(assert (= (and b!574012 res!363127) b!574011))

(assert (= (and b!574011 res!363131) b!574018))

(assert (= (and b!574018 res!363125) b!574007))

(assert (= (and b!574007 res!363128) b!574017))

(assert (= (and b!574017 res!363121) b!574008))

(assert (= (and b!574008 res!363129) b!574009))

(assert (= (and b!574009 (not res!363123)) b!574010))

(assert (= (and b!574010 (not res!363130)) b!574019))

(assert (= (and b!574019 res!363124) b!574013))

(declare-fun m!552963 () Bool)

(assert (=> b!574019 m!552963))

(assert (=> b!574019 m!552963))

(declare-fun m!552965 () Bool)

(assert (=> b!574019 m!552965))

(declare-fun m!552967 () Bool)

(assert (=> b!574007 m!552967))

(declare-fun m!552969 () Bool)

(assert (=> start!52636 m!552969))

(declare-fun m!552971 () Bool)

(assert (=> start!52636 m!552971))

(assert (=> b!574010 m!552963))

(declare-fun m!552973 () Bool)

(assert (=> b!574010 m!552973))

(declare-fun m!552975 () Bool)

(assert (=> b!574011 m!552975))

(declare-fun m!552977 () Bool)

(assert (=> b!574018 m!552977))

(assert (=> b!574016 m!552963))

(assert (=> b!574016 m!552963))

(declare-fun m!552979 () Bool)

(assert (=> b!574016 m!552979))

(assert (=> b!574008 m!552963))

(declare-fun m!552981 () Bool)

(assert (=> b!574008 m!552981))

(assert (=> b!574008 m!552963))

(declare-fun m!552983 () Bool)

(assert (=> b!574008 m!552983))

(assert (=> b!574008 m!552973))

(declare-fun m!552985 () Bool)

(assert (=> b!574008 m!552985))

(declare-fun m!552987 () Bool)

(assert (=> b!574017 m!552987))

(assert (=> b!574017 m!552963))

(declare-fun m!552989 () Bool)

(assert (=> b!574017 m!552989))

(assert (=> b!574017 m!552963))

(declare-fun m!552991 () Bool)

(assert (=> b!574017 m!552991))

(declare-fun m!552993 () Bool)

(assert (=> b!574017 m!552993))

(declare-fun m!552995 () Bool)

(assert (=> b!574017 m!552995))

(assert (=> b!574017 m!552963))

(declare-fun m!552997 () Bool)

(assert (=> b!574017 m!552997))

(declare-fun m!552999 () Bool)

(assert (=> b!574014 m!552999))

(declare-fun m!553001 () Bool)

(assert (=> b!574013 m!553001))

(declare-fun m!553003 () Bool)

(assert (=> b!574013 m!553003))

(declare-fun m!553005 () Bool)

(assert (=> b!574012 m!553005))

(check-sat (not start!52636) (not b!574012) (not b!574013) (not b!574017) (not b!574019) (not b!574008) (not b!574016) (not b!574014) (not b!574018) (not b!574007) (not b!574011))
(check-sat)
(get-model)

(declare-fun b!574071 () Bool)

(declare-fun e!330284 () SeekEntryResult!5668)

(declare-fun lt!262258 () SeekEntryResult!5668)

(assert (=> b!574071 (= e!330284 (MissingZero!5668 (index!24901 lt!262258)))))

(declare-fun b!574072 () Bool)

(declare-fun c!65812 () Bool)

(declare-fun lt!262257 () (_ BitVec 64))

(assert (=> b!574072 (= c!65812 (= lt!262257 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330286 () SeekEntryResult!5668)

(assert (=> b!574072 (= e!330286 e!330284)))

(declare-fun b!574073 () Bool)

(assert (=> b!574073 (= e!330284 (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262258) (index!24901 lt!262258) (index!24901 lt!262258) lt!262221 lt!262223 mask!3119))))

(declare-fun b!574074 () Bool)

(assert (=> b!574074 (= e!330286 (Found!5668 (index!24901 lt!262258)))))

(declare-fun b!574075 () Bool)

(declare-fun e!330285 () SeekEntryResult!5668)

(assert (=> b!574075 (= e!330285 Undefined!5668)))

(declare-fun d!84959 () Bool)

(declare-fun lt!262259 () SeekEntryResult!5668)

(assert (=> d!84959 (and (or ((_ is Undefined!5668) lt!262259) (not ((_ is Found!5668) lt!262259)) (and (bvsge (index!24900 lt!262259) #b00000000000000000000000000000000) (bvslt (index!24900 lt!262259) (size!17576 lt!262223)))) (or ((_ is Undefined!5668) lt!262259) ((_ is Found!5668) lt!262259) (not ((_ is MissingZero!5668) lt!262259)) (and (bvsge (index!24899 lt!262259) #b00000000000000000000000000000000) (bvslt (index!24899 lt!262259) (size!17576 lt!262223)))) (or ((_ is Undefined!5668) lt!262259) ((_ is Found!5668) lt!262259) ((_ is MissingZero!5668) lt!262259) (not ((_ is MissingVacant!5668) lt!262259)) (and (bvsge (index!24902 lt!262259) #b00000000000000000000000000000000) (bvslt (index!24902 lt!262259) (size!17576 lt!262223)))) (or ((_ is Undefined!5668) lt!262259) (ite ((_ is Found!5668) lt!262259) (= (select (arr!17212 lt!262223) (index!24900 lt!262259)) lt!262221) (ite ((_ is MissingZero!5668) lt!262259) (= (select (arr!17212 lt!262223) (index!24899 lt!262259)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5668) lt!262259) (= (select (arr!17212 lt!262223) (index!24902 lt!262259)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84959 (= lt!262259 e!330285)))

(declare-fun c!65813 () Bool)

(assert (=> d!84959 (= c!65813 (and ((_ is Intermediate!5668) lt!262258) (undefined!6480 lt!262258)))))

(assert (=> d!84959 (= lt!262258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262221 mask!3119) lt!262221 lt!262223 mask!3119))))

(assert (=> d!84959 (validMask!0 mask!3119)))

(assert (=> d!84959 (= (seekEntryOrOpen!0 lt!262221 lt!262223 mask!3119) lt!262259)))

(declare-fun b!574076 () Bool)

(assert (=> b!574076 (= e!330285 e!330286)))

(assert (=> b!574076 (= lt!262257 (select (arr!17212 lt!262223) (index!24901 lt!262258)))))

(declare-fun c!65811 () Bool)

(assert (=> b!574076 (= c!65811 (= lt!262257 lt!262221))))

(assert (= (and d!84959 c!65813) b!574075))

(assert (= (and d!84959 (not c!65813)) b!574076))

(assert (= (and b!574076 c!65811) b!574074))

(assert (= (and b!574076 (not c!65811)) b!574072))

(assert (= (and b!574072 c!65812) b!574071))

(assert (= (and b!574072 (not c!65812)) b!574073))

(declare-fun m!553051 () Bool)

(assert (=> b!574073 m!553051))

(declare-fun m!553053 () Bool)

(assert (=> d!84959 m!553053))

(declare-fun m!553055 () Bool)

(assert (=> d!84959 m!553055))

(assert (=> d!84959 m!552995))

(assert (=> d!84959 m!552969))

(assert (=> d!84959 m!552995))

(declare-fun m!553057 () Bool)

(assert (=> d!84959 m!553057))

(declare-fun m!553059 () Bool)

(assert (=> d!84959 m!553059))

(declare-fun m!553061 () Bool)

(assert (=> b!574076 m!553061))

(assert (=> b!574013 d!84959))

(declare-fun b!574089 () Bool)

(declare-fun e!330293 () SeekEntryResult!5668)

(assert (=> b!574089 (= e!330293 (MissingVacant!5668 (index!24901 lt!262222)))))

(declare-fun b!574090 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574090 (= e!330293 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53806 lt!262222) #b00000000000000000000000000000001) (nextIndex!0 (index!24901 lt!262222) (x!53806 lt!262222) mask!3119) (index!24901 lt!262222) lt!262221 lt!262223 mask!3119))))

(declare-fun b!574091 () Bool)

(declare-fun e!330294 () SeekEntryResult!5668)

(assert (=> b!574091 (= e!330294 (Found!5668 (index!24901 lt!262222)))))

(declare-fun b!574092 () Bool)

(declare-fun e!330295 () SeekEntryResult!5668)

(assert (=> b!574092 (= e!330295 e!330294)))

(declare-fun c!65821 () Bool)

(declare-fun lt!262265 () (_ BitVec 64))

(assert (=> b!574092 (= c!65821 (= lt!262265 lt!262221))))

(declare-fun lt!262264 () SeekEntryResult!5668)

(declare-fun d!84961 () Bool)

(assert (=> d!84961 (and (or ((_ is Undefined!5668) lt!262264) (not ((_ is Found!5668) lt!262264)) (and (bvsge (index!24900 lt!262264) #b00000000000000000000000000000000) (bvslt (index!24900 lt!262264) (size!17576 lt!262223)))) (or ((_ is Undefined!5668) lt!262264) ((_ is Found!5668) lt!262264) (not ((_ is MissingVacant!5668) lt!262264)) (not (= (index!24902 lt!262264) (index!24901 lt!262222))) (and (bvsge (index!24902 lt!262264) #b00000000000000000000000000000000) (bvslt (index!24902 lt!262264) (size!17576 lt!262223)))) (or ((_ is Undefined!5668) lt!262264) (ite ((_ is Found!5668) lt!262264) (= (select (arr!17212 lt!262223) (index!24900 lt!262264)) lt!262221) (and ((_ is MissingVacant!5668) lt!262264) (= (index!24902 lt!262264) (index!24901 lt!262222)) (= (select (arr!17212 lt!262223) (index!24902 lt!262264)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84961 (= lt!262264 e!330295)))

(declare-fun c!65822 () Bool)

(assert (=> d!84961 (= c!65822 (bvsge (x!53806 lt!262222) #b01111111111111111111111111111110))))

(assert (=> d!84961 (= lt!262265 (select (arr!17212 lt!262223) (index!24901 lt!262222)))))

(assert (=> d!84961 (validMask!0 mask!3119)))

(assert (=> d!84961 (= (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262222) (index!24901 lt!262222) (index!24901 lt!262222) lt!262221 lt!262223 mask!3119) lt!262264)))

(declare-fun b!574093 () Bool)

(assert (=> b!574093 (= e!330295 Undefined!5668)))

(declare-fun b!574094 () Bool)

(declare-fun c!65820 () Bool)

(assert (=> b!574094 (= c!65820 (= lt!262265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574094 (= e!330294 e!330293)))

(assert (= (and d!84961 c!65822) b!574093))

(assert (= (and d!84961 (not c!65822)) b!574092))

(assert (= (and b!574092 c!65821) b!574091))

(assert (= (and b!574092 (not c!65821)) b!574094))

(assert (= (and b!574094 c!65820) b!574089))

(assert (= (and b!574094 (not c!65820)) b!574090))

(declare-fun m!553063 () Bool)

(assert (=> b!574090 m!553063))

(assert (=> b!574090 m!553063))

(declare-fun m!553065 () Bool)

(assert (=> b!574090 m!553065))

(declare-fun m!553067 () Bool)

(assert (=> d!84961 m!553067))

(declare-fun m!553069 () Bool)

(assert (=> d!84961 m!553069))

(declare-fun m!553071 () Bool)

(assert (=> d!84961 m!553071))

(assert (=> d!84961 m!552969))

(assert (=> b!574013 d!84961))

(declare-fun bm!32663 () Bool)

(declare-fun call!32666 () Bool)

(assert (=> bm!32663 (= call!32666 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574121 () Bool)

(declare-fun e!330313 () Bool)

(assert (=> b!574121 (= e!330313 call!32666)))

(declare-fun b!574122 () Bool)

(declare-fun e!330312 () Bool)

(assert (=> b!574122 (= e!330312 call!32666)))

(declare-fun b!574123 () Bool)

(declare-fun e!330311 () Bool)

(assert (=> b!574123 (= e!330311 e!330313)))

(declare-fun c!65834 () Bool)

(assert (=> b!574123 (= c!65834 (validKeyInArray!0 (select (arr!17212 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574124 () Bool)

(assert (=> b!574124 (= e!330313 e!330312)))

(declare-fun lt!262285 () (_ BitVec 64))

(assert (=> b!574124 (= lt!262285 (select (arr!17212 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262287 () Unit!18038)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35861 (_ BitVec 64) (_ BitVec 32)) Unit!18038)

(assert (=> b!574124 (= lt!262287 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262285 #b00000000000000000000000000000000))))

(assert (=> b!574124 (arrayContainsKey!0 a!3118 lt!262285 #b00000000000000000000000000000000)))

(declare-fun lt!262286 () Unit!18038)

(assert (=> b!574124 (= lt!262286 lt!262287)))

(declare-fun res!363176 () Bool)

(assert (=> b!574124 (= res!363176 (= (seekEntryOrOpen!0 (select (arr!17212 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5668 #b00000000000000000000000000000000)))))

(assert (=> b!574124 (=> (not res!363176) (not e!330312))))

(declare-fun d!84967 () Bool)

(declare-fun res!363175 () Bool)

(assert (=> d!84967 (=> res!363175 e!330311)))

(assert (=> d!84967 (= res!363175 (bvsge #b00000000000000000000000000000000 (size!17576 a!3118)))))

(assert (=> d!84967 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330311)))

(assert (= (and d!84967 (not res!363175)) b!574123))

(assert (= (and b!574123 c!65834) b!574124))

(assert (= (and b!574123 (not c!65834)) b!574121))

(assert (= (and b!574124 res!363176) b!574122))

(assert (= (or b!574122 b!574121) bm!32663))

(declare-fun m!553085 () Bool)

(assert (=> bm!32663 m!553085))

(declare-fun m!553087 () Bool)

(assert (=> b!574123 m!553087))

(assert (=> b!574123 m!553087))

(declare-fun m!553089 () Bool)

(assert (=> b!574123 m!553089))

(assert (=> b!574124 m!553087))

(declare-fun m!553091 () Bool)

(assert (=> b!574124 m!553091))

(declare-fun m!553093 () Bool)

(assert (=> b!574124 m!553093))

(assert (=> b!574124 m!553087))

(declare-fun m!553095 () Bool)

(assert (=> b!574124 m!553095))

(assert (=> b!574018 d!84967))

(declare-fun b!574137 () Bool)

(declare-fun e!330320 () SeekEntryResult!5668)

(assert (=> b!574137 (= e!330320 (MissingVacant!5668 (index!24901 lt!262222)))))

(declare-fun b!574138 () Bool)

(assert (=> b!574138 (= e!330320 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53806 lt!262222) #b00000000000000000000000000000001) (nextIndex!0 (index!24901 lt!262222) (x!53806 lt!262222) mask!3119) (index!24901 lt!262222) (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574139 () Bool)

(declare-fun e!330321 () SeekEntryResult!5668)

(assert (=> b!574139 (= e!330321 (Found!5668 (index!24901 lt!262222)))))

(declare-fun b!574140 () Bool)

(declare-fun e!330322 () SeekEntryResult!5668)

(assert (=> b!574140 (= e!330322 e!330321)))

(declare-fun lt!262289 () (_ BitVec 64))

(declare-fun c!65842 () Bool)

(assert (=> b!574140 (= c!65842 (= lt!262289 (select (arr!17212 a!3118) j!142)))))

(declare-fun d!84971 () Bool)

(declare-fun lt!262288 () SeekEntryResult!5668)

(assert (=> d!84971 (and (or ((_ is Undefined!5668) lt!262288) (not ((_ is Found!5668) lt!262288)) (and (bvsge (index!24900 lt!262288) #b00000000000000000000000000000000) (bvslt (index!24900 lt!262288) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262288) ((_ is Found!5668) lt!262288) (not ((_ is MissingVacant!5668) lt!262288)) (not (= (index!24902 lt!262288) (index!24901 lt!262222))) (and (bvsge (index!24902 lt!262288) #b00000000000000000000000000000000) (bvslt (index!24902 lt!262288) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262288) (ite ((_ is Found!5668) lt!262288) (= (select (arr!17212 a!3118) (index!24900 lt!262288)) (select (arr!17212 a!3118) j!142)) (and ((_ is MissingVacant!5668) lt!262288) (= (index!24902 lt!262288) (index!24901 lt!262222)) (= (select (arr!17212 a!3118) (index!24902 lt!262288)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84971 (= lt!262288 e!330322)))

(declare-fun c!65843 () Bool)

(assert (=> d!84971 (= c!65843 (bvsge (x!53806 lt!262222) #b01111111111111111111111111111110))))

(assert (=> d!84971 (= lt!262289 (select (arr!17212 a!3118) (index!24901 lt!262222)))))

(assert (=> d!84971 (validMask!0 mask!3119)))

(assert (=> d!84971 (= (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262222) (index!24901 lt!262222) (index!24901 lt!262222) (select (arr!17212 a!3118) j!142) a!3118 mask!3119) lt!262288)))

(declare-fun b!574141 () Bool)

(assert (=> b!574141 (= e!330322 Undefined!5668)))

(declare-fun b!574142 () Bool)

(declare-fun c!65841 () Bool)

(assert (=> b!574142 (= c!65841 (= lt!262289 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574142 (= e!330321 e!330320)))

(assert (= (and d!84971 c!65843) b!574141))

(assert (= (and d!84971 (not c!65843)) b!574140))

(assert (= (and b!574140 c!65842) b!574139))

(assert (= (and b!574140 (not c!65842)) b!574142))

(assert (= (and b!574142 c!65841) b!574137))

(assert (= (and b!574142 (not c!65841)) b!574138))

(assert (=> b!574138 m!553063))

(assert (=> b!574138 m!553063))

(assert (=> b!574138 m!552963))

(declare-fun m!553097 () Bool)

(assert (=> b!574138 m!553097))

(declare-fun m!553099 () Bool)

(assert (=> d!84971 m!553099))

(declare-fun m!553101 () Bool)

(assert (=> d!84971 m!553101))

(assert (=> d!84971 m!552973))

(assert (=> d!84971 m!552969))

(assert (=> b!574019 d!84971))

(declare-fun b!574147 () Bool)

(declare-fun e!330325 () SeekEntryResult!5668)

(declare-fun lt!262291 () SeekEntryResult!5668)

(assert (=> b!574147 (= e!330325 (MissingZero!5668 (index!24901 lt!262291)))))

(declare-fun b!574148 () Bool)

(declare-fun c!65845 () Bool)

(declare-fun lt!262290 () (_ BitVec 64))

(assert (=> b!574148 (= c!65845 (= lt!262290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330327 () SeekEntryResult!5668)

(assert (=> b!574148 (= e!330327 e!330325)))

(declare-fun b!574149 () Bool)

(assert (=> b!574149 (= e!330325 (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262291) (index!24901 lt!262291) (index!24901 lt!262291) (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574150 () Bool)

(assert (=> b!574150 (= e!330327 (Found!5668 (index!24901 lt!262291)))))

(declare-fun b!574151 () Bool)

(declare-fun e!330326 () SeekEntryResult!5668)

(assert (=> b!574151 (= e!330326 Undefined!5668)))

(declare-fun d!84973 () Bool)

(declare-fun lt!262292 () SeekEntryResult!5668)

(assert (=> d!84973 (and (or ((_ is Undefined!5668) lt!262292) (not ((_ is Found!5668) lt!262292)) (and (bvsge (index!24900 lt!262292) #b00000000000000000000000000000000) (bvslt (index!24900 lt!262292) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262292) ((_ is Found!5668) lt!262292) (not ((_ is MissingZero!5668) lt!262292)) (and (bvsge (index!24899 lt!262292) #b00000000000000000000000000000000) (bvslt (index!24899 lt!262292) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262292) ((_ is Found!5668) lt!262292) ((_ is MissingZero!5668) lt!262292) (not ((_ is MissingVacant!5668) lt!262292)) (and (bvsge (index!24902 lt!262292) #b00000000000000000000000000000000) (bvslt (index!24902 lt!262292) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262292) (ite ((_ is Found!5668) lt!262292) (= (select (arr!17212 a!3118) (index!24900 lt!262292)) (select (arr!17212 a!3118) j!142)) (ite ((_ is MissingZero!5668) lt!262292) (= (select (arr!17212 a!3118) (index!24899 lt!262292)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5668) lt!262292) (= (select (arr!17212 a!3118) (index!24902 lt!262292)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84973 (= lt!262292 e!330326)))

(declare-fun c!65846 () Bool)

(assert (=> d!84973 (= c!65846 (and ((_ is Intermediate!5668) lt!262291) (undefined!6480 lt!262291)))))

(assert (=> d!84973 (= lt!262291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17212 a!3118) j!142) mask!3119) (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84973 (validMask!0 mask!3119)))

(assert (=> d!84973 (= (seekEntryOrOpen!0 (select (arr!17212 a!3118) j!142) a!3118 mask!3119) lt!262292)))

(declare-fun b!574152 () Bool)

(assert (=> b!574152 (= e!330326 e!330327)))

(assert (=> b!574152 (= lt!262290 (select (arr!17212 a!3118) (index!24901 lt!262291)))))

(declare-fun c!65844 () Bool)

(assert (=> b!574152 (= c!65844 (= lt!262290 (select (arr!17212 a!3118) j!142)))))

(assert (= (and d!84973 c!65846) b!574151))

(assert (= (and d!84973 (not c!65846)) b!574152))

(assert (= (and b!574152 c!65844) b!574150))

(assert (= (and b!574152 (not c!65844)) b!574148))

(assert (= (and b!574148 c!65845) b!574147))

(assert (= (and b!574148 (not c!65845)) b!574149))

(assert (=> b!574149 m!552963))

(declare-fun m!553103 () Bool)

(assert (=> b!574149 m!553103))

(declare-fun m!553105 () Bool)

(assert (=> d!84973 m!553105))

(declare-fun m!553107 () Bool)

(assert (=> d!84973 m!553107))

(assert (=> d!84973 m!552963))

(assert (=> d!84973 m!552989))

(assert (=> d!84973 m!552969))

(assert (=> d!84973 m!552989))

(assert (=> d!84973 m!552963))

(declare-fun m!553109 () Bool)

(assert (=> d!84973 m!553109))

(declare-fun m!553111 () Bool)

(assert (=> d!84973 m!553111))

(declare-fun m!553113 () Bool)

(assert (=> b!574152 m!553113))

(assert (=> b!574008 d!84973))

(declare-fun bm!32666 () Bool)

(declare-fun call!32669 () Bool)

(assert (=> bm!32666 (= call!32669 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574157 () Bool)

(declare-fun e!330334 () Bool)

(assert (=> b!574157 (= e!330334 call!32669)))

(declare-fun b!574158 () Bool)

(declare-fun e!330333 () Bool)

(assert (=> b!574158 (= e!330333 call!32669)))

(declare-fun b!574159 () Bool)

(declare-fun e!330332 () Bool)

(assert (=> b!574159 (= e!330332 e!330334)))

(declare-fun c!65849 () Bool)

(assert (=> b!574159 (= c!65849 (validKeyInArray!0 (select (arr!17212 a!3118) j!142)))))

(declare-fun b!574160 () Bool)

(assert (=> b!574160 (= e!330334 e!330333)))

(declare-fun lt!262299 () (_ BitVec 64))

(assert (=> b!574160 (= lt!262299 (select (arr!17212 a!3118) j!142))))

(declare-fun lt!262301 () Unit!18038)

(assert (=> b!574160 (= lt!262301 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262299 j!142))))

(assert (=> b!574160 (arrayContainsKey!0 a!3118 lt!262299 #b00000000000000000000000000000000)))

(declare-fun lt!262300 () Unit!18038)

(assert (=> b!574160 (= lt!262300 lt!262301)))

(declare-fun res!363182 () Bool)

(assert (=> b!574160 (= res!363182 (= (seekEntryOrOpen!0 (select (arr!17212 a!3118) j!142) a!3118 mask!3119) (Found!5668 j!142)))))

(assert (=> b!574160 (=> (not res!363182) (not e!330333))))

(declare-fun d!84975 () Bool)

(declare-fun res!363181 () Bool)

(assert (=> d!84975 (=> res!363181 e!330332)))

(assert (=> d!84975 (= res!363181 (bvsge j!142 (size!17576 a!3118)))))

(assert (=> d!84975 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330332)))

(assert (= (and d!84975 (not res!363181)) b!574159))

(assert (= (and b!574159 c!65849) b!574160))

(assert (= (and b!574159 (not c!65849)) b!574157))

(assert (= (and b!574160 res!363182) b!574158))

(assert (= (or b!574158 b!574157) bm!32666))

(declare-fun m!553115 () Bool)

(assert (=> bm!32666 m!553115))

(assert (=> b!574159 m!552963))

(assert (=> b!574159 m!552963))

(assert (=> b!574159 m!552979))

(assert (=> b!574160 m!552963))

(declare-fun m!553117 () Bool)

(assert (=> b!574160 m!553117))

(declare-fun m!553119 () Bool)

(assert (=> b!574160 m!553119))

(assert (=> b!574160 m!552963))

(assert (=> b!574160 m!552983))

(assert (=> b!574008 d!84975))

(declare-fun d!84977 () Bool)

(assert (=> d!84977 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262309 () Unit!18038)

(declare-fun choose!38 (array!35861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18038)

(assert (=> d!84977 (= lt!262309 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84977 (validMask!0 mask!3119)))

(assert (=> d!84977 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262309)))

(declare-fun bs!17766 () Bool)

(assert (= bs!17766 d!84977))

(assert (=> bs!17766 m!552985))

(declare-fun m!553135 () Bool)

(assert (=> bs!17766 m!553135))

(assert (=> bs!17766 m!552969))

(assert (=> b!574008 d!84977))

(declare-fun d!84983 () Bool)

(assert (=> d!84983 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574014 d!84983))

(declare-fun b!574181 () Bool)

(declare-fun e!330349 () SeekEntryResult!5668)

(declare-fun lt!262311 () SeekEntryResult!5668)

(assert (=> b!574181 (= e!330349 (MissingZero!5668 (index!24901 lt!262311)))))

(declare-fun b!574182 () Bool)

(declare-fun c!65857 () Bool)

(declare-fun lt!262310 () (_ BitVec 64))

(assert (=> b!574182 (= c!65857 (= lt!262310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330351 () SeekEntryResult!5668)

(assert (=> b!574182 (= e!330351 e!330349)))

(declare-fun b!574183 () Bool)

(assert (=> b!574183 (= e!330349 (seekKeyOrZeroReturnVacant!0 (x!53806 lt!262311) (index!24901 lt!262311) (index!24901 lt!262311) k0!1914 a!3118 mask!3119))))

(declare-fun b!574184 () Bool)

(assert (=> b!574184 (= e!330351 (Found!5668 (index!24901 lt!262311)))))

(declare-fun b!574185 () Bool)

(declare-fun e!330350 () SeekEntryResult!5668)

(assert (=> b!574185 (= e!330350 Undefined!5668)))

(declare-fun d!84985 () Bool)

(declare-fun lt!262312 () SeekEntryResult!5668)

(assert (=> d!84985 (and (or ((_ is Undefined!5668) lt!262312) (not ((_ is Found!5668) lt!262312)) (and (bvsge (index!24900 lt!262312) #b00000000000000000000000000000000) (bvslt (index!24900 lt!262312) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262312) ((_ is Found!5668) lt!262312) (not ((_ is MissingZero!5668) lt!262312)) (and (bvsge (index!24899 lt!262312) #b00000000000000000000000000000000) (bvslt (index!24899 lt!262312) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262312) ((_ is Found!5668) lt!262312) ((_ is MissingZero!5668) lt!262312) (not ((_ is MissingVacant!5668) lt!262312)) (and (bvsge (index!24902 lt!262312) #b00000000000000000000000000000000) (bvslt (index!24902 lt!262312) (size!17576 a!3118)))) (or ((_ is Undefined!5668) lt!262312) (ite ((_ is Found!5668) lt!262312) (= (select (arr!17212 a!3118) (index!24900 lt!262312)) k0!1914) (ite ((_ is MissingZero!5668) lt!262312) (= (select (arr!17212 a!3118) (index!24899 lt!262312)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5668) lt!262312) (= (select (arr!17212 a!3118) (index!24902 lt!262312)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84985 (= lt!262312 e!330350)))

(declare-fun c!65858 () Bool)

(assert (=> d!84985 (= c!65858 (and ((_ is Intermediate!5668) lt!262311) (undefined!6480 lt!262311)))))

(assert (=> d!84985 (= lt!262311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84985 (validMask!0 mask!3119)))

(assert (=> d!84985 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!262312)))

(declare-fun b!574186 () Bool)

(assert (=> b!574186 (= e!330350 e!330351)))

(assert (=> b!574186 (= lt!262310 (select (arr!17212 a!3118) (index!24901 lt!262311)))))

(declare-fun c!65856 () Bool)

(assert (=> b!574186 (= c!65856 (= lt!262310 k0!1914))))

(assert (= (and d!84985 c!65858) b!574185))

(assert (= (and d!84985 (not c!65858)) b!574186))

(assert (= (and b!574186 c!65856) b!574184))

(assert (= (and b!574186 (not c!65856)) b!574182))

(assert (= (and b!574182 c!65857) b!574181))

(assert (= (and b!574182 (not c!65857)) b!574183))

(declare-fun m!553137 () Bool)

(assert (=> b!574183 m!553137))

(declare-fun m!553139 () Bool)

(assert (=> d!84985 m!553139))

(declare-fun m!553141 () Bool)

(assert (=> d!84985 m!553141))

(declare-fun m!553143 () Bool)

(assert (=> d!84985 m!553143))

(assert (=> d!84985 m!552969))

(assert (=> d!84985 m!553143))

(declare-fun m!553145 () Bool)

(assert (=> d!84985 m!553145))

(declare-fun m!553147 () Bool)

(assert (=> d!84985 m!553147))

(declare-fun m!553149 () Bool)

(assert (=> b!574186 m!553149))

(assert (=> b!574011 d!84985))

(declare-fun d!84987 () Bool)

(assert (=> d!84987 (= (validKeyInArray!0 (select (arr!17212 a!3118) j!142)) (and (not (= (select (arr!17212 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17212 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574016 d!84987))

(declare-fun d!84989 () Bool)

(assert (=> d!84989 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52636 d!84989))

(declare-fun d!84997 () Bool)

(assert (=> d!84997 (= (array_inv!12986 a!3118) (bvsge (size!17576 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52636 d!84997))

(declare-fun b!574266 () Bool)

(declare-fun e!330400 () Bool)

(declare-fun lt!262345 () SeekEntryResult!5668)

(assert (=> b!574266 (= e!330400 (bvsge (x!53806 lt!262345) #b01111111111111111111111111111110))))

(declare-fun b!574267 () Bool)

(assert (=> b!574267 (and (bvsge (index!24901 lt!262345) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262345) (size!17576 lt!262223)))))

(declare-fun res!363212 () Bool)

(assert (=> b!574267 (= res!363212 (= (select (arr!17212 lt!262223) (index!24901 lt!262345)) lt!262221))))

(declare-fun e!330403 () Bool)

(assert (=> b!574267 (=> res!363212 e!330403)))

(declare-fun e!330401 () Bool)

(assert (=> b!574267 (= e!330401 e!330403)))

(declare-fun b!574268 () Bool)

(assert (=> b!574268 (and (bvsge (index!24901 lt!262345) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262345) (size!17576 lt!262223)))))

(assert (=> b!574268 (= e!330403 (= (select (arr!17212 lt!262223) (index!24901 lt!262345)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574269 () Bool)

(assert (=> b!574269 (and (bvsge (index!24901 lt!262345) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262345) (size!17576 lt!262223)))))

(declare-fun res!363211 () Bool)

(assert (=> b!574269 (= res!363211 (= (select (arr!17212 lt!262223) (index!24901 lt!262345)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574269 (=> res!363211 e!330403)))

(declare-fun b!574270 () Bool)

(declare-fun e!330399 () SeekEntryResult!5668)

(declare-fun e!330402 () SeekEntryResult!5668)

(assert (=> b!574270 (= e!330399 e!330402)))

(declare-fun c!65890 () Bool)

(declare-fun lt!262344 () (_ BitVec 64))

(assert (=> b!574270 (= c!65890 (or (= lt!262344 lt!262221) (= (bvadd lt!262344 lt!262344) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574271 () Bool)

(assert (=> b!574271 (= e!330402 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262215 #b00000000000000000000000000000000 mask!3119) lt!262221 lt!262223 mask!3119))))

(declare-fun b!574272 () Bool)

(assert (=> b!574272 (= e!330399 (Intermediate!5668 true lt!262215 #b00000000000000000000000000000000))))

(declare-fun b!574274 () Bool)

(assert (=> b!574274 (= e!330402 (Intermediate!5668 false lt!262215 #b00000000000000000000000000000000))))

(declare-fun d!84999 () Bool)

(assert (=> d!84999 e!330400))

(declare-fun c!65889 () Bool)

(assert (=> d!84999 (= c!65889 (and ((_ is Intermediate!5668) lt!262345) (undefined!6480 lt!262345)))))

(assert (=> d!84999 (= lt!262345 e!330399)))

(declare-fun c!65891 () Bool)

(assert (=> d!84999 (= c!65891 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84999 (= lt!262344 (select (arr!17212 lt!262223) lt!262215))))

(assert (=> d!84999 (validMask!0 mask!3119)))

(assert (=> d!84999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262215 lt!262221 lt!262223 mask!3119) lt!262345)))

(declare-fun b!574273 () Bool)

(assert (=> b!574273 (= e!330400 e!330401)))

(declare-fun res!363210 () Bool)

(assert (=> b!574273 (= res!363210 (and ((_ is Intermediate!5668) lt!262345) (not (undefined!6480 lt!262345)) (bvslt (x!53806 lt!262345) #b01111111111111111111111111111110) (bvsge (x!53806 lt!262345) #b00000000000000000000000000000000) (bvsge (x!53806 lt!262345) #b00000000000000000000000000000000)))))

(assert (=> b!574273 (=> (not res!363210) (not e!330401))))

(assert (= (and d!84999 c!65891) b!574272))

(assert (= (and d!84999 (not c!65891)) b!574270))

(assert (= (and b!574270 c!65890) b!574274))

(assert (= (and b!574270 (not c!65890)) b!574271))

(assert (= (and d!84999 c!65889) b!574266))

(assert (= (and d!84999 (not c!65889)) b!574273))

(assert (= (and b!574273 res!363210) b!574267))

(assert (= (and b!574267 (not res!363212)) b!574269))

(assert (= (and b!574269 (not res!363211)) b!574268))

(declare-fun m!553199 () Bool)

(assert (=> b!574271 m!553199))

(assert (=> b!574271 m!553199))

(declare-fun m!553201 () Bool)

(assert (=> b!574271 m!553201))

(declare-fun m!553203 () Bool)

(assert (=> b!574268 m!553203))

(declare-fun m!553205 () Bool)

(assert (=> d!84999 m!553205))

(assert (=> d!84999 m!552969))

(assert (=> b!574267 m!553203))

(assert (=> b!574269 m!553203))

(assert (=> b!574017 d!84999))

(declare-fun b!574275 () Bool)

(declare-fun e!330405 () Bool)

(declare-fun lt!262347 () SeekEntryResult!5668)

(assert (=> b!574275 (= e!330405 (bvsge (x!53806 lt!262347) #b01111111111111111111111111111110))))

(declare-fun b!574276 () Bool)

(assert (=> b!574276 (and (bvsge (index!24901 lt!262347) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262347) (size!17576 a!3118)))))

(declare-fun res!363215 () Bool)

(assert (=> b!574276 (= res!363215 (= (select (arr!17212 a!3118) (index!24901 lt!262347)) (select (arr!17212 a!3118) j!142)))))

(declare-fun e!330408 () Bool)

(assert (=> b!574276 (=> res!363215 e!330408)))

(declare-fun e!330406 () Bool)

(assert (=> b!574276 (= e!330406 e!330408)))

(declare-fun b!574277 () Bool)

(assert (=> b!574277 (and (bvsge (index!24901 lt!262347) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262347) (size!17576 a!3118)))))

(assert (=> b!574277 (= e!330408 (= (select (arr!17212 a!3118) (index!24901 lt!262347)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574278 () Bool)

(assert (=> b!574278 (and (bvsge (index!24901 lt!262347) #b00000000000000000000000000000000) (bvslt (index!24901 lt!262347) (size!17576 a!3118)))))

(declare-fun res!363214 () Bool)

(assert (=> b!574278 (= res!363214 (= (select (arr!17212 a!3118) (index!24901 lt!262347)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574278 (=> res!363214 e!330408)))

(declare-fun b!574279 () Bool)

(declare-fun e!330404 () SeekEntryResult!5668)

(declare-fun e!330407 () SeekEntryResult!5668)

(assert (=> b!574279 (= e!330404 e!330407)))

(declare-fun lt!262346 () (_ BitVec 64))

(declare-fun c!65893 () Bool)

(assert (=> b!574279 (= c!65893 (or (= lt!262346 (select (arr!17212 a!3118) j!142)) (= (bvadd lt!262346 lt!262346) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574280 () Bool)

(assert (=> b!574280 (= e!330407 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262219 #b00000000000000000000000000000000 mask!3119) (select (arr!17212 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574281 () Bool)

(assert (=> b!574281 (= e!330404 (Intermediate!5668 true lt!262219 #b00000000000000000000000000000000))))

(declare-fun b!574283 () Bool)

(assert (=> b!574283 (= e!330407 (Intermediate!5668 false lt!262219 #b00000000000000000000000000000000))))

(declare-fun d!85009 () Bool)

(assert (=> d!85009 e!330405))

(declare-fun c!65892 () Bool)

(assert (=> d!85009 (= c!65892 (and ((_ is Intermediate!5668) lt!262347) (undefined!6480 lt!262347)))))

(assert (=> d!85009 (= lt!262347 e!330404)))

(declare-fun c!65894 () Bool)

(assert (=> d!85009 (= c!65894 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85009 (= lt!262346 (select (arr!17212 a!3118) lt!262219))))

(assert (=> d!85009 (validMask!0 mask!3119)))

(assert (=> d!85009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262219 (select (arr!17212 a!3118) j!142) a!3118 mask!3119) lt!262347)))

(declare-fun b!574282 () Bool)

(assert (=> b!574282 (= e!330405 e!330406)))

(declare-fun res!363213 () Bool)

(assert (=> b!574282 (= res!363213 (and ((_ is Intermediate!5668) lt!262347) (not (undefined!6480 lt!262347)) (bvslt (x!53806 lt!262347) #b01111111111111111111111111111110) (bvsge (x!53806 lt!262347) #b00000000000000000000000000000000) (bvsge (x!53806 lt!262347) #b00000000000000000000000000000000)))))

(assert (=> b!574282 (=> (not res!363213) (not e!330406))))

(assert (= (and d!85009 c!65894) b!574281))

(assert (= (and d!85009 (not c!65894)) b!574279))

(assert (= (and b!574279 c!65893) b!574283))

(assert (= (and b!574279 (not c!65893)) b!574280))

(assert (= (and d!85009 c!65892) b!574275))

(assert (= (and d!85009 (not c!65892)) b!574282))

(assert (= (and b!574282 res!363213) b!574276))

(assert (= (and b!574276 (not res!363215)) b!574278))

(assert (= (and b!574278 (not res!363214)) b!574277))

(declare-fun m!553207 () Bool)

(assert (=> b!574280 m!553207))

(assert (=> b!574280 m!553207))

(assert (=> b!574280 m!552963))

(declare-fun m!553209 () Bool)

(assert (=> b!574280 m!553209))

(declare-fun m!553211 () Bool)

(assert (=> b!574277 m!553211))

(declare-fun m!553213 () Bool)

(assert (=> d!85009 m!553213))

(assert (=> d!85009 m!552969))

(assert (=> b!574276 m!553211))

(assert (=> b!574278 m!553211))

(assert (=> b!574017 d!85009))

(declare-fun d!85013 () Bool)

(declare-fun lt!262359 () (_ BitVec 32))

(declare-fun lt!262358 () (_ BitVec 32))

(assert (=> d!85013 (= lt!262359 (bvmul (bvxor lt!262358 (bvlshr lt!262358 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85013 (= lt!262358 ((_ extract 31 0) (bvand (bvxor lt!262221 (bvlshr lt!262221 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85013 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363218 (let ((h!12376 ((_ extract 31 0) (bvand (bvxor lt!262221 (bvlshr lt!262221 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53812 (bvmul (bvxor h!12376 (bvlshr h!12376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53812 (bvlshr x!53812 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363218 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363218 #b00000000000000000000000000000000))))))

(assert (=> d!85013 (= (toIndex!0 lt!262221 mask!3119) (bvand (bvxor lt!262359 (bvlshr lt!262359 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574017 d!85013))

(declare-fun d!85019 () Bool)

(declare-fun lt!262361 () (_ BitVec 32))

(declare-fun lt!262360 () (_ BitVec 32))

(assert (=> d!85019 (= lt!262361 (bvmul (bvxor lt!262360 (bvlshr lt!262360 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85019 (= lt!262360 ((_ extract 31 0) (bvand (bvxor (select (arr!17212 a!3118) j!142) (bvlshr (select (arr!17212 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85019 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363218 (let ((h!12376 ((_ extract 31 0) (bvand (bvxor (select (arr!17212 a!3118) j!142) (bvlshr (select (arr!17212 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53812 (bvmul (bvxor h!12376 (bvlshr h!12376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53812 (bvlshr x!53812 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363218 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363218 #b00000000000000000000000000000000))))))

(assert (=> d!85019 (= (toIndex!0 (select (arr!17212 a!3118) j!142) mask!3119) (bvand (bvxor lt!262361 (bvlshr lt!262361 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574017 d!85019))

(declare-fun b!574313 () Bool)

(declare-fun e!330435 () Bool)

(declare-fun call!32682 () Bool)

(assert (=> b!574313 (= e!330435 call!32682)))

(declare-fun b!574314 () Bool)

(declare-fun e!330432 () Bool)

(assert (=> b!574314 (= e!330432 e!330435)))

(declare-fun c!65901 () Bool)

(assert (=> b!574314 (= c!65901 (validKeyInArray!0 (select (arr!17212 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574315 () Bool)

(declare-fun e!330433 () Bool)

(assert (=> b!574315 (= e!330433 e!330432)))

(declare-fun res!363234 () Bool)

(assert (=> b!574315 (=> (not res!363234) (not e!330432))))

(declare-fun e!330434 () Bool)

(assert (=> b!574315 (= res!363234 (not e!330434))))

(declare-fun res!363235 () Bool)

(assert (=> b!574315 (=> (not res!363235) (not e!330434))))

(assert (=> b!574315 (= res!363235 (validKeyInArray!0 (select (arr!17212 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574316 () Bool)

(declare-fun contains!2893 (List!11345 (_ BitVec 64)) Bool)

(assert (=> b!574316 (= e!330434 (contains!2893 Nil!11342 (select (arr!17212 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!85021 () Bool)

(declare-fun res!363236 () Bool)

(assert (=> d!85021 (=> res!363236 e!330433)))

(assert (=> d!85021 (= res!363236 (bvsge #b00000000000000000000000000000000 (size!17576 a!3118)))))

(assert (=> d!85021 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11342) e!330433)))

(declare-fun b!574317 () Bool)

(assert (=> b!574317 (= e!330435 call!32682)))

(declare-fun bm!32679 () Bool)

(assert (=> bm!32679 (= call!32682 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65901 (Cons!11341 (select (arr!17212 a!3118) #b00000000000000000000000000000000) Nil!11342) Nil!11342)))))

(assert (= (and d!85021 (not res!363236)) b!574315))

(assert (= (and b!574315 res!363235) b!574316))

(assert (= (and b!574315 res!363234) b!574314))

(assert (= (and b!574314 c!65901) b!574313))

(assert (= (and b!574314 (not c!65901)) b!574317))

(assert (= (or b!574313 b!574317) bm!32679))

(assert (=> b!574314 m!553087))

(assert (=> b!574314 m!553087))

(assert (=> b!574314 m!553089))

(assert (=> b!574315 m!553087))

(assert (=> b!574315 m!553087))

(assert (=> b!574315 m!553089))

(assert (=> b!574316 m!553087))

(assert (=> b!574316 m!553087))

(declare-fun m!553229 () Bool)

(assert (=> b!574316 m!553229))

(assert (=> bm!32679 m!553087))

(declare-fun m!553231 () Bool)

(assert (=> bm!32679 m!553231))

(assert (=> b!574007 d!85021))

(declare-fun d!85025 () Bool)

(declare-fun res!363241 () Bool)

(declare-fun e!330440 () Bool)

(assert (=> d!85025 (=> res!363241 e!330440)))

(assert (=> d!85025 (= res!363241 (= (select (arr!17212 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!85025 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!330440)))

(declare-fun b!574322 () Bool)

(declare-fun e!330441 () Bool)

(assert (=> b!574322 (= e!330440 e!330441)))

(declare-fun res!363242 () Bool)

(assert (=> b!574322 (=> (not res!363242) (not e!330441))))

(assert (=> b!574322 (= res!363242 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17576 a!3118)))))

(declare-fun b!574323 () Bool)

(assert (=> b!574323 (= e!330441 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85025 (not res!363241)) b!574322))

(assert (= (and b!574322 res!363242) b!574323))

(assert (=> d!85025 m!553087))

(declare-fun m!553233 () Bool)

(assert (=> b!574323 m!553233))

(assert (=> b!574012 d!85025))

(check-sat (not b!574149) (not bm!32666) (not b!574315) (not d!84977) (not bm!32663) (not b!574159) (not d!84959) (not d!85009) (not b!574323) (not b!574160) (not b!574183) (not b!574314) (not b!574271) (not b!574280) (not b!574138) (not b!574073) (not bm!32679) (not b!574124) (not b!574316) (not d!84961) (not b!574090) (not d!84985) (not d!84971) (not d!84973) (not d!84999) (not b!574123))
(check-sat)
