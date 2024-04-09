; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64716 () Bool)

(assert start!64716)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41118 0))(
  ( (array!41119 (arr!19675 (Array (_ BitVec 32) (_ BitVec 64))) (size!20096 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41118)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!408302 () Bool)

(declare-fun b!729474 () Bool)

(declare-datatypes ((SeekEntryResult!7282 0))(
  ( (MissingZero!7282 (index!31495 (_ BitVec 32))) (Found!7282 (index!31496 (_ BitVec 32))) (Intermediate!7282 (undefined!8094 Bool) (index!31497 (_ BitVec 32)) (x!62505 (_ BitVec 32))) (Undefined!7282) (MissingVacant!7282 (index!31498 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41118 (_ BitVec 32)) SeekEntryResult!7282)

(assert (=> b!729474 (= e!408302 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19675 a!3186) j!159) a!3186 mask!3328) (Found!7282 j!159)))))

(declare-fun b!729475 () Bool)

(declare-fun res!490000 () Bool)

(declare-fun e!408303 () Bool)

(assert (=> b!729475 (=> (not res!490000) (not e!408303))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729475 (= res!490000 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!408306 () Bool)

(declare-fun lt!323208 () SeekEntryResult!7282)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!729476 () Bool)

(assert (=> b!729476 (= e!408306 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19675 a!3186) j!159) a!3186 mask!3328) lt!323208))))

(declare-fun b!729477 () Bool)

(declare-fun res!490013 () Bool)

(declare-fun e!408305 () Bool)

(assert (=> b!729477 (=> (not res!490013) (not e!408305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41118 (_ BitVec 32)) Bool)

(assert (=> b!729477 (= res!490013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!490004 () Bool)

(assert (=> start!64716 (=> (not res!490004) (not e!408303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64716 (= res!490004 (validMask!0 mask!3328))))

(assert (=> start!64716 e!408303))

(assert (=> start!64716 true))

(declare-fun array_inv!15449 (array!41118) Bool)

(assert (=> start!64716 (array_inv!15449 a!3186)))

(declare-fun e!408299 () Bool)

(declare-fun b!729478 () Bool)

(assert (=> b!729478 (= e!408299 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun lt!323206 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729478 (= lt!323206 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729479 () Bool)

(declare-fun e!408304 () Bool)

(declare-fun e!408301 () Bool)

(assert (=> b!729479 (= e!408304 e!408301)))

(declare-fun res!490002 () Bool)

(assert (=> b!729479 (=> (not res!490002) (not e!408301))))

(declare-fun lt!323211 () SeekEntryResult!7282)

(declare-fun lt!323212 () SeekEntryResult!7282)

(assert (=> b!729479 (= res!490002 (= lt!323211 lt!323212))))

(declare-fun lt!323209 () (_ BitVec 64))

(declare-fun lt!323210 () array!41118)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41118 (_ BitVec 32)) SeekEntryResult!7282)

(assert (=> b!729479 (= lt!323212 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323209 lt!323210 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729479 (= lt!323211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323209 mask!3328) lt!323209 lt!323210 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729479 (= lt!323209 (select (store (arr!19675 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729479 (= lt!323210 (array!41119 (store (arr!19675 a!3186) i!1173 k0!2102) (size!20096 a!3186)))))

(declare-fun b!729480 () Bool)

(declare-fun lt!323207 () SeekEntryResult!7282)

(assert (=> b!729480 (= e!408302 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19675 a!3186) j!159) a!3186 mask!3328) lt!323207))))

(declare-fun b!729481 () Bool)

(declare-fun res!490003 () Bool)

(assert (=> b!729481 (=> (not res!490003) (not e!408305))))

(declare-datatypes ((List!13730 0))(
  ( (Nil!13727) (Cons!13726 (h!14786 (_ BitVec 64)) (t!20053 List!13730)) )
))
(declare-fun arrayNoDuplicates!0 (array!41118 (_ BitVec 32) List!13730) Bool)

(assert (=> b!729481 (= res!490003 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13727))))

(declare-fun b!729482 () Bool)

(declare-fun e!408298 () Bool)

(assert (=> b!729482 (= e!408298 e!408306)))

(declare-fun res!490006 () Bool)

(assert (=> b!729482 (=> (not res!490006) (not e!408306))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41118 (_ BitVec 32)) SeekEntryResult!7282)

(assert (=> b!729482 (= res!490006 (= (seekEntryOrOpen!0 (select (arr!19675 a!3186) j!159) a!3186 mask!3328) lt!323208))))

(assert (=> b!729482 (= lt!323208 (Found!7282 j!159))))

(declare-fun b!729483 () Bool)

(declare-fun res!490010 () Bool)

(assert (=> b!729483 (=> (not res!490010) (not e!408304))))

(assert (=> b!729483 (= res!490010 e!408302)))

(declare-fun c!80112 () Bool)

(assert (=> b!729483 (= c!80112 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729484 () Bool)

(assert (=> b!729484 (= e!408305 e!408304)))

(declare-fun res!490014 () Bool)

(assert (=> b!729484 (=> (not res!490014) (not e!408304))))

(assert (=> b!729484 (= res!490014 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19675 a!3186) j!159) mask!3328) (select (arr!19675 a!3186) j!159) a!3186 mask!3328) lt!323207))))

(assert (=> b!729484 (= lt!323207 (Intermediate!7282 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729485 () Bool)

(declare-fun res!489999 () Bool)

(assert (=> b!729485 (=> (not res!489999) (not e!408303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729485 (= res!489999 (validKeyInArray!0 k0!2102))))

(declare-fun b!729486 () Bool)

(declare-fun res!490011 () Bool)

(assert (=> b!729486 (=> (not res!490011) (not e!408303))))

(assert (=> b!729486 (= res!490011 (and (= (size!20096 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20096 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20096 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729487 () Bool)

(assert (=> b!729487 (= e!408301 (not e!408299))))

(declare-fun res!490008 () Bool)

(assert (=> b!729487 (=> res!490008 e!408299)))

(get-info :version)

(assert (=> b!729487 (= res!490008 (or (not ((_ is Intermediate!7282) lt!323212)) (bvsge x!1131 (x!62505 lt!323212))))))

(assert (=> b!729487 e!408298))

(declare-fun res!490005 () Bool)

(assert (=> b!729487 (=> (not res!490005) (not e!408298))))

(assert (=> b!729487 (= res!490005 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24882 0))(
  ( (Unit!24883) )
))
(declare-fun lt!323205 () Unit!24882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24882)

(assert (=> b!729487 (= lt!323205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729488 () Bool)

(declare-fun res!490012 () Bool)

(assert (=> b!729488 (=> (not res!490012) (not e!408303))))

(assert (=> b!729488 (= res!490012 (validKeyInArray!0 (select (arr!19675 a!3186) j!159)))))

(declare-fun b!729489 () Bool)

(declare-fun res!490009 () Bool)

(assert (=> b!729489 (=> (not res!490009) (not e!408305))))

(assert (=> b!729489 (= res!490009 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20096 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20096 a!3186))))))

(declare-fun b!729490 () Bool)

(assert (=> b!729490 (= e!408303 e!408305)))

(declare-fun res!490001 () Bool)

(assert (=> b!729490 (=> (not res!490001) (not e!408305))))

(declare-fun lt!323213 () SeekEntryResult!7282)

(assert (=> b!729490 (= res!490001 (or (= lt!323213 (MissingZero!7282 i!1173)) (= lt!323213 (MissingVacant!7282 i!1173))))))

(assert (=> b!729490 (= lt!323213 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!729491 () Bool)

(declare-fun res!490007 () Bool)

(assert (=> b!729491 (=> (not res!490007) (not e!408304))))

(assert (=> b!729491 (= res!490007 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19675 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64716 res!490004) b!729486))

(assert (= (and b!729486 res!490011) b!729488))

(assert (= (and b!729488 res!490012) b!729485))

(assert (= (and b!729485 res!489999) b!729475))

(assert (= (and b!729475 res!490000) b!729490))

(assert (= (and b!729490 res!490001) b!729477))

(assert (= (and b!729477 res!490013) b!729481))

(assert (= (and b!729481 res!490003) b!729489))

(assert (= (and b!729489 res!490009) b!729484))

(assert (= (and b!729484 res!490014) b!729491))

(assert (= (and b!729491 res!490007) b!729483))

(assert (= (and b!729483 c!80112) b!729480))

(assert (= (and b!729483 (not c!80112)) b!729474))

(assert (= (and b!729483 res!490010) b!729479))

(assert (= (and b!729479 res!490002) b!729487))

(assert (= (and b!729487 res!490005) b!729482))

(assert (= (and b!729482 res!490006) b!729476))

(assert (= (and b!729487 (not res!490008)) b!729478))

(declare-fun m!683197 () Bool)

(assert (=> b!729477 m!683197))

(declare-fun m!683199 () Bool)

(assert (=> b!729476 m!683199))

(assert (=> b!729476 m!683199))

(declare-fun m!683201 () Bool)

(assert (=> b!729476 m!683201))

(declare-fun m!683203 () Bool)

(assert (=> b!729479 m!683203))

(declare-fun m!683205 () Bool)

(assert (=> b!729479 m!683205))

(declare-fun m!683207 () Bool)

(assert (=> b!729479 m!683207))

(declare-fun m!683209 () Bool)

(assert (=> b!729479 m!683209))

(declare-fun m!683211 () Bool)

(assert (=> b!729479 m!683211))

(assert (=> b!729479 m!683203))

(assert (=> b!729480 m!683199))

(assert (=> b!729480 m!683199))

(declare-fun m!683213 () Bool)

(assert (=> b!729480 m!683213))

(declare-fun m!683215 () Bool)

(assert (=> b!729485 m!683215))

(declare-fun m!683217 () Bool)

(assert (=> b!729487 m!683217))

(declare-fun m!683219 () Bool)

(assert (=> b!729487 m!683219))

(declare-fun m!683221 () Bool)

(assert (=> start!64716 m!683221))

(declare-fun m!683223 () Bool)

(assert (=> start!64716 m!683223))

(assert (=> b!729474 m!683199))

(assert (=> b!729474 m!683199))

(declare-fun m!683225 () Bool)

(assert (=> b!729474 m!683225))

(assert (=> b!729488 m!683199))

(assert (=> b!729488 m!683199))

(declare-fun m!683227 () Bool)

(assert (=> b!729488 m!683227))

(assert (=> b!729482 m!683199))

(assert (=> b!729482 m!683199))

(declare-fun m!683229 () Bool)

(assert (=> b!729482 m!683229))

(declare-fun m!683231 () Bool)

(assert (=> b!729491 m!683231))

(declare-fun m!683233 () Bool)

(assert (=> b!729490 m!683233))

(declare-fun m!683235 () Bool)

(assert (=> b!729475 m!683235))

(assert (=> b!729484 m!683199))

(assert (=> b!729484 m!683199))

(declare-fun m!683237 () Bool)

(assert (=> b!729484 m!683237))

(assert (=> b!729484 m!683237))

(assert (=> b!729484 m!683199))

(declare-fun m!683239 () Bool)

(assert (=> b!729484 m!683239))

(declare-fun m!683241 () Bool)

(assert (=> b!729481 m!683241))

(declare-fun m!683243 () Bool)

(assert (=> b!729478 m!683243))

(check-sat (not b!729481) (not b!729476) (not b!729475) (not b!729487) (not b!729478) (not start!64716) (not b!729485) (not b!729480) (not b!729482) (not b!729479) (not b!729488) (not b!729490) (not b!729477) (not b!729474) (not b!729484))
(check-sat)
