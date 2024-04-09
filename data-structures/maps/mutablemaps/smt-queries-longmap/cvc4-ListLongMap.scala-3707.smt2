; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50940 () Bool)

(assert start!50940)

(declare-fun b!556805 () Bool)

(declare-fun e!320782 () Bool)

(declare-fun e!320779 () Bool)

(assert (=> b!556805 (= e!320782 e!320779)))

(declare-fun res!349188 () Bool)

(assert (=> b!556805 (=> (not res!349188) (not e!320779))))

(declare-datatypes ((SeekEntryResult!5291 0))(
  ( (MissingZero!5291 (index!23391 (_ BitVec 32))) (Found!5291 (index!23392 (_ BitVec 32))) (Intermediate!5291 (undefined!6103 Bool) (index!23393 (_ BitVec 32)) (x!52310 (_ BitVec 32))) (Undefined!5291) (MissingVacant!5291 (index!23394 (_ BitVec 32))) )
))
(declare-fun lt!253085 () SeekEntryResult!5291)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!253084 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35062 0))(
  ( (array!35063 (arr!16835 (Array (_ BitVec 32) (_ BitVec 64))) (size!17199 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35062)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35062 (_ BitVec 32)) SeekEntryResult!5291)

(assert (=> b!556805 (= res!349188 (= lt!253085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253084 (select (store (arr!16835 a!3118) i!1132 k!1914) j!142) (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)) mask!3119)))))

(declare-fun lt!253086 () (_ BitVec 32))

(assert (=> b!556805 (= lt!253085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253086 (select (arr!16835 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556805 (= lt!253084 (toIndex!0 (select (store (arr!16835 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556805 (= lt!253086 (toIndex!0 (select (arr!16835 a!3118) j!142) mask!3119))))

(declare-fun b!556806 () Bool)

(declare-fun res!349190 () Bool)

(declare-fun e!320778 () Bool)

(assert (=> b!556806 (=> (not res!349190) (not e!320778))))

(assert (=> b!556806 (= res!349190 (and (= (size!17199 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17199 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17199 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!349192 () Bool)

(assert (=> start!50940 (=> (not res!349192) (not e!320778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50940 (= res!349192 (validMask!0 mask!3119))))

(assert (=> start!50940 e!320778))

(assert (=> start!50940 true))

(declare-fun array_inv!12609 (array!35062) Bool)

(assert (=> start!50940 (array_inv!12609 a!3118)))

(declare-fun b!556807 () Bool)

(declare-fun res!349187 () Bool)

(assert (=> b!556807 (=> (not res!349187) (not e!320782))))

(declare-datatypes ((List!10968 0))(
  ( (Nil!10965) (Cons!10964 (h!11952 (_ BitVec 64)) (t!17204 List!10968)) )
))
(declare-fun arrayNoDuplicates!0 (array!35062 (_ BitVec 32) List!10968) Bool)

(assert (=> b!556807 (= res!349187 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10965))))

(declare-fun b!556808 () Bool)

(declare-fun res!349191 () Bool)

(assert (=> b!556808 (=> (not res!349191) (not e!320782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35062 (_ BitVec 32)) Bool)

(assert (=> b!556808 (= res!349191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556809 () Bool)

(declare-fun e!320781 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35062 (_ BitVec 32)) SeekEntryResult!5291)

(assert (=> b!556809 (= e!320781 (= (seekEntryOrOpen!0 (select (arr!16835 a!3118) j!142) a!3118 mask!3119) (Found!5291 j!142)))))

(declare-fun b!556810 () Bool)

(assert (=> b!556810 (= e!320779 (not (or (not (is-Intermediate!5291 lt!253085)) (undefined!6103 lt!253085) (= (select (arr!16835 a!3118) (index!23393 lt!253085)) (select (arr!16835 a!3118) j!142)) (= (select (arr!16835 a!3118) (index!23393 lt!253085)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23393 lt!253085) #b00000000000000000000000000000000) (bvsge (index!23393 lt!253085) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52310 lt!253085) #b01111111111111111111111111111110) (bvsge (x!52310 lt!253085) #b00000000000000000000000000000000)))))))

(assert (=> b!556810 e!320781))

(declare-fun res!349184 () Bool)

(assert (=> b!556810 (=> (not res!349184) (not e!320781))))

(assert (=> b!556810 (= res!349184 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17356 0))(
  ( (Unit!17357) )
))
(declare-fun lt!253087 () Unit!17356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17356)

(assert (=> b!556810 (= lt!253087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556811 () Bool)

(assert (=> b!556811 (= e!320778 e!320782)))

(declare-fun res!349185 () Bool)

(assert (=> b!556811 (=> (not res!349185) (not e!320782))))

(declare-fun lt!253088 () SeekEntryResult!5291)

(assert (=> b!556811 (= res!349185 (or (= lt!253088 (MissingZero!5291 i!1132)) (= lt!253088 (MissingVacant!5291 i!1132))))))

(assert (=> b!556811 (= lt!253088 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556812 () Bool)

(declare-fun res!349186 () Bool)

(assert (=> b!556812 (=> (not res!349186) (not e!320778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556812 (= res!349186 (validKeyInArray!0 (select (arr!16835 a!3118) j!142)))))

(declare-fun b!556813 () Bool)

(declare-fun res!349189 () Bool)

(assert (=> b!556813 (=> (not res!349189) (not e!320778))))

(declare-fun arrayContainsKey!0 (array!35062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556813 (= res!349189 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556814 () Bool)

(declare-fun res!349193 () Bool)

(assert (=> b!556814 (=> (not res!349193) (not e!320778))))

(assert (=> b!556814 (= res!349193 (validKeyInArray!0 k!1914))))

(assert (= (and start!50940 res!349192) b!556806))

(assert (= (and b!556806 res!349190) b!556812))

(assert (= (and b!556812 res!349186) b!556814))

(assert (= (and b!556814 res!349193) b!556813))

(assert (= (and b!556813 res!349189) b!556811))

(assert (= (and b!556811 res!349185) b!556808))

(assert (= (and b!556808 res!349191) b!556807))

(assert (= (and b!556807 res!349187) b!556805))

(assert (= (and b!556805 res!349188) b!556810))

(assert (= (and b!556810 res!349184) b!556809))

(declare-fun m!534815 () Bool)

(assert (=> b!556807 m!534815))

(declare-fun m!534817 () Bool)

(assert (=> b!556810 m!534817))

(declare-fun m!534819 () Bool)

(assert (=> b!556810 m!534819))

(declare-fun m!534821 () Bool)

(assert (=> b!556810 m!534821))

(declare-fun m!534823 () Bool)

(assert (=> b!556810 m!534823))

(declare-fun m!534825 () Bool)

(assert (=> b!556814 m!534825))

(declare-fun m!534827 () Bool)

(assert (=> b!556813 m!534827))

(assert (=> b!556812 m!534819))

(assert (=> b!556812 m!534819))

(declare-fun m!534829 () Bool)

(assert (=> b!556812 m!534829))

(declare-fun m!534831 () Bool)

(assert (=> b!556808 m!534831))

(assert (=> b!556809 m!534819))

(assert (=> b!556809 m!534819))

(declare-fun m!534833 () Bool)

(assert (=> b!556809 m!534833))

(declare-fun m!534835 () Bool)

(assert (=> start!50940 m!534835))

(declare-fun m!534837 () Bool)

(assert (=> start!50940 m!534837))

(assert (=> b!556805 m!534819))

(declare-fun m!534839 () Bool)

(assert (=> b!556805 m!534839))

(assert (=> b!556805 m!534819))

(assert (=> b!556805 m!534819))

(declare-fun m!534841 () Bool)

(assert (=> b!556805 m!534841))

(declare-fun m!534843 () Bool)

(assert (=> b!556805 m!534843))

(assert (=> b!556805 m!534843))

(declare-fun m!534845 () Bool)

(assert (=> b!556805 m!534845))

(declare-fun m!534847 () Bool)

(assert (=> b!556805 m!534847))

(assert (=> b!556805 m!534843))

(declare-fun m!534849 () Bool)

(assert (=> b!556805 m!534849))

(declare-fun m!534851 () Bool)

(assert (=> b!556811 m!534851))

(push 1)

(assert (not start!50940))

(assert (not b!556809))

(assert (not b!556812))

(assert (not b!556807))

(assert (not b!556810))

(assert (not b!556808))

(assert (not b!556813))

(assert (not b!556811))

(assert (not b!556814))

(assert (not b!556805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83275 () Bool)

(declare-fun res!349213 () Bool)

(declare-fun e!320817 () Bool)

(assert (=> d!83275 (=> res!349213 e!320817)))

(assert (=> d!83275 (= res!349213 (= (select (arr!16835 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83275 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!320817)))

(declare-fun b!556870 () Bool)

(declare-fun e!320818 () Bool)

(assert (=> b!556870 (= e!320817 e!320818)))

(declare-fun res!349214 () Bool)

(assert (=> b!556870 (=> (not res!349214) (not e!320818))))

(assert (=> b!556870 (= res!349214 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17199 a!3118)))))

(declare-fun b!556871 () Bool)

(assert (=> b!556871 (= e!320818 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83275 (not res!349213)) b!556870))

(assert (= (and b!556870 res!349214) b!556871))

(declare-fun m!534865 () Bool)

(assert (=> d!83275 m!534865))

(declare-fun m!534867 () Bool)

(assert (=> b!556871 m!534867))

(assert (=> b!556813 d!83275))

(declare-fun b!556905 () Bool)

(declare-fun e!320842 () Bool)

(declare-fun call!32355 () Bool)

(assert (=> b!556905 (= e!320842 call!32355)))

(declare-fun b!556906 () Bool)

(declare-fun e!320844 () Bool)

(assert (=> b!556906 (= e!320844 e!320842)))

(declare-fun lt!253134 () (_ BitVec 64))

(assert (=> b!556906 (= lt!253134 (select (arr!16835 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253133 () Unit!17356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35062 (_ BitVec 64) (_ BitVec 32)) Unit!17356)

(assert (=> b!556906 (= lt!253133 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253134 #b00000000000000000000000000000000))))

(assert (=> b!556906 (arrayContainsKey!0 a!3118 lt!253134 #b00000000000000000000000000000000)))

(declare-fun lt!253132 () Unit!17356)

(assert (=> b!556906 (= lt!253132 lt!253133)))

(declare-fun res!349231 () Bool)

(assert (=> b!556906 (= res!349231 (= (seekEntryOrOpen!0 (select (arr!16835 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5291 #b00000000000000000000000000000000)))))

(assert (=> b!556906 (=> (not res!349231) (not e!320842))))

(declare-fun bm!32352 () Bool)

(assert (=> bm!32352 (= call!32355 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556907 () Bool)

(assert (=> b!556907 (= e!320844 call!32355)))

(declare-fun b!556908 () Bool)

(declare-fun e!320843 () Bool)

(assert (=> b!556908 (= e!320843 e!320844)))

(declare-fun c!64176 () Bool)

(assert (=> b!556908 (= c!64176 (validKeyInArray!0 (select (arr!16835 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83277 () Bool)

(declare-fun res!349232 () Bool)

(assert (=> d!83277 (=> res!349232 e!320843)))

(assert (=> d!83277 (= res!349232 (bvsge #b00000000000000000000000000000000 (size!17199 a!3118)))))

(assert (=> d!83277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320843)))

(assert (= (and d!83277 (not res!349232)) b!556908))

(assert (= (and b!556908 c!64176) b!556906))

(assert (= (and b!556908 (not c!64176)) b!556907))

(assert (= (and b!556906 res!349231) b!556905))

(assert (= (or b!556905 b!556907) bm!32352))

(assert (=> b!556906 m!534865))

(declare-fun m!534907 () Bool)

(assert (=> b!556906 m!534907))

(declare-fun m!534909 () Bool)

(assert (=> b!556906 m!534909))

(assert (=> b!556906 m!534865))

(declare-fun m!534911 () Bool)

(assert (=> b!556906 m!534911))

(declare-fun m!534913 () Bool)

(assert (=> bm!32352 m!534913))

(assert (=> b!556908 m!534865))

(assert (=> b!556908 m!534865))

(declare-fun m!534915 () Bool)

(assert (=> b!556908 m!534915))

(assert (=> b!556808 d!83277))

(declare-fun d!83293 () Bool)

(assert (=> d!83293 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556814 d!83293))

(declare-fun b!556954 () Bool)

(declare-fun c!64189 () Bool)

(declare-fun lt!253153 () (_ BitVec 64))

(assert (=> b!556954 (= c!64189 (= lt!253153 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320880 () SeekEntryResult!5291)

(declare-fun e!320879 () SeekEntryResult!5291)

(assert (=> b!556954 (= e!320880 e!320879)))

(declare-fun d!83295 () Bool)

(declare-fun lt!253154 () SeekEntryResult!5291)

(assert (=> d!83295 (and (or (is-Undefined!5291 lt!253154) (not (is-Found!5291 lt!253154)) (and (bvsge (index!23392 lt!253154) #b00000000000000000000000000000000) (bvslt (index!23392 lt!253154) (size!17199 a!3118)))) (or (is-Undefined!5291 lt!253154) (is-Found!5291 lt!253154) (not (is-MissingZero!5291 lt!253154)) (and (bvsge (index!23391 lt!253154) #b00000000000000000000000000000000) (bvslt (index!23391 lt!253154) (size!17199 a!3118)))) (or (is-Undefined!5291 lt!253154) (is-Found!5291 lt!253154) (is-MissingZero!5291 lt!253154) (not (is-MissingVacant!5291 lt!253154)) (and (bvsge (index!23394 lt!253154) #b00000000000000000000000000000000) (bvslt (index!23394 lt!253154) (size!17199 a!3118)))) (or (is-Undefined!5291 lt!253154) (ite (is-Found!5291 lt!253154) (= (select (arr!16835 a!3118) (index!23392 lt!253154)) (select (arr!16835 a!3118) j!142)) (ite (is-MissingZero!5291 lt!253154) (= (select (arr!16835 a!3118) (index!23391 lt!253154)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5291 lt!253154) (= (select (arr!16835 a!3118) (index!23394 lt!253154)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!320878 () SeekEntryResult!5291)

(assert (=> d!83295 (= lt!253154 e!320878)))

(declare-fun c!64190 () Bool)

(declare-fun lt!253155 () SeekEntryResult!5291)

(assert (=> d!83295 (= c!64190 (and (is-Intermediate!5291 lt!253155) (undefined!6103 lt!253155)))))

(assert (=> d!83295 (= lt!253155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16835 a!3118) j!142) mask!3119) (select (arr!16835 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83295 (validMask!0 mask!3119)))

(assert (=> d!83295 (= (seekEntryOrOpen!0 (select (arr!16835 a!3118) j!142) a!3118 mask!3119) lt!253154)))

(declare-fun b!556955 () Bool)

(assert (=> b!556955 (= e!320878 Undefined!5291)))

(declare-fun b!556956 () Bool)

(assert (=> b!556956 (= e!320880 (Found!5291 (index!23393 lt!253155)))))

(declare-fun b!556957 () Bool)

(assert (=> b!556957 (= e!320878 e!320880)))

(assert (=> b!556957 (= lt!253153 (select (arr!16835 a!3118) (index!23393 lt!253155)))))

(declare-fun c!64191 () Bool)

(assert (=> b!556957 (= c!64191 (= lt!253153 (select (arr!16835 a!3118) j!142)))))

(declare-fun b!556958 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35062 (_ BitVec 32)) SeekEntryResult!5291)

(assert (=> b!556958 (= e!320879 (seekKeyOrZeroReturnVacant!0 (x!52310 lt!253155) (index!23393 lt!253155) (index!23393 lt!253155) (select (arr!16835 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556959 () Bool)

(assert (=> b!556959 (= e!320879 (MissingZero!5291 (index!23393 lt!253155)))))

(assert (= (and d!83295 c!64190) b!556955))

(assert (= (and d!83295 (not c!64190)) b!556957))

(assert (= (and b!556957 c!64191) b!556956))

(assert (= (and b!556957 (not c!64191)) b!556954))

(assert (= (and b!556954 c!64189) b!556959))

(assert (= (and b!556954 (not c!64189)) b!556958))

(declare-fun m!534935 () Bool)

(assert (=> d!83295 m!534935))

(declare-fun m!534937 () Bool)

(assert (=> d!83295 m!534937))

(declare-fun m!534939 () Bool)

(assert (=> d!83295 m!534939))

(assert (=> d!83295 m!534839))

(assert (=> d!83295 m!534819))

(declare-fun m!534941 () Bool)

(assert (=> d!83295 m!534941))

(assert (=> d!83295 m!534835))

(assert (=> d!83295 m!534819))

(assert (=> d!83295 m!534839))

(declare-fun m!534943 () Bool)

(assert (=> b!556957 m!534943))

(assert (=> b!556958 m!534819))

(declare-fun m!534945 () Bool)

(assert (=> b!556958 m!534945))

(assert (=> b!556809 d!83295))

(declare-fun d!83311 () Bool)

(assert (=> d!83311 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50940 d!83311))

(declare-fun d!83313 () Bool)

(assert (=> d!83313 (= (array_inv!12609 a!3118) (bvsge (size!17199 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50940 d!83313))

(declare-fun b!556990 () Bool)

(declare-fun e!320897 () Bool)

(declare-fun call!32362 () Bool)

(assert (=> b!556990 (= e!320897 call!32362)))

(declare-fun b!556991 () Bool)

(declare-fun e!320899 () Bool)

(assert (=> b!556991 (= e!320899 e!320897)))

(declare-fun lt!253168 () (_ BitVec 64))

(assert (=> b!556991 (= lt!253168 (select (arr!16835 a!3118) j!142))))

(declare-fun lt!253167 () Unit!17356)

(assert (=> b!556991 (= lt!253167 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253168 j!142))))

(assert (=> b!556991 (arrayContainsKey!0 a!3118 lt!253168 #b00000000000000000000000000000000)))

(declare-fun lt!253166 () Unit!17356)

(assert (=> b!556991 (= lt!253166 lt!253167)))

(declare-fun res!349260 () Bool)

(assert (=> b!556991 (= res!349260 (= (seekEntryOrOpen!0 (select (arr!16835 a!3118) j!142) a!3118 mask!3119) (Found!5291 j!142)))))

(assert (=> b!556991 (=> (not res!349260) (not e!320897))))

(declare-fun bm!32359 () Bool)

(assert (=> bm!32359 (= call!32362 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556992 () Bool)

(assert (=> b!556992 (= e!320899 call!32362)))

(declare-fun b!556993 () Bool)

(declare-fun e!320898 () Bool)

(assert (=> b!556993 (= e!320898 e!320899)))

(declare-fun c!64204 () Bool)

(assert (=> b!556993 (= c!64204 (validKeyInArray!0 (select (arr!16835 a!3118) j!142)))))

(declare-fun d!83315 () Bool)

(declare-fun res!349261 () Bool)

(assert (=> d!83315 (=> res!349261 e!320898)))

(assert (=> d!83315 (= res!349261 (bvsge j!142 (size!17199 a!3118)))))

(assert (=> d!83315 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!320898)))

(assert (= (and d!83315 (not res!349261)) b!556993))

(assert (= (and b!556993 c!64204) b!556991))

(assert (= (and b!556993 (not c!64204)) b!556992))

(assert (= (and b!556991 res!349260) b!556990))

(assert (= (or b!556990 b!556992) bm!32359))

(assert (=> b!556991 m!534819))

(declare-fun m!534947 () Bool)

(assert (=> b!556991 m!534947))

(declare-fun m!534949 () Bool)

(assert (=> b!556991 m!534949))

(assert (=> b!556991 m!534819))

(assert (=> b!556991 m!534833))

(declare-fun m!534951 () Bool)

(assert (=> bm!32359 m!534951))

(assert (=> b!556993 m!534819))

(assert (=> b!556993 m!534819))

(assert (=> b!556993 m!534829))

(assert (=> b!556810 d!83315))

(declare-fun d!83317 () Bool)

(assert (=> d!83317 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253181 () Unit!17356)

(declare-fun choose!38 (array!35062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17356)

(assert (=> d!83317 (= lt!253181 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83317 (validMask!0 mask!3119)))

(assert (=> d!83317 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253181)))

(declare-fun bs!17344 () Bool)

(assert (= bs!17344 d!83317))

(assert (=> bs!17344 m!534821))

(declare-fun m!534987 () Bool)

(assert (=> bs!17344 m!534987))

(assert (=> bs!17344 m!534835))

(assert (=> b!556810 d!83317))

(declare-fun d!83325 () Bool)

(declare-fun e!320945 () Bool)

(assert (=> d!83325 e!320945))

(declare-fun c!64229 () Bool)

(declare-fun lt!253198 () SeekEntryResult!5291)

(assert (=> d!83325 (= c!64229 (and (is-Intermediate!5291 lt!253198) (undefined!6103 lt!253198)))))

(declare-fun e!320942 () SeekEntryResult!5291)

(assert (=> d!83325 (= lt!253198 e!320942)))

(declare-fun c!64230 () Bool)

(assert (=> d!83325 (= c!64230 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253197 () (_ BitVec 64))

(assert (=> d!83325 (= lt!253197 (select (arr!16835 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118))) lt!253084))))

(assert (=> d!83325 (validMask!0 mask!3119)))

(assert (=> d!83325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253084 (select (store (arr!16835 a!3118) i!1132 k!1914) j!142) (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)) mask!3119) lt!253198)))

(declare-fun b!557063 () Bool)

(declare-fun e!320944 () SeekEntryResult!5291)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557063 (= e!320944 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253084 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16835 a!3118) i!1132 k!1914) j!142) (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)) mask!3119))))

(declare-fun b!557064 () Bool)

(assert (=> b!557064 (and (bvsge (index!23393 lt!253198) #b00000000000000000000000000000000) (bvslt (index!23393 lt!253198) (size!17199 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)))))))

(declare-fun res!349285 () Bool)

(assert (=> b!557064 (= res!349285 (= (select (arr!16835 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118))) (index!23393 lt!253198)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320943 () Bool)

(assert (=> b!557064 (=> res!349285 e!320943)))

(declare-fun b!557065 () Bool)

(assert (=> b!557065 (= e!320942 e!320944)))

(declare-fun c!64231 () Bool)

(assert (=> b!557065 (= c!64231 (or (= lt!253197 (select (store (arr!16835 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253197 lt!253197) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557066 () Bool)

(declare-fun e!320941 () Bool)

(assert (=> b!557066 (= e!320945 e!320941)))

(declare-fun res!349284 () Bool)

(assert (=> b!557066 (= res!349284 (and (is-Intermediate!5291 lt!253198) (not (undefined!6103 lt!253198)) (bvslt (x!52310 lt!253198) #b01111111111111111111111111111110) (bvsge (x!52310 lt!253198) #b00000000000000000000000000000000) (bvsge (x!52310 lt!253198) #b00000000000000000000000000000000)))))

(assert (=> b!557066 (=> (not res!349284) (not e!320941))))

(declare-fun b!557067 () Bool)

(assert (=> b!557067 (= e!320942 (Intermediate!5291 true lt!253084 #b00000000000000000000000000000000))))

(declare-fun b!557068 () Bool)

(assert (=> b!557068 (and (bvsge (index!23393 lt!253198) #b00000000000000000000000000000000) (bvslt (index!23393 lt!253198) (size!17199 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)))))))

(assert (=> b!557068 (= e!320943 (= (select (arr!16835 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118))) (index!23393 lt!253198)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557069 () Bool)

(assert (=> b!557069 (= e!320945 (bvsge (x!52310 lt!253198) #b01111111111111111111111111111110))))

(declare-fun b!557070 () Bool)

(assert (=> b!557070 (= e!320944 (Intermediate!5291 false lt!253084 #b00000000000000000000000000000000))))

(declare-fun b!557071 () Bool)

(assert (=> b!557071 (and (bvsge (index!23393 lt!253198) #b00000000000000000000000000000000) (bvslt (index!23393 lt!253198) (size!17199 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118)))))))

(declare-fun res!349286 () Bool)

(assert (=> b!557071 (= res!349286 (= (select (arr!16835 (array!35063 (store (arr!16835 a!3118) i!1132 k!1914) (size!17199 a!3118))) (index!23393 lt!253198)) (select (store (arr!16835 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!557071 (=> res!349286 e!320943)))

(assert (=> b!557071 (= e!320941 e!320943)))

(assert (= (and d!83325 c!64230) b!557067))

(assert (= (and d!83325 (not c!64230)) b!557065))

(assert (= (and b!557065 c!64231) b!557070))

(assert (= (and b!557065 (not c!64231)) b!557063))

(assert (= (and d!83325 c!64229) b!557069))

(assert (= (and d!83325 (not c!64229)) b!557066))

(assert (= (and b!557066 res!349284) b!557071))

(assert (= (and b!557071 (not res!349286)) b!557064))

(assert (= (and b!557064 (not res!349285)) b!557068))

(declare-fun m!535015 () Bool)

(assert (=> b!557071 m!535015))

(assert (=> b!557064 m!535015))

(assert (=> b!557068 m!535015))

(declare-fun m!535019 () Bool)

(assert (=> b!557063 m!535019))

(assert (=> b!557063 m!535019))

(assert (=> b!557063 m!534843))

(declare-fun m!535023 () Bool)

(assert (=> b!557063 m!535023))

(declare-fun m!535025 () Bool)

(assert (=> d!83325 m!535025))

(assert (=> d!83325 m!534835))

(assert (=> b!556805 d!83325))

(declare-fun d!83343 () Bool)

(declare-fun e!320953 () Bool)

(assert (=> d!83343 e!320953))

(declare-fun c!64233 () Bool)

(declare-fun lt!253203 () SeekEntryResult!5291)

(assert (=> d!83343 (= c!64233 (and (is-Intermediate!5291 lt!253203) (undefined!6103 lt!253203)))))

(declare-fun e!320950 () SeekEntryResult!5291)

(assert (=> d!83343 (= lt!253203 e!320950)))

(declare-fun c!64234 () Bool)

(assert (=> d!83343 (= c!64234 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253202 () (_ BitVec 64))

(assert (=> d!83343 (= lt!253202 (select (arr!16835 a!3118) lt!253086))))

(assert (=> d!83343 (validMask!0 mask!3119)))

(assert (=> d!83343 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253086 (select (arr!16835 a!3118) j!142) a!3118 mask!3119) lt!253203)))

(declare-fun b!557076 () Bool)

(declare-fun e!320952 () SeekEntryResult!5291)

(assert (=> b!557076 (= e!320952 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253086 #b00000000000000000000000000000000 mask!3119) (select (arr!16835 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557077 () Bool)

(assert (=> b!557077 (and (bvsge (index!23393 lt!253203) #b00000000000000000000000000000000) (bvslt (index!23393 lt!253203) (size!17199 a!3118)))))

(declare-fun res!349290 () Bool)

