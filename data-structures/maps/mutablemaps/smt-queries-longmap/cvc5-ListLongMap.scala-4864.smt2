; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67042 () Bool)

(assert start!67042)

(declare-fun b!773644 () Bool)

(declare-fun res!523371 () Bool)

(declare-fun e!430666 () Bool)

(assert (=> b!773644 (=> (not res!523371) (not e!430666))))

(declare-datatypes ((array!42421 0))(
  ( (array!42422 (arr!20304 (Array (_ BitVec 32) (_ BitVec 64))) (size!20725 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42421)

(declare-datatypes ((List!14359 0))(
  ( (Nil!14356) (Cons!14355 (h!15460 (_ BitVec 64)) (t!20682 List!14359)) )
))
(declare-fun arrayNoDuplicates!0 (array!42421 (_ BitVec 32) List!14359) Bool)

(assert (=> b!773644 (= res!523371 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14356))))

(declare-fun b!773645 () Bool)

(declare-fun e!430671 () Bool)

(declare-fun e!430667 () Bool)

(assert (=> b!773645 (= e!430671 (not e!430667))))

(declare-fun res!523369 () Bool)

(assert (=> b!773645 (=> res!523369 e!430667)))

(declare-datatypes ((SeekEntryResult!7911 0))(
  ( (MissingZero!7911 (index!34011 (_ BitVec 32))) (Found!7911 (index!34012 (_ BitVec 32))) (Intermediate!7911 (undefined!8723 Bool) (index!34013 (_ BitVec 32)) (x!64979 (_ BitVec 32))) (Undefined!7911) (MissingVacant!7911 (index!34014 (_ BitVec 32))) )
))
(declare-fun lt!344573 () SeekEntryResult!7911)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!773645 (= res!523369 (or (not (is-Intermediate!7911 lt!344573)) (bvsge x!1131 (x!64979 lt!344573))))))

(declare-fun lt!344564 () SeekEntryResult!7911)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!773645 (= lt!344564 (Found!7911 j!159))))

(declare-fun e!430670 () Bool)

(assert (=> b!773645 e!430670))

(declare-fun res!523381 () Bool)

(assert (=> b!773645 (=> (not res!523381) (not e!430670))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42421 (_ BitVec 32)) Bool)

(assert (=> b!773645 (= res!523381 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26680 0))(
  ( (Unit!26681) )
))
(declare-fun lt!344575 () Unit!26680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26680)

(assert (=> b!773645 (= lt!344575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773646 () Bool)

(declare-fun e!430664 () Bool)

(assert (=> b!773646 (= e!430670 e!430664)))

(declare-fun res!523374 () Bool)

(assert (=> b!773646 (=> (not res!523374) (not e!430664))))

(declare-fun lt!344566 () SeekEntryResult!7911)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42421 (_ BitVec 32)) SeekEntryResult!7911)

(assert (=> b!773646 (= res!523374 (= (seekEntryOrOpen!0 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344566))))

(assert (=> b!773646 (= lt!344566 (Found!7911 j!159))))

(declare-fun b!773647 () Bool)

(declare-fun res!523382 () Bool)

(declare-fun e!430673 () Bool)

(assert (=> b!773647 (=> (not res!523382) (not e!430673))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773647 (= res!523382 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!430665 () Bool)

(declare-fun b!773648 () Bool)

(declare-fun lt!344567 () SeekEntryResult!7911)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42421 (_ BitVec 32)) SeekEntryResult!7911)

(assert (=> b!773648 (= e!430665 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344567))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!773649 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42421 (_ BitVec 32)) SeekEntryResult!7911)

(assert (=> b!773649 (= e!430665 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) (Found!7911 j!159)))))

(declare-fun b!773650 () Bool)

(declare-fun res!523376 () Bool)

(assert (=> b!773650 (=> (not res!523376) (not e!430666))))

(assert (=> b!773650 (= res!523376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!523377 () Bool)

(assert (=> start!67042 (=> (not res!523377) (not e!430673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67042 (= res!523377 (validMask!0 mask!3328))))

(assert (=> start!67042 e!430673))

(assert (=> start!67042 true))

(declare-fun array_inv!16078 (array!42421) Bool)

(assert (=> start!67042 (array_inv!16078 a!3186)))

(declare-fun e!430668 () Bool)

(declare-fun b!773651 () Bool)

(declare-fun lt!344569 () (_ BitVec 32))

(assert (=> b!773651 (= e!430668 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344564)))))

(declare-fun b!773652 () Bool)

(assert (=> b!773652 (= e!430668 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344567)))))

(declare-fun b!773653 () Bool)

(declare-fun res!523370 () Bool)

(assert (=> b!773653 (=> (not res!523370) (not e!430673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773653 (= res!523370 (validKeyInArray!0 (select (arr!20304 a!3186) j!159)))))

(declare-fun b!773654 () Bool)

(assert (=> b!773654 (= e!430673 e!430666)))

(declare-fun res!523378 () Bool)

(assert (=> b!773654 (=> (not res!523378) (not e!430666))))

(declare-fun lt!344574 () SeekEntryResult!7911)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773654 (= res!523378 (or (= lt!344574 (MissingZero!7911 i!1173)) (= lt!344574 (MissingVacant!7911 i!1173))))))

(assert (=> b!773654 (= lt!344574 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!344572 () (_ BitVec 64))

(declare-fun lt!344570 () array!42421)

(declare-fun e!430674 () Bool)

(declare-fun b!773655 () Bool)

(declare-fun lt!344565 () SeekEntryResult!7911)

(assert (=> b!773655 (= e!430674 (= lt!344565 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 lt!344572 lt!344570 mask!3328)))))

(declare-fun b!773656 () Bool)

(declare-fun res!523373 () Bool)

(assert (=> b!773656 (=> (not res!523373) (not e!430673))))

(assert (=> b!773656 (= res!523373 (validKeyInArray!0 k!2102))))

(declare-fun b!773657 () Bool)

(declare-fun e!430675 () Unit!26680)

(declare-fun Unit!26682 () Unit!26680)

(assert (=> b!773657 (= e!430675 Unit!26682)))

(assert (=> b!773657 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344567)))

(declare-fun b!773658 () Bool)

(declare-fun res!523372 () Bool)

(assert (=> b!773658 (=> res!523372 e!430674)))

(assert (=> b!773658 (= res!523372 e!430668)))

(declare-fun c!85537 () Bool)

(declare-fun lt!344571 () Bool)

(assert (=> b!773658 (= c!85537 lt!344571)))

(declare-fun b!773659 () Bool)

(declare-fun res!523384 () Bool)

(declare-fun e!430669 () Bool)

(assert (=> b!773659 (=> (not res!523384) (not e!430669))))

(assert (=> b!773659 (= res!523384 e!430665)))

(declare-fun c!85539 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773659 (= c!85539 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773660 () Bool)

(assert (=> b!773660 (= e!430669 e!430671)))

(declare-fun res!523379 () Bool)

(assert (=> b!773660 (=> (not res!523379) (not e!430671))))

(assert (=> b!773660 (= res!523379 (= lt!344565 lt!344573))))

(assert (=> b!773660 (= lt!344573 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344572 lt!344570 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773660 (= lt!344565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344572 mask!3328) lt!344572 lt!344570 mask!3328))))

(assert (=> b!773660 (= lt!344572 (select (store (arr!20304 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773660 (= lt!344570 (array!42422 (store (arr!20304 a!3186) i!1173 k!2102) (size!20725 a!3186)))))

(declare-fun b!773661 () Bool)

(declare-fun res!523380 () Bool)

(assert (=> b!773661 (=> (not res!523380) (not e!430673))))

(assert (=> b!773661 (= res!523380 (and (= (size!20725 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20725 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20725 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773662 () Bool)

(assert (=> b!773662 (= e!430666 e!430669)))

(declare-fun res!523375 () Bool)

(assert (=> b!773662 (=> (not res!523375) (not e!430669))))

(assert (=> b!773662 (= res!523375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344567))))

(assert (=> b!773662 (= lt!344567 (Intermediate!7911 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773663 () Bool)

(declare-fun Unit!26683 () Unit!26680)

(assert (=> b!773663 (= e!430675 Unit!26683)))

(declare-fun lt!344568 () SeekEntryResult!7911)

(assert (=> b!773663 (= lt!344568 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773663 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344564)))

(declare-fun b!773664 () Bool)

(declare-fun res!523383 () Bool)

(assert (=> b!773664 (=> (not res!523383) (not e!430669))))

(assert (=> b!773664 (= res!523383 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20304 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773665 () Bool)

(assert (=> b!773665 (= e!430667 e!430674)))

(declare-fun res!523367 () Bool)

(assert (=> b!773665 (=> res!523367 e!430674)))

(assert (=> b!773665 (= res!523367 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344569 #b00000000000000000000000000000000) (bvsge lt!344569 (size!20725 a!3186))))))

(declare-fun lt!344563 () Unit!26680)

(assert (=> b!773665 (= lt!344563 e!430675)))

(declare-fun c!85538 () Bool)

(assert (=> b!773665 (= c!85538 lt!344571)))

(assert (=> b!773665 (= lt!344571 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773665 (= lt!344569 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773666 () Bool)

(assert (=> b!773666 (= e!430664 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344566))))

(declare-fun b!773667 () Bool)

(declare-fun res!523368 () Bool)

(assert (=> b!773667 (=> (not res!523368) (not e!430666))))

(assert (=> b!773667 (= res!523368 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20725 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20725 a!3186))))))

(assert (= (and start!67042 res!523377) b!773661))

(assert (= (and b!773661 res!523380) b!773653))

(assert (= (and b!773653 res!523370) b!773656))

(assert (= (and b!773656 res!523373) b!773647))

(assert (= (and b!773647 res!523382) b!773654))

(assert (= (and b!773654 res!523378) b!773650))

(assert (= (and b!773650 res!523376) b!773644))

(assert (= (and b!773644 res!523371) b!773667))

(assert (= (and b!773667 res!523368) b!773662))

(assert (= (and b!773662 res!523375) b!773664))

(assert (= (and b!773664 res!523383) b!773659))

(assert (= (and b!773659 c!85539) b!773648))

(assert (= (and b!773659 (not c!85539)) b!773649))

(assert (= (and b!773659 res!523384) b!773660))

(assert (= (and b!773660 res!523379) b!773645))

(assert (= (and b!773645 res!523381) b!773646))

(assert (= (and b!773646 res!523374) b!773666))

(assert (= (and b!773645 (not res!523369)) b!773665))

(assert (= (and b!773665 c!85538) b!773657))

(assert (= (and b!773665 (not c!85538)) b!773663))

(assert (= (and b!773665 (not res!523367)) b!773658))

(assert (= (and b!773658 c!85537) b!773652))

(assert (= (and b!773658 (not c!85537)) b!773651))

(assert (= (and b!773658 (not res!523372)) b!773655))

(declare-fun m!718375 () Bool)

(assert (=> b!773664 m!718375))

(declare-fun m!718377 () Bool)

(assert (=> b!773660 m!718377))

(declare-fun m!718379 () Bool)

(assert (=> b!773660 m!718379))

(assert (=> b!773660 m!718377))

(declare-fun m!718381 () Bool)

(assert (=> b!773660 m!718381))

(declare-fun m!718383 () Bool)

(assert (=> b!773660 m!718383))

(declare-fun m!718385 () Bool)

(assert (=> b!773660 m!718385))

(declare-fun m!718387 () Bool)

(assert (=> b!773655 m!718387))

(declare-fun m!718389 () Bool)

(assert (=> b!773663 m!718389))

(assert (=> b!773663 m!718389))

(declare-fun m!718391 () Bool)

(assert (=> b!773663 m!718391))

(assert (=> b!773663 m!718389))

(declare-fun m!718393 () Bool)

(assert (=> b!773663 m!718393))

(assert (=> b!773651 m!718389))

(assert (=> b!773651 m!718389))

(assert (=> b!773651 m!718393))

(declare-fun m!718395 () Bool)

(assert (=> b!773647 m!718395))

(declare-fun m!718397 () Bool)

(assert (=> start!67042 m!718397))

(declare-fun m!718399 () Bool)

(assert (=> start!67042 m!718399))

(declare-fun m!718401 () Bool)

(assert (=> b!773656 m!718401))

(assert (=> b!773653 m!718389))

(assert (=> b!773653 m!718389))

(declare-fun m!718403 () Bool)

(assert (=> b!773653 m!718403))

(assert (=> b!773657 m!718389))

(assert (=> b!773657 m!718389))

(declare-fun m!718405 () Bool)

(assert (=> b!773657 m!718405))

(declare-fun m!718407 () Bool)

(assert (=> b!773650 m!718407))

(assert (=> b!773666 m!718389))

(assert (=> b!773666 m!718389))

(declare-fun m!718409 () Bool)

(assert (=> b!773666 m!718409))

(assert (=> b!773646 m!718389))

(assert (=> b!773646 m!718389))

(declare-fun m!718411 () Bool)

(assert (=> b!773646 m!718411))

(assert (=> b!773648 m!718389))

(assert (=> b!773648 m!718389))

(declare-fun m!718413 () Bool)

(assert (=> b!773648 m!718413))

(declare-fun m!718415 () Bool)

(assert (=> b!773645 m!718415))

(declare-fun m!718417 () Bool)

(assert (=> b!773645 m!718417))

(assert (=> b!773649 m!718389))

(assert (=> b!773649 m!718389))

(assert (=> b!773649 m!718391))

(assert (=> b!773662 m!718389))

(assert (=> b!773662 m!718389))

(declare-fun m!718419 () Bool)

(assert (=> b!773662 m!718419))

(assert (=> b!773662 m!718419))

(assert (=> b!773662 m!718389))

(declare-fun m!718421 () Bool)

(assert (=> b!773662 m!718421))

(declare-fun m!718423 () Bool)

(assert (=> b!773644 m!718423))

(declare-fun m!718425 () Bool)

(assert (=> b!773665 m!718425))

(assert (=> b!773652 m!718389))

(assert (=> b!773652 m!718389))

(assert (=> b!773652 m!718405))

(declare-fun m!718427 () Bool)

(assert (=> b!773654 m!718427))

(push 1)

(assert (not b!773662))

(assert (not b!773666))

(assert (not b!773648))

(assert (not start!67042))

(assert (not b!773656))

(assert (not b!773654))

(assert (not b!773644))

(assert (not b!773647))

(assert (not b!773655))

(assert (not b!773651))

(assert (not b!773660))

(assert (not b!773663))

(assert (not b!773653))

(assert (not b!773649))

(assert (not b!773652))

(assert (not b!773665))

(assert (not b!773657))

(assert (not b!773650))

(assert (not b!773645))

(assert (not b!773646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!773938 () Bool)

(declare-fun e!430827 () SeekEntryResult!7911)

(assert (=> b!773938 (= e!430827 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344569 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!773939 () Bool)

(declare-fun lt!344699 () SeekEntryResult!7911)

(assert (=> b!773939 (and (bvsge (index!34013 lt!344699) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344699) (size!20725 a!3186)))))

(declare-fun res!523538 () Bool)

(assert (=> b!773939 (= res!523538 (= (select (arr!20304 a!3186) (index!34013 lt!344699)) (select (arr!20304 a!3186) j!159)))))

(declare-fun e!430825 () Bool)

(assert (=> b!773939 (=> res!523538 e!430825)))

(declare-fun e!430828 () Bool)

(assert (=> b!773939 (= e!430828 e!430825)))

(declare-fun b!773940 () Bool)

(declare-fun e!430829 () SeekEntryResult!7911)

(assert (=> b!773940 (= e!430829 (Intermediate!7911 true lt!344569 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun d!101899 () Bool)

(declare-fun e!430826 () Bool)

(assert (=> d!101899 e!430826))

(declare-fun c!85600 () Bool)

(assert (=> d!101899 (= c!85600 (and (is-Intermediate!7911 lt!344699) (undefined!8723 lt!344699)))))

(assert (=> d!101899 (= lt!344699 e!430829)))

(declare-fun c!85601 () Bool)

(assert (=> d!101899 (= c!85601 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!344700 () (_ BitVec 64))

(assert (=> d!101899 (= lt!344700 (select (arr!20304 a!3186) lt!344569))))

(assert (=> d!101899 (validMask!0 mask!3328)))

(assert (=> d!101899 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344699)))

(declare-fun b!773941 () Bool)

(assert (=> b!773941 (= e!430829 e!430827)))

(declare-fun c!85602 () Bool)

(assert (=> b!773941 (= c!85602 (or (= lt!344700 (select (arr!20304 a!3186) j!159)) (= (bvadd lt!344700 lt!344700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773942 () Bool)

(assert (=> b!773942 (= e!430826 (bvsge (x!64979 lt!344699) #b01111111111111111111111111111110))))

(declare-fun b!773943 () Bool)

(assert (=> b!773943 (and (bvsge (index!34013 lt!344699) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344699) (size!20725 a!3186)))))

(declare-fun res!523536 () Bool)

(assert (=> b!773943 (= res!523536 (= (select (arr!20304 a!3186) (index!34013 lt!344699)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!773943 (=> res!523536 e!430825)))

(declare-fun b!773944 () Bool)

(assert (=> b!773944 (= e!430826 e!430828)))

(declare-fun res!523537 () Bool)

(assert (=> b!773944 (= res!523537 (and (is-Intermediate!7911 lt!344699) (not (undefined!8723 lt!344699)) (bvslt (x!64979 lt!344699) #b01111111111111111111111111111110) (bvsge (x!64979 lt!344699) #b00000000000000000000000000000000) (bvsge (x!64979 lt!344699) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!773944 (=> (not res!523537) (not e!430828))))

(declare-fun b!773945 () Bool)

(assert (=> b!773945 (and (bvsge (index!34013 lt!344699) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344699) (size!20725 a!3186)))))

(assert (=> b!773945 (= e!430825 (= (select (arr!20304 a!3186) (index!34013 lt!344699)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!773946 () Bool)

(assert (=> b!773946 (= e!430827 (Intermediate!7911 false lt!344569 (bvadd #b00000000000000000000000000000001 x!1131)))))

(assert (= (and d!101899 c!85601) b!773940))

(assert (= (and d!101899 (not c!85601)) b!773941))

(assert (= (and b!773941 c!85602) b!773946))

(assert (= (and b!773941 (not c!85602)) b!773938))

(assert (= (and d!101899 c!85600) b!773942))

(assert (= (and d!101899 (not c!85600)) b!773944))

(assert (= (and b!773944 res!523537) b!773939))

(assert (= (and b!773939 (not res!523538)) b!773943))

(assert (= (and b!773943 (not res!523536)) b!773945))

(declare-fun m!718601 () Bool)

(assert (=> b!773943 m!718601))

(declare-fun m!718603 () Bool)

(assert (=> b!773938 m!718603))

(assert (=> b!773938 m!718603))

(assert (=> b!773938 m!718389))

(declare-fun m!718605 () Bool)

(assert (=> b!773938 m!718605))

(assert (=> b!773939 m!718601))

(assert (=> b!773945 m!718601))

(declare-fun m!718607 () Bool)

(assert (=> d!101899 m!718607))

(assert (=> d!101899 m!718397))

(assert (=> b!773657 d!101899))

(declare-fun d!101917 () Bool)

(declare-fun lt!344738 () SeekEntryResult!7911)

(assert (=> d!101917 (and (or (is-Undefined!7911 lt!344738) (not (is-Found!7911 lt!344738)) (and (bvsge (index!34012 lt!344738) #b00000000000000000000000000000000) (bvslt (index!34012 lt!344738) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344738) (is-Found!7911 lt!344738) (not (is-MissingZero!7911 lt!344738)) (and (bvsge (index!34011 lt!344738) #b00000000000000000000000000000000) (bvslt (index!34011 lt!344738) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344738) (is-Found!7911 lt!344738) (is-MissingZero!7911 lt!344738) (not (is-MissingVacant!7911 lt!344738)) (and (bvsge (index!34014 lt!344738) #b00000000000000000000000000000000) (bvslt (index!34014 lt!344738) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344738) (ite (is-Found!7911 lt!344738) (= (select (arr!20304 a!3186) (index!34012 lt!344738)) (select (arr!20304 a!3186) j!159)) (ite (is-MissingZero!7911 lt!344738) (= (select (arr!20304 a!3186) (index!34011 lt!344738)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7911 lt!344738) (= (select (arr!20304 a!3186) (index!34014 lt!344738)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!430881 () SeekEntryResult!7911)

(assert (=> d!101917 (= lt!344738 e!430881)))

(declare-fun c!85640 () Bool)

(declare-fun lt!344737 () SeekEntryResult!7911)

(assert (=> d!101917 (= c!85640 (and (is-Intermediate!7911 lt!344737) (undefined!8723 lt!344737)))))

(assert (=> d!101917 (= lt!344737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101917 (validMask!0 mask!3328)))

(assert (=> d!101917 (= (seekEntryOrOpen!0 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344738)))

(declare-fun b!774041 () Bool)

(declare-fun e!430883 () SeekEntryResult!7911)

(assert (=> b!774041 (= e!430883 (Found!7911 (index!34013 lt!344737)))))

(declare-fun b!774042 () Bool)

(assert (=> b!774042 (= e!430881 Undefined!7911)))

(declare-fun e!430882 () SeekEntryResult!7911)

(declare-fun b!774043 () Bool)

(assert (=> b!774043 (= e!430882 (seekKeyOrZeroReturnVacant!0 (x!64979 lt!344737) (index!34013 lt!344737) (index!34013 lt!344737) (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774044 () Bool)

(declare-fun c!85642 () Bool)

(declare-fun lt!344736 () (_ BitVec 64))

(assert (=> b!774044 (= c!85642 (= lt!344736 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774044 (= e!430883 e!430882)))

(declare-fun b!774045 () Bool)

(assert (=> b!774045 (= e!430882 (MissingZero!7911 (index!34013 lt!344737)))))

(declare-fun b!774046 () Bool)

(assert (=> b!774046 (= e!430881 e!430883)))

(assert (=> b!774046 (= lt!344736 (select (arr!20304 a!3186) (index!34013 lt!344737)))))

(declare-fun c!85641 () Bool)

(assert (=> b!774046 (= c!85641 (= lt!344736 (select (arr!20304 a!3186) j!159)))))

(assert (= (and d!101917 c!85640) b!774042))

(assert (= (and d!101917 (not c!85640)) b!774046))

(assert (= (and b!774046 c!85641) b!774041))

(assert (= (and b!774046 (not c!85641)) b!774044))

(assert (= (and b!774044 c!85642) b!774045))

(assert (= (and b!774044 (not c!85642)) b!774043))

(declare-fun m!718667 () Bool)

(assert (=> d!101917 m!718667))

(declare-fun m!718669 () Bool)

(assert (=> d!101917 m!718669))

(assert (=> d!101917 m!718419))

(assert (=> d!101917 m!718389))

(assert (=> d!101917 m!718421))

(declare-fun m!718671 () Bool)

(assert (=> d!101917 m!718671))

(assert (=> d!101917 m!718397))

(assert (=> d!101917 m!718389))

(assert (=> d!101917 m!718419))

(assert (=> b!774043 m!718389))

(declare-fun m!718673 () Bool)

(assert (=> b!774043 m!718673))

(declare-fun m!718675 () Bool)

(assert (=> b!774046 m!718675))

(assert (=> b!773646 d!101917))

(declare-fun d!101939 () Bool)

(declare-fun res!523564 () Bool)

(declare-fun e!430888 () Bool)

(assert (=> d!101939 (=> res!523564 e!430888)))

(assert (=> d!101939 (= res!523564 (= (select (arr!20304 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101939 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!430888)))

(declare-fun b!774051 () Bool)

(declare-fun e!430889 () Bool)

(assert (=> b!774051 (= e!430888 e!430889)))

(declare-fun res!523565 () Bool)

(assert (=> b!774051 (=> (not res!523565) (not e!430889))))

(assert (=> b!774051 (= res!523565 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20725 a!3186)))))

(declare-fun b!774052 () Bool)

(assert (=> b!774052 (= e!430889 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101939 (not res!523564)) b!774051))

(assert (= (and b!774051 res!523565) b!774052))

(declare-fun m!718677 () Bool)

(assert (=> d!101939 m!718677))

(declare-fun m!718679 () Bool)

(assert (=> b!774052 m!718679))

(assert (=> b!773647 d!101939))

(declare-fun e!430892 () SeekEntryResult!7911)

(declare-fun b!774053 () Bool)

(assert (=> b!774053 (= e!430892 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774054 () Bool)

(declare-fun lt!344745 () SeekEntryResult!7911)

(assert (=> b!774054 (and (bvsge (index!34013 lt!344745) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344745) (size!20725 a!3186)))))

(declare-fun res!523568 () Bool)

(assert (=> b!774054 (= res!523568 (= (select (arr!20304 a!3186) (index!34013 lt!344745)) (select (arr!20304 a!3186) j!159)))))

(declare-fun e!430890 () Bool)

(assert (=> b!774054 (=> res!523568 e!430890)))

(declare-fun e!430893 () Bool)

(assert (=> b!774054 (= e!430893 e!430890)))

(declare-fun b!774055 () Bool)

(declare-fun e!430894 () SeekEntryResult!7911)

(assert (=> b!774055 (= e!430894 (Intermediate!7911 true index!1321 x!1131))))

(declare-fun d!101943 () Bool)

(declare-fun e!430891 () Bool)

(assert (=> d!101943 e!430891))

(declare-fun c!85643 () Bool)

(assert (=> d!101943 (= c!85643 (and (is-Intermediate!7911 lt!344745) (undefined!8723 lt!344745)))))

(assert (=> d!101943 (= lt!344745 e!430894)))

(declare-fun c!85644 () Bool)

(assert (=> d!101943 (= c!85644 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!344746 () (_ BitVec 64))

(assert (=> d!101943 (= lt!344746 (select (arr!20304 a!3186) index!1321))))

(assert (=> d!101943 (validMask!0 mask!3328)))

(assert (=> d!101943 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344745)))

(declare-fun b!774056 () Bool)

(assert (=> b!774056 (= e!430894 e!430892)))

(declare-fun c!85645 () Bool)

(assert (=> b!774056 (= c!85645 (or (= lt!344746 (select (arr!20304 a!3186) j!159)) (= (bvadd lt!344746 lt!344746) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774057 () Bool)

(assert (=> b!774057 (= e!430891 (bvsge (x!64979 lt!344745) #b01111111111111111111111111111110))))

(declare-fun b!774058 () Bool)

(assert (=> b!774058 (and (bvsge (index!34013 lt!344745) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344745) (size!20725 a!3186)))))

(declare-fun res!523566 () Bool)

(assert (=> b!774058 (= res!523566 (= (select (arr!20304 a!3186) (index!34013 lt!344745)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774058 (=> res!523566 e!430890)))

(declare-fun b!774059 () Bool)

(assert (=> b!774059 (= e!430891 e!430893)))

(declare-fun res!523567 () Bool)

(assert (=> b!774059 (= res!523567 (and (is-Intermediate!7911 lt!344745) (not (undefined!8723 lt!344745)) (bvslt (x!64979 lt!344745) #b01111111111111111111111111111110) (bvsge (x!64979 lt!344745) #b00000000000000000000000000000000) (bvsge (x!64979 lt!344745) x!1131)))))

(assert (=> b!774059 (=> (not res!523567) (not e!430893))))

(declare-fun b!774060 () Bool)

(assert (=> b!774060 (and (bvsge (index!34013 lt!344745) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344745) (size!20725 a!3186)))))

(assert (=> b!774060 (= e!430890 (= (select (arr!20304 a!3186) (index!34013 lt!344745)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774061 () Bool)

(assert (=> b!774061 (= e!430892 (Intermediate!7911 false index!1321 x!1131))))

(assert (= (and d!101943 c!85644) b!774055))

(assert (= (and d!101943 (not c!85644)) b!774056))

(assert (= (and b!774056 c!85645) b!774061))

(assert (= (and b!774056 (not c!85645)) b!774053))

(assert (= (and d!101943 c!85643) b!774057))

(assert (= (and d!101943 (not c!85643)) b!774059))

(assert (= (and b!774059 res!523567) b!774054))

(assert (= (and b!774054 (not res!523568)) b!774058))

(assert (= (and b!774058 (not res!523566)) b!774060))

(declare-fun m!718681 () Bool)

(assert (=> b!774058 m!718681))

(assert (=> b!774053 m!718425))

(assert (=> b!774053 m!718425))

(assert (=> b!774053 m!718389))

(declare-fun m!718683 () Bool)

(assert (=> b!774053 m!718683))

(assert (=> b!774054 m!718681))

(assert (=> b!774060 m!718681))

(declare-fun m!718685 () Bool)

(assert (=> d!101943 m!718685))

(assert (=> d!101943 m!718397))

(assert (=> b!773648 d!101943))

(declare-fun d!101945 () Bool)

(assert (=> d!101945 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67042 d!101945))

(declare-fun d!101947 () Bool)

(assert (=> d!101947 (= (array_inv!16078 a!3186) (bvsge (size!20725 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67042 d!101947))

(declare-fun d!101949 () Bool)

(declare-fun lt!344757 () (_ BitVec 32))

(assert (=> d!101949 (and (bvsge lt!344757 #b00000000000000000000000000000000) (bvslt lt!344757 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101949 (= lt!344757 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101949 (validMask!0 mask!3328)))

(assert (=> d!101949 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!344757)))

(declare-fun bs!21621 () Bool)

(assert (= bs!21621 d!101949))

(declare-fun m!718705 () Bool)

(assert (=> bs!21621 m!718705))

(assert (=> bs!21621 m!718397))

(assert (=> b!773665 d!101949))

(declare-fun d!101955 () Bool)

(declare-fun lt!344762 () SeekEntryResult!7911)

(assert (=> d!101955 (and (or (is-Undefined!7911 lt!344762) (not (is-Found!7911 lt!344762)) (and (bvsge (index!34012 lt!344762) #b00000000000000000000000000000000) (bvslt (index!34012 lt!344762) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344762) (is-Found!7911 lt!344762) (not (is-MissingZero!7911 lt!344762)) (and (bvsge (index!34011 lt!344762) #b00000000000000000000000000000000) (bvslt (index!34011 lt!344762) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344762) (is-Found!7911 lt!344762) (is-MissingZero!7911 lt!344762) (not (is-MissingVacant!7911 lt!344762)) (and (bvsge (index!34014 lt!344762) #b00000000000000000000000000000000) (bvslt (index!34014 lt!344762) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344762) (ite (is-Found!7911 lt!344762) (= (select (arr!20304 a!3186) (index!34012 lt!344762)) k!2102) (ite (is-MissingZero!7911 lt!344762) (= (select (arr!20304 a!3186) (index!34011 lt!344762)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7911 lt!344762) (= (select (arr!20304 a!3186) (index!34014 lt!344762)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!430912 () SeekEntryResult!7911)

(assert (=> d!101955 (= lt!344762 e!430912)))

(declare-fun c!85661 () Bool)

(declare-fun lt!344761 () SeekEntryResult!7911)

(assert (=> d!101955 (= c!85661 (and (is-Intermediate!7911 lt!344761) (undefined!8723 lt!344761)))))

(assert (=> d!101955 (= lt!344761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101955 (validMask!0 mask!3328)))

(assert (=> d!101955 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!344762)))

(declare-fun b!774095 () Bool)

(declare-fun e!430914 () SeekEntryResult!7911)

(assert (=> b!774095 (= e!430914 (Found!7911 (index!34013 lt!344761)))))

(declare-fun b!774096 () Bool)

(assert (=> b!774096 (= e!430912 Undefined!7911)))

(declare-fun b!774097 () Bool)

(declare-fun e!430913 () SeekEntryResult!7911)

(assert (=> b!774097 (= e!430913 (seekKeyOrZeroReturnVacant!0 (x!64979 lt!344761) (index!34013 lt!344761) (index!34013 lt!344761) k!2102 a!3186 mask!3328))))

(declare-fun b!774098 () Bool)

(declare-fun c!85663 () Bool)

(declare-fun lt!344760 () (_ BitVec 64))

(assert (=> b!774098 (= c!85663 (= lt!344760 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774098 (= e!430914 e!430913)))

(declare-fun b!774099 () Bool)

(assert (=> b!774099 (= e!430913 (MissingZero!7911 (index!34013 lt!344761)))))

(declare-fun b!774100 () Bool)

(assert (=> b!774100 (= e!430912 e!430914)))

(assert (=> b!774100 (= lt!344760 (select (arr!20304 a!3186) (index!34013 lt!344761)))))

(declare-fun c!85662 () Bool)

(assert (=> b!774100 (= c!85662 (= lt!344760 k!2102))))

(assert (= (and d!101955 c!85661) b!774096))

(assert (= (and d!101955 (not c!85661)) b!774100))

(assert (= (and b!774100 c!85662) b!774095))

(assert (= (and b!774100 (not c!85662)) b!774098))

(assert (= (and b!774098 c!85663) b!774099))

(assert (= (and b!774098 (not c!85663)) b!774097))

(declare-fun m!718709 () Bool)

(assert (=> d!101955 m!718709))

(declare-fun m!718713 () Bool)

(assert (=> d!101955 m!718713))

(declare-fun m!718715 () Bool)

(assert (=> d!101955 m!718715))

(declare-fun m!718717 () Bool)

(assert (=> d!101955 m!718717))

(declare-fun m!718719 () Bool)

(assert (=> d!101955 m!718719))

(assert (=> d!101955 m!718397))

(assert (=> d!101955 m!718715))

(declare-fun m!718723 () Bool)

(assert (=> b!774097 m!718723))

(declare-fun m!718725 () Bool)

(assert (=> b!774100 m!718725))

(assert (=> b!773654 d!101955))

(declare-fun b!774101 () Bool)

(declare-fun e!430917 () SeekEntryResult!7911)

(assert (=> b!774101 (= e!430917 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344569 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) lt!344572 lt!344570 mask!3328))))

(declare-fun b!774102 () Bool)

(declare-fun lt!344763 () SeekEntryResult!7911)

(assert (=> b!774102 (and (bvsge (index!34013 lt!344763) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344763) (size!20725 lt!344570)))))

(declare-fun res!523574 () Bool)

(assert (=> b!774102 (= res!523574 (= (select (arr!20304 lt!344570) (index!34013 lt!344763)) lt!344572))))

(declare-fun e!430915 () Bool)

(assert (=> b!774102 (=> res!523574 e!430915)))

(declare-fun e!430918 () Bool)

(assert (=> b!774102 (= e!430918 e!430915)))

(declare-fun b!774103 () Bool)

(declare-fun e!430919 () SeekEntryResult!7911)

(assert (=> b!774103 (= e!430919 (Intermediate!7911 true lt!344569 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun d!101959 () Bool)

(declare-fun e!430916 () Bool)

(assert (=> d!101959 e!430916))

(declare-fun c!85664 () Bool)

(assert (=> d!101959 (= c!85664 (and (is-Intermediate!7911 lt!344763) (undefined!8723 lt!344763)))))

(assert (=> d!101959 (= lt!344763 e!430919)))

(declare-fun c!85665 () Bool)

(assert (=> d!101959 (= c!85665 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!344764 () (_ BitVec 64))

(assert (=> d!101959 (= lt!344764 (select (arr!20304 lt!344570) lt!344569))))

(assert (=> d!101959 (validMask!0 mask!3328)))

(assert (=> d!101959 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 lt!344572 lt!344570 mask!3328) lt!344763)))

(declare-fun b!774104 () Bool)

(assert (=> b!774104 (= e!430919 e!430917)))

(declare-fun c!85666 () Bool)

(assert (=> b!774104 (= c!85666 (or (= lt!344764 lt!344572) (= (bvadd lt!344764 lt!344764) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774105 () Bool)

(assert (=> b!774105 (= e!430916 (bvsge (x!64979 lt!344763) #b01111111111111111111111111111110))))

(declare-fun b!774106 () Bool)

(assert (=> b!774106 (and (bvsge (index!34013 lt!344763) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344763) (size!20725 lt!344570)))))

(declare-fun res!523572 () Bool)

(assert (=> b!774106 (= res!523572 (= (select (arr!20304 lt!344570) (index!34013 lt!344763)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774106 (=> res!523572 e!430915)))

(declare-fun b!774107 () Bool)

(assert (=> b!774107 (= e!430916 e!430918)))

(declare-fun res!523573 () Bool)

(assert (=> b!774107 (= res!523573 (and (is-Intermediate!7911 lt!344763) (not (undefined!8723 lt!344763)) (bvslt (x!64979 lt!344763) #b01111111111111111111111111111110) (bvsge (x!64979 lt!344763) #b00000000000000000000000000000000) (bvsge (x!64979 lt!344763) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!774107 (=> (not res!523573) (not e!430918))))

(declare-fun b!774108 () Bool)

(assert (=> b!774108 (and (bvsge (index!34013 lt!344763) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344763) (size!20725 lt!344570)))))

(assert (=> b!774108 (= e!430915 (= (select (arr!20304 lt!344570) (index!34013 lt!344763)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774109 () Bool)

(assert (=> b!774109 (= e!430917 (Intermediate!7911 false lt!344569 (bvadd #b00000000000000000000000000000001 x!1131)))))

(assert (= (and d!101959 c!85665) b!774103))

(assert (= (and d!101959 (not c!85665)) b!774104))

(assert (= (and b!774104 c!85666) b!774109))

(assert (= (and b!774104 (not c!85666)) b!774101))

(assert (= (and d!101959 c!85664) b!774105))

(assert (= (and d!101959 (not c!85664)) b!774107))

(assert (= (and b!774107 res!523573) b!774102))

(assert (= (and b!774102 (not res!523574)) b!774106))

(assert (= (and b!774106 (not res!523572)) b!774108))

(declare-fun m!718727 () Bool)

(assert (=> b!774106 m!718727))

(assert (=> b!774101 m!718603))

(assert (=> b!774101 m!718603))

(declare-fun m!718729 () Bool)

(assert (=> b!774101 m!718729))

(assert (=> b!774102 m!718727))

(assert (=> b!774108 m!718727))

(declare-fun m!718731 () Bool)

(assert (=> d!101959 m!718731))

(assert (=> d!101959 m!718397))

(assert (=> b!773655 d!101959))

(declare-fun b!774120 () Bool)

(declare-fun e!430930 () Bool)

(declare-fun e!430931 () Bool)

(assert (=> b!774120 (= e!430930 e!430931)))

(declare-fun res!523581 () Bool)

(assert (=> b!774120 (=> (not res!523581) (not e!430931))))

(declare-fun e!430929 () Bool)

(assert (=> b!774120 (= res!523581 (not e!430929))))

(declare-fun res!523583 () Bool)

(assert (=> b!774120 (=> (not res!523583) (not e!430929))))

(assert (=> b!774120 (= res!523583 (validKeyInArray!0 (select (arr!20304 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!774121 () Bool)

(declare-fun e!430928 () Bool)

(assert (=> b!774121 (= e!430931 e!430928)))

(declare-fun c!85669 () Bool)

(assert (=> b!774121 (= c!85669 (validKeyInArray!0 (select (arr!20304 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35158 () Bool)

(declare-fun call!35161 () Bool)

(assert (=> bm!35158 (= call!35161 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85669 (Cons!14355 (select (arr!20304 a!3186) #b00000000000000000000000000000000) Nil!14356) Nil!14356)))))

(declare-fun b!774122 () Bool)

(assert (=> b!774122 (= e!430928 call!35161)))

(declare-fun b!774123 () Bool)

(assert (=> b!774123 (= e!430928 call!35161)))

(declare-fun b!774124 () Bool)

(declare-fun contains!4096 (List!14359 (_ BitVec 64)) Bool)

(assert (=> b!774124 (= e!430929 (contains!4096 Nil!14356 (select (arr!20304 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101961 () Bool)

(declare-fun res!523582 () Bool)

(assert (=> d!101961 (=> res!523582 e!430930)))

(assert (=> d!101961 (= res!523582 (bvsge #b00000000000000000000000000000000 (size!20725 a!3186)))))

(assert (=> d!101961 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14356) e!430930)))

(assert (= (and d!101961 (not res!523582)) b!774120))

(assert (= (and b!774120 res!523583) b!774124))

(assert (= (and b!774120 res!523581) b!774121))

(assert (= (and b!774121 c!85669) b!774123))

(assert (= (and b!774121 (not c!85669)) b!774122))

(assert (= (or b!774123 b!774122) bm!35158))

(assert (=> b!774120 m!718677))

(assert (=> b!774120 m!718677))

(declare-fun m!718733 () Bool)

(assert (=> b!774120 m!718733))

(assert (=> b!774121 m!718677))

(assert (=> b!774121 m!718677))

(assert (=> b!774121 m!718733))

(assert (=> bm!35158 m!718677))

(declare-fun m!718735 () Bool)

(assert (=> bm!35158 m!718735))

(assert (=> b!774124 m!718677))

(assert (=> b!774124 m!718677))

(declare-fun m!718737 () Bool)

(assert (=> b!774124 m!718737))

(assert (=> b!773644 d!101961))

(declare-fun b!774139 () Bool)

(declare-fun e!430942 () Bool)

(declare-fun call!35164 () Bool)

(assert (=> b!774139 (= e!430942 call!35164)))

(declare-fun b!774140 () Bool)

(declare-fun e!430943 () Bool)

(assert (=> b!774140 (= e!430942 e!430943)))

(declare-fun lt!344779 () (_ BitVec 64))

(assert (=> b!774140 (= lt!344779 (select (arr!20304 a!3186) j!159))))

(declare-fun lt!344778 () Unit!26680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42421 (_ BitVec 64) (_ BitVec 32)) Unit!26680)

(assert (=> b!774140 (= lt!344778 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!344779 j!159))))

(assert (=> b!774140 (arrayContainsKey!0 a!3186 lt!344779 #b00000000000000000000000000000000)))

(declare-fun lt!344777 () Unit!26680)

(assert (=> b!774140 (= lt!344777 lt!344778)))

(declare-fun res!523590 () Bool)

(assert (=> b!774140 (= res!523590 (= (seekEntryOrOpen!0 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) (Found!7911 j!159)))))

(assert (=> b!774140 (=> (not res!523590) (not e!430943))))

(declare-fun b!774141 () Bool)

(assert (=> b!774141 (= e!430943 call!35164)))

(declare-fun d!101963 () Bool)

(declare-fun res!523591 () Bool)

(declare-fun e!430944 () Bool)

(assert (=> d!101963 (=> res!523591 e!430944)))

(assert (=> d!101963 (= res!523591 (bvsge j!159 (size!20725 a!3186)))))

(assert (=> d!101963 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!430944)))

(declare-fun bm!35161 () Bool)

(assert (=> bm!35161 (= call!35164 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!774142 () Bool)

(assert (=> b!774142 (= e!430944 e!430942)))

(declare-fun c!85674 () Bool)

(assert (=> b!774142 (= c!85674 (validKeyInArray!0 (select (arr!20304 a!3186) j!159)))))

(assert (= (and d!101963 (not res!523591)) b!774142))

(assert (= (and b!774142 c!85674) b!774140))

(assert (= (and b!774142 (not c!85674)) b!774139))

(assert (= (and b!774140 res!523590) b!774141))

(assert (= (or b!774141 b!774139) bm!35161))

(assert (=> b!774140 m!718389))

(declare-fun m!718739 () Bool)

(assert (=> b!774140 m!718739))

(declare-fun m!718741 () Bool)

(assert (=> b!774140 m!718741))

(assert (=> b!774140 m!718389))

(assert (=> b!774140 m!718411))

(declare-fun m!718743 () Bool)

(assert (=> bm!35161 m!718743))

(assert (=> b!774142 m!718389))

(assert (=> b!774142 m!718389))

(assert (=> b!774142 m!718403))

(assert (=> b!773645 d!101963))

(declare-fun d!101969 () Bool)

(assert (=> d!101969 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!344787 () Unit!26680)

(declare-fun choose!38 (array!42421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26680)

(assert (=> d!101969 (= lt!344787 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101969 (validMask!0 mask!3328)))

(assert (=> d!101969 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!344787)))

(declare-fun bs!21622 () Bool)

(assert (= bs!21622 d!101969))

(assert (=> bs!21622 m!718415))

(declare-fun m!718761 () Bool)

(assert (=> bs!21622 m!718761))

(assert (=> bs!21622 m!718397))

(assert (=> b!773645 d!101969))

(declare-fun b!774191 () Bool)

(declare-fun e!430980 () SeekEntryResult!7911)

(assert (=> b!774191 (= e!430980 Undefined!7911)))

(declare-fun b!774192 () Bool)

(declare-fun e!430981 () SeekEntryResult!7911)

(assert (=> b!774192 (= e!430981 (Found!7911 resIntermediateIndex!5))))

(declare-fun b!774193 () Bool)

(declare-fun e!430979 () SeekEntryResult!7911)

(assert (=> b!774193 (= e!430979 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774194 () Bool)

(declare-fun c!85688 () Bool)

(declare-fun lt!344793 () (_ BitVec 64))

(assert (=> b!774194 (= c!85688 (= lt!344793 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774194 (= e!430981 e!430979)))

(declare-fun d!101975 () Bool)

(declare-fun lt!344792 () SeekEntryResult!7911)

(assert (=> d!101975 (and (or (is-Undefined!7911 lt!344792) (not (is-Found!7911 lt!344792)) (and (bvsge (index!34012 lt!344792) #b00000000000000000000000000000000) (bvslt (index!34012 lt!344792) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344792) (is-Found!7911 lt!344792) (not (is-MissingVacant!7911 lt!344792)) (not (= (index!34014 lt!344792) resIntermediateIndex!5)) (and (bvsge (index!34014 lt!344792) #b00000000000000000000000000000000) (bvslt (index!34014 lt!344792) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344792) (ite (is-Found!7911 lt!344792) (= (select (arr!20304 a!3186) (index!34012 lt!344792)) (select (arr!20304 a!3186) j!159)) (and (is-MissingVacant!7911 lt!344792) (= (index!34014 lt!344792) resIntermediateIndex!5) (= (select (arr!20304 a!3186) (index!34014 lt!344792)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101975 (= lt!344792 e!430980)))

(declare-fun c!85689 () Bool)

(assert (=> d!101975 (= c!85689 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101975 (= lt!344793 (select (arr!20304 a!3186) resIntermediateIndex!5))))

(assert (=> d!101975 (validMask!0 mask!3328)))

(assert (=> d!101975 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344792)))

(declare-fun b!774195 () Bool)

(assert (=> b!774195 (= e!430980 e!430981)))

(declare-fun c!85690 () Bool)

(assert (=> b!774195 (= c!85690 (= lt!344793 (select (arr!20304 a!3186) j!159)))))

(declare-fun b!774196 () Bool)

(assert (=> b!774196 (= e!430979 (MissingVacant!7911 resIntermediateIndex!5))))

(assert (= (and d!101975 c!85689) b!774191))

(assert (= (and d!101975 (not c!85689)) b!774195))

(assert (= (and b!774195 c!85690) b!774192))

(assert (= (and b!774195 (not c!85690)) b!774194))

(assert (= (and b!774194 c!85688) b!774196))

(assert (= (and b!774194 (not c!85688)) b!774193))

(declare-fun m!718769 () Bool)

(assert (=> b!774193 m!718769))

(assert (=> b!774193 m!718769))

(assert (=> b!774193 m!718389))

(declare-fun m!718771 () Bool)

(assert (=> b!774193 m!718771))

(declare-fun m!718773 () Bool)

(assert (=> d!101975 m!718773))

(declare-fun m!718775 () Bool)

(assert (=> d!101975 m!718775))

(assert (=> d!101975 m!718375))

(assert (=> d!101975 m!718397))

(assert (=> b!773666 d!101975))

(declare-fun d!101981 () Bool)

(assert (=> d!101981 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!773656 d!101981))

(declare-fun e!430984 () SeekEntryResult!7911)

(declare-fun b!774197 () Bool)

(assert (=> b!774197 (= e!430984 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774198 () Bool)

(declare-fun lt!344794 () SeekEntryResult!7911)

(assert (=> b!774198 (and (bvsge (index!34013 lt!344794) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344794) (size!20725 a!3186)))))

(declare-fun res!523616 () Bool)

(assert (=> b!774198 (= res!523616 (= (select (arr!20304 a!3186) (index!34013 lt!344794)) (select (arr!20304 a!3186) j!159)))))

(declare-fun e!430982 () Bool)

(assert (=> b!774198 (=> res!523616 e!430982)))

(declare-fun e!430985 () Bool)

(assert (=> b!774198 (= e!430985 e!430982)))

(declare-fun b!774199 () Bool)

(declare-fun e!430986 () SeekEntryResult!7911)

(assert (=> b!774199 (= e!430986 (Intermediate!7911 true (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101983 () Bool)

(declare-fun e!430983 () Bool)

(assert (=> d!101983 e!430983))

(declare-fun c!85691 () Bool)

(assert (=> d!101983 (= c!85691 (and (is-Intermediate!7911 lt!344794) (undefined!8723 lt!344794)))))

(assert (=> d!101983 (= lt!344794 e!430986)))

(declare-fun c!85692 () Bool)

(assert (=> d!101983 (= c!85692 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!344795 () (_ BitVec 64))

(assert (=> d!101983 (= lt!344795 (select (arr!20304 a!3186) (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328)))))

(assert (=> d!101983 (validMask!0 mask!3328)))

(assert (=> d!101983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344794)))

(declare-fun b!774200 () Bool)

(assert (=> b!774200 (= e!430986 e!430984)))

(declare-fun c!85693 () Bool)

(assert (=> b!774200 (= c!85693 (or (= lt!344795 (select (arr!20304 a!3186) j!159)) (= (bvadd lt!344795 lt!344795) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774201 () Bool)

(assert (=> b!774201 (= e!430983 (bvsge (x!64979 lt!344794) #b01111111111111111111111111111110))))

(declare-fun b!774202 () Bool)

(assert (=> b!774202 (and (bvsge (index!34013 lt!344794) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344794) (size!20725 a!3186)))))

(declare-fun res!523614 () Bool)

(assert (=> b!774202 (= res!523614 (= (select (arr!20304 a!3186) (index!34013 lt!344794)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774202 (=> res!523614 e!430982)))

(declare-fun b!774203 () Bool)

(assert (=> b!774203 (= e!430983 e!430985)))

(declare-fun res!523615 () Bool)

(assert (=> b!774203 (= res!523615 (and (is-Intermediate!7911 lt!344794) (not (undefined!8723 lt!344794)) (bvslt (x!64979 lt!344794) #b01111111111111111111111111111110) (bvsge (x!64979 lt!344794) #b00000000000000000000000000000000) (bvsge (x!64979 lt!344794) #b00000000000000000000000000000000)))))

(assert (=> b!774203 (=> (not res!523615) (not e!430985))))

(declare-fun b!774204 () Bool)

(assert (=> b!774204 (and (bvsge (index!34013 lt!344794) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344794) (size!20725 a!3186)))))

(assert (=> b!774204 (= e!430982 (= (select (arr!20304 a!3186) (index!34013 lt!344794)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774205 () Bool)

(assert (=> b!774205 (= e!430984 (Intermediate!7911 false (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101983 c!85692) b!774199))

(assert (= (and d!101983 (not c!85692)) b!774200))

(assert (= (and b!774200 c!85693) b!774205))

(assert (= (and b!774200 (not c!85693)) b!774197))

(assert (= (and d!101983 c!85691) b!774201))

(assert (= (and d!101983 (not c!85691)) b!774203))

(assert (= (and b!774203 res!523615) b!774198))

(assert (= (and b!774198 (not res!523616)) b!774202))

(assert (= (and b!774202 (not res!523614)) b!774204))

(declare-fun m!718777 () Bool)

(assert (=> b!774202 m!718777))

(assert (=> b!774197 m!718419))

(declare-fun m!718779 () Bool)

(assert (=> b!774197 m!718779))

(assert (=> b!774197 m!718779))

(assert (=> b!774197 m!718389))

(declare-fun m!718781 () Bool)

(assert (=> b!774197 m!718781))

(assert (=> b!774198 m!718777))

(assert (=> b!774204 m!718777))

(assert (=> d!101983 m!718419))

(declare-fun m!718783 () Bool)

(assert (=> d!101983 m!718783))

(assert (=> d!101983 m!718397))

(assert (=> b!773662 d!101983))

(declare-fun d!101985 () Bool)

(declare-fun lt!344801 () (_ BitVec 32))

(declare-fun lt!344800 () (_ BitVec 32))

(assert (=> d!101985 (= lt!344801 (bvmul (bvxor lt!344800 (bvlshr lt!344800 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101985 (= lt!344800 ((_ extract 31 0) (bvand (bvxor (select (arr!20304 a!3186) j!159) (bvlshr (select (arr!20304 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101985 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!523617 (let ((h!15465 ((_ extract 31 0) (bvand (bvxor (select (arr!20304 a!3186) j!159) (bvlshr (select (arr!20304 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64992 (bvmul (bvxor h!15465 (bvlshr h!15465 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64992 (bvlshr x!64992 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!523617 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!523617 #b00000000000000000000000000000000))))))

(assert (=> d!101985 (= (toIndex!0 (select (arr!20304 a!3186) j!159) mask!3328) (bvand (bvxor lt!344801 (bvlshr lt!344801 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!773662 d!101985))

(declare-fun b!774206 () Bool)

(declare-fun e!430988 () SeekEntryResult!7911)

(assert (=> b!774206 (= e!430988 Undefined!7911)))

(declare-fun b!774207 () Bool)

(declare-fun e!430989 () SeekEntryResult!7911)

(assert (=> b!774207 (= e!430989 (Found!7911 index!1321))))

(declare-fun e!430987 () SeekEntryResult!7911)

(declare-fun b!774208 () Bool)

(assert (=> b!774208 (= e!430987 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774209 () Bool)

(declare-fun c!85694 () Bool)

(declare-fun lt!344803 () (_ BitVec 64))

(assert (=> b!774209 (= c!85694 (= lt!344803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774209 (= e!430989 e!430987)))

(declare-fun d!101987 () Bool)

(declare-fun lt!344802 () SeekEntryResult!7911)

(assert (=> d!101987 (and (or (is-Undefined!7911 lt!344802) (not (is-Found!7911 lt!344802)) (and (bvsge (index!34012 lt!344802) #b00000000000000000000000000000000) (bvslt (index!34012 lt!344802) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344802) (is-Found!7911 lt!344802) (not (is-MissingVacant!7911 lt!344802)) (not (= (index!34014 lt!344802) resIntermediateIndex!5)) (and (bvsge (index!34014 lt!344802) #b00000000000000000000000000000000) (bvslt (index!34014 lt!344802) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344802) (ite (is-Found!7911 lt!344802) (= (select (arr!20304 a!3186) (index!34012 lt!344802)) (select (arr!20304 a!3186) j!159)) (and (is-MissingVacant!7911 lt!344802) (= (index!34014 lt!344802) resIntermediateIndex!5) (= (select (arr!20304 a!3186) (index!34014 lt!344802)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101987 (= lt!344802 e!430988)))

(declare-fun c!85695 () Bool)

(assert (=> d!101987 (= c!85695 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101987 (= lt!344803 (select (arr!20304 a!3186) index!1321))))

(assert (=> d!101987 (validMask!0 mask!3328)))

(assert (=> d!101987 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344802)))

(declare-fun b!774210 () Bool)

(assert (=> b!774210 (= e!430988 e!430989)))

(declare-fun c!85696 () Bool)

(assert (=> b!774210 (= c!85696 (= lt!344803 (select (arr!20304 a!3186) j!159)))))

(declare-fun b!774211 () Bool)

(assert (=> b!774211 (= e!430987 (MissingVacant!7911 resIntermediateIndex!5))))

(assert (= (and d!101987 c!85695) b!774206))

(assert (= (and d!101987 (not c!85695)) b!774210))

(assert (= (and b!774210 c!85696) b!774207))

(assert (= (and b!774210 (not c!85696)) b!774209))

(assert (= (and b!774209 c!85694) b!774211))

(assert (= (and b!774209 (not c!85694)) b!774208))

(assert (=> b!774208 m!718425))

(assert (=> b!774208 m!718425))

(assert (=> b!774208 m!718389))

(declare-fun m!718785 () Bool)

(assert (=> b!774208 m!718785))

(declare-fun m!718787 () Bool)

(assert (=> d!101987 m!718787))

(declare-fun m!718789 () Bool)

(assert (=> d!101987 m!718789))

(assert (=> d!101987 m!718685))

(assert (=> d!101987 m!718397))

(assert (=> b!773663 d!101987))

(declare-fun b!774212 () Bool)

(declare-fun e!430991 () SeekEntryResult!7911)

(assert (=> b!774212 (= e!430991 Undefined!7911)))

(declare-fun b!774213 () Bool)

(declare-fun e!430992 () SeekEntryResult!7911)

(assert (=> b!774213 (= e!430992 (Found!7911 lt!344569))))

(declare-fun e!430990 () SeekEntryResult!7911)

(declare-fun b!774214 () Bool)

(assert (=> b!774214 (= e!430990 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!344569 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!774215 () Bool)

(declare-fun c!85697 () Bool)

(declare-fun lt!344805 () (_ BitVec 64))

(assert (=> b!774215 (= c!85697 (= lt!344805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774215 (= e!430992 e!430990)))

(declare-fun lt!344804 () SeekEntryResult!7911)

(declare-fun d!101989 () Bool)

(assert (=> d!101989 (and (or (is-Undefined!7911 lt!344804) (not (is-Found!7911 lt!344804)) (and (bvsge (index!34012 lt!344804) #b00000000000000000000000000000000) (bvslt (index!34012 lt!344804) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344804) (is-Found!7911 lt!344804) (not (is-MissingVacant!7911 lt!344804)) (not (= (index!34014 lt!344804) resIntermediateIndex!5)) (and (bvsge (index!34014 lt!344804) #b00000000000000000000000000000000) (bvslt (index!34014 lt!344804) (size!20725 a!3186)))) (or (is-Undefined!7911 lt!344804) (ite (is-Found!7911 lt!344804) (= (select (arr!20304 a!3186) (index!34012 lt!344804)) (select (arr!20304 a!3186) j!159)) (and (is-MissingVacant!7911 lt!344804) (= (index!34014 lt!344804) resIntermediateIndex!5) (= (select (arr!20304 a!3186) (index!34014 lt!344804)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101989 (= lt!344804 e!430991)))

(declare-fun c!85698 () Bool)

(assert (=> d!101989 (= c!85698 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101989 (= lt!344805 (select (arr!20304 a!3186) lt!344569))))

(assert (=> d!101989 (validMask!0 mask!3328)))

(assert (=> d!101989 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344569 resIntermediateIndex!5 (select (arr!20304 a!3186) j!159) a!3186 mask!3328) lt!344804)))

(declare-fun b!774216 () Bool)

(assert (=> b!774216 (= e!430991 e!430992)))

(declare-fun c!85699 () Bool)

(assert (=> b!774216 (= c!85699 (= lt!344805 (select (arr!20304 a!3186) j!159)))))

(declare-fun b!774217 () Bool)

(assert (=> b!774217 (= e!430990 (MissingVacant!7911 resIntermediateIndex!5))))

(assert (= (and d!101989 c!85698) b!774212))

(assert (= (and d!101989 (not c!85698)) b!774216))

(assert (= (and b!774216 c!85699) b!774213))

(assert (= (and b!774216 (not c!85699)) b!774215))

(assert (= (and b!774215 c!85697) b!774217))

(assert (= (and b!774215 (not c!85697)) b!774214))

(assert (=> b!774214 m!718603))

(assert (=> b!774214 m!718603))

(assert (=> b!774214 m!718389))

(declare-fun m!718791 () Bool)

(assert (=> b!774214 m!718791))

(declare-fun m!718793 () Bool)

(assert (=> d!101989 m!718793))

(declare-fun m!718795 () Bool)

(assert (=> d!101989 m!718795))

(assert (=> d!101989 m!718607))

(assert (=> d!101989 m!718397))

(assert (=> b!773663 d!101989))

(assert (=> b!773652 d!101899))

(declare-fun d!101991 () Bool)

(assert (=> d!101991 (= (validKeyInArray!0 (select (arr!20304 a!3186) j!159)) (and (not (= (select (arr!20304 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20304 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!773653 d!101991))

(assert (=> b!773649 d!101987))

(declare-fun b!774218 () Bool)

(declare-fun e!430995 () SeekEntryResult!7911)

(assert (=> b!774218 (= e!430995 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!344572 lt!344570 mask!3328))))

(declare-fun b!774219 () Bool)

(declare-fun lt!344806 () SeekEntryResult!7911)

(assert (=> b!774219 (and (bvsge (index!34013 lt!344806) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344806) (size!20725 lt!344570)))))

(declare-fun res!523620 () Bool)

(assert (=> b!774219 (= res!523620 (= (select (arr!20304 lt!344570) (index!34013 lt!344806)) lt!344572))))

(declare-fun e!430993 () Bool)

(assert (=> b!774219 (=> res!523620 e!430993)))

(declare-fun e!430996 () Bool)

(assert (=> b!774219 (= e!430996 e!430993)))

(declare-fun b!774220 () Bool)

(declare-fun e!430997 () SeekEntryResult!7911)

(assert (=> b!774220 (= e!430997 (Intermediate!7911 true index!1321 x!1131))))

(declare-fun d!101993 () Bool)

(declare-fun e!430994 () Bool)

(assert (=> d!101993 e!430994))

(declare-fun c!85700 () Bool)

(assert (=> d!101993 (= c!85700 (and (is-Intermediate!7911 lt!344806) (undefined!8723 lt!344806)))))

(assert (=> d!101993 (= lt!344806 e!430997)))

(declare-fun c!85701 () Bool)

(assert (=> d!101993 (= c!85701 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!344807 () (_ BitVec 64))

(assert (=> d!101993 (= lt!344807 (select (arr!20304 lt!344570) index!1321))))

(assert (=> d!101993 (validMask!0 mask!3328)))

(assert (=> d!101993 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344572 lt!344570 mask!3328) lt!344806)))

(declare-fun b!774221 () Bool)

(assert (=> b!774221 (= e!430997 e!430995)))

(declare-fun c!85702 () Bool)

(assert (=> b!774221 (= c!85702 (or (= lt!344807 lt!344572) (= (bvadd lt!344807 lt!344807) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774222 () Bool)

(assert (=> b!774222 (= e!430994 (bvsge (x!64979 lt!344806) #b01111111111111111111111111111110))))

(declare-fun b!774223 () Bool)

(assert (=> b!774223 (and (bvsge (index!34013 lt!344806) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344806) (size!20725 lt!344570)))))

(declare-fun res!523618 () Bool)

(assert (=> b!774223 (= res!523618 (= (select (arr!20304 lt!344570) (index!34013 lt!344806)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!774223 (=> res!523618 e!430993)))

(declare-fun b!774224 () Bool)

(assert (=> b!774224 (= e!430994 e!430996)))

(declare-fun res!523619 () Bool)

(assert (=> b!774224 (= res!523619 (and (is-Intermediate!7911 lt!344806) (not (undefined!8723 lt!344806)) (bvslt (x!64979 lt!344806) #b01111111111111111111111111111110) (bvsge (x!64979 lt!344806) #b00000000000000000000000000000000) (bvsge (x!64979 lt!344806) x!1131)))))

(assert (=> b!774224 (=> (not res!523619) (not e!430996))))

(declare-fun b!774225 () Bool)

(assert (=> b!774225 (and (bvsge (index!34013 lt!344806) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344806) (size!20725 lt!344570)))))

(assert (=> b!774225 (= e!430993 (= (select (arr!20304 lt!344570) (index!34013 lt!344806)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!774226 () Bool)

(assert (=> b!774226 (= e!430995 (Intermediate!7911 false index!1321 x!1131))))

(assert (= (and d!101993 c!85701) b!774220))

(assert (= (and d!101993 (not c!85701)) b!774221))

(assert (= (and b!774221 c!85702) b!774226))

(assert (= (and b!774221 (not c!85702)) b!774218))

(assert (= (and d!101993 c!85700) b!774222))

(assert (= (and d!101993 (not c!85700)) b!774224))

(assert (= (and b!774224 res!523619) b!774219))

(assert (= (and b!774219 (not res!523620)) b!774223))

(assert (= (and b!774223 (not res!523618)) b!774225))

(declare-fun m!718797 () Bool)

(assert (=> b!774223 m!718797))

(assert (=> b!774218 m!718425))

(assert (=> b!774218 m!718425))

(declare-fun m!718799 () Bool)

(assert (=> b!774218 m!718799))

(assert (=> b!774219 m!718797))

(assert (=> b!774225 m!718797))

(declare-fun m!718801 () Bool)

(assert (=> d!101993 m!718801))

(assert (=> d!101993 m!718397))

(assert (=> b!773660 d!101993))

(declare-fun e!431000 () SeekEntryResult!7911)

(declare-fun b!774227 () Bool)

(assert (=> b!774227 (= e!431000 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!344572 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!344572 lt!344570 mask!3328))))

(declare-fun b!774228 () Bool)

(declare-fun lt!344808 () SeekEntryResult!7911)

(assert (=> b!774228 (and (bvsge (index!34013 lt!344808) #b00000000000000000000000000000000) (bvslt (index!34013 lt!344808) (size!20725 lt!344570)))))

(declare-fun res!523623 () Bool)

(assert (=> b!774228 (= res!523623 (= (select (arr!20304 lt!344570) (index!34013 lt!344808)) lt!344572))))

(declare-fun e!430998 () Bool)

(assert (=> b!774228 (=> res!523623 e!430998)))

(declare-fun e!431001 () Bool)

(assert (=> b!774228 (= e!431001 e!430998)))

(declare-fun b!774229 () Bool)

(declare-fun e!431002 () SeekEntryResult!7911)

(assert (=> b!774229 (= e!431002 (Intermediate!7911 true (toIndex!0 lt!344572 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101995 () Bool)

(declare-fun e!430999 () Bool)

(assert (=> d!101995 e!430999))

(declare-fun c!85703 () Bool)

(assert (=> d!101995 (= c!85703 (and (is-Intermediate!7911 lt!344808) (undefined!8723 lt!344808)))))

(assert (=> d!101995 (= lt!344808 e!431002)))

(declare-fun c!85704 () Bool)

(assert (=> d!101995 (= c!85704 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!344809 () (_ BitVec 64))

(assert (=> d!101995 (= lt!344809 (select (arr!20304 lt!344570) (toIndex!0 lt!344572 mask!3328)))))

(assert (=> d!101995 (validMask!0 mask!3328)))

(assert (=> d!101995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344572 mask!3328) lt!344572 lt!344570 mask!3328) lt!344808)))

(declare-fun b!774230 () Bool)

(assert (=> b!774230 (= e!431002 e!431000)))

(declare-fun c!85705 () Bool)

(assert (=> b!774230 (= c!85705 (or (= lt!344809 lt!344572) (= (bvadd lt!344809 lt!344809) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774231 () Bool)

(assert (=> b!774231 (= e!430999 (bvsge (x!64979 lt!344808) #b01111111111111111111111111111110))))

(declare-fun b!774232 () Bool)

