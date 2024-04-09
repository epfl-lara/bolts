; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45680 () Bool)

(assert start!45680)

(declare-fun b!503818 () Bool)

(declare-fun e!295025 () Bool)

(assert (=> b!503818 (= e!295025 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32396 0))(
  ( (array!32397 (arr!15575 (Array (_ BitVec 32) (_ BitVec 64))) (size!15939 (_ BitVec 32))) )
))
(declare-fun lt!229357 () array!32396)

(declare-fun lt!229361 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4049 0))(
  ( (MissingZero!4049 (index!18384 (_ BitVec 32))) (Found!4049 (index!18385 (_ BitVec 32))) (Intermediate!4049 (undefined!4861 Bool) (index!18386 (_ BitVec 32)) (x!47429 (_ BitVec 32))) (Undefined!4049) (MissingVacant!4049 (index!18387 (_ BitVec 32))) )
))
(declare-fun lt!229359 () SeekEntryResult!4049)

(declare-fun lt!229360 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32396 (_ BitVec 32)) SeekEntryResult!4049)

(assert (=> b!503818 (= lt!229359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229360 lt!229361 lt!229357 mask!3524))))

(declare-fun b!503820 () Bool)

(declare-datatypes ((Unit!15286 0))(
  ( (Unit!15287) )
))
(declare-fun e!295026 () Unit!15286)

(declare-fun Unit!15288 () Unit!15286)

(assert (=> b!503820 (= e!295026 Unit!15288)))

(declare-fun b!503821 () Bool)

(declare-fun e!295027 () Bool)

(declare-fun e!295019 () Bool)

(assert (=> b!503821 (= e!295027 e!295019)))

(declare-fun res!305204 () Bool)

(assert (=> b!503821 (=> (not res!305204) (not e!295019))))

(declare-fun lt!229363 () SeekEntryResult!4049)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503821 (= res!305204 (or (= lt!229363 (MissingZero!4049 i!1204)) (= lt!229363 (MissingVacant!4049 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun a!3235 () array!32396)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32396 (_ BitVec 32)) SeekEntryResult!4049)

(assert (=> b!503821 (= lt!229363 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503822 () Bool)

(declare-fun res!305213 () Bool)

(assert (=> b!503822 (=> (not res!305213) (not e!295027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503822 (= res!305213 (validKeyInArray!0 k!2280))))

(declare-fun b!503823 () Bool)

(declare-fun res!305209 () Bool)

(assert (=> b!503823 (=> (not res!305209) (not e!295027))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503823 (= res!305209 (validKeyInArray!0 (select (arr!15575 a!3235) j!176)))))

(declare-fun b!503824 () Bool)

(declare-fun res!305205 () Bool)

(assert (=> b!503824 (=> (not res!305205) (not e!295019))))

(declare-datatypes ((List!9786 0))(
  ( (Nil!9783) (Cons!9782 (h!10659 (_ BitVec 64)) (t!16022 List!9786)) )
))
(declare-fun arrayNoDuplicates!0 (array!32396 (_ BitVec 32) List!9786) Bool)

(assert (=> b!503824 (= res!305205 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9783))))

(declare-fun lt!229364 () SeekEntryResult!4049)

(declare-fun b!503825 () Bool)

(declare-fun e!295024 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32396 (_ BitVec 32)) SeekEntryResult!4049)

(assert (=> b!503825 (= e!295024 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229360 (index!18386 lt!229364) (select (arr!15575 a!3235) j!176) a!3235 mask!3524) (Found!4049 j!176))))))

(declare-fun res!305210 () Bool)

(assert (=> start!45680 (=> (not res!305210) (not e!295027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45680 (= res!305210 (validMask!0 mask!3524))))

(assert (=> start!45680 e!295027))

(assert (=> start!45680 true))

(declare-fun array_inv!11349 (array!32396) Bool)

(assert (=> start!45680 (array_inv!11349 a!3235)))

(declare-fun b!503819 () Bool)

(declare-fun e!295020 () Bool)

(assert (=> b!503819 (= e!295020 (= (seekEntryOrOpen!0 (select (arr!15575 a!3235) j!176) a!3235 mask!3524) (Found!4049 j!176)))))

(declare-fun b!503826 () Bool)

(declare-fun res!305199 () Bool)

(assert (=> b!503826 (=> (not res!305199) (not e!295027))))

(declare-fun arrayContainsKey!0 (array!32396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503826 (= res!305199 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503827 () Bool)

(declare-fun e!295023 () Bool)

(assert (=> b!503827 (= e!295023 e!295025)))

(declare-fun res!305212 () Bool)

(assert (=> b!503827 (=> res!305212 e!295025)))

(assert (=> b!503827 (= res!305212 (or (bvsgt (x!47429 lt!229364) #b01111111111111111111111111111110) (bvslt lt!229360 #b00000000000000000000000000000000) (bvsge lt!229360 (size!15939 a!3235)) (bvslt (index!18386 lt!229364) #b00000000000000000000000000000000) (bvsge (index!18386 lt!229364) (size!15939 a!3235)) (not (= lt!229364 (Intermediate!4049 false (index!18386 lt!229364) (x!47429 lt!229364))))))))

(assert (=> b!503827 (= (index!18386 lt!229364) i!1204)))

(declare-fun lt!229358 () Unit!15286)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32396 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15286)

(assert (=> b!503827 (= lt!229358 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229360 #b00000000000000000000000000000000 (index!18386 lt!229364) (x!47429 lt!229364) mask!3524))))

(assert (=> b!503827 (and (or (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229362 () Unit!15286)

(assert (=> b!503827 (= lt!229362 e!295026)))

(declare-fun c!59588 () Bool)

(assert (=> b!503827 (= c!59588 (= (select (arr!15575 a!3235) (index!18386 lt!229364)) (select (arr!15575 a!3235) j!176)))))

(assert (=> b!503827 (and (bvslt (x!47429 lt!229364) #b01111111111111111111111111111110) (or (= (select (arr!15575 a!3235) (index!18386 lt!229364)) (select (arr!15575 a!3235) j!176)) (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15575 a!3235) (index!18386 lt!229364)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503828 () Bool)

(declare-fun res!305208 () Bool)

(assert (=> b!503828 (=> res!305208 e!295023)))

(assert (=> b!503828 (= res!305208 (or (undefined!4861 lt!229364) (not (is-Intermediate!4049 lt!229364))))))

(declare-fun b!503829 () Bool)

(declare-fun e!295021 () Bool)

(assert (=> b!503829 (= e!295021 false)))

(declare-fun b!503830 () Bool)

(declare-fun res!305201 () Bool)

(assert (=> b!503830 (=> (not res!305201) (not e!295019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32396 (_ BitVec 32)) Bool)

(assert (=> b!503830 (= res!305201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503831 () Bool)

(declare-fun res!305211 () Bool)

(assert (=> b!503831 (=> (not res!305211) (not e!295027))))

(assert (=> b!503831 (= res!305211 (and (= (size!15939 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15939 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15939 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503832 () Bool)

(assert (=> b!503832 (= e!295019 (not e!295023))))

(declare-fun res!305206 () Bool)

(assert (=> b!503832 (=> res!305206 e!295023)))

(declare-fun lt!229366 () (_ BitVec 32))

(assert (=> b!503832 (= res!305206 (= lt!229364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229366 lt!229361 lt!229357 mask!3524)))))

(assert (=> b!503832 (= lt!229364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229360 (select (arr!15575 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503832 (= lt!229366 (toIndex!0 lt!229361 mask!3524))))

(assert (=> b!503832 (= lt!229361 (select (store (arr!15575 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503832 (= lt!229360 (toIndex!0 (select (arr!15575 a!3235) j!176) mask!3524))))

(assert (=> b!503832 (= lt!229357 (array!32397 (store (arr!15575 a!3235) i!1204 k!2280) (size!15939 a!3235)))))

(assert (=> b!503832 e!295020))

(declare-fun res!305203 () Bool)

(assert (=> b!503832 (=> (not res!305203) (not e!295020))))

(assert (=> b!503832 (= res!305203 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229365 () Unit!15286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32396 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15286)

(assert (=> b!503832 (= lt!229365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503833 () Bool)

(declare-fun Unit!15289 () Unit!15286)

(assert (=> b!503833 (= e!295026 Unit!15289)))

(declare-fun lt!229367 () Unit!15286)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32396 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15286)

(assert (=> b!503833 (= lt!229367 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229360 #b00000000000000000000000000000000 (index!18386 lt!229364) (x!47429 lt!229364) mask!3524))))

(declare-fun res!305207 () Bool)

(assert (=> b!503833 (= res!305207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229360 lt!229361 lt!229357 mask!3524) (Intermediate!4049 false (index!18386 lt!229364) (x!47429 lt!229364))))))

(assert (=> b!503833 (=> (not res!305207) (not e!295021))))

(assert (=> b!503833 e!295021))

(declare-fun b!503834 () Bool)

(declare-fun res!305200 () Bool)

(assert (=> b!503834 (=> res!305200 e!295025)))

(assert (=> b!503834 (= res!305200 e!295024)))

(declare-fun res!305202 () Bool)

(assert (=> b!503834 (=> (not res!305202) (not e!295024))))

(assert (=> b!503834 (= res!305202 (bvsgt #b00000000000000000000000000000000 (x!47429 lt!229364)))))

(assert (= (and start!45680 res!305210) b!503831))

(assert (= (and b!503831 res!305211) b!503823))

(assert (= (and b!503823 res!305209) b!503822))

(assert (= (and b!503822 res!305213) b!503826))

(assert (= (and b!503826 res!305199) b!503821))

(assert (= (and b!503821 res!305204) b!503830))

(assert (= (and b!503830 res!305201) b!503824))

(assert (= (and b!503824 res!305205) b!503832))

(assert (= (and b!503832 res!305203) b!503819))

(assert (= (and b!503832 (not res!305206)) b!503828))

(assert (= (and b!503828 (not res!305208)) b!503827))

(assert (= (and b!503827 c!59588) b!503833))

(assert (= (and b!503827 (not c!59588)) b!503820))

(assert (= (and b!503833 res!305207) b!503829))

(assert (= (and b!503827 (not res!305212)) b!503834))

(assert (= (and b!503834 res!305202) b!503825))

(assert (= (and b!503834 (not res!305200)) b!503818))

(declare-fun m!484635 () Bool)

(assert (=> b!503819 m!484635))

(assert (=> b!503819 m!484635))

(declare-fun m!484637 () Bool)

(assert (=> b!503819 m!484637))

(assert (=> b!503832 m!484635))

(declare-fun m!484639 () Bool)

(assert (=> b!503832 m!484639))

(declare-fun m!484641 () Bool)

(assert (=> b!503832 m!484641))

(declare-fun m!484643 () Bool)

(assert (=> b!503832 m!484643))

(assert (=> b!503832 m!484635))

(declare-fun m!484645 () Bool)

(assert (=> b!503832 m!484645))

(assert (=> b!503832 m!484635))

(declare-fun m!484647 () Bool)

(assert (=> b!503832 m!484647))

(declare-fun m!484649 () Bool)

(assert (=> b!503832 m!484649))

(declare-fun m!484651 () Bool)

(assert (=> b!503832 m!484651))

(declare-fun m!484653 () Bool)

(assert (=> b!503832 m!484653))

(declare-fun m!484655 () Bool)

(assert (=> b!503826 m!484655))

(declare-fun m!484657 () Bool)

(assert (=> b!503830 m!484657))

(declare-fun m!484659 () Bool)

(assert (=> b!503821 m!484659))

(declare-fun m!484661 () Bool)

(assert (=> b!503822 m!484661))

(assert (=> b!503825 m!484635))

(assert (=> b!503825 m!484635))

(declare-fun m!484663 () Bool)

(assert (=> b!503825 m!484663))

(declare-fun m!484665 () Bool)

(assert (=> b!503833 m!484665))

(declare-fun m!484667 () Bool)

(assert (=> b!503833 m!484667))

(assert (=> b!503823 m!484635))

(assert (=> b!503823 m!484635))

(declare-fun m!484669 () Bool)

(assert (=> b!503823 m!484669))

(declare-fun m!484671 () Bool)

(assert (=> b!503827 m!484671))

(declare-fun m!484673 () Bool)

(assert (=> b!503827 m!484673))

(assert (=> b!503827 m!484635))

(assert (=> b!503818 m!484667))

(declare-fun m!484675 () Bool)

(assert (=> b!503824 m!484675))

(declare-fun m!484677 () Bool)

(assert (=> start!45680 m!484677))

(declare-fun m!484679 () Bool)

(assert (=> start!45680 m!484679))

(push 1)

