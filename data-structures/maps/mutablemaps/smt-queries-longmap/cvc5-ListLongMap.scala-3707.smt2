; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50936 () Bool)

(assert start!50936)

(declare-fun b!556745 () Bool)

(declare-fun res!349130 () Bool)

(declare-fun e!320751 () Bool)

(assert (=> b!556745 (=> (not res!349130) (not e!320751))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556745 (= res!349130 (validKeyInArray!0 k!1914))))

(declare-fun e!320750 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!556746 () Bool)

(declare-datatypes ((array!35058 0))(
  ( (array!35059 (arr!16833 (Array (_ BitVec 32) (_ BitVec 64))) (size!17197 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35058)

(declare-datatypes ((SeekEntryResult!5289 0))(
  ( (MissingZero!5289 (index!23383 (_ BitVec 32))) (Found!5289 (index!23384 (_ BitVec 32))) (Intermediate!5289 (undefined!6101 Bool) (index!23385 (_ BitVec 32)) (x!52308 (_ BitVec 32))) (Undefined!5289) (MissingVacant!5289 (index!23386 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35058 (_ BitVec 32)) SeekEntryResult!5289)

(assert (=> b!556746 (= e!320750 (= (seekEntryOrOpen!0 (select (arr!16833 a!3118) j!142) a!3118 mask!3119) (Found!5289 j!142)))))

(declare-fun b!556748 () Bool)

(declare-fun res!349132 () Bool)

(declare-fun e!320749 () Bool)

(assert (=> b!556748 (=> (not res!349132) (not e!320749))))

(declare-datatypes ((List!10966 0))(
  ( (Nil!10963) (Cons!10962 (h!11950 (_ BitVec 64)) (t!17202 List!10966)) )
))
(declare-fun arrayNoDuplicates!0 (array!35058 (_ BitVec 32) List!10966) Bool)

(assert (=> b!556748 (= res!349132 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10963))))

(declare-fun b!556749 () Bool)

(assert (=> b!556749 (= e!320751 e!320749)))

(declare-fun res!349129 () Bool)

(assert (=> b!556749 (=> (not res!349129) (not e!320749))))

(declare-fun lt!253055 () SeekEntryResult!5289)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556749 (= res!349129 (or (= lt!253055 (MissingZero!5289 i!1132)) (= lt!253055 (MissingVacant!5289 i!1132))))))

(assert (=> b!556749 (= lt!253055 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556750 () Bool)

(declare-fun res!349127 () Bool)

(assert (=> b!556750 (=> (not res!349127) (not e!320751))))

(assert (=> b!556750 (= res!349127 (validKeyInArray!0 (select (arr!16833 a!3118) j!142)))))

(declare-fun lt!253058 () SeekEntryResult!5289)

(declare-fun e!320748 () Bool)

(declare-fun b!556751 () Bool)

(assert (=> b!556751 (= e!320748 (not (or (not (is-Intermediate!5289 lt!253058)) (undefined!6101 lt!253058) (= (select (arr!16833 a!3118) (index!23385 lt!253058)) (select (arr!16833 a!3118) j!142)) (= (select (arr!16833 a!3118) (index!23385 lt!253058)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23385 lt!253058) #b00000000000000000000000000000000) (bvsge (index!23385 lt!253058) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52308 lt!253058) #b01111111111111111111111111111110) (bvsge (x!52308 lt!253058) #b00000000000000000000000000000000)))))))

(assert (=> b!556751 e!320750))

(declare-fun res!349128 () Bool)

(assert (=> b!556751 (=> (not res!349128) (not e!320750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35058 (_ BitVec 32)) Bool)

(assert (=> b!556751 (= res!349128 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17352 0))(
  ( (Unit!17353) )
))
(declare-fun lt!253054 () Unit!17352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17352)

(assert (=> b!556751 (= lt!253054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556752 () Bool)

(declare-fun res!349125 () Bool)

(assert (=> b!556752 (=> (not res!349125) (not e!320751))))

(declare-fun arrayContainsKey!0 (array!35058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556752 (= res!349125 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556753 () Bool)

(declare-fun res!349133 () Bool)

(assert (=> b!556753 (=> (not res!349133) (not e!320751))))

(assert (=> b!556753 (= res!349133 (and (= (size!17197 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17197 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17197 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556754 () Bool)

(assert (=> b!556754 (= e!320749 e!320748)))

(declare-fun res!349126 () Bool)

(assert (=> b!556754 (=> (not res!349126) (not e!320748))))

(declare-fun lt!253056 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35058 (_ BitVec 32)) SeekEntryResult!5289)

(assert (=> b!556754 (= res!349126 (= lt!253058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253056 (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)) mask!3119)))))

(declare-fun lt!253057 () (_ BitVec 32))

(assert (=> b!556754 (= lt!253058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253057 (select (arr!16833 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556754 (= lt!253056 (toIndex!0 (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556754 (= lt!253057 (toIndex!0 (select (arr!16833 a!3118) j!142) mask!3119))))

(declare-fun b!556747 () Bool)

(declare-fun res!349131 () Bool)

(assert (=> b!556747 (=> (not res!349131) (not e!320749))))

(assert (=> b!556747 (= res!349131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!349124 () Bool)

(assert (=> start!50936 (=> (not res!349124) (not e!320751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50936 (= res!349124 (validMask!0 mask!3119))))

(assert (=> start!50936 e!320751))

(assert (=> start!50936 true))

(declare-fun array_inv!12607 (array!35058) Bool)

(assert (=> start!50936 (array_inv!12607 a!3118)))

(assert (= (and start!50936 res!349124) b!556753))

(assert (= (and b!556753 res!349133) b!556750))

(assert (= (and b!556750 res!349127) b!556745))

(assert (= (and b!556745 res!349130) b!556752))

(assert (= (and b!556752 res!349125) b!556749))

(assert (= (and b!556749 res!349129) b!556747))

(assert (= (and b!556747 res!349131) b!556748))

(assert (= (and b!556748 res!349132) b!556754))

(assert (= (and b!556754 res!349126) b!556751))

(assert (= (and b!556751 res!349128) b!556746))

(declare-fun m!534739 () Bool)

(assert (=> b!556747 m!534739))

(declare-fun m!534741 () Bool)

(assert (=> b!556754 m!534741))

(declare-fun m!534743 () Bool)

(assert (=> b!556754 m!534743))

(assert (=> b!556754 m!534741))

(declare-fun m!534745 () Bool)

(assert (=> b!556754 m!534745))

(assert (=> b!556754 m!534741))

(declare-fun m!534747 () Bool)

(assert (=> b!556754 m!534747))

(declare-fun m!534749 () Bool)

(assert (=> b!556754 m!534749))

(assert (=> b!556754 m!534747))

(declare-fun m!534751 () Bool)

(assert (=> b!556754 m!534751))

(assert (=> b!556754 m!534747))

(declare-fun m!534753 () Bool)

(assert (=> b!556754 m!534753))

(declare-fun m!534755 () Bool)

(assert (=> b!556745 m!534755))

(declare-fun m!534757 () Bool)

(assert (=> b!556752 m!534757))

(declare-fun m!534759 () Bool)

(assert (=> b!556751 m!534759))

(assert (=> b!556751 m!534741))

(declare-fun m!534761 () Bool)

(assert (=> b!556751 m!534761))

(declare-fun m!534763 () Bool)

(assert (=> b!556751 m!534763))

(assert (=> b!556746 m!534741))

(assert (=> b!556746 m!534741))

(declare-fun m!534765 () Bool)

(assert (=> b!556746 m!534765))

(declare-fun m!534767 () Bool)

(assert (=> start!50936 m!534767))

(declare-fun m!534769 () Bool)

(assert (=> start!50936 m!534769))

(declare-fun m!534771 () Bool)

(assert (=> b!556748 m!534771))

(assert (=> b!556750 m!534741))

(assert (=> b!556750 m!534741))

(declare-fun m!534773 () Bool)

(assert (=> b!556750 m!534773))

(declare-fun m!534775 () Bool)

(assert (=> b!556749 m!534775))

(push 1)

(assert (not b!556751))

(assert (not start!50936))

(assert (not b!556746))

(assert (not b!556750))

(assert (not b!556745))

(assert (not b!556754))

(assert (not b!556749))

(assert (not b!556752))

(assert (not b!556748))

(assert (not b!556747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!556881 () Bool)

(declare-fun e!320826 () SeekEntryResult!5289)

(declare-fun lt!253114 () SeekEntryResult!5289)

(assert (=> b!556881 (= e!320826 (MissingZero!5289 (index!23385 lt!253114)))))

(declare-fun b!556882 () Bool)

(declare-fun e!320825 () SeekEntryResult!5289)

(assert (=> b!556882 (= e!320825 (Found!5289 (index!23385 lt!253114)))))

(declare-fun b!556883 () Bool)

(declare-fun c!64170 () Bool)

(declare-fun lt!253112 () (_ BitVec 64))

(assert (=> b!556883 (= c!64170 (= lt!253112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556883 (= e!320825 e!320826)))

(declare-fun b!556884 () Bool)

(declare-fun e!320824 () SeekEntryResult!5289)

(assert (=> b!556884 (= e!320824 Undefined!5289)))

(declare-fun d!83273 () Bool)

(declare-fun lt!253113 () SeekEntryResult!5289)

(assert (=> d!83273 (and (or (is-Undefined!5289 lt!253113) (not (is-Found!5289 lt!253113)) (and (bvsge (index!23384 lt!253113) #b00000000000000000000000000000000) (bvslt (index!23384 lt!253113) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253113) (is-Found!5289 lt!253113) (not (is-MissingZero!5289 lt!253113)) (and (bvsge (index!23383 lt!253113) #b00000000000000000000000000000000) (bvslt (index!23383 lt!253113) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253113) (is-Found!5289 lt!253113) (is-MissingZero!5289 lt!253113) (not (is-MissingVacant!5289 lt!253113)) (and (bvsge (index!23386 lt!253113) #b00000000000000000000000000000000) (bvslt (index!23386 lt!253113) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253113) (ite (is-Found!5289 lt!253113) (= (select (arr!16833 a!3118) (index!23384 lt!253113)) (select (arr!16833 a!3118) j!142)) (ite (is-MissingZero!5289 lt!253113) (= (select (arr!16833 a!3118) (index!23383 lt!253113)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5289 lt!253113) (= (select (arr!16833 a!3118) (index!23386 lt!253113)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83273 (= lt!253113 e!320824)))

(declare-fun c!64171 () Bool)

(assert (=> d!83273 (= c!64171 (and (is-Intermediate!5289 lt!253114) (undefined!6101 lt!253114)))))

(assert (=> d!83273 (= lt!253114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16833 a!3118) j!142) mask!3119) (select (arr!16833 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83273 (validMask!0 mask!3119)))

(assert (=> d!83273 (= (seekEntryOrOpen!0 (select (arr!16833 a!3118) j!142) a!3118 mask!3119) lt!253113)))

(declare-fun b!556885 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35058 (_ BitVec 32)) SeekEntryResult!5289)

(assert (=> b!556885 (= e!320826 (seekKeyOrZeroReturnVacant!0 (x!52308 lt!253114) (index!23385 lt!253114) (index!23385 lt!253114) (select (arr!16833 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556886 () Bool)

(assert (=> b!556886 (= e!320824 e!320825)))

(assert (=> b!556886 (= lt!253112 (select (arr!16833 a!3118) (index!23385 lt!253114)))))

(declare-fun c!64172 () Bool)

(assert (=> b!556886 (= c!64172 (= lt!253112 (select (arr!16833 a!3118) j!142)))))

(assert (= (and d!83273 c!64171) b!556884))

(assert (= (and d!83273 (not c!64171)) b!556886))

(assert (= (and b!556886 c!64172) b!556882))

(assert (= (and b!556886 (not c!64172)) b!556883))

(assert (= (and b!556883 c!64170) b!556881))

(assert (= (and b!556883 (not c!64170)) b!556885))

(assert (=> d!83273 m!534741))

(assert (=> d!83273 m!534743))

(declare-fun m!534885 () Bool)

(assert (=> d!83273 m!534885))

(assert (=> d!83273 m!534767))

(assert (=> d!83273 m!534743))

(assert (=> d!83273 m!534741))

(declare-fun m!534887 () Bool)

(assert (=> d!83273 m!534887))

(declare-fun m!534889 () Bool)

(assert (=> d!83273 m!534889))

(declare-fun m!534891 () Bool)

(assert (=> d!83273 m!534891))

(assert (=> b!556885 m!534741))

(declare-fun m!534893 () Bool)

(assert (=> b!556885 m!534893))

(declare-fun m!534895 () Bool)

(assert (=> b!556886 m!534895))

(assert (=> b!556746 d!83273))

(declare-fun d!83283 () Bool)

(declare-fun res!349227 () Bool)

(declare-fun e!320837 () Bool)

(assert (=> d!83283 (=> res!349227 e!320837)))

(assert (=> d!83283 (= res!349227 (= (select (arr!16833 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83283 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!320837)))

(declare-fun b!556899 () Bool)

(declare-fun e!320838 () Bool)

(assert (=> b!556899 (= e!320837 e!320838)))

(declare-fun res!349228 () Bool)

(assert (=> b!556899 (=> (not res!349228) (not e!320838))))

(assert (=> b!556899 (= res!349228 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17197 a!3118)))))

(declare-fun b!556900 () Bool)

(assert (=> b!556900 (= e!320838 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83283 (not res!349227)) b!556899))

(assert (= (and b!556899 res!349228) b!556900))

(declare-fun m!534897 () Bool)

(assert (=> d!83283 m!534897))

(declare-fun m!534899 () Bool)

(assert (=> b!556900 m!534899))

(assert (=> b!556752 d!83283))

(declare-fun b!556923 () Bool)

(declare-fun e!320858 () Bool)

(declare-fun e!320857 () Bool)

(assert (=> b!556923 (= e!320858 e!320857)))

(declare-fun lt!253146 () (_ BitVec 64))

(assert (=> b!556923 (= lt!253146 (select (arr!16833 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253144 () Unit!17352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35058 (_ BitVec 64) (_ BitVec 32)) Unit!17352)

(assert (=> b!556923 (= lt!253144 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253146 #b00000000000000000000000000000000))))

(assert (=> b!556923 (arrayContainsKey!0 a!3118 lt!253146 #b00000000000000000000000000000000)))

(declare-fun lt!253145 () Unit!17352)

(assert (=> b!556923 (= lt!253145 lt!253144)))

(declare-fun res!349244 () Bool)

(assert (=> b!556923 (= res!349244 (= (seekEntryOrOpen!0 (select (arr!16833 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5289 #b00000000000000000000000000000000)))))

(assert (=> b!556923 (=> (not res!349244) (not e!320857))))

(declare-fun b!556924 () Bool)

(declare-fun e!320859 () Bool)

(assert (=> b!556924 (= e!320859 e!320858)))

(declare-fun c!64179 () Bool)

(assert (=> b!556924 (= c!64179 (validKeyInArray!0 (select (arr!16833 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32355 () Bool)

(declare-fun call!32358 () Bool)

(assert (=> bm!32355 (= call!32358 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556926 () Bool)

(assert (=> b!556926 (= e!320857 call!32358)))

(declare-fun b!556925 () Bool)

(assert (=> b!556925 (= e!320858 call!32358)))

(declare-fun d!83289 () Bool)

(declare-fun res!349243 () Bool)

(assert (=> d!83289 (=> res!349243 e!320859)))

(assert (=> d!83289 (= res!349243 (bvsge #b00000000000000000000000000000000 (size!17197 a!3118)))))

(assert (=> d!83289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320859)))

(assert (= (and d!83289 (not res!349243)) b!556924))

(assert (= (and b!556924 c!64179) b!556923))

(assert (= (and b!556924 (not c!64179)) b!556925))

(assert (= (and b!556923 res!349244) b!556926))

(assert (= (or b!556926 b!556925) bm!32355))

(assert (=> b!556923 m!534897))

(declare-fun m!534921 () Bool)

(assert (=> b!556923 m!534921))

(declare-fun m!534923 () Bool)

(assert (=> b!556923 m!534923))

(assert (=> b!556923 m!534897))

(declare-fun m!534925 () Bool)

(assert (=> b!556923 m!534925))

(assert (=> b!556924 m!534897))

(assert (=> b!556924 m!534897))

(declare-fun m!534927 () Bool)

(assert (=> b!556924 m!534927))

(declare-fun m!534929 () Bool)

(assert (=> bm!32355 m!534929))

(assert (=> b!556747 d!83289))

(declare-fun b!556937 () Bool)

(declare-fun e!320869 () Bool)

(declare-fun contains!2852 (List!10966 (_ BitVec 64)) Bool)

(assert (=> b!556937 (= e!320869 (contains!2852 Nil!10963 (select (arr!16833 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32358 () Bool)

(declare-fun call!32361 () Bool)

(declare-fun c!64182 () Bool)

(assert (=> bm!32358 (= call!32361 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64182 (Cons!10962 (select (arr!16833 a!3118) #b00000000000000000000000000000000) Nil!10963) Nil!10963)))))

(declare-fun b!556938 () Bool)

(declare-fun e!320868 () Bool)

(declare-fun e!320870 () Bool)

(assert (=> b!556938 (= e!320868 e!320870)))

(assert (=> b!556938 (= c!64182 (validKeyInArray!0 (select (arr!16833 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556939 () Bool)

(assert (=> b!556939 (= e!320870 call!32361)))

(declare-fun b!556940 () Bool)

(assert (=> b!556940 (= e!320870 call!32361)))

(declare-fun d!83303 () Bool)

(declare-fun res!349251 () Bool)

(declare-fun e!320871 () Bool)

(assert (=> d!83303 (=> res!349251 e!320871)))

(assert (=> d!83303 (= res!349251 (bvsge #b00000000000000000000000000000000 (size!17197 a!3118)))))

(assert (=> d!83303 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10963) e!320871)))

(declare-fun b!556941 () Bool)

(assert (=> b!556941 (= e!320871 e!320868)))

(declare-fun res!349252 () Bool)

(assert (=> b!556941 (=> (not res!349252) (not e!320868))))

(assert (=> b!556941 (= res!349252 (not e!320869))))

(declare-fun res!349253 () Bool)

(assert (=> b!556941 (=> (not res!349253) (not e!320869))))

(assert (=> b!556941 (= res!349253 (validKeyInArray!0 (select (arr!16833 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83303 (not res!349251)) b!556941))

(assert (= (and b!556941 res!349253) b!556937))

(assert (= (and b!556941 res!349252) b!556938))

(assert (= (and b!556938 c!64182) b!556940))

(assert (= (and b!556938 (not c!64182)) b!556939))

(assert (= (or b!556940 b!556939) bm!32358))

(assert (=> b!556937 m!534897))

(assert (=> b!556937 m!534897))

(declare-fun m!534931 () Bool)

(assert (=> b!556937 m!534931))

(assert (=> bm!32358 m!534897))

(declare-fun m!534933 () Bool)

(assert (=> bm!32358 m!534933))

(assert (=> b!556938 m!534897))

(assert (=> b!556938 m!534897))

(assert (=> b!556938 m!534927))

(assert (=> b!556941 m!534897))

(assert (=> b!556941 m!534897))

(assert (=> b!556941 m!534927))

(assert (=> b!556748 d!83303))

(declare-fun d!83305 () Bool)

(declare-fun e!320901 () Bool)

(assert (=> d!83305 e!320901))

(declare-fun c!64206 () Bool)

(declare-fun lt!253170 () SeekEntryResult!5289)

(assert (=> d!83305 (= c!64206 (and (is-Intermediate!5289 lt!253170) (undefined!6101 lt!253170)))))

(declare-fun e!320904 () SeekEntryResult!5289)

(assert (=> d!83305 (= lt!253170 e!320904)))

(declare-fun c!64205 () Bool)

(assert (=> d!83305 (= c!64205 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253169 () (_ BitVec 64))

(assert (=> d!83305 (= lt!253169 (select (arr!16833 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118))) lt!253056))))

(assert (=> d!83305 (validMask!0 mask!3119)))

(assert (=> d!83305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253056 (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)) mask!3119) lt!253170)))

(declare-fun b!556994 () Bool)

(declare-fun e!320902 () SeekEntryResult!5289)

(assert (=> b!556994 (= e!320902 (Intermediate!5289 false lt!253056 #b00000000000000000000000000000000))))

(declare-fun b!556995 () Bool)

(assert (=> b!556995 (and (bvsge (index!23385 lt!253170) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253170) (size!17197 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)))))))

(declare-fun res!349262 () Bool)

(assert (=> b!556995 (= res!349262 (= (select (arr!16833 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118))) (index!23385 lt!253170)) (select (store (arr!16833 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!320900 () Bool)

(assert (=> b!556995 (=> res!349262 e!320900)))

(declare-fun e!320903 () Bool)

(assert (=> b!556995 (= e!320903 e!320900)))

(declare-fun b!556996 () Bool)

(assert (=> b!556996 (= e!320901 e!320903)))

(declare-fun res!349263 () Bool)

(assert (=> b!556996 (= res!349263 (and (is-Intermediate!5289 lt!253170) (not (undefined!6101 lt!253170)) (bvslt (x!52308 lt!253170) #b01111111111111111111111111111110) (bvsge (x!52308 lt!253170) #b00000000000000000000000000000000) (bvsge (x!52308 lt!253170) #b00000000000000000000000000000000)))))

(assert (=> b!556996 (=> (not res!349263) (not e!320903))))

(declare-fun b!556997 () Bool)

(assert (=> b!556997 (= e!320904 (Intermediate!5289 true lt!253056 #b00000000000000000000000000000000))))

(declare-fun b!556998 () Bool)

(assert (=> b!556998 (= e!320901 (bvsge (x!52308 lt!253170) #b01111111111111111111111111111110))))

(declare-fun b!556999 () Bool)

(assert (=> b!556999 (and (bvsge (index!23385 lt!253170) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253170) (size!17197 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)))))))

(assert (=> b!556999 (= e!320900 (= (select (arr!16833 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118))) (index!23385 lt!253170)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557000 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557000 (= e!320902 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253056 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)) mask!3119))))

(declare-fun b!557001 () Bool)

(assert (=> b!557001 (= e!320904 e!320902)))

(declare-fun c!64207 () Bool)

(assert (=> b!557001 (= c!64207 (or (= lt!253169 (select (store (arr!16833 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253169 lt!253169) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557002 () Bool)

(assert (=> b!557002 (and (bvsge (index!23385 lt!253170) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253170) (size!17197 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118)))))))

(declare-fun res!349264 () Bool)

(assert (=> b!557002 (= res!349264 (= (select (arr!16833 (array!35059 (store (arr!16833 a!3118) i!1132 k!1914) (size!17197 a!3118))) (index!23385 lt!253170)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557002 (=> res!349264 e!320900)))

(assert (= (and d!83305 c!64205) b!556997))

(assert (= (and d!83305 (not c!64205)) b!557001))

(assert (= (and b!557001 c!64207) b!556994))

(assert (= (and b!557001 (not c!64207)) b!557000))

(assert (= (and d!83305 c!64206) b!556998))

(assert (= (and d!83305 (not c!64206)) b!556996))

(assert (= (and b!556996 res!349263) b!556995))

(assert (= (and b!556995 (not res!349262)) b!557002))

(assert (= (and b!557002 (not res!349264)) b!556999))

(declare-fun m!534953 () Bool)

(assert (=> b!557000 m!534953))

(assert (=> b!557000 m!534953))

(assert (=> b!557000 m!534747))

(declare-fun m!534955 () Bool)

(assert (=> b!557000 m!534955))

(declare-fun m!534957 () Bool)

(assert (=> b!556999 m!534957))

(declare-fun m!534959 () Bool)

(assert (=> d!83305 m!534959))

(assert (=> d!83305 m!534767))

(assert (=> b!556995 m!534957))

(assert (=> b!557002 m!534957))

(assert (=> b!556754 d!83305))

(declare-fun d!83319 () Bool)

(declare-fun e!320909 () Bool)

(assert (=> d!83319 e!320909))

(declare-fun c!64212 () Bool)

(declare-fun lt!253175 () SeekEntryResult!5289)

(assert (=> d!83319 (= c!64212 (and (is-Intermediate!5289 lt!253175) (undefined!6101 lt!253175)))))

(declare-fun e!320912 () SeekEntryResult!5289)

(assert (=> d!83319 (= lt!253175 e!320912)))

(declare-fun c!64211 () Bool)

(assert (=> d!83319 (= c!64211 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253174 () (_ BitVec 64))

(assert (=> d!83319 (= lt!253174 (select (arr!16833 a!3118) lt!253057))))

(assert (=> d!83319 (validMask!0 mask!3119)))

(assert (=> d!83319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253057 (select (arr!16833 a!3118) j!142) a!3118 mask!3119) lt!253175)))

(declare-fun b!557009 () Bool)

(declare-fun e!320910 () SeekEntryResult!5289)

(assert (=> b!557009 (= e!320910 (Intermediate!5289 false lt!253057 #b00000000000000000000000000000000))))

(declare-fun b!557010 () Bool)

(assert (=> b!557010 (and (bvsge (index!23385 lt!253175) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253175) (size!17197 a!3118)))))

(declare-fun res!349265 () Bool)

(assert (=> b!557010 (= res!349265 (= (select (arr!16833 a!3118) (index!23385 lt!253175)) (select (arr!16833 a!3118) j!142)))))

(declare-fun e!320908 () Bool)

(assert (=> b!557010 (=> res!349265 e!320908)))

(declare-fun e!320911 () Bool)

(assert (=> b!557010 (= e!320911 e!320908)))

(declare-fun b!557011 () Bool)

(assert (=> b!557011 (= e!320909 e!320911)))

(declare-fun res!349266 () Bool)

(assert (=> b!557011 (= res!349266 (and (is-Intermediate!5289 lt!253175) (not (undefined!6101 lt!253175)) (bvslt (x!52308 lt!253175) #b01111111111111111111111111111110) (bvsge (x!52308 lt!253175) #b00000000000000000000000000000000) (bvsge (x!52308 lt!253175) #b00000000000000000000000000000000)))))

(assert (=> b!557011 (=> (not res!349266) (not e!320911))))

(declare-fun b!557012 () Bool)

(assert (=> b!557012 (= e!320912 (Intermediate!5289 true lt!253057 #b00000000000000000000000000000000))))

(declare-fun b!557013 () Bool)

(assert (=> b!557013 (= e!320909 (bvsge (x!52308 lt!253175) #b01111111111111111111111111111110))))

(declare-fun b!557014 () Bool)

(assert (=> b!557014 (and (bvsge (index!23385 lt!253175) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253175) (size!17197 a!3118)))))

(assert (=> b!557014 (= e!320908 (= (select (arr!16833 a!3118) (index!23385 lt!253175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557015 () Bool)

(assert (=> b!557015 (= e!320910 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253057 #b00000000000000000000000000000000 mask!3119) (select (arr!16833 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557016 () Bool)

(assert (=> b!557016 (= e!320912 e!320910)))

(declare-fun c!64213 () Bool)

(assert (=> b!557016 (= c!64213 (or (= lt!253174 (select (arr!16833 a!3118) j!142)) (= (bvadd lt!253174 lt!253174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557017 () Bool)

(assert (=> b!557017 (and (bvsge (index!23385 lt!253175) #b00000000000000000000000000000000) (bvslt (index!23385 lt!253175) (size!17197 a!3118)))))

(declare-fun res!349267 () Bool)

(assert (=> b!557017 (= res!349267 (= (select (arr!16833 a!3118) (index!23385 lt!253175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557017 (=> res!349267 e!320908)))

(assert (= (and d!83319 c!64211) b!557012))

(assert (= (and d!83319 (not c!64211)) b!557016))

(assert (= (and b!557016 c!64213) b!557009))

(assert (= (and b!557016 (not c!64213)) b!557015))

(assert (= (and d!83319 c!64212) b!557013))

(assert (= (and d!83319 (not c!64212)) b!557011))

(assert (= (and b!557011 res!349266) b!557010))

(assert (= (and b!557010 (not res!349265)) b!557017))

(assert (= (and b!557017 (not res!349267)) b!557014))

(declare-fun m!534967 () Bool)

(assert (=> b!557015 m!534967))

(assert (=> b!557015 m!534967))

(assert (=> b!557015 m!534741))

(declare-fun m!534971 () Bool)

(assert (=> b!557015 m!534971))

(declare-fun m!534975 () Bool)

(assert (=> b!557014 m!534975))

(declare-fun m!534979 () Bool)

(assert (=> d!83319 m!534979))

(assert (=> d!83319 m!534767))

(assert (=> b!557010 m!534975))

(assert (=> b!557017 m!534975))

(assert (=> b!556754 d!83319))

(declare-fun d!83323 () Bool)

(declare-fun lt!253187 () (_ BitVec 32))

(declare-fun lt!253186 () (_ BitVec 32))

(assert (=> d!83323 (= lt!253187 (bvmul (bvxor lt!253186 (bvlshr lt!253186 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83323 (= lt!253186 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83323 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349268 (let ((h!11954 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52314 (bvmul (bvxor h!11954 (bvlshr h!11954 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52314 (bvlshr x!52314 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349268 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349268 #b00000000000000000000000000000000))))))

(assert (=> d!83323 (= (toIndex!0 (select (store (arr!16833 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!253187 (bvlshr lt!253187 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556754 d!83323))

(declare-fun d!83329 () Bool)

(declare-fun lt!253189 () (_ BitVec 32))

(declare-fun lt!253188 () (_ BitVec 32))

(assert (=> d!83329 (= lt!253189 (bvmul (bvxor lt!253188 (bvlshr lt!253188 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83329 (= lt!253188 ((_ extract 31 0) (bvand (bvxor (select (arr!16833 a!3118) j!142) (bvlshr (select (arr!16833 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83329 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349268 (let ((h!11954 ((_ extract 31 0) (bvand (bvxor (select (arr!16833 a!3118) j!142) (bvlshr (select (arr!16833 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52314 (bvmul (bvxor h!11954 (bvlshr h!11954 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52314 (bvlshr x!52314 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349268 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349268 #b00000000000000000000000000000000))))))

(assert (=> d!83329 (= (toIndex!0 (select (arr!16833 a!3118) j!142) mask!3119) (bvand (bvxor lt!253189 (bvlshr lt!253189 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556754 d!83329))

(declare-fun b!557034 () Bool)

(declare-fun e!320926 () SeekEntryResult!5289)

(declare-fun lt!253192 () SeekEntryResult!5289)

(assert (=> b!557034 (= e!320926 (MissingZero!5289 (index!23385 lt!253192)))))

(declare-fun b!557035 () Bool)

(declare-fun e!320925 () SeekEntryResult!5289)

(assert (=> b!557035 (= e!320925 (Found!5289 (index!23385 lt!253192)))))

(declare-fun b!557036 () Bool)

(declare-fun c!64219 () Bool)

(declare-fun lt!253190 () (_ BitVec 64))

(assert (=> b!557036 (= c!64219 (= lt!253190 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557036 (= e!320925 e!320926)))

(declare-fun b!557037 () Bool)

(declare-fun e!320924 () SeekEntryResult!5289)

(assert (=> b!557037 (= e!320924 Undefined!5289)))

(declare-fun d!83331 () Bool)

(declare-fun lt!253191 () SeekEntryResult!5289)

(assert (=> d!83331 (and (or (is-Undefined!5289 lt!253191) (not (is-Found!5289 lt!253191)) (and (bvsge (index!23384 lt!253191) #b00000000000000000000000000000000) (bvslt (index!23384 lt!253191) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253191) (is-Found!5289 lt!253191) (not (is-MissingZero!5289 lt!253191)) (and (bvsge (index!23383 lt!253191) #b00000000000000000000000000000000) (bvslt (index!23383 lt!253191) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253191) (is-Found!5289 lt!253191) (is-MissingZero!5289 lt!253191) (not (is-MissingVacant!5289 lt!253191)) (and (bvsge (index!23386 lt!253191) #b00000000000000000000000000000000) (bvslt (index!23386 lt!253191) (size!17197 a!3118)))) (or (is-Undefined!5289 lt!253191) (ite (is-Found!5289 lt!253191) (= (select (arr!16833 a!3118) (index!23384 lt!253191)) k!1914) (ite (is-MissingZero!5289 lt!253191) (= (select (arr!16833 a!3118) (index!23383 lt!253191)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5289 lt!253191) (= (select (arr!16833 a!3118) (index!23386 lt!253191)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83331 (= lt!253191 e!320924)))

(declare-fun c!64220 () Bool)

(assert (=> d!83331 (= c!64220 (and (is-Intermediate!5289 lt!253192) (undefined!6101 lt!253192)))))

(assert (=> d!83331 (= lt!253192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83331 (validMask!0 mask!3119)))

(assert (=> d!83331 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253191)))

(declare-fun b!557038 () Bool)

(assert (=> b!557038 (= e!320926 (seekKeyOrZeroReturnVacant!0 (x!52308 lt!253192) (index!23385 lt!253192) (index!23385 lt!253192) k!1914 a!3118 mask!3119))))

(declare-fun b!557039 () Bool)

(assert (=> b!557039 (= e!320924 e!320925)))

(assert (=> b!557039 (= lt!253190 (select (arr!16833 a!3118) (index!23385 lt!253192)))))

(declare-fun c!64221 () Bool)

(assert (=> b!557039 (= c!64221 (= lt!253190 k!1914))))

(assert (= (and d!83331 c!64220) b!557037))

(assert (= (and d!83331 (not c!64220)) b!557039))

(assert (= (and b!557039 c!64221) b!557035))

(assert (= (and b!557039 (not c!64221)) b!557036))

(assert (= (and b!557036 c!64219) b!557034))

(assert (= (and b!557036 (not c!64219)) b!557038))

(declare-fun m!534997 () Bool)

(assert (=> d!83331 m!534997))

(declare-fun m!534999 () Bool)

(assert (=> d!83331 m!534999))

(assert (=> d!83331 m!534767))

(assert (=> d!83331 m!534997))

(declare-fun m!535001 () Bool)

(assert (=> d!83331 m!535001))

(declare-fun m!535003 () Bool)

(assert (=> d!83331 m!535003))

(declare-fun m!535005 () Bool)

(assert (=> d!83331 m!535005))

(declare-fun m!535007 () Bool)

(assert (=> b!557038 m!535007))

(declare-fun m!535009 () Bool)

(assert (=> b!557039 m!535009))

(assert (=> b!556749 d!83331))

(declare-fun d!83333 () Bool)

(assert (=> d!83333 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50936 d!83333))

(declare-fun d!83335 () Bool)

(assert (=> d!83335 (= (array_inv!12607 a!3118) (bvsge (size!17197 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50936 d!83335))

