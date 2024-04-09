; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65894 () Bool)

(assert start!65894)

(declare-fun b!759322 () Bool)

(declare-fun e!423321 () Bool)

(declare-fun e!423327 () Bool)

(assert (=> b!759322 (= e!423321 e!423327)))

(declare-fun res!513961 () Bool)

(assert (=> b!759322 (=> (not res!513961) (not e!423327))))

(declare-datatypes ((SeekEntryResult!7727 0))(
  ( (MissingZero!7727 (index!33275 (_ BitVec 32))) (Found!7727 (index!33276 (_ BitVec 32))) (Intermediate!7727 (undefined!8539 Bool) (index!33277 (_ BitVec 32)) (x!64182 (_ BitVec 32))) (Undefined!7727) (MissingVacant!7727 (index!33278 (_ BitVec 32))) )
))
(declare-fun lt!338370 () SeekEntryResult!7727)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759322 (= res!513961 (or (= lt!338370 (MissingZero!7727 i!1173)) (= lt!338370 (MissingVacant!7727 i!1173))))))

(declare-datatypes ((array!42020 0))(
  ( (array!42021 (arr!20120 (Array (_ BitVec 32) (_ BitVec 64))) (size!20541 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42020)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42020 (_ BitVec 32)) SeekEntryResult!7727)

(assert (=> b!759322 (= lt!338370 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!759323 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!423326 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!338367 () SeekEntryResult!7727)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42020 (_ BitVec 32)) SeekEntryResult!7727)

(assert (=> b!759323 (= e!423326 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20120 a!3186) j!159) a!3186 mask!3328) lt!338367))))

(declare-fun b!759324 () Bool)

(declare-fun e!423323 () Bool)

(assert (=> b!759324 (= e!423323 (not true))))

(declare-fun e!423320 () Bool)

(assert (=> b!759324 e!423320))

(declare-fun res!513974 () Bool)

(assert (=> b!759324 (=> (not res!513974) (not e!423320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42020 (_ BitVec 32)) Bool)

(assert (=> b!759324 (= res!513974 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26294 0))(
  ( (Unit!26295) )
))
(declare-fun lt!338372 () Unit!26294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42020 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26294)

(assert (=> b!759324 (= lt!338372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759325 () Bool)

(declare-fun e!423324 () Bool)

(assert (=> b!759325 (= e!423324 e!423323)))

(declare-fun res!513972 () Bool)

(assert (=> b!759325 (=> (not res!513972) (not e!423323))))

(declare-fun lt!338371 () (_ BitVec 64))

(declare-fun lt!338368 () array!42020)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759325 (= res!513972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338371 mask!3328) lt!338371 lt!338368 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338371 lt!338368 mask!3328)))))

(assert (=> b!759325 (= lt!338371 (select (store (arr!20120 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759325 (= lt!338368 (array!42021 (store (arr!20120 a!3186) i!1173 k!2102) (size!20541 a!3186)))))

(declare-fun res!513967 () Bool)

(assert (=> start!65894 (=> (not res!513967) (not e!423321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65894 (= res!513967 (validMask!0 mask!3328))))

(assert (=> start!65894 e!423321))

(assert (=> start!65894 true))

(declare-fun array_inv!15894 (array!42020) Bool)

(assert (=> start!65894 (array_inv!15894 a!3186)))

(declare-fun b!759326 () Bool)

(declare-fun res!513966 () Bool)

(assert (=> b!759326 (=> (not res!513966) (not e!423327))))

(declare-datatypes ((List!14175 0))(
  ( (Nil!14172) (Cons!14171 (h!15243 (_ BitVec 64)) (t!20498 List!14175)) )
))
(declare-fun arrayNoDuplicates!0 (array!42020 (_ BitVec 32) List!14175) Bool)

(assert (=> b!759326 (= res!513966 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14172))))

(declare-fun b!759327 () Bool)

(declare-fun res!513971 () Bool)

(assert (=> b!759327 (=> (not res!513971) (not e!423324))))

(assert (=> b!759327 (= res!513971 e!423326)))

(declare-fun c!83061 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759327 (= c!83061 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759328 () Bool)

(declare-fun res!513969 () Bool)

(assert (=> b!759328 (=> (not res!513969) (not e!423327))))

(assert (=> b!759328 (= res!513969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759329 () Bool)

(declare-fun res!513965 () Bool)

(assert (=> b!759329 (=> (not res!513965) (not e!423321))))

(declare-fun arrayContainsKey!0 (array!42020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759329 (= res!513965 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759330 () Bool)

(declare-fun res!513962 () Bool)

(assert (=> b!759330 (=> (not res!513962) (not e!423321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759330 (= res!513962 (validKeyInArray!0 (select (arr!20120 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!338369 () SeekEntryResult!7727)

(declare-fun e!423322 () Bool)

(declare-fun b!759331 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42020 (_ BitVec 32)) SeekEntryResult!7727)

(assert (=> b!759331 (= e!423322 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20120 a!3186) j!159) a!3186 mask!3328) lt!338369))))

(declare-fun b!759332 () Bool)

(assert (=> b!759332 (= e!423327 e!423324)))

(declare-fun res!513964 () Bool)

(assert (=> b!759332 (=> (not res!513964) (not e!423324))))

(assert (=> b!759332 (= res!513964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20120 a!3186) j!159) mask!3328) (select (arr!20120 a!3186) j!159) a!3186 mask!3328) lt!338367))))

(assert (=> b!759332 (= lt!338367 (Intermediate!7727 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759333 () Bool)

(declare-fun res!513975 () Bool)

(assert (=> b!759333 (=> (not res!513975) (not e!423324))))

(assert (=> b!759333 (= res!513975 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20120 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759334 () Bool)

(declare-fun res!513963 () Bool)

(assert (=> b!759334 (=> (not res!513963) (not e!423321))))

(assert (=> b!759334 (= res!513963 (validKeyInArray!0 k!2102))))

(declare-fun b!759335 () Bool)

(assert (=> b!759335 (= e!423320 e!423322)))

(declare-fun res!513968 () Bool)

(assert (=> b!759335 (=> (not res!513968) (not e!423322))))

(assert (=> b!759335 (= res!513968 (= (seekEntryOrOpen!0 (select (arr!20120 a!3186) j!159) a!3186 mask!3328) lt!338369))))

(assert (=> b!759335 (= lt!338369 (Found!7727 j!159))))

(declare-fun b!759336 () Bool)

(declare-fun res!513973 () Bool)

(assert (=> b!759336 (=> (not res!513973) (not e!423327))))

(assert (=> b!759336 (= res!513973 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20541 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20541 a!3186))))))

(declare-fun b!759337 () Bool)

(assert (=> b!759337 (= e!423326 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20120 a!3186) j!159) a!3186 mask!3328) (Found!7727 j!159)))))

(declare-fun b!759338 () Bool)

(declare-fun res!513970 () Bool)

(assert (=> b!759338 (=> (not res!513970) (not e!423321))))

(assert (=> b!759338 (= res!513970 (and (= (size!20541 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20541 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20541 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65894 res!513967) b!759338))

(assert (= (and b!759338 res!513970) b!759330))

(assert (= (and b!759330 res!513962) b!759334))

(assert (= (and b!759334 res!513963) b!759329))

(assert (= (and b!759329 res!513965) b!759322))

(assert (= (and b!759322 res!513961) b!759328))

(assert (= (and b!759328 res!513969) b!759326))

(assert (= (and b!759326 res!513966) b!759336))

(assert (= (and b!759336 res!513973) b!759332))

(assert (= (and b!759332 res!513964) b!759333))

(assert (= (and b!759333 res!513975) b!759327))

(assert (= (and b!759327 c!83061) b!759323))

(assert (= (and b!759327 (not c!83061)) b!759337))

(assert (= (and b!759327 res!513971) b!759325))

(assert (= (and b!759325 res!513972) b!759324))

(assert (= (and b!759324 res!513974) b!759335))

(assert (= (and b!759335 res!513968) b!759331))

(declare-fun m!706779 () Bool)

(assert (=> b!759334 m!706779))

(declare-fun m!706781 () Bool)

(assert (=> b!759337 m!706781))

(assert (=> b!759337 m!706781))

(declare-fun m!706783 () Bool)

(assert (=> b!759337 m!706783))

(assert (=> b!759323 m!706781))

(assert (=> b!759323 m!706781))

(declare-fun m!706785 () Bool)

(assert (=> b!759323 m!706785))

(assert (=> b!759332 m!706781))

(assert (=> b!759332 m!706781))

(declare-fun m!706787 () Bool)

(assert (=> b!759332 m!706787))

(assert (=> b!759332 m!706787))

(assert (=> b!759332 m!706781))

(declare-fun m!706789 () Bool)

(assert (=> b!759332 m!706789))

(declare-fun m!706791 () Bool)

(assert (=> b!759325 m!706791))

(declare-fun m!706793 () Bool)

(assert (=> b!759325 m!706793))

(assert (=> b!759325 m!706791))

(declare-fun m!706795 () Bool)

(assert (=> b!759325 m!706795))

(declare-fun m!706797 () Bool)

(assert (=> b!759325 m!706797))

(declare-fun m!706799 () Bool)

(assert (=> b!759325 m!706799))

(assert (=> b!759335 m!706781))

(assert (=> b!759335 m!706781))

(declare-fun m!706801 () Bool)

(assert (=> b!759335 m!706801))

(declare-fun m!706803 () Bool)

(assert (=> b!759328 m!706803))

(declare-fun m!706805 () Bool)

(assert (=> b!759322 m!706805))

(declare-fun m!706807 () Bool)

(assert (=> b!759329 m!706807))

(assert (=> b!759330 m!706781))

(assert (=> b!759330 m!706781))

(declare-fun m!706809 () Bool)

(assert (=> b!759330 m!706809))

(assert (=> b!759331 m!706781))

(assert (=> b!759331 m!706781))

(declare-fun m!706811 () Bool)

(assert (=> b!759331 m!706811))

(declare-fun m!706813 () Bool)

(assert (=> b!759326 m!706813))

(declare-fun m!706815 () Bool)

(assert (=> b!759333 m!706815))

(declare-fun m!706817 () Bool)

(assert (=> b!759324 m!706817))

(declare-fun m!706819 () Bool)

(assert (=> b!759324 m!706819))

(declare-fun m!706821 () Bool)

(assert (=> start!65894 m!706821))

(declare-fun m!706823 () Bool)

(assert (=> start!65894 m!706823))

(push 1)

