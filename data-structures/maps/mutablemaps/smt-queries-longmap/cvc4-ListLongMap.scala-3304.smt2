; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45782 () Bool)

(assert start!45782)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!296359 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!32498 0))(
  ( (array!32499 (arr!15626 (Array (_ BitVec 32) (_ BitVec 64))) (size!15990 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32498)

(declare-fun b!506326 () Bool)

(declare-datatypes ((SeekEntryResult!4100 0))(
  ( (MissingZero!4100 (index!18588 (_ BitVec 32))) (Found!4100 (index!18589 (_ BitVec 32))) (Intermediate!4100 (undefined!4912 Bool) (index!18590 (_ BitVec 32)) (x!47616 (_ BitVec 32))) (Undefined!4100) (MissingVacant!4100 (index!18591 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32498 (_ BitVec 32)) SeekEntryResult!4100)

(assert (=> b!506326 (= e!296359 (= (seekEntryOrOpen!0 (select (arr!15626 a!3235) j!176) a!3235 mask!3524) (Found!4100 j!176)))))

(declare-fun b!506327 () Bool)

(declare-fun e!296354 () Bool)

(declare-fun e!296355 () Bool)

(assert (=> b!506327 (= e!296354 e!296355)))

(declare-fun res!307439 () Bool)

(assert (=> b!506327 (=> res!307439 e!296355)))

(declare-fun lt!231100 () Bool)

(declare-fun lt!231099 () SeekEntryResult!4100)

(assert (=> b!506327 (= res!307439 (or (and (not lt!231100) (undefined!4912 lt!231099)) (and (not lt!231100) (not (undefined!4912 lt!231099)))))))

(assert (=> b!506327 (= lt!231100 (not (is-Intermediate!4100 lt!231099)))))

(declare-fun res!307441 () Bool)

(declare-fun e!296357 () Bool)

(assert (=> start!45782 (=> (not res!307441) (not e!296357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45782 (= res!307441 (validMask!0 mask!3524))))

(assert (=> start!45782 e!296357))

(assert (=> start!45782 true))

(declare-fun array_inv!11400 (array!32498) Bool)

(assert (=> start!45782 (array_inv!11400 a!3235)))

(declare-fun b!506328 () Bool)

(declare-fun res!307445 () Bool)

(assert (=> b!506328 (=> (not res!307445) (not e!296357))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506328 (= res!307445 (validKeyInArray!0 k!2280))))

(declare-fun b!506329 () Bool)

(declare-fun e!296358 () Bool)

(assert (=> b!506329 (= e!296357 e!296358)))

(declare-fun res!307436 () Bool)

(assert (=> b!506329 (=> (not res!307436) (not e!296358))))

(declare-fun lt!231104 () SeekEntryResult!4100)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506329 (= res!307436 (or (= lt!231104 (MissingZero!4100 i!1204)) (= lt!231104 (MissingVacant!4100 i!1204))))))

(assert (=> b!506329 (= lt!231104 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506330 () Bool)

(declare-fun res!307444 () Bool)

(assert (=> b!506330 (=> (not res!307444) (not e!296358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32498 (_ BitVec 32)) Bool)

(assert (=> b!506330 (= res!307444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506331 () Bool)

(declare-fun res!307443 () Bool)

(assert (=> b!506331 (=> (not res!307443) (not e!296357))))

(assert (=> b!506331 (= res!307443 (validKeyInArray!0 (select (arr!15626 a!3235) j!176)))))

(declare-fun b!506332 () Bool)

(declare-fun res!307438 () Bool)

(assert (=> b!506332 (=> (not res!307438) (not e!296357))))

(assert (=> b!506332 (= res!307438 (and (= (size!15990 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15990 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15990 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506333 () Bool)

(assert (=> b!506333 (= e!296355 true)))

(assert (=> b!506333 false))

(declare-fun b!506334 () Bool)

(declare-fun res!307442 () Bool)

(assert (=> b!506334 (=> (not res!307442) (not e!296358))))

(declare-datatypes ((List!9837 0))(
  ( (Nil!9834) (Cons!9833 (h!10710 (_ BitVec 64)) (t!16073 List!9837)) )
))
(declare-fun arrayNoDuplicates!0 (array!32498 (_ BitVec 32) List!9837) Bool)

(assert (=> b!506334 (= res!307442 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9834))))

(declare-fun b!506335 () Bool)

(assert (=> b!506335 (= e!296358 (not e!296354))))

(declare-fun res!307437 () Bool)

(assert (=> b!506335 (=> res!307437 e!296354)))

(declare-fun lt!231103 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32498 (_ BitVec 32)) SeekEntryResult!4100)

(assert (=> b!506335 (= res!307437 (= lt!231099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231103 (select (store (arr!15626 a!3235) i!1204 k!2280) j!176) (array!32499 (store (arr!15626 a!3235) i!1204 k!2280) (size!15990 a!3235)) mask!3524)))))

(declare-fun lt!231101 () (_ BitVec 32))

(assert (=> b!506335 (= lt!231099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231101 (select (arr!15626 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506335 (= lt!231103 (toIndex!0 (select (store (arr!15626 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506335 (= lt!231101 (toIndex!0 (select (arr!15626 a!3235) j!176) mask!3524))))

(assert (=> b!506335 e!296359))

(declare-fun res!307440 () Bool)

(assert (=> b!506335 (=> (not res!307440) (not e!296359))))

(assert (=> b!506335 (= res!307440 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15480 0))(
  ( (Unit!15481) )
))
(declare-fun lt!231102 () Unit!15480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15480)

(assert (=> b!506335 (= lt!231102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506336 () Bool)

(declare-fun res!307435 () Bool)

(assert (=> b!506336 (=> (not res!307435) (not e!296357))))

(declare-fun arrayContainsKey!0 (array!32498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506336 (= res!307435 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45782 res!307441) b!506332))

(assert (= (and b!506332 res!307438) b!506331))

(assert (= (and b!506331 res!307443) b!506328))

(assert (= (and b!506328 res!307445) b!506336))

(assert (= (and b!506336 res!307435) b!506329))

(assert (= (and b!506329 res!307436) b!506330))

(assert (= (and b!506330 res!307444) b!506334))

(assert (= (and b!506334 res!307442) b!506335))

(assert (= (and b!506335 res!307440) b!506326))

(assert (= (and b!506335 (not res!307437)) b!506327))

(assert (= (and b!506327 (not res!307439)) b!506333))

(declare-fun m!487033 () Bool)

(assert (=> b!506335 m!487033))

(declare-fun m!487035 () Bool)

(assert (=> b!506335 m!487035))

(declare-fun m!487037 () Bool)

(assert (=> b!506335 m!487037))

(declare-fun m!487039 () Bool)

(assert (=> b!506335 m!487039))

(declare-fun m!487041 () Bool)

(assert (=> b!506335 m!487041))

(assert (=> b!506335 m!487037))

(declare-fun m!487043 () Bool)

(assert (=> b!506335 m!487043))

(assert (=> b!506335 m!487039))

(declare-fun m!487045 () Bool)

(assert (=> b!506335 m!487045))

(assert (=> b!506335 m!487039))

(declare-fun m!487047 () Bool)

(assert (=> b!506335 m!487047))

(assert (=> b!506335 m!487037))

(declare-fun m!487049 () Bool)

(assert (=> b!506335 m!487049))

(declare-fun m!487051 () Bool)

(assert (=> b!506328 m!487051))

(declare-fun m!487053 () Bool)

(assert (=> b!506330 m!487053))

(declare-fun m!487055 () Bool)

(assert (=> start!45782 m!487055))

(declare-fun m!487057 () Bool)

(assert (=> start!45782 m!487057))

(declare-fun m!487059 () Bool)

(assert (=> b!506336 m!487059))

(assert (=> b!506331 m!487039))

(assert (=> b!506331 m!487039))

(declare-fun m!487061 () Bool)

(assert (=> b!506331 m!487061))

(assert (=> b!506326 m!487039))

(assert (=> b!506326 m!487039))

(declare-fun m!487063 () Bool)

(assert (=> b!506326 m!487063))

(declare-fun m!487065 () Bool)

(assert (=> b!506334 m!487065))

(declare-fun m!487067 () Bool)

(assert (=> b!506329 m!487067))

(push 1)

(assert (not b!506329))

(assert (not b!506334))

(assert (not b!506328))

(assert (not b!506335))

(assert (not b!506336))

(assert (not start!45782))

(assert (not b!506326))

(assert (not b!506331))

(assert (not b!506330))

(check-sat)

