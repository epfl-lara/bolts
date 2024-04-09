; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50280 () Bool)

(assert start!50280)

(declare-fun b!550076 () Bool)

(declare-fun res!343379 () Bool)

(declare-fun e!317536 () Bool)

(assert (=> b!550076 (=> (not res!343379) (not e!317536))))

(declare-datatypes ((array!34687 0))(
  ( (array!34688 (arr!16655 (Array (_ BitVec 32) (_ BitVec 64))) (size!17019 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34687)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34687 (_ BitVec 32)) Bool)

(assert (=> b!550076 (= res!343379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550077 () Bool)

(declare-fun res!343370 () Bool)

(assert (=> b!550077 (=> (not res!343370) (not e!317536))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5111 0))(
  ( (MissingZero!5111 (index!22671 (_ BitVec 32))) (Found!5111 (index!22672 (_ BitVec 32))) (Intermediate!5111 (undefined!5923 Bool) (index!22673 (_ BitVec 32)) (x!51620 (_ BitVec 32))) (Undefined!5111) (MissingVacant!5111 (index!22674 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34687 (_ BitVec 32)) SeekEntryResult!5111)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550077 (= res!343370 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) (select (arr!16655 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)) mask!3119)))))

(declare-fun b!550078 () Bool)

(declare-fun res!343376 () Bool)

(declare-fun e!317537 () Bool)

(assert (=> b!550078 (=> (not res!343376) (not e!317537))))

(declare-fun arrayContainsKey!0 (array!34687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550078 (= res!343376 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun e!317539 () Bool)

(declare-fun b!550079 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34687 (_ BitVec 32)) SeekEntryResult!5111)

(assert (=> b!550079 (= e!317539 (= (seekEntryOrOpen!0 (select (arr!16655 a!3118) j!142) a!3118 mask!3119) (Found!5111 j!142)))))

(declare-fun b!550080 () Bool)

(declare-fun res!343372 () Bool)

(assert (=> b!550080 (=> (not res!343372) (not e!317537))))

(assert (=> b!550080 (= res!343372 (and (= (size!17019 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17019 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17019 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550081 () Bool)

(assert (=> b!550081 (= e!317536 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(assert (=> b!550081 e!317539))

(declare-fun res!343378 () Bool)

(assert (=> b!550081 (=> (not res!343378) (not e!317539))))

(assert (=> b!550081 (= res!343378 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16996 0))(
  ( (Unit!16997) )
))
(declare-fun lt!250409 () Unit!16996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16996)

(assert (=> b!550081 (= lt!250409 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550082 () Bool)

(declare-fun res!343373 () Bool)

(assert (=> b!550082 (=> (not res!343373) (not e!317536))))

(declare-datatypes ((List!10788 0))(
  ( (Nil!10785) (Cons!10784 (h!11757 (_ BitVec 64)) (t!17024 List!10788)) )
))
(declare-fun arrayNoDuplicates!0 (array!34687 (_ BitVec 32) List!10788) Bool)

(assert (=> b!550082 (= res!343373 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10785))))

(declare-fun res!343377 () Bool)

(assert (=> start!50280 (=> (not res!343377) (not e!317537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50280 (= res!343377 (validMask!0 mask!3119))))

(assert (=> start!50280 e!317537))

(assert (=> start!50280 true))

(declare-fun array_inv!12429 (array!34687) Bool)

(assert (=> start!50280 (array_inv!12429 a!3118)))

(declare-fun b!550083 () Bool)

(assert (=> b!550083 (= e!317537 e!317536)))

(declare-fun res!343375 () Bool)

(assert (=> b!550083 (=> (not res!343375) (not e!317536))))

(declare-fun lt!250408 () SeekEntryResult!5111)

(assert (=> b!550083 (= res!343375 (or (= lt!250408 (MissingZero!5111 i!1132)) (= lt!250408 (MissingVacant!5111 i!1132))))))

(assert (=> b!550083 (= lt!250408 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550084 () Bool)

(declare-fun res!343371 () Bool)

(assert (=> b!550084 (=> (not res!343371) (not e!317537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550084 (= res!343371 (validKeyInArray!0 k!1914))))

(declare-fun b!550085 () Bool)

(declare-fun res!343374 () Bool)

(assert (=> b!550085 (=> (not res!343374) (not e!317537))))

(assert (=> b!550085 (= res!343374 (validKeyInArray!0 (select (arr!16655 a!3118) j!142)))))

(assert (= (and start!50280 res!343377) b!550080))

(assert (= (and b!550080 res!343372) b!550085))

(assert (= (and b!550085 res!343374) b!550084))

(assert (= (and b!550084 res!343371) b!550078))

(assert (= (and b!550078 res!343376) b!550083))

(assert (= (and b!550083 res!343375) b!550076))

(assert (= (and b!550076 res!343379) b!550082))

(assert (= (and b!550082 res!343373) b!550077))

(assert (= (and b!550077 res!343370) b!550081))

(assert (= (and b!550081 res!343378) b!550079))

(declare-fun m!527161 () Bool)

(assert (=> start!50280 m!527161))

(declare-fun m!527163 () Bool)

(assert (=> start!50280 m!527163))

(declare-fun m!527165 () Bool)

(assert (=> b!550083 m!527165))

(declare-fun m!527167 () Bool)

(assert (=> b!550081 m!527167))

(declare-fun m!527169 () Bool)

(assert (=> b!550081 m!527169))

(declare-fun m!527171 () Bool)

(assert (=> b!550085 m!527171))

(assert (=> b!550085 m!527171))

(declare-fun m!527173 () Bool)

(assert (=> b!550085 m!527173))

(declare-fun m!527175 () Bool)

(assert (=> b!550076 m!527175))

(assert (=> b!550077 m!527171))

(declare-fun m!527177 () Bool)

(assert (=> b!550077 m!527177))

(assert (=> b!550077 m!527171))

(declare-fun m!527179 () Bool)

(assert (=> b!550077 m!527179))

(declare-fun m!527181 () Bool)

(assert (=> b!550077 m!527181))

(assert (=> b!550077 m!527179))

(declare-fun m!527183 () Bool)

(assert (=> b!550077 m!527183))

(assert (=> b!550077 m!527177))

(assert (=> b!550077 m!527171))

(declare-fun m!527185 () Bool)

(assert (=> b!550077 m!527185))

(declare-fun m!527187 () Bool)

(assert (=> b!550077 m!527187))

(assert (=> b!550077 m!527179))

(assert (=> b!550077 m!527181))

(assert (=> b!550079 m!527171))

(assert (=> b!550079 m!527171))

(declare-fun m!527189 () Bool)

(assert (=> b!550079 m!527189))

(declare-fun m!527191 () Bool)

(assert (=> b!550078 m!527191))

(declare-fun m!527193 () Bool)

(assert (=> b!550082 m!527193))

(declare-fun m!527195 () Bool)

(assert (=> b!550084 m!527195))

(push 1)

(assert (not b!550079))

(assert (not b!550078))

(assert (not b!550084))

(assert (not start!50280))

(assert (not b!550076))

(assert (not b!550077))

(assert (not b!550082))

(assert (not b!550085))

(assert (not b!550083))

(assert (not b!550081))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82709 () Bool)

(assert (=> d!82709 (= (validKeyInArray!0 (select (arr!16655 a!3118) j!142)) (and (not (= (select (arr!16655 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16655 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550085 d!82709))

(declare-fun d!82711 () Bool)

(assert (=> d!82711 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550084 d!82711))

(declare-fun b!550158 () Bool)

(declare-fun c!63702 () Bool)

(declare-fun lt!250439 () (_ BitVec 64))

(assert (=> b!550158 (= c!63702 (= lt!250439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317594 () SeekEntryResult!5111)

(declare-fun e!317596 () SeekEntryResult!5111)

(assert (=> b!550158 (= e!317594 e!317596)))

(declare-fun d!82713 () Bool)

(declare-fun lt!250438 () SeekEntryResult!5111)

(assert (=> d!82713 (and (or (is-Undefined!5111 lt!250438) (not (is-Found!5111 lt!250438)) (and (bvsge (index!22672 lt!250438) #b00000000000000000000000000000000) (bvslt (index!22672 lt!250438) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250438) (is-Found!5111 lt!250438) (not (is-MissingZero!5111 lt!250438)) (and (bvsge (index!22671 lt!250438) #b00000000000000000000000000000000) (bvslt (index!22671 lt!250438) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250438) (is-Found!5111 lt!250438) (is-MissingZero!5111 lt!250438) (not (is-MissingVacant!5111 lt!250438)) (and (bvsge (index!22674 lt!250438) #b00000000000000000000000000000000) (bvslt (index!22674 lt!250438) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250438) (ite (is-Found!5111 lt!250438) (= (select (arr!16655 a!3118) (index!22672 lt!250438)) (select (arr!16655 a!3118) j!142)) (ite (is-MissingZero!5111 lt!250438) (= (select (arr!16655 a!3118) (index!22671 lt!250438)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5111 lt!250438) (= (select (arr!16655 a!3118) (index!22674 lt!250438)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!317595 () SeekEntryResult!5111)

(assert (=> d!82713 (= lt!250438 e!317595)))

(declare-fun c!63703 () Bool)

(declare-fun lt!250437 () SeekEntryResult!5111)

(assert (=> d!82713 (= c!63703 (and (is-Intermediate!5111 lt!250437) (undefined!5923 lt!250437)))))

(assert (=> d!82713 (= lt!250437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) (select (arr!16655 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82713 (validMask!0 mask!3119)))

(assert (=> d!82713 (= (seekEntryOrOpen!0 (select (arr!16655 a!3118) j!142) a!3118 mask!3119) lt!250438)))

(declare-fun b!550159 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34687 (_ BitVec 32)) SeekEntryResult!5111)

(assert (=> b!550159 (= e!317596 (seekKeyOrZeroReturnVacant!0 (x!51620 lt!250437) (index!22673 lt!250437) (index!22673 lt!250437) (select (arr!16655 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!550160 () Bool)

(assert (=> b!550160 (= e!317594 (Found!5111 (index!22673 lt!250437)))))

(declare-fun b!550161 () Bool)

(assert (=> b!550161 (= e!317596 (MissingZero!5111 (index!22673 lt!250437)))))

(declare-fun b!550162 () Bool)

(assert (=> b!550162 (= e!317595 Undefined!5111)))

(declare-fun b!550163 () Bool)

(assert (=> b!550163 (= e!317595 e!317594)))

(assert (=> b!550163 (= lt!250439 (select (arr!16655 a!3118) (index!22673 lt!250437)))))

(declare-fun c!63704 () Bool)

(assert (=> b!550163 (= c!63704 (= lt!250439 (select (arr!16655 a!3118) j!142)))))

(assert (= (and d!82713 c!63703) b!550162))

(assert (= (and d!82713 (not c!63703)) b!550163))

(assert (= (and b!550163 c!63704) b!550160))

(assert (= (and b!550163 (not c!63704)) b!550158))

(assert (= (and b!550158 c!63702) b!550161))

(assert (= (and b!550158 (not c!63702)) b!550159))

(assert (=> d!82713 m!527177))

(assert (=> d!82713 m!527171))

(assert (=> d!82713 m!527185))

(declare-fun m!527231 () Bool)

(assert (=> d!82713 m!527231))

(declare-fun m!527233 () Bool)

(assert (=> d!82713 m!527233))

(assert (=> d!82713 m!527161))

(declare-fun m!527235 () Bool)

(assert (=> d!82713 m!527235))

(assert (=> d!82713 m!527171))

(assert (=> d!82713 m!527177))

(assert (=> b!550159 m!527171))

(declare-fun m!527237 () Bool)

(assert (=> b!550159 m!527237))

(declare-fun m!527239 () Bool)

(assert (=> b!550163 m!527239))

(assert (=> b!550079 d!82713))

(declare-fun d!82731 () Bool)

(declare-fun res!343420 () Bool)

(declare-fun e!317601 () Bool)

(assert (=> d!82731 (=> res!343420 e!317601)))

(assert (=> d!82731 (= res!343420 (= (select (arr!16655 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82731 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!317601)))

(declare-fun b!550168 () Bool)

(declare-fun e!317602 () Bool)

(assert (=> b!550168 (= e!317601 e!317602)))

(declare-fun res!343421 () Bool)

(assert (=> b!550168 (=> (not res!343421) (not e!317602))))

(assert (=> b!550168 (= res!343421 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17019 a!3118)))))

(declare-fun b!550169 () Bool)

(assert (=> b!550169 (= e!317602 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82731 (not res!343420)) b!550168))

(assert (= (and b!550168 res!343421) b!550169))

(declare-fun m!527241 () Bool)

(assert (=> d!82731 m!527241))

(declare-fun m!527243 () Bool)

(assert (=> b!550169 m!527243))

(assert (=> b!550078 d!82731))

(declare-fun b!550170 () Bool)

(declare-fun c!63705 () Bool)

(declare-fun lt!250442 () (_ BitVec 64))

(assert (=> b!550170 (= c!63705 (= lt!250442 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317603 () SeekEntryResult!5111)

(declare-fun e!317605 () SeekEntryResult!5111)

(assert (=> b!550170 (= e!317603 e!317605)))

(declare-fun d!82733 () Bool)

(declare-fun lt!250441 () SeekEntryResult!5111)

(assert (=> d!82733 (and (or (is-Undefined!5111 lt!250441) (not (is-Found!5111 lt!250441)) (and (bvsge (index!22672 lt!250441) #b00000000000000000000000000000000) (bvslt (index!22672 lt!250441) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250441) (is-Found!5111 lt!250441) (not (is-MissingZero!5111 lt!250441)) (and (bvsge (index!22671 lt!250441) #b00000000000000000000000000000000) (bvslt (index!22671 lt!250441) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250441) (is-Found!5111 lt!250441) (is-MissingZero!5111 lt!250441) (not (is-MissingVacant!5111 lt!250441)) (and (bvsge (index!22674 lt!250441) #b00000000000000000000000000000000) (bvslt (index!22674 lt!250441) (size!17019 a!3118)))) (or (is-Undefined!5111 lt!250441) (ite (is-Found!5111 lt!250441) (= (select (arr!16655 a!3118) (index!22672 lt!250441)) k!1914) (ite (is-MissingZero!5111 lt!250441) (= (select (arr!16655 a!3118) (index!22671 lt!250441)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5111 lt!250441) (= (select (arr!16655 a!3118) (index!22674 lt!250441)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!317604 () SeekEntryResult!5111)

(assert (=> d!82733 (= lt!250441 e!317604)))

(declare-fun c!63706 () Bool)

(declare-fun lt!250440 () SeekEntryResult!5111)

(assert (=> d!82733 (= c!63706 (and (is-Intermediate!5111 lt!250440) (undefined!5923 lt!250440)))))

(assert (=> d!82733 (= lt!250440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82733 (validMask!0 mask!3119)))

(assert (=> d!82733 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!250441)))

(declare-fun b!550171 () Bool)

(assert (=> b!550171 (= e!317605 (seekKeyOrZeroReturnVacant!0 (x!51620 lt!250440) (index!22673 lt!250440) (index!22673 lt!250440) k!1914 a!3118 mask!3119))))

(declare-fun b!550172 () Bool)

(assert (=> b!550172 (= e!317603 (Found!5111 (index!22673 lt!250440)))))

(declare-fun b!550173 () Bool)

(assert (=> b!550173 (= e!317605 (MissingZero!5111 (index!22673 lt!250440)))))

(declare-fun b!550174 () Bool)

(assert (=> b!550174 (= e!317604 Undefined!5111)))

(declare-fun b!550175 () Bool)

(assert (=> b!550175 (= e!317604 e!317603)))

(assert (=> b!550175 (= lt!250442 (select (arr!16655 a!3118) (index!22673 lt!250440)))))

(declare-fun c!63707 () Bool)

(assert (=> b!550175 (= c!63707 (= lt!250442 k!1914))))

(assert (= (and d!82733 c!63706) b!550174))

(assert (= (and d!82733 (not c!63706)) b!550175))

(assert (= (and b!550175 c!63707) b!550172))

(assert (= (and b!550175 (not c!63707)) b!550170))

(assert (= (and b!550170 c!63705) b!550173))

(assert (= (and b!550170 (not c!63705)) b!550171))

(declare-fun m!527245 () Bool)

(assert (=> d!82733 m!527245))

(declare-fun m!527247 () Bool)

(assert (=> d!82733 m!527247))

(declare-fun m!527249 () Bool)

(assert (=> d!82733 m!527249))

(declare-fun m!527251 () Bool)

(assert (=> d!82733 m!527251))

(assert (=> d!82733 m!527161))

(declare-fun m!527253 () Bool)

(assert (=> d!82733 m!527253))

(assert (=> d!82733 m!527245))

(declare-fun m!527255 () Bool)

(assert (=> b!550171 m!527255))

(declare-fun m!527257 () Bool)

(assert (=> b!550175 m!527257))

(assert (=> b!550083 d!82733))

(declare-fun b!550186 () Bool)

(declare-fun e!317615 () Bool)

(declare-fun call!32258 () Bool)

(assert (=> b!550186 (= e!317615 call!32258)))

(declare-fun b!550187 () Bool)

(declare-fun e!317616 () Bool)

(declare-fun e!317617 () Bool)

(assert (=> b!550187 (= e!317616 e!317617)))

(declare-fun res!343428 () Bool)

(assert (=> b!550187 (=> (not res!343428) (not e!317617))))

(declare-fun e!317614 () Bool)

(assert (=> b!550187 (= res!343428 (not e!317614))))

(declare-fun res!343429 () Bool)

(assert (=> b!550187 (=> (not res!343429) (not e!317614))))

(assert (=> b!550187 (= res!343429 (validKeyInArray!0 (select (arr!16655 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550188 () Bool)

(assert (=> b!550188 (= e!317615 call!32258)))

(declare-fun d!82735 () Bool)

(declare-fun res!343430 () Bool)

(assert (=> d!82735 (=> res!343430 e!317616)))

(assert (=> d!82735 (= res!343430 (bvsge #b00000000000000000000000000000000 (size!17019 a!3118)))))

(assert (=> d!82735 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10785) e!317616)))

(declare-fun bm!32255 () Bool)

(declare-fun c!63710 () Bool)

(assert (=> bm!32255 (= call!32258 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63710 (Cons!10784 (select (arr!16655 a!3118) #b00000000000000000000000000000000) Nil!10785) Nil!10785)))))

(declare-fun b!550189 () Bool)

(assert (=> b!550189 (= e!317617 e!317615)))

(assert (=> b!550189 (= c!63710 (validKeyInArray!0 (select (arr!16655 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550190 () Bool)

(declare-fun contains!2839 (List!10788 (_ BitVec 64)) Bool)

(assert (=> b!550190 (= e!317614 (contains!2839 Nil!10785 (select (arr!16655 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82735 (not res!343430)) b!550187))

(assert (= (and b!550187 res!343429) b!550190))

(assert (= (and b!550187 res!343428) b!550189))

(assert (= (and b!550189 c!63710) b!550186))

(assert (= (and b!550189 (not c!63710)) b!550188))

(assert (= (or b!550186 b!550188) bm!32255))

(assert (=> b!550187 m!527241))

(assert (=> b!550187 m!527241))

(declare-fun m!527259 () Bool)

(assert (=> b!550187 m!527259))

(assert (=> bm!32255 m!527241))

(declare-fun m!527261 () Bool)

(assert (=> bm!32255 m!527261))

(assert (=> b!550189 m!527241))

(assert (=> b!550189 m!527241))

(assert (=> b!550189 m!527259))

(assert (=> b!550190 m!527241))

(assert (=> b!550190 m!527241))

(declare-fun m!527263 () Bool)

(assert (=> b!550190 m!527263))

(assert (=> b!550082 d!82735))

(declare-fun b!550267 () Bool)

(declare-fun e!317664 () Bool)

(declare-fun lt!250474 () SeekEntryResult!5111)

(assert (=> b!550267 (= e!317664 (bvsge (x!51620 lt!250474) #b01111111111111111111111111111110))))

(declare-fun b!550268 () Bool)

(assert (=> b!550268 (and (bvsge (index!22673 lt!250474) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250474) (size!17019 a!3118)))))

(declare-fun res!343445 () Bool)

(assert (=> b!550268 (= res!343445 (= (select (arr!16655 a!3118) (index!22673 lt!250474)) (select (arr!16655 a!3118) j!142)))))

(declare-fun e!317663 () Bool)

(assert (=> b!550268 (=> res!343445 e!317663)))

(declare-fun e!317662 () Bool)

(assert (=> b!550268 (= e!317662 e!317663)))

(declare-fun d!82737 () Bool)

(assert (=> d!82737 e!317664))

(declare-fun c!63742 () Bool)

(assert (=> d!82737 (= c!63742 (and (is-Intermediate!5111 lt!250474) (undefined!5923 lt!250474)))))

(declare-fun e!317661 () SeekEntryResult!5111)

(assert (=> d!82737 (= lt!250474 e!317661)))

(declare-fun c!63743 () Bool)

(assert (=> d!82737 (= c!63743 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250475 () (_ BitVec 64))

(assert (=> d!82737 (= lt!250475 (select (arr!16655 a!3118) (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119)))))

(assert (=> d!82737 (validMask!0 mask!3119)))

(assert (=> d!82737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) (select (arr!16655 a!3118) j!142) a!3118 mask!3119) lt!250474)))

(declare-fun b!550269 () Bool)

(declare-fun e!317665 () SeekEntryResult!5111)

(assert (=> b!550269 (= e!317661 e!317665)))

(declare-fun c!63744 () Bool)

(assert (=> b!550269 (= c!63744 (or (= lt!250475 (select (arr!16655 a!3118) j!142)) (= (bvadd lt!250475 lt!250475) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550270 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550270 (= e!317665 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16655 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!550271 () Bool)

(assert (=> b!550271 (= e!317665 (Intermediate!5111 false (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550272 () Bool)

(assert (=> b!550272 (and (bvsge (index!22673 lt!250474) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250474) (size!17019 a!3118)))))

(declare-fun res!343446 () Bool)

(assert (=> b!550272 (= res!343446 (= (select (arr!16655 a!3118) (index!22673 lt!250474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550272 (=> res!343446 e!317663)))

(declare-fun b!550273 () Bool)

(assert (=> b!550273 (= e!317661 (Intermediate!5111 true (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550274 () Bool)

(assert (=> b!550274 (and (bvsge (index!22673 lt!250474) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250474) (size!17019 a!3118)))))

(assert (=> b!550274 (= e!317663 (= (select (arr!16655 a!3118) (index!22673 lt!250474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550275 () Bool)

(assert (=> b!550275 (= e!317664 e!317662)))

(declare-fun res!343447 () Bool)

(assert (=> b!550275 (= res!343447 (and (is-Intermediate!5111 lt!250474) (not (undefined!5923 lt!250474)) (bvslt (x!51620 lt!250474) #b01111111111111111111111111111110) (bvsge (x!51620 lt!250474) #b00000000000000000000000000000000) (bvsge (x!51620 lt!250474) #b00000000000000000000000000000000)))))

(assert (=> b!550275 (=> (not res!343447) (not e!317662))))

(assert (= (and d!82737 c!63743) b!550273))

(assert (= (and d!82737 (not c!63743)) b!550269))

(assert (= (and b!550269 c!63744) b!550271))

(assert (= (and b!550269 (not c!63744)) b!550270))

(assert (= (and d!82737 c!63742) b!550267))

(assert (= (and d!82737 (not c!63742)) b!550275))

(assert (= (and b!550275 res!343447) b!550268))

(assert (= (and b!550268 (not res!343445)) b!550272))

(assert (= (and b!550272 (not res!343446)) b!550274))

(declare-fun m!527323 () Bool)

(assert (=> b!550268 m!527323))

(assert (=> b!550270 m!527177))

(declare-fun m!527325 () Bool)

(assert (=> b!550270 m!527325))

(assert (=> b!550270 m!527325))

(assert (=> b!550270 m!527171))

(declare-fun m!527327 () Bool)

(assert (=> b!550270 m!527327))

(assert (=> b!550272 m!527323))

(assert (=> d!82737 m!527177))

(declare-fun m!527329 () Bool)

(assert (=> d!82737 m!527329))

(assert (=> d!82737 m!527161))

(assert (=> b!550274 m!527323))

(assert (=> b!550077 d!82737))

(declare-fun d!82753 () Bool)

(declare-fun lt!250485 () (_ BitVec 32))

(declare-fun lt!250484 () (_ BitVec 32))

(assert (=> d!82753 (= lt!250485 (bvmul (bvxor lt!250484 (bvlshr lt!250484 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82753 (= lt!250484 ((_ extract 31 0) (bvand (bvxor (select (arr!16655 a!3118) j!142) (bvlshr (select (arr!16655 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82753 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343448 (let ((h!11758 ((_ extract 31 0) (bvand (bvxor (select (arr!16655 a!3118) j!142) (bvlshr (select (arr!16655 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51623 (bvmul (bvxor h!11758 (bvlshr h!11758 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51623 (bvlshr x!51623 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343448 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343448 #b00000000000000000000000000000000))))))

(assert (=> d!82753 (= (toIndex!0 (select (arr!16655 a!3118) j!142) mask!3119) (bvand (bvxor lt!250485 (bvlshr lt!250485 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550077 d!82753))

(declare-fun b!550311 () Bool)

(declare-fun e!317688 () Bool)

(declare-fun lt!250492 () SeekEntryResult!5111)

(assert (=> b!550311 (= e!317688 (bvsge (x!51620 lt!250492) #b01111111111111111111111111111110))))

(declare-fun b!550312 () Bool)

(assert (=> b!550312 (and (bvsge (index!22673 lt!250492) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250492) (size!17019 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)))))))

(declare-fun res!343458 () Bool)

(assert (=> b!550312 (= res!343458 (= (select (arr!16655 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118))) (index!22673 lt!250492)) (select (store (arr!16655 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!317687 () Bool)

(assert (=> b!550312 (=> res!343458 e!317687)))

(declare-fun e!317686 () Bool)

(assert (=> b!550312 (= e!317686 e!317687)))

(declare-fun d!82755 () Bool)

(assert (=> d!82755 e!317688))

(declare-fun c!63758 () Bool)

(assert (=> d!82755 (= c!63758 (and (is-Intermediate!5111 lt!250492) (undefined!5923 lt!250492)))))

(declare-fun e!317685 () SeekEntryResult!5111)

(assert (=> d!82755 (= lt!250492 e!317685)))

(declare-fun c!63759 () Bool)

(assert (=> d!82755 (= c!63759 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250493 () (_ BitVec 64))

(assert (=> d!82755 (= lt!250493 (select (arr!16655 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118))) (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!82755 (validMask!0 mask!3119)))

(assert (=> d!82755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)) mask!3119) lt!250492)))

(declare-fun b!550313 () Bool)

(declare-fun e!317689 () SeekEntryResult!5111)

(assert (=> b!550313 (= e!317685 e!317689)))

(declare-fun c!63760 () Bool)

(assert (=> b!550313 (= c!63760 (or (= lt!250493 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!250493 lt!250493) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550314 () Bool)

(assert (=> b!550314 (= e!317689 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)) mask!3119))))

(declare-fun b!550315 () Bool)

(assert (=> b!550315 (= e!317689 (Intermediate!5111 false (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550316 () Bool)

(assert (=> b!550316 (and (bvsge (index!22673 lt!250492) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250492) (size!17019 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)))))))

(declare-fun res!343459 () Bool)

(assert (=> b!550316 (= res!343459 (= (select (arr!16655 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118))) (index!22673 lt!250492)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550316 (=> res!343459 e!317687)))

(declare-fun b!550317 () Bool)

(assert (=> b!550317 (= e!317685 (Intermediate!5111 true (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550318 () Bool)

(assert (=> b!550318 (and (bvsge (index!22673 lt!250492) #b00000000000000000000000000000000) (bvslt (index!22673 lt!250492) (size!17019 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118)))))))

(assert (=> b!550318 (= e!317687 (= (select (arr!16655 (array!34688 (store (arr!16655 a!3118) i!1132 k!1914) (size!17019 a!3118))) (index!22673 lt!250492)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550319 () Bool)

(assert (=> b!550319 (= e!317688 e!317686)))

(declare-fun res!343460 () Bool)

(assert (=> b!550319 (= res!343460 (and (is-Intermediate!5111 lt!250492) (not (undefined!5923 lt!250492)) (bvslt (x!51620 lt!250492) #b01111111111111111111111111111110) (bvsge (x!51620 lt!250492) #b00000000000000000000000000000000) (bvsge (x!51620 lt!250492) #b00000000000000000000000000000000)))))

(assert (=> b!550319 (=> (not res!343460) (not e!317686))))

(assert (= (and d!82755 c!63759) b!550317))

(assert (= (and d!82755 (not c!63759)) b!550313))

(assert (= (and b!550313 c!63760) b!550315))

(assert (= (and b!550313 (not c!63760)) b!550314))

(assert (= (and d!82755 c!63758) b!550311))

(assert (= (and d!82755 (not c!63758)) b!550319))

(assert (= (and b!550319 res!343460) b!550312))

(assert (= (and b!550312 (not res!343458)) b!550316))

(assert (= (and b!550316 (not res!343459)) b!550318))

(declare-fun m!527339 () Bool)

(assert (=> b!550312 m!527339))

(assert (=> b!550314 m!527181))

(declare-fun m!527341 () Bool)

(assert (=> b!550314 m!527341))

(assert (=> b!550314 m!527341))

(assert (=> b!550314 m!527179))

(declare-fun m!527343 () Bool)

(assert (=> b!550314 m!527343))

(assert (=> b!550316 m!527339))

(assert (=> d!82755 m!527181))

(declare-fun m!527345 () Bool)

(assert (=> d!82755 m!527345))

(assert (=> d!82755 m!527161))

(assert (=> b!550318 m!527339))

(assert (=> b!550077 d!82755))

(declare-fun d!82759 () Bool)

(declare-fun lt!250495 () (_ BitVec 32))

(declare-fun lt!250494 () (_ BitVec 32))

(assert (=> d!82759 (= lt!250495 (bvmul (bvxor lt!250494 (bvlshr lt!250494 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82759 (= lt!250494 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82759 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343448 (let ((h!11758 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51623 (bvmul (bvxor h!11758 (bvlshr h!11758 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51623 (bvlshr x!51623 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343448 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343448 #b00000000000000000000000000000000))))))

(assert (=> d!82759 (= (toIndex!0 (select (store (arr!16655 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!250495 (bvlshr lt!250495 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550077 d!82759))

(declare-fun bm!32259 () Bool)

(declare-fun call!32262 () Bool)

(assert (=> bm!32259 (= call!32262 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550356 () Bool)

(declare-fun e!317712 () Bool)

(assert (=> b!550356 (= e!317712 call!32262)))

(declare-fun b!550357 () Bool)

(declare-fun e!317714 () Bool)

(declare-fun e!317713 () Bool)

(assert (=> b!550357 (= e!317714 e!317713)))

(declare-fun c!63771 () Bool)

(assert (=> b!550357 (= c!63771 (validKeyInArray!0 (select (arr!16655 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550358 () Bool)

(assert (=> b!550358 (= e!317713 e!317712)))

(declare-fun lt!250518 () (_ BitVec 64))

(assert (=> b!550358 (= lt!250518 (select (arr!16655 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250520 () Unit!16996)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34687 (_ BitVec 64) (_ BitVec 32)) Unit!16996)

(assert (=> b!550358 (= lt!250520 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250518 #b00000000000000000000000000000000))))

(assert (=> b!550358 (arrayContainsKey!0 a!3118 lt!250518 #b00000000000000000000000000000000)))

(declare-fun lt!250519 () Unit!16996)

(assert (=> b!550358 (= lt!250519 lt!250520)))

(declare-fun res!343479 () Bool)

(assert (=> b!550358 (= res!343479 (= (seekEntryOrOpen!0 (select (arr!16655 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5111 #b00000000000000000000000000000000)))))

(assert (=> b!550358 (=> (not res!343479) (not e!317712))))

(declare-fun d!82761 () Bool)

(declare-fun res!343480 () Bool)

(assert (=> d!82761 (=> res!343480 e!317714)))

(assert (=> d!82761 (= res!343480 (bvsge #b00000000000000000000000000000000 (size!17019 a!3118)))))

(assert (=> d!82761 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317714)))

(declare-fun b!550359 () Bool)

(assert (=> b!550359 (= e!317713 call!32262)))

(assert (= (and d!82761 (not res!343480)) b!550357))

(assert (= (and b!550357 c!63771) b!550358))

(assert (= (and b!550357 (not c!63771)) b!550359))

(assert (= (and b!550358 res!343479) b!550356))

(assert (= (or b!550356 b!550359) bm!32259))

(declare-fun m!527363 () Bool)

(assert (=> bm!32259 m!527363))

(assert (=> b!550357 m!527241))

(assert (=> b!550357 m!527241))

(assert (=> b!550357 m!527259))

(assert (=> b!550358 m!527241))

(declare-fun m!527365 () Bool)

(assert (=> b!550358 m!527365))

(declare-fun m!527367 () Bool)

(assert (=> b!550358 m!527367))

(assert (=> b!550358 m!527241))

(declare-fun m!527369 () Bool)

(assert (=> b!550358 m!527369))

(assert (=> b!550076 d!82761))

(declare-fun d!82771 () Bool)

(assert (=> d!82771 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50280 d!82771))

(declare-fun d!82781 () Bool)

