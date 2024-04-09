; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65842 () Bool)

(assert start!65842)

(declare-fun b!757711 () Bool)

(declare-fun e!422487 () Bool)

(declare-fun e!422484 () Bool)

(assert (=> b!757711 (= e!422487 (not e!422484))))

(declare-fun res!512610 () Bool)

(assert (=> b!757711 (=> res!512610 e!422484)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7701 0))(
  ( (MissingZero!7701 (index!33171 (_ BitVec 32))) (Found!7701 (index!33172 (_ BitVec 32))) (Intermediate!7701 (undefined!8513 Bool) (index!33173 (_ BitVec 32)) (x!64092 (_ BitVec 32))) (Undefined!7701) (MissingVacant!7701 (index!33174 (_ BitVec 32))) )
))
(declare-fun lt!337480 () SeekEntryResult!7701)

(assert (=> b!757711 (= res!512610 (or (not (is-Intermediate!7701 lt!337480)) (bvslt x!1131 (x!64092 lt!337480)) (not (= x!1131 (x!64092 lt!337480))) (not (= index!1321 (index!33173 lt!337480)))))))

(declare-fun e!422489 () Bool)

(assert (=> b!757711 e!422489))

(declare-fun res!512625 () Bool)

(assert (=> b!757711 (=> (not res!512625) (not e!422489))))

(declare-fun lt!337490 () SeekEntryResult!7701)

(declare-fun lt!337486 () SeekEntryResult!7701)

(assert (=> b!757711 (= res!512625 (= lt!337490 lt!337486))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!757711 (= lt!337486 (Found!7701 j!159))))

(declare-datatypes ((array!41968 0))(
  ( (array!41969 (arr!20094 (Array (_ BitVec 32) (_ BitVec 64))) (size!20515 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41968)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41968 (_ BitVec 32)) SeekEntryResult!7701)

(assert (=> b!757711 (= lt!337490 (seekEntryOrOpen!0 (select (arr!20094 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41968 (_ BitVec 32)) Bool)

(assert (=> b!757711 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26206 0))(
  ( (Unit!26207) )
))
(declare-fun lt!337481 () Unit!26206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41968 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26206)

(assert (=> b!757711 (= lt!337481 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757712 () Bool)

(declare-fun e!422479 () Bool)

(assert (=> b!757712 (= e!422479 e!422487)))

(declare-fun res!512619 () Bool)

(assert (=> b!757712 (=> (not res!512619) (not e!422487))))

(declare-fun lt!337483 () SeekEntryResult!7701)

(assert (=> b!757712 (= res!512619 (= lt!337483 lt!337480))))

(declare-fun lt!337489 () array!41968)

(declare-fun lt!337488 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41968 (_ BitVec 32)) SeekEntryResult!7701)

(assert (=> b!757712 (= lt!337480 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337488 lt!337489 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757712 (= lt!337483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337488 mask!3328) lt!337488 lt!337489 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757712 (= lt!337488 (select (store (arr!20094 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757712 (= lt!337489 (array!41969 (store (arr!20094 a!3186) i!1173 k!2102) (size!20515 a!3186)))))

(declare-fun b!757713 () Bool)

(declare-fun res!512622 () Bool)

(declare-fun e!422483 () Bool)

(assert (=> b!757713 (=> (not res!512622) (not e!422483))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757713 (= res!512622 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20515 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20515 a!3186))))))

(declare-fun b!757714 () Bool)

(declare-fun e!422490 () Bool)

(assert (=> b!757714 (= e!422490 e!422483)))

(declare-fun res!512611 () Bool)

(assert (=> b!757714 (=> (not res!512611) (not e!422483))))

(declare-fun lt!337484 () SeekEntryResult!7701)

(assert (=> b!757714 (= res!512611 (or (= lt!337484 (MissingZero!7701 i!1173)) (= lt!337484 (MissingVacant!7701 i!1173))))))

(assert (=> b!757714 (= lt!337484 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757715 () Bool)

(declare-fun e!422486 () Bool)

(declare-fun e!422482 () Bool)

(assert (=> b!757715 (= e!422486 e!422482)))

(declare-fun res!512618 () Bool)

(assert (=> b!757715 (=> res!512618 e!422482)))

(declare-fun lt!337479 () (_ BitVec 64))

(assert (=> b!757715 (= res!512618 (= lt!337479 lt!337488))))

(assert (=> b!757715 (= lt!337479 (select (store (arr!20094 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757716 () Bool)

(declare-fun e!422481 () Unit!26206)

(declare-fun Unit!26208 () Unit!26206)

(assert (=> b!757716 (= e!422481 Unit!26208)))

(assert (=> b!757716 false))

(declare-fun b!757717 () Bool)

(declare-fun Unit!26209 () Unit!26206)

(assert (=> b!757717 (= e!422481 Unit!26209)))

(declare-fun b!757718 () Bool)

(declare-fun res!512613 () Bool)

(assert (=> b!757718 (=> (not res!512613) (not e!422479))))

(declare-fun e!422488 () Bool)

(assert (=> b!757718 (= res!512613 e!422488)))

(declare-fun c!82932 () Bool)

(assert (=> b!757718 (= c!82932 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757719 () Bool)

(declare-fun res!512623 () Bool)

(assert (=> b!757719 (=> (not res!512623) (not e!422490))))

(declare-fun arrayContainsKey!0 (array!41968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757719 (= res!512623 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757720 () Bool)

(declare-fun e!422485 () Bool)

(declare-fun lt!337485 () SeekEntryResult!7701)

(assert (=> b!757720 (= e!422485 (= lt!337490 lt!337485))))

(declare-fun b!757721 () Bool)

(declare-fun res!512615 () Bool)

(assert (=> b!757721 (=> (not res!512615) (not e!422479))))

(assert (=> b!757721 (= res!512615 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20094 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757722 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41968 (_ BitVec 32)) SeekEntryResult!7701)

(assert (=> b!757722 (= e!422488 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20094 a!3186) j!159) a!3186 mask!3328) (Found!7701 j!159)))))

(declare-fun lt!337482 () SeekEntryResult!7701)

(declare-fun b!757723 () Bool)

(assert (=> b!757723 (= e!422488 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20094 a!3186) j!159) a!3186 mask!3328) lt!337482))))

(declare-fun b!757724 () Bool)

(declare-fun res!512627 () Bool)

(assert (=> b!757724 (=> (not res!512627) (not e!422490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757724 (= res!512627 (validKeyInArray!0 (select (arr!20094 a!3186) j!159)))))

(declare-fun b!757725 () Bool)

(declare-fun res!512620 () Bool)

(assert (=> b!757725 (=> (not res!512620) (not e!422483))))

(assert (=> b!757725 (= res!512620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757726 () Bool)

(declare-fun res!512626 () Bool)

(assert (=> b!757726 (=> (not res!512626) (not e!422483))))

(declare-datatypes ((List!14149 0))(
  ( (Nil!14146) (Cons!14145 (h!15217 (_ BitVec 64)) (t!20472 List!14149)) )
))
(declare-fun arrayNoDuplicates!0 (array!41968 (_ BitVec 32) List!14149) Bool)

(assert (=> b!757726 (= res!512626 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14146))))

(declare-fun b!757727 () Bool)

(assert (=> b!757727 (= e!422482 true)))

(assert (=> b!757727 e!422485))

(declare-fun res!512624 () Bool)

(assert (=> b!757727 (=> (not res!512624) (not e!422485))))

(assert (=> b!757727 (= res!512624 (= lt!337479 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337487 () Unit!26206)

(assert (=> b!757727 (= lt!337487 e!422481)))

(declare-fun c!82931 () Bool)

(assert (=> b!757727 (= c!82931 (= lt!337479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757728 () Bool)

(assert (=> b!757728 (= e!422483 e!422479)))

(declare-fun res!512617 () Bool)

(assert (=> b!757728 (=> (not res!512617) (not e!422479))))

(assert (=> b!757728 (= res!512617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20094 a!3186) j!159) mask!3328) (select (arr!20094 a!3186) j!159) a!3186 mask!3328) lt!337482))))

(assert (=> b!757728 (= lt!337482 (Intermediate!7701 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757729 () Bool)

(declare-fun res!512616 () Bool)

(assert (=> b!757729 (=> (not res!512616) (not e!422490))))

(assert (=> b!757729 (= res!512616 (and (= (size!20515 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20515 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20515 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757730 () Bool)

(declare-fun res!512612 () Bool)

(assert (=> b!757730 (=> (not res!512612) (not e!422490))))

(assert (=> b!757730 (= res!512612 (validKeyInArray!0 k!2102))))

(declare-fun b!757731 () Bool)

(declare-fun res!512614 () Bool)

(assert (=> b!757731 (=> (not res!512614) (not e!422485))))

(assert (=> b!757731 (= res!512614 (= (seekEntryOrOpen!0 lt!337488 lt!337489 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337488 lt!337489 mask!3328)))))

(declare-fun b!757732 () Bool)

(assert (=> b!757732 (= e!422484 e!422486)))

(declare-fun res!512621 () Bool)

(assert (=> b!757732 (=> res!512621 e!422486)))

(assert (=> b!757732 (= res!512621 (not (= lt!337485 lt!337486)))))

(assert (=> b!757732 (= lt!337485 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20094 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757733 () Bool)

(assert (=> b!757733 (= e!422489 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20094 a!3186) j!159) a!3186 mask!3328) lt!337486))))

(declare-fun res!512628 () Bool)

(assert (=> start!65842 (=> (not res!512628) (not e!422490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65842 (= res!512628 (validMask!0 mask!3328))))

(assert (=> start!65842 e!422490))

(assert (=> start!65842 true))

(declare-fun array_inv!15868 (array!41968) Bool)

(assert (=> start!65842 (array_inv!15868 a!3186)))

(assert (= (and start!65842 res!512628) b!757729))

(assert (= (and b!757729 res!512616) b!757724))

(assert (= (and b!757724 res!512627) b!757730))

(assert (= (and b!757730 res!512612) b!757719))

(assert (= (and b!757719 res!512623) b!757714))

(assert (= (and b!757714 res!512611) b!757725))

(assert (= (and b!757725 res!512620) b!757726))

(assert (= (and b!757726 res!512626) b!757713))

(assert (= (and b!757713 res!512622) b!757728))

(assert (= (and b!757728 res!512617) b!757721))

(assert (= (and b!757721 res!512615) b!757718))

(assert (= (and b!757718 c!82932) b!757723))

(assert (= (and b!757718 (not c!82932)) b!757722))

(assert (= (and b!757718 res!512613) b!757712))

(assert (= (and b!757712 res!512619) b!757711))

(assert (= (and b!757711 res!512625) b!757733))

(assert (= (and b!757711 (not res!512610)) b!757732))

(assert (= (and b!757732 (not res!512621)) b!757715))

(assert (= (and b!757715 (not res!512618)) b!757727))

(assert (= (and b!757727 c!82931) b!757716))

(assert (= (and b!757727 (not c!82931)) b!757717))

(assert (= (and b!757727 res!512624) b!757731))

(assert (= (and b!757731 res!512614) b!757720))

(declare-fun m!705421 () Bool)

(assert (=> b!757724 m!705421))

(assert (=> b!757724 m!705421))

(declare-fun m!705423 () Bool)

(assert (=> b!757724 m!705423))

(declare-fun m!705425 () Bool)

(assert (=> b!757712 m!705425))

(declare-fun m!705427 () Bool)

(assert (=> b!757712 m!705427))

(declare-fun m!705429 () Bool)

(assert (=> b!757712 m!705429))

(declare-fun m!705431 () Bool)

(assert (=> b!757712 m!705431))

(declare-fun m!705433 () Bool)

(assert (=> b!757712 m!705433))

(assert (=> b!757712 m!705425))

(declare-fun m!705435 () Bool)

(assert (=> b!757726 m!705435))

(declare-fun m!705437 () Bool)

(assert (=> b!757725 m!705437))

(declare-fun m!705439 () Bool)

(assert (=> b!757719 m!705439))

(assert (=> b!757723 m!705421))

(assert (=> b!757723 m!705421))

(declare-fun m!705441 () Bool)

(assert (=> b!757723 m!705441))

(declare-fun m!705443 () Bool)

(assert (=> b!757714 m!705443))

(declare-fun m!705445 () Bool)

(assert (=> b!757730 m!705445))

(assert (=> b!757715 m!705431))

(declare-fun m!705447 () Bool)

(assert (=> b!757715 m!705447))

(declare-fun m!705449 () Bool)

(assert (=> b!757731 m!705449))

(declare-fun m!705451 () Bool)

(assert (=> b!757731 m!705451))

(assert (=> b!757711 m!705421))

(assert (=> b!757711 m!705421))

(declare-fun m!705453 () Bool)

(assert (=> b!757711 m!705453))

(declare-fun m!705455 () Bool)

(assert (=> b!757711 m!705455))

(declare-fun m!705457 () Bool)

(assert (=> b!757711 m!705457))

(declare-fun m!705459 () Bool)

(assert (=> b!757721 m!705459))

(declare-fun m!705461 () Bool)

(assert (=> start!65842 m!705461))

(declare-fun m!705463 () Bool)

(assert (=> start!65842 m!705463))

(assert (=> b!757722 m!705421))

(assert (=> b!757722 m!705421))

(declare-fun m!705465 () Bool)

(assert (=> b!757722 m!705465))

(assert (=> b!757732 m!705421))

(assert (=> b!757732 m!705421))

(assert (=> b!757732 m!705465))

(assert (=> b!757733 m!705421))

(assert (=> b!757733 m!705421))

(declare-fun m!705467 () Bool)

(assert (=> b!757733 m!705467))

(assert (=> b!757728 m!705421))

(assert (=> b!757728 m!705421))

(declare-fun m!705469 () Bool)

(assert (=> b!757728 m!705469))

(assert (=> b!757728 m!705469))

(assert (=> b!757728 m!705421))

(declare-fun m!705471 () Bool)

(assert (=> b!757728 m!705471))

(push 1)

