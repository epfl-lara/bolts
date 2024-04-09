; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65402 () Bool)

(assert start!65402)

(declare-fun b!743661 () Bool)

(declare-fun e!415489 () Bool)

(declare-fun e!415492 () Bool)

(assert (=> b!743661 (= e!415489 e!415492)))

(declare-fun res!500859 () Bool)

(assert (=> b!743661 (=> (not res!500859) (not e!415492))))

(declare-datatypes ((SeekEntryResult!7481 0))(
  ( (MissingZero!7481 (index!32291 (_ BitVec 32))) (Found!7481 (index!32292 (_ BitVec 32))) (Intermediate!7481 (undefined!8293 Bool) (index!32293 (_ BitVec 32)) (x!63280 (_ BitVec 32))) (Undefined!7481) (MissingVacant!7481 (index!32294 (_ BitVec 32))) )
))
(declare-fun lt!330365 () SeekEntryResult!7481)

(declare-fun lt!330363 () SeekEntryResult!7481)

(assert (=> b!743661 (= res!500859 (= lt!330365 lt!330363))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!330371 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41528 0))(
  ( (array!41529 (arr!19874 (Array (_ BitVec 32) (_ BitVec 64))) (size!20295 (_ BitVec 32))) )
))
(declare-fun lt!330369 () array!41528)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41528 (_ BitVec 32)) SeekEntryResult!7481)

(assert (=> b!743661 (= lt!330363 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330371 lt!330369 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743661 (= lt!330365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330371 mask!3328) lt!330371 lt!330369 mask!3328))))

(declare-fun a!3186 () array!41528)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!743661 (= lt!330371 (select (store (arr!19874 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743661 (= lt!330369 (array!41529 (store (arr!19874 a!3186) i!1173 k!2102) (size!20295 a!3186)))))

(declare-fun b!743662 () Bool)

(declare-fun res!500866 () Bool)

(declare-fun e!415490 () Bool)

(assert (=> b!743662 (=> (not res!500866) (not e!415490))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743662 (= res!500866 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20295 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20295 a!3186))))))

(declare-fun b!743663 () Bool)

(declare-fun res!500861 () Bool)

(declare-fun e!415496 () Bool)

(assert (=> b!743663 (=> (not res!500861) (not e!415496))))

(assert (=> b!743663 (= res!500861 (and (= (size!20295 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20295 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20295 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743664 () Bool)

(declare-fun res!500867 () Bool)

(assert (=> b!743664 (=> (not res!500867) (not e!415496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743664 (= res!500867 (validKeyInArray!0 k!2102))))

(declare-fun b!743665 () Bool)

(declare-fun res!500870 () Bool)

(assert (=> b!743665 (=> (not res!500870) (not e!415489))))

(assert (=> b!743665 (= res!500870 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19874 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743666 () Bool)

(declare-fun e!415494 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41528 (_ BitVec 32)) SeekEntryResult!7481)

(assert (=> b!743666 (= e!415494 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19874 a!3186) j!159) a!3186 mask!3328) (Found!7481 j!159)))))

(declare-fun b!743667 () Bool)

(declare-fun e!415493 () Bool)

(assert (=> b!743667 (= e!415492 (not e!415493))))

(declare-fun res!500858 () Bool)

(assert (=> b!743667 (=> res!500858 e!415493)))

(assert (=> b!743667 (= res!500858 (or (not (is-Intermediate!7481 lt!330363)) (bvslt x!1131 (x!63280 lt!330363)) (not (= x!1131 (x!63280 lt!330363))) (not (= index!1321 (index!32293 lt!330363)))))))

(declare-fun e!415491 () Bool)

(assert (=> b!743667 e!415491))

(declare-fun res!500856 () Bool)

(assert (=> b!743667 (=> (not res!500856) (not e!415491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41528 (_ BitVec 32)) Bool)

(assert (=> b!743667 (= res!500856 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25442 0))(
  ( (Unit!25443) )
))
(declare-fun lt!330366 () Unit!25442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25442)

(assert (=> b!743667 (= lt!330366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743668 () Bool)

(declare-fun lt!330368 () SeekEntryResult!7481)

(assert (=> b!743668 (= e!415494 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19874 a!3186) j!159) a!3186 mask!3328) lt!330368))))

(declare-fun b!743669 () Bool)

(declare-fun res!500862 () Bool)

(assert (=> b!743669 (=> (not res!500862) (not e!415496))))

(assert (=> b!743669 (= res!500862 (validKeyInArray!0 (select (arr!19874 a!3186) j!159)))))

(declare-fun b!743670 () Bool)

(declare-fun e!415497 () Bool)

(declare-fun lt!330367 () SeekEntryResult!7481)

(assert (=> b!743670 (= e!415497 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19874 a!3186) j!159) a!3186 mask!3328) lt!330367))))

(declare-fun b!743672 () Bool)

(assert (=> b!743672 (= e!415490 e!415489)))

(declare-fun res!500868 () Bool)

(assert (=> b!743672 (=> (not res!500868) (not e!415489))))

(assert (=> b!743672 (= res!500868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19874 a!3186) j!159) mask!3328) (select (arr!19874 a!3186) j!159) a!3186 mask!3328) lt!330368))))

(assert (=> b!743672 (= lt!330368 (Intermediate!7481 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743673 () Bool)

(declare-fun res!500860 () Bool)

(assert (=> b!743673 (=> (not res!500860) (not e!415490))))

(declare-datatypes ((List!13929 0))(
  ( (Nil!13926) (Cons!13925 (h!14997 (_ BitVec 64)) (t!20252 List!13929)) )
))
(declare-fun arrayNoDuplicates!0 (array!41528 (_ BitVec 32) List!13929) Bool)

(assert (=> b!743673 (= res!500860 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13926))))

(declare-fun b!743674 () Bool)

(assert (=> b!743674 (= e!415496 e!415490)))

(declare-fun res!500864 () Bool)

(assert (=> b!743674 (=> (not res!500864) (not e!415490))))

(declare-fun lt!330370 () SeekEntryResult!7481)

(assert (=> b!743674 (= res!500864 (or (= lt!330370 (MissingZero!7481 i!1173)) (= lt!330370 (MissingVacant!7481 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41528 (_ BitVec 32)) SeekEntryResult!7481)

(assert (=> b!743674 (= lt!330370 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743675 () Bool)

(declare-fun res!500871 () Bool)

(assert (=> b!743675 (=> (not res!500871) (not e!415490))))

(assert (=> b!743675 (= res!500871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743676 () Bool)

(declare-fun res!500869 () Bool)

(assert (=> b!743676 (=> (not res!500869) (not e!415496))))

(declare-fun arrayContainsKey!0 (array!41528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743676 (= res!500869 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!500857 () Bool)

(assert (=> start!65402 (=> (not res!500857) (not e!415496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65402 (= res!500857 (validMask!0 mask!3328))))

(assert (=> start!65402 e!415496))

(assert (=> start!65402 true))

(declare-fun array_inv!15648 (array!41528) Bool)

(assert (=> start!65402 (array_inv!15648 a!3186)))

(declare-fun b!743671 () Bool)

(assert (=> b!743671 (= e!415493 true)))

(declare-fun lt!330364 () SeekEntryResult!7481)

(assert (=> b!743671 (= lt!330364 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19874 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!743677 () Bool)

(declare-fun res!500863 () Bool)

(assert (=> b!743677 (=> (not res!500863) (not e!415489))))

(assert (=> b!743677 (= res!500863 e!415494)))

(declare-fun c!81783 () Bool)

(assert (=> b!743677 (= c!81783 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743678 () Bool)

(assert (=> b!743678 (= e!415491 e!415497)))

(declare-fun res!500865 () Bool)

(assert (=> b!743678 (=> (not res!500865) (not e!415497))))

(assert (=> b!743678 (= res!500865 (= (seekEntryOrOpen!0 (select (arr!19874 a!3186) j!159) a!3186 mask!3328) lt!330367))))

(assert (=> b!743678 (= lt!330367 (Found!7481 j!159))))

(assert (= (and start!65402 res!500857) b!743663))

(assert (= (and b!743663 res!500861) b!743669))

(assert (= (and b!743669 res!500862) b!743664))

(assert (= (and b!743664 res!500867) b!743676))

(assert (= (and b!743676 res!500869) b!743674))

(assert (= (and b!743674 res!500864) b!743675))

(assert (= (and b!743675 res!500871) b!743673))

(assert (= (and b!743673 res!500860) b!743662))

(assert (= (and b!743662 res!500866) b!743672))

(assert (= (and b!743672 res!500868) b!743665))

(assert (= (and b!743665 res!500870) b!743677))

(assert (= (and b!743677 c!81783) b!743668))

(assert (= (and b!743677 (not c!81783)) b!743666))

(assert (= (and b!743677 res!500863) b!743661))

(assert (= (and b!743661 res!500859) b!743667))

(assert (= (and b!743667 res!500856) b!743678))

(assert (= (and b!743678 res!500865) b!743670))

(assert (= (and b!743667 (not res!500858)) b!743671))

(declare-fun m!694389 () Bool)

(assert (=> b!743671 m!694389))

(assert (=> b!743671 m!694389))

(declare-fun m!694391 () Bool)

(assert (=> b!743671 m!694391))

(declare-fun m!694393 () Bool)

(assert (=> b!743664 m!694393))

(assert (=> b!743672 m!694389))

(assert (=> b!743672 m!694389))

(declare-fun m!694395 () Bool)

(assert (=> b!743672 m!694395))

(assert (=> b!743672 m!694395))

(assert (=> b!743672 m!694389))

(declare-fun m!694397 () Bool)

(assert (=> b!743672 m!694397))

(declare-fun m!694399 () Bool)

(assert (=> b!743674 m!694399))

(assert (=> b!743666 m!694389))

(assert (=> b!743666 m!694389))

(assert (=> b!743666 m!694391))

(assert (=> b!743669 m!694389))

(assert (=> b!743669 m!694389))

(declare-fun m!694401 () Bool)

(assert (=> b!743669 m!694401))

(declare-fun m!694403 () Bool)

(assert (=> b!743665 m!694403))

(declare-fun m!694405 () Bool)

(assert (=> b!743673 m!694405))

(declare-fun m!694407 () Bool)

(assert (=> start!65402 m!694407))

(declare-fun m!694409 () Bool)

(assert (=> start!65402 m!694409))

(declare-fun m!694411 () Bool)

(assert (=> b!743675 m!694411))

(assert (=> b!743668 m!694389))

(assert (=> b!743668 m!694389))

(declare-fun m!694413 () Bool)

(assert (=> b!743668 m!694413))

(declare-fun m!694415 () Bool)

(assert (=> b!743661 m!694415))

(declare-fun m!694417 () Bool)

(assert (=> b!743661 m!694417))

(declare-fun m!694419 () Bool)

(assert (=> b!743661 m!694419))

(assert (=> b!743661 m!694415))

(declare-fun m!694421 () Bool)

(assert (=> b!743661 m!694421))

(declare-fun m!694423 () Bool)

(assert (=> b!743661 m!694423))

(declare-fun m!694425 () Bool)

(assert (=> b!743676 m!694425))

(assert (=> b!743678 m!694389))

(assert (=> b!743678 m!694389))

(declare-fun m!694427 () Bool)

(assert (=> b!743678 m!694427))

(declare-fun m!694429 () Bool)

(assert (=> b!743667 m!694429))

(declare-fun m!694431 () Bool)

(assert (=> b!743667 m!694431))

(assert (=> b!743670 m!694389))

(assert (=> b!743670 m!694389))

(declare-fun m!694433 () Bool)

(assert (=> b!743670 m!694433))

(push 1)

