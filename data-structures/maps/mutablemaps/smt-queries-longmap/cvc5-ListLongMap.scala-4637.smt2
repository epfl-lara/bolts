; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64540 () Bool)

(assert start!64540)

(declare-fun b!726265 () Bool)

(declare-fun res!487394 () Bool)

(declare-fun e!406662 () Bool)

(assert (=> b!726265 (=> (not res!487394) (not e!406662))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726265 (= res!487394 (validKeyInArray!0 k!2102))))

(declare-fun b!726266 () Bool)

(declare-fun res!487404 () Bool)

(declare-fun e!406664 () Bool)

(assert (=> b!726266 (=> (not res!487404) (not e!406664))))

(declare-datatypes ((array!41011 0))(
  ( (array!41012 (arr!19623 (Array (_ BitVec 32) (_ BitVec 64))) (size!20044 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41011)

(declare-datatypes ((List!13678 0))(
  ( (Nil!13675) (Cons!13674 (h!14731 (_ BitVec 64)) (t!20001 List!13678)) )
))
(declare-fun arrayNoDuplicates!0 (array!41011 (_ BitVec 32) List!13678) Bool)

(assert (=> b!726266 (= res!487404 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13675))))

(declare-fun b!726267 () Bool)

(declare-fun res!487402 () Bool)

(assert (=> b!726267 (=> (not res!487402) (not e!406664))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!726267 (= res!487402 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20044 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20044 a!3186))))))

(declare-fun b!726268 () Bool)

(declare-fun res!487405 () Bool)

(assert (=> b!726268 (=> (not res!487405) (not e!406662))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!726268 (= res!487405 (and (= (size!20044 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20044 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20044 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726269 () Bool)

(declare-fun e!406660 () Bool)

(assert (=> b!726269 (= e!406664 e!406660)))

(declare-fun res!487395 () Bool)

(assert (=> b!726269 (=> (not res!487395) (not e!406660))))

(declare-datatypes ((SeekEntryResult!7230 0))(
  ( (MissingZero!7230 (index!31287 (_ BitVec 32))) (Found!7230 (index!31288 (_ BitVec 32))) (Intermediate!7230 (undefined!8042 Bool) (index!31289 (_ BitVec 32)) (x!62305 (_ BitVec 32))) (Undefined!7230) (MissingVacant!7230 (index!31290 (_ BitVec 32))) )
))
(declare-fun lt!321665 () SeekEntryResult!7230)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41011 (_ BitVec 32)) SeekEntryResult!7230)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726269 (= res!487395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19623 a!3186) j!159) mask!3328) (select (arr!19623 a!3186) j!159) a!3186 mask!3328) lt!321665))))

(assert (=> b!726269 (= lt!321665 (Intermediate!7230 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726270 () Bool)

(assert (=> b!726270 (= e!406662 e!406664)))

(declare-fun res!487396 () Bool)

(assert (=> b!726270 (=> (not res!487396) (not e!406664))))

(declare-fun lt!321661 () SeekEntryResult!7230)

(assert (=> b!726270 (= res!487396 (or (= lt!321661 (MissingZero!7230 i!1173)) (= lt!321661 (MissingVacant!7230 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41011 (_ BitVec 32)) SeekEntryResult!7230)

(assert (=> b!726270 (= lt!321661 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726271 () Bool)

(declare-fun res!487407 () Bool)

(assert (=> b!726271 (=> (not res!487407) (not e!406660))))

(declare-fun e!406659 () Bool)

(assert (=> b!726271 (= res!487407 e!406659)))

(declare-fun c!79809 () Bool)

(assert (=> b!726271 (= c!79809 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726272 () Bool)

(declare-fun res!487406 () Bool)

(assert (=> b!726272 (=> (not res!487406) (not e!406660))))

(assert (=> b!726272 (= res!487406 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19623 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726273 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41011 (_ BitVec 32)) SeekEntryResult!7230)

(assert (=> b!726273 (= e!406659 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19623 a!3186) j!159) a!3186 mask!3328) (Found!7230 j!159)))))

(declare-fun res!487401 () Bool)

(assert (=> start!64540 (=> (not res!487401) (not e!406662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64540 (= res!487401 (validMask!0 mask!3328))))

(assert (=> start!64540 e!406662))

(assert (=> start!64540 true))

(declare-fun array_inv!15397 (array!41011) Bool)

(assert (=> start!64540 (array_inv!15397 a!3186)))

(declare-fun b!726274 () Bool)

(declare-fun res!487393 () Bool)

(assert (=> b!726274 (=> (not res!487393) (not e!406664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41011 (_ BitVec 32)) Bool)

(assert (=> b!726274 (= res!487393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!406663 () Bool)

(declare-fun b!726275 () Bool)

(declare-fun lt!321663 () SeekEntryResult!7230)

(assert (=> b!726275 (= e!406663 (not (or (not (is-Intermediate!7230 lt!321663)) (bvsge x!1131 (x!62305 lt!321663)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!406661 () Bool)

(assert (=> b!726275 e!406661))

(declare-fun res!487397 () Bool)

(assert (=> b!726275 (=> (not res!487397) (not e!406661))))

(assert (=> b!726275 (= res!487397 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24778 0))(
  ( (Unit!24779) )
))
(declare-fun lt!321667 () Unit!24778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24778)

(assert (=> b!726275 (= lt!321667 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726276 () Bool)

(declare-fun e!406658 () Bool)

(assert (=> b!726276 (= e!406661 e!406658)))

(declare-fun res!487399 () Bool)

(assert (=> b!726276 (=> (not res!487399) (not e!406658))))

(declare-fun lt!321664 () SeekEntryResult!7230)

(assert (=> b!726276 (= res!487399 (= (seekEntryOrOpen!0 (select (arr!19623 a!3186) j!159) a!3186 mask!3328) lt!321664))))

(assert (=> b!726276 (= lt!321664 (Found!7230 j!159))))

(declare-fun b!726277 () Bool)

(declare-fun res!487398 () Bool)

(assert (=> b!726277 (=> (not res!487398) (not e!406662))))

(declare-fun arrayContainsKey!0 (array!41011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726277 (= res!487398 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726278 () Bool)

(declare-fun res!487400 () Bool)

(assert (=> b!726278 (=> (not res!487400) (not e!406662))))

(assert (=> b!726278 (= res!487400 (validKeyInArray!0 (select (arr!19623 a!3186) j!159)))))

(declare-fun b!726279 () Bool)

(assert (=> b!726279 (= e!406658 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19623 a!3186) j!159) a!3186 mask!3328) lt!321664))))

(declare-fun b!726280 () Bool)

(assert (=> b!726280 (= e!406660 e!406663)))

(declare-fun res!487403 () Bool)

(assert (=> b!726280 (=> (not res!487403) (not e!406663))))

(declare-fun lt!321662 () SeekEntryResult!7230)

(assert (=> b!726280 (= res!487403 (= lt!321662 lt!321663))))

(declare-fun lt!321666 () (_ BitVec 64))

(declare-fun lt!321668 () array!41011)

(assert (=> b!726280 (= lt!321663 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321666 lt!321668 mask!3328))))

(assert (=> b!726280 (= lt!321662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321666 mask!3328) lt!321666 lt!321668 mask!3328))))

(assert (=> b!726280 (= lt!321666 (select (store (arr!19623 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726280 (= lt!321668 (array!41012 (store (arr!19623 a!3186) i!1173 k!2102) (size!20044 a!3186)))))

(declare-fun b!726281 () Bool)

(assert (=> b!726281 (= e!406659 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19623 a!3186) j!159) a!3186 mask!3328) lt!321665))))

(assert (= (and start!64540 res!487401) b!726268))

(assert (= (and b!726268 res!487405) b!726278))

(assert (= (and b!726278 res!487400) b!726265))

(assert (= (and b!726265 res!487394) b!726277))

(assert (= (and b!726277 res!487398) b!726270))

(assert (= (and b!726270 res!487396) b!726274))

(assert (= (and b!726274 res!487393) b!726266))

(assert (= (and b!726266 res!487404) b!726267))

(assert (= (and b!726267 res!487402) b!726269))

(assert (= (and b!726269 res!487395) b!726272))

(assert (= (and b!726272 res!487406) b!726271))

(assert (= (and b!726271 c!79809) b!726281))

(assert (= (and b!726271 (not c!79809)) b!726273))

(assert (= (and b!726271 res!487407) b!726280))

(assert (= (and b!726280 res!487403) b!726275))

(assert (= (and b!726275 res!487397) b!726276))

(assert (= (and b!726276 res!487399) b!726279))

(declare-fun m!680431 () Bool)

(assert (=> b!726277 m!680431))

(declare-fun m!680433 () Bool)

(assert (=> b!726276 m!680433))

(assert (=> b!726276 m!680433))

(declare-fun m!680435 () Bool)

(assert (=> b!726276 m!680435))

(declare-fun m!680437 () Bool)

(assert (=> b!726275 m!680437))

(declare-fun m!680439 () Bool)

(assert (=> b!726275 m!680439))

(assert (=> b!726281 m!680433))

(assert (=> b!726281 m!680433))

(declare-fun m!680441 () Bool)

(assert (=> b!726281 m!680441))

(assert (=> b!726278 m!680433))

(assert (=> b!726278 m!680433))

(declare-fun m!680443 () Bool)

(assert (=> b!726278 m!680443))

(declare-fun m!680445 () Bool)

(assert (=> b!726272 m!680445))

(assert (=> b!726273 m!680433))

(assert (=> b!726273 m!680433))

(declare-fun m!680447 () Bool)

(assert (=> b!726273 m!680447))

(assert (=> b!726269 m!680433))

(assert (=> b!726269 m!680433))

(declare-fun m!680449 () Bool)

(assert (=> b!726269 m!680449))

(assert (=> b!726269 m!680449))

(assert (=> b!726269 m!680433))

(declare-fun m!680451 () Bool)

(assert (=> b!726269 m!680451))

(declare-fun m!680453 () Bool)

(assert (=> start!64540 m!680453))

(declare-fun m!680455 () Bool)

(assert (=> start!64540 m!680455))

(assert (=> b!726279 m!680433))

(assert (=> b!726279 m!680433))

(declare-fun m!680457 () Bool)

(assert (=> b!726279 m!680457))

(declare-fun m!680459 () Bool)

(assert (=> b!726274 m!680459))

(declare-fun m!680461 () Bool)

(assert (=> b!726280 m!680461))

(assert (=> b!726280 m!680461))

(declare-fun m!680463 () Bool)

(assert (=> b!726280 m!680463))

(declare-fun m!680465 () Bool)

(assert (=> b!726280 m!680465))

(declare-fun m!680467 () Bool)

(assert (=> b!726280 m!680467))

(declare-fun m!680469 () Bool)

(assert (=> b!726280 m!680469))

(declare-fun m!680471 () Bool)

(assert (=> b!726266 m!680471))

(declare-fun m!680473 () Bool)

(assert (=> b!726265 m!680473))

(declare-fun m!680475 () Bool)

(assert (=> b!726270 m!680475))

(push 1)

(assert (not b!726275))

(assert (not b!726280))

(assert (not b!726266))

(assert (not start!64540))

(assert (not b!726281))

(assert (not b!726279))

(assert (not b!726278))

(assert (not b!726274))

(assert (not b!726276))

(assert (not b!726273))

(assert (not b!726270))

(assert (not b!726277))

(assert (not b!726265))

(assert (not b!726269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

