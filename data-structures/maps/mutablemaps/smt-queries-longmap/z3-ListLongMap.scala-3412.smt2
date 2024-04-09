; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47406 () Bool)

(assert start!47406)

(declare-fun b!521089 () Bool)

(declare-fun res!319060 () Bool)

(declare-fun e!304030 () Bool)

(assert (=> b!521089 (=> (not res!319060) (not e!304030))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521089 (= res!319060 (validKeyInArray!0 k0!2280))))

(declare-fun b!521090 () Bool)

(declare-datatypes ((Unit!16158 0))(
  ( (Unit!16159) )
))
(declare-fun e!304034 () Unit!16158)

(declare-fun Unit!16160 () Unit!16158)

(assert (=> b!521090 (= e!304034 Unit!16160)))

(declare-fun lt!238824 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4423 0))(
  ( (MissingZero!4423 (index!19895 (_ BitVec 32))) (Found!4423 (index!19896 (_ BitVec 32))) (Intermediate!4423 (undefined!5235 Bool) (index!19897 (_ BitVec 32)) (x!48908 (_ BitVec 32))) (Undefined!4423) (MissingVacant!4423 (index!19898 (_ BitVec 32))) )
))
(declare-fun lt!238821 () SeekEntryResult!4423)

(declare-datatypes ((array!33192 0))(
  ( (array!33193 (arr!15949 (Array (_ BitVec 32) (_ BitVec 64))) (size!16313 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33192)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238823 () Unit!16158)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33192 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16158)

(assert (=> b!521090 (= lt!238823 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238824 #b00000000000000000000000000000000 (index!19897 lt!238821) (x!48908 lt!238821) mask!3524))))

(declare-fun res!319068 () Bool)

(declare-fun lt!238822 () (_ BitVec 64))

(declare-fun lt!238827 () array!33192)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33192 (_ BitVec 32)) SeekEntryResult!4423)

(assert (=> b!521090 (= res!319068 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238824 lt!238822 lt!238827 mask!3524) (Intermediate!4423 false (index!19897 lt!238821) (x!48908 lt!238821))))))

(declare-fun e!304033 () Bool)

(assert (=> b!521090 (=> (not res!319068) (not e!304033))))

(assert (=> b!521090 e!304033))

(declare-fun b!521091 () Bool)

(declare-fun res!319069 () Bool)

(assert (=> b!521091 (=> (not res!319069) (not e!304030))))

(declare-fun arrayContainsKey!0 (array!33192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521091 (= res!319069 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521092 () Bool)

(declare-fun e!304036 () Bool)

(declare-fun e!304035 () Bool)

(assert (=> b!521092 (= e!304036 (not e!304035))))

(declare-fun res!319062 () Bool)

(assert (=> b!521092 (=> res!319062 e!304035)))

(declare-fun lt!238826 () (_ BitVec 32))

(assert (=> b!521092 (= res!319062 (= lt!238821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238826 lt!238822 lt!238827 mask!3524)))))

(assert (=> b!521092 (= lt!238821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238824 (select (arr!15949 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521092 (= lt!238826 (toIndex!0 lt!238822 mask!3524))))

(assert (=> b!521092 (= lt!238822 (select (store (arr!15949 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521092 (= lt!238824 (toIndex!0 (select (arr!15949 a!3235) j!176) mask!3524))))

(assert (=> b!521092 (= lt!238827 (array!33193 (store (arr!15949 a!3235) i!1204 k0!2280) (size!16313 a!3235)))))

(declare-fun e!304032 () Bool)

(assert (=> b!521092 e!304032))

(declare-fun res!319065 () Bool)

(assert (=> b!521092 (=> (not res!319065) (not e!304032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33192 (_ BitVec 32)) Bool)

(assert (=> b!521092 (= res!319065 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238828 () Unit!16158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33192 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16158)

(assert (=> b!521092 (= lt!238828 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521093 () Bool)

(declare-fun res!319070 () Bool)

(assert (=> b!521093 (=> (not res!319070) (not e!304030))))

(assert (=> b!521093 (= res!319070 (and (= (size!16313 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16313 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16313 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521094 () Bool)

(assert (=> b!521094 (= e!304033 false)))

(declare-fun b!521096 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33192 (_ BitVec 32)) SeekEntryResult!4423)

(assert (=> b!521096 (= e!304032 (= (seekEntryOrOpen!0 (select (arr!15949 a!3235) j!176) a!3235 mask!3524) (Found!4423 j!176)))))

(declare-fun b!521097 () Bool)

(declare-fun Unit!16161 () Unit!16158)

(assert (=> b!521097 (= e!304034 Unit!16161)))

(declare-fun b!521098 () Bool)

(assert (=> b!521098 (= e!304030 e!304036)))

(declare-fun res!319064 () Bool)

(assert (=> b!521098 (=> (not res!319064) (not e!304036))))

(declare-fun lt!238825 () SeekEntryResult!4423)

(assert (=> b!521098 (= res!319064 (or (= lt!238825 (MissingZero!4423 i!1204)) (= lt!238825 (MissingVacant!4423 i!1204))))))

(assert (=> b!521098 (= lt!238825 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521099 () Bool)

(declare-fun res!319059 () Bool)

(assert (=> b!521099 (=> (not res!319059) (not e!304036))))

(declare-datatypes ((List!10160 0))(
  ( (Nil!10157) (Cons!10156 (h!11078 (_ BitVec 64)) (t!16396 List!10160)) )
))
(declare-fun arrayNoDuplicates!0 (array!33192 (_ BitVec 32) List!10160) Bool)

(assert (=> b!521099 (= res!319059 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10157))))

(declare-fun b!521100 () Bool)

(declare-fun res!319066 () Bool)

(assert (=> b!521100 (=> res!319066 e!304035)))

(get-info :version)

(assert (=> b!521100 (= res!319066 (or (undefined!5235 lt!238821) (not ((_ is Intermediate!4423) lt!238821))))))

(declare-fun b!521101 () Bool)

(declare-fun res!319067 () Bool)

(assert (=> b!521101 (=> (not res!319067) (not e!304030))))

(assert (=> b!521101 (= res!319067 (validKeyInArray!0 (select (arr!15949 a!3235) j!176)))))

(declare-fun b!521102 () Bool)

(declare-fun res!319063 () Bool)

(assert (=> b!521102 (=> (not res!319063) (not e!304036))))

(assert (=> b!521102 (= res!319063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521095 () Bool)

(assert (=> b!521095 (= e!304035 true)))

(assert (=> b!521095 (and (or (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238829 () Unit!16158)

(assert (=> b!521095 (= lt!238829 e!304034)))

(declare-fun c!61316 () Bool)

(assert (=> b!521095 (= c!61316 (= (select (arr!15949 a!3235) (index!19897 lt!238821)) (select (arr!15949 a!3235) j!176)))))

(assert (=> b!521095 (and (bvslt (x!48908 lt!238821) #b01111111111111111111111111111110) (or (= (select (arr!15949 a!3235) (index!19897 lt!238821)) (select (arr!15949 a!3235) j!176)) (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15949 a!3235) (index!19897 lt!238821)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!319061 () Bool)

(assert (=> start!47406 (=> (not res!319061) (not e!304030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47406 (= res!319061 (validMask!0 mask!3524))))

(assert (=> start!47406 e!304030))

(assert (=> start!47406 true))

(declare-fun array_inv!11723 (array!33192) Bool)

(assert (=> start!47406 (array_inv!11723 a!3235)))

(assert (= (and start!47406 res!319061) b!521093))

(assert (= (and b!521093 res!319070) b!521101))

(assert (= (and b!521101 res!319067) b!521089))

(assert (= (and b!521089 res!319060) b!521091))

(assert (= (and b!521091 res!319069) b!521098))

(assert (= (and b!521098 res!319064) b!521102))

(assert (= (and b!521102 res!319063) b!521099))

(assert (= (and b!521099 res!319059) b!521092))

(assert (= (and b!521092 res!319065) b!521096))

(assert (= (and b!521092 (not res!319062)) b!521100))

(assert (= (and b!521100 (not res!319066)) b!521095))

(assert (= (and b!521095 c!61316) b!521090))

(assert (= (and b!521095 (not c!61316)) b!521097))

(assert (= (and b!521090 res!319068) b!521094))

(declare-fun m!502039 () Bool)

(assert (=> b!521098 m!502039))

(declare-fun m!502041 () Bool)

(assert (=> b!521089 m!502041))

(declare-fun m!502043 () Bool)

(assert (=> b!521096 m!502043))

(assert (=> b!521096 m!502043))

(declare-fun m!502045 () Bool)

(assert (=> b!521096 m!502045))

(declare-fun m!502047 () Bool)

(assert (=> b!521090 m!502047))

(declare-fun m!502049 () Bool)

(assert (=> b!521090 m!502049))

(declare-fun m!502051 () Bool)

(assert (=> b!521102 m!502051))

(declare-fun m!502053 () Bool)

(assert (=> b!521095 m!502053))

(assert (=> b!521095 m!502043))

(declare-fun m!502055 () Bool)

(assert (=> b!521091 m!502055))

(declare-fun m!502057 () Bool)

(assert (=> b!521092 m!502057))

(declare-fun m!502059 () Bool)

(assert (=> b!521092 m!502059))

(declare-fun m!502061 () Bool)

(assert (=> b!521092 m!502061))

(declare-fun m!502063 () Bool)

(assert (=> b!521092 m!502063))

(assert (=> b!521092 m!502043))

(declare-fun m!502065 () Bool)

(assert (=> b!521092 m!502065))

(assert (=> b!521092 m!502043))

(declare-fun m!502067 () Bool)

(assert (=> b!521092 m!502067))

(assert (=> b!521092 m!502043))

(declare-fun m!502069 () Bool)

(assert (=> b!521092 m!502069))

(declare-fun m!502071 () Bool)

(assert (=> b!521092 m!502071))

(assert (=> b!521101 m!502043))

(assert (=> b!521101 m!502043))

(declare-fun m!502073 () Bool)

(assert (=> b!521101 m!502073))

(declare-fun m!502075 () Bool)

(assert (=> start!47406 m!502075))

(declare-fun m!502077 () Bool)

(assert (=> start!47406 m!502077))

(declare-fun m!502079 () Bool)

(assert (=> b!521099 m!502079))

(check-sat (not b!521101) (not b!521102) (not b!521096) (not b!521091) (not b!521098) (not b!521099) (not start!47406) (not b!521090) (not b!521092) (not b!521089))
(check-sat)
