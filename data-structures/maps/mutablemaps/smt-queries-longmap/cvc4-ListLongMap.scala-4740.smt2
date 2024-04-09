; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65522 () Bool)

(assert start!65522)

(declare-datatypes ((array!41648 0))(
  ( (array!41649 (arr!19934 (Array (_ BitVec 32) (_ BitVec 64))) (size!20355 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41648)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7541 0))(
  ( (MissingZero!7541 (index!32531 (_ BitVec 32))) (Found!7541 (index!32532 (_ BitVec 32))) (Intermediate!7541 (undefined!8353 Bool) (index!32533 (_ BitVec 32)) (x!63500 (_ BitVec 32))) (Undefined!7541) (MissingVacant!7541 (index!32534 (_ BitVec 32))) )
))
(declare-fun lt!332031 () SeekEntryResult!7541)

(declare-fun e!417114 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!746961 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41648 (_ BitVec 32)) SeekEntryResult!7541)

(assert (=> b!746961 (= e!417114 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19934 a!3186) j!159) a!3186 mask!3328) lt!332031))))

(declare-fun b!746962 () Bool)

(declare-fun res!503789 () Bool)

(declare-fun e!417113 () Bool)

(assert (=> b!746962 (=> (not res!503789) (not e!417113))))

(declare-datatypes ((List!13989 0))(
  ( (Nil!13986) (Cons!13985 (h!15057 (_ BitVec 64)) (t!20312 List!13989)) )
))
(declare-fun arrayNoDuplicates!0 (array!41648 (_ BitVec 32) List!13989) Bool)

(assert (=> b!746962 (= res!503789 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13986))))

(declare-fun b!746963 () Bool)

(declare-fun e!417110 () Bool)

(declare-fun e!417117 () Bool)

(assert (=> b!746963 (= e!417110 e!417117)))

(declare-fun res!503788 () Bool)

(assert (=> b!746963 (=> (not res!503788) (not e!417117))))

(declare-fun lt!332035 () SeekEntryResult!7541)

(declare-fun lt!332032 () SeekEntryResult!7541)

(assert (=> b!746963 (= res!503788 (= lt!332035 lt!332032))))

(declare-fun lt!332027 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!332033 () array!41648)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41648 (_ BitVec 32)) SeekEntryResult!7541)

(assert (=> b!746963 (= lt!332032 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332027 lt!332033 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746963 (= lt!332035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332027 mask!3328) lt!332027 lt!332033 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!746963 (= lt!332027 (select (store (arr!19934 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746963 (= lt!332033 (array!41649 (store (arr!19934 a!3186) i!1173 k!2102) (size!20355 a!3186)))))

(declare-fun b!746964 () Bool)

(declare-datatypes ((Unit!25566 0))(
  ( (Unit!25567) )
))
(declare-fun e!417115 () Unit!25566)

(declare-fun Unit!25568 () Unit!25566)

(assert (=> b!746964 (= e!417115 Unit!25568)))

(assert (=> b!746964 false))

(declare-fun b!746965 () Bool)

(declare-fun e!417109 () Bool)

(assert (=> b!746965 (= e!417109 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19934 a!3186) j!159) a!3186 mask!3328) (Found!7541 j!159)))))

(declare-fun b!746966 () Bool)

(declare-fun lt!332036 () SeekEntryResult!7541)

(assert (=> b!746966 (= e!417109 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19934 a!3186) j!159) a!3186 mask!3328) lt!332036))))

(declare-fun b!746967 () Bool)

(declare-fun res!503786 () Bool)

(declare-fun e!417111 () Bool)

(assert (=> b!746967 (=> (not res!503786) (not e!417111))))

(declare-fun arrayContainsKey!0 (array!41648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746967 (= res!503786 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746968 () Bool)

(declare-fun res!503795 () Bool)

(assert (=> b!746968 (=> (not res!503795) (not e!417113))))

(assert (=> b!746968 (= res!503795 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20355 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20355 a!3186))))))

(declare-fun b!746969 () Bool)

(declare-fun res!503785 () Bool)

(assert (=> b!746969 (=> (not res!503785) (not e!417111))))

(assert (=> b!746969 (= res!503785 (and (= (size!20355 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20355 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20355 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746970 () Bool)

(declare-fun res!503792 () Bool)

(declare-fun e!417112 () Bool)

(assert (=> b!746970 (=> res!503792 e!417112)))

(assert (=> b!746970 (= res!503792 (= (select (store (arr!19934 a!3186) i!1173 k!2102) index!1321) lt!332027))))

(declare-fun res!503780 () Bool)

(assert (=> start!65522 (=> (not res!503780) (not e!417111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65522 (= res!503780 (validMask!0 mask!3328))))

(assert (=> start!65522 e!417111))

(assert (=> start!65522 true))

(declare-fun array_inv!15708 (array!41648) Bool)

(assert (=> start!65522 (array_inv!15708 a!3186)))

(declare-fun b!746971 () Bool)

(declare-fun res!503790 () Bool)

(assert (=> b!746971 (=> (not res!503790) (not e!417111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746971 (= res!503790 (validKeyInArray!0 (select (arr!19934 a!3186) j!159)))))

(declare-fun b!746972 () Bool)

(declare-fun res!503783 () Bool)

(assert (=> b!746972 (=> (not res!503783) (not e!417110))))

(assert (=> b!746972 (= res!503783 e!417109)))

(declare-fun c!81972 () Bool)

(assert (=> b!746972 (= c!81972 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746973 () Bool)

(declare-fun Unit!25569 () Unit!25566)

(assert (=> b!746973 (= e!417115 Unit!25569)))

(declare-fun b!746974 () Bool)

(assert (=> b!746974 (= e!417113 e!417110)))

(declare-fun res!503784 () Bool)

(assert (=> b!746974 (=> (not res!503784) (not e!417110))))

(assert (=> b!746974 (= res!503784 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19934 a!3186) j!159) mask!3328) (select (arr!19934 a!3186) j!159) a!3186 mask!3328) lt!332036))))

(assert (=> b!746974 (= lt!332036 (Intermediate!7541 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746975 () Bool)

(assert (=> b!746975 (= e!417111 e!417113)))

(declare-fun res!503782 () Bool)

(assert (=> b!746975 (=> (not res!503782) (not e!417113))))

(declare-fun lt!332030 () SeekEntryResult!7541)

(assert (=> b!746975 (= res!503782 (or (= lt!332030 (MissingZero!7541 i!1173)) (= lt!332030 (MissingVacant!7541 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41648 (_ BitVec 32)) SeekEntryResult!7541)

(assert (=> b!746975 (= lt!332030 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746976 () Bool)

(declare-fun res!503787 () Bool)

(assert (=> b!746976 (=> res!503787 e!417112)))

(assert (=> b!746976 (= res!503787 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19934 a!3186) j!159) a!3186 mask!3328) lt!332031)))))

(declare-fun b!746977 () Bool)

(assert (=> b!746977 (= e!417117 (not e!417112))))

(declare-fun res!503796 () Bool)

(assert (=> b!746977 (=> res!503796 e!417112)))

(assert (=> b!746977 (= res!503796 (or (not (is-Intermediate!7541 lt!332032)) (bvslt x!1131 (x!63500 lt!332032)) (not (= x!1131 (x!63500 lt!332032))) (not (= index!1321 (index!32533 lt!332032)))))))

(assert (=> b!746977 e!417114))

(declare-fun res!503791 () Bool)

(assert (=> b!746977 (=> (not res!503791) (not e!417114))))

(declare-fun lt!332034 () SeekEntryResult!7541)

(assert (=> b!746977 (= res!503791 (= lt!332034 lt!332031))))

(assert (=> b!746977 (= lt!332031 (Found!7541 j!159))))

(assert (=> b!746977 (= lt!332034 (seekEntryOrOpen!0 (select (arr!19934 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41648 (_ BitVec 32)) Bool)

(assert (=> b!746977 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332029 () Unit!25566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25566)

(assert (=> b!746977 (= lt!332029 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746978 () Bool)

(declare-fun res!503781 () Bool)

(assert (=> b!746978 (=> (not res!503781) (not e!417110))))

(assert (=> b!746978 (= res!503781 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19934 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746979 () Bool)

(declare-fun res!503793 () Bool)

(assert (=> b!746979 (=> (not res!503793) (not e!417113))))

(assert (=> b!746979 (= res!503793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746980 () Bool)

(declare-fun res!503794 () Bool)

(assert (=> b!746980 (=> (not res!503794) (not e!417111))))

(assert (=> b!746980 (= res!503794 (validKeyInArray!0 k!2102))))

(declare-fun b!746981 () Bool)

(assert (=> b!746981 (= e!417112 true)))

(assert (=> b!746981 (= (select (store (arr!19934 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332028 () Unit!25566)

(assert (=> b!746981 (= lt!332028 e!417115)))

(declare-fun c!81971 () Bool)

(assert (=> b!746981 (= c!81971 (= (select (store (arr!19934 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65522 res!503780) b!746969))

(assert (= (and b!746969 res!503785) b!746971))

(assert (= (and b!746971 res!503790) b!746980))

(assert (= (and b!746980 res!503794) b!746967))

(assert (= (and b!746967 res!503786) b!746975))

(assert (= (and b!746975 res!503782) b!746979))

(assert (= (and b!746979 res!503793) b!746962))

(assert (= (and b!746962 res!503789) b!746968))

(assert (= (and b!746968 res!503795) b!746974))

(assert (= (and b!746974 res!503784) b!746978))

(assert (= (and b!746978 res!503781) b!746972))

(assert (= (and b!746972 c!81972) b!746966))

(assert (= (and b!746972 (not c!81972)) b!746965))

(assert (= (and b!746972 res!503783) b!746963))

(assert (= (and b!746963 res!503788) b!746977))

(assert (= (and b!746977 res!503791) b!746961))

(assert (= (and b!746977 (not res!503796)) b!746976))

(assert (= (and b!746976 (not res!503787)) b!746970))

(assert (= (and b!746970 (not res!503792)) b!746981))

(assert (= (and b!746981 c!81971) b!746964))

(assert (= (and b!746981 (not c!81971)) b!746973))

(declare-fun m!697225 () Bool)

(assert (=> b!746962 m!697225))

(declare-fun m!697227 () Bool)

(assert (=> b!746966 m!697227))

(assert (=> b!746966 m!697227))

(declare-fun m!697229 () Bool)

(assert (=> b!746966 m!697229))

(declare-fun m!697231 () Bool)

(assert (=> b!746963 m!697231))

(declare-fun m!697233 () Bool)

(assert (=> b!746963 m!697233))

(declare-fun m!697235 () Bool)

(assert (=> b!746963 m!697235))

(assert (=> b!746963 m!697231))

(declare-fun m!697237 () Bool)

(assert (=> b!746963 m!697237))

(declare-fun m!697239 () Bool)

(assert (=> b!746963 m!697239))

(assert (=> b!746970 m!697233))

(declare-fun m!697241 () Bool)

(assert (=> b!746970 m!697241))

(assert (=> b!746974 m!697227))

(assert (=> b!746974 m!697227))

(declare-fun m!697243 () Bool)

(assert (=> b!746974 m!697243))

(assert (=> b!746974 m!697243))

(assert (=> b!746974 m!697227))

(declare-fun m!697245 () Bool)

(assert (=> b!746974 m!697245))

(assert (=> b!746981 m!697233))

(assert (=> b!746981 m!697241))

(declare-fun m!697247 () Bool)

(assert (=> b!746979 m!697247))

(declare-fun m!697249 () Bool)

(assert (=> b!746980 m!697249))

(declare-fun m!697251 () Bool)

(assert (=> b!746975 m!697251))

(declare-fun m!697253 () Bool)

(assert (=> start!65522 m!697253))

(declare-fun m!697255 () Bool)

(assert (=> start!65522 m!697255))

(assert (=> b!746965 m!697227))

(assert (=> b!746965 m!697227))

(declare-fun m!697257 () Bool)

(assert (=> b!746965 m!697257))

(assert (=> b!746977 m!697227))

(assert (=> b!746977 m!697227))

(declare-fun m!697259 () Bool)

(assert (=> b!746977 m!697259))

(declare-fun m!697261 () Bool)

(assert (=> b!746977 m!697261))

(declare-fun m!697263 () Bool)

(assert (=> b!746977 m!697263))

(assert (=> b!746961 m!697227))

(assert (=> b!746961 m!697227))

(declare-fun m!697265 () Bool)

(assert (=> b!746961 m!697265))

(declare-fun m!697267 () Bool)

(assert (=> b!746967 m!697267))

(declare-fun m!697269 () Bool)

(assert (=> b!746978 m!697269))

(assert (=> b!746976 m!697227))

(assert (=> b!746976 m!697227))

(assert (=> b!746976 m!697257))

(assert (=> b!746971 m!697227))

(assert (=> b!746971 m!697227))

(declare-fun m!697271 () Bool)

(assert (=> b!746971 m!697271))

(push 1)

