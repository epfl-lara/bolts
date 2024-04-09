; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64326 () Bool)

(assert start!64326)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40860 0))(
  ( (array!40861 (arr!19549 (Array (_ BitVec 32) (_ BitVec 64))) (size!19970 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40860)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722347 () Bool)

(declare-fun e!404897 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7156 0))(
  ( (MissingZero!7156 (index!30991 (_ BitVec 32))) (Found!7156 (index!30992 (_ BitVec 32))) (Intermediate!7156 (undefined!7968 Bool) (index!30993 (_ BitVec 32)) (x!62022 (_ BitVec 32))) (Undefined!7156) (MissingVacant!7156 (index!30994 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40860 (_ BitVec 32)) SeekEntryResult!7156)

(assert (=> b!722347 (= e!404897 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19549 a!3186) j!159) a!3186 mask!3328) (Found!7156 j!159)))))

(declare-fun b!722348 () Bool)

(declare-fun e!404896 () Bool)

(declare-fun e!404898 () Bool)

(assert (=> b!722348 (= e!404896 e!404898)))

(declare-fun res!484193 () Bool)

(assert (=> b!722348 (=> (not res!484193) (not e!404898))))

(declare-fun lt!320261 () SeekEntryResult!7156)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40860 (_ BitVec 32)) SeekEntryResult!7156)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722348 (= res!484193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19549 a!3186) j!159) mask!3328) (select (arr!19549 a!3186) j!159) a!3186 mask!3328) lt!320261))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722348 (= lt!320261 (Intermediate!7156 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722349 () Bool)

(declare-fun res!484199 () Bool)

(declare-fun e!404895 () Bool)

(assert (=> b!722349 (=> (not res!484199) (not e!404895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722349 (= res!484199 (validKeyInArray!0 (select (arr!19549 a!3186) j!159)))))

(declare-fun b!722350 () Bool)

(declare-fun res!484194 () Bool)

(assert (=> b!722350 (=> (not res!484194) (not e!404896))))

(declare-datatypes ((List!13604 0))(
  ( (Nil!13601) (Cons!13600 (h!14654 (_ BitVec 64)) (t!19927 List!13604)) )
))
(declare-fun arrayNoDuplicates!0 (array!40860 (_ BitVec 32) List!13604) Bool)

(assert (=> b!722350 (= res!484194 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13601))))

(declare-fun b!722351 () Bool)

(assert (=> b!722351 (= e!404895 e!404896)))

(declare-fun res!484198 () Bool)

(assert (=> b!722351 (=> (not res!484198) (not e!404896))))

(declare-fun lt!320258 () SeekEntryResult!7156)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722351 (= res!484198 (or (= lt!320258 (MissingZero!7156 i!1173)) (= lt!320258 (MissingVacant!7156 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40860 (_ BitVec 32)) SeekEntryResult!7156)

(assert (=> b!722351 (= lt!320258 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722352 () Bool)

(declare-fun res!484195 () Bool)

(assert (=> b!722352 (=> (not res!484195) (not e!404895))))

(assert (=> b!722352 (= res!484195 (validKeyInArray!0 k0!2102))))

(declare-fun b!722353 () Bool)

(assert (=> b!722353 (= e!404898 false)))

(declare-fun lt!320259 () (_ BitVec 64))

(declare-fun lt!320257 () SeekEntryResult!7156)

(declare-fun lt!320256 () array!40860)

(assert (=> b!722353 (= lt!320257 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320259 lt!320256 mask!3328))))

(declare-fun lt!320260 () SeekEntryResult!7156)

(assert (=> b!722353 (= lt!320260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320259 mask!3328) lt!320259 lt!320256 mask!3328))))

(assert (=> b!722353 (= lt!320259 (select (store (arr!19549 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722353 (= lt!320256 (array!40861 (store (arr!19549 a!3186) i!1173 k0!2102) (size!19970 a!3186)))))

(declare-fun b!722354 () Bool)

(declare-fun res!484202 () Bool)

(assert (=> b!722354 (=> (not res!484202) (not e!404895))))

(assert (=> b!722354 (= res!484202 (and (= (size!19970 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19970 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19970 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722355 () Bool)

(assert (=> b!722355 (= e!404897 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19549 a!3186) j!159) a!3186 mask!3328) lt!320261))))

(declare-fun res!484200 () Bool)

(assert (=> start!64326 (=> (not res!484200) (not e!404895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64326 (= res!484200 (validMask!0 mask!3328))))

(assert (=> start!64326 e!404895))

(assert (=> start!64326 true))

(declare-fun array_inv!15323 (array!40860) Bool)

(assert (=> start!64326 (array_inv!15323 a!3186)))

(declare-fun b!722356 () Bool)

(declare-fun res!484201 () Bool)

(assert (=> b!722356 (=> (not res!484201) (not e!404896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40860 (_ BitVec 32)) Bool)

(assert (=> b!722356 (= res!484201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722357 () Bool)

(declare-fun res!484196 () Bool)

(assert (=> b!722357 (=> (not res!484196) (not e!404896))))

(assert (=> b!722357 (= res!484196 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19970 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19970 a!3186))))))

(declare-fun b!722358 () Bool)

(declare-fun res!484192 () Bool)

(assert (=> b!722358 (=> (not res!484192) (not e!404895))))

(declare-fun arrayContainsKey!0 (array!40860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722358 (= res!484192 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722359 () Bool)

(declare-fun res!484197 () Bool)

(assert (=> b!722359 (=> (not res!484197) (not e!404898))))

(assert (=> b!722359 (= res!484197 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19549 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722360 () Bool)

(declare-fun res!484203 () Bool)

(assert (=> b!722360 (=> (not res!484203) (not e!404898))))

(assert (=> b!722360 (= res!484203 e!404897)))

(declare-fun c!79449 () Bool)

(assert (=> b!722360 (= c!79449 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64326 res!484200) b!722354))

(assert (= (and b!722354 res!484202) b!722349))

(assert (= (and b!722349 res!484199) b!722352))

(assert (= (and b!722352 res!484195) b!722358))

(assert (= (and b!722358 res!484192) b!722351))

(assert (= (and b!722351 res!484198) b!722356))

(assert (= (and b!722356 res!484201) b!722350))

(assert (= (and b!722350 res!484194) b!722357))

(assert (= (and b!722357 res!484196) b!722348))

(assert (= (and b!722348 res!484193) b!722359))

(assert (= (and b!722359 res!484197) b!722360))

(assert (= (and b!722360 c!79449) b!722355))

(assert (= (and b!722360 (not c!79449)) b!722347))

(assert (= (and b!722360 res!484203) b!722353))

(declare-fun m!676971 () Bool)

(assert (=> b!722352 m!676971))

(declare-fun m!676973 () Bool)

(assert (=> b!722347 m!676973))

(assert (=> b!722347 m!676973))

(declare-fun m!676975 () Bool)

(assert (=> b!722347 m!676975))

(declare-fun m!676977 () Bool)

(assert (=> b!722358 m!676977))

(declare-fun m!676979 () Bool)

(assert (=> b!722351 m!676979))

(assert (=> b!722348 m!676973))

(assert (=> b!722348 m!676973))

(declare-fun m!676981 () Bool)

(assert (=> b!722348 m!676981))

(assert (=> b!722348 m!676981))

(assert (=> b!722348 m!676973))

(declare-fun m!676983 () Bool)

(assert (=> b!722348 m!676983))

(declare-fun m!676985 () Bool)

(assert (=> b!722359 m!676985))

(assert (=> b!722349 m!676973))

(assert (=> b!722349 m!676973))

(declare-fun m!676987 () Bool)

(assert (=> b!722349 m!676987))

(assert (=> b!722355 m!676973))

(assert (=> b!722355 m!676973))

(declare-fun m!676989 () Bool)

(assert (=> b!722355 m!676989))

(declare-fun m!676991 () Bool)

(assert (=> start!64326 m!676991))

(declare-fun m!676993 () Bool)

(assert (=> start!64326 m!676993))

(declare-fun m!676995 () Bool)

(assert (=> b!722350 m!676995))

(declare-fun m!676997 () Bool)

(assert (=> b!722353 m!676997))

(assert (=> b!722353 m!676997))

(declare-fun m!676999 () Bool)

(assert (=> b!722353 m!676999))

(declare-fun m!677001 () Bool)

(assert (=> b!722353 m!677001))

(declare-fun m!677003 () Bool)

(assert (=> b!722353 m!677003))

(declare-fun m!677005 () Bool)

(assert (=> b!722353 m!677005))

(declare-fun m!677007 () Bool)

(assert (=> b!722356 m!677007))

(check-sat (not b!722358) (not b!722349) (not b!722351) (not b!722355) (not b!722353) (not b!722350) (not start!64326) (not b!722352) (not b!722348) (not b!722347) (not b!722356))
(check-sat)
