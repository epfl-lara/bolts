; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64506 () Bool)

(assert start!64506)

(declare-fun b!725389 () Bool)

(declare-fun e!406246 () Bool)

(assert (=> b!725389 (= e!406246 (not true))))

(declare-fun e!406244 () Bool)

(assert (=> b!725389 e!406244))

(declare-fun res!486632 () Bool)

(assert (=> b!725389 (=> (not res!486632) (not e!406244))))

(declare-datatypes ((array!40977 0))(
  ( (array!40978 (arr!19606 (Array (_ BitVec 32) (_ BitVec 64))) (size!20027 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40977)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40977 (_ BitVec 32)) Bool)

(assert (=> b!725389 (= res!486632 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24744 0))(
  ( (Unit!24745) )
))
(declare-fun lt!321338 () Unit!24744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40977 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24744)

(assert (=> b!725389 (= lt!321338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725390 () Bool)

(declare-fun res!486631 () Bool)

(declare-fun e!406247 () Bool)

(assert (=> b!725390 (=> (not res!486631) (not e!406247))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725390 (= res!486631 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20027 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20027 a!3186))))))

(declare-fun res!486621 () Bool)

(declare-fun e!406245 () Bool)

(assert (=> start!64506 (=> (not res!486621) (not e!406245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64506 (= res!486621 (validMask!0 mask!3328))))

(assert (=> start!64506 e!406245))

(assert (=> start!64506 true))

(declare-fun array_inv!15380 (array!40977) Bool)

(assert (=> start!64506 (array_inv!15380 a!3186)))

(declare-fun b!725391 () Bool)

(declare-fun res!486630 () Bool)

(assert (=> b!725391 (=> (not res!486630) (not e!406245))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725391 (= res!486630 (and (= (size!20027 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20027 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20027 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725392 () Bool)

(declare-fun res!486629 () Bool)

(assert (=> b!725392 (=> (not res!486629) (not e!406245))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725392 (= res!486629 (validKeyInArray!0 k0!2102))))

(declare-fun b!725393 () Bool)

(declare-fun res!486623 () Bool)

(declare-fun e!406243 () Bool)

(assert (=> b!725393 (=> (not res!486623) (not e!406243))))

(assert (=> b!725393 (= res!486623 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19606 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725394 () Bool)

(declare-fun e!406242 () Bool)

(assert (=> b!725394 (= e!406244 e!406242)))

(declare-fun res!486628 () Bool)

(assert (=> b!725394 (=> (not res!486628) (not e!406242))))

(declare-datatypes ((SeekEntryResult!7213 0))(
  ( (MissingZero!7213 (index!31219 (_ BitVec 32))) (Found!7213 (index!31220 (_ BitVec 32))) (Intermediate!7213 (undefined!8025 Bool) (index!31221 (_ BitVec 32)) (x!62240 (_ BitVec 32))) (Undefined!7213) (MissingVacant!7213 (index!31222 (_ BitVec 32))) )
))
(declare-fun lt!321333 () SeekEntryResult!7213)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40977 (_ BitVec 32)) SeekEntryResult!7213)

(assert (=> b!725394 (= res!486628 (= (seekEntryOrOpen!0 (select (arr!19606 a!3186) j!159) a!3186 mask!3328) lt!321333))))

(assert (=> b!725394 (= lt!321333 (Found!7213 j!159))))

(declare-fun b!725395 () Bool)

(assert (=> b!725395 (= e!406243 e!406246)))

(declare-fun res!486624 () Bool)

(assert (=> b!725395 (=> (not res!486624) (not e!406246))))

(declare-fun lt!321336 () (_ BitVec 64))

(declare-fun lt!321335 () array!40977)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40977 (_ BitVec 32)) SeekEntryResult!7213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725395 (= res!486624 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321336 mask!3328) lt!321336 lt!321335 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321336 lt!321335 mask!3328)))))

(assert (=> b!725395 (= lt!321336 (select (store (arr!19606 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725395 (= lt!321335 (array!40978 (store (arr!19606 a!3186) i!1173 k0!2102) (size!20027 a!3186)))))

(declare-fun b!725396 () Bool)

(declare-fun res!486627 () Bool)

(assert (=> b!725396 (=> (not res!486627) (not e!406245))))

(assert (=> b!725396 (= res!486627 (validKeyInArray!0 (select (arr!19606 a!3186) j!159)))))

(declare-fun b!725397 () Bool)

(assert (=> b!725397 (= e!406245 e!406247)))

(declare-fun res!486620 () Bool)

(assert (=> b!725397 (=> (not res!486620) (not e!406247))))

(declare-fun lt!321337 () SeekEntryResult!7213)

(assert (=> b!725397 (= res!486620 (or (= lt!321337 (MissingZero!7213 i!1173)) (= lt!321337 (MissingVacant!7213 i!1173))))))

(assert (=> b!725397 (= lt!321337 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!725398 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40977 (_ BitVec 32)) SeekEntryResult!7213)

(assert (=> b!725398 (= e!406242 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19606 a!3186) j!159) a!3186 mask!3328) lt!321333))))

(declare-fun e!406241 () Bool)

(declare-fun lt!321334 () SeekEntryResult!7213)

(declare-fun b!725399 () Bool)

(assert (=> b!725399 (= e!406241 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19606 a!3186) j!159) a!3186 mask!3328) lt!321334))))

(declare-fun b!725400 () Bool)

(declare-fun res!486633 () Bool)

(assert (=> b!725400 (=> (not res!486633) (not e!406247))))

(assert (=> b!725400 (= res!486633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725401 () Bool)

(assert (=> b!725401 (= e!406241 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19606 a!3186) j!159) a!3186 mask!3328) (Found!7213 j!159)))))

(declare-fun b!725402 () Bool)

(declare-fun res!486626 () Bool)

(assert (=> b!725402 (=> (not res!486626) (not e!406245))))

(declare-fun arrayContainsKey!0 (array!40977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725402 (= res!486626 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725403 () Bool)

(assert (=> b!725403 (= e!406247 e!406243)))

(declare-fun res!486625 () Bool)

(assert (=> b!725403 (=> (not res!486625) (not e!406243))))

(assert (=> b!725403 (= res!486625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19606 a!3186) j!159) mask!3328) (select (arr!19606 a!3186) j!159) a!3186 mask!3328) lt!321334))))

(assert (=> b!725403 (= lt!321334 (Intermediate!7213 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725404 () Bool)

(declare-fun res!486619 () Bool)

(assert (=> b!725404 (=> (not res!486619) (not e!406243))))

(assert (=> b!725404 (= res!486619 e!406241)))

(declare-fun c!79758 () Bool)

(assert (=> b!725404 (= c!79758 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725405 () Bool)

(declare-fun res!486622 () Bool)

(assert (=> b!725405 (=> (not res!486622) (not e!406247))))

(declare-datatypes ((List!13661 0))(
  ( (Nil!13658) (Cons!13657 (h!14714 (_ BitVec 64)) (t!19984 List!13661)) )
))
(declare-fun arrayNoDuplicates!0 (array!40977 (_ BitVec 32) List!13661) Bool)

(assert (=> b!725405 (= res!486622 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13658))))

(assert (= (and start!64506 res!486621) b!725391))

(assert (= (and b!725391 res!486630) b!725396))

(assert (= (and b!725396 res!486627) b!725392))

(assert (= (and b!725392 res!486629) b!725402))

(assert (= (and b!725402 res!486626) b!725397))

(assert (= (and b!725397 res!486620) b!725400))

(assert (= (and b!725400 res!486633) b!725405))

(assert (= (and b!725405 res!486622) b!725390))

(assert (= (and b!725390 res!486631) b!725403))

(assert (= (and b!725403 res!486625) b!725393))

(assert (= (and b!725393 res!486623) b!725404))

(assert (= (and b!725404 c!79758) b!725399))

(assert (= (and b!725404 (not c!79758)) b!725401))

(assert (= (and b!725404 res!486619) b!725395))

(assert (= (and b!725395 res!486624) b!725389))

(assert (= (and b!725389 res!486632) b!725394))

(assert (= (and b!725394 res!486628) b!725398))

(declare-fun m!679643 () Bool)

(assert (=> b!725392 m!679643))

(declare-fun m!679645 () Bool)

(assert (=> b!725405 m!679645))

(declare-fun m!679647 () Bool)

(assert (=> b!725401 m!679647))

(assert (=> b!725401 m!679647))

(declare-fun m!679649 () Bool)

(assert (=> b!725401 m!679649))

(assert (=> b!725396 m!679647))

(assert (=> b!725396 m!679647))

(declare-fun m!679651 () Bool)

(assert (=> b!725396 m!679651))

(declare-fun m!679653 () Bool)

(assert (=> b!725402 m!679653))

(declare-fun m!679655 () Bool)

(assert (=> b!725393 m!679655))

(declare-fun m!679657 () Bool)

(assert (=> b!725397 m!679657))

(assert (=> b!725399 m!679647))

(assert (=> b!725399 m!679647))

(declare-fun m!679659 () Bool)

(assert (=> b!725399 m!679659))

(assert (=> b!725394 m!679647))

(assert (=> b!725394 m!679647))

(declare-fun m!679661 () Bool)

(assert (=> b!725394 m!679661))

(assert (=> b!725403 m!679647))

(assert (=> b!725403 m!679647))

(declare-fun m!679663 () Bool)

(assert (=> b!725403 m!679663))

(assert (=> b!725403 m!679663))

(assert (=> b!725403 m!679647))

(declare-fun m!679665 () Bool)

(assert (=> b!725403 m!679665))

(assert (=> b!725398 m!679647))

(assert (=> b!725398 m!679647))

(declare-fun m!679667 () Bool)

(assert (=> b!725398 m!679667))

(declare-fun m!679669 () Bool)

(assert (=> start!64506 m!679669))

(declare-fun m!679671 () Bool)

(assert (=> start!64506 m!679671))

(declare-fun m!679673 () Bool)

(assert (=> b!725389 m!679673))

(declare-fun m!679675 () Bool)

(assert (=> b!725389 m!679675))

(declare-fun m!679677 () Bool)

(assert (=> b!725400 m!679677))

(declare-fun m!679679 () Bool)

(assert (=> b!725395 m!679679))

(declare-fun m!679681 () Bool)

(assert (=> b!725395 m!679681))

(declare-fun m!679683 () Bool)

(assert (=> b!725395 m!679683))

(declare-fun m!679685 () Bool)

(assert (=> b!725395 m!679685))

(assert (=> b!725395 m!679681))

(declare-fun m!679687 () Bool)

(assert (=> b!725395 m!679687))

(check-sat (not b!725400) (not b!725394) (not b!725392) (not b!725402) (not b!725398) (not b!725399) (not b!725396) (not b!725405) (not b!725403) (not start!64506) (not b!725389) (not b!725401) (not b!725397) (not b!725395))
(check-sat)
