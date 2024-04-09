; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67724 () Bool)

(assert start!67724)

(declare-fun b!784967 () Bool)

(declare-datatypes ((Unit!27114 0))(
  ( (Unit!27115) )
))
(declare-fun e!436434 () Unit!27114)

(declare-fun Unit!27116 () Unit!27114)

(assert (=> b!784967 (= e!436434 Unit!27116)))

(declare-datatypes ((array!42719 0))(
  ( (array!42720 (arr!20444 (Array (_ BitVec 32) (_ BitVec 64))) (size!20865 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42719)

(declare-fun b!784968 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!436429 () Bool)

(declare-datatypes ((SeekEntryResult!8051 0))(
  ( (MissingZero!8051 (index!34571 (_ BitVec 32))) (Found!8051 (index!34572 (_ BitVec 32))) (Intermediate!8051 (undefined!8863 Bool) (index!34573 (_ BitVec 32)) (x!65544 (_ BitVec 32))) (Undefined!8051) (MissingVacant!8051 (index!34574 (_ BitVec 32))) )
))
(declare-fun lt!350003 () SeekEntryResult!8051)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42719 (_ BitVec 32)) SeekEntryResult!8051)

(assert (=> b!784968 (= e!436429 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20444 a!3186) j!159) a!3186 mask!3328) lt!350003))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!436433 () Bool)

(declare-fun lt!350004 () SeekEntryResult!8051)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!784969 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42719 (_ BitVec 32)) SeekEntryResult!8051)

(assert (=> b!784969 (= e!436433 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20444 a!3186) j!159) a!3186 mask!3328) lt!350004))))

(declare-fun b!784970 () Bool)

(declare-fun e!436430 () Bool)

(declare-fun e!436436 () Bool)

(assert (=> b!784970 (= e!436430 e!436436)))

(declare-fun res!531418 () Bool)

(assert (=> b!784970 (=> (not res!531418) (not e!436436))))

(declare-fun lt!349998 () SeekEntryResult!8051)

(declare-fun lt!349996 () SeekEntryResult!8051)

(assert (=> b!784970 (= res!531418 (= lt!349998 lt!349996))))

(declare-fun lt!349994 () array!42719)

(declare-fun lt!350000 () (_ BitVec 64))

(assert (=> b!784970 (= lt!349996 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350000 lt!349994 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784970 (= lt!349998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350000 mask!3328) lt!350000 lt!349994 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!784970 (= lt!350000 (select (store (arr!20444 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784970 (= lt!349994 (array!42720 (store (arr!20444 a!3186) i!1173 k!2102) (size!20865 a!3186)))))

(declare-fun b!784971 () Bool)

(declare-fun res!531419 () Bool)

(declare-fun e!436431 () Bool)

(assert (=> b!784971 (=> (not res!531419) (not e!436431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42719 (_ BitVec 32)) Bool)

(assert (=> b!784971 (= res!531419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784972 () Bool)

(declare-fun res!531417 () Bool)

(declare-fun e!436428 () Bool)

(assert (=> b!784972 (=> (not res!531417) (not e!436428))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42719 (_ BitVec 32)) SeekEntryResult!8051)

(assert (=> b!784972 (= res!531417 (= (seekEntryOrOpen!0 lt!350000 lt!349994 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350000 lt!349994 mask!3328)))))

(declare-fun b!784973 () Bool)

(declare-fun res!531421 () Bool)

(assert (=> b!784973 (=> (not res!531421) (not e!436431))))

(assert (=> b!784973 (= res!531421 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20865 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20865 a!3186))))))

(declare-fun b!784974 () Bool)

(assert (=> b!784974 (= e!436429 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20444 a!3186) j!159) a!3186 mask!3328) (Found!8051 j!159)))))

(declare-fun b!784976 () Bool)

(declare-fun Unit!27117 () Unit!27114)

(assert (=> b!784976 (= e!436434 Unit!27117)))

(assert (=> b!784976 false))

(declare-fun b!784977 () Bool)

(declare-fun e!436432 () Bool)

(assert (=> b!784977 (= e!436432 e!436431)))

(declare-fun res!531414 () Bool)

(assert (=> b!784977 (=> (not res!531414) (not e!436431))))

(declare-fun lt!350001 () SeekEntryResult!8051)

(assert (=> b!784977 (= res!531414 (or (= lt!350001 (MissingZero!8051 i!1173)) (= lt!350001 (MissingVacant!8051 i!1173))))))

(assert (=> b!784977 (= lt!350001 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784978 () Bool)

(declare-fun e!436438 () Bool)

(declare-fun e!436427 () Bool)

(assert (=> b!784978 (= e!436438 e!436427)))

(declare-fun res!531423 () Bool)

(assert (=> b!784978 (=> res!531423 e!436427)))

(declare-fun lt!350002 () SeekEntryResult!8051)

(assert (=> b!784978 (= res!531423 (not (= lt!350002 lt!350004)))))

(assert (=> b!784978 (= lt!350002 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20444 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784979 () Bool)

(declare-fun res!531427 () Bool)

(assert (=> b!784979 (=> (not res!531427) (not e!436432))))

(declare-fun arrayContainsKey!0 (array!42719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784979 (= res!531427 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784980 () Bool)

(declare-fun e!436437 () Bool)

(assert (=> b!784980 (= e!436427 e!436437)))

(declare-fun res!531429 () Bool)

(assert (=> b!784980 (=> res!531429 e!436437)))

(declare-fun lt!349999 () (_ BitVec 64))

(assert (=> b!784980 (= res!531429 (= lt!349999 lt!350000))))

(assert (=> b!784980 (= lt!349999 (select (store (arr!20444 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784981 () Bool)

(declare-fun res!531428 () Bool)

(assert (=> b!784981 (=> (not res!531428) (not e!436430))))

(assert (=> b!784981 (= res!531428 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20444 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784975 () Bool)

(assert (=> b!784975 (= e!436437 true)))

(assert (=> b!784975 e!436428))

(declare-fun res!531415 () Bool)

(assert (=> b!784975 (=> (not res!531415) (not e!436428))))

(assert (=> b!784975 (= res!531415 (= lt!349999 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349995 () Unit!27114)

(assert (=> b!784975 (= lt!349995 e!436434)))

(declare-fun c!87186 () Bool)

(assert (=> b!784975 (= c!87186 (= lt!349999 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!531424 () Bool)

(assert (=> start!67724 (=> (not res!531424) (not e!436432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67724 (= res!531424 (validMask!0 mask!3328))))

(assert (=> start!67724 e!436432))

(assert (=> start!67724 true))

(declare-fun array_inv!16218 (array!42719) Bool)

(assert (=> start!67724 (array_inv!16218 a!3186)))

(declare-fun b!784982 () Bool)

(declare-fun res!531420 () Bool)

(assert (=> b!784982 (=> (not res!531420) (not e!436432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784982 (= res!531420 (validKeyInArray!0 k!2102))))

(declare-fun b!784983 () Bool)

(declare-fun res!531416 () Bool)

(assert (=> b!784983 (=> (not res!531416) (not e!436430))))

(assert (=> b!784983 (= res!531416 e!436429)))

(declare-fun c!87185 () Bool)

(assert (=> b!784983 (= c!87185 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784984 () Bool)

(assert (=> b!784984 (= e!436431 e!436430)))

(declare-fun res!531430 () Bool)

(assert (=> b!784984 (=> (not res!531430) (not e!436430))))

(assert (=> b!784984 (= res!531430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20444 a!3186) j!159) mask!3328) (select (arr!20444 a!3186) j!159) a!3186 mask!3328) lt!350003))))

(assert (=> b!784984 (= lt!350003 (Intermediate!8051 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784985 () Bool)

(declare-fun res!531413 () Bool)

(assert (=> b!784985 (=> (not res!531413) (not e!436432))))

(assert (=> b!784985 (= res!531413 (and (= (size!20865 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20865 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20865 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784986 () Bool)

(declare-fun res!531426 () Bool)

(assert (=> b!784986 (=> (not res!531426) (not e!436432))))

(assert (=> b!784986 (= res!531426 (validKeyInArray!0 (select (arr!20444 a!3186) j!159)))))

(declare-fun b!784987 () Bool)

(assert (=> b!784987 (= e!436436 (not e!436438))))

(declare-fun res!531425 () Bool)

(assert (=> b!784987 (=> res!531425 e!436438)))

(assert (=> b!784987 (= res!531425 (or (not (is-Intermediate!8051 lt!349996)) (bvslt x!1131 (x!65544 lt!349996)) (not (= x!1131 (x!65544 lt!349996))) (not (= index!1321 (index!34573 lt!349996)))))))

(assert (=> b!784987 e!436433))

(declare-fun res!531412 () Bool)

(assert (=> b!784987 (=> (not res!531412) (not e!436433))))

(declare-fun lt!350005 () SeekEntryResult!8051)

(assert (=> b!784987 (= res!531412 (= lt!350005 lt!350004))))

(assert (=> b!784987 (= lt!350004 (Found!8051 j!159))))

(assert (=> b!784987 (= lt!350005 (seekEntryOrOpen!0 (select (arr!20444 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784987 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349997 () Unit!27114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27114)

(assert (=> b!784987 (= lt!349997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784988 () Bool)

(declare-fun res!531422 () Bool)

(assert (=> b!784988 (=> (not res!531422) (not e!436431))))

(declare-datatypes ((List!14499 0))(
  ( (Nil!14496) (Cons!14495 (h!15618 (_ BitVec 64)) (t!20822 List!14499)) )
))
(declare-fun arrayNoDuplicates!0 (array!42719 (_ BitVec 32) List!14499) Bool)

(assert (=> b!784988 (= res!531422 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14496))))

(declare-fun b!784989 () Bool)

(assert (=> b!784989 (= e!436428 (= lt!350005 lt!350002))))

(assert (= (and start!67724 res!531424) b!784985))

(assert (= (and b!784985 res!531413) b!784986))

(assert (= (and b!784986 res!531426) b!784982))

(assert (= (and b!784982 res!531420) b!784979))

(assert (= (and b!784979 res!531427) b!784977))

(assert (= (and b!784977 res!531414) b!784971))

(assert (= (and b!784971 res!531419) b!784988))

(assert (= (and b!784988 res!531422) b!784973))

(assert (= (and b!784973 res!531421) b!784984))

(assert (= (and b!784984 res!531430) b!784981))

(assert (= (and b!784981 res!531428) b!784983))

(assert (= (and b!784983 c!87185) b!784968))

(assert (= (and b!784983 (not c!87185)) b!784974))

(assert (= (and b!784983 res!531416) b!784970))

(assert (= (and b!784970 res!531418) b!784987))

(assert (= (and b!784987 res!531412) b!784969))

(assert (= (and b!784987 (not res!531425)) b!784978))

(assert (= (and b!784978 (not res!531423)) b!784980))

(assert (= (and b!784980 (not res!531429)) b!784975))

(assert (= (and b!784975 c!87186) b!784976))

(assert (= (and b!784975 (not c!87186)) b!784967))

(assert (= (and b!784975 res!531415) b!784972))

(assert (= (and b!784972 res!531417) b!784989))

(declare-fun m!727197 () Bool)

(assert (=> b!784974 m!727197))

(assert (=> b!784974 m!727197))

(declare-fun m!727199 () Bool)

(assert (=> b!784974 m!727199))

(declare-fun m!727201 () Bool)

(assert (=> b!784970 m!727201))

(declare-fun m!727203 () Bool)

(assert (=> b!784970 m!727203))

(declare-fun m!727205 () Bool)

(assert (=> b!784970 m!727205))

(declare-fun m!727207 () Bool)

(assert (=> b!784970 m!727207))

(assert (=> b!784970 m!727203))

(declare-fun m!727209 () Bool)

(assert (=> b!784970 m!727209))

(declare-fun m!727211 () Bool)

(assert (=> start!67724 m!727211))

(declare-fun m!727213 () Bool)

(assert (=> start!67724 m!727213))

(assert (=> b!784969 m!727197))

(assert (=> b!784969 m!727197))

(declare-fun m!727215 () Bool)

(assert (=> b!784969 m!727215))

(declare-fun m!727217 () Bool)

(assert (=> b!784982 m!727217))

(assert (=> b!784987 m!727197))

(assert (=> b!784987 m!727197))

(declare-fun m!727219 () Bool)

(assert (=> b!784987 m!727219))

(declare-fun m!727221 () Bool)

(assert (=> b!784987 m!727221))

(declare-fun m!727223 () Bool)

(assert (=> b!784987 m!727223))

(assert (=> b!784980 m!727205))

(declare-fun m!727225 () Bool)

(assert (=> b!784980 m!727225))

(assert (=> b!784986 m!727197))

(assert (=> b!784986 m!727197))

(declare-fun m!727227 () Bool)

(assert (=> b!784986 m!727227))

(assert (=> b!784984 m!727197))

(assert (=> b!784984 m!727197))

(declare-fun m!727229 () Bool)

(assert (=> b!784984 m!727229))

(assert (=> b!784984 m!727229))

(assert (=> b!784984 m!727197))

(declare-fun m!727231 () Bool)

(assert (=> b!784984 m!727231))

(assert (=> b!784968 m!727197))

(assert (=> b!784968 m!727197))

(declare-fun m!727233 () Bool)

(assert (=> b!784968 m!727233))

(declare-fun m!727235 () Bool)

(assert (=> b!784988 m!727235))

(declare-fun m!727237 () Bool)

(assert (=> b!784972 m!727237))

(declare-fun m!727239 () Bool)

(assert (=> b!784972 m!727239))

(declare-fun m!727241 () Bool)

(assert (=> b!784977 m!727241))

(declare-fun m!727243 () Bool)

(assert (=> b!784971 m!727243))

(declare-fun m!727245 () Bool)

(assert (=> b!784979 m!727245))

(declare-fun m!727247 () Bool)

(assert (=> b!784981 m!727247))

(assert (=> b!784978 m!727197))

(assert (=> b!784978 m!727197))

(assert (=> b!784978 m!727199))

(push 1)

