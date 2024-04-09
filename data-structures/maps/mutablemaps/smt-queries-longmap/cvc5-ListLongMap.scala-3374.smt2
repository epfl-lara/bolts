; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46426 () Bool)

(assert start!46426)

(declare-fun b!513328 () Bool)

(declare-fun res!313775 () Bool)

(declare-fun e!299754 () Bool)

(assert (=> b!513328 (=> (not res!313775) (not e!299754))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32926 0))(
  ( (array!32927 (arr!15834 (Array (_ BitVec 32) (_ BitVec 64))) (size!16198 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32926)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!513328 (= res!313775 (and (= (size!16198 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16198 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16198 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513329 () Bool)

(declare-fun res!313783 () Bool)

(declare-fun e!299758 () Bool)

(assert (=> b!513329 (=> res!313783 e!299758)))

(declare-datatypes ((SeekEntryResult!4308 0))(
  ( (MissingZero!4308 (index!19420 (_ BitVec 32))) (Found!4308 (index!19421 (_ BitVec 32))) (Intermediate!4308 (undefined!5120 Bool) (index!19422 (_ BitVec 32)) (x!48402 (_ BitVec 32))) (Undefined!4308) (MissingVacant!4308 (index!19423 (_ BitVec 32))) )
))
(declare-fun lt!235068 () SeekEntryResult!4308)

(assert (=> b!513329 (= res!313783 (or (undefined!5120 lt!235068) (not (is-Intermediate!4308 lt!235068))))))

(declare-fun b!513330 () Bool)

(declare-fun e!299755 () Bool)

(assert (=> b!513330 (= e!299755 (not e!299758))))

(declare-fun res!313780 () Bool)

(assert (=> b!513330 (=> res!313780 e!299758)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!235066 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32926 (_ BitVec 32)) SeekEntryResult!4308)

(assert (=> b!513330 (= res!313780 (= lt!235068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235066 (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)) mask!3524)))))

(declare-fun lt!235070 () (_ BitVec 32))

(assert (=> b!513330 (= lt!235068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235070 (select (arr!15834 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513330 (= lt!235066 (toIndex!0 (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513330 (= lt!235070 (toIndex!0 (select (arr!15834 a!3235) j!176) mask!3524))))

(declare-fun e!299756 () Bool)

(assert (=> b!513330 e!299756))

(declare-fun res!313778 () Bool)

(assert (=> b!513330 (=> (not res!313778) (not e!299756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32926 (_ BitVec 32)) Bool)

(assert (=> b!513330 (= res!313778 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15866 0))(
  ( (Unit!15867) )
))
(declare-fun lt!235067 () Unit!15866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15866)

(assert (=> b!513330 (= lt!235067 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513331 () Bool)

(declare-fun res!313774 () Bool)

(assert (=> b!513331 (=> (not res!313774) (not e!299754))))

(declare-fun arrayContainsKey!0 (array!32926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513331 (= res!313774 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513332 () Bool)

(declare-fun res!313781 () Bool)

(assert (=> b!513332 (=> (not res!313781) (not e!299754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513332 (= res!313781 (validKeyInArray!0 k!2280))))

(declare-fun b!513333 () Bool)

(declare-fun res!313782 () Bool)

(assert (=> b!513333 (=> (not res!313782) (not e!299754))))

(assert (=> b!513333 (= res!313782 (validKeyInArray!0 (select (arr!15834 a!3235) j!176)))))

(declare-fun b!513334 () Bool)

(assert (=> b!513334 (= e!299754 e!299755)))

(declare-fun res!313776 () Bool)

(assert (=> b!513334 (=> (not res!313776) (not e!299755))))

(declare-fun lt!235069 () SeekEntryResult!4308)

(assert (=> b!513334 (= res!313776 (or (= lt!235069 (MissingZero!4308 i!1204)) (= lt!235069 (MissingVacant!4308 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32926 (_ BitVec 32)) SeekEntryResult!4308)

(assert (=> b!513334 (= lt!235069 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!313784 () Bool)

(assert (=> start!46426 (=> (not res!313784) (not e!299754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46426 (= res!313784 (validMask!0 mask!3524))))

(assert (=> start!46426 e!299754))

(assert (=> start!46426 true))

(declare-fun array_inv!11608 (array!32926) Bool)

(assert (=> start!46426 (array_inv!11608 a!3235)))

(declare-fun b!513335 () Bool)

(assert (=> b!513335 (= e!299756 (= (seekEntryOrOpen!0 (select (arr!15834 a!3235) j!176) a!3235 mask!3524) (Found!4308 j!176)))))

(declare-fun b!513336 () Bool)

(declare-fun res!313779 () Bool)

(assert (=> b!513336 (=> (not res!313779) (not e!299755))))

(assert (=> b!513336 (= res!313779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513337 () Bool)

(declare-fun res!313777 () Bool)

(assert (=> b!513337 (=> (not res!313777) (not e!299755))))

(declare-datatypes ((List!10045 0))(
  ( (Nil!10042) (Cons!10041 (h!10927 (_ BitVec 64)) (t!16281 List!10045)) )
))
(declare-fun arrayNoDuplicates!0 (array!32926 (_ BitVec 32) List!10045) Bool)

(assert (=> b!513337 (= res!313777 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10042))))

(declare-fun b!513338 () Bool)

(assert (=> b!513338 (= e!299758 (or (= (select (arr!15834 a!3235) (index!19422 lt!235068)) (select (arr!15834 a!3235) j!176)) (and (bvsge (index!19422 lt!235068) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235068) (size!16198 a!3235)))))))

(assert (=> b!513338 (bvslt (x!48402 lt!235068) #b01111111111111111111111111111110)))

(assert (= (and start!46426 res!313784) b!513328))

(assert (= (and b!513328 res!313775) b!513333))

(assert (= (and b!513333 res!313782) b!513332))

(assert (= (and b!513332 res!313781) b!513331))

(assert (= (and b!513331 res!313774) b!513334))

(assert (= (and b!513334 res!313776) b!513336))

(assert (= (and b!513336 res!313779) b!513337))

(assert (= (and b!513337 res!313777) b!513330))

(assert (= (and b!513330 res!313778) b!513335))

(assert (= (and b!513330 (not res!313780)) b!513329))

(assert (= (and b!513329 (not res!313783)) b!513338))

(declare-fun m!494935 () Bool)

(assert (=> start!46426 m!494935))

(declare-fun m!494937 () Bool)

(assert (=> start!46426 m!494937))

(declare-fun m!494939 () Bool)

(assert (=> b!513332 m!494939))

(declare-fun m!494941 () Bool)

(assert (=> b!513338 m!494941))

(declare-fun m!494943 () Bool)

(assert (=> b!513338 m!494943))

(declare-fun m!494945 () Bool)

(assert (=> b!513334 m!494945))

(assert (=> b!513335 m!494943))

(assert (=> b!513335 m!494943))

(declare-fun m!494947 () Bool)

(assert (=> b!513335 m!494947))

(declare-fun m!494949 () Bool)

(assert (=> b!513331 m!494949))

(assert (=> b!513333 m!494943))

(assert (=> b!513333 m!494943))

(declare-fun m!494951 () Bool)

(assert (=> b!513333 m!494951))

(declare-fun m!494953 () Bool)

(assert (=> b!513330 m!494953))

(declare-fun m!494955 () Bool)

(assert (=> b!513330 m!494955))

(assert (=> b!513330 m!494943))

(declare-fun m!494957 () Bool)

(assert (=> b!513330 m!494957))

(assert (=> b!513330 m!494943))

(declare-fun m!494959 () Bool)

(assert (=> b!513330 m!494959))

(assert (=> b!513330 m!494943))

(declare-fun m!494961 () Bool)

(assert (=> b!513330 m!494961))

(declare-fun m!494963 () Bool)

(assert (=> b!513330 m!494963))

(declare-fun m!494965 () Bool)

(assert (=> b!513330 m!494965))

(assert (=> b!513330 m!494963))

(declare-fun m!494967 () Bool)

(assert (=> b!513330 m!494967))

(assert (=> b!513330 m!494963))

(declare-fun m!494969 () Bool)

(assert (=> b!513336 m!494969))

(declare-fun m!494971 () Bool)

(assert (=> b!513337 m!494971))

(push 1)

(assert (not b!513333))

(assert (not start!46426))

(assert (not b!513332))

(assert (not b!513337))

(assert (not b!513334))

(assert (not b!513335))

(assert (not b!513336))

(assert (not b!513331))

(assert (not b!513330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!31559 () Bool)

(declare-fun call!31562 () Bool)

(assert (=> bm!31559 (= call!31562 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513456 () Bool)

(declare-fun e!299826 () Bool)

(assert (=> b!513456 (= e!299826 call!31562)))

(declare-fun b!513457 () Bool)

(declare-fun e!299827 () Bool)

(assert (=> b!513457 (= e!299827 call!31562)))

(declare-fun d!79061 () Bool)

(declare-fun res!313878 () Bool)

(declare-fun e!299828 () Bool)

(assert (=> d!79061 (=> res!313878 e!299828)))

(assert (=> d!79061 (= res!313878 (bvsge #b00000000000000000000000000000000 (size!16198 a!3235)))))

(assert (=> d!79061 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299828)))

(declare-fun b!513458 () Bool)

(assert (=> b!513458 (= e!299826 e!299827)))

(declare-fun lt!235126 () (_ BitVec 64))

(assert (=> b!513458 (= lt!235126 (select (arr!15834 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235127 () Unit!15866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32926 (_ BitVec 64) (_ BitVec 32)) Unit!15866)

(assert (=> b!513458 (= lt!235127 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235126 #b00000000000000000000000000000000))))

(assert (=> b!513458 (arrayContainsKey!0 a!3235 lt!235126 #b00000000000000000000000000000000)))

(declare-fun lt!235128 () Unit!15866)

(assert (=> b!513458 (= lt!235128 lt!235127)))

(declare-fun res!313875 () Bool)

(assert (=> b!513458 (= res!313875 (= (seekEntryOrOpen!0 (select (arr!15834 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4308 #b00000000000000000000000000000000)))))

(assert (=> b!513458 (=> (not res!313875) (not e!299827))))

(declare-fun b!513459 () Bool)

(assert (=> b!513459 (= e!299828 e!299826)))

(declare-fun c!60074 () Bool)

(assert (=> b!513459 (= c!60074 (validKeyInArray!0 (select (arr!15834 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79061 (not res!313878)) b!513459))

(assert (= (and b!513459 c!60074) b!513458))

(assert (= (and b!513459 (not c!60074)) b!513456))

(assert (= (and b!513458 res!313875) b!513457))

(assert (= (or b!513457 b!513456) bm!31559))

(declare-fun m!495065 () Bool)

(assert (=> bm!31559 m!495065))

(declare-fun m!495067 () Bool)

(assert (=> b!513458 m!495067))

(declare-fun m!495069 () Bool)

(assert (=> b!513458 m!495069))

(declare-fun m!495071 () Bool)

(assert (=> b!513458 m!495071))

(assert (=> b!513458 m!495067))

(declare-fun m!495073 () Bool)

(assert (=> b!513458 m!495073))

(assert (=> b!513459 m!495067))

(assert (=> b!513459 m!495067))

(declare-fun m!495075 () Bool)

(assert (=> b!513459 m!495075))

(assert (=> b!513336 d!79061))

(declare-fun d!79065 () Bool)

(declare-fun res!313883 () Bool)

(declare-fun e!299833 () Bool)

(assert (=> d!79065 (=> res!313883 e!299833)))

(assert (=> d!79065 (= res!313883 (= (select (arr!15834 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79065 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!299833)))

(declare-fun b!513466 () Bool)

(declare-fun e!299834 () Bool)

(assert (=> b!513466 (= e!299833 e!299834)))

(declare-fun res!313884 () Bool)

(assert (=> b!513466 (=> (not res!313884) (not e!299834))))

(assert (=> b!513466 (= res!313884 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16198 a!3235)))))

(declare-fun b!513467 () Bool)

(assert (=> b!513467 (= e!299834 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79065 (not res!313883)) b!513466))

(assert (= (and b!513466 res!313884) b!513467))

(assert (=> d!79065 m!495067))

(declare-fun m!495077 () Bool)

(assert (=> b!513467 m!495077))

(assert (=> b!513331 d!79065))

(declare-fun d!79067 () Bool)

(declare-fun lt!235141 () (_ BitVec 32))

(declare-fun lt!235140 () (_ BitVec 32))

(assert (=> d!79067 (= lt!235141 (bvmul (bvxor lt!235140 (bvlshr lt!235140 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79067 (= lt!235140 ((_ extract 31 0) (bvand (bvxor (select (arr!15834 a!3235) j!176) (bvlshr (select (arr!15834 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79067 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313888 (let ((h!10931 ((_ extract 31 0) (bvand (bvxor (select (arr!15834 a!3235) j!176) (bvlshr (select (arr!15834 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48407 (bvmul (bvxor h!10931 (bvlshr h!10931 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48407 (bvlshr x!48407 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313888 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313888 #b00000000000000000000000000000000))))))

(assert (=> d!79067 (= (toIndex!0 (select (arr!15834 a!3235) j!176) mask!3524) (bvand (bvxor lt!235141 (bvlshr lt!235141 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513330 d!79067))

(declare-fun call!31564 () Bool)

(declare-fun bm!31561 () Bool)

(assert (=> bm!31561 (= call!31564 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513481 () Bool)

(declare-fun e!299843 () Bool)

(assert (=> b!513481 (= e!299843 call!31564)))

(declare-fun b!513482 () Bool)

(declare-fun e!299844 () Bool)

(assert (=> b!513482 (= e!299844 call!31564)))

(declare-fun d!79075 () Bool)

(declare-fun res!313892 () Bool)

(declare-fun e!299845 () Bool)

(assert (=> d!79075 (=> res!313892 e!299845)))

(assert (=> d!79075 (= res!313892 (bvsge j!176 (size!16198 a!3235)))))

(assert (=> d!79075 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299845)))

(declare-fun b!513483 () Bool)

(assert (=> b!513483 (= e!299843 e!299844)))

(declare-fun lt!235142 () (_ BitVec 64))

(assert (=> b!513483 (= lt!235142 (select (arr!15834 a!3235) j!176))))

(declare-fun lt!235143 () Unit!15866)

(assert (=> b!513483 (= lt!235143 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235142 j!176))))

(assert (=> b!513483 (arrayContainsKey!0 a!3235 lt!235142 #b00000000000000000000000000000000)))

(declare-fun lt!235144 () Unit!15866)

(assert (=> b!513483 (= lt!235144 lt!235143)))

(declare-fun res!313891 () Bool)

(assert (=> b!513483 (= res!313891 (= (seekEntryOrOpen!0 (select (arr!15834 a!3235) j!176) a!3235 mask!3524) (Found!4308 j!176)))))

(assert (=> b!513483 (=> (not res!313891) (not e!299844))))

(declare-fun b!513484 () Bool)

(assert (=> b!513484 (= e!299845 e!299843)))

(declare-fun c!60079 () Bool)

(assert (=> b!513484 (= c!60079 (validKeyInArray!0 (select (arr!15834 a!3235) j!176)))))

(assert (= (and d!79075 (not res!313892)) b!513484))

(assert (= (and b!513484 c!60079) b!513483))

(assert (= (and b!513484 (not c!60079)) b!513481))

(assert (= (and b!513483 res!313891) b!513482))

(assert (= (or b!513482 b!513481) bm!31561))

(declare-fun m!495093 () Bool)

(assert (=> bm!31561 m!495093))

(assert (=> b!513483 m!494943))

(declare-fun m!495095 () Bool)

(assert (=> b!513483 m!495095))

(declare-fun m!495097 () Bool)

(assert (=> b!513483 m!495097))

(assert (=> b!513483 m!494943))

(assert (=> b!513483 m!494947))

(assert (=> b!513484 m!494943))

(assert (=> b!513484 m!494943))

(assert (=> b!513484 m!494951))

(assert (=> b!513330 d!79075))

(declare-fun b!513563 () Bool)

(declare-fun e!299891 () SeekEntryResult!4308)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513563 (= e!299891 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235066 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)) mask!3524))))

(declare-fun b!513564 () Bool)

(declare-fun e!299895 () Bool)

(declare-fun lt!235172 () SeekEntryResult!4308)

(assert (=> b!513564 (= e!299895 (bvsge (x!48402 lt!235172) #b01111111111111111111111111111110))))

(declare-fun b!513565 () Bool)

(declare-fun e!299892 () Bool)

(assert (=> b!513565 (= e!299895 e!299892)))

(declare-fun res!313911 () Bool)

(assert (=> b!513565 (= res!313911 (and (is-Intermediate!4308 lt!235172) (not (undefined!5120 lt!235172)) (bvslt (x!48402 lt!235172) #b01111111111111111111111111111110) (bvsge (x!48402 lt!235172) #b00000000000000000000000000000000) (bvsge (x!48402 lt!235172) #b00000000000000000000000000000000)))))

(assert (=> b!513565 (=> (not res!313911) (not e!299892))))

(declare-fun b!513566 () Bool)

(declare-fun e!299894 () SeekEntryResult!4308)

(assert (=> b!513566 (= e!299894 (Intermediate!4308 true lt!235066 #b00000000000000000000000000000000))))

(declare-fun d!79077 () Bool)

(assert (=> d!79077 e!299895))

(declare-fun c!60112 () Bool)

(assert (=> d!79077 (= c!60112 (and (is-Intermediate!4308 lt!235172) (undefined!5120 lt!235172)))))

(assert (=> d!79077 (= lt!235172 e!299894)))

(declare-fun c!60110 () Bool)

(assert (=> d!79077 (= c!60110 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235173 () (_ BitVec 64))

(assert (=> d!79077 (= lt!235173 (select (arr!15834 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235))) lt!235066))))

(assert (=> d!79077 (validMask!0 mask!3524)))

(assert (=> d!79077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235066 (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)) mask!3524) lt!235172)))

(declare-fun b!513567 () Bool)

(assert (=> b!513567 (and (bvsge (index!19422 lt!235172) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235172) (size!16198 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)))))))

(declare-fun e!299893 () Bool)

(assert (=> b!513567 (= e!299893 (= (select (arr!15834 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235))) (index!19422 lt!235172)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513568 () Bool)

(assert (=> b!513568 (and (bvsge (index!19422 lt!235172) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235172) (size!16198 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)))))))

(declare-fun res!313913 () Bool)

(assert (=> b!513568 (= res!313913 (= (select (arr!15834 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235))) (index!19422 lt!235172)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513568 (=> res!313913 e!299893)))

(declare-fun b!513569 () Bool)

(assert (=> b!513569 (= e!299891 (Intermediate!4308 false lt!235066 #b00000000000000000000000000000000))))

(declare-fun b!513570 () Bool)

(assert (=> b!513570 (= e!299894 e!299891)))

(declare-fun c!60111 () Bool)

(assert (=> b!513570 (= c!60111 (or (= lt!235173 (select (store (arr!15834 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235173 lt!235173) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513571 () Bool)

(assert (=> b!513571 (and (bvsge (index!19422 lt!235172) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235172) (size!16198 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235)))))))

(declare-fun res!313912 () Bool)

(assert (=> b!513571 (= res!313912 (= (select (arr!15834 (array!32927 (store (arr!15834 a!3235) i!1204 k!2280) (size!16198 a!3235))) (index!19422 lt!235172)) (select (store (arr!15834 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!513571 (=> res!313912 e!299893)))

(assert (=> b!513571 (= e!299892 e!299893)))

(assert (= (and d!79077 c!60110) b!513566))

(assert (= (and d!79077 (not c!60110)) b!513570))

(assert (= (and b!513570 c!60111) b!513569))

(assert (= (and b!513570 (not c!60111)) b!513563))

(assert (= (and d!79077 c!60112) b!513564))

(assert (= (and d!79077 (not c!60112)) b!513565))

(assert (= (and b!513565 res!313911) b!513571))

(assert (= (and b!513571 (not res!313912)) b!513568))

(assert (= (and b!513568 (not res!313913)) b!513567))

(declare-fun m!495143 () Bool)

(assert (=> b!513563 m!495143))

(assert (=> b!513563 m!495143))

(assert (=> b!513563 m!494963))

(declare-fun m!495145 () Bool)

(assert (=> b!513563 m!495145))

(declare-fun m!495147 () Bool)

(assert (=> b!513571 m!495147))

(assert (=> b!513567 m!495147))

(assert (=> b!513568 m!495147))

(declare-fun m!495149 () Bool)

(assert (=> d!79077 m!495149))

(assert (=> d!79077 m!494935))

(assert (=> b!513330 d!79077))

(declare-fun b!513572 () Bool)

(declare-fun e!299896 () SeekEntryResult!4308)

(assert (=> b!513572 (= e!299896 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235070 #b00000000000000000000000000000000 mask!3524) (select (arr!15834 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513573 () Bool)

(declare-fun e!299900 () Bool)

(declare-fun lt!235174 () SeekEntryResult!4308)

(assert (=> b!513573 (= e!299900 (bvsge (x!48402 lt!235174) #b01111111111111111111111111111110))))

(declare-fun b!513574 () Bool)

(declare-fun e!299897 () Bool)

(assert (=> b!513574 (= e!299900 e!299897)))

(declare-fun res!313914 () Bool)

(assert (=> b!513574 (= res!313914 (and (is-Intermediate!4308 lt!235174) (not (undefined!5120 lt!235174)) (bvslt (x!48402 lt!235174) #b01111111111111111111111111111110) (bvsge (x!48402 lt!235174) #b00000000000000000000000000000000) (bvsge (x!48402 lt!235174) #b00000000000000000000000000000000)))))

(assert (=> b!513574 (=> (not res!313914) (not e!299897))))

(declare-fun b!513575 () Bool)

(declare-fun e!299899 () SeekEntryResult!4308)

(assert (=> b!513575 (= e!299899 (Intermediate!4308 true lt!235070 #b00000000000000000000000000000000))))

(declare-fun d!79091 () Bool)

(assert (=> d!79091 e!299900))

(declare-fun c!60115 () Bool)

(assert (=> d!79091 (= c!60115 (and (is-Intermediate!4308 lt!235174) (undefined!5120 lt!235174)))))

(assert (=> d!79091 (= lt!235174 e!299899)))

(declare-fun c!60113 () Bool)

(assert (=> d!79091 (= c!60113 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235175 () (_ BitVec 64))

(assert (=> d!79091 (= lt!235175 (select (arr!15834 a!3235) lt!235070))))

(assert (=> d!79091 (validMask!0 mask!3524)))

(assert (=> d!79091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235070 (select (arr!15834 a!3235) j!176) a!3235 mask!3524) lt!235174)))

(declare-fun b!513576 () Bool)

(assert (=> b!513576 (and (bvsge (index!19422 lt!235174) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235174) (size!16198 a!3235)))))

(declare-fun e!299898 () Bool)

(assert (=> b!513576 (= e!299898 (= (select (arr!15834 a!3235) (index!19422 lt!235174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513577 () Bool)

(assert (=> b!513577 (and (bvsge (index!19422 lt!235174) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235174) (size!16198 a!3235)))))

(declare-fun res!313916 () Bool)

(assert (=> b!513577 (= res!313916 (= (select (arr!15834 a!3235) (index!19422 lt!235174)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513577 (=> res!313916 e!299898)))

(declare-fun b!513578 () Bool)

(assert (=> b!513578 (= e!299896 (Intermediate!4308 false lt!235070 #b00000000000000000000000000000000))))

(declare-fun b!513579 () Bool)

(assert (=> b!513579 (= e!299899 e!299896)))

(declare-fun c!60114 () Bool)

(assert (=> b!513579 (= c!60114 (or (= lt!235175 (select (arr!15834 a!3235) j!176)) (= (bvadd lt!235175 lt!235175) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513580 () Bool)

(assert (=> b!513580 (and (bvsge (index!19422 lt!235174) #b00000000000000000000000000000000) (bvslt (index!19422 lt!235174) (size!16198 a!3235)))))

(declare-fun res!313915 () Bool)

(assert (=> b!513580 (= res!313915 (= (select (arr!15834 a!3235) (index!19422 lt!235174)) (select (arr!15834 a!3235) j!176)))))

(assert (=> b!513580 (=> res!313915 e!299898)))

(assert (=> b!513580 (= e!299897 e!299898)))

(assert (= (and d!79091 c!60113) b!513575))

(assert (= (and d!79091 (not c!60113)) b!513579))

(assert (= (and b!513579 c!60114) b!513578))

(assert (= (and b!513579 (not c!60114)) b!513572))

(assert (= (and d!79091 c!60115) b!513573))

(assert (= (and d!79091 (not c!60115)) b!513574))

(assert (= (and b!513574 res!313914) b!513580))

(assert (= (and b!513580 (not res!313915)) b!513577))

(assert (= (and b!513577 (not res!313916)) b!513576))

(declare-fun m!495151 () Bool)

(assert (=> b!513572 m!495151))

(assert (=> b!513572 m!495151))

(assert (=> b!513572 m!494943))

(declare-fun m!495153 () Bool)

(assert (=> b!513572 m!495153))

(declare-fun m!495155 () Bool)

(assert (=> b!513580 m!495155))

(assert (=> b!513576 m!495155))

(assert (=> b!513577 m!495155))

(declare-fun m!495157 () Bool)

(assert (=> d!79091 m!495157))

(assert (=> d!79091 m!494935))

(assert (=> b!513330 d!79091))

(declare-fun d!79093 () Bool)

(assert (=> d!79093 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235184 () Unit!15866)

(declare-fun choose!38 (array!32926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15866)

(assert (=> d!79093 (= lt!235184 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79093 (validMask!0 mask!3524)))

(assert (=> d!79093 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235184)))

(declare-fun bs!16252 () Bool)

(assert (= bs!16252 d!79093))

(assert (=> bs!16252 m!494961))

(declare-fun m!495185 () Bool)

(assert (=> bs!16252 m!495185))

(assert (=> bs!16252 m!494935))

(assert (=> b!513330 d!79093))

(declare-fun d!79101 () Bool)

(declare-fun lt!235192 () (_ BitVec 32))

(declare-fun lt!235191 () (_ BitVec 32))

(assert (=> d!79101 (= lt!235192 (bvmul (bvxor lt!235191 (bvlshr lt!235191 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79101 (= lt!235191 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79101 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313888 (let ((h!10931 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48407 (bvmul (bvxor h!10931 (bvlshr h!10931 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48407 (bvlshr x!48407 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313888 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313888 #b00000000000000000000000000000000))))))

(assert (=> d!79101 (= (toIndex!0 (select (store (arr!15834 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235192 (bvlshr lt!235192 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513330 d!79101))

(declare-fun b!513641 () Bool)

(declare-fun e!299940 () SeekEntryResult!4308)

(declare-fun e!299939 () SeekEntryResult!4308)

(assert (=> b!513641 (= e!299940 e!299939)))

(declare-fun lt!235208 () (_ BitVec 64))

(declare-fun lt!235206 () SeekEntryResult!4308)

(assert (=> b!513641 (= lt!235208 (select (arr!15834 a!3235) (index!19422 lt!235206)))))

(declare-fun c!60138 () Bool)

(assert (=> b!513641 (= c!60138 (= lt!235208 (select (arr!15834 a!3235) j!176)))))

(declare-fun b!513642 () Bool)

(assert (=> b!513642 (= e!299939 (Found!4308 (index!19422 lt!235206)))))

(declare-fun e!299938 () SeekEntryResult!4308)

(declare-fun b!513643 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32926 (_ BitVec 32)) SeekEntryResult!4308)

(assert (=> b!513643 (= e!299938 (seekKeyOrZeroReturnVacant!0 (x!48402 lt!235206) (index!19422 lt!235206) (index!19422 lt!235206) (select (arr!15834 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513644 () Bool)

(assert (=> b!513644 (= e!299940 Undefined!4308)))

(declare-fun b!513645 () Bool)

(assert (=> b!513645 (= e!299938 (MissingZero!4308 (index!19422 lt!235206)))))

(declare-fun b!513646 () Bool)

(declare-fun c!60139 () Bool)

(assert (=> b!513646 (= c!60139 (= lt!235208 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513646 (= e!299939 e!299938)))

(declare-fun d!79105 () Bool)

(declare-fun lt!235207 () SeekEntryResult!4308)

(assert (=> d!79105 (and (or (is-Undefined!4308 lt!235207) (not (is-Found!4308 lt!235207)) (and (bvsge (index!19421 lt!235207) #b00000000000000000000000000000000) (bvslt (index!19421 lt!235207) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235207) (is-Found!4308 lt!235207) (not (is-MissingZero!4308 lt!235207)) (and (bvsge (index!19420 lt!235207) #b00000000000000000000000000000000) (bvslt (index!19420 lt!235207) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235207) (is-Found!4308 lt!235207) (is-MissingZero!4308 lt!235207) (not (is-MissingVacant!4308 lt!235207)) (and (bvsge (index!19423 lt!235207) #b00000000000000000000000000000000) (bvslt (index!19423 lt!235207) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235207) (ite (is-Found!4308 lt!235207) (= (select (arr!15834 a!3235) (index!19421 lt!235207)) (select (arr!15834 a!3235) j!176)) (ite (is-MissingZero!4308 lt!235207) (= (select (arr!15834 a!3235) (index!19420 lt!235207)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4308 lt!235207) (= (select (arr!15834 a!3235) (index!19423 lt!235207)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79105 (= lt!235207 e!299940)))

(declare-fun c!60137 () Bool)

(assert (=> d!79105 (= c!60137 (and (is-Intermediate!4308 lt!235206) (undefined!5120 lt!235206)))))

(assert (=> d!79105 (= lt!235206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15834 a!3235) j!176) mask!3524) (select (arr!15834 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79105 (validMask!0 mask!3524)))

(assert (=> d!79105 (= (seekEntryOrOpen!0 (select (arr!15834 a!3235) j!176) a!3235 mask!3524) lt!235207)))

(assert (= (and d!79105 c!60137) b!513644))

(assert (= (and d!79105 (not c!60137)) b!513641))

(assert (= (and b!513641 c!60138) b!513642))

(assert (= (and b!513641 (not c!60138)) b!513646))

(assert (= (and b!513646 c!60139) b!513645))

(assert (= (and b!513646 (not c!60139)) b!513643))

(declare-fun m!495195 () Bool)

(assert (=> b!513641 m!495195))

(assert (=> b!513643 m!494943))

(declare-fun m!495197 () Bool)

(assert (=> b!513643 m!495197))

(assert (=> d!79105 m!494959))

(assert (=> d!79105 m!494943))

(declare-fun m!495199 () Bool)

(assert (=> d!79105 m!495199))

(declare-fun m!495201 () Bool)

(assert (=> d!79105 m!495201))

(declare-fun m!495203 () Bool)

(assert (=> d!79105 m!495203))

(assert (=> d!79105 m!494935))

(declare-fun m!495205 () Bool)

(assert (=> d!79105 m!495205))

(assert (=> d!79105 m!494943))

(assert (=> d!79105 m!494959))

(assert (=> b!513335 d!79105))

(declare-fun d!79111 () Bool)

(assert (=> d!79111 (= (validKeyInArray!0 (select (arr!15834 a!3235) j!176)) (and (not (= (select (arr!15834 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15834 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513333 d!79111))

(declare-fun b!513656 () Bool)

(declare-fun e!299948 () SeekEntryResult!4308)

(declare-fun e!299947 () SeekEntryResult!4308)

(assert (=> b!513656 (= e!299948 e!299947)))

(declare-fun lt!235213 () (_ BitVec 64))

(declare-fun lt!235211 () SeekEntryResult!4308)

(assert (=> b!513656 (= lt!235213 (select (arr!15834 a!3235) (index!19422 lt!235211)))))

(declare-fun c!60144 () Bool)

(assert (=> b!513656 (= c!60144 (= lt!235213 k!2280))))

(declare-fun b!513657 () Bool)

(assert (=> b!513657 (= e!299947 (Found!4308 (index!19422 lt!235211)))))

(declare-fun e!299946 () SeekEntryResult!4308)

(declare-fun b!513658 () Bool)

(assert (=> b!513658 (= e!299946 (seekKeyOrZeroReturnVacant!0 (x!48402 lt!235211) (index!19422 lt!235211) (index!19422 lt!235211) k!2280 a!3235 mask!3524))))

(declare-fun b!513659 () Bool)

(assert (=> b!513659 (= e!299948 Undefined!4308)))

(declare-fun b!513660 () Bool)

(assert (=> b!513660 (= e!299946 (MissingZero!4308 (index!19422 lt!235211)))))

(declare-fun b!513661 () Bool)

(declare-fun c!60145 () Bool)

(assert (=> b!513661 (= c!60145 (= lt!235213 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513661 (= e!299947 e!299946)))

(declare-fun d!79113 () Bool)

(declare-fun lt!235212 () SeekEntryResult!4308)

(assert (=> d!79113 (and (or (is-Undefined!4308 lt!235212) (not (is-Found!4308 lt!235212)) (and (bvsge (index!19421 lt!235212) #b00000000000000000000000000000000) (bvslt (index!19421 lt!235212) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235212) (is-Found!4308 lt!235212) (not (is-MissingZero!4308 lt!235212)) (and (bvsge (index!19420 lt!235212) #b00000000000000000000000000000000) (bvslt (index!19420 lt!235212) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235212) (is-Found!4308 lt!235212) (is-MissingZero!4308 lt!235212) (not (is-MissingVacant!4308 lt!235212)) (and (bvsge (index!19423 lt!235212) #b00000000000000000000000000000000) (bvslt (index!19423 lt!235212) (size!16198 a!3235)))) (or (is-Undefined!4308 lt!235212) (ite (is-Found!4308 lt!235212) (= (select (arr!15834 a!3235) (index!19421 lt!235212)) k!2280) (ite (is-MissingZero!4308 lt!235212) (= (select (arr!15834 a!3235) (index!19420 lt!235212)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4308 lt!235212) (= (select (arr!15834 a!3235) (index!19423 lt!235212)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79113 (= lt!235212 e!299948)))

(declare-fun c!60143 () Bool)

(assert (=> d!79113 (= c!60143 (and (is-Intermediate!4308 lt!235211) (undefined!5120 lt!235211)))))

(assert (=> d!79113 (= lt!235211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79113 (validMask!0 mask!3524)))

(assert (=> d!79113 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235212)))

(assert (= (and d!79113 c!60143) b!513659))

(assert (= (and d!79113 (not c!60143)) b!513656))

(assert (= (and b!513656 c!60144) b!513657))

(assert (= (and b!513656 (not c!60144)) b!513661))

(assert (= (and b!513661 c!60145) b!513660))

(assert (= (and b!513661 (not c!60145)) b!513658))

(declare-fun m!495215 () Bool)

(assert (=> b!513656 m!495215))

(declare-fun m!495217 () Bool)

(assert (=> b!513658 m!495217))

(declare-fun m!495219 () Bool)

(assert (=> d!79113 m!495219))

(declare-fun m!495221 () Bool)

(assert (=> d!79113 m!495221))

(declare-fun m!495223 () Bool)

(assert (=> d!79113 m!495223))

(declare-fun m!495225 () Bool)

(assert (=> d!79113 m!495225))

(assert (=> d!79113 m!494935))

(declare-fun m!495227 () Bool)

(assert (=> d!79113 m!495227))

(assert (=> d!79113 m!495219))

(assert (=> b!513334 d!79113))

(declare-fun d!79117 () Bool)

(assert (=> d!79117 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513332 d!79117))

(declare-fun bm!31570 () Bool)

(declare-fun call!31573 () Bool)

(declare-fun c!60148 () Bool)

(assert (=> bm!31570 (= call!31573 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60148 (Cons!10041 (select (arr!15834 a!3235) #b00000000000000000000000000000000) Nil!10042) Nil!10042)))))

(declare-fun d!79119 () Bool)

(declare-fun res!313945 () Bool)

(declare-fun e!299960 () Bool)

(assert (=> d!79119 (=> res!313945 e!299960)))

(assert (=> d!79119 (= res!313945 (bvsge #b00000000000000000000000000000000 (size!16198 a!3235)))))

(assert (=> d!79119 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10042) e!299960)))

(declare-fun b!513672 () Bool)

(declare-fun e!299957 () Bool)

(declare-fun e!299959 () Bool)

(assert (=> b!513672 (= e!299957 e!299959)))

(assert (=> b!513672 (= c!60148 (validKeyInArray!0 (select (arr!15834 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513673 () Bool)

(declare-fun e!299958 () Bool)

(declare-fun contains!2738 (List!10045 (_ BitVec 64)) Bool)

(assert (=> b!513673 (= e!299958 (contains!2738 Nil!10042 (select (arr!15834 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513674 () Bool)

(assert (=> b!513674 (= e!299959 call!31573)))

(declare-fun b!513675 () Bool)

(assert (=> b!513675 (= e!299960 e!299957)))

(declare-fun res!313947 () Bool)

(assert (=> b!513675 (=> (not res!313947) (not e!299957))))

(assert (=> b!513675 (= res!313947 (not e!299958))))

(declare-fun res!313946 () Bool)

(assert (=> b!513675 (=> (not res!313946) (not e!299958))))

(assert (=> b!513675 (= res!313946 (validKeyInArray!0 (select (arr!15834 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513676 () Bool)

(assert (=> b!513676 (= e!299959 call!31573)))

(assert (= (and d!79119 (not res!313945)) b!513675))

(assert (= (and b!513675 res!313946) b!513673))

(assert (= (and b!513675 res!313947) b!513672))

(assert (= (and b!513672 c!60148) b!513674))

(assert (= (and b!513672 (not c!60148)) b!513676))

(assert (= (or b!513674 b!513676) bm!31570))

(assert (=> bm!31570 m!495067))

(declare-fun m!495231 () Bool)

(assert (=> bm!31570 m!495231))

(assert (=> b!513672 m!495067))

(assert (=> b!513672 m!495067))

(assert (=> b!513672 m!495075))

(assert (=> b!513673 m!495067))

(assert (=> b!513673 m!495067))

(declare-fun m!495233 () Bool)

(assert (=> b!513673 m!495233))

(assert (=> b!513675 m!495067))

(assert (=> b!513675 m!495067))

(assert (=> b!513675 m!495075))

(assert (=> b!513337 d!79119))

(declare-fun d!79123 () Bool)

(assert (=> d!79123 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46426 d!79123))

(declare-fun d!79137 () Bool)

(assert (=> d!79137 (= (array_inv!11608 a!3235) (bvsge (size!16198 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46426 d!79137))

(push 1)

