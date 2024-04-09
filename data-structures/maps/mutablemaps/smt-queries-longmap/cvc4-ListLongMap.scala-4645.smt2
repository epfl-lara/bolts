; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64664 () Bool)

(assert start!64664)

(declare-fun b!728070 () Bool)

(declare-fun res!488756 () Bool)

(declare-fun e!407597 () Bool)

(assert (=> b!728070 (=> (not res!488756) (not e!407597))))

(declare-datatypes ((array!41066 0))(
  ( (array!41067 (arr!19649 (Array (_ BitVec 32) (_ BitVec 64))) (size!20070 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41066)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728070 (= res!488756 (validKeyInArray!0 (select (arr!19649 a!3186) j!159)))))

(declare-fun b!728071 () Bool)

(declare-fun res!488758 () Bool)

(declare-fun e!407601 () Bool)

(assert (=> b!728071 (=> (not res!488758) (not e!407601))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41066 (_ BitVec 32)) Bool)

(assert (=> b!728071 (= res!488758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728072 () Bool)

(declare-fun e!407599 () Bool)

(assert (=> b!728072 (= e!407599 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!322505 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728072 (= lt!322505 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728073 () Bool)

(declare-fun res!488761 () Bool)

(assert (=> b!728073 (=> (not res!488761) (not e!407597))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728073 (= res!488761 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7256 0))(
  ( (MissingZero!7256 (index!31391 (_ BitVec 32))) (Found!7256 (index!31392 (_ BitVec 32))) (Intermediate!7256 (undefined!8068 Bool) (index!31393 (_ BitVec 32)) (x!62407 (_ BitVec 32))) (Undefined!7256) (MissingVacant!7256 (index!31394 (_ BitVec 32))) )
))
(declare-fun lt!322507 () SeekEntryResult!7256)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!728074 () Bool)

(declare-fun e!407596 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41066 (_ BitVec 32)) SeekEntryResult!7256)

(assert (=> b!728074 (= e!407596 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19649 a!3186) j!159) a!3186 mask!3328) lt!322507))))

(declare-fun res!488754 () Bool)

(assert (=> start!64664 (=> (not res!488754) (not e!407597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64664 (= res!488754 (validMask!0 mask!3328))))

(assert (=> start!64664 e!407597))

(assert (=> start!64664 true))

(declare-fun array_inv!15423 (array!41066) Bool)

(assert (=> start!64664 (array_inv!15423 a!3186)))

(declare-fun e!407600 () Bool)

(declare-fun b!728075 () Bool)

(assert (=> b!728075 (= e!407600 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19649 a!3186) j!159) a!3186 mask!3328) (Found!7256 j!159)))))

(declare-fun b!728076 () Bool)

(declare-fun res!488753 () Bool)

(assert (=> b!728076 (=> (not res!488753) (not e!407601))))

(assert (=> b!728076 (= res!488753 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20070 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20070 a!3186))))))

(declare-fun b!728077 () Bool)

(declare-fun e!407603 () Bool)

(assert (=> b!728077 (= e!407603 e!407596)))

(declare-fun res!488764 () Bool)

(assert (=> b!728077 (=> (not res!488764) (not e!407596))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41066 (_ BitVec 32)) SeekEntryResult!7256)

(assert (=> b!728077 (= res!488764 (= (seekEntryOrOpen!0 (select (arr!19649 a!3186) j!159) a!3186 mask!3328) lt!322507))))

(assert (=> b!728077 (= lt!322507 (Found!7256 j!159))))

(declare-fun b!728078 () Bool)

(declare-fun res!488763 () Bool)

(assert (=> b!728078 (=> (not res!488763) (not e!407597))))

(assert (=> b!728078 (= res!488763 (validKeyInArray!0 k!2102))))

(declare-fun b!728079 () Bool)

(assert (=> b!728079 (= e!407597 e!407601)))

(declare-fun res!488760 () Bool)

(assert (=> b!728079 (=> (not res!488760) (not e!407601))))

(declare-fun lt!322508 () SeekEntryResult!7256)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728079 (= res!488760 (or (= lt!322508 (MissingZero!7256 i!1173)) (= lt!322508 (MissingVacant!7256 i!1173))))))

(assert (=> b!728079 (= lt!322508 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728080 () Bool)

(declare-fun lt!322511 () SeekEntryResult!7256)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41066 (_ BitVec 32)) SeekEntryResult!7256)

(assert (=> b!728080 (= e!407600 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19649 a!3186) j!159) a!3186 mask!3328) lt!322511))))

(declare-fun b!728081 () Bool)

(declare-fun e!407598 () Bool)

(assert (=> b!728081 (= e!407601 e!407598)))

(declare-fun res!488759 () Bool)

(assert (=> b!728081 (=> (not res!488759) (not e!407598))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728081 (= res!488759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19649 a!3186) j!159) mask!3328) (select (arr!19649 a!3186) j!159) a!3186 mask!3328) lt!322511))))

(assert (=> b!728081 (= lt!322511 (Intermediate!7256 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728082 () Bool)

(declare-fun res!488752 () Bool)

(assert (=> b!728082 (=> (not res!488752) (not e!407597))))

(assert (=> b!728082 (= res!488752 (and (= (size!20070 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20070 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20070 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728083 () Bool)

(declare-fun res!488766 () Bool)

(assert (=> b!728083 (=> (not res!488766) (not e!407598))))

(assert (=> b!728083 (= res!488766 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19649 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728084 () Bool)

(declare-fun res!488755 () Bool)

(assert (=> b!728084 (=> (not res!488755) (not e!407601))))

(declare-datatypes ((List!13704 0))(
  ( (Nil!13701) (Cons!13700 (h!14760 (_ BitVec 64)) (t!20027 List!13704)) )
))
(declare-fun arrayNoDuplicates!0 (array!41066 (_ BitVec 32) List!13704) Bool)

(assert (=> b!728084 (= res!488755 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13701))))

(declare-fun b!728085 () Bool)

(declare-fun res!488751 () Bool)

(assert (=> b!728085 (=> (not res!488751) (not e!407598))))

(assert (=> b!728085 (= res!488751 e!407600)))

(declare-fun c!80034 () Bool)

(assert (=> b!728085 (= c!80034 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728086 () Bool)

(declare-fun e!407602 () Bool)

(assert (=> b!728086 (= e!407602 (not e!407599))))

(declare-fun res!488757 () Bool)

(assert (=> b!728086 (=> res!488757 e!407599)))

(declare-fun lt!322506 () SeekEntryResult!7256)

(assert (=> b!728086 (= res!488757 (or (not (is-Intermediate!7256 lt!322506)) (bvsge x!1131 (x!62407 lt!322506))))))

(assert (=> b!728086 e!407603))

(declare-fun res!488762 () Bool)

(assert (=> b!728086 (=> (not res!488762) (not e!407603))))

(assert (=> b!728086 (= res!488762 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24830 0))(
  ( (Unit!24831) )
))
(declare-fun lt!322509 () Unit!24830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41066 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24830)

(assert (=> b!728086 (= lt!322509 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728087 () Bool)

(assert (=> b!728087 (= e!407598 e!407602)))

(declare-fun res!488765 () Bool)

(assert (=> b!728087 (=> (not res!488765) (not e!407602))))

(declare-fun lt!322510 () SeekEntryResult!7256)

(assert (=> b!728087 (= res!488765 (= lt!322510 lt!322506))))

(declare-fun lt!322504 () (_ BitVec 64))

(declare-fun lt!322503 () array!41066)

(assert (=> b!728087 (= lt!322506 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322504 lt!322503 mask!3328))))

(assert (=> b!728087 (= lt!322510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322504 mask!3328) lt!322504 lt!322503 mask!3328))))

(assert (=> b!728087 (= lt!322504 (select (store (arr!19649 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728087 (= lt!322503 (array!41067 (store (arr!19649 a!3186) i!1173 k!2102) (size!20070 a!3186)))))

(assert (= (and start!64664 res!488754) b!728082))

(assert (= (and b!728082 res!488752) b!728070))

(assert (= (and b!728070 res!488756) b!728078))

(assert (= (and b!728078 res!488763) b!728073))

(assert (= (and b!728073 res!488761) b!728079))

(assert (= (and b!728079 res!488760) b!728071))

(assert (= (and b!728071 res!488758) b!728084))

(assert (= (and b!728084 res!488755) b!728076))

(assert (= (and b!728076 res!488753) b!728081))

(assert (= (and b!728081 res!488759) b!728083))

(assert (= (and b!728083 res!488766) b!728085))

(assert (= (and b!728085 c!80034) b!728080))

(assert (= (and b!728085 (not c!80034)) b!728075))

(assert (= (and b!728085 res!488751) b!728087))

(assert (= (and b!728087 res!488765) b!728086))

(assert (= (and b!728086 res!488762) b!728077))

(assert (= (and b!728077 res!488764) b!728074))

(assert (= (and b!728086 (not res!488757)) b!728072))

(declare-fun m!681949 () Bool)

(assert (=> b!728078 m!681949))

(declare-fun m!681951 () Bool)

(assert (=> b!728072 m!681951))

(declare-fun m!681953 () Bool)

(assert (=> b!728073 m!681953))

(declare-fun m!681955 () Bool)

(assert (=> b!728084 m!681955))

(declare-fun m!681957 () Bool)

(assert (=> b!728087 m!681957))

(declare-fun m!681959 () Bool)

(assert (=> b!728087 m!681959))

(declare-fun m!681961 () Bool)

(assert (=> b!728087 m!681961))

(declare-fun m!681963 () Bool)

(assert (=> b!728087 m!681963))

(declare-fun m!681965 () Bool)

(assert (=> b!728087 m!681965))

(assert (=> b!728087 m!681963))

(declare-fun m!681967 () Bool)

(assert (=> b!728074 m!681967))

(assert (=> b!728074 m!681967))

(declare-fun m!681969 () Bool)

(assert (=> b!728074 m!681969))

(assert (=> b!728077 m!681967))

(assert (=> b!728077 m!681967))

(declare-fun m!681971 () Bool)

(assert (=> b!728077 m!681971))

(assert (=> b!728080 m!681967))

(assert (=> b!728080 m!681967))

(declare-fun m!681973 () Bool)

(assert (=> b!728080 m!681973))

(declare-fun m!681975 () Bool)

(assert (=> start!64664 m!681975))

(declare-fun m!681977 () Bool)

(assert (=> start!64664 m!681977))

(declare-fun m!681979 () Bool)

(assert (=> b!728071 m!681979))

(assert (=> b!728075 m!681967))

(assert (=> b!728075 m!681967))

(declare-fun m!681981 () Bool)

(assert (=> b!728075 m!681981))

(assert (=> b!728081 m!681967))

(assert (=> b!728081 m!681967))

(declare-fun m!681983 () Bool)

(assert (=> b!728081 m!681983))

(assert (=> b!728081 m!681983))

(assert (=> b!728081 m!681967))

(declare-fun m!681985 () Bool)

(assert (=> b!728081 m!681985))

(assert (=> b!728070 m!681967))

(assert (=> b!728070 m!681967))

(declare-fun m!681987 () Bool)

(assert (=> b!728070 m!681987))

(declare-fun m!681989 () Bool)

(assert (=> b!728083 m!681989))

(declare-fun m!681991 () Bool)

(assert (=> b!728079 m!681991))

(declare-fun m!681993 () Bool)

(assert (=> b!728086 m!681993))

(declare-fun m!681995 () Bool)

(assert (=> b!728086 m!681995))

(push 1)

(assert (not b!728079))

(assert (not b!728071))

(assert (not b!728087))

(assert (not b!728073))

(assert (not b!728070))

(assert (not b!728084))

(assert (not b!728074))

(assert (not b!728086))

(assert (not b!728080))

(assert (not b!728077))

(assert (not b!728078))

(assert (not b!728081))

(assert (not b!728075))

(assert (not b!728072))

(assert (not start!64664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

