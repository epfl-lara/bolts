; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67190 () Bool)

(assert start!67190)

(declare-fun b!776533 () Bool)

(declare-fun e!432131 () Bool)

(declare-fun e!432135 () Bool)

(assert (=> b!776533 (= e!432131 (not e!432135))))

(declare-fun res!525480 () Bool)

(assert (=> b!776533 (=> res!525480 e!432135)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7949 0))(
  ( (MissingZero!7949 (index!34163 (_ BitVec 32))) (Found!7949 (index!34164 (_ BitVec 32))) (Intermediate!7949 (undefined!8761 Bool) (index!34165 (_ BitVec 32)) (x!65125 (_ BitVec 32))) (Undefined!7949) (MissingVacant!7949 (index!34166 (_ BitVec 32))) )
))
(declare-fun lt!346000 () SeekEntryResult!7949)

(assert (=> b!776533 (= res!525480 (or (not (is-Intermediate!7949 lt!346000)) (bvslt x!1131 (x!65125 lt!346000)) (not (= x!1131 (x!65125 lt!346000))) (not (= index!1321 (index!34165 lt!346000)))))))

(declare-fun e!432129 () Bool)

(assert (=> b!776533 e!432129))

(declare-fun res!525489 () Bool)

(assert (=> b!776533 (=> (not res!525489) (not e!432129))))

(declare-datatypes ((array!42500 0))(
  ( (array!42501 (arr!20342 (Array (_ BitVec 32) (_ BitVec 64))) (size!20763 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42500)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42500 (_ BitVec 32)) Bool)

(assert (=> b!776533 (= res!525489 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26792 0))(
  ( (Unit!26793) )
))
(declare-fun lt!346005 () Unit!26792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26792)

(assert (=> b!776533 (= lt!346005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776534 () Bool)

(declare-fun res!525481 () Bool)

(declare-fun e!432128 () Bool)

(assert (=> b!776534 (=> (not res!525481) (not e!432128))))

(assert (=> b!776534 (= res!525481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776535 () Bool)

(declare-fun e!432134 () Bool)

(assert (=> b!776535 (= e!432134 e!432131)))

(declare-fun res!525482 () Bool)

(assert (=> b!776535 (=> (not res!525482) (not e!432131))))

(declare-fun lt!346006 () SeekEntryResult!7949)

(assert (=> b!776535 (= res!525482 (= lt!346006 lt!346000))))

(declare-fun lt!345999 () (_ BitVec 64))

(declare-fun lt!346003 () array!42500)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42500 (_ BitVec 32)) SeekEntryResult!7949)

(assert (=> b!776535 (= lt!346000 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345999 lt!346003 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776535 (= lt!346006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345999 mask!3328) lt!345999 lt!346003 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776535 (= lt!345999 (select (store (arr!20342 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776535 (= lt!346003 (array!42501 (store (arr!20342 a!3186) i!1173 k!2102) (size!20763 a!3186)))))

(declare-fun b!776536 () Bool)

(declare-fun e!432133 () Bool)

(assert (=> b!776536 (= e!432133 e!432128)))

(declare-fun res!525485 () Bool)

(assert (=> b!776536 (=> (not res!525485) (not e!432128))))

(declare-fun lt!346001 () SeekEntryResult!7949)

(assert (=> b!776536 (= res!525485 (or (= lt!346001 (MissingZero!7949 i!1173)) (= lt!346001 (MissingVacant!7949 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42500 (_ BitVec 32)) SeekEntryResult!7949)

(assert (=> b!776536 (= lt!346001 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!776537 () Bool)

(declare-fun e!432136 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42500 (_ BitVec 32)) SeekEntryResult!7949)

(assert (=> b!776537 (= e!432136 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20342 a!3186) j!159) a!3186 mask!3328) (Found!7949 j!159)))))

(declare-fun b!776538 () Bool)

(declare-fun res!525488 () Bool)

(assert (=> b!776538 (=> (not res!525488) (not e!432134))))

(assert (=> b!776538 (= res!525488 e!432136)))

(declare-fun c!85929 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776538 (= c!85929 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776539 () Bool)

(declare-fun res!525490 () Bool)

(assert (=> b!776539 (=> (not res!525490) (not e!432134))))

(assert (=> b!776539 (= res!525490 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20342 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776540 () Bool)

(declare-fun res!525475 () Bool)

(assert (=> b!776540 (=> (not res!525475) (not e!432133))))

(declare-fun arrayContainsKey!0 (array!42500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776540 (= res!525475 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776541 () Bool)

(declare-fun res!525478 () Bool)

(assert (=> b!776541 (=> (not res!525478) (not e!432128))))

(assert (=> b!776541 (= res!525478 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20763 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20763 a!3186))))))

(declare-fun b!776542 () Bool)

(assert (=> b!776542 (= e!432128 e!432134)))

(declare-fun res!525479 () Bool)

(assert (=> b!776542 (=> (not res!525479) (not e!432134))))

(declare-fun lt!346002 () SeekEntryResult!7949)

(assert (=> b!776542 (= res!525479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20342 a!3186) j!159) mask!3328) (select (arr!20342 a!3186) j!159) a!3186 mask!3328) lt!346002))))

(assert (=> b!776542 (= lt!346002 (Intermediate!7949 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!525486 () Bool)

(assert (=> start!67190 (=> (not res!525486) (not e!432133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67190 (= res!525486 (validMask!0 mask!3328))))

(assert (=> start!67190 e!432133))

(assert (=> start!67190 true))

(declare-fun array_inv!16116 (array!42500) Bool)

(assert (=> start!67190 (array_inv!16116 a!3186)))

(declare-fun b!776543 () Bool)

(declare-fun res!525483 () Bool)

(assert (=> b!776543 (=> (not res!525483) (not e!432133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776543 (= res!525483 (validKeyInArray!0 k!2102))))

(declare-fun b!776544 () Bool)

(declare-fun res!525477 () Bool)

(assert (=> b!776544 (=> (not res!525477) (not e!432133))))

(assert (=> b!776544 (= res!525477 (validKeyInArray!0 (select (arr!20342 a!3186) j!159)))))

(declare-fun b!776545 () Bool)

(declare-fun res!525476 () Bool)

(assert (=> b!776545 (=> (not res!525476) (not e!432133))))

(assert (=> b!776545 (= res!525476 (and (= (size!20763 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20763 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20763 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776546 () Bool)

(declare-fun res!525487 () Bool)

(assert (=> b!776546 (=> (not res!525487) (not e!432128))))

(declare-datatypes ((List!14397 0))(
  ( (Nil!14394) (Cons!14393 (h!15501 (_ BitVec 64)) (t!20720 List!14397)) )
))
(declare-fun arrayNoDuplicates!0 (array!42500 (_ BitVec 32) List!14397) Bool)

(assert (=> b!776546 (= res!525487 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14394))))

(declare-fun e!432132 () Bool)

(declare-fun lt!346004 () SeekEntryResult!7949)

(declare-fun b!776547 () Bool)

(assert (=> b!776547 (= e!432132 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20342 a!3186) j!159) a!3186 mask!3328) lt!346004))))

(declare-fun b!776548 () Bool)

(assert (=> b!776548 (= e!432136 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20342 a!3186) j!159) a!3186 mask!3328) lt!346002))))

(declare-fun b!776549 () Bool)

(assert (=> b!776549 (= e!432129 e!432132)))

(declare-fun res!525484 () Bool)

(assert (=> b!776549 (=> (not res!525484) (not e!432132))))

(assert (=> b!776549 (= res!525484 (= (seekEntryOrOpen!0 (select (arr!20342 a!3186) j!159) a!3186 mask!3328) lt!346004))))

(assert (=> b!776549 (= lt!346004 (Found!7949 j!159))))

(declare-fun b!776550 () Bool)

(assert (=> b!776550 (= e!432135 true)))

(declare-fun lt!345998 () SeekEntryResult!7949)

(assert (=> b!776550 (= lt!345998 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20342 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67190 res!525486) b!776545))

(assert (= (and b!776545 res!525476) b!776544))

(assert (= (and b!776544 res!525477) b!776543))

(assert (= (and b!776543 res!525483) b!776540))

(assert (= (and b!776540 res!525475) b!776536))

(assert (= (and b!776536 res!525485) b!776534))

(assert (= (and b!776534 res!525481) b!776546))

(assert (= (and b!776546 res!525487) b!776541))

(assert (= (and b!776541 res!525478) b!776542))

(assert (= (and b!776542 res!525479) b!776539))

(assert (= (and b!776539 res!525490) b!776538))

(assert (= (and b!776538 c!85929) b!776548))

(assert (= (and b!776538 (not c!85929)) b!776537))

(assert (= (and b!776538 res!525488) b!776535))

(assert (= (and b!776535 res!525482) b!776533))

(assert (= (and b!776533 res!525489) b!776549))

(assert (= (and b!776549 res!525484) b!776547))

(assert (= (and b!776533 (not res!525480)) b!776550))

(declare-fun m!720657 () Bool)

(assert (=> b!776539 m!720657))

(declare-fun m!720659 () Bool)

(assert (=> b!776534 m!720659))

(declare-fun m!720661 () Bool)

(assert (=> b!776537 m!720661))

(assert (=> b!776537 m!720661))

(declare-fun m!720663 () Bool)

(assert (=> b!776537 m!720663))

(declare-fun m!720665 () Bool)

(assert (=> b!776543 m!720665))

(assert (=> b!776547 m!720661))

(assert (=> b!776547 m!720661))

(declare-fun m!720667 () Bool)

(assert (=> b!776547 m!720667))

(declare-fun m!720669 () Bool)

(assert (=> b!776533 m!720669))

(declare-fun m!720671 () Bool)

(assert (=> b!776533 m!720671))

(declare-fun m!720673 () Bool)

(assert (=> start!67190 m!720673))

(declare-fun m!720675 () Bool)

(assert (=> start!67190 m!720675))

(assert (=> b!776550 m!720661))

(assert (=> b!776550 m!720661))

(assert (=> b!776550 m!720663))

(declare-fun m!720677 () Bool)

(assert (=> b!776546 m!720677))

(assert (=> b!776544 m!720661))

(assert (=> b!776544 m!720661))

(declare-fun m!720679 () Bool)

(assert (=> b!776544 m!720679))

(declare-fun m!720681 () Bool)

(assert (=> b!776535 m!720681))

(declare-fun m!720683 () Bool)

(assert (=> b!776535 m!720683))

(declare-fun m!720685 () Bool)

(assert (=> b!776535 m!720685))

(declare-fun m!720687 () Bool)

(assert (=> b!776535 m!720687))

(assert (=> b!776535 m!720687))

(declare-fun m!720689 () Bool)

(assert (=> b!776535 m!720689))

(assert (=> b!776548 m!720661))

(assert (=> b!776548 m!720661))

(declare-fun m!720691 () Bool)

(assert (=> b!776548 m!720691))

(declare-fun m!720693 () Bool)

(assert (=> b!776536 m!720693))

(declare-fun m!720695 () Bool)

(assert (=> b!776540 m!720695))

(assert (=> b!776542 m!720661))

(assert (=> b!776542 m!720661))

(declare-fun m!720697 () Bool)

(assert (=> b!776542 m!720697))

(assert (=> b!776542 m!720697))

(assert (=> b!776542 m!720661))

(declare-fun m!720699 () Bool)

(assert (=> b!776542 m!720699))

(assert (=> b!776549 m!720661))

(assert (=> b!776549 m!720661))

(declare-fun m!720701 () Bool)

(assert (=> b!776549 m!720701))

(push 1)

