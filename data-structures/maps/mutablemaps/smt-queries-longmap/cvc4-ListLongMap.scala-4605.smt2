; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64286 () Bool)

(assert start!64286)

(declare-fun b!721524 () Bool)

(declare-fun res!483494 () Bool)

(declare-fun e!404596 () Bool)

(assert (=> b!721524 (=> (not res!483494) (not e!404596))))

(declare-datatypes ((array!40820 0))(
  ( (array!40821 (arr!19529 (Array (_ BitVec 32) (_ BitVec 64))) (size!19950 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40820)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40820 (_ BitVec 32)) Bool)

(assert (=> b!721524 (= res!483494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721525 () Bool)

(declare-fun e!404595 () Bool)

(assert (=> b!721525 (= e!404595 e!404596)))

(declare-fun res!483498 () Bool)

(assert (=> b!721525 (=> (not res!483498) (not e!404596))))

(declare-datatypes ((SeekEntryResult!7136 0))(
  ( (MissingZero!7136 (index!30911 (_ BitVec 32))) (Found!7136 (index!30912 (_ BitVec 32))) (Intermediate!7136 (undefined!7948 Bool) (index!30913 (_ BitVec 32)) (x!61946 (_ BitVec 32))) (Undefined!7136) (MissingVacant!7136 (index!30914 (_ BitVec 32))) )
))
(declare-fun lt!320088 () SeekEntryResult!7136)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721525 (= res!483498 (or (= lt!320088 (MissingZero!7136 i!1173)) (= lt!320088 (MissingVacant!7136 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40820 (_ BitVec 32)) SeekEntryResult!7136)

(assert (=> b!721525 (= lt!320088 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721526 () Bool)

(declare-fun e!404598 () Bool)

(assert (=> b!721526 (= e!404596 e!404598)))

(declare-fun res!483497 () Bool)

(assert (=> b!721526 (=> (not res!483497) (not e!404598))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!320089 () SeekEntryResult!7136)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40820 (_ BitVec 32)) SeekEntryResult!7136)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721526 (= res!483497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19529 a!3186) j!159) mask!3328) (select (arr!19529 a!3186) j!159) a!3186 mask!3328) lt!320089))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721526 (= lt!320089 (Intermediate!7136 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721527 () Bool)

(declare-fun res!483500 () Bool)

(assert (=> b!721527 (=> (not res!483500) (not e!404595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721527 (= res!483500 (validKeyInArray!0 k!2102))))

(declare-fun b!721528 () Bool)

(declare-fun res!483496 () Bool)

(assert (=> b!721528 (=> (not res!483496) (not e!404596))))

(declare-datatypes ((List!13584 0))(
  ( (Nil!13581) (Cons!13580 (h!14634 (_ BitVec 64)) (t!19907 List!13584)) )
))
(declare-fun arrayNoDuplicates!0 (array!40820 (_ BitVec 32) List!13584) Bool)

(assert (=> b!721528 (= res!483496 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13581))))

(declare-fun b!721529 () Bool)

(declare-fun res!483495 () Bool)

(assert (=> b!721529 (=> (not res!483495) (not e!404595))))

(assert (=> b!721529 (= res!483495 (and (= (size!19950 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19950 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19950 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721530 () Bool)

(declare-fun res!483493 () Bool)

(assert (=> b!721530 (=> (not res!483493) (not e!404595))))

(declare-fun arrayContainsKey!0 (array!40820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721530 (= res!483493 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721531 () Bool)

(declare-fun e!404594 () Bool)

(assert (=> b!721531 (= e!404598 e!404594)))

(declare-fun res!483489 () Bool)

(assert (=> b!721531 (=> (not res!483489) (not e!404594))))

(declare-fun lt!320090 () (_ BitVec 32))

(assert (=> b!721531 (= res!483489 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge lt!320090 #b00000000000000000000000000000000) (bvslt lt!320090 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!721531 (= lt!320090 (toIndex!0 (select (store (arr!19529 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!721532 () Bool)

(declare-fun res!483492 () Bool)

(assert (=> b!721532 (=> (not res!483492) (not e!404595))))

(assert (=> b!721532 (= res!483492 (validKeyInArray!0 (select (arr!19529 a!3186) j!159)))))

(declare-fun res!483499 () Bool)

(assert (=> start!64286 (=> (not res!483499) (not e!404595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64286 (= res!483499 (validMask!0 mask!3328))))

(assert (=> start!64286 e!404595))

(assert (=> start!64286 true))

(declare-fun array_inv!15303 (array!40820) Bool)

(assert (=> start!64286 (array_inv!15303 a!3186)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404593 () Bool)

(declare-fun b!721533 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40820 (_ BitVec 32)) SeekEntryResult!7136)

(assert (=> b!721533 (= e!404593 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19529 a!3186) j!159) a!3186 mask!3328) (Found!7136 j!159)))))

(declare-fun b!721534 () Bool)

(assert (=> b!721534 (= e!404594 (not (validKeyInArray!0 (select (store (arr!19529 a!3186) i!1173 k!2102) j!159))))))

(declare-fun b!721535 () Bool)

(declare-fun res!483490 () Bool)

(assert (=> b!721535 (=> (not res!483490) (not e!404596))))

(assert (=> b!721535 (= res!483490 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19950 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19950 a!3186))))))

(declare-fun b!721536 () Bool)

(declare-fun res!483491 () Bool)

(assert (=> b!721536 (=> (not res!483491) (not e!404598))))

(assert (=> b!721536 (= res!483491 e!404593)))

(declare-fun c!79389 () Bool)

(assert (=> b!721536 (= c!79389 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721537 () Bool)

(assert (=> b!721537 (= e!404593 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19529 a!3186) j!159) a!3186 mask!3328) lt!320089))))

(declare-fun b!721538 () Bool)

(declare-fun res!483501 () Bool)

(assert (=> b!721538 (=> (not res!483501) (not e!404598))))

(assert (=> b!721538 (= res!483501 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19529 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64286 res!483499) b!721529))

(assert (= (and b!721529 res!483495) b!721532))

(assert (= (and b!721532 res!483492) b!721527))

(assert (= (and b!721527 res!483500) b!721530))

(assert (= (and b!721530 res!483493) b!721525))

(assert (= (and b!721525 res!483498) b!721524))

(assert (= (and b!721524 res!483494) b!721528))

(assert (= (and b!721528 res!483496) b!721535))

(assert (= (and b!721535 res!483490) b!721526))

(assert (= (and b!721526 res!483497) b!721538))

(assert (= (and b!721538 res!483501) b!721536))

(assert (= (and b!721536 c!79389) b!721537))

(assert (= (and b!721536 (not c!79389)) b!721533))

(assert (= (and b!721536 res!483491) b!721531))

(assert (= (and b!721531 res!483489) b!721534))

(declare-fun m!676375 () Bool)

(assert (=> b!721527 m!676375))

(declare-fun m!676377 () Bool)

(assert (=> b!721530 m!676377))

(declare-fun m!676379 () Bool)

(assert (=> b!721537 m!676379))

(assert (=> b!721537 m!676379))

(declare-fun m!676381 () Bool)

(assert (=> b!721537 m!676381))

(declare-fun m!676383 () Bool)

(assert (=> b!721525 m!676383))

(declare-fun m!676385 () Bool)

(assert (=> start!64286 m!676385))

(declare-fun m!676387 () Bool)

(assert (=> start!64286 m!676387))

(declare-fun m!676389 () Bool)

(assert (=> b!721528 m!676389))

(declare-fun m!676391 () Bool)

(assert (=> b!721538 m!676391))

(assert (=> b!721533 m!676379))

(assert (=> b!721533 m!676379))

(declare-fun m!676393 () Bool)

(assert (=> b!721533 m!676393))

(declare-fun m!676395 () Bool)

(assert (=> b!721531 m!676395))

(declare-fun m!676397 () Bool)

(assert (=> b!721531 m!676397))

(assert (=> b!721531 m!676397))

(declare-fun m!676399 () Bool)

(assert (=> b!721531 m!676399))

(assert (=> b!721526 m!676379))

(assert (=> b!721526 m!676379))

(declare-fun m!676401 () Bool)

(assert (=> b!721526 m!676401))

(assert (=> b!721526 m!676401))

(assert (=> b!721526 m!676379))

(declare-fun m!676403 () Bool)

(assert (=> b!721526 m!676403))

(declare-fun m!676405 () Bool)

(assert (=> b!721524 m!676405))

(assert (=> b!721532 m!676379))

(assert (=> b!721532 m!676379))

(declare-fun m!676407 () Bool)

(assert (=> b!721532 m!676407))

(assert (=> b!721534 m!676395))

(assert (=> b!721534 m!676397))

(assert (=> b!721534 m!676397))

(declare-fun m!676409 () Bool)

(assert (=> b!721534 m!676409))

(push 1)

(assert (not b!721527))

(assert (not b!721532))

(assert (not b!721531))

(assert (not b!721534))

