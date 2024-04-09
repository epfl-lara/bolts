; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52634 () Bool)

(assert start!52634)

(declare-fun b!573968 () Bool)

(declare-fun e!330226 () Bool)

(declare-fun e!330227 () Bool)

(assert (=> b!573968 (= e!330226 e!330227)))

(declare-fun res!363090 () Bool)

(assert (=> b!573968 (=> (not res!363090) (not e!330227))))

(declare-datatypes ((SeekEntryResult!5667 0))(
  ( (MissingZero!5667 (index!24895 (_ BitVec 32))) (Found!5667 (index!24896 (_ BitVec 32))) (Intermediate!5667 (undefined!6479 Bool) (index!24897 (_ BitVec 32)) (x!53805 (_ BitVec 32))) (Undefined!5667) (MissingVacant!5667 (index!24898 (_ BitVec 32))) )
))
(declare-fun lt!262194 () SeekEntryResult!5667)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!262192 () (_ BitVec 64))

(declare-datatypes ((array!35859 0))(
  ( (array!35860 (arr!17211 (Array (_ BitVec 32) (_ BitVec 64))) (size!17575 (_ BitVec 32))) )
))
(declare-fun lt!262193 () array!35859)

(declare-fun lt!262190 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35859 (_ BitVec 32)) SeekEntryResult!5667)

(assert (=> b!573968 (= res!363090 (= lt!262194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262190 lt!262192 lt!262193 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262188 () (_ BitVec 32))

(declare-fun a!3118 () array!35859)

(assert (=> b!573968 (= lt!262194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262188 (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573968 (= lt!262190 (toIndex!0 lt!262192 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573968 (= lt!262192 (select (store (arr!17211 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!573968 (= lt!262188 (toIndex!0 (select (arr!17211 a!3118) j!142) mask!3119))))

(assert (=> b!573968 (= lt!262193 (array!35860 (store (arr!17211 a!3118) i!1132 k!1914) (size!17575 a!3118)))))

(declare-fun b!573969 () Bool)

(declare-fun res!363089 () Bool)

(assert (=> b!573969 (=> (not res!363089) (not e!330226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35859 (_ BitVec 32)) Bool)

(assert (=> b!573969 (= res!363089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!573970 () Bool)

(declare-fun e!330222 () Bool)

(declare-fun e!330225 () Bool)

(assert (=> b!573970 (= e!330222 e!330225)))

(declare-fun res!363083 () Bool)

(assert (=> b!573970 (=> res!363083 e!330225)))

(declare-fun lt!262196 () (_ BitVec 64))

(assert (=> b!573970 (= res!363083 (or (= lt!262196 (select (arr!17211 a!3118) j!142)) (= lt!262196 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!573970 (= lt!262196 (select (arr!17211 a!3118) (index!24897 lt!262194)))))

(declare-fun e!330228 () Bool)

(declare-fun b!573971 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35859 (_ BitVec 32)) SeekEntryResult!5667)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35859 (_ BitVec 32)) SeekEntryResult!5667)

(assert (=> b!573971 (= e!330228 (= (seekEntryOrOpen!0 lt!262192 lt!262193 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262194) (index!24897 lt!262194) (index!24897 lt!262194) lt!262192 lt!262193 mask!3119)))))

(declare-fun b!573973 () Bool)

(declare-fun e!330223 () Bool)

(assert (=> b!573973 (= e!330223 e!330222)))

(declare-fun res!363082 () Bool)

(assert (=> b!573973 (=> res!363082 e!330222)))

(assert (=> b!573973 (= res!363082 (or (undefined!6479 lt!262194) (not (is-Intermediate!5667 lt!262194))))))

(declare-fun b!573974 () Bool)

(declare-fun res!363091 () Bool)

(declare-fun e!330224 () Bool)

(assert (=> b!573974 (=> (not res!363091) (not e!330224))))

(declare-fun arrayContainsKey!0 (array!35859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573974 (= res!363091 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573975 () Bool)

(assert (=> b!573975 (= e!330224 e!330226)))

(declare-fun res!363088 () Bool)

(assert (=> b!573975 (=> (not res!363088) (not e!330226))))

(declare-fun lt!262195 () SeekEntryResult!5667)

(assert (=> b!573975 (= res!363088 (or (= lt!262195 (MissingZero!5667 i!1132)) (= lt!262195 (MissingVacant!5667 i!1132))))))

(assert (=> b!573975 (= lt!262195 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!573976 () Bool)

(declare-fun res!363087 () Bool)

(assert (=> b!573976 (=> (not res!363087) (not e!330224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573976 (= res!363087 (validKeyInArray!0 (select (arr!17211 a!3118) j!142)))))

(declare-fun b!573972 () Bool)

(assert (=> b!573972 (= e!330225 e!330228)))

(declare-fun res!363092 () Bool)

(assert (=> b!573972 (=> (not res!363092) (not e!330228))))

(declare-fun lt!262191 () SeekEntryResult!5667)

(assert (=> b!573972 (= res!363092 (= lt!262191 (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262194) (index!24897 lt!262194) (index!24897 lt!262194) (select (arr!17211 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!363080 () Bool)

(assert (=> start!52634 (=> (not res!363080) (not e!330224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52634 (= res!363080 (validMask!0 mask!3119))))

(assert (=> start!52634 e!330224))

(assert (=> start!52634 true))

(declare-fun array_inv!12985 (array!35859) Bool)

(assert (=> start!52634 (array_inv!12985 a!3118)))

(declare-fun b!573977 () Bool)

(declare-fun res!363084 () Bool)

(assert (=> b!573977 (=> (not res!363084) (not e!330224))))

(assert (=> b!573977 (= res!363084 (validKeyInArray!0 k!1914))))

(declare-fun b!573978 () Bool)

(declare-fun res!363086 () Bool)

(assert (=> b!573978 (=> (not res!363086) (not e!330226))))

(declare-datatypes ((List!11344 0))(
  ( (Nil!11341) (Cons!11340 (h!12373 (_ BitVec 64)) (t!17580 List!11344)) )
))
(declare-fun arrayNoDuplicates!0 (array!35859 (_ BitVec 32) List!11344) Bool)

(assert (=> b!573978 (= res!363086 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11341))))

(declare-fun b!573979 () Bool)

(assert (=> b!573979 (= e!330227 (not (or (undefined!6479 lt!262194) (not (is-Intermediate!5667 lt!262194)) (let ((bdg!18009 (select (arr!17211 a!3118) (index!24897 lt!262194)))) (or (= bdg!18009 (select (arr!17211 a!3118) j!142)) (= bdg!18009 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24897 lt!262194) #b00000000000000000000000000000000) (bvsge (index!24897 lt!262194) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53805 lt!262194) #b01111111111111111111111111111110) (bvslt (x!53805 lt!262194) #b00000000000000000000000000000000) (= bdg!18009 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!573979 e!330223))

(declare-fun res!363085 () Bool)

(assert (=> b!573979 (=> (not res!363085) (not e!330223))))

(assert (=> b!573979 (= res!363085 (= lt!262191 (Found!5667 j!142)))))

(assert (=> b!573979 (= lt!262191 (seekEntryOrOpen!0 (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!573979 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18036 0))(
  ( (Unit!18037) )
))
(declare-fun lt!262189 () Unit!18036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18036)

(assert (=> b!573979 (= lt!262189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!573980 () Bool)

(declare-fun res!363081 () Bool)

(assert (=> b!573980 (=> (not res!363081) (not e!330224))))

(assert (=> b!573980 (= res!363081 (and (= (size!17575 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17575 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17575 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52634 res!363080) b!573980))

(assert (= (and b!573980 res!363081) b!573976))

(assert (= (and b!573976 res!363087) b!573977))

(assert (= (and b!573977 res!363084) b!573974))

(assert (= (and b!573974 res!363091) b!573975))

(assert (= (and b!573975 res!363088) b!573969))

(assert (= (and b!573969 res!363089) b!573978))

(assert (= (and b!573978 res!363086) b!573968))

(assert (= (and b!573968 res!363090) b!573979))

(assert (= (and b!573979 res!363085) b!573973))

(assert (= (and b!573973 (not res!363082)) b!573970))

(assert (= (and b!573970 (not res!363083)) b!573972))

(assert (= (and b!573972 res!363092) b!573971))

(declare-fun m!552919 () Bool)

(assert (=> b!573977 m!552919))

(declare-fun m!552921 () Bool)

(assert (=> b!573978 m!552921))

(declare-fun m!552923 () Bool)

(assert (=> b!573970 m!552923))

(declare-fun m!552925 () Bool)

(assert (=> b!573970 m!552925))

(declare-fun m!552927 () Bool)

(assert (=> start!52634 m!552927))

(declare-fun m!552929 () Bool)

(assert (=> start!52634 m!552929))

(declare-fun m!552931 () Bool)

(assert (=> b!573974 m!552931))

(assert (=> b!573976 m!552923))

(assert (=> b!573976 m!552923))

(declare-fun m!552933 () Bool)

(assert (=> b!573976 m!552933))

(declare-fun m!552935 () Bool)

(assert (=> b!573968 m!552935))

(assert (=> b!573968 m!552923))

(declare-fun m!552937 () Bool)

(assert (=> b!573968 m!552937))

(assert (=> b!573968 m!552923))

(declare-fun m!552939 () Bool)

(assert (=> b!573968 m!552939))

(declare-fun m!552941 () Bool)

(assert (=> b!573968 m!552941))

(declare-fun m!552943 () Bool)

(assert (=> b!573968 m!552943))

(assert (=> b!573968 m!552923))

(declare-fun m!552945 () Bool)

(assert (=> b!573968 m!552945))

(assert (=> b!573979 m!552923))

(declare-fun m!552947 () Bool)

(assert (=> b!573979 m!552947))

(declare-fun m!552949 () Bool)

(assert (=> b!573979 m!552949))

(assert (=> b!573979 m!552923))

(declare-fun m!552951 () Bool)

(assert (=> b!573979 m!552951))

(assert (=> b!573979 m!552925))

(assert (=> b!573972 m!552923))

(assert (=> b!573972 m!552923))

(declare-fun m!552953 () Bool)

(assert (=> b!573972 m!552953))

(declare-fun m!552955 () Bool)

(assert (=> b!573969 m!552955))

(declare-fun m!552957 () Bool)

(assert (=> b!573971 m!552957))

(declare-fun m!552959 () Bool)

(assert (=> b!573971 m!552959))

(declare-fun m!552961 () Bool)

(assert (=> b!573975 m!552961))

(push 1)

(assert (not b!573979))

(assert (not b!573976))

(assert (not b!573972))

(assert (not start!52634))

(assert (not b!573977))

(assert (not b!573969))

(assert (not b!573978))

(assert (not b!573975))

(assert (not b!573968))

(assert (not b!573974))

(assert (not b!573971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!574161 () Bool)

(declare-fun c!65851 () Bool)

(declare-fun lt!262303 () (_ BitVec 64))

(assert (=> b!574161 (= c!65851 (= lt!262303 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330335 () SeekEntryResult!5667)

(declare-fun e!330336 () SeekEntryResult!5667)

(assert (=> b!574161 (= e!330335 e!330336)))

(declare-fun b!574162 () Bool)

(declare-fun e!330337 () SeekEntryResult!5667)

(assert (=> b!574162 (= e!330337 e!330335)))

(declare-fun c!65852 () Bool)

(assert (=> b!574162 (= c!65852 (= lt!262303 (select (arr!17211 a!3118) j!142)))))

(declare-fun d!84965 () Bool)

(declare-fun lt!262302 () SeekEntryResult!5667)

(assert (=> d!84965 (and (or (is-Undefined!5667 lt!262302) (not (is-Found!5667 lt!262302)) (and (bvsge (index!24896 lt!262302) #b00000000000000000000000000000000) (bvslt (index!24896 lt!262302) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262302) (is-Found!5667 lt!262302) (not (is-MissingVacant!5667 lt!262302)) (not (= (index!24898 lt!262302) (index!24897 lt!262194))) (and (bvsge (index!24898 lt!262302) #b00000000000000000000000000000000) (bvslt (index!24898 lt!262302) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262302) (ite (is-Found!5667 lt!262302) (= (select (arr!17211 a!3118) (index!24896 lt!262302)) (select (arr!17211 a!3118) j!142)) (and (is-MissingVacant!5667 lt!262302) (= (index!24898 lt!262302) (index!24897 lt!262194)) (= (select (arr!17211 a!3118) (index!24898 lt!262302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84965 (= lt!262302 e!330337)))

(declare-fun c!65850 () Bool)

(assert (=> d!84965 (= c!65850 (bvsge (x!53805 lt!262194) #b01111111111111111111111111111110))))

(assert (=> d!84965 (= lt!262303 (select (arr!17211 a!3118) (index!24897 lt!262194)))))

(assert (=> d!84965 (validMask!0 mask!3119)))

(assert (=> d!84965 (= (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262194) (index!24897 lt!262194) (index!24897 lt!262194) (select (arr!17211 a!3118) j!142) a!3118 mask!3119) lt!262302)))

(declare-fun b!574163 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574163 (= e!330336 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53805 lt!262194) #b00000000000000000000000000000001) (nextIndex!0 (index!24897 lt!262194) (x!53805 lt!262194) mask!3119) (index!24897 lt!262194) (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574164 () Bool)

(assert (=> b!574164 (= e!330337 Undefined!5667)))

(declare-fun b!574165 () Bool)

(assert (=> b!574165 (= e!330335 (Found!5667 (index!24897 lt!262194)))))

(declare-fun b!574166 () Bool)

(assert (=> b!574166 (= e!330336 (MissingVacant!5667 (index!24897 lt!262194)))))

(assert (= (and d!84965 c!65850) b!574164))

(assert (= (and d!84965 (not c!65850)) b!574162))

(assert (= (and b!574162 c!65852) b!574165))

(assert (= (and b!574162 (not c!65852)) b!574161))

(assert (= (and b!574161 c!65851) b!574166))

(assert (= (and b!574161 (not c!65851)) b!574163))

(declare-fun m!553121 () Bool)

(assert (=> d!84965 m!553121))

(declare-fun m!553123 () Bool)

(assert (=> d!84965 m!553123))

(assert (=> d!84965 m!552925))

(assert (=> d!84965 m!552927))

(declare-fun m!553125 () Bool)

(assert (=> b!574163 m!553125))

(assert (=> b!574163 m!553125))

(assert (=> b!574163 m!552923))

(declare-fun m!553127 () Bool)

(assert (=> b!574163 m!553127))

(assert (=> b!573972 d!84965))

(declare-fun bm!32670 () Bool)

(declare-fun call!32673 () Bool)

(declare-fun c!65862 () Bool)

(assert (=> bm!32670 (= call!32673 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65862 (Cons!11340 (select (arr!17211 a!3118) #b00000000000000000000000000000000) Nil!11341) Nil!11341)))))

(declare-fun b!574193 () Bool)

(declare-fun e!330355 () Bool)

(declare-fun contains!2892 (List!11344 (_ BitVec 64)) Bool)

(assert (=> b!574193 (= e!330355 (contains!2892 Nil!11341 (select (arr!17211 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574194 () Bool)

(declare-fun e!330356 () Bool)

(assert (=> b!574194 (= e!330356 call!32673)))

(declare-fun b!574195 () Bool)

(declare-fun e!330357 () Bool)

(assert (=> b!574195 (= e!330357 e!330356)))

(assert (=> b!574195 (= c!65862 (validKeyInArray!0 (select (arr!17211 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574196 () Bool)

(assert (=> b!574196 (= e!330356 call!32673)))

(declare-fun b!574197 () Bool)

(declare-fun e!330358 () Bool)

(assert (=> b!574197 (= e!330358 e!330357)))

(declare-fun res!363193 () Bool)

(assert (=> b!574197 (=> (not res!363193) (not e!330357))))

(assert (=> b!574197 (= res!363193 (not e!330355))))

(declare-fun res!363192 () Bool)

(assert (=> b!574197 (=> (not res!363192) (not e!330355))))

(assert (=> b!574197 (= res!363192 (validKeyInArray!0 (select (arr!17211 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84979 () Bool)

(declare-fun res!363191 () Bool)

(assert (=> d!84979 (=> res!363191 e!330358)))

(assert (=> d!84979 (= res!363191 (bvsge #b00000000000000000000000000000000 (size!17575 a!3118)))))

(assert (=> d!84979 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11341) e!330358)))

(assert (= (and d!84979 (not res!363191)) b!574197))

(assert (= (and b!574197 res!363192) b!574193))

(assert (= (and b!574197 res!363193) b!574195))

(assert (= (and b!574195 c!65862) b!574196))

(assert (= (and b!574195 (not c!65862)) b!574194))

(assert (= (or b!574196 b!574194) bm!32670))

(declare-fun m!553165 () Bool)

(assert (=> bm!32670 m!553165))

(declare-fun m!553167 () Bool)

(assert (=> bm!32670 m!553167))

(assert (=> b!574193 m!553165))

(assert (=> b!574193 m!553165))

(declare-fun m!553169 () Bool)

(assert (=> b!574193 m!553169))

(assert (=> b!574195 m!553165))

(assert (=> b!574195 m!553165))

(declare-fun m!553171 () Bool)

(assert (=> b!574195 m!553171))

(assert (=> b!574197 m!553165))

(assert (=> b!574197 m!553165))

(assert (=> b!574197 m!553171))

(assert (=> b!573978 d!84979))

(declare-fun e!330382 () SeekEntryResult!5667)

(declare-fun lt!262333 () SeekEntryResult!5667)

(declare-fun b!574234 () Bool)

(assert (=> b!574234 (= e!330382 (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262333) (index!24897 lt!262333) (index!24897 lt!262333) (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84995 () Bool)

(declare-fun lt!262331 () SeekEntryResult!5667)

(assert (=> d!84995 (and (or (is-Undefined!5667 lt!262331) (not (is-Found!5667 lt!262331)) (and (bvsge (index!24896 lt!262331) #b00000000000000000000000000000000) (bvslt (index!24896 lt!262331) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262331) (is-Found!5667 lt!262331) (not (is-MissingZero!5667 lt!262331)) (and (bvsge (index!24895 lt!262331) #b00000000000000000000000000000000) (bvslt (index!24895 lt!262331) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262331) (is-Found!5667 lt!262331) (is-MissingZero!5667 lt!262331) (not (is-MissingVacant!5667 lt!262331)) (and (bvsge (index!24898 lt!262331) #b00000000000000000000000000000000) (bvslt (index!24898 lt!262331) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262331) (ite (is-Found!5667 lt!262331) (= (select (arr!17211 a!3118) (index!24896 lt!262331)) (select (arr!17211 a!3118) j!142)) (ite (is-MissingZero!5667 lt!262331) (= (select (arr!17211 a!3118) (index!24895 lt!262331)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5667 lt!262331) (= (select (arr!17211 a!3118) (index!24898 lt!262331)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330381 () SeekEntryResult!5667)

(assert (=> d!84995 (= lt!262331 e!330381)))

(declare-fun c!65879 () Bool)

(assert (=> d!84995 (= c!65879 (and (is-Intermediate!5667 lt!262333) (undefined!6479 lt!262333)))))

(assert (=> d!84995 (= lt!262333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17211 a!3118) j!142) mask!3119) (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84995 (validMask!0 mask!3119)))

(assert (=> d!84995 (= (seekEntryOrOpen!0 (select (arr!17211 a!3118) j!142) a!3118 mask!3119) lt!262331)))

(declare-fun b!574235 () Bool)

(declare-fun e!330380 () SeekEntryResult!5667)

(assert (=> b!574235 (= e!330381 e!330380)))

(declare-fun lt!262332 () (_ BitVec 64))

(assert (=> b!574235 (= lt!262332 (select (arr!17211 a!3118) (index!24897 lt!262333)))))

(declare-fun c!65880 () Bool)

(assert (=> b!574235 (= c!65880 (= lt!262332 (select (arr!17211 a!3118) j!142)))))

(declare-fun b!574236 () Bool)

(assert (=> b!574236 (= e!330382 (MissingZero!5667 (index!24897 lt!262333)))))

(declare-fun b!574237 () Bool)

(declare-fun c!65878 () Bool)

(assert (=> b!574237 (= c!65878 (= lt!262332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574237 (= e!330380 e!330382)))

(declare-fun b!574238 () Bool)

(assert (=> b!574238 (= e!330381 Undefined!5667)))

(declare-fun b!574239 () Bool)

(assert (=> b!574239 (= e!330380 (Found!5667 (index!24897 lt!262333)))))

(assert (= (and d!84995 c!65879) b!574238))

(assert (= (and d!84995 (not c!65879)) b!574235))

(assert (= (and b!574235 c!65880) b!574239))

(assert (= (and b!574235 (not c!65880)) b!574237))

(assert (= (and b!574237 c!65878) b!574236))

(assert (= (and b!574237 (not c!65878)) b!574234))

(assert (=> b!574234 m!552923))

(declare-fun m!553187 () Bool)

(assert (=> b!574234 m!553187))

(declare-fun m!553189 () Bool)

(assert (=> d!84995 m!553189))

(declare-fun m!553191 () Bool)

(assert (=> d!84995 m!553191))

(declare-fun m!553193 () Bool)

(assert (=> d!84995 m!553193))

(assert (=> d!84995 m!552927))

(assert (=> d!84995 m!552945))

(assert (=> d!84995 m!552923))

(declare-fun m!553195 () Bool)

(assert (=> d!84995 m!553195))

(assert (=> d!84995 m!552923))

(assert (=> d!84995 m!552945))

(declare-fun m!553197 () Bool)

(assert (=> b!574235 m!553197))

(assert (=> b!573979 d!84995))

(declare-fun call!32676 () Bool)

(declare-fun bm!32673 () Bool)

(assert (=> bm!32673 (= call!32676 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574284 () Bool)

(declare-fun e!330409 () Bool)

(assert (=> b!574284 (= e!330409 call!32676)))

(declare-fun d!85005 () Bool)

(declare-fun res!363217 () Bool)

(declare-fun e!330410 () Bool)

(assert (=> d!85005 (=> res!363217 e!330410)))

(assert (=> d!85005 (= res!363217 (bvsge j!142 (size!17575 a!3118)))))

(assert (=> d!85005 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330410)))

(declare-fun b!574285 () Bool)

(declare-fun e!330411 () Bool)

(assert (=> b!574285 (= e!330410 e!330411)))

(declare-fun c!65895 () Bool)

(assert (=> b!574285 (= c!65895 (validKeyInArray!0 (select (arr!17211 a!3118) j!142)))))

(declare-fun b!574286 () Bool)

(assert (=> b!574286 (= e!330411 call!32676)))

(declare-fun b!574287 () Bool)

(assert (=> b!574287 (= e!330411 e!330409)))

(declare-fun lt!262350 () (_ BitVec 64))

(assert (=> b!574287 (= lt!262350 (select (arr!17211 a!3118) j!142))))

(declare-fun lt!262348 () Unit!18036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35859 (_ BitVec 64) (_ BitVec 32)) Unit!18036)

(assert (=> b!574287 (= lt!262348 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262350 j!142))))

(assert (=> b!574287 (arrayContainsKey!0 a!3118 lt!262350 #b00000000000000000000000000000000)))

(declare-fun lt!262349 () Unit!18036)

(assert (=> b!574287 (= lt!262349 lt!262348)))

(declare-fun res!363216 () Bool)

(assert (=> b!574287 (= res!363216 (= (seekEntryOrOpen!0 (select (arr!17211 a!3118) j!142) a!3118 mask!3119) (Found!5667 j!142)))))

(assert (=> b!574287 (=> (not res!363216) (not e!330409))))

(assert (= (and d!85005 (not res!363217)) b!574285))

(assert (= (and b!574285 c!65895) b!574287))

(assert (= (and b!574285 (not c!65895)) b!574286))

(assert (= (and b!574287 res!363216) b!574284))

(assert (= (or b!574284 b!574286) bm!32673))

(declare-fun m!553215 () Bool)

(assert (=> bm!32673 m!553215))

(assert (=> b!574285 m!552923))

(assert (=> b!574285 m!552923))

(assert (=> b!574285 m!552933))

(assert (=> b!574287 m!552923))

(declare-fun m!553217 () Bool)

(assert (=> b!574287 m!553217))

(declare-fun m!553219 () Bool)

(assert (=> b!574287 m!553219))

(assert (=> b!574287 m!552923))

(assert (=> b!574287 m!552951))

(assert (=> b!573979 d!85005))

(declare-fun d!85015 () Bool)

(assert (=> d!85015 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262357 () Unit!18036)

(declare-fun choose!38 (array!35859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18036)

(assert (=> d!85015 (= lt!262357 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85015 (validMask!0 mask!3119)))

(assert (=> d!85015 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262357)))

(declare-fun bs!17768 () Bool)

(assert (= bs!17768 d!85015))

(assert (=> bs!17768 m!552947))

(declare-fun m!553221 () Bool)

(assert (=> bs!17768 m!553221))

(assert (=> bs!17768 m!552927))

(assert (=> b!573979 d!85015))

(declare-fun b!574360 () Bool)

(declare-fun e!330463 () Bool)

(declare-fun e!330464 () Bool)

(assert (=> b!574360 (= e!330463 e!330464)))

(declare-fun res!363255 () Bool)

(declare-fun lt!262371 () SeekEntryResult!5667)

(assert (=> b!574360 (= res!363255 (and (is-Intermediate!5667 lt!262371) (not (undefined!6479 lt!262371)) (bvslt (x!53805 lt!262371) #b01111111111111111111111111111110) (bvsge (x!53805 lt!262371) #b00000000000000000000000000000000) (bvsge (x!53805 lt!262371) #b00000000000000000000000000000000)))))

(assert (=> b!574360 (=> (not res!363255) (not e!330464))))

(declare-fun b!574361 () Bool)

(assert (=> b!574361 (and (bvsge (index!24897 lt!262371) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262371) (size!17575 lt!262193)))))

(declare-fun res!363257 () Bool)

(assert (=> b!574361 (= res!363257 (= (select (arr!17211 lt!262193) (index!24897 lt!262371)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330462 () Bool)

(assert (=> b!574361 (=> res!363257 e!330462)))

(declare-fun e!330465 () SeekEntryResult!5667)

(declare-fun b!574362 () Bool)

(assert (=> b!574362 (= e!330465 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262190 #b00000000000000000000000000000000 mask!3119) lt!262192 lt!262193 mask!3119))))

(declare-fun b!574363 () Bool)

(assert (=> b!574363 (and (bvsge (index!24897 lt!262371) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262371) (size!17575 lt!262193)))))

(declare-fun res!363256 () Bool)

(assert (=> b!574363 (= res!363256 (= (select (arr!17211 lt!262193) (index!24897 lt!262371)) lt!262192))))

(assert (=> b!574363 (=> res!363256 e!330462)))

(assert (=> b!574363 (= e!330464 e!330462)))

(declare-fun d!85017 () Bool)

(assert (=> d!85017 e!330463))

(declare-fun c!65914 () Bool)

(assert (=> d!85017 (= c!65914 (and (is-Intermediate!5667 lt!262371) (undefined!6479 lt!262371)))))

(declare-fun e!330466 () SeekEntryResult!5667)

(assert (=> d!85017 (= lt!262371 e!330466)))

(declare-fun c!65916 () Bool)

(assert (=> d!85017 (= c!65916 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262370 () (_ BitVec 64))

(assert (=> d!85017 (= lt!262370 (select (arr!17211 lt!262193) lt!262190))))

(assert (=> d!85017 (validMask!0 mask!3119)))

(assert (=> d!85017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262190 lt!262192 lt!262193 mask!3119) lt!262371)))

(declare-fun b!574364 () Bool)

(assert (=> b!574364 (= e!330465 (Intermediate!5667 false lt!262190 #b00000000000000000000000000000000))))

(declare-fun b!574365 () Bool)

(assert (=> b!574365 (= e!330466 e!330465)))

(declare-fun c!65915 () Bool)

(assert (=> b!574365 (= c!65915 (or (= lt!262370 lt!262192) (= (bvadd lt!262370 lt!262370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574366 () Bool)

(assert (=> b!574366 (= e!330466 (Intermediate!5667 true lt!262190 #b00000000000000000000000000000000))))

(declare-fun b!574367 () Bool)

(assert (=> b!574367 (and (bvsge (index!24897 lt!262371) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262371) (size!17575 lt!262193)))))

(assert (=> b!574367 (= e!330462 (= (select (arr!17211 lt!262193) (index!24897 lt!262371)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574368 () Bool)

(assert (=> b!574368 (= e!330463 (bvsge (x!53805 lt!262371) #b01111111111111111111111111111110))))

(assert (= (and d!85017 c!65916) b!574366))

(assert (= (and d!85017 (not c!65916)) b!574365))

(assert (= (and b!574365 c!65915) b!574364))

(assert (= (and b!574365 (not c!65915)) b!574362))

(assert (= (and d!85017 c!65914) b!574368))

(assert (= (and d!85017 (not c!65914)) b!574360))

(assert (= (and b!574360 res!363255) b!574363))

(assert (= (and b!574363 (not res!363256)) b!574361))

(assert (= (and b!574361 (not res!363257)) b!574367))

(declare-fun m!553235 () Bool)

(assert (=> b!574363 m!553235))

(assert (=> b!574361 m!553235))

(declare-fun m!553237 () Bool)

(assert (=> b!574362 m!553237))

(assert (=> b!574362 m!553237))

(declare-fun m!553239 () Bool)

(assert (=> b!574362 m!553239))

(assert (=> b!574367 m!553235))

(declare-fun m!553241 () Bool)

(assert (=> d!85017 m!553241))

(assert (=> d!85017 m!552927))

(assert (=> b!573968 d!85017))

(declare-fun b!574369 () Bool)

(declare-fun e!330468 () Bool)

(declare-fun e!330469 () Bool)

(assert (=> b!574369 (= e!330468 e!330469)))

(declare-fun res!363258 () Bool)

(declare-fun lt!262373 () SeekEntryResult!5667)

(assert (=> b!574369 (= res!363258 (and (is-Intermediate!5667 lt!262373) (not (undefined!6479 lt!262373)) (bvslt (x!53805 lt!262373) #b01111111111111111111111111111110) (bvsge (x!53805 lt!262373) #b00000000000000000000000000000000) (bvsge (x!53805 lt!262373) #b00000000000000000000000000000000)))))

(assert (=> b!574369 (=> (not res!363258) (not e!330469))))

(declare-fun b!574370 () Bool)

(assert (=> b!574370 (and (bvsge (index!24897 lt!262373) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262373) (size!17575 a!3118)))))

(declare-fun res!363260 () Bool)

(assert (=> b!574370 (= res!363260 (= (select (arr!17211 a!3118) (index!24897 lt!262373)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330467 () Bool)

(assert (=> b!574370 (=> res!363260 e!330467)))

(declare-fun e!330470 () SeekEntryResult!5667)

(declare-fun b!574371 () Bool)

(assert (=> b!574371 (= e!330470 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262188 #b00000000000000000000000000000000 mask!3119) (select (arr!17211 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574372 () Bool)

(assert (=> b!574372 (and (bvsge (index!24897 lt!262373) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262373) (size!17575 a!3118)))))

(declare-fun res!363259 () Bool)

(assert (=> b!574372 (= res!363259 (= (select (arr!17211 a!3118) (index!24897 lt!262373)) (select (arr!17211 a!3118) j!142)))))

(assert (=> b!574372 (=> res!363259 e!330467)))

(assert (=> b!574372 (= e!330469 e!330467)))

(declare-fun d!85027 () Bool)

(assert (=> d!85027 e!330468))

(declare-fun c!65917 () Bool)

(assert (=> d!85027 (= c!65917 (and (is-Intermediate!5667 lt!262373) (undefined!6479 lt!262373)))))

(declare-fun e!330471 () SeekEntryResult!5667)

(assert (=> d!85027 (= lt!262373 e!330471)))

(declare-fun c!65919 () Bool)

(assert (=> d!85027 (= c!65919 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262372 () (_ BitVec 64))

(assert (=> d!85027 (= lt!262372 (select (arr!17211 a!3118) lt!262188))))

(assert (=> d!85027 (validMask!0 mask!3119)))

(assert (=> d!85027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262188 (select (arr!17211 a!3118) j!142) a!3118 mask!3119) lt!262373)))

(declare-fun b!574373 () Bool)

(assert (=> b!574373 (= e!330470 (Intermediate!5667 false lt!262188 #b00000000000000000000000000000000))))

(declare-fun b!574374 () Bool)

(assert (=> b!574374 (= e!330471 e!330470)))

(declare-fun c!65918 () Bool)

(assert (=> b!574374 (= c!65918 (or (= lt!262372 (select (arr!17211 a!3118) j!142)) (= (bvadd lt!262372 lt!262372) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574375 () Bool)

(assert (=> b!574375 (= e!330471 (Intermediate!5667 true lt!262188 #b00000000000000000000000000000000))))

(declare-fun b!574376 () Bool)

(assert (=> b!574376 (and (bvsge (index!24897 lt!262373) #b00000000000000000000000000000000) (bvslt (index!24897 lt!262373) (size!17575 a!3118)))))

(assert (=> b!574376 (= e!330467 (= (select (arr!17211 a!3118) (index!24897 lt!262373)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574377 () Bool)

(assert (=> b!574377 (= e!330468 (bvsge (x!53805 lt!262373) #b01111111111111111111111111111110))))

(assert (= (and d!85027 c!65919) b!574375))

(assert (= (and d!85027 (not c!65919)) b!574374))

(assert (= (and b!574374 c!65918) b!574373))

(assert (= (and b!574374 (not c!65918)) b!574371))

(assert (= (and d!85027 c!65917) b!574377))

(assert (= (and d!85027 (not c!65917)) b!574369))

(assert (= (and b!574369 res!363258) b!574372))

(assert (= (and b!574372 (not res!363259)) b!574370))

(assert (= (and b!574370 (not res!363260)) b!574376))

(declare-fun m!553243 () Bool)

(assert (=> b!574372 m!553243))

(assert (=> b!574370 m!553243))

(declare-fun m!553245 () Bool)

(assert (=> b!574371 m!553245))

(assert (=> b!574371 m!553245))

(assert (=> b!574371 m!552923))

(declare-fun m!553247 () Bool)

(assert (=> b!574371 m!553247))

(assert (=> b!574376 m!553243))

(declare-fun m!553249 () Bool)

(assert (=> d!85027 m!553249))

(assert (=> d!85027 m!552927))

(assert (=> b!573968 d!85027))

(declare-fun d!85029 () Bool)

(declare-fun lt!262383 () (_ BitVec 32))

(declare-fun lt!262382 () (_ BitVec 32))

(assert (=> d!85029 (= lt!262383 (bvmul (bvxor lt!262382 (bvlshr lt!262382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85029 (= lt!262382 ((_ extract 31 0) (bvand (bvxor lt!262192 (bvlshr lt!262192 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85029 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363261 (let ((h!12377 ((_ extract 31 0) (bvand (bvxor lt!262192 (bvlshr lt!262192 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53815 (bvmul (bvxor h!12377 (bvlshr h!12377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53815 (bvlshr x!53815 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363261 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363261 #b00000000000000000000000000000000))))))

(assert (=> d!85029 (= (toIndex!0 lt!262192 mask!3119) (bvand (bvxor lt!262383 (bvlshr lt!262383 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573968 d!85029))

(declare-fun d!85035 () Bool)

(declare-fun lt!262385 () (_ BitVec 32))

(declare-fun lt!262384 () (_ BitVec 32))

(assert (=> d!85035 (= lt!262385 (bvmul (bvxor lt!262384 (bvlshr lt!262384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85035 (= lt!262384 ((_ extract 31 0) (bvand (bvxor (select (arr!17211 a!3118) j!142) (bvlshr (select (arr!17211 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85035 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363261 (let ((h!12377 ((_ extract 31 0) (bvand (bvxor (select (arr!17211 a!3118) j!142) (bvlshr (select (arr!17211 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53815 (bvmul (bvxor h!12377 (bvlshr h!12377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53815 (bvlshr x!53815 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363261 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363261 #b00000000000000000000000000000000))))))

(assert (=> d!85035 (= (toIndex!0 (select (arr!17211 a!3118) j!142) mask!3119) (bvand (bvxor lt!262385 (bvlshr lt!262385 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573968 d!85035))

(declare-fun bm!32680 () Bool)

(declare-fun call!32683 () Bool)

(assert (=> bm!32680 (= call!32683 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574396 () Bool)

(declare-fun e!330482 () Bool)

(assert (=> b!574396 (= e!330482 call!32683)))

(declare-fun d!85037 () Bool)

(declare-fun res!363270 () Bool)

(declare-fun e!330483 () Bool)

(assert (=> d!85037 (=> res!363270 e!330483)))

(assert (=> d!85037 (= res!363270 (bvsge #b00000000000000000000000000000000 (size!17575 a!3118)))))

(assert (=> d!85037 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330483)))

(declare-fun b!574397 () Bool)

(declare-fun e!330484 () Bool)

(assert (=> b!574397 (= e!330483 e!330484)))

(declare-fun c!65926 () Bool)

(assert (=> b!574397 (= c!65926 (validKeyInArray!0 (select (arr!17211 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574398 () Bool)

(assert (=> b!574398 (= e!330484 call!32683)))

(declare-fun b!574399 () Bool)

(assert (=> b!574399 (= e!330484 e!330482)))

(declare-fun lt!262388 () (_ BitVec 64))

(assert (=> b!574399 (= lt!262388 (select (arr!17211 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262386 () Unit!18036)

(assert (=> b!574399 (= lt!262386 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262388 #b00000000000000000000000000000000))))

(assert (=> b!574399 (arrayContainsKey!0 a!3118 lt!262388 #b00000000000000000000000000000000)))

(declare-fun lt!262387 () Unit!18036)

(assert (=> b!574399 (= lt!262387 lt!262386)))

(declare-fun res!363269 () Bool)

(assert (=> b!574399 (= res!363269 (= (seekEntryOrOpen!0 (select (arr!17211 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5667 #b00000000000000000000000000000000)))))

(assert (=> b!574399 (=> (not res!363269) (not e!330482))))

(assert (= (and d!85037 (not res!363270)) b!574397))

(assert (= (and b!574397 c!65926) b!574399))

(assert (= (and b!574397 (not c!65926)) b!574398))

(assert (= (and b!574399 res!363269) b!574396))

(assert (= (or b!574396 b!574398) bm!32680))

(declare-fun m!553267 () Bool)

(assert (=> bm!32680 m!553267))

(assert (=> b!574397 m!553165))

(assert (=> b!574397 m!553165))

(assert (=> b!574397 m!553171))

(assert (=> b!574399 m!553165))

(declare-fun m!553269 () Bool)

(assert (=> b!574399 m!553269))

(declare-fun m!553271 () Bool)

(assert (=> b!574399 m!553271))

(assert (=> b!574399 m!553165))

(declare-fun m!553273 () Bool)

(assert (=> b!574399 m!553273))

(assert (=> b!573969 d!85037))

(declare-fun d!85039 () Bool)

(declare-fun res!363275 () Bool)

(declare-fun e!330489 () Bool)

(assert (=> d!85039 (=> res!363275 e!330489)))

(assert (=> d!85039 (= res!363275 (= (select (arr!17211 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85039 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!330489)))

(declare-fun b!574404 () Bool)

(declare-fun e!330490 () Bool)

(assert (=> b!574404 (= e!330489 e!330490)))

(declare-fun res!363276 () Bool)

(assert (=> b!574404 (=> (not res!363276) (not e!330490))))

(assert (=> b!574404 (= res!363276 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17575 a!3118)))))

(declare-fun b!574405 () Bool)

(assert (=> b!574405 (= e!330490 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85039 (not res!363275)) b!574404))

(assert (= (and b!574404 res!363276) b!574405))

(assert (=> d!85039 m!553165))

(declare-fun m!553275 () Bool)

(assert (=> b!574405 m!553275))

(assert (=> b!573974 d!85039))

(declare-fun lt!262395 () SeekEntryResult!5667)

(declare-fun b!574406 () Bool)

(declare-fun e!330493 () SeekEntryResult!5667)

(assert (=> b!574406 (= e!330493 (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262395) (index!24897 lt!262395) (index!24897 lt!262395) k!1914 a!3118 mask!3119))))

(declare-fun d!85041 () Bool)

(declare-fun lt!262393 () SeekEntryResult!5667)

(assert (=> d!85041 (and (or (is-Undefined!5667 lt!262393) (not (is-Found!5667 lt!262393)) (and (bvsge (index!24896 lt!262393) #b00000000000000000000000000000000) (bvslt (index!24896 lt!262393) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262393) (is-Found!5667 lt!262393) (not (is-MissingZero!5667 lt!262393)) (and (bvsge (index!24895 lt!262393) #b00000000000000000000000000000000) (bvslt (index!24895 lt!262393) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262393) (is-Found!5667 lt!262393) (is-MissingZero!5667 lt!262393) (not (is-MissingVacant!5667 lt!262393)) (and (bvsge (index!24898 lt!262393) #b00000000000000000000000000000000) (bvslt (index!24898 lt!262393) (size!17575 a!3118)))) (or (is-Undefined!5667 lt!262393) (ite (is-Found!5667 lt!262393) (= (select (arr!17211 a!3118) (index!24896 lt!262393)) k!1914) (ite (is-MissingZero!5667 lt!262393) (= (select (arr!17211 a!3118) (index!24895 lt!262393)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5667 lt!262393) (= (select (arr!17211 a!3118) (index!24898 lt!262393)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330492 () SeekEntryResult!5667)

(assert (=> d!85041 (= lt!262393 e!330492)))

(declare-fun c!65928 () Bool)

(assert (=> d!85041 (= c!65928 (and (is-Intermediate!5667 lt!262395) (undefined!6479 lt!262395)))))

(assert (=> d!85041 (= lt!262395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85041 (validMask!0 mask!3119)))

(assert (=> d!85041 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!262393)))

(declare-fun b!574407 () Bool)

(declare-fun e!330491 () SeekEntryResult!5667)

(assert (=> b!574407 (= e!330492 e!330491)))

(declare-fun lt!262394 () (_ BitVec 64))

(assert (=> b!574407 (= lt!262394 (select (arr!17211 a!3118) (index!24897 lt!262395)))))

(declare-fun c!65929 () Bool)

(assert (=> b!574407 (= c!65929 (= lt!262394 k!1914))))

(declare-fun b!574408 () Bool)

(assert (=> b!574408 (= e!330493 (MissingZero!5667 (index!24897 lt!262395)))))

(declare-fun b!574409 () Bool)

(declare-fun c!65927 () Bool)

(assert (=> b!574409 (= c!65927 (= lt!262394 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574409 (= e!330491 e!330493)))

(declare-fun b!574410 () Bool)

(assert (=> b!574410 (= e!330492 Undefined!5667)))

(declare-fun b!574411 () Bool)

(assert (=> b!574411 (= e!330491 (Found!5667 (index!24897 lt!262395)))))

(assert (= (and d!85041 c!65928) b!574410))

(assert (= (and d!85041 (not c!65928)) b!574407))

(assert (= (and b!574407 c!65929) b!574411))

(assert (= (and b!574407 (not c!65929)) b!574409))

(assert (= (and b!574409 c!65927) b!574408))

(assert (= (and b!574409 (not c!65927)) b!574406))

(declare-fun m!553277 () Bool)

(assert (=> b!574406 m!553277))

(declare-fun m!553279 () Bool)

(assert (=> d!85041 m!553279))

(declare-fun m!553281 () Bool)

(assert (=> d!85041 m!553281))

(declare-fun m!553283 () Bool)

(assert (=> d!85041 m!553283))

(assert (=> d!85041 m!552927))

(declare-fun m!553285 () Bool)

(assert (=> d!85041 m!553285))

(declare-fun m!553287 () Bool)

(assert (=> d!85041 m!553287))

(assert (=> d!85041 m!553285))

(declare-fun m!553289 () Bool)

(assert (=> b!574407 m!553289))

(assert (=> b!573975 d!85041))

(declare-fun b!574412 () Bool)

(declare-fun lt!262400 () SeekEntryResult!5667)

(declare-fun e!330496 () SeekEntryResult!5667)

(assert (=> b!574412 (= e!330496 (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262400) (index!24897 lt!262400) (index!24897 lt!262400) lt!262192 lt!262193 mask!3119))))

(declare-fun d!85043 () Bool)

(declare-fun lt!262398 () SeekEntryResult!5667)

(assert (=> d!85043 (and (or (is-Undefined!5667 lt!262398) (not (is-Found!5667 lt!262398)) (and (bvsge (index!24896 lt!262398) #b00000000000000000000000000000000) (bvslt (index!24896 lt!262398) (size!17575 lt!262193)))) (or (is-Undefined!5667 lt!262398) (is-Found!5667 lt!262398) (not (is-MissingZero!5667 lt!262398)) (and (bvsge (index!24895 lt!262398) #b00000000000000000000000000000000) (bvslt (index!24895 lt!262398) (size!17575 lt!262193)))) (or (is-Undefined!5667 lt!262398) (is-Found!5667 lt!262398) (is-MissingZero!5667 lt!262398) (not (is-MissingVacant!5667 lt!262398)) (and (bvsge (index!24898 lt!262398) #b00000000000000000000000000000000) (bvslt (index!24898 lt!262398) (size!17575 lt!262193)))) (or (is-Undefined!5667 lt!262398) (ite (is-Found!5667 lt!262398) (= (select (arr!17211 lt!262193) (index!24896 lt!262398)) lt!262192) (ite (is-MissingZero!5667 lt!262398) (= (select (arr!17211 lt!262193) (index!24895 lt!262398)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5667 lt!262398) (= (select (arr!17211 lt!262193) (index!24898 lt!262398)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330495 () SeekEntryResult!5667)

(assert (=> d!85043 (= lt!262398 e!330495)))

(declare-fun c!65931 () Bool)

(assert (=> d!85043 (= c!65931 (and (is-Intermediate!5667 lt!262400) (undefined!6479 lt!262400)))))

(assert (=> d!85043 (= lt!262400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262192 mask!3119) lt!262192 lt!262193 mask!3119))))

(assert (=> d!85043 (validMask!0 mask!3119)))

(assert (=> d!85043 (= (seekEntryOrOpen!0 lt!262192 lt!262193 mask!3119) lt!262398)))

(declare-fun b!574413 () Bool)

(declare-fun e!330494 () SeekEntryResult!5667)

(assert (=> b!574413 (= e!330495 e!330494)))

(declare-fun lt!262399 () (_ BitVec 64))

(assert (=> b!574413 (= lt!262399 (select (arr!17211 lt!262193) (index!24897 lt!262400)))))

(declare-fun c!65932 () Bool)

(assert (=> b!574413 (= c!65932 (= lt!262399 lt!262192))))

(declare-fun b!574414 () Bool)

(assert (=> b!574414 (= e!330496 (MissingZero!5667 (index!24897 lt!262400)))))

(declare-fun b!574415 () Bool)

(declare-fun c!65930 () Bool)

(assert (=> b!574415 (= c!65930 (= lt!262399 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574415 (= e!330494 e!330496)))

(declare-fun b!574416 () Bool)

(assert (=> b!574416 (= e!330495 Undefined!5667)))

(declare-fun b!574417 () Bool)

(assert (=> b!574417 (= e!330494 (Found!5667 (index!24897 lt!262400)))))

(assert (= (and d!85043 c!65931) b!574416))

(assert (= (and d!85043 (not c!65931)) b!574413))

(assert (= (and b!574413 c!65932) b!574417))

(assert (= (and b!574413 (not c!65932)) b!574415))

(assert (= (and b!574415 c!65930) b!574414))

(assert (= (and b!574415 (not c!65930)) b!574412))

(declare-fun m!553291 () Bool)

(assert (=> b!574412 m!553291))

(declare-fun m!553293 () Bool)

(assert (=> d!85043 m!553293))

(declare-fun m!553295 () Bool)

(assert (=> d!85043 m!553295))

(declare-fun m!553297 () Bool)

(assert (=> d!85043 m!553297))

(assert (=> d!85043 m!552927))

(assert (=> d!85043 m!552943))

(declare-fun m!553299 () Bool)

(assert (=> d!85043 m!553299))

(assert (=> d!85043 m!552943))

(declare-fun m!553301 () Bool)

(assert (=> b!574413 m!553301))

(assert (=> b!573971 d!85043))

(declare-fun b!574418 () Bool)

(declare-fun c!65934 () Bool)

(declare-fun lt!262404 () (_ BitVec 64))

(assert (=> b!574418 (= c!65934 (= lt!262404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330497 () SeekEntryResult!5667)

(declare-fun e!330498 () SeekEntryResult!5667)

(assert (=> b!574418 (= e!330497 e!330498)))

(declare-fun b!574419 () Bool)

(declare-fun e!330499 () SeekEntryResult!5667)

(assert (=> b!574419 (= e!330499 e!330497)))

(declare-fun c!65935 () Bool)

(assert (=> b!574419 (= c!65935 (= lt!262404 lt!262192))))

(declare-fun d!85049 () Bool)

(declare-fun lt!262403 () SeekEntryResult!5667)

(assert (=> d!85049 (and (or (is-Undefined!5667 lt!262403) (not (is-Found!5667 lt!262403)) (and (bvsge (index!24896 lt!262403) #b00000000000000000000000000000000) (bvslt (index!24896 lt!262403) (size!17575 lt!262193)))) (or (is-Undefined!5667 lt!262403) (is-Found!5667 lt!262403) (not (is-MissingVacant!5667 lt!262403)) (not (= (index!24898 lt!262403) (index!24897 lt!262194))) (and (bvsge (index!24898 lt!262403) #b00000000000000000000000000000000) (bvslt (index!24898 lt!262403) (size!17575 lt!262193)))) (or (is-Undefined!5667 lt!262403) (ite (is-Found!5667 lt!262403) (= (select (arr!17211 lt!262193) (index!24896 lt!262403)) lt!262192) (and (is-MissingVacant!5667 lt!262403) (= (index!24898 lt!262403) (index!24897 lt!262194)) (= (select (arr!17211 lt!262193) (index!24898 lt!262403)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85049 (= lt!262403 e!330499)))

(declare-fun c!65933 () Bool)

(assert (=> d!85049 (= c!65933 (bvsge (x!53805 lt!262194) #b01111111111111111111111111111110))))

(assert (=> d!85049 (= lt!262404 (select (arr!17211 lt!262193) (index!24897 lt!262194)))))

(assert (=> d!85049 (validMask!0 mask!3119)))

(assert (=> d!85049 (= (seekKeyOrZeroReturnVacant!0 (x!53805 lt!262194) (index!24897 lt!262194) (index!24897 lt!262194) lt!262192 lt!262193 mask!3119) lt!262403)))

(declare-fun b!574420 () Bool)

(assert (=> b!574420 (= e!330498 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53805 lt!262194) #b00000000000000000000000000000001) (nextIndex!0 (index!24897 lt!262194) (x!53805 lt!262194) mask!3119) (index!24897 lt!262194) lt!262192 lt!262193 mask!3119))))

(declare-fun b!574421 () Bool)

(assert (=> b!574421 (= e!330499 Undefined!5667)))

(declare-fun b!574422 () Bool)

(assert (=> b!574422 (= e!330497 (Found!5667 (index!24897 lt!262194)))))

