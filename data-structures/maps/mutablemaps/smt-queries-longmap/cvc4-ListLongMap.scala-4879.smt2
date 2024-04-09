; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67274 () Bool)

(assert start!67274)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42521 0))(
  ( (array!42522 (arr!20351 (Array (_ BitVec 32) (_ BitVec 64))) (size!20772 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42521)

(declare-fun b!777488 () Bool)

(declare-fun e!432635 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7958 0))(
  ( (MissingZero!7958 (index!34199 (_ BitVec 32))) (Found!7958 (index!34200 (_ BitVec 32))) (Intermediate!7958 (undefined!8770 Bool) (index!34201 (_ BitVec 32)) (x!65167 (_ BitVec 32))) (Undefined!7958) (MissingVacant!7958 (index!34202 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42521 (_ BitVec 32)) SeekEntryResult!7958)

(assert (=> b!777488 (= e!432635 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20351 a!3186) j!159) a!3186 mask!3328) (Found!7958 j!159)))))

(declare-fun b!777489 () Bool)

(declare-fun res!526080 () Bool)

(declare-fun e!432632 () Bool)

(assert (=> b!777489 (=> (not res!526080) (not e!432632))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777489 (= res!526080 (validKeyInArray!0 k!2102))))

(declare-fun b!777490 () Bool)

(declare-fun e!432639 () Bool)

(declare-fun e!432638 () Bool)

(assert (=> b!777490 (= e!432639 e!432638)))

(declare-fun res!526075 () Bool)

(assert (=> b!777490 (=> (not res!526075) (not e!432638))))

(declare-fun lt!346414 () SeekEntryResult!7958)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42521 (_ BitVec 32)) SeekEntryResult!7958)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777490 (= res!526075 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20351 a!3186) j!159) mask!3328) (select (arr!20351 a!3186) j!159) a!3186 mask!3328) lt!346414))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777490 (= lt!346414 (Intermediate!7958 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777491 () Bool)

(declare-fun e!432633 () Bool)

(declare-fun e!432634 () Bool)

(assert (=> b!777491 (= e!432633 e!432634)))

(declare-fun res!526067 () Bool)

(assert (=> b!777491 (=> (not res!526067) (not e!432634))))

(declare-fun lt!346412 () SeekEntryResult!7958)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42521 (_ BitVec 32)) SeekEntryResult!7958)

(assert (=> b!777491 (= res!526067 (= (seekEntryOrOpen!0 (select (arr!20351 a!3186) j!159) a!3186 mask!3328) lt!346412))))

(assert (=> b!777491 (= lt!346412 (Found!7958 j!159))))

(declare-fun b!777492 () Bool)

(declare-fun res!526068 () Bool)

(assert (=> b!777492 (=> (not res!526068) (not e!432639))))

(declare-datatypes ((List!14406 0))(
  ( (Nil!14403) (Cons!14402 (h!15513 (_ BitVec 64)) (t!20729 List!14406)) )
))
(declare-fun arrayNoDuplicates!0 (array!42521 (_ BitVec 32) List!14406) Bool)

(assert (=> b!777492 (= res!526068 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14403))))

(declare-fun b!777493 () Bool)

(assert (=> b!777493 (= e!432635 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20351 a!3186) j!159) a!3186 mask!3328) lt!346414))))

(declare-fun res!526074 () Bool)

(assert (=> start!67274 (=> (not res!526074) (not e!432632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67274 (= res!526074 (validMask!0 mask!3328))))

(assert (=> start!67274 e!432632))

(assert (=> start!67274 true))

(declare-fun array_inv!16125 (array!42521) Bool)

(assert (=> start!67274 (array_inv!16125 a!3186)))

(declare-fun b!777494 () Bool)

(assert (=> b!777494 (= e!432634 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20351 a!3186) j!159) a!3186 mask!3328) lt!346412))))

(declare-fun b!777495 () Bool)

(declare-fun e!432636 () Bool)

(assert (=> b!777495 (= e!432638 e!432636)))

(declare-fun res!526071 () Bool)

(assert (=> b!777495 (=> (not res!526071) (not e!432636))))

(declare-fun lt!346409 () SeekEntryResult!7958)

(declare-fun lt!346408 () SeekEntryResult!7958)

(assert (=> b!777495 (= res!526071 (= lt!346409 lt!346408))))

(declare-fun lt!346410 () array!42521)

(declare-fun lt!346407 () (_ BitVec 64))

(assert (=> b!777495 (= lt!346408 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346407 lt!346410 mask!3328))))

(assert (=> b!777495 (= lt!346409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346407 mask!3328) lt!346407 lt!346410 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777495 (= lt!346407 (select (store (arr!20351 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777495 (= lt!346410 (array!42522 (store (arr!20351 a!3186) i!1173 k!2102) (size!20772 a!3186)))))

(declare-fun b!777496 () Bool)

(declare-fun res!526078 () Bool)

(declare-fun e!432637 () Bool)

(assert (=> b!777496 (=> res!526078 e!432637)))

(assert (=> b!777496 (= res!526078 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20351 a!3186) j!159) a!3186 mask!3328) (Found!7958 j!159))))))

(declare-fun b!777497 () Bool)

(declare-fun res!526076 () Bool)

(assert (=> b!777497 (=> res!526076 e!432637)))

(assert (=> b!777497 (= res!526076 (or (not (= (select (store (arr!20351 a!3186) i!1173 k!2102) index!1321) lt!346407)) (undefined!8770 lt!346408)))))

(declare-fun b!777498 () Bool)

(declare-fun res!526077 () Bool)

(assert (=> b!777498 (=> (not res!526077) (not e!432638))))

(assert (=> b!777498 (= res!526077 e!432635)))

(declare-fun c!86112 () Bool)

(assert (=> b!777498 (= c!86112 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777499 () Bool)

(declare-fun res!526072 () Bool)

(assert (=> b!777499 (=> (not res!526072) (not e!432639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42521 (_ BitVec 32)) Bool)

(assert (=> b!777499 (= res!526072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777500 () Bool)

(declare-fun res!526079 () Bool)

(assert (=> b!777500 (=> (not res!526079) (not e!432639))))

(assert (=> b!777500 (= res!526079 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20772 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20772 a!3186))))))

(declare-fun b!777501 () Bool)

(declare-fun res!526070 () Bool)

(assert (=> b!777501 (=> (not res!526070) (not e!432632))))

(assert (=> b!777501 (= res!526070 (and (= (size!20772 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20772 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20772 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777502 () Bool)

(declare-fun res!526083 () Bool)

(assert (=> b!777502 (=> (not res!526083) (not e!432632))))

(declare-fun arrayContainsKey!0 (array!42521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777502 (= res!526083 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777503 () Bool)

(assert (=> b!777503 (= e!432636 (not e!432637))))

(declare-fun res!526073 () Bool)

(assert (=> b!777503 (=> res!526073 e!432637)))

(assert (=> b!777503 (= res!526073 (or (not (is-Intermediate!7958 lt!346408)) (bvslt x!1131 (x!65167 lt!346408)) (not (= x!1131 (x!65167 lt!346408))) (not (= index!1321 (index!34201 lt!346408)))))))

(assert (=> b!777503 e!432633))

(declare-fun res!526084 () Bool)

(assert (=> b!777503 (=> (not res!526084) (not e!432633))))

(assert (=> b!777503 (= res!526084 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26810 0))(
  ( (Unit!26811) )
))
(declare-fun lt!346413 () Unit!26810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26810)

(assert (=> b!777503 (= lt!346413 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777504 () Bool)

(declare-fun res!526082 () Bool)

(assert (=> b!777504 (=> (not res!526082) (not e!432632))))

(assert (=> b!777504 (= res!526082 (validKeyInArray!0 (select (arr!20351 a!3186) j!159)))))

(declare-fun b!777505 () Bool)

(assert (=> b!777505 (= e!432637 true)))

(declare-fun lt!346406 () SeekEntryResult!7958)

(assert (=> b!777505 (= lt!346406 (seekEntryOrOpen!0 lt!346407 lt!346410 mask!3328))))

(declare-fun b!777506 () Bool)

(assert (=> b!777506 (= e!432632 e!432639)))

(declare-fun res!526081 () Bool)

(assert (=> b!777506 (=> (not res!526081) (not e!432639))))

(declare-fun lt!346411 () SeekEntryResult!7958)

(assert (=> b!777506 (= res!526081 (or (= lt!346411 (MissingZero!7958 i!1173)) (= lt!346411 (MissingVacant!7958 i!1173))))))

(assert (=> b!777506 (= lt!346411 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777507 () Bool)

(declare-fun res!526069 () Bool)

(assert (=> b!777507 (=> (not res!526069) (not e!432638))))

(assert (=> b!777507 (= res!526069 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20351 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67274 res!526074) b!777501))

(assert (= (and b!777501 res!526070) b!777504))

(assert (= (and b!777504 res!526082) b!777489))

(assert (= (and b!777489 res!526080) b!777502))

(assert (= (and b!777502 res!526083) b!777506))

(assert (= (and b!777506 res!526081) b!777499))

(assert (= (and b!777499 res!526072) b!777492))

(assert (= (and b!777492 res!526068) b!777500))

(assert (= (and b!777500 res!526079) b!777490))

(assert (= (and b!777490 res!526075) b!777507))

(assert (= (and b!777507 res!526069) b!777498))

(assert (= (and b!777498 c!86112) b!777493))

(assert (= (and b!777498 (not c!86112)) b!777488))

(assert (= (and b!777498 res!526077) b!777495))

(assert (= (and b!777495 res!526071) b!777503))

(assert (= (and b!777503 res!526084) b!777491))

(assert (= (and b!777491 res!526067) b!777494))

(assert (= (and b!777503 (not res!526073)) b!777496))

(assert (= (and b!777496 (not res!526078)) b!777497))

(assert (= (and b!777497 (not res!526076)) b!777505))

(declare-fun m!721403 () Bool)

(assert (=> start!67274 m!721403))

(declare-fun m!721405 () Bool)

(assert (=> start!67274 m!721405))

(declare-fun m!721407 () Bool)

(assert (=> b!777488 m!721407))

(assert (=> b!777488 m!721407))

(declare-fun m!721409 () Bool)

(assert (=> b!777488 m!721409))

(assert (=> b!777491 m!721407))

(assert (=> b!777491 m!721407))

(declare-fun m!721411 () Bool)

(assert (=> b!777491 m!721411))

(assert (=> b!777490 m!721407))

(assert (=> b!777490 m!721407))

(declare-fun m!721413 () Bool)

(assert (=> b!777490 m!721413))

(assert (=> b!777490 m!721413))

(assert (=> b!777490 m!721407))

(declare-fun m!721415 () Bool)

(assert (=> b!777490 m!721415))

(declare-fun m!721417 () Bool)

(assert (=> b!777506 m!721417))

(assert (=> b!777504 m!721407))

(assert (=> b!777504 m!721407))

(declare-fun m!721419 () Bool)

(assert (=> b!777504 m!721419))

(declare-fun m!721421 () Bool)

(assert (=> b!777497 m!721421))

(declare-fun m!721423 () Bool)

(assert (=> b!777497 m!721423))

(declare-fun m!721425 () Bool)

(assert (=> b!777499 m!721425))

(declare-fun m!721427 () Bool)

(assert (=> b!777507 m!721427))

(assert (=> b!777494 m!721407))

(assert (=> b!777494 m!721407))

(declare-fun m!721429 () Bool)

(assert (=> b!777494 m!721429))

(declare-fun m!721431 () Bool)

(assert (=> b!777492 m!721431))

(declare-fun m!721433 () Bool)

(assert (=> b!777489 m!721433))

(declare-fun m!721435 () Bool)

(assert (=> b!777505 m!721435))

(assert (=> b!777493 m!721407))

(assert (=> b!777493 m!721407))

(declare-fun m!721437 () Bool)

(assert (=> b!777493 m!721437))

(assert (=> b!777496 m!721407))

(assert (=> b!777496 m!721407))

(assert (=> b!777496 m!721409))

(declare-fun m!721439 () Bool)

(assert (=> b!777495 m!721439))

(assert (=> b!777495 m!721439))

(declare-fun m!721441 () Bool)

(assert (=> b!777495 m!721441))

(assert (=> b!777495 m!721421))

(declare-fun m!721443 () Bool)

(assert (=> b!777495 m!721443))

(declare-fun m!721445 () Bool)

(assert (=> b!777495 m!721445))

(declare-fun m!721447 () Bool)

(assert (=> b!777503 m!721447))

(declare-fun m!721449 () Bool)

(assert (=> b!777503 m!721449))

(declare-fun m!721451 () Bool)

(assert (=> b!777502 m!721451))

(push 1)

