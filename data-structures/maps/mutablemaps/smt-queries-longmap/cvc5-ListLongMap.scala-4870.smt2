; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67150 () Bool)

(assert start!67150)

(declare-fun b!775460 () Bool)

(declare-fun res!524532 () Bool)

(declare-fun e!431602 () Bool)

(assert (=> b!775460 (=> (not res!524532) (not e!431602))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42460 0))(
  ( (array!42461 (arr!20322 (Array (_ BitVec 32) (_ BitVec 64))) (size!20743 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42460)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775460 (= res!524532 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20322 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775461 () Bool)

(declare-fun res!524522 () Bool)

(declare-fun e!431598 () Bool)

(assert (=> b!775461 (=> (not res!524522) (not e!431598))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775461 (= res!524522 (validKeyInArray!0 (select (arr!20322 a!3186) j!159)))))

(declare-fun b!775462 () Bool)

(declare-fun res!524535 () Bool)

(assert (=> b!775462 (=> (not res!524535) (not e!431602))))

(declare-fun e!431599 () Bool)

(assert (=> b!775462 (= res!524535 e!431599)))

(declare-fun c!85869 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775462 (= c!85869 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775463 () Bool)

(declare-fun e!431596 () Bool)

(assert (=> b!775463 (= e!431596 e!431602)))

(declare-fun res!524525 () Bool)

(assert (=> b!775463 (=> (not res!524525) (not e!431602))))

(declare-datatypes ((SeekEntryResult!7929 0))(
  ( (MissingZero!7929 (index!34083 (_ BitVec 32))) (Found!7929 (index!34084 (_ BitVec 32))) (Intermediate!7929 (undefined!8741 Bool) (index!34085 (_ BitVec 32)) (x!65057 (_ BitVec 32))) (Undefined!7929) (MissingVacant!7929 (index!34086 (_ BitVec 32))) )
))
(declare-fun lt!345481 () SeekEntryResult!7929)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42460 (_ BitVec 32)) SeekEntryResult!7929)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775463 (= res!524525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20322 a!3186) j!159) mask!3328) (select (arr!20322 a!3186) j!159) a!3186 mask!3328) lt!345481))))

(assert (=> b!775463 (= lt!345481 (Intermediate!7929 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!524536 () Bool)

(assert (=> start!67150 (=> (not res!524536) (not e!431598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67150 (= res!524536 (validMask!0 mask!3328))))

(assert (=> start!67150 e!431598))

(assert (=> start!67150 true))

(declare-fun array_inv!16096 (array!42460) Bool)

(assert (=> start!67150 (array_inv!16096 a!3186)))

(declare-fun b!775464 () Bool)

(declare-fun res!524534 () Bool)

(assert (=> b!775464 (=> (not res!524534) (not e!431598))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!775464 (= res!524534 (validKeyInArray!0 k!2102))))

(declare-fun b!775465 () Bool)

(declare-fun res!524533 () Bool)

(assert (=> b!775465 (=> (not res!524533) (not e!431596))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!775465 (= res!524533 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20743 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20743 a!3186))))))

(declare-fun b!775466 () Bool)

(declare-fun res!524528 () Bool)

(assert (=> b!775466 (=> (not res!524528) (not e!431598))))

(assert (=> b!775466 (= res!524528 (and (= (size!20743 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20743 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20743 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775467 () Bool)

(declare-fun lt!345479 () SeekEntryResult!7929)

(declare-fun e!431600 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42460 (_ BitVec 32)) SeekEntryResult!7929)

(assert (=> b!775467 (= e!431600 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20322 a!3186) j!159) a!3186 mask!3328) lt!345479))))

(declare-fun b!775468 () Bool)

(assert (=> b!775468 (= e!431599 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20322 a!3186) j!159) a!3186 mask!3328) (Found!7929 j!159)))))

(declare-fun b!775469 () Bool)

(declare-fun e!431597 () Bool)

(assert (=> b!775469 (= e!431597 (not true))))

(declare-fun e!431595 () Bool)

(assert (=> b!775469 e!431595))

(declare-fun res!524527 () Bool)

(assert (=> b!775469 (=> (not res!524527) (not e!431595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42460 (_ BitVec 32)) Bool)

(assert (=> b!775469 (= res!524527 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26752 0))(
  ( (Unit!26753) )
))
(declare-fun lt!345482 () Unit!26752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26752)

(assert (=> b!775469 (= lt!345482 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775470 () Bool)

(declare-fun res!524523 () Bool)

(assert (=> b!775470 (=> (not res!524523) (not e!431596))))

(declare-datatypes ((List!14377 0))(
  ( (Nil!14374) (Cons!14373 (h!15481 (_ BitVec 64)) (t!20700 List!14377)) )
))
(declare-fun arrayNoDuplicates!0 (array!42460 (_ BitVec 32) List!14377) Bool)

(assert (=> b!775470 (= res!524523 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14374))))

(declare-fun b!775471 () Bool)

(assert (=> b!775471 (= e!431595 e!431600)))

(declare-fun res!524526 () Bool)

(assert (=> b!775471 (=> (not res!524526) (not e!431600))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42460 (_ BitVec 32)) SeekEntryResult!7929)

(assert (=> b!775471 (= res!524526 (= (seekEntryOrOpen!0 (select (arr!20322 a!3186) j!159) a!3186 mask!3328) lt!345479))))

(assert (=> b!775471 (= lt!345479 (Found!7929 j!159))))

(declare-fun b!775472 () Bool)

(declare-fun res!524529 () Bool)

(assert (=> b!775472 (=> (not res!524529) (not e!431598))))

(declare-fun arrayContainsKey!0 (array!42460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775472 (= res!524529 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775473 () Bool)

(assert (=> b!775473 (= e!431602 e!431597)))

(declare-fun res!524530 () Bool)

(assert (=> b!775473 (=> (not res!524530) (not e!431597))))

(declare-fun lt!345484 () (_ BitVec 64))

(declare-fun lt!345483 () array!42460)

(assert (=> b!775473 (= res!524530 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345484 mask!3328) lt!345484 lt!345483 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345484 lt!345483 mask!3328)))))

(assert (=> b!775473 (= lt!345484 (select (store (arr!20322 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775473 (= lt!345483 (array!42461 (store (arr!20322 a!3186) i!1173 k!2102) (size!20743 a!3186)))))

(declare-fun b!775474 () Bool)

(declare-fun res!524531 () Bool)

(assert (=> b!775474 (=> (not res!524531) (not e!431596))))

(assert (=> b!775474 (= res!524531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775475 () Bool)

(assert (=> b!775475 (= e!431599 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20322 a!3186) j!159) a!3186 mask!3328) lt!345481))))

(declare-fun b!775476 () Bool)

(assert (=> b!775476 (= e!431598 e!431596)))

(declare-fun res!524524 () Bool)

(assert (=> b!775476 (=> (not res!524524) (not e!431596))))

(declare-fun lt!345480 () SeekEntryResult!7929)

(assert (=> b!775476 (= res!524524 (or (= lt!345480 (MissingZero!7929 i!1173)) (= lt!345480 (MissingVacant!7929 i!1173))))))

(assert (=> b!775476 (= lt!345480 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67150 res!524536) b!775466))

(assert (= (and b!775466 res!524528) b!775461))

(assert (= (and b!775461 res!524522) b!775464))

(assert (= (and b!775464 res!524534) b!775472))

(assert (= (and b!775472 res!524529) b!775476))

(assert (= (and b!775476 res!524524) b!775474))

(assert (= (and b!775474 res!524531) b!775470))

(assert (= (and b!775470 res!524523) b!775465))

(assert (= (and b!775465 res!524533) b!775463))

(assert (= (and b!775463 res!524525) b!775460))

(assert (= (and b!775460 res!524532) b!775462))

(assert (= (and b!775462 c!85869) b!775475))

(assert (= (and b!775462 (not c!85869)) b!775468))

(assert (= (and b!775462 res!524535) b!775473))

(assert (= (and b!775473 res!524530) b!775469))

(assert (= (and b!775469 res!524527) b!775471))

(assert (= (and b!775471 res!524526) b!775467))

(declare-fun m!719737 () Bool)

(assert (=> b!775463 m!719737))

(assert (=> b!775463 m!719737))

(declare-fun m!719739 () Bool)

(assert (=> b!775463 m!719739))

(assert (=> b!775463 m!719739))

(assert (=> b!775463 m!719737))

(declare-fun m!719741 () Bool)

(assert (=> b!775463 m!719741))

(declare-fun m!719743 () Bool)

(assert (=> b!775464 m!719743))

(assert (=> b!775467 m!719737))

(assert (=> b!775467 m!719737))

(declare-fun m!719745 () Bool)

(assert (=> b!775467 m!719745))

(declare-fun m!719747 () Bool)

(assert (=> b!775469 m!719747))

(declare-fun m!719749 () Bool)

(assert (=> b!775469 m!719749))

(declare-fun m!719751 () Bool)

(assert (=> b!775476 m!719751))

(declare-fun m!719753 () Bool)

(assert (=> start!67150 m!719753))

(declare-fun m!719755 () Bool)

(assert (=> start!67150 m!719755))

(assert (=> b!775468 m!719737))

(assert (=> b!775468 m!719737))

(declare-fun m!719757 () Bool)

(assert (=> b!775468 m!719757))

(declare-fun m!719759 () Bool)

(assert (=> b!775472 m!719759))

(assert (=> b!775461 m!719737))

(assert (=> b!775461 m!719737))

(declare-fun m!719761 () Bool)

(assert (=> b!775461 m!719761))

(assert (=> b!775475 m!719737))

(assert (=> b!775475 m!719737))

(declare-fun m!719763 () Bool)

(assert (=> b!775475 m!719763))

(assert (=> b!775471 m!719737))

(assert (=> b!775471 m!719737))

(declare-fun m!719765 () Bool)

(assert (=> b!775471 m!719765))

(declare-fun m!719767 () Bool)

(assert (=> b!775470 m!719767))

(declare-fun m!719769 () Bool)

(assert (=> b!775460 m!719769))

(declare-fun m!719771 () Bool)

(assert (=> b!775474 m!719771))

(declare-fun m!719773 () Bool)

(assert (=> b!775473 m!719773))

(declare-fun m!719775 () Bool)

(assert (=> b!775473 m!719775))

(assert (=> b!775473 m!719773))

(declare-fun m!719777 () Bool)

(assert (=> b!775473 m!719777))

(declare-fun m!719779 () Bool)

(assert (=> b!775473 m!719779))

(declare-fun m!719781 () Bool)

(assert (=> b!775473 m!719781))

(push 1)

