; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65714 () Bool)

(assert start!65714)

(declare-fun b!753295 () Bool)

(declare-datatypes ((Unit!25950 0))(
  ( (Unit!25951) )
))
(declare-fun e!420183 () Unit!25950)

(declare-fun Unit!25952 () Unit!25950)

(assert (=> b!753295 (= e!420183 Unit!25952)))

(declare-fun b!753296 () Bool)

(declare-fun res!508966 () Bool)

(declare-fun e!420185 () Bool)

(assert (=> b!753296 (=> (not res!508966) (not e!420185))))

(declare-datatypes ((array!41840 0))(
  ( (array!41841 (arr!20030 (Array (_ BitVec 32) (_ BitVec 64))) (size!20451 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41840)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!753296 (= res!508966 (and (= (size!20451 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20451 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20451 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753297 () Bool)

(declare-fun Unit!25953 () Unit!25950)

(assert (=> b!753297 (= e!420183 Unit!25953)))

(assert (=> b!753297 false))

(declare-fun b!753298 () Bool)

(declare-fun res!508970 () Bool)

(declare-fun e!420176 () Bool)

(assert (=> b!753298 (=> (not res!508970) (not e!420176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41840 (_ BitVec 32)) Bool)

(assert (=> b!753298 (= res!508970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!508968 () Bool)

(assert (=> start!65714 (=> (not res!508968) (not e!420185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65714 (= res!508968 (validMask!0 mask!3328))))

(assert (=> start!65714 e!420185))

(assert (=> start!65714 true))

(declare-fun array_inv!15804 (array!41840) Bool)

(assert (=> start!65714 (array_inv!15804 a!3186)))

(declare-fun b!753299 () Bool)

(declare-fun e!420184 () Bool)

(declare-datatypes ((SeekEntryResult!7637 0))(
  ( (MissingZero!7637 (index!32915 (_ BitVec 32))) (Found!7637 (index!32916 (_ BitVec 32))) (Intermediate!7637 (undefined!8449 Bool) (index!32917 (_ BitVec 32)) (x!63852 (_ BitVec 32))) (Undefined!7637) (MissingVacant!7637 (index!32918 (_ BitVec 32))) )
))
(declare-fun lt!335180 () SeekEntryResult!7637)

(declare-fun lt!335177 () SeekEntryResult!7637)

(assert (=> b!753299 (= e!420184 (= lt!335180 lt!335177))))

(declare-fun b!753300 () Bool)

(declare-fun e!420181 () Bool)

(assert (=> b!753300 (= e!420176 e!420181)))

(declare-fun res!508975 () Bool)

(assert (=> b!753300 (=> (not res!508975) (not e!420181))))

(declare-fun lt!335186 () SeekEntryResult!7637)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41840 (_ BitVec 32)) SeekEntryResult!7637)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753300 (= res!508975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20030 a!3186) j!159) mask!3328) (select (arr!20030 a!3186) j!159) a!3186 mask!3328) lt!335186))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753300 (= lt!335186 (Intermediate!7637 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753301 () Bool)

(declare-fun res!508962 () Bool)

(assert (=> b!753301 (=> (not res!508962) (not e!420185))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753301 (= res!508962 (validKeyInArray!0 k!2102))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!753302 () Bool)

(declare-fun e!420179 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41840 (_ BitVec 32)) SeekEntryResult!7637)

(assert (=> b!753302 (= e!420179 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20030 a!3186) j!159) a!3186 mask!3328) (Found!7637 j!159)))))

(declare-fun b!753303 () Bool)

(declare-fun res!508978 () Bool)

(assert (=> b!753303 (=> (not res!508978) (not e!420184))))

(declare-fun lt!335185 () (_ BitVec 64))

(declare-fun lt!335178 () array!41840)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41840 (_ BitVec 32)) SeekEntryResult!7637)

(assert (=> b!753303 (= res!508978 (= (seekEntryOrOpen!0 lt!335185 lt!335178 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335185 lt!335178 mask!3328)))))

(declare-fun b!753304 () Bool)

(declare-fun res!508979 () Bool)

(assert (=> b!753304 (=> (not res!508979) (not e!420185))))

(assert (=> b!753304 (= res!508979 (validKeyInArray!0 (select (arr!20030 a!3186) j!159)))))

(declare-fun b!753305 () Bool)

(declare-fun res!508980 () Bool)

(assert (=> b!753305 (=> (not res!508980) (not e!420181))))

(assert (=> b!753305 (= res!508980 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20030 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753306 () Bool)

(declare-fun e!420175 () Bool)

(declare-fun e!420178 () Bool)

(assert (=> b!753306 (= e!420175 e!420178)))

(declare-fun res!508967 () Bool)

(assert (=> b!753306 (=> res!508967 e!420178)))

(declare-fun lt!335175 () (_ BitVec 64))

(assert (=> b!753306 (= res!508967 (= lt!335175 lt!335185))))

(assert (=> b!753306 (= lt!335175 (select (store (arr!20030 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753307 () Bool)

(declare-fun res!508964 () Bool)

(assert (=> b!753307 (=> (not res!508964) (not e!420181))))

(assert (=> b!753307 (= res!508964 e!420179)))

(declare-fun c!82547 () Bool)

(assert (=> b!753307 (= c!82547 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753308 () Bool)

(declare-fun e!420182 () Bool)

(declare-fun e!420186 () Bool)

(assert (=> b!753308 (= e!420182 (not e!420186))))

(declare-fun res!508971 () Bool)

(assert (=> b!753308 (=> res!508971 e!420186)))

(declare-fun lt!335184 () SeekEntryResult!7637)

(assert (=> b!753308 (= res!508971 (or (not (is-Intermediate!7637 lt!335184)) (bvslt x!1131 (x!63852 lt!335184)) (not (= x!1131 (x!63852 lt!335184))) (not (= index!1321 (index!32917 lt!335184)))))))

(declare-fun e!420180 () Bool)

(assert (=> b!753308 e!420180))

(declare-fun res!508972 () Bool)

(assert (=> b!753308 (=> (not res!508972) (not e!420180))))

(declare-fun lt!335179 () SeekEntryResult!7637)

(assert (=> b!753308 (= res!508972 (= lt!335180 lt!335179))))

(assert (=> b!753308 (= lt!335179 (Found!7637 j!159))))

(assert (=> b!753308 (= lt!335180 (seekEntryOrOpen!0 (select (arr!20030 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753308 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335181 () Unit!25950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25950)

(assert (=> b!753308 (= lt!335181 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753309 () Bool)

(declare-fun res!508977 () Bool)

(assert (=> b!753309 (=> (not res!508977) (not e!420176))))

(declare-datatypes ((List!14085 0))(
  ( (Nil!14082) (Cons!14081 (h!15153 (_ BitVec 64)) (t!20408 List!14085)) )
))
(declare-fun arrayNoDuplicates!0 (array!41840 (_ BitVec 32) List!14085) Bool)

(assert (=> b!753309 (= res!508977 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14082))))

(declare-fun b!753310 () Bool)

(assert (=> b!753310 (= e!420179 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20030 a!3186) j!159) a!3186 mask!3328) lt!335186))))

(declare-fun b!753311 () Bool)

(assert (=> b!753311 (= e!420186 e!420175)))

(declare-fun res!508965 () Bool)

(assert (=> b!753311 (=> res!508965 e!420175)))

(assert (=> b!753311 (= res!508965 (not (= lt!335177 lt!335179)))))

(assert (=> b!753311 (= lt!335177 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20030 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753312 () Bool)

(assert (=> b!753312 (= e!420181 e!420182)))

(declare-fun res!508963 () Bool)

(assert (=> b!753312 (=> (not res!508963) (not e!420182))))

(declare-fun lt!335176 () SeekEntryResult!7637)

(assert (=> b!753312 (= res!508963 (= lt!335176 lt!335184))))

(assert (=> b!753312 (= lt!335184 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335185 lt!335178 mask!3328))))

(assert (=> b!753312 (= lt!335176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335185 mask!3328) lt!335185 lt!335178 mask!3328))))

(assert (=> b!753312 (= lt!335185 (select (store (arr!20030 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753312 (= lt!335178 (array!41841 (store (arr!20030 a!3186) i!1173 k!2102) (size!20451 a!3186)))))

(declare-fun b!753313 () Bool)

(assert (=> b!753313 (= e!420180 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20030 a!3186) j!159) a!3186 mask!3328) lt!335179))))

(declare-fun b!753314 () Bool)

(assert (=> b!753314 (= e!420185 e!420176)))

(declare-fun res!508974 () Bool)

(assert (=> b!753314 (=> (not res!508974) (not e!420176))))

(declare-fun lt!335183 () SeekEntryResult!7637)

(assert (=> b!753314 (= res!508974 (or (= lt!335183 (MissingZero!7637 i!1173)) (= lt!335183 (MissingVacant!7637 i!1173))))))

(assert (=> b!753314 (= lt!335183 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753315 () Bool)

(declare-fun res!508973 () Bool)

(assert (=> b!753315 (=> (not res!508973) (not e!420176))))

(assert (=> b!753315 (= res!508973 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20451 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20451 a!3186))))))

(declare-fun b!753316 () Bool)

(declare-fun res!508969 () Bool)

(assert (=> b!753316 (=> (not res!508969) (not e!420185))))

(declare-fun arrayContainsKey!0 (array!41840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753316 (= res!508969 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753317 () Bool)

(assert (=> b!753317 (= e!420178 true)))

(assert (=> b!753317 e!420184))

(declare-fun res!508976 () Bool)

(assert (=> b!753317 (=> (not res!508976) (not e!420184))))

(assert (=> b!753317 (= res!508976 (= lt!335175 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335182 () Unit!25950)

(assert (=> b!753317 (= lt!335182 e!420183)))

(declare-fun c!82548 () Bool)

(assert (=> b!753317 (= c!82548 (= lt!335175 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65714 res!508968) b!753296))

(assert (= (and b!753296 res!508966) b!753304))

(assert (= (and b!753304 res!508979) b!753301))

(assert (= (and b!753301 res!508962) b!753316))

(assert (= (and b!753316 res!508969) b!753314))

(assert (= (and b!753314 res!508974) b!753298))

(assert (= (and b!753298 res!508970) b!753309))

(assert (= (and b!753309 res!508977) b!753315))

(assert (= (and b!753315 res!508973) b!753300))

(assert (= (and b!753300 res!508975) b!753305))

(assert (= (and b!753305 res!508980) b!753307))

(assert (= (and b!753307 c!82547) b!753310))

(assert (= (and b!753307 (not c!82547)) b!753302))

(assert (= (and b!753307 res!508964) b!753312))

(assert (= (and b!753312 res!508963) b!753308))

(assert (= (and b!753308 res!508972) b!753313))

(assert (= (and b!753308 (not res!508971)) b!753311))

(assert (= (and b!753311 (not res!508965)) b!753306))

(assert (= (and b!753306 (not res!508967)) b!753317))

(assert (= (and b!753317 c!82548) b!753297))

(assert (= (and b!753317 (not c!82548)) b!753295))

(assert (= (and b!753317 res!508976) b!753303))

(assert (= (and b!753303 res!508978) b!753299))

(declare-fun m!702093 () Bool)

(assert (=> b!753309 m!702093))

(declare-fun m!702095 () Bool)

(assert (=> b!753306 m!702095))

(declare-fun m!702097 () Bool)

(assert (=> b!753306 m!702097))

(declare-fun m!702099 () Bool)

(assert (=> b!753311 m!702099))

(assert (=> b!753311 m!702099))

(declare-fun m!702101 () Bool)

(assert (=> b!753311 m!702101))

(declare-fun m!702103 () Bool)

(assert (=> b!753314 m!702103))

(assert (=> b!753302 m!702099))

(assert (=> b!753302 m!702099))

(assert (=> b!753302 m!702101))

(declare-fun m!702105 () Bool)

(assert (=> b!753316 m!702105))

(assert (=> b!753300 m!702099))

(assert (=> b!753300 m!702099))

(declare-fun m!702107 () Bool)

(assert (=> b!753300 m!702107))

(assert (=> b!753300 m!702107))

(assert (=> b!753300 m!702099))

(declare-fun m!702109 () Bool)

(assert (=> b!753300 m!702109))

(assert (=> b!753304 m!702099))

(assert (=> b!753304 m!702099))

(declare-fun m!702111 () Bool)

(assert (=> b!753304 m!702111))

(declare-fun m!702113 () Bool)

(assert (=> start!65714 m!702113))

(declare-fun m!702115 () Bool)

(assert (=> start!65714 m!702115))

(assert (=> b!753308 m!702099))

(assert (=> b!753308 m!702099))

(declare-fun m!702117 () Bool)

(assert (=> b!753308 m!702117))

(declare-fun m!702119 () Bool)

(assert (=> b!753308 m!702119))

(declare-fun m!702121 () Bool)

(assert (=> b!753308 m!702121))

(declare-fun m!702123 () Bool)

(assert (=> b!753303 m!702123))

(declare-fun m!702125 () Bool)

(assert (=> b!753303 m!702125))

(declare-fun m!702127 () Bool)

(assert (=> b!753305 m!702127))

(assert (=> b!753310 m!702099))

(assert (=> b!753310 m!702099))

(declare-fun m!702129 () Bool)

(assert (=> b!753310 m!702129))

(declare-fun m!702131 () Bool)

(assert (=> b!753301 m!702131))

(assert (=> b!753313 m!702099))

(assert (=> b!753313 m!702099))

(declare-fun m!702133 () Bool)

(assert (=> b!753313 m!702133))

(declare-fun m!702135 () Bool)

(assert (=> b!753298 m!702135))

(declare-fun m!702137 () Bool)

(assert (=> b!753312 m!702137))

(declare-fun m!702139 () Bool)

(assert (=> b!753312 m!702139))

(assert (=> b!753312 m!702137))

(assert (=> b!753312 m!702095))

(declare-fun m!702141 () Bool)

(assert (=> b!753312 m!702141))

(declare-fun m!702143 () Bool)

(assert (=> b!753312 m!702143))

(push 1)

