; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51780 () Bool)

(assert start!51780)

(declare-fun b!566228 () Bool)

(declare-fun res!357353 () Bool)

(declare-fun e!325855 () Bool)

(assert (=> b!566228 (=> (not res!357353) (not e!325855))))

(declare-datatypes ((array!35542 0))(
  ( (array!35543 (arr!17066 (Array (_ BitVec 32) (_ BitVec 64))) (size!17430 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35542)

(declare-datatypes ((List!11199 0))(
  ( (Nil!11196) (Cons!11195 (h!12201 (_ BitVec 64)) (t!17435 List!11199)) )
))
(declare-fun arrayNoDuplicates!0 (array!35542 (_ BitVec 32) List!11199) Bool)

(assert (=> b!566228 (= res!357353 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11196))))

(declare-fun b!566229 () Bool)

(declare-fun e!325854 () Bool)

(assert (=> b!566229 (= e!325854 e!325855)))

(declare-fun res!357355 () Bool)

(assert (=> b!566229 (=> (not res!357355) (not e!325855))))

(declare-datatypes ((SeekEntryResult!5522 0))(
  ( (MissingZero!5522 (index!24315 (_ BitVec 32))) (Found!5522 (index!24316 (_ BitVec 32))) (Intermediate!5522 (undefined!6334 Bool) (index!24317 (_ BitVec 32)) (x!53202 (_ BitVec 32))) (Undefined!5522) (MissingVacant!5522 (index!24318 (_ BitVec 32))) )
))
(declare-fun lt!258094 () SeekEntryResult!5522)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566229 (= res!357355 (or (= lt!258094 (MissingZero!5522 i!1132)) (= lt!258094 (MissingVacant!5522 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35542 (_ BitVec 32)) SeekEntryResult!5522)

(assert (=> b!566229 (= lt!258094 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!566230 () Bool)

(declare-fun res!357354 () Bool)

(assert (=> b!566230 (=> (not res!357354) (not e!325854))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!566230 (= res!357354 (and (= (size!17430 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17430 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17430 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566231 () Bool)

(declare-fun res!357352 () Bool)

(assert (=> b!566231 (=> (not res!357352) (not e!325855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35542 (_ BitVec 32)) Bool)

(assert (=> b!566231 (= res!357352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566232 () Bool)

(declare-fun res!357348 () Bool)

(assert (=> b!566232 (=> (not res!357348) (not e!325854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566232 (= res!357348 (validKeyInArray!0 (select (arr!17066 a!3118) j!142)))))

(declare-fun res!357350 () Bool)

(assert (=> start!51780 (=> (not res!357350) (not e!325854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51780 (= res!357350 (validMask!0 mask!3119))))

(assert (=> start!51780 e!325854))

(assert (=> start!51780 true))

(declare-fun array_inv!12840 (array!35542) Bool)

(assert (=> start!51780 (array_inv!12840 a!3118)))

(declare-fun b!566233 () Bool)

(declare-fun res!357349 () Bool)

(assert (=> b!566233 (=> (not res!357349) (not e!325854))))

(declare-fun arrayContainsKey!0 (array!35542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566233 (= res!357349 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566234 () Bool)

(declare-fun e!325858 () Bool)

(assert (=> b!566234 (= e!325855 e!325858)))

(declare-fun res!357351 () Bool)

(assert (=> b!566234 (=> (not res!357351) (not e!325858))))

(declare-fun lt!258100 () (_ BitVec 64))

(declare-fun lt!258096 () (_ BitVec 32))

(declare-fun lt!258097 () array!35542)

(declare-fun lt!258101 () SeekEntryResult!5522)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35542 (_ BitVec 32)) SeekEntryResult!5522)

(assert (=> b!566234 (= res!357351 (= lt!258101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258096 lt!258100 lt!258097 mask!3119)))))

(declare-fun lt!258099 () (_ BitVec 32))

(assert (=> b!566234 (= lt!258101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258099 (select (arr!17066 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566234 (= lt!258096 (toIndex!0 lt!258100 mask!3119))))

(assert (=> b!566234 (= lt!258100 (select (store (arr!17066 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!566234 (= lt!258099 (toIndex!0 (select (arr!17066 a!3118) j!142) mask!3119))))

(assert (=> b!566234 (= lt!258097 (array!35543 (store (arr!17066 a!3118) i!1132 k!1914) (size!17430 a!3118)))))

(declare-fun b!566235 () Bool)

(declare-fun e!325856 () Bool)

(assert (=> b!566235 (= e!325858 (not e!325856))))

(declare-fun res!357347 () Bool)

(assert (=> b!566235 (=> res!357347 e!325856)))

(assert (=> b!566235 (= res!357347 (or (not (is-Intermediate!5522 lt!258101)) (not (undefined!6334 lt!258101))))))

(declare-fun lt!258098 () SeekEntryResult!5522)

(assert (=> b!566235 (= lt!258098 (Found!5522 j!142))))

(assert (=> b!566235 (= lt!258098 (seekEntryOrOpen!0 (select (arr!17066 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!566235 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17746 0))(
  ( (Unit!17747) )
))
(declare-fun lt!258095 () Unit!17746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17746)

(assert (=> b!566235 (= lt!258095 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566236 () Bool)

(assert (=> b!566236 (= e!325856 (= lt!258098 (seekEntryOrOpen!0 lt!258100 lt!258097 mask!3119)))))

(declare-fun b!566237 () Bool)

(declare-fun res!357356 () Bool)

(assert (=> b!566237 (=> (not res!357356) (not e!325854))))

(assert (=> b!566237 (= res!357356 (validKeyInArray!0 k!1914))))

(assert (= (and start!51780 res!357350) b!566230))

(assert (= (and b!566230 res!357354) b!566232))

(assert (= (and b!566232 res!357348) b!566237))

(assert (= (and b!566237 res!357356) b!566233))

(assert (= (and b!566233 res!357349) b!566229))

(assert (= (and b!566229 res!357355) b!566231))

(assert (= (and b!566231 res!357352) b!566228))

(assert (= (and b!566228 res!357353) b!566234))

(assert (= (and b!566234 res!357351) b!566235))

(assert (= (and b!566235 (not res!357347)) b!566236))

(declare-fun m!544925 () Bool)

(assert (=> b!566229 m!544925))

(declare-fun m!544927 () Bool)

(assert (=> b!566228 m!544927))

(declare-fun m!544929 () Bool)

(assert (=> b!566233 m!544929))

(declare-fun m!544931 () Bool)

(assert (=> b!566235 m!544931))

(assert (=> b!566235 m!544931))

(declare-fun m!544933 () Bool)

(assert (=> b!566235 m!544933))

(declare-fun m!544935 () Bool)

(assert (=> b!566235 m!544935))

(declare-fun m!544937 () Bool)

(assert (=> b!566235 m!544937))

(declare-fun m!544939 () Bool)

(assert (=> start!51780 m!544939))

(declare-fun m!544941 () Bool)

(assert (=> start!51780 m!544941))

(assert (=> b!566234 m!544931))

(declare-fun m!544943 () Bool)

(assert (=> b!566234 m!544943))

(declare-fun m!544945 () Bool)

(assert (=> b!566234 m!544945))

(assert (=> b!566234 m!544931))

(declare-fun m!544947 () Bool)

(assert (=> b!566234 m!544947))

(assert (=> b!566234 m!544931))

(declare-fun m!544949 () Bool)

(assert (=> b!566234 m!544949))

(declare-fun m!544951 () Bool)

(assert (=> b!566234 m!544951))

(declare-fun m!544953 () Bool)

(assert (=> b!566234 m!544953))

(declare-fun m!544955 () Bool)

(assert (=> b!566231 m!544955))

(assert (=> b!566232 m!544931))

(assert (=> b!566232 m!544931))

(declare-fun m!544957 () Bool)

(assert (=> b!566232 m!544957))

(declare-fun m!544959 () Bool)

(assert (=> b!566237 m!544959))

(declare-fun m!544961 () Bool)

(assert (=> b!566236 m!544961))

(push 1)

(assert (not b!566228))

(assert (not b!566235))

(assert (not b!566236))

(assert (not start!51780))

(assert (not b!566233))

(assert (not b!566237))

(assert (not b!566234))

(assert (not b!566232))

(assert (not b!566229))

(assert (not b!566231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83983 () Bool)

(assert (=> d!83983 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51780 d!83983))

(declare-fun d!83991 () Bool)

(assert (=> d!83991 (= (array_inv!12840 a!3118) (bvsge (size!17430 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51780 d!83991))

(declare-fun b!566326 () Bool)

(declare-fun lt!258146 () SeekEntryResult!5522)

(assert (=> b!566326 (and (bvsge (index!24317 lt!258146) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258146) (size!17430 lt!258097)))))

(declare-fun res!357379 () Bool)

(assert (=> b!566326 (= res!357379 (= (select (arr!17066 lt!258097) (index!24317 lt!258146)) lt!258100))))

(declare-fun e!325914 () Bool)

(assert (=> b!566326 (=> res!357379 e!325914)))

(declare-fun e!325913 () Bool)

(assert (=> b!566326 (= e!325913 e!325914)))

(declare-fun b!566327 () Bool)

(declare-fun e!325915 () SeekEntryResult!5522)

(declare-fun e!325911 () SeekEntryResult!5522)

(assert (=> b!566327 (= e!325915 e!325911)))

(declare-fun c!64824 () Bool)

(declare-fun lt!258145 () (_ BitVec 64))

(assert (=> b!566327 (= c!64824 (or (= lt!258145 lt!258100) (= (bvadd lt!258145 lt!258145) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566328 () Bool)

(assert (=> b!566328 (and (bvsge (index!24317 lt!258146) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258146) (size!17430 lt!258097)))))

(assert (=> b!566328 (= e!325914 (= (select (arr!17066 lt!258097) (index!24317 lt!258146)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566329 () Bool)

(assert (=> b!566329 (= e!325911 (Intermediate!5522 false lt!258096 #b00000000000000000000000000000000))))

(declare-fun b!566330 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566330 (= e!325911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258096 #b00000000000000000000000000000000 mask!3119) lt!258100 lt!258097 mask!3119))))

(declare-fun b!566331 () Bool)

(assert (=> b!566331 (= e!325915 (Intermediate!5522 true lt!258096 #b00000000000000000000000000000000))))

(declare-fun b!566332 () Bool)

(assert (=> b!566332 (and (bvsge (index!24317 lt!258146) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258146) (size!17430 lt!258097)))))

(declare-fun res!357377 () Bool)

(assert (=> b!566332 (= res!357377 (= (select (arr!17066 lt!258097) (index!24317 lt!258146)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566332 (=> res!357377 e!325914)))

(declare-fun b!566333 () Bool)

(declare-fun e!325912 () Bool)

(assert (=> b!566333 (= e!325912 e!325913)))

(declare-fun res!357378 () Bool)

(assert (=> b!566333 (= res!357378 (and (is-Intermediate!5522 lt!258146) (not (undefined!6334 lt!258146)) (bvslt (x!53202 lt!258146) #b01111111111111111111111111111110) (bvsge (x!53202 lt!258146) #b00000000000000000000000000000000) (bvsge (x!53202 lt!258146) #b00000000000000000000000000000000)))))

(assert (=> b!566333 (=> (not res!357378) (not e!325913))))

(declare-fun d!83993 () Bool)

(assert (=> d!83993 e!325912))

(declare-fun c!64823 () Bool)

(assert (=> d!83993 (= c!64823 (and (is-Intermediate!5522 lt!258146) (undefined!6334 lt!258146)))))

(assert (=> d!83993 (= lt!258146 e!325915)))

(declare-fun c!64822 () Bool)

(assert (=> d!83993 (= c!64822 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83993 (= lt!258145 (select (arr!17066 lt!258097) lt!258096))))

(assert (=> d!83993 (validMask!0 mask!3119)))

(assert (=> d!83993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258096 lt!258100 lt!258097 mask!3119) lt!258146)))

(declare-fun b!566334 () Bool)

(assert (=> b!566334 (= e!325912 (bvsge (x!53202 lt!258146) #b01111111111111111111111111111110))))

(assert (= (and d!83993 c!64822) b!566331))

(assert (= (and d!83993 (not c!64822)) b!566327))

(assert (= (and b!566327 c!64824) b!566329))

(assert (= (and b!566327 (not c!64824)) b!566330))

(assert (= (and d!83993 c!64823) b!566334))

(assert (= (and d!83993 (not c!64823)) b!566333))

(assert (= (and b!566333 res!357378) b!566326))

(assert (= (and b!566326 (not res!357379)) b!566332))

(assert (= (and b!566332 (not res!357377)) b!566328))

(declare-fun m!545037 () Bool)

(assert (=> d!83993 m!545037))

(assert (=> d!83993 m!544939))

(declare-fun m!545039 () Bool)

(assert (=> b!566330 m!545039))

(assert (=> b!566330 m!545039))

(declare-fun m!545041 () Bool)

(assert (=> b!566330 m!545041))

(declare-fun m!545043 () Bool)

(assert (=> b!566332 m!545043))

(assert (=> b!566328 m!545043))

(assert (=> b!566326 m!545043))

(assert (=> b!566234 d!83993))

(declare-fun b!566335 () Bool)

(declare-fun lt!258148 () SeekEntryResult!5522)

(assert (=> b!566335 (and (bvsge (index!24317 lt!258148) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258148) (size!17430 a!3118)))))

(declare-fun res!357382 () Bool)

(assert (=> b!566335 (= res!357382 (= (select (arr!17066 a!3118) (index!24317 lt!258148)) (select (arr!17066 a!3118) j!142)))))

(declare-fun e!325919 () Bool)

(assert (=> b!566335 (=> res!357382 e!325919)))

(declare-fun e!325918 () Bool)

(assert (=> b!566335 (= e!325918 e!325919)))

(declare-fun b!566336 () Bool)

(declare-fun e!325920 () SeekEntryResult!5522)

(declare-fun e!325916 () SeekEntryResult!5522)

(assert (=> b!566336 (= e!325920 e!325916)))

(declare-fun c!64827 () Bool)

(declare-fun lt!258147 () (_ BitVec 64))

(assert (=> b!566336 (= c!64827 (or (= lt!258147 (select (arr!17066 a!3118) j!142)) (= (bvadd lt!258147 lt!258147) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566337 () Bool)

(assert (=> b!566337 (and (bvsge (index!24317 lt!258148) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258148) (size!17430 a!3118)))))

(assert (=> b!566337 (= e!325919 (= (select (arr!17066 a!3118) (index!24317 lt!258148)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566338 () Bool)

(assert (=> b!566338 (= e!325916 (Intermediate!5522 false lt!258099 #b00000000000000000000000000000000))))

(declare-fun b!566339 () Bool)

(assert (=> b!566339 (= e!325916 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258099 #b00000000000000000000000000000000 mask!3119) (select (arr!17066 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566340 () Bool)

(assert (=> b!566340 (= e!325920 (Intermediate!5522 true lt!258099 #b00000000000000000000000000000000))))

(declare-fun b!566341 () Bool)

(assert (=> b!566341 (and (bvsge (index!24317 lt!258148) #b00000000000000000000000000000000) (bvslt (index!24317 lt!258148) (size!17430 a!3118)))))

(declare-fun res!357380 () Bool)

(assert (=> b!566341 (= res!357380 (= (select (arr!17066 a!3118) (index!24317 lt!258148)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566341 (=> res!357380 e!325919)))

(declare-fun b!566342 () Bool)

(declare-fun e!325917 () Bool)

(assert (=> b!566342 (= e!325917 e!325918)))

(declare-fun res!357381 () Bool)

(assert (=> b!566342 (= res!357381 (and (is-Intermediate!5522 lt!258148) (not (undefined!6334 lt!258148)) (bvslt (x!53202 lt!258148) #b01111111111111111111111111111110) (bvsge (x!53202 lt!258148) #b00000000000000000000000000000000) (bvsge (x!53202 lt!258148) #b00000000000000000000000000000000)))))

(assert (=> b!566342 (=> (not res!357381) (not e!325918))))

(declare-fun d!84015 () Bool)

(assert (=> d!84015 e!325917))

(declare-fun c!64826 () Bool)

(assert (=> d!84015 (= c!64826 (and (is-Intermediate!5522 lt!258148) (undefined!6334 lt!258148)))))

(assert (=> d!84015 (= lt!258148 e!325920)))

(declare-fun c!64825 () Bool)

(assert (=> d!84015 (= c!64825 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84015 (= lt!258147 (select (arr!17066 a!3118) lt!258099))))

(assert (=> d!84015 (validMask!0 mask!3119)))

(assert (=> d!84015 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258099 (select (arr!17066 a!3118) j!142) a!3118 mask!3119) lt!258148)))

(declare-fun b!566343 () Bool)

(assert (=> b!566343 (= e!325917 (bvsge (x!53202 lt!258148) #b01111111111111111111111111111110))))

(assert (= (and d!84015 c!64825) b!566340))

(assert (= (and d!84015 (not c!64825)) b!566336))

(assert (= (and b!566336 c!64827) b!566338))

(assert (= (and b!566336 (not c!64827)) b!566339))

(assert (= (and d!84015 c!64826) b!566343))

(assert (= (and d!84015 (not c!64826)) b!566342))

(assert (= (and b!566342 res!357381) b!566335))

(assert (= (and b!566335 (not res!357382)) b!566341))

(assert (= (and b!566341 (not res!357380)) b!566337))

(declare-fun m!545045 () Bool)

(assert (=> d!84015 m!545045))

(assert (=> d!84015 m!544939))

(declare-fun m!545047 () Bool)

(assert (=> b!566339 m!545047))

(assert (=> b!566339 m!545047))

(assert (=> b!566339 m!544931))

(declare-fun m!545049 () Bool)

(assert (=> b!566339 m!545049))

(declare-fun m!545051 () Bool)

(assert (=> b!566341 m!545051))

(assert (=> b!566337 m!545051))

(assert (=> b!566335 m!545051))

(assert (=> b!566234 d!84015))

(declare-fun d!84017 () Bool)

(declare-fun lt!258154 () (_ BitVec 32))

(declare-fun lt!258153 () (_ BitVec 32))

(assert (=> d!84017 (= lt!258154 (bvmul (bvxor lt!258153 (bvlshr lt!258153 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84017 (= lt!258153 ((_ extract 31 0) (bvand (bvxor lt!258100 (bvlshr lt!258100 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84017 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357389 (let ((h!12202 ((_ extract 31 0) (bvand (bvxor lt!258100 (bvlshr lt!258100 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53204 (bvmul (bvxor h!12202 (bvlshr h!12202 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53204 (bvlshr x!53204 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357389 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357389 #b00000000000000000000000000000000))))))

(assert (=> d!84017 (= (toIndex!0 lt!258100 mask!3119) (bvand (bvxor lt!258154 (bvlshr lt!258154 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566234 d!84017))

(declare-fun d!84021 () Bool)

(declare-fun lt!258156 () (_ BitVec 32))

(declare-fun lt!258155 () (_ BitVec 32))

(assert (=> d!84021 (= lt!258156 (bvmul (bvxor lt!258155 (bvlshr lt!258155 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84021 (= lt!258155 ((_ extract 31 0) (bvand (bvxor (select (arr!17066 a!3118) j!142) (bvlshr (select (arr!17066 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84021 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357389 (let ((h!12202 ((_ extract 31 0) (bvand (bvxor (select (arr!17066 a!3118) j!142) (bvlshr (select (arr!17066 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53204 (bvmul (bvxor h!12202 (bvlshr h!12202 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53204 (bvlshr x!53204 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357389 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357389 #b00000000000000000000000000000000))))))

(assert (=> d!84021 (= (toIndex!0 (select (arr!17066 a!3118) j!142) mask!3119) (bvand (bvxor lt!258156 (bvlshr lt!258156 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566234 d!84021))

(declare-fun d!84023 () Bool)

(declare-fun res!357397 () Bool)

(declare-fun e!325937 () Bool)

(assert (=> d!84023 (=> res!357397 e!325937)))

(assert (=> d!84023 (= res!357397 (= (select (arr!17066 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84023 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!325937)))

(declare-fun b!566363 () Bool)

(declare-fun e!325938 () Bool)

(assert (=> b!566363 (= e!325937 e!325938)))

(declare-fun res!357398 () Bool)

(assert (=> b!566363 (=> (not res!357398) (not e!325938))))

(assert (=> b!566363 (= res!357398 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17430 a!3118)))))

(declare-fun b!566364 () Bool)

(assert (=> b!566364 (= e!325938 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84023 (not res!357397)) b!566363))

(assert (= (and b!566363 res!357398) b!566364))

(declare-fun m!545057 () Bool)

(assert (=> d!84023 m!545057))

(declare-fun m!545059 () Bool)

(assert (=> b!566364 m!545059))

(assert (=> b!566233 d!84023))

(declare-fun b!566381 () Bool)

(declare-fun e!325956 () Bool)

(declare-fun e!325953 () Bool)

(assert (=> b!566381 (= e!325956 e!325953)))

(declare-fun res!357412 () Bool)

(assert (=> b!566381 (=> (not res!357412) (not e!325953))))

(declare-fun e!325955 () Bool)

(assert (=> b!566381 (= res!357412 (not e!325955))))

(declare-fun res!357411 () Bool)

(assert (=> b!566381 (=> (not res!357411) (not e!325955))))

(assert (=> b!566381 (= res!357411 (validKeyInArray!0 (select (arr!17066 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566382 () Bool)

(declare-fun e!325954 () Bool)

(declare-fun call!32484 () Bool)

(assert (=> b!566382 (= e!325954 call!32484)))

(declare-fun b!566383 () Bool)

(declare-fun contains!2869 (List!11199 (_ BitVec 64)) Bool)

(assert (=> b!566383 (= e!325955 (contains!2869 Nil!11196 (select (arr!17066 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84029 () Bool)

(declare-fun res!357413 () Bool)

(assert (=> d!84029 (=> res!357413 e!325956)))

(assert (=> d!84029 (= res!357413 (bvsge #b00000000000000000000000000000000 (size!17430 a!3118)))))

(assert (=> d!84029 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11196) e!325956)))

(declare-fun b!566384 () Bool)

(assert (=> b!566384 (= e!325953 e!325954)))

(declare-fun c!64833 () Bool)

(assert (=> b!566384 (= c!64833 (validKeyInArray!0 (select (arr!17066 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566385 () Bool)

(assert (=> b!566385 (= e!325954 call!32484)))

(declare-fun bm!32481 () Bool)

(assert (=> bm!32481 (= call!32484 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64833 (Cons!11195 (select (arr!17066 a!3118) #b00000000000000000000000000000000) Nil!11196) Nil!11196)))))

(assert (= (and d!84029 (not res!357413)) b!566381))

(assert (= (and b!566381 res!357411) b!566383))

(assert (= (and b!566381 res!357412) b!566384))

(assert (= (and b!566384 c!64833) b!566382))

(assert (= (and b!566384 (not c!64833)) b!566385))

(assert (= (or b!566382 b!566385) bm!32481))

(assert (=> b!566381 m!545057))

(assert (=> b!566381 m!545057))

(declare-fun m!545065 () Bool)

(assert (=> b!566381 m!545065))

(assert (=> b!566383 m!545057))

(assert (=> b!566383 m!545057))

(declare-fun m!545067 () Bool)

(assert (=> b!566383 m!545067))

(assert (=> b!566384 m!545057))

(assert (=> b!566384 m!545057))

(assert (=> b!566384 m!545065))

(assert (=> bm!32481 m!545057))

(declare-fun m!545069 () Bool)

(assert (=> bm!32481 m!545069))

(assert (=> b!566228 d!84029))

(declare-fun d!84033 () Bool)

(declare-fun lt!258191 () SeekEntryResult!5522)

(assert (=> d!84033 (and (or (is-Undefined!5522 lt!258191) (not (is-Found!5522 lt!258191)) (and (bvsge (index!24316 lt!258191) #b00000000000000000000000000000000) (bvslt (index!24316 lt!258191) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258191) (is-Found!5522 lt!258191) (not (is-MissingZero!5522 lt!258191)) (and (bvsge (index!24315 lt!258191) #b00000000000000000000000000000000) (bvslt (index!24315 lt!258191) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258191) (is-Found!5522 lt!258191) (is-MissingZero!5522 lt!258191) (not (is-MissingVacant!5522 lt!258191)) (and (bvsge (index!24318 lt!258191) #b00000000000000000000000000000000) (bvslt (index!24318 lt!258191) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258191) (ite (is-Found!5522 lt!258191) (= (select (arr!17066 a!3118) (index!24316 lt!258191)) (select (arr!17066 a!3118) j!142)) (ite (is-MissingZero!5522 lt!258191) (= (select (arr!17066 a!3118) (index!24315 lt!258191)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5522 lt!258191) (= (select (arr!17066 a!3118) (index!24318 lt!258191)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!325997 () SeekEntryResult!5522)

(assert (=> d!84033 (= lt!258191 e!325997)))

(declare-fun c!64859 () Bool)

(declare-fun lt!258192 () SeekEntryResult!5522)

(assert (=> d!84033 (= c!64859 (and (is-Intermediate!5522 lt!258192) (undefined!6334 lt!258192)))))

(assert (=> d!84033 (= lt!258192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17066 a!3118) j!142) mask!3119) (select (arr!17066 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84033 (validMask!0 mask!3119)))

(assert (=> d!84033 (= (seekEntryOrOpen!0 (select (arr!17066 a!3118) j!142) a!3118 mask!3119) lt!258191)))

(declare-fun b!566452 () Bool)

(declare-fun e!325995 () SeekEntryResult!5522)

(assert (=> b!566452 (= e!325997 e!325995)))

(declare-fun lt!258193 () (_ BitVec 64))

(assert (=> b!566452 (= lt!258193 (select (arr!17066 a!3118) (index!24317 lt!258192)))))

(declare-fun c!64860 () Bool)

(assert (=> b!566452 (= c!64860 (= lt!258193 (select (arr!17066 a!3118) j!142)))))

(declare-fun b!566453 () Bool)

(assert (=> b!566453 (= e!325995 (Found!5522 (index!24317 lt!258192)))))

(declare-fun b!566454 () Bool)

(declare-fun e!325996 () SeekEntryResult!5522)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35542 (_ BitVec 32)) SeekEntryResult!5522)

(assert (=> b!566454 (= e!325996 (seekKeyOrZeroReturnVacant!0 (x!53202 lt!258192) (index!24317 lt!258192) (index!24317 lt!258192) (select (arr!17066 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566455 () Bool)

(assert (=> b!566455 (= e!325996 (MissingZero!5522 (index!24317 lt!258192)))))

(declare-fun b!566456 () Bool)

(assert (=> b!566456 (= e!325997 Undefined!5522)))

(declare-fun b!566457 () Bool)

(declare-fun c!64858 () Bool)

(assert (=> b!566457 (= c!64858 (= lt!258193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566457 (= e!325995 e!325996)))

(assert (= (and d!84033 c!64859) b!566456))

(assert (= (and d!84033 (not c!64859)) b!566452))

(assert (= (and b!566452 c!64860) b!566453))

(assert (= (and b!566452 (not c!64860)) b!566457))

(assert (= (and b!566457 c!64858) b!566455))

(assert (= (and b!566457 (not c!64858)) b!566454))

(assert (=> d!84033 m!544943))

(assert (=> d!84033 m!544931))

(declare-fun m!545109 () Bool)

(assert (=> d!84033 m!545109))

(assert (=> d!84033 m!544939))

(declare-fun m!545111 () Bool)

(assert (=> d!84033 m!545111))

(declare-fun m!545113 () Bool)

(assert (=> d!84033 m!545113))

(assert (=> d!84033 m!544931))

(assert (=> d!84033 m!544943))

(declare-fun m!545115 () Bool)

(assert (=> d!84033 m!545115))

(declare-fun m!545117 () Bool)

(assert (=> b!566452 m!545117))

(assert (=> b!566454 m!544931))

(declare-fun m!545119 () Bool)

(assert (=> b!566454 m!545119))

(assert (=> b!566235 d!84033))

(declare-fun b!566502 () Bool)

(declare-fun e!326025 () Bool)

(declare-fun e!326026 () Bool)

(assert (=> b!566502 (= e!326025 e!326026)))

(declare-fun lt!258209 () (_ BitVec 64))

(assert (=> b!566502 (= lt!258209 (select (arr!17066 a!3118) j!142))))

(declare-fun lt!258208 () Unit!17746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35542 (_ BitVec 64) (_ BitVec 32)) Unit!17746)

(assert (=> b!566502 (= lt!258208 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258209 j!142))))

(assert (=> b!566502 (arrayContainsKey!0 a!3118 lt!258209 #b00000000000000000000000000000000)))

(declare-fun lt!258210 () Unit!17746)

(assert (=> b!566502 (= lt!258210 lt!258208)))

(declare-fun res!357450 () Bool)

(assert (=> b!566502 (= res!357450 (= (seekEntryOrOpen!0 (select (arr!17066 a!3118) j!142) a!3118 mask!3119) (Found!5522 j!142)))))

(assert (=> b!566502 (=> (not res!357450) (not e!326026))))

(declare-fun bm!32487 () Bool)

(declare-fun call!32490 () Bool)

(assert (=> bm!32487 (= call!32490 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566503 () Bool)

(assert (=> b!566503 (= e!326025 call!32490)))

(declare-fun d!84045 () Bool)

(declare-fun res!357451 () Bool)

(declare-fun e!326024 () Bool)

(assert (=> d!84045 (=> res!357451 e!326024)))

(assert (=> d!84045 (= res!357451 (bvsge j!142 (size!17430 a!3118)))))

(assert (=> d!84045 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326024)))

(declare-fun b!566504 () Bool)

(assert (=> b!566504 (= e!326024 e!326025)))

(declare-fun c!64875 () Bool)

(assert (=> b!566504 (= c!64875 (validKeyInArray!0 (select (arr!17066 a!3118) j!142)))))

(declare-fun b!566505 () Bool)

(assert (=> b!566505 (= e!326026 call!32490)))

(assert (= (and d!84045 (not res!357451)) b!566504))

(assert (= (and b!566504 c!64875) b!566502))

(assert (= (and b!566504 (not c!64875)) b!566503))

(assert (= (and b!566502 res!357450) b!566505))

(assert (= (or b!566505 b!566503) bm!32487))

(assert (=> b!566502 m!544931))

(declare-fun m!545137 () Bool)

(assert (=> b!566502 m!545137))

(declare-fun m!545139 () Bool)

(assert (=> b!566502 m!545139))

(assert (=> b!566502 m!544931))

(assert (=> b!566502 m!544933))

(declare-fun m!545141 () Bool)

(assert (=> bm!32487 m!545141))

(assert (=> b!566504 m!544931))

(assert (=> b!566504 m!544931))

(assert (=> b!566504 m!544957))

(assert (=> b!566235 d!84045))

(declare-fun d!84051 () Bool)

(assert (=> d!84051 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258227 () Unit!17746)

(declare-fun choose!38 (array!35542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17746)

(assert (=> d!84051 (= lt!258227 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84051 (validMask!0 mask!3119)))

(assert (=> d!84051 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258227)))

(declare-fun bs!17593 () Bool)

(assert (= bs!17593 d!84051))

(assert (=> bs!17593 m!544935))

(declare-fun m!545161 () Bool)

(assert (=> bs!17593 m!545161))

(assert (=> bs!17593 m!544939))

(assert (=> b!566235 d!84051))

(declare-fun d!84061 () Bool)

(declare-fun lt!258228 () SeekEntryResult!5522)

(assert (=> d!84061 (and (or (is-Undefined!5522 lt!258228) (not (is-Found!5522 lt!258228)) (and (bvsge (index!24316 lt!258228) #b00000000000000000000000000000000) (bvslt (index!24316 lt!258228) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258228) (is-Found!5522 lt!258228) (not (is-MissingZero!5522 lt!258228)) (and (bvsge (index!24315 lt!258228) #b00000000000000000000000000000000) (bvslt (index!24315 lt!258228) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258228) (is-Found!5522 lt!258228) (is-MissingZero!5522 lt!258228) (not (is-MissingVacant!5522 lt!258228)) (and (bvsge (index!24318 lt!258228) #b00000000000000000000000000000000) (bvslt (index!24318 lt!258228) (size!17430 a!3118)))) (or (is-Undefined!5522 lt!258228) (ite (is-Found!5522 lt!258228) (= (select (arr!17066 a!3118) (index!24316 lt!258228)) k!1914) (ite (is-MissingZero!5522 lt!258228) (= (select (arr!17066 a!3118) (index!24315 lt!258228)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5522 lt!258228) (= (select (arr!17066 a!3118) (index!24318 lt!258228)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326035 () SeekEntryResult!5522)

(assert (=> d!84061 (= lt!258228 e!326035)))

(declare-fun c!64881 () Bool)

(declare-fun lt!258229 () SeekEntryResult!5522)

(assert (=> d!84061 (= c!64881 (and (is-Intermediate!5522 lt!258229) (undefined!6334 lt!258229)))))

(assert (=> d!84061 (= lt!258229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84061 (validMask!0 mask!3119)))

(assert (=> d!84061 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258228)))

(declare-fun b!566516 () Bool)

(declare-fun e!326033 () SeekEntryResult!5522)

(assert (=> b!566516 (= e!326035 e!326033)))

(declare-fun lt!258230 () (_ BitVec 64))

(assert (=> b!566516 (= lt!258230 (select (arr!17066 a!3118) (index!24317 lt!258229)))))

(declare-fun c!64882 () Bool)

(assert (=> b!566516 (= c!64882 (= lt!258230 k!1914))))

(declare-fun b!566517 () Bool)

(assert (=> b!566517 (= e!326033 (Found!5522 (index!24317 lt!258229)))))

(declare-fun b!566518 () Bool)

(declare-fun e!326034 () SeekEntryResult!5522)

(assert (=> b!566518 (= e!326034 (seekKeyOrZeroReturnVacant!0 (x!53202 lt!258229) (index!24317 lt!258229) (index!24317 lt!258229) k!1914 a!3118 mask!3119))))

(declare-fun b!566519 () Bool)

(assert (=> b!566519 (= e!326034 (MissingZero!5522 (index!24317 lt!258229)))))

(declare-fun b!566520 () Bool)

(assert (=> b!566520 (= e!326035 Undefined!5522)))

(declare-fun b!566521 () Bool)

(declare-fun c!64880 () Bool)

(assert (=> b!566521 (= c!64880 (= lt!258230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566521 (= e!326033 e!326034)))

(assert (= (and d!84061 c!64881) b!566520))

(assert (= (and d!84061 (not c!64881)) b!566516))

(assert (= (and b!566516 c!64882) b!566517))

(assert (= (and b!566516 (not c!64882)) b!566521))

(assert (= (and b!566521 c!64880) b!566519))

(assert (= (and b!566521 (not c!64880)) b!566518))

(declare-fun m!545163 () Bool)

(assert (=> d!84061 m!545163))

(declare-fun m!545165 () Bool)

(assert (=> d!84061 m!545165))

(assert (=> d!84061 m!544939))

(declare-fun m!545167 () Bool)

(assert (=> d!84061 m!545167))

(declare-fun m!545169 () Bool)

(assert (=> d!84061 m!545169))

(assert (=> d!84061 m!545163))

(declare-fun m!545171 () Bool)

(assert (=> d!84061 m!545171))

(declare-fun m!545173 () Bool)

(assert (=> b!566516 m!545173))

(declare-fun m!545175 () Bool)

(assert (=> b!566518 m!545175))

(assert (=> b!566229 d!84061))

(declare-fun b!566522 () Bool)

(declare-fun e!326037 () Bool)

(declare-fun e!326038 () Bool)

(assert (=> b!566522 (= e!326037 e!326038)))

(declare-fun lt!258232 () (_ BitVec 64))

(assert (=> b!566522 (= lt!258232 (select (arr!17066 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258231 () Unit!17746)

(assert (=> b!566522 (= lt!258231 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258232 #b00000000000000000000000000000000))))

(assert (=> b!566522 (arrayContainsKey!0 a!3118 lt!258232 #b00000000000000000000000000000000)))

(declare-fun lt!258233 () Unit!17746)

(assert (=> b!566522 (= lt!258233 lt!258231)))

(declare-fun res!357454 () Bool)

(assert (=> b!566522 (= res!357454 (= (seekEntryOrOpen!0 (select (arr!17066 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5522 #b00000000000000000000000000000000)))))

(assert (=> b!566522 (=> (not res!357454) (not e!326038))))

(declare-fun bm!32489 () Bool)

(declare-fun call!32492 () Bool)

(assert (=> bm!32489 (= call!32492 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566523 () Bool)

(assert (=> b!566523 (= e!326037 call!32492)))

(declare-fun d!84063 () Bool)

(declare-fun res!357455 () Bool)

(declare-fun e!326036 () Bool)

(assert (=> d!84063 (=> res!357455 e!326036)))

(assert (=> d!84063 (= res!357455 (bvsge #b00000000000000000000000000000000 (size!17430 a!3118)))))

(assert (=> d!84063 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326036)))

(declare-fun b!566524 () Bool)

(assert (=> b!566524 (= e!326036 e!326037)))

