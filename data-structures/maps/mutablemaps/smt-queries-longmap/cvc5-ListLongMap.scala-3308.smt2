; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45802 () Bool)

(assert start!45802)

(declare-fun b!506656 () Bool)

(declare-fun res!307771 () Bool)

(declare-fun e!296537 () Bool)

(assert (=> b!506656 (=> (not res!307771) (not e!296537))))

(declare-datatypes ((array!32518 0))(
  ( (array!32519 (arr!15636 (Array (_ BitVec 32) (_ BitVec 64))) (size!16000 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32518)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506656 (= res!307771 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506657 () Bool)

(declare-fun res!307775 () Bool)

(assert (=> b!506657 (=> (not res!307775) (not e!296537))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506657 (= res!307775 (and (= (size!16000 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16000 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16000 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506658 () Bool)

(declare-fun res!307773 () Bool)

(declare-fun e!296536 () Bool)

(assert (=> b!506658 (=> (not res!307773) (not e!296536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32518 (_ BitVec 32)) Bool)

(assert (=> b!506658 (= res!307773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506659 () Bool)

(declare-fun e!296538 () Bool)

(declare-fun e!296534 () Bool)

(assert (=> b!506659 (= e!296538 e!296534)))

(declare-fun res!307768 () Bool)

(assert (=> b!506659 (=> res!307768 e!296534)))

(declare-fun lt!231283 () Bool)

(declare-datatypes ((SeekEntryResult!4110 0))(
  ( (MissingZero!4110 (index!18628 (_ BitVec 32))) (Found!4110 (index!18629 (_ BitVec 32))) (Intermediate!4110 (undefined!4922 Bool) (index!18630 (_ BitVec 32)) (x!47658 (_ BitVec 32))) (Undefined!4110) (MissingVacant!4110 (index!18631 (_ BitVec 32))) )
))
(declare-fun lt!231280 () SeekEntryResult!4110)

(assert (=> b!506659 (= res!307768 (or (and (not lt!231283) (undefined!4922 lt!231280)) (and (not lt!231283) (not (undefined!4922 lt!231280)))))))

(assert (=> b!506659 (= lt!231283 (not (is-Intermediate!4110 lt!231280)))))

(declare-fun b!506660 () Bool)

(assert (=> b!506660 (= e!296536 (not e!296538))))

(declare-fun res!307774 () Bool)

(assert (=> b!506660 (=> res!307774 e!296538)))

(declare-fun lt!231279 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32518 (_ BitVec 32)) SeekEntryResult!4110)

(assert (=> b!506660 (= res!307774 (= lt!231280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231279 (select (store (arr!15636 a!3235) i!1204 k!2280) j!176) (array!32519 (store (arr!15636 a!3235) i!1204 k!2280) (size!16000 a!3235)) mask!3524)))))

(declare-fun lt!231284 () (_ BitVec 32))

(assert (=> b!506660 (= lt!231280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231284 (select (arr!15636 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506660 (= lt!231279 (toIndex!0 (select (store (arr!15636 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506660 (= lt!231284 (toIndex!0 (select (arr!15636 a!3235) j!176) mask!3524))))

(declare-fun e!296539 () Bool)

(assert (=> b!506660 e!296539))

(declare-fun res!307766 () Bool)

(assert (=> b!506660 (=> (not res!307766) (not e!296539))))

(assert (=> b!506660 (= res!307766 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15500 0))(
  ( (Unit!15501) )
))
(declare-fun lt!231282 () Unit!15500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15500)

(assert (=> b!506660 (= lt!231282 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506661 () Bool)

(assert (=> b!506661 (= e!296534 true)))

(assert (=> b!506661 false))

(declare-fun b!506662 () Bool)

(declare-fun res!307770 () Bool)

(assert (=> b!506662 (=> (not res!307770) (not e!296536))))

(declare-datatypes ((List!9847 0))(
  ( (Nil!9844) (Cons!9843 (h!10720 (_ BitVec 64)) (t!16083 List!9847)) )
))
(declare-fun arrayNoDuplicates!0 (array!32518 (_ BitVec 32) List!9847) Bool)

(assert (=> b!506662 (= res!307770 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9844))))

(declare-fun res!307772 () Bool)

(assert (=> start!45802 (=> (not res!307772) (not e!296537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45802 (= res!307772 (validMask!0 mask!3524))))

(assert (=> start!45802 e!296537))

(assert (=> start!45802 true))

(declare-fun array_inv!11410 (array!32518) Bool)

(assert (=> start!45802 (array_inv!11410 a!3235)))

(declare-fun b!506663 () Bool)

(assert (=> b!506663 (= e!296537 e!296536)))

(declare-fun res!307767 () Bool)

(assert (=> b!506663 (=> (not res!307767) (not e!296536))))

(declare-fun lt!231281 () SeekEntryResult!4110)

(assert (=> b!506663 (= res!307767 (or (= lt!231281 (MissingZero!4110 i!1204)) (= lt!231281 (MissingVacant!4110 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32518 (_ BitVec 32)) SeekEntryResult!4110)

(assert (=> b!506663 (= lt!231281 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506664 () Bool)

(declare-fun res!307769 () Bool)

(assert (=> b!506664 (=> (not res!307769) (not e!296537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506664 (= res!307769 (validKeyInArray!0 (select (arr!15636 a!3235) j!176)))))

(declare-fun b!506665 () Bool)

(assert (=> b!506665 (= e!296539 (= (seekEntryOrOpen!0 (select (arr!15636 a!3235) j!176) a!3235 mask!3524) (Found!4110 j!176)))))

(declare-fun b!506666 () Bool)

(declare-fun res!307765 () Bool)

(assert (=> b!506666 (=> (not res!307765) (not e!296537))))

(assert (=> b!506666 (= res!307765 (validKeyInArray!0 k!2280))))

(assert (= (and start!45802 res!307772) b!506657))

(assert (= (and b!506657 res!307775) b!506664))

(assert (= (and b!506664 res!307769) b!506666))

(assert (= (and b!506666 res!307765) b!506656))

(assert (= (and b!506656 res!307771) b!506663))

(assert (= (and b!506663 res!307767) b!506658))

(assert (= (and b!506658 res!307773) b!506662))

(assert (= (and b!506662 res!307770) b!506660))

(assert (= (and b!506660 res!307766) b!506665))

(assert (= (and b!506660 (not res!307774)) b!506659))

(assert (= (and b!506659 (not res!307768)) b!506661))

(declare-fun m!487393 () Bool)

(assert (=> b!506656 m!487393))

(declare-fun m!487395 () Bool)

(assert (=> b!506662 m!487395))

(declare-fun m!487397 () Bool)

(assert (=> b!506665 m!487397))

(assert (=> b!506665 m!487397))

(declare-fun m!487399 () Bool)

(assert (=> b!506665 m!487399))

(assert (=> b!506664 m!487397))

(assert (=> b!506664 m!487397))

(declare-fun m!487401 () Bool)

(assert (=> b!506664 m!487401))

(declare-fun m!487403 () Bool)

(assert (=> start!45802 m!487403))

(declare-fun m!487405 () Bool)

(assert (=> start!45802 m!487405))

(declare-fun m!487407 () Bool)

(assert (=> b!506663 m!487407))

(assert (=> b!506660 m!487397))

(declare-fun m!487409 () Bool)

(assert (=> b!506660 m!487409))

(declare-fun m!487411 () Bool)

(assert (=> b!506660 m!487411))

(declare-fun m!487413 () Bool)

(assert (=> b!506660 m!487413))

(assert (=> b!506660 m!487397))

(declare-fun m!487415 () Bool)

(assert (=> b!506660 m!487415))

(assert (=> b!506660 m!487397))

(declare-fun m!487417 () Bool)

(assert (=> b!506660 m!487417))

(declare-fun m!487419 () Bool)

(assert (=> b!506660 m!487419))

(declare-fun m!487421 () Bool)

(assert (=> b!506660 m!487421))

(assert (=> b!506660 m!487419))

(declare-fun m!487423 () Bool)

(assert (=> b!506660 m!487423))

(assert (=> b!506660 m!487419))

(declare-fun m!487425 () Bool)

(assert (=> b!506658 m!487425))

(declare-fun m!487427 () Bool)

(assert (=> b!506666 m!487427))

(push 1)

