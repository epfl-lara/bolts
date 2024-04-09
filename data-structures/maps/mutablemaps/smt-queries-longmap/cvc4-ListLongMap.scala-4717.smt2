; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65384 () Bool)

(assert start!65384)

(declare-fun b!743118 () Bool)

(declare-fun e!415252 () Bool)

(declare-fun e!415247 () Bool)

(assert (=> b!743118 (= e!415252 e!415247)))

(declare-fun res!500373 () Bool)

(assert (=> b!743118 (=> (not res!500373) (not e!415247))))

(declare-datatypes ((SeekEntryResult!7472 0))(
  ( (MissingZero!7472 (index!32255 (_ BitVec 32))) (Found!7472 (index!32256 (_ BitVec 32))) (Intermediate!7472 (undefined!8284 Bool) (index!32257 (_ BitVec 32)) (x!63247 (_ BitVec 32))) (Undefined!7472) (MissingVacant!7472 (index!32258 (_ BitVec 32))) )
))
(declare-fun lt!330131 () SeekEntryResult!7472)

(declare-fun lt!330136 () SeekEntryResult!7472)

(assert (=> b!743118 (= res!500373 (= lt!330131 lt!330136))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!330133 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41510 0))(
  ( (array!41511 (arr!19865 (Array (_ BitVec 32) (_ BitVec 64))) (size!20286 (_ BitVec 32))) )
))
(declare-fun lt!330130 () array!41510)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41510 (_ BitVec 32)) SeekEntryResult!7472)

(assert (=> b!743118 (= lt!330136 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330133 lt!330130 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743118 (= lt!330131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330133 mask!3328) lt!330133 lt!330130 mask!3328))))

(declare-fun a!3186 () array!41510)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!743118 (= lt!330133 (select (store (arr!19865 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743118 (= lt!330130 (array!41511 (store (arr!19865 a!3186) i!1173 k!2102) (size!20286 a!3186)))))

(declare-fun b!743119 () Bool)

(declare-fun res!500376 () Bool)

(assert (=> b!743119 (=> (not res!500376) (not e!415252))))

(declare-fun e!415248 () Bool)

(assert (=> b!743119 (= res!500376 e!415248)))

(declare-fun c!81756 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743119 (= c!81756 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743121 () Bool)

(declare-fun res!500367 () Bool)

(assert (=> b!743121 (=> (not res!500367) (not e!415252))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!743121 (= res!500367 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19865 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743122 () Bool)

(declare-fun e!415249 () Bool)

(declare-fun e!415253 () Bool)

(assert (=> b!743122 (= e!415249 e!415253)))

(declare-fun res!500384 () Bool)

(assert (=> b!743122 (=> (not res!500384) (not e!415253))))

(declare-fun lt!330132 () SeekEntryResult!7472)

(assert (=> b!743122 (= res!500384 (or (= lt!330132 (MissingZero!7472 i!1173)) (= lt!330132 (MissingVacant!7472 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41510 (_ BitVec 32)) SeekEntryResult!7472)

(assert (=> b!743122 (= lt!330132 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743123 () Bool)

(assert (=> b!743123 (= e!415253 e!415252)))

(declare-fun res!500374 () Bool)

(assert (=> b!743123 (=> (not res!500374) (not e!415252))))

(declare-fun lt!330134 () SeekEntryResult!7472)

(assert (=> b!743123 (= res!500374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19865 a!3186) j!159) mask!3328) (select (arr!19865 a!3186) j!159) a!3186 mask!3328) lt!330134))))

(assert (=> b!743123 (= lt!330134 (Intermediate!7472 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743124 () Bool)

(declare-fun res!500375 () Bool)

(assert (=> b!743124 (=> (not res!500375) (not e!415253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41510 (_ BitVec 32)) Bool)

(assert (=> b!743124 (= res!500375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743125 () Bool)

(declare-fun res!500371 () Bool)

(assert (=> b!743125 (=> (not res!500371) (not e!415249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743125 (= res!500371 (validKeyInArray!0 (select (arr!19865 a!3186) j!159)))))

(declare-fun b!743126 () Bool)

(declare-fun res!500368 () Bool)

(assert (=> b!743126 (=> (not res!500368) (not e!415249))))

(declare-fun arrayContainsKey!0 (array!41510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743126 (= res!500368 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743127 () Bool)

(assert (=> b!743127 (= e!415248 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19865 a!3186) j!159) a!3186 mask!3328) lt!330134))))

(declare-fun b!743128 () Bool)

(declare-fun res!500377 () Bool)

(assert (=> b!743128 (=> (not res!500377) (not e!415249))))

(assert (=> b!743128 (= res!500377 (validKeyInArray!0 k!2102))))

(declare-fun res!500385 () Bool)

(assert (=> start!65384 (=> (not res!500385) (not e!415249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65384 (= res!500385 (validMask!0 mask!3328))))

(assert (=> start!65384 e!415249))

(assert (=> start!65384 true))

(declare-fun array_inv!15639 (array!41510) Bool)

(assert (=> start!65384 (array_inv!15639 a!3186)))

(declare-fun b!743120 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41510 (_ BitVec 32)) SeekEntryResult!7472)

(assert (=> b!743120 (= e!415248 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19865 a!3186) j!159) a!3186 mask!3328) (Found!7472 j!159)))))

(declare-fun b!743129 () Bool)

(declare-fun res!500378 () Bool)

(assert (=> b!743129 (=> (not res!500378) (not e!415249))))

(assert (=> b!743129 (= res!500378 (and (= (size!20286 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20286 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20286 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743130 () Bool)

(declare-fun res!500379 () Bool)

(declare-fun e!415254 () Bool)

(assert (=> b!743130 (=> res!500379 e!415254)))

(assert (=> b!743130 (= res!500379 (not (= (seekEntryOrOpen!0 lt!330133 lt!330130 mask!3328) (Found!7472 index!1321))))))

(declare-fun b!743131 () Bool)

(assert (=> b!743131 (= e!415254 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743132 () Bool)

(assert (=> b!743132 (= e!415247 (not e!415254))))

(declare-fun res!500381 () Bool)

(assert (=> b!743132 (=> res!500381 e!415254)))

(assert (=> b!743132 (= res!500381 (or (not (is-Intermediate!7472 lt!330136)) (bvslt x!1131 (x!63247 lt!330136)) (not (= x!1131 (x!63247 lt!330136))) (not (= index!1321 (index!32257 lt!330136)))))))

(declare-fun e!415246 () Bool)

(assert (=> b!743132 e!415246))

(declare-fun res!500383 () Bool)

(assert (=> b!743132 (=> (not res!500383) (not e!415246))))

(assert (=> b!743132 (= res!500383 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25424 0))(
  ( (Unit!25425) )
))
(declare-fun lt!330135 () Unit!25424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25424)

(assert (=> b!743132 (= lt!330135 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743133 () Bool)

(declare-fun res!500372 () Bool)

(assert (=> b!743133 (=> res!500372 e!415254)))

(assert (=> b!743133 (= res!500372 (or (not (= (select (store (arr!19865 a!3186) i!1173 k!2102) index!1321) lt!330133)) (undefined!8284 lt!330136)))))

(declare-fun b!743134 () Bool)

(declare-fun res!500369 () Bool)

(assert (=> b!743134 (=> res!500369 e!415254)))

(assert (=> b!743134 (= res!500369 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19865 a!3186) j!159) a!3186 mask!3328) (Found!7472 j!159))))))

(declare-fun b!743135 () Bool)

(declare-fun res!500370 () Bool)

(assert (=> b!743135 (=> (not res!500370) (not e!415253))))

(declare-datatypes ((List!13920 0))(
  ( (Nil!13917) (Cons!13916 (h!14988 (_ BitVec 64)) (t!20243 List!13920)) )
))
(declare-fun arrayNoDuplicates!0 (array!41510 (_ BitVec 32) List!13920) Bool)

(assert (=> b!743135 (= res!500370 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13917))))

(declare-fun b!743136 () Bool)

(declare-fun res!500382 () Bool)

(assert (=> b!743136 (=> (not res!500382) (not e!415253))))

(assert (=> b!743136 (= res!500382 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20286 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20286 a!3186))))))

(declare-fun b!743137 () Bool)

(declare-fun e!415251 () Bool)

(assert (=> b!743137 (= e!415246 e!415251)))

(declare-fun res!500380 () Bool)

(assert (=> b!743137 (=> (not res!500380) (not e!415251))))

(declare-fun lt!330137 () SeekEntryResult!7472)

(assert (=> b!743137 (= res!500380 (= (seekEntryOrOpen!0 (select (arr!19865 a!3186) j!159) a!3186 mask!3328) lt!330137))))

(assert (=> b!743137 (= lt!330137 (Found!7472 j!159))))

(declare-fun b!743138 () Bool)

(assert (=> b!743138 (= e!415251 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19865 a!3186) j!159) a!3186 mask!3328) lt!330137))))

(assert (= (and start!65384 res!500385) b!743129))

(assert (= (and b!743129 res!500378) b!743125))

(assert (= (and b!743125 res!500371) b!743128))

(assert (= (and b!743128 res!500377) b!743126))

(assert (= (and b!743126 res!500368) b!743122))

(assert (= (and b!743122 res!500384) b!743124))

(assert (= (and b!743124 res!500375) b!743135))

(assert (= (and b!743135 res!500370) b!743136))

(assert (= (and b!743136 res!500382) b!743123))

(assert (= (and b!743123 res!500374) b!743121))

(assert (= (and b!743121 res!500367) b!743119))

(assert (= (and b!743119 c!81756) b!743127))

(assert (= (and b!743119 (not c!81756)) b!743120))

(assert (= (and b!743119 res!500376) b!743118))

(assert (= (and b!743118 res!500373) b!743132))

(assert (= (and b!743132 res!500383) b!743137))

(assert (= (and b!743137 res!500380) b!743138))

(assert (= (and b!743132 (not res!500381)) b!743134))

(assert (= (and b!743134 (not res!500369)) b!743133))

(assert (= (and b!743133 (not res!500372)) b!743130))

(assert (= (and b!743130 (not res!500379)) b!743131))

(declare-fun m!693941 () Bool)

(assert (=> b!743118 m!693941))

(declare-fun m!693943 () Bool)

(assert (=> b!743118 m!693943))

(declare-fun m!693945 () Bool)

(assert (=> b!743118 m!693945))

(declare-fun m!693947 () Bool)

(assert (=> b!743118 m!693947))

(assert (=> b!743118 m!693943))

(declare-fun m!693949 () Bool)

(assert (=> b!743118 m!693949))

(declare-fun m!693951 () Bool)

(assert (=> b!743138 m!693951))

(assert (=> b!743138 m!693951))

(declare-fun m!693953 () Bool)

(assert (=> b!743138 m!693953))

(assert (=> b!743120 m!693951))

(assert (=> b!743120 m!693951))

(declare-fun m!693955 () Bool)

(assert (=> b!743120 m!693955))

(declare-fun m!693957 () Bool)

(assert (=> b!743135 m!693957))

(assert (=> b!743134 m!693951))

(assert (=> b!743134 m!693951))

(assert (=> b!743134 m!693955))

(assert (=> b!743137 m!693951))

(assert (=> b!743137 m!693951))

(declare-fun m!693959 () Bool)

(assert (=> b!743137 m!693959))

(declare-fun m!693961 () Bool)

(assert (=> b!743124 m!693961))

(assert (=> b!743127 m!693951))

(assert (=> b!743127 m!693951))

(declare-fun m!693963 () Bool)

(assert (=> b!743127 m!693963))

(assert (=> b!743133 m!693945))

(declare-fun m!693965 () Bool)

(assert (=> b!743133 m!693965))

(declare-fun m!693967 () Bool)

(assert (=> b!743128 m!693967))

(declare-fun m!693969 () Bool)

(assert (=> b!743132 m!693969))

(declare-fun m!693971 () Bool)

(assert (=> b!743132 m!693971))

(assert (=> b!743123 m!693951))

(assert (=> b!743123 m!693951))

(declare-fun m!693973 () Bool)

(assert (=> b!743123 m!693973))

(assert (=> b!743123 m!693973))

(assert (=> b!743123 m!693951))

(declare-fun m!693975 () Bool)

(assert (=> b!743123 m!693975))

(assert (=> b!743125 m!693951))

(assert (=> b!743125 m!693951))

(declare-fun m!693977 () Bool)

(assert (=> b!743125 m!693977))

(declare-fun m!693979 () Bool)

(assert (=> b!743121 m!693979))

(declare-fun m!693981 () Bool)

(assert (=> b!743122 m!693981))

(declare-fun m!693983 () Bool)

(assert (=> b!743126 m!693983))

(declare-fun m!693985 () Bool)

(assert (=> b!743130 m!693985))

(declare-fun m!693987 () Bool)

(assert (=> start!65384 m!693987))

(declare-fun m!693989 () Bool)

(assert (=> start!65384 m!693989))

(push 1)

