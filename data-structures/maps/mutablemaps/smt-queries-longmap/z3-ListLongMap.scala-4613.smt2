; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64332 () Bool)

(assert start!64332)

(declare-fun b!722473 () Bool)

(declare-fun e!404942 () Bool)

(assert (=> b!722473 (= e!404942 false)))

(declare-datatypes ((SeekEntryResult!7159 0))(
  ( (MissingZero!7159 (index!31003 (_ BitVec 32))) (Found!7159 (index!31004 (_ BitVec 32))) (Intermediate!7159 (undefined!7971 Bool) (index!31005 (_ BitVec 32)) (x!62033 (_ BitVec 32))) (Undefined!7159) (MissingVacant!7159 (index!31006 (_ BitVec 32))) )
))
(declare-fun lt!320312 () SeekEntryResult!7159)

(declare-fun lt!320315 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40866 0))(
  ( (array!40867 (arr!19552 (Array (_ BitVec 32) (_ BitVec 64))) (size!19973 (_ BitVec 32))) )
))
(declare-fun lt!320313 () array!40866)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40866 (_ BitVec 32)) SeekEntryResult!7159)

(assert (=> b!722473 (= lt!320312 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320315 lt!320313 mask!3328))))

(declare-fun lt!320314 () SeekEntryResult!7159)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722473 (= lt!320314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320315 mask!3328) lt!320315 lt!320313 mask!3328))))

(declare-fun a!3186 () array!40866)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!722473 (= lt!320315 (select (store (arr!19552 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722473 (= lt!320313 (array!40867 (store (arr!19552 a!3186) i!1173 k0!2102) (size!19973 a!3186)))))

(declare-fun b!722474 () Bool)

(declare-fun res!484309 () Bool)

(declare-fun e!404943 () Bool)

(assert (=> b!722474 (=> (not res!484309) (not e!404943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722474 (= res!484309 (validKeyInArray!0 (select (arr!19552 a!3186) j!159)))))

(declare-fun b!722475 () Bool)

(declare-fun e!404940 () Bool)

(assert (=> b!722475 (= e!404940 e!404942)))

(declare-fun res!484307 () Bool)

(assert (=> b!722475 (=> (not res!484307) (not e!404942))))

(declare-fun lt!320310 () SeekEntryResult!7159)

(assert (=> b!722475 (= res!484307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19552 a!3186) j!159) mask!3328) (select (arr!19552 a!3186) j!159) a!3186 mask!3328) lt!320310))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722475 (= lt!320310 (Intermediate!7159 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722476 () Bool)

(declare-fun res!484311 () Bool)

(assert (=> b!722476 (=> (not res!484311) (not e!404940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40866 (_ BitVec 32)) Bool)

(assert (=> b!722476 (= res!484311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722477 () Bool)

(declare-fun res!484310 () Bool)

(assert (=> b!722477 (=> (not res!484310) (not e!404942))))

(declare-fun e!404939 () Bool)

(assert (=> b!722477 (= res!484310 e!404939)))

(declare-fun c!79458 () Bool)

(assert (=> b!722477 (= c!79458 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722478 () Bool)

(assert (=> b!722478 (= e!404943 e!404940)))

(declare-fun res!484308 () Bool)

(assert (=> b!722478 (=> (not res!484308) (not e!404940))))

(declare-fun lt!320311 () SeekEntryResult!7159)

(assert (=> b!722478 (= res!484308 (or (= lt!320311 (MissingZero!7159 i!1173)) (= lt!320311 (MissingVacant!7159 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40866 (_ BitVec 32)) SeekEntryResult!7159)

(assert (=> b!722478 (= lt!320311 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722479 () Bool)

(assert (=> b!722479 (= e!404939 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19552 a!3186) j!159) a!3186 mask!3328) lt!320310))))

(declare-fun b!722480 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40866 (_ BitVec 32)) SeekEntryResult!7159)

(assert (=> b!722480 (= e!404939 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19552 a!3186) j!159) a!3186 mask!3328) (Found!7159 j!159)))))

(declare-fun b!722481 () Bool)

(declare-fun res!484300 () Bool)

(assert (=> b!722481 (=> (not res!484300) (not e!404943))))

(assert (=> b!722481 (= res!484300 (validKeyInArray!0 k0!2102))))

(declare-fun res!484306 () Bool)

(assert (=> start!64332 (=> (not res!484306) (not e!404943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64332 (= res!484306 (validMask!0 mask!3328))))

(assert (=> start!64332 e!404943))

(assert (=> start!64332 true))

(declare-fun array_inv!15326 (array!40866) Bool)

(assert (=> start!64332 (array_inv!15326 a!3186)))

(declare-fun b!722482 () Bool)

(declare-fun res!484302 () Bool)

(assert (=> b!722482 (=> (not res!484302) (not e!404940))))

(declare-datatypes ((List!13607 0))(
  ( (Nil!13604) (Cons!13603 (h!14657 (_ BitVec 64)) (t!19930 List!13607)) )
))
(declare-fun arrayNoDuplicates!0 (array!40866 (_ BitVec 32) List!13607) Bool)

(assert (=> b!722482 (= res!484302 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13604))))

(declare-fun b!722483 () Bool)

(declare-fun res!484301 () Bool)

(assert (=> b!722483 (=> (not res!484301) (not e!404943))))

(assert (=> b!722483 (= res!484301 (and (= (size!19973 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19973 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19973 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722484 () Bool)

(declare-fun res!484305 () Bool)

(assert (=> b!722484 (=> (not res!484305) (not e!404943))))

(declare-fun arrayContainsKey!0 (array!40866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722484 (= res!484305 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722485 () Bool)

(declare-fun res!484303 () Bool)

(assert (=> b!722485 (=> (not res!484303) (not e!404940))))

(assert (=> b!722485 (= res!484303 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19973 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19973 a!3186))))))

(declare-fun b!722486 () Bool)

(declare-fun res!484304 () Bool)

(assert (=> b!722486 (=> (not res!484304) (not e!404942))))

(assert (=> b!722486 (= res!484304 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19552 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64332 res!484306) b!722483))

(assert (= (and b!722483 res!484301) b!722474))

(assert (= (and b!722474 res!484309) b!722481))

(assert (= (and b!722481 res!484300) b!722484))

(assert (= (and b!722484 res!484305) b!722478))

(assert (= (and b!722478 res!484308) b!722476))

(assert (= (and b!722476 res!484311) b!722482))

(assert (= (and b!722482 res!484302) b!722485))

(assert (= (and b!722485 res!484303) b!722475))

(assert (= (and b!722475 res!484307) b!722486))

(assert (= (and b!722486 res!484304) b!722477))

(assert (= (and b!722477 c!79458) b!722479))

(assert (= (and b!722477 (not c!79458)) b!722480))

(assert (= (and b!722477 res!484310) b!722473))

(declare-fun m!677085 () Bool)

(assert (=> b!722486 m!677085))

(declare-fun m!677087 () Bool)

(assert (=> b!722480 m!677087))

(assert (=> b!722480 m!677087))

(declare-fun m!677089 () Bool)

(assert (=> b!722480 m!677089))

(declare-fun m!677091 () Bool)

(assert (=> b!722482 m!677091))

(declare-fun m!677093 () Bool)

(assert (=> b!722484 m!677093))

(declare-fun m!677095 () Bool)

(assert (=> b!722481 m!677095))

(declare-fun m!677097 () Bool)

(assert (=> start!64332 m!677097))

(declare-fun m!677099 () Bool)

(assert (=> start!64332 m!677099))

(declare-fun m!677101 () Bool)

(assert (=> b!722476 m!677101))

(declare-fun m!677103 () Bool)

(assert (=> b!722478 m!677103))

(assert (=> b!722474 m!677087))

(assert (=> b!722474 m!677087))

(declare-fun m!677105 () Bool)

(assert (=> b!722474 m!677105))

(declare-fun m!677107 () Bool)

(assert (=> b!722473 m!677107))

(declare-fun m!677109 () Bool)

(assert (=> b!722473 m!677109))

(declare-fun m!677111 () Bool)

(assert (=> b!722473 m!677111))

(declare-fun m!677113 () Bool)

(assert (=> b!722473 m!677113))

(assert (=> b!722473 m!677107))

(declare-fun m!677115 () Bool)

(assert (=> b!722473 m!677115))

(assert (=> b!722479 m!677087))

(assert (=> b!722479 m!677087))

(declare-fun m!677117 () Bool)

(assert (=> b!722479 m!677117))

(assert (=> b!722475 m!677087))

(assert (=> b!722475 m!677087))

(declare-fun m!677119 () Bool)

(assert (=> b!722475 m!677119))

(assert (=> b!722475 m!677119))

(assert (=> b!722475 m!677087))

(declare-fun m!677121 () Bool)

(assert (=> b!722475 m!677121))

(check-sat (not b!722481) (not b!722475) (not b!722479) (not b!722474) (not b!722482) (not b!722473) (not b!722478) (not start!64332) (not b!722480) (not b!722476) (not b!722484))
(check-sat)
