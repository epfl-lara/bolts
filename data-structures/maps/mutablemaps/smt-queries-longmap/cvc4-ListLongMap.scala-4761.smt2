; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65648 () Bool)

(assert start!65648)

(declare-fun b!751037 () Bool)

(declare-fun e!419006 () Bool)

(declare-fun e!419008 () Bool)

(assert (=> b!751037 (= e!419006 (not e!419008))))

(declare-fun res!507103 () Bool)

(assert (=> b!751037 (=> res!507103 e!419008)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7604 0))(
  ( (MissingZero!7604 (index!32783 (_ BitVec 32))) (Found!7604 (index!32784 (_ BitVec 32))) (Intermediate!7604 (undefined!8416 Bool) (index!32785 (_ BitVec 32)) (x!63731 (_ BitVec 32))) (Undefined!7604) (MissingVacant!7604 (index!32786 (_ BitVec 32))) )
))
(declare-fun lt!334009 () SeekEntryResult!7604)

(assert (=> b!751037 (= res!507103 (or (not (is-Intermediate!7604 lt!334009)) (bvslt x!1131 (x!63731 lt!334009)) (not (= x!1131 (x!63731 lt!334009))) (not (= index!1321 (index!32785 lt!334009)))))))

(declare-fun e!419016 () Bool)

(assert (=> b!751037 e!419016))

(declare-fun res!507101 () Bool)

(assert (=> b!751037 (=> (not res!507101) (not e!419016))))

(declare-fun lt!334008 () SeekEntryResult!7604)

(declare-fun lt!334010 () SeekEntryResult!7604)

(assert (=> b!751037 (= res!507101 (= lt!334008 lt!334010))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!751037 (= lt!334010 (Found!7604 j!159))))

(declare-datatypes ((array!41774 0))(
  ( (array!41775 (arr!19997 (Array (_ BitVec 32) (_ BitVec 64))) (size!20418 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41774)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41774 (_ BitVec 32)) SeekEntryResult!7604)

(assert (=> b!751037 (= lt!334008 (seekEntryOrOpen!0 (select (arr!19997 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41774 (_ BitVec 32)) Bool)

(assert (=> b!751037 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25818 0))(
  ( (Unit!25819) )
))
(declare-fun lt!334007 () Unit!25818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41774 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25818)

(assert (=> b!751037 (= lt!334007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751038 () Bool)

(declare-fun e!419012 () Bool)

(declare-fun e!419007 () Bool)

(assert (=> b!751038 (= e!419012 e!419007)))

(declare-fun res!507102 () Bool)

(assert (=> b!751038 (=> (not res!507102) (not e!419007))))

(declare-fun lt!334013 () SeekEntryResult!7604)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41774 (_ BitVec 32)) SeekEntryResult!7604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751038 (= res!507102 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19997 a!3186) j!159) mask!3328) (select (arr!19997 a!3186) j!159) a!3186 mask!3328) lt!334013))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751038 (= lt!334013 (Intermediate!7604 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751039 () Bool)

(declare-fun res!507110 () Bool)

(assert (=> b!751039 (=> (not res!507110) (not e!419007))))

(declare-fun e!419013 () Bool)

(assert (=> b!751039 (= res!507110 e!419013)))

(declare-fun c!82349 () Bool)

(assert (=> b!751039 (= c!82349 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751040 () Bool)

(declare-fun res!507104 () Bool)

(declare-fun e!419015 () Bool)

(assert (=> b!751040 (=> (not res!507104) (not e!419015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751040 (= res!507104 (validKeyInArray!0 (select (arr!19997 a!3186) j!159)))))

(declare-fun b!751041 () Bool)

(declare-fun res!507112 () Bool)

(assert (=> b!751041 (=> (not res!507112) (not e!419007))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751041 (= res!507112 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19997 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751042 () Bool)

(declare-fun e!419010 () Unit!25818)

(declare-fun Unit!25820 () Unit!25818)

(assert (=> b!751042 (= e!419010 Unit!25820)))

(declare-fun b!751043 () Bool)

(declare-fun e!419011 () Bool)

(assert (=> b!751043 (= e!419011 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!419014 () Bool)

(assert (=> b!751043 e!419014))

(declare-fun res!507100 () Bool)

(assert (=> b!751043 (=> (not res!507100) (not e!419014))))

(declare-fun lt!334015 () (_ BitVec 64))

(assert (=> b!751043 (= res!507100 (= lt!334015 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334011 () Unit!25818)

(assert (=> b!751043 (= lt!334011 e!419010)))

(declare-fun c!82350 () Bool)

(assert (=> b!751043 (= c!82350 (= lt!334015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751045 () Bool)

(assert (=> b!751045 (= e!419013 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19997 a!3186) j!159) a!3186 mask!3328) lt!334013))))

(declare-fun b!751046 () Bool)

(declare-fun res!507117 () Bool)

(assert (=> b!751046 (=> (not res!507117) (not e!419012))))

(declare-datatypes ((List!14052 0))(
  ( (Nil!14049) (Cons!14048 (h!15120 (_ BitVec 64)) (t!20375 List!14052)) )
))
(declare-fun arrayNoDuplicates!0 (array!41774 (_ BitVec 32) List!14052) Bool)

(assert (=> b!751046 (= res!507117 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14049))))

(declare-fun b!751047 () Bool)

(declare-fun lt!334016 () (_ BitVec 64))

(declare-fun lt!334006 () array!41774)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41774 (_ BitVec 32)) SeekEntryResult!7604)

(assert (=> b!751047 (= e!419014 (= (seekEntryOrOpen!0 lt!334016 lt!334006 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334016 lt!334006 mask!3328)))))

(declare-fun b!751048 () Bool)

(assert (=> b!751048 (= e!419016 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19997 a!3186) j!159) a!3186 mask!3328) lt!334010))))

(declare-fun b!751049 () Bool)

(declare-fun res!507106 () Bool)

(assert (=> b!751049 (=> (not res!507106) (not e!419012))))

(assert (=> b!751049 (= res!507106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751050 () Bool)

(assert (=> b!751050 (= e!419007 e!419006)))

(declare-fun res!507115 () Bool)

(assert (=> b!751050 (=> (not res!507115) (not e!419006))))

(declare-fun lt!334012 () SeekEntryResult!7604)

(assert (=> b!751050 (= res!507115 (= lt!334012 lt!334009))))

(assert (=> b!751050 (= lt!334009 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334016 lt!334006 mask!3328))))

(assert (=> b!751050 (= lt!334012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334016 mask!3328) lt!334016 lt!334006 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751050 (= lt!334016 (select (store (arr!19997 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751050 (= lt!334006 (array!41775 (store (arr!19997 a!3186) i!1173 k!2102) (size!20418 a!3186)))))

(declare-fun b!751051 () Bool)

(declare-fun res!507116 () Bool)

(assert (=> b!751051 (=> res!507116 e!419008)))

(assert (=> b!751051 (= res!507116 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19997 a!3186) j!159) a!3186 mask!3328) lt!334010)))))

(declare-fun b!751052 () Bool)

(declare-fun res!507109 () Bool)

(assert (=> b!751052 (=> (not res!507109) (not e!419015))))

(declare-fun arrayContainsKey!0 (array!41774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751052 (= res!507109 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751053 () Bool)

(assert (=> b!751053 (= e!419015 e!419012)))

(declare-fun res!507114 () Bool)

(assert (=> b!751053 (=> (not res!507114) (not e!419012))))

(declare-fun lt!334014 () SeekEntryResult!7604)

(assert (=> b!751053 (= res!507114 (or (= lt!334014 (MissingZero!7604 i!1173)) (= lt!334014 (MissingVacant!7604 i!1173))))))

(assert (=> b!751053 (= lt!334014 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751054 () Bool)

(declare-fun res!507113 () Bool)

(assert (=> b!751054 (=> (not res!507113) (not e!419015))))

(assert (=> b!751054 (= res!507113 (and (= (size!20418 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20418 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20418 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751055 () Bool)

(assert (=> b!751055 (= e!419013 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19997 a!3186) j!159) a!3186 mask!3328) (Found!7604 j!159)))))

(declare-fun b!751056 () Bool)

(assert (=> b!751056 (= e!419008 e!419011)))

(declare-fun res!507107 () Bool)

(assert (=> b!751056 (=> res!507107 e!419011)))

(assert (=> b!751056 (= res!507107 (= lt!334015 lt!334016))))

(assert (=> b!751056 (= lt!334015 (select (store (arr!19997 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751044 () Bool)

(declare-fun res!507105 () Bool)

(assert (=> b!751044 (=> (not res!507105) (not e!419015))))

(assert (=> b!751044 (= res!507105 (validKeyInArray!0 k!2102))))

(declare-fun res!507111 () Bool)

(assert (=> start!65648 (=> (not res!507111) (not e!419015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65648 (= res!507111 (validMask!0 mask!3328))))

(assert (=> start!65648 e!419015))

(assert (=> start!65648 true))

(declare-fun array_inv!15771 (array!41774) Bool)

(assert (=> start!65648 (array_inv!15771 a!3186)))

(declare-fun b!751057 () Bool)

(declare-fun res!507108 () Bool)

(assert (=> b!751057 (=> (not res!507108) (not e!419012))))

(assert (=> b!751057 (= res!507108 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20418 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20418 a!3186))))))

(declare-fun b!751058 () Bool)

(declare-fun Unit!25821 () Unit!25818)

(assert (=> b!751058 (= e!419010 Unit!25821)))

(assert (=> b!751058 false))

(assert (= (and start!65648 res!507111) b!751054))

(assert (= (and b!751054 res!507113) b!751040))

(assert (= (and b!751040 res!507104) b!751044))

(assert (= (and b!751044 res!507105) b!751052))

(assert (= (and b!751052 res!507109) b!751053))

(assert (= (and b!751053 res!507114) b!751049))

(assert (= (and b!751049 res!507106) b!751046))

(assert (= (and b!751046 res!507117) b!751057))

(assert (= (and b!751057 res!507108) b!751038))

(assert (= (and b!751038 res!507102) b!751041))

(assert (= (and b!751041 res!507112) b!751039))

(assert (= (and b!751039 c!82349) b!751045))

(assert (= (and b!751039 (not c!82349)) b!751055))

(assert (= (and b!751039 res!507110) b!751050))

(assert (= (and b!751050 res!507115) b!751037))

(assert (= (and b!751037 res!507101) b!751048))

(assert (= (and b!751037 (not res!507103)) b!751051))

(assert (= (and b!751051 (not res!507116)) b!751056))

(assert (= (and b!751056 (not res!507107)) b!751043))

(assert (= (and b!751043 c!82350) b!751058))

(assert (= (and b!751043 (not c!82350)) b!751042))

(assert (= (and b!751043 res!507100) b!751047))

(declare-fun m!700377 () Bool)

(assert (=> b!751040 m!700377))

(assert (=> b!751040 m!700377))

(declare-fun m!700379 () Bool)

(assert (=> b!751040 m!700379))

(declare-fun m!700381 () Bool)

(assert (=> start!65648 m!700381))

(declare-fun m!700383 () Bool)

(assert (=> start!65648 m!700383))

(declare-fun m!700385 () Bool)

(assert (=> b!751052 m!700385))

(declare-fun m!700387 () Bool)

(assert (=> b!751041 m!700387))

(declare-fun m!700389 () Bool)

(assert (=> b!751053 m!700389))

(declare-fun m!700391 () Bool)

(assert (=> b!751046 m!700391))

(assert (=> b!751055 m!700377))

(assert (=> b!751055 m!700377))

(declare-fun m!700393 () Bool)

(assert (=> b!751055 m!700393))

(assert (=> b!751051 m!700377))

(assert (=> b!751051 m!700377))

(assert (=> b!751051 m!700393))

(declare-fun m!700395 () Bool)

(assert (=> b!751056 m!700395))

(declare-fun m!700397 () Bool)

(assert (=> b!751056 m!700397))

(assert (=> b!751045 m!700377))

(assert (=> b!751045 m!700377))

(declare-fun m!700399 () Bool)

(assert (=> b!751045 m!700399))

(declare-fun m!700401 () Bool)

(assert (=> b!751047 m!700401))

(declare-fun m!700403 () Bool)

(assert (=> b!751047 m!700403))

(assert (=> b!751037 m!700377))

(assert (=> b!751037 m!700377))

(declare-fun m!700405 () Bool)

(assert (=> b!751037 m!700405))

(declare-fun m!700407 () Bool)

(assert (=> b!751037 m!700407))

(declare-fun m!700409 () Bool)

(assert (=> b!751037 m!700409))

(assert (=> b!751048 m!700377))

(assert (=> b!751048 m!700377))

(declare-fun m!700411 () Bool)

(assert (=> b!751048 m!700411))

(declare-fun m!700413 () Bool)

(assert (=> b!751044 m!700413))

(declare-fun m!700415 () Bool)

(assert (=> b!751049 m!700415))

(declare-fun m!700417 () Bool)

(assert (=> b!751050 m!700417))

(declare-fun m!700419 () Bool)

(assert (=> b!751050 m!700419))

(declare-fun m!700421 () Bool)

(assert (=> b!751050 m!700421))

(assert (=> b!751050 m!700419))

(assert (=> b!751050 m!700395))

(declare-fun m!700423 () Bool)

(assert (=> b!751050 m!700423))

(assert (=> b!751038 m!700377))

(assert (=> b!751038 m!700377))

(declare-fun m!700425 () Bool)

(assert (=> b!751038 m!700425))

(assert (=> b!751038 m!700425))

(assert (=> b!751038 m!700377))

(declare-fun m!700427 () Bool)

(assert (=> b!751038 m!700427))

(push 1)

(assert (not start!65648))

(assert (not b!751050))

(assert (not b!751055))

(assert (not b!751051))

(assert (not b!751044))

(assert (not b!751037))

(assert (not b!751049))

(assert (not b!751040))

(assert (not b!751052))

(assert (not b!751045))

(assert (not b!751053))

(assert (not b!751048))

(assert (not b!751038))

(assert (not b!751046))

(assert (not b!751047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

