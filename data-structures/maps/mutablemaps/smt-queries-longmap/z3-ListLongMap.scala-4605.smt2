; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64284 () Bool)

(assert start!64284)

(declare-fun b!721479 () Bool)

(declare-fun e!404575 () Bool)

(declare-fun e!404579 () Bool)

(assert (=> b!721479 (= e!404575 e!404579)))

(declare-fun res!483454 () Bool)

(assert (=> b!721479 (=> (not res!483454) (not e!404579))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!320080 () (_ BitVec 32))

(assert (=> b!721479 (= res!483454 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge lt!320080 #b00000000000000000000000000000000) (bvslt lt!320080 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-datatypes ((array!40818 0))(
  ( (array!40819 (arr!19528 (Array (_ BitVec 32) (_ BitVec 64))) (size!19949 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40818)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721479 (= lt!320080 (toIndex!0 (select (store (arr!19528 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!721480 () Bool)

(declare-fun res!483460 () Bool)

(declare-fun e!404580 () Bool)

(assert (=> b!721480 (=> (not res!483460) (not e!404580))))

(declare-datatypes ((List!13583 0))(
  ( (Nil!13580) (Cons!13579 (h!14633 (_ BitVec 64)) (t!19906 List!13583)) )
))
(declare-fun arrayNoDuplicates!0 (array!40818 (_ BitVec 32) List!13583) Bool)

(assert (=> b!721480 (= res!483460 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13580))))

(declare-fun b!721481 () Bool)

(declare-fun e!404577 () Bool)

(assert (=> b!721481 (= e!404577 e!404580)))

(declare-fun res!483450 () Bool)

(assert (=> b!721481 (=> (not res!483450) (not e!404580))))

(declare-datatypes ((SeekEntryResult!7135 0))(
  ( (MissingZero!7135 (index!30907 (_ BitVec 32))) (Found!7135 (index!30908 (_ BitVec 32))) (Intermediate!7135 (undefined!7947 Bool) (index!30909 (_ BitVec 32)) (x!61945 (_ BitVec 32))) (Undefined!7135) (MissingVacant!7135 (index!30910 (_ BitVec 32))) )
))
(declare-fun lt!320079 () SeekEntryResult!7135)

(assert (=> b!721481 (= res!483450 (or (= lt!320079 (MissingZero!7135 i!1173)) (= lt!320079 (MissingVacant!7135 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40818 (_ BitVec 32)) SeekEntryResult!7135)

(assert (=> b!721481 (= lt!320079 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!721482 () Bool)

(declare-fun res!483462 () Bool)

(assert (=> b!721482 (=> (not res!483462) (not e!404580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40818 (_ BitVec 32)) Bool)

(assert (=> b!721482 (= res!483462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721483 () Bool)

(declare-fun res!483457 () Bool)

(assert (=> b!721483 (=> (not res!483457) (not e!404575))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!721483 (= res!483457 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19528 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721484 () Bool)

(declare-fun res!483451 () Bool)

(assert (=> b!721484 (=> (not res!483451) (not e!404577))))

(assert (=> b!721484 (= res!483451 (and (= (size!19949 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19949 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19949 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721485 () Bool)

(declare-fun res!483456 () Bool)

(assert (=> b!721485 (=> (not res!483456) (not e!404575))))

(declare-fun e!404576 () Bool)

(assert (=> b!721485 (= res!483456 e!404576)))

(declare-fun c!79386 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721485 (= c!79386 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721486 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721486 (= e!404579 (not (validKeyInArray!0 (select (store (arr!19528 a!3186) i!1173 k0!2102) j!159))))))

(declare-fun b!721487 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320081 () SeekEntryResult!7135)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40818 (_ BitVec 32)) SeekEntryResult!7135)

(assert (=> b!721487 (= e!404576 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19528 a!3186) j!159) a!3186 mask!3328) lt!320081))))

(declare-fun b!721488 () Bool)

(assert (=> b!721488 (= e!404580 e!404575)))

(declare-fun res!483461 () Bool)

(assert (=> b!721488 (=> (not res!483461) (not e!404575))))

(assert (=> b!721488 (= res!483461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19528 a!3186) j!159) mask!3328) (select (arr!19528 a!3186) j!159) a!3186 mask!3328) lt!320081))))

(assert (=> b!721488 (= lt!320081 (Intermediate!7135 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483459 () Bool)

(assert (=> start!64284 (=> (not res!483459) (not e!404577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64284 (= res!483459 (validMask!0 mask!3328))))

(assert (=> start!64284 e!404577))

(assert (=> start!64284 true))

(declare-fun array_inv!15302 (array!40818) Bool)

(assert (=> start!64284 (array_inv!15302 a!3186)))

(declare-fun b!721489 () Bool)

(declare-fun res!483453 () Bool)

(assert (=> b!721489 (=> (not res!483453) (not e!404580))))

(assert (=> b!721489 (= res!483453 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19949 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19949 a!3186))))))

(declare-fun b!721490 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40818 (_ BitVec 32)) SeekEntryResult!7135)

(assert (=> b!721490 (= e!404576 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19528 a!3186) j!159) a!3186 mask!3328) (Found!7135 j!159)))))

(declare-fun b!721491 () Bool)

(declare-fun res!483455 () Bool)

(assert (=> b!721491 (=> (not res!483455) (not e!404577))))

(assert (=> b!721491 (= res!483455 (validKeyInArray!0 k0!2102))))

(declare-fun b!721492 () Bool)

(declare-fun res!483458 () Bool)

(assert (=> b!721492 (=> (not res!483458) (not e!404577))))

(assert (=> b!721492 (= res!483458 (validKeyInArray!0 (select (arr!19528 a!3186) j!159)))))

(declare-fun b!721493 () Bool)

(declare-fun res!483452 () Bool)

(assert (=> b!721493 (=> (not res!483452) (not e!404577))))

(declare-fun arrayContainsKey!0 (array!40818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721493 (= res!483452 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64284 res!483459) b!721484))

(assert (= (and b!721484 res!483451) b!721492))

(assert (= (and b!721492 res!483458) b!721491))

(assert (= (and b!721491 res!483455) b!721493))

(assert (= (and b!721493 res!483452) b!721481))

(assert (= (and b!721481 res!483450) b!721482))

(assert (= (and b!721482 res!483462) b!721480))

(assert (= (and b!721480 res!483460) b!721489))

(assert (= (and b!721489 res!483453) b!721488))

(assert (= (and b!721488 res!483461) b!721483))

(assert (= (and b!721483 res!483457) b!721485))

(assert (= (and b!721485 c!79386) b!721487))

(assert (= (and b!721485 (not c!79386)) b!721490))

(assert (= (and b!721485 res!483456) b!721479))

(assert (= (and b!721479 res!483454) b!721486))

(declare-fun m!676339 () Bool)

(assert (=> b!721479 m!676339))

(declare-fun m!676341 () Bool)

(assert (=> b!721479 m!676341))

(assert (=> b!721479 m!676341))

(declare-fun m!676343 () Bool)

(assert (=> b!721479 m!676343))

(declare-fun m!676345 () Bool)

(assert (=> b!721493 m!676345))

(declare-fun m!676347 () Bool)

(assert (=> b!721480 m!676347))

(declare-fun m!676349 () Bool)

(assert (=> b!721491 m!676349))

(assert (=> b!721486 m!676339))

(assert (=> b!721486 m!676341))

(assert (=> b!721486 m!676341))

(declare-fun m!676351 () Bool)

(assert (=> b!721486 m!676351))

(declare-fun m!676353 () Bool)

(assert (=> b!721487 m!676353))

(assert (=> b!721487 m!676353))

(declare-fun m!676355 () Bool)

(assert (=> b!721487 m!676355))

(declare-fun m!676357 () Bool)

(assert (=> b!721482 m!676357))

(assert (=> b!721488 m!676353))

(assert (=> b!721488 m!676353))

(declare-fun m!676359 () Bool)

(assert (=> b!721488 m!676359))

(assert (=> b!721488 m!676359))

(assert (=> b!721488 m!676353))

(declare-fun m!676361 () Bool)

(assert (=> b!721488 m!676361))

(assert (=> b!721490 m!676353))

(assert (=> b!721490 m!676353))

(declare-fun m!676363 () Bool)

(assert (=> b!721490 m!676363))

(assert (=> b!721492 m!676353))

(assert (=> b!721492 m!676353))

(declare-fun m!676365 () Bool)

(assert (=> b!721492 m!676365))

(declare-fun m!676367 () Bool)

(assert (=> b!721481 m!676367))

(declare-fun m!676369 () Bool)

(assert (=> start!64284 m!676369))

(declare-fun m!676371 () Bool)

(assert (=> start!64284 m!676371))

(declare-fun m!676373 () Bool)

(assert (=> b!721483 m!676373))

(check-sat (not b!721481) (not b!721488) (not b!721492) (not b!721490) (not start!64284) (not b!721491) (not b!721482) (not b!721487) (not b!721493) (not b!721486) (not b!721479) (not b!721480))
(check-sat)
