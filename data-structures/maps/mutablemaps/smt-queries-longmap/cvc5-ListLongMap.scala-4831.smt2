; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66476 () Bool)

(assert start!66476)

(declare-datatypes ((array!42208 0))(
  ( (array!42209 (arr!20205 (Array (_ BitVec 32) (_ BitVec 64))) (size!20626 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42208)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!765481 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!426349 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7812 0))(
  ( (MissingZero!7812 (index!33615 (_ BitVec 32))) (Found!7812 (index!33616 (_ BitVec 32))) (Intermediate!7812 (undefined!8624 Bool) (index!33617 (_ BitVec 32)) (x!64555 (_ BitVec 32))) (Undefined!7812) (MissingVacant!7812 (index!33618 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42208 (_ BitVec 32)) SeekEntryResult!7812)

(assert (=> b!765481 (= e!426349 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20205 a!3186) j!159) a!3186 mask!3328) (Found!7812 j!159)))))

(declare-fun b!765482 () Bool)

(declare-fun e!426350 () Bool)

(assert (=> b!765482 (= e!426350 (not true))))

(declare-fun e!426344 () Bool)

(assert (=> b!765482 e!426344))

(declare-fun res!517882 () Bool)

(assert (=> b!765482 (=> (not res!517882) (not e!426344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42208 (_ BitVec 32)) Bool)

(assert (=> b!765482 (= res!517882 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26350 0))(
  ( (Unit!26351) )
))
(declare-fun lt!340553 () Unit!26350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26350)

(assert (=> b!765482 (= lt!340553 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765483 () Bool)

(declare-fun res!517879 () Bool)

(declare-fun e!426348 () Bool)

(assert (=> b!765483 (=> (not res!517879) (not e!426348))))

(assert (=> b!765483 (= res!517879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765484 () Bool)

(declare-fun e!426346 () Bool)

(assert (=> b!765484 (= e!426346 e!426348)))

(declare-fun res!517878 () Bool)

(assert (=> b!765484 (=> (not res!517878) (not e!426348))))

(declare-fun lt!340557 () SeekEntryResult!7812)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765484 (= res!517878 (or (= lt!340557 (MissingZero!7812 i!1173)) (= lt!340557 (MissingVacant!7812 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42208 (_ BitVec 32)) SeekEntryResult!7812)

(assert (=> b!765484 (= lt!340557 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765485 () Bool)

(declare-fun lt!340558 () SeekEntryResult!7812)

(declare-fun e!426347 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765485 (= e!426347 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20205 a!3186) j!159) a!3186 mask!3328) lt!340558))))

(declare-fun lt!340554 () SeekEntryResult!7812)

(declare-fun b!765486 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42208 (_ BitVec 32)) SeekEntryResult!7812)

(assert (=> b!765486 (= e!426349 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20205 a!3186) j!159) a!3186 mask!3328) lt!340554))))

(declare-fun b!765487 () Bool)

(declare-fun res!517884 () Bool)

(assert (=> b!765487 (=> (not res!517884) (not e!426346))))

(declare-fun arrayContainsKey!0 (array!42208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765487 (= res!517884 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765488 () Bool)

(declare-fun res!517881 () Bool)

(assert (=> b!765488 (=> (not res!517881) (not e!426346))))

(assert (=> b!765488 (= res!517881 (and (= (size!20626 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20626 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20626 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765490 () Bool)

(declare-fun res!517877 () Bool)

(declare-fun e!426345 () Bool)

(assert (=> b!765490 (=> (not res!517877) (not e!426345))))

(assert (=> b!765490 (= res!517877 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20205 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765491 () Bool)

(assert (=> b!765491 (= e!426348 e!426345)))

(declare-fun res!517873 () Bool)

(assert (=> b!765491 (=> (not res!517873) (not e!426345))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765491 (= res!517873 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20205 a!3186) j!159) mask!3328) (select (arr!20205 a!3186) j!159) a!3186 mask!3328) lt!340554))))

(assert (=> b!765491 (= lt!340554 (Intermediate!7812 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765492 () Bool)

(assert (=> b!765492 (= e!426345 e!426350)))

(declare-fun res!517870 () Bool)

(assert (=> b!765492 (=> (not res!517870) (not e!426350))))

(declare-fun lt!340556 () array!42208)

(declare-fun lt!340555 () (_ BitVec 64))

(assert (=> b!765492 (= res!517870 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340555 mask!3328) lt!340555 lt!340556 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340555 lt!340556 mask!3328)))))

(assert (=> b!765492 (= lt!340555 (select (store (arr!20205 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765492 (= lt!340556 (array!42209 (store (arr!20205 a!3186) i!1173 k!2102) (size!20626 a!3186)))))

(declare-fun b!765493 () Bool)

(declare-fun res!517883 () Bool)

(assert (=> b!765493 (=> (not res!517883) (not e!426346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765493 (= res!517883 (validKeyInArray!0 k!2102))))

(declare-fun b!765494 () Bool)

(declare-fun res!517875 () Bool)

(assert (=> b!765494 (=> (not res!517875) (not e!426348))))

(declare-datatypes ((List!14260 0))(
  ( (Nil!14257) (Cons!14256 (h!15346 (_ BitVec 64)) (t!20583 List!14260)) )
))
(declare-fun arrayNoDuplicates!0 (array!42208 (_ BitVec 32) List!14260) Bool)

(assert (=> b!765494 (= res!517875 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14257))))

(declare-fun b!765495 () Bool)

(declare-fun res!517872 () Bool)

(assert (=> b!765495 (=> (not res!517872) (not e!426346))))

(assert (=> b!765495 (= res!517872 (validKeyInArray!0 (select (arr!20205 a!3186) j!159)))))

(declare-fun b!765496 () Bool)

(declare-fun res!517876 () Bool)

(assert (=> b!765496 (=> (not res!517876) (not e!426345))))

(assert (=> b!765496 (= res!517876 e!426349)))

(declare-fun c!84195 () Bool)

(assert (=> b!765496 (= c!84195 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765497 () Bool)

(assert (=> b!765497 (= e!426344 e!426347)))

(declare-fun res!517880 () Bool)

(assert (=> b!765497 (=> (not res!517880) (not e!426347))))

(assert (=> b!765497 (= res!517880 (= (seekEntryOrOpen!0 (select (arr!20205 a!3186) j!159) a!3186 mask!3328) lt!340558))))

(assert (=> b!765497 (= lt!340558 (Found!7812 j!159))))

(declare-fun b!765489 () Bool)

(declare-fun res!517871 () Bool)

(assert (=> b!765489 (=> (not res!517871) (not e!426348))))

(assert (=> b!765489 (= res!517871 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20626 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20626 a!3186))))))

(declare-fun res!517874 () Bool)

(assert (=> start!66476 (=> (not res!517874) (not e!426346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66476 (= res!517874 (validMask!0 mask!3328))))

(assert (=> start!66476 e!426346))

(assert (=> start!66476 true))

(declare-fun array_inv!15979 (array!42208) Bool)

(assert (=> start!66476 (array_inv!15979 a!3186)))

(assert (= (and start!66476 res!517874) b!765488))

(assert (= (and b!765488 res!517881) b!765495))

(assert (= (and b!765495 res!517872) b!765493))

(assert (= (and b!765493 res!517883) b!765487))

(assert (= (and b!765487 res!517884) b!765484))

(assert (= (and b!765484 res!517878) b!765483))

(assert (= (and b!765483 res!517879) b!765494))

(assert (= (and b!765494 res!517875) b!765489))

(assert (= (and b!765489 res!517871) b!765491))

(assert (= (and b!765491 res!517873) b!765490))

(assert (= (and b!765490 res!517877) b!765496))

(assert (= (and b!765496 c!84195) b!765486))

(assert (= (and b!765496 (not c!84195)) b!765481))

(assert (= (and b!765496 res!517876) b!765492))

(assert (= (and b!765492 res!517870) b!765482))

(assert (= (and b!765482 res!517882) b!765497))

(assert (= (and b!765497 res!517880) b!765485))

(declare-fun m!711635 () Bool)

(assert (=> b!765490 m!711635))

(declare-fun m!711637 () Bool)

(assert (=> b!765486 m!711637))

(assert (=> b!765486 m!711637))

(declare-fun m!711639 () Bool)

(assert (=> b!765486 m!711639))

(declare-fun m!711641 () Bool)

(assert (=> b!765483 m!711641))

(assert (=> b!765497 m!711637))

(assert (=> b!765497 m!711637))

(declare-fun m!711643 () Bool)

(assert (=> b!765497 m!711643))

(assert (=> b!765491 m!711637))

(assert (=> b!765491 m!711637))

(declare-fun m!711645 () Bool)

(assert (=> b!765491 m!711645))

(assert (=> b!765491 m!711645))

(assert (=> b!765491 m!711637))

(declare-fun m!711647 () Bool)

(assert (=> b!765491 m!711647))

(declare-fun m!711649 () Bool)

(assert (=> b!765494 m!711649))

(assert (=> b!765485 m!711637))

(assert (=> b!765485 m!711637))

(declare-fun m!711651 () Bool)

(assert (=> b!765485 m!711651))

(declare-fun m!711653 () Bool)

(assert (=> b!765487 m!711653))

(declare-fun m!711655 () Bool)

(assert (=> b!765482 m!711655))

(declare-fun m!711657 () Bool)

(assert (=> b!765482 m!711657))

(assert (=> b!765481 m!711637))

(assert (=> b!765481 m!711637))

(declare-fun m!711659 () Bool)

(assert (=> b!765481 m!711659))

(assert (=> b!765495 m!711637))

(assert (=> b!765495 m!711637))

(declare-fun m!711661 () Bool)

(assert (=> b!765495 m!711661))

(declare-fun m!711663 () Bool)

(assert (=> start!66476 m!711663))

(declare-fun m!711665 () Bool)

(assert (=> start!66476 m!711665))

(declare-fun m!711667 () Bool)

(assert (=> b!765484 m!711667))

(declare-fun m!711669 () Bool)

(assert (=> b!765493 m!711669))

(declare-fun m!711671 () Bool)

(assert (=> b!765492 m!711671))

(declare-fun m!711673 () Bool)

(assert (=> b!765492 m!711673))

(declare-fun m!711675 () Bool)

(assert (=> b!765492 m!711675))

(declare-fun m!711677 () Bool)

(assert (=> b!765492 m!711677))

(assert (=> b!765492 m!711671))

(declare-fun m!711679 () Bool)

(assert (=> b!765492 m!711679))

(push 1)

