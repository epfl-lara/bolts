; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64726 () Bool)

(assert start!64726)

(declare-fun b!729744 () Bool)

(declare-fun res!490251 () Bool)

(declare-fun e!408436 () Bool)

(assert (=> b!729744 (=> (not res!490251) (not e!408436))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729744 (= res!490251 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41128 0))(
  ( (array!41129 (arr!19680 (Array (_ BitVec 32) (_ BitVec 64))) (size!20101 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41128)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!729745 () Bool)

(declare-datatypes ((SeekEntryResult!7287 0))(
  ( (MissingZero!7287 (index!31515 (_ BitVec 32))) (Found!7287 (index!31516 (_ BitVec 32))) (Intermediate!7287 (undefined!8099 Bool) (index!31517 (_ BitVec 32)) (x!62526 (_ BitVec 32))) (Undefined!7287) (MissingVacant!7287 (index!31518 (_ BitVec 32))) )
))
(declare-fun lt!323342 () SeekEntryResult!7287)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!408440 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41128 (_ BitVec 32)) SeekEntryResult!7287)

(assert (=> b!729745 (= e!408440 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19680 a!3186) j!159) a!3186 mask!3328) lt!323342))))

(declare-fun b!729746 () Bool)

(declare-fun e!408434 () Bool)

(declare-fun e!408439 () Bool)

(assert (=> b!729746 (= e!408434 e!408439)))

(declare-fun res!490247 () Bool)

(assert (=> b!729746 (=> (not res!490247) (not e!408439))))

(declare-fun lt!323345 () SeekEntryResult!7287)

(declare-fun lt!323341 () SeekEntryResult!7287)

(assert (=> b!729746 (= res!490247 (= lt!323345 lt!323341))))

(declare-fun lt!323344 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!323347 () array!41128)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41128 (_ BitVec 32)) SeekEntryResult!7287)

(assert (=> b!729746 (= lt!323341 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323344 lt!323347 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729746 (= lt!323345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323344 mask!3328) lt!323344 lt!323347 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729746 (= lt!323344 (select (store (arr!19680 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729746 (= lt!323347 (array!41129 (store (arr!19680 a!3186) i!1173 k!2102) (size!20101 a!3186)))))

(declare-fun e!408435 () Bool)

(declare-fun b!729747 () Bool)

(assert (=> b!729747 (= e!408435 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323343 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729747 (= lt!323343 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729748 () Bool)

(declare-fun e!408441 () Bool)

(assert (=> b!729748 (= e!408441 e!408440)))

(declare-fun res!490253 () Bool)

(assert (=> b!729748 (=> (not res!490253) (not e!408440))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41128 (_ BitVec 32)) SeekEntryResult!7287)

(assert (=> b!729748 (= res!490253 (= (seekEntryOrOpen!0 (select (arr!19680 a!3186) j!159) a!3186 mask!3328) lt!323342))))

(assert (=> b!729748 (= lt!323342 (Found!7287 j!159))))

(declare-fun e!408433 () Bool)

(declare-fun b!729749 () Bool)

(assert (=> b!729749 (= e!408433 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19680 a!3186) j!159) a!3186 mask!3328) (Found!7287 j!159)))))

(declare-fun b!729750 () Bool)

(declare-fun res!490245 () Bool)

(declare-fun e!408438 () Bool)

(assert (=> b!729750 (=> (not res!490245) (not e!408438))))

(assert (=> b!729750 (= res!490245 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20101 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20101 a!3186))))))

(declare-fun b!729751 () Bool)

(declare-fun res!490242 () Bool)

(assert (=> b!729751 (=> (not res!490242) (not e!408434))))

(assert (=> b!729751 (= res!490242 e!408433)))

(declare-fun c!80127 () Bool)

(assert (=> b!729751 (= c!80127 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729752 () Bool)

(declare-fun res!490249 () Bool)

(assert (=> b!729752 (=> (not res!490249) (not e!408436))))

(declare-fun arrayContainsKey!0 (array!41128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729752 (= res!490249 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729753 () Bool)

(declare-fun res!490248 () Bool)

(assert (=> b!729753 (=> (not res!490248) (not e!408438))))

(declare-datatypes ((List!13735 0))(
  ( (Nil!13732) (Cons!13731 (h!14791 (_ BitVec 64)) (t!20058 List!13735)) )
))
(declare-fun arrayNoDuplicates!0 (array!41128 (_ BitVec 32) List!13735) Bool)

(assert (=> b!729753 (= res!490248 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13732))))

(declare-fun b!729754 () Bool)

(declare-fun lt!323348 () SeekEntryResult!7287)

(assert (=> b!729754 (= e!408433 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19680 a!3186) j!159) a!3186 mask!3328) lt!323348))))

(declare-fun b!729755 () Bool)

(declare-fun res!490252 () Bool)

(assert (=> b!729755 (=> (not res!490252) (not e!408434))))

(assert (=> b!729755 (= res!490252 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19680 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729756 () Bool)

(declare-fun res!490241 () Bool)

(assert (=> b!729756 (=> (not res!490241) (not e!408438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41128 (_ BitVec 32)) Bool)

(assert (=> b!729756 (= res!490241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729757 () Bool)

(declare-fun res!490239 () Bool)

(assert (=> b!729757 (=> (not res!490239) (not e!408436))))

(assert (=> b!729757 (= res!490239 (validKeyInArray!0 (select (arr!19680 a!3186) j!159)))))

(declare-fun res!490254 () Bool)

(assert (=> start!64726 (=> (not res!490254) (not e!408436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64726 (= res!490254 (validMask!0 mask!3328))))

(assert (=> start!64726 e!408436))

(assert (=> start!64726 true))

(declare-fun array_inv!15454 (array!41128) Bool)

(assert (=> start!64726 (array_inv!15454 a!3186)))

(declare-fun b!729758 () Bool)

(declare-fun res!490240 () Bool)

(assert (=> b!729758 (=> (not res!490240) (not e!408436))))

(assert (=> b!729758 (= res!490240 (and (= (size!20101 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20101 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20101 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729759 () Bool)

(assert (=> b!729759 (= e!408436 e!408438)))

(declare-fun res!490243 () Bool)

(assert (=> b!729759 (=> (not res!490243) (not e!408438))))

(declare-fun lt!323340 () SeekEntryResult!7287)

(assert (=> b!729759 (= res!490243 (or (= lt!323340 (MissingZero!7287 i!1173)) (= lt!323340 (MissingVacant!7287 i!1173))))))

(assert (=> b!729759 (= lt!323340 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729760 () Bool)

(assert (=> b!729760 (= e!408438 e!408434)))

(declare-fun res!490244 () Bool)

(assert (=> b!729760 (=> (not res!490244) (not e!408434))))

(assert (=> b!729760 (= res!490244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19680 a!3186) j!159) mask!3328) (select (arr!19680 a!3186) j!159) a!3186 mask!3328) lt!323348))))

(assert (=> b!729760 (= lt!323348 (Intermediate!7287 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729761 () Bool)

(assert (=> b!729761 (= e!408439 (not e!408435))))

(declare-fun res!490246 () Bool)

(assert (=> b!729761 (=> res!490246 e!408435)))

(assert (=> b!729761 (= res!490246 (or (not (is-Intermediate!7287 lt!323341)) (bvsge x!1131 (x!62526 lt!323341))))))

(assert (=> b!729761 e!408441))

(declare-fun res!490250 () Bool)

(assert (=> b!729761 (=> (not res!490250) (not e!408441))))

(assert (=> b!729761 (= res!490250 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24892 0))(
  ( (Unit!24893) )
))
(declare-fun lt!323346 () Unit!24892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24892)

(assert (=> b!729761 (= lt!323346 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64726 res!490254) b!729758))

(assert (= (and b!729758 res!490240) b!729757))

(assert (= (and b!729757 res!490239) b!729744))

(assert (= (and b!729744 res!490251) b!729752))

(assert (= (and b!729752 res!490249) b!729759))

(assert (= (and b!729759 res!490243) b!729756))

(assert (= (and b!729756 res!490241) b!729753))

(assert (= (and b!729753 res!490248) b!729750))

(assert (= (and b!729750 res!490245) b!729760))

(assert (= (and b!729760 res!490244) b!729755))

(assert (= (and b!729755 res!490252) b!729751))

(assert (= (and b!729751 c!80127) b!729754))

(assert (= (and b!729751 (not c!80127)) b!729749))

(assert (= (and b!729751 res!490242) b!729746))

(assert (= (and b!729746 res!490247) b!729761))

(assert (= (and b!729761 res!490250) b!729748))

(assert (= (and b!729748 res!490253) b!729745))

(assert (= (and b!729761 (not res!490246)) b!729747))

(declare-fun m!683437 () Bool)

(assert (=> b!729760 m!683437))

(assert (=> b!729760 m!683437))

(declare-fun m!683439 () Bool)

(assert (=> b!729760 m!683439))

(assert (=> b!729760 m!683439))

(assert (=> b!729760 m!683437))

(declare-fun m!683441 () Bool)

(assert (=> b!729760 m!683441))

(declare-fun m!683443 () Bool)

(assert (=> b!729744 m!683443))

(declare-fun m!683445 () Bool)

(assert (=> b!729752 m!683445))

(assert (=> b!729749 m!683437))

(assert (=> b!729749 m!683437))

(declare-fun m!683447 () Bool)

(assert (=> b!729749 m!683447))

(declare-fun m!683449 () Bool)

(assert (=> b!729755 m!683449))

(assert (=> b!729745 m!683437))

(assert (=> b!729745 m!683437))

(declare-fun m!683451 () Bool)

(assert (=> b!729745 m!683451))

(assert (=> b!729754 m!683437))

(assert (=> b!729754 m!683437))

(declare-fun m!683453 () Bool)

(assert (=> b!729754 m!683453))

(declare-fun m!683455 () Bool)

(assert (=> b!729761 m!683455))

(declare-fun m!683457 () Bool)

(assert (=> b!729761 m!683457))

(declare-fun m!683459 () Bool)

(assert (=> start!64726 m!683459))

(declare-fun m!683461 () Bool)

(assert (=> start!64726 m!683461))

(assert (=> b!729757 m!683437))

(assert (=> b!729757 m!683437))

(declare-fun m!683463 () Bool)

(assert (=> b!729757 m!683463))

(declare-fun m!683465 () Bool)

(assert (=> b!729756 m!683465))

(declare-fun m!683467 () Bool)

(assert (=> b!729759 m!683467))

(declare-fun m!683469 () Bool)

(assert (=> b!729753 m!683469))

(assert (=> b!729748 m!683437))

(assert (=> b!729748 m!683437))

(declare-fun m!683471 () Bool)

(assert (=> b!729748 m!683471))

(declare-fun m!683473 () Bool)

(assert (=> b!729747 m!683473))

(declare-fun m!683475 () Bool)

(assert (=> b!729746 m!683475))

(declare-fun m!683477 () Bool)

(assert (=> b!729746 m!683477))

(declare-fun m!683479 () Bool)

(assert (=> b!729746 m!683479))

(declare-fun m!683481 () Bool)

(assert (=> b!729746 m!683481))

(assert (=> b!729746 m!683481))

(declare-fun m!683483 () Bool)

(assert (=> b!729746 m!683483))

(push 1)

(assert (not b!729761))

(assert (not b!729749))

(assert (not b!729754))

(assert (not b!729757))

(assert (not b!729747))

(assert (not b!729746))

(assert (not start!64726))

(assert (not b!729744))

(assert (not b!729753))

(assert (not b!729756))

(assert (not b!729759))

(assert (not b!729752))

(assert (not b!729760))

(assert (not b!729745))

(assert (not b!729748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

