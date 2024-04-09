; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65570 () Bool)

(assert start!65570)

(declare-fun b!748482 () Bool)

(declare-fun e!417772 () Bool)

(declare-fun e!417766 () Bool)

(assert (=> b!748482 (= e!417772 (not e!417766))))

(declare-fun res!505028 () Bool)

(assert (=> b!748482 (=> res!505028 e!417766)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7565 0))(
  ( (MissingZero!7565 (index!32627 (_ BitVec 32))) (Found!7565 (index!32628 (_ BitVec 32))) (Intermediate!7565 (undefined!8377 Bool) (index!32629 (_ BitVec 32)) (x!63588 (_ BitVec 32))) (Undefined!7565) (MissingVacant!7565 (index!32630 (_ BitVec 32))) )
))
(declare-fun lt!332747 () SeekEntryResult!7565)

(assert (=> b!748482 (= res!505028 (or (not (is-Intermediate!7565 lt!332747)) (bvslt x!1131 (x!63588 lt!332747)) (not (= x!1131 (x!63588 lt!332747))) (not (= index!1321 (index!32629 lt!332747)))))))

(declare-fun e!417771 () Bool)

(assert (=> b!748482 e!417771))

(declare-fun res!505026 () Bool)

(assert (=> b!748482 (=> (not res!505026) (not e!417771))))

(declare-fun lt!332754 () SeekEntryResult!7565)

(declare-fun lt!332753 () SeekEntryResult!7565)

(assert (=> b!748482 (= res!505026 (= lt!332754 lt!332753))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!748482 (= lt!332753 (Found!7565 j!159))))

(declare-datatypes ((array!41696 0))(
  ( (array!41697 (arr!19958 (Array (_ BitVec 32) (_ BitVec 64))) (size!20379 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41696)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41696 (_ BitVec 32)) SeekEntryResult!7565)

(assert (=> b!748482 (= lt!332754 (seekEntryOrOpen!0 (select (arr!19958 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41696 (_ BitVec 32)) Bool)

(assert (=> b!748482 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25662 0))(
  ( (Unit!25663) )
))
(declare-fun lt!332755 () Unit!25662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25662)

(assert (=> b!748482 (= lt!332755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748483 () Bool)

(declare-fun res!505025 () Bool)

(declare-fun e!417767 () Bool)

(assert (=> b!748483 (=> (not res!505025) (not e!417767))))

(assert (=> b!748483 (= res!505025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748484 () Bool)

(declare-fun res!505015 () Bool)

(declare-fun e!417773 () Bool)

(assert (=> b!748484 (=> (not res!505015) (not e!417773))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748484 (= res!505015 (validKeyInArray!0 k!2102))))

(declare-fun b!748485 () Bool)

(declare-fun e!417769 () Unit!25662)

(declare-fun Unit!25664 () Unit!25662)

(assert (=> b!748485 (= e!417769 Unit!25664)))

(assert (=> b!748485 false))

(declare-fun b!748487 () Bool)

(declare-fun e!417768 () Bool)

(declare-fun lt!332749 () SeekEntryResult!7565)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41696 (_ BitVec 32)) SeekEntryResult!7565)

(assert (=> b!748487 (= e!417768 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19958 a!3186) j!159) a!3186 mask!3328) lt!332749))))

(declare-fun b!748488 () Bool)

(declare-fun res!505029 () Bool)

(assert (=> b!748488 (=> res!505029 e!417766)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41696 (_ BitVec 32)) SeekEntryResult!7565)

(assert (=> b!748488 (= res!505029 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19958 a!3186) j!159) a!3186 mask!3328) lt!332753)))))

(declare-fun b!748489 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748489 (= e!417771 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19958 a!3186) j!159) a!3186 mask!3328) lt!332753))))

(declare-fun b!748490 () Bool)

(declare-fun res!505016 () Bool)

(assert (=> b!748490 (=> (not res!505016) (not e!417767))))

(declare-datatypes ((List!14013 0))(
  ( (Nil!14010) (Cons!14009 (h!15081 (_ BitVec 64)) (t!20336 List!14013)) )
))
(declare-fun arrayNoDuplicates!0 (array!41696 (_ BitVec 32) List!14013) Bool)

(assert (=> b!748490 (= res!505016 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14010))))

(declare-fun b!748491 () Bool)

(declare-fun res!505013 () Bool)

(declare-fun e!417770 () Bool)

(assert (=> b!748491 (=> (not res!505013) (not e!417770))))

(assert (=> b!748491 (= res!505013 e!417768)))

(declare-fun c!82115 () Bool)

(assert (=> b!748491 (= c!82115 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748492 () Bool)

(assert (=> b!748492 (= e!417768 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19958 a!3186) j!159) a!3186 mask!3328) (Found!7565 j!159)))))

(declare-fun b!748493 () Bool)

(assert (=> b!748493 (= e!417767 e!417770)))

(declare-fun res!505020 () Bool)

(assert (=> b!748493 (=> (not res!505020) (not e!417770))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748493 (= res!505020 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19958 a!3186) j!159) mask!3328) (select (arr!19958 a!3186) j!159) a!3186 mask!3328) lt!332749))))

(assert (=> b!748493 (= lt!332749 (Intermediate!7565 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748494 () Bool)

(assert (=> b!748494 (= e!417770 e!417772)))

(declare-fun res!505021 () Bool)

(assert (=> b!748494 (=> (not res!505021) (not e!417772))))

(declare-fun lt!332751 () SeekEntryResult!7565)

(assert (=> b!748494 (= res!505021 (= lt!332751 lt!332747))))

(declare-fun lt!332748 () (_ BitVec 64))

(declare-fun lt!332756 () array!41696)

(assert (=> b!748494 (= lt!332747 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332748 lt!332756 mask!3328))))

(assert (=> b!748494 (= lt!332751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332748 mask!3328) lt!332748 lt!332756 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748494 (= lt!332748 (select (store (arr!19958 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748494 (= lt!332756 (array!41697 (store (arr!19958 a!3186) i!1173 k!2102) (size!20379 a!3186)))))

(declare-fun b!748495 () Bool)

(assert (=> b!748495 (= e!417773 e!417767)))

(declare-fun res!505019 () Bool)

(assert (=> b!748495 (=> (not res!505019) (not e!417767))))

(declare-fun lt!332750 () SeekEntryResult!7565)

(assert (=> b!748495 (= res!505019 (or (= lt!332750 (MissingZero!7565 i!1173)) (= lt!332750 (MissingVacant!7565 i!1173))))))

(assert (=> b!748495 (= lt!332750 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748496 () Bool)

(declare-fun res!505023 () Bool)

(assert (=> b!748496 (=> (not res!505023) (not e!417770))))

(assert (=> b!748496 (= res!505023 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19958 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748497 () Bool)

(declare-fun res!505014 () Bool)

(assert (=> b!748497 (=> (not res!505014) (not e!417767))))

(assert (=> b!748497 (= res!505014 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20379 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20379 a!3186))))))

(declare-fun b!748498 () Bool)

(declare-fun Unit!25665 () Unit!25662)

(assert (=> b!748498 (= e!417769 Unit!25665)))

(declare-fun b!748486 () Bool)

(assert (=> b!748486 (= e!417766 true)))

(assert (=> b!748486 (= (select (store (arr!19958 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332752 () Unit!25662)

(assert (=> b!748486 (= lt!332752 e!417769)))

(declare-fun c!82116 () Bool)

(assert (=> b!748486 (= c!82116 (= (select (store (arr!19958 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!505018 () Bool)

(assert (=> start!65570 (=> (not res!505018) (not e!417773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65570 (= res!505018 (validMask!0 mask!3328))))

(assert (=> start!65570 e!417773))

(assert (=> start!65570 true))

(declare-fun array_inv!15732 (array!41696) Bool)

(assert (=> start!65570 (array_inv!15732 a!3186)))

(declare-fun b!748499 () Bool)

(declare-fun res!505017 () Bool)

(assert (=> b!748499 (=> (not res!505017) (not e!417773))))

(assert (=> b!748499 (= res!505017 (and (= (size!20379 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20379 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20379 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748500 () Bool)

(declare-fun res!505024 () Bool)

(assert (=> b!748500 (=> (not res!505024) (not e!417773))))

(declare-fun arrayContainsKey!0 (array!41696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748500 (= res!505024 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748501 () Bool)

(declare-fun res!505022 () Bool)

(assert (=> b!748501 (=> res!505022 e!417766)))

(assert (=> b!748501 (= res!505022 (= (select (store (arr!19958 a!3186) i!1173 k!2102) index!1321) lt!332748))))

(declare-fun b!748502 () Bool)

(declare-fun res!505027 () Bool)

(assert (=> b!748502 (=> (not res!505027) (not e!417773))))

(assert (=> b!748502 (= res!505027 (validKeyInArray!0 (select (arr!19958 a!3186) j!159)))))

(assert (= (and start!65570 res!505018) b!748499))

(assert (= (and b!748499 res!505017) b!748502))

(assert (= (and b!748502 res!505027) b!748484))

(assert (= (and b!748484 res!505015) b!748500))

(assert (= (and b!748500 res!505024) b!748495))

(assert (= (and b!748495 res!505019) b!748483))

(assert (= (and b!748483 res!505025) b!748490))

(assert (= (and b!748490 res!505016) b!748497))

(assert (= (and b!748497 res!505014) b!748493))

(assert (= (and b!748493 res!505020) b!748496))

(assert (= (and b!748496 res!505023) b!748491))

(assert (= (and b!748491 c!82115) b!748487))

(assert (= (and b!748491 (not c!82115)) b!748492))

(assert (= (and b!748491 res!505013) b!748494))

(assert (= (and b!748494 res!505021) b!748482))

(assert (= (and b!748482 res!505026) b!748489))

(assert (= (and b!748482 (not res!505028)) b!748488))

(assert (= (and b!748488 (not res!505029)) b!748501))

(assert (= (and b!748501 (not res!505022)) b!748486))

(assert (= (and b!748486 c!82116) b!748485))

(assert (= (and b!748486 (not c!82116)) b!748498))

(declare-fun m!698383 () Bool)

(assert (=> b!748502 m!698383))

(assert (=> b!748502 m!698383))

(declare-fun m!698385 () Bool)

(assert (=> b!748502 m!698385))

(declare-fun m!698387 () Bool)

(assert (=> b!748501 m!698387))

(declare-fun m!698389 () Bool)

(assert (=> b!748501 m!698389))

(declare-fun m!698391 () Bool)

(assert (=> b!748500 m!698391))

(declare-fun m!698393 () Bool)

(assert (=> b!748495 m!698393))

(assert (=> b!748489 m!698383))

(assert (=> b!748489 m!698383))

(declare-fun m!698395 () Bool)

(assert (=> b!748489 m!698395))

(declare-fun m!698397 () Bool)

(assert (=> b!748483 m!698397))

(assert (=> b!748488 m!698383))

(assert (=> b!748488 m!698383))

(declare-fun m!698399 () Bool)

(assert (=> b!748488 m!698399))

(declare-fun m!698401 () Bool)

(assert (=> start!65570 m!698401))

(declare-fun m!698403 () Bool)

(assert (=> start!65570 m!698403))

(assert (=> b!748493 m!698383))

(assert (=> b!748493 m!698383))

(declare-fun m!698405 () Bool)

(assert (=> b!748493 m!698405))

(assert (=> b!748493 m!698405))

(assert (=> b!748493 m!698383))

(declare-fun m!698407 () Bool)

(assert (=> b!748493 m!698407))

(declare-fun m!698409 () Bool)

(assert (=> b!748484 m!698409))

(declare-fun m!698411 () Bool)

(assert (=> b!748494 m!698411))

(assert (=> b!748494 m!698387))

(declare-fun m!698413 () Bool)

(assert (=> b!748494 m!698413))

(declare-fun m!698415 () Bool)

(assert (=> b!748494 m!698415))

(assert (=> b!748494 m!698411))

(declare-fun m!698417 () Bool)

(assert (=> b!748494 m!698417))

(declare-fun m!698419 () Bool)

(assert (=> b!748490 m!698419))

(declare-fun m!698421 () Bool)

(assert (=> b!748496 m!698421))

(assert (=> b!748486 m!698387))

(assert (=> b!748486 m!698389))

(assert (=> b!748487 m!698383))

(assert (=> b!748487 m!698383))

(declare-fun m!698423 () Bool)

(assert (=> b!748487 m!698423))

(assert (=> b!748492 m!698383))

(assert (=> b!748492 m!698383))

(assert (=> b!748492 m!698399))

(assert (=> b!748482 m!698383))

(assert (=> b!748482 m!698383))

(declare-fun m!698425 () Bool)

(assert (=> b!748482 m!698425))

(declare-fun m!698427 () Bool)

(assert (=> b!748482 m!698427))

(declare-fun m!698429 () Bool)

(assert (=> b!748482 m!698429))

(push 1)

