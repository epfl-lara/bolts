; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64278 () Bool)

(assert start!64278)

(declare-fun b!721348 () Bool)

(declare-fun e!404526 () Bool)

(assert (=> b!721348 (= e!404526 false)))

(declare-datatypes ((array!40812 0))(
  ( (array!40813 (arr!19525 (Array (_ BitVec 32) (_ BitVec 64))) (size!19946 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40812)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!320054 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721348 (= lt!320054 (toIndex!0 (select (store (arr!19525 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!721349 () Bool)

(declare-fun res!483337 () Bool)

(assert (=> b!721349 (=> (not res!483337) (not e!404526))))

(declare-fun e!404529 () Bool)

(assert (=> b!721349 (= res!483337 e!404529)))

(declare-fun c!79377 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721349 (= c!79377 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!483342 () Bool)

(declare-fun e!404528 () Bool)

(assert (=> start!64278 (=> (not res!483342) (not e!404528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64278 (= res!483342 (validMask!0 mask!3328))))

(assert (=> start!64278 e!404528))

(assert (=> start!64278 true))

(declare-fun array_inv!15299 (array!40812) Bool)

(assert (=> start!64278 (array_inv!15299 a!3186)))

(declare-fun b!721350 () Bool)

(declare-fun res!483347 () Bool)

(declare-fun e!404527 () Bool)

(assert (=> b!721350 (=> (not res!483347) (not e!404527))))

(declare-datatypes ((List!13580 0))(
  ( (Nil!13577) (Cons!13576 (h!14630 (_ BitVec 64)) (t!19903 List!13580)) )
))
(declare-fun arrayNoDuplicates!0 (array!40812 (_ BitVec 32) List!13580) Bool)

(assert (=> b!721350 (= res!483347 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13577))))

(declare-fun b!721351 () Bool)

(declare-fun res!483346 () Bool)

(assert (=> b!721351 (=> (not res!483346) (not e!404527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40812 (_ BitVec 32)) Bool)

(assert (=> b!721351 (= res!483346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!721352 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7132 0))(
  ( (MissingZero!7132 (index!30895 (_ BitVec 32))) (Found!7132 (index!30896 (_ BitVec 32))) (Intermediate!7132 (undefined!7944 Bool) (index!30897 (_ BitVec 32)) (x!61934 (_ BitVec 32))) (Undefined!7132) (MissingVacant!7132 (index!30898 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40812 (_ BitVec 32)) SeekEntryResult!7132)

(assert (=> b!721352 (= e!404529 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19525 a!3186) j!159) a!3186 mask!3328) (Found!7132 j!159)))))

(declare-fun b!721353 () Bool)

(declare-fun res!483340 () Bool)

(assert (=> b!721353 (=> (not res!483340) (not e!404528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721353 (= res!483340 (validKeyInArray!0 (select (arr!19525 a!3186) j!159)))))

(declare-fun b!721354 () Bool)

(declare-fun res!483348 () Bool)

(assert (=> b!721354 (=> (not res!483348) (not e!404528))))

(assert (=> b!721354 (= res!483348 (and (= (size!19946 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19946 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19946 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721355 () Bool)

(declare-fun res!483344 () Bool)

(assert (=> b!721355 (=> (not res!483344) (not e!404528))))

(declare-fun arrayContainsKey!0 (array!40812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721355 (= res!483344 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721356 () Bool)

(declare-fun res!483338 () Bool)

(assert (=> b!721356 (=> (not res!483338) (not e!404527))))

(assert (=> b!721356 (= res!483338 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19946 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19946 a!3186))))))

(declare-fun b!721357 () Bool)

(assert (=> b!721357 (= e!404528 e!404527)))

(declare-fun res!483343 () Bool)

(assert (=> b!721357 (=> (not res!483343) (not e!404527))))

(declare-fun lt!320053 () SeekEntryResult!7132)

(assert (=> b!721357 (= res!483343 (or (= lt!320053 (MissingZero!7132 i!1173)) (= lt!320053 (MissingVacant!7132 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40812 (_ BitVec 32)) SeekEntryResult!7132)

(assert (=> b!721357 (= lt!320053 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!721358 () Bool)

(declare-fun res!483341 () Bool)

(assert (=> b!721358 (=> (not res!483341) (not e!404526))))

(assert (=> b!721358 (= res!483341 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19525 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721359 () Bool)

(assert (=> b!721359 (= e!404527 e!404526)))

(declare-fun res!483339 () Bool)

(assert (=> b!721359 (=> (not res!483339) (not e!404526))))

(declare-fun lt!320052 () SeekEntryResult!7132)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40812 (_ BitVec 32)) SeekEntryResult!7132)

(assert (=> b!721359 (= res!483339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19525 a!3186) j!159) mask!3328) (select (arr!19525 a!3186) j!159) a!3186 mask!3328) lt!320052))))

(assert (=> b!721359 (= lt!320052 (Intermediate!7132 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721360 () Bool)

(assert (=> b!721360 (= e!404529 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19525 a!3186) j!159) a!3186 mask!3328) lt!320052))))

(declare-fun b!721361 () Bool)

(declare-fun res!483345 () Bool)

(assert (=> b!721361 (=> (not res!483345) (not e!404528))))

(assert (=> b!721361 (= res!483345 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64278 res!483342) b!721354))

(assert (= (and b!721354 res!483348) b!721353))

(assert (= (and b!721353 res!483340) b!721361))

(assert (= (and b!721361 res!483345) b!721355))

(assert (= (and b!721355 res!483344) b!721357))

(assert (= (and b!721357 res!483343) b!721351))

(assert (= (and b!721351 res!483346) b!721350))

(assert (= (and b!721350 res!483347) b!721356))

(assert (= (and b!721356 res!483338) b!721359))

(assert (= (and b!721359 res!483339) b!721358))

(assert (= (and b!721358 res!483341) b!721349))

(assert (= (and b!721349 c!79377) b!721360))

(assert (= (and b!721349 (not c!79377)) b!721352))

(assert (= (and b!721349 res!483337) b!721348))

(declare-fun m!676235 () Bool)

(assert (=> b!721358 m!676235))

(declare-fun m!676237 () Bool)

(assert (=> b!721360 m!676237))

(assert (=> b!721360 m!676237))

(declare-fun m!676239 () Bool)

(assert (=> b!721360 m!676239))

(declare-fun m!676241 () Bool)

(assert (=> b!721348 m!676241))

(declare-fun m!676243 () Bool)

(assert (=> b!721348 m!676243))

(assert (=> b!721348 m!676243))

(declare-fun m!676245 () Bool)

(assert (=> b!721348 m!676245))

(declare-fun m!676247 () Bool)

(assert (=> b!721361 m!676247))

(declare-fun m!676249 () Bool)

(assert (=> b!721350 m!676249))

(declare-fun m!676251 () Bool)

(assert (=> b!721351 m!676251))

(declare-fun m!676253 () Bool)

(assert (=> start!64278 m!676253))

(declare-fun m!676255 () Bool)

(assert (=> start!64278 m!676255))

(declare-fun m!676257 () Bool)

(assert (=> b!721355 m!676257))

(assert (=> b!721352 m!676237))

(assert (=> b!721352 m!676237))

(declare-fun m!676259 () Bool)

(assert (=> b!721352 m!676259))

(declare-fun m!676261 () Bool)

(assert (=> b!721357 m!676261))

(assert (=> b!721353 m!676237))

(assert (=> b!721353 m!676237))

(declare-fun m!676263 () Bool)

(assert (=> b!721353 m!676263))

(assert (=> b!721359 m!676237))

(assert (=> b!721359 m!676237))

(declare-fun m!676265 () Bool)

(assert (=> b!721359 m!676265))

(assert (=> b!721359 m!676265))

(assert (=> b!721359 m!676237))

(declare-fun m!676267 () Bool)

(assert (=> b!721359 m!676267))

(check-sat (not b!721350) (not b!721352) (not b!721361) (not b!721357) (not b!721353) (not start!64278) (not b!721355) (not b!721359) (not b!721348) (not b!721351) (not b!721360))
(check-sat)
