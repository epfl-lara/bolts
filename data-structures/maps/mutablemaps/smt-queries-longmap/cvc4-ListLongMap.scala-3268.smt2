; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45494 () Bool)

(assert start!45494)

(declare-fun b!500658 () Bool)

(declare-fun e!293321 () Bool)

(declare-fun e!293320 () Bool)

(assert (=> b!500658 (= e!293321 e!293320)))

(declare-fun res!302586 () Bool)

(assert (=> b!500658 (=> (not res!302586) (not e!293320))))

(declare-datatypes ((SeekEntryResult!3992 0))(
  ( (MissingZero!3992 (index!18150 (_ BitVec 32))) (Found!3992 (index!18151 (_ BitVec 32))) (Intermediate!3992 (undefined!4804 Bool) (index!18152 (_ BitVec 32)) (x!47208 (_ BitVec 32))) (Undefined!3992) (MissingVacant!3992 (index!18153 (_ BitVec 32))) )
))
(declare-fun lt!227358 () SeekEntryResult!3992)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500658 (= res!302586 (or (= lt!227358 (MissingZero!3992 i!1204)) (= lt!227358 (MissingVacant!3992 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32279 0))(
  ( (array!32280 (arr!15518 (Array (_ BitVec 32) (_ BitVec 64))) (size!15882 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32279)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32279 (_ BitVec 32)) SeekEntryResult!3992)

(assert (=> b!500658 (= lt!227358 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500659 () Bool)

(declare-fun res!302591 () Bool)

(assert (=> b!500659 (=> (not res!302591) (not e!293320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32279 (_ BitVec 32)) Bool)

(assert (=> b!500659 (= res!302591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500660 () Bool)

(declare-fun res!302592 () Bool)

(assert (=> b!500660 (=> (not res!302592) (not e!293320))))

(declare-datatypes ((List!9729 0))(
  ( (Nil!9726) (Cons!9725 (h!10599 (_ BitVec 64)) (t!15965 List!9729)) )
))
(declare-fun arrayNoDuplicates!0 (array!32279 (_ BitVec 32) List!9729) Bool)

(assert (=> b!500660 (= res!302592 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9726))))

(declare-fun b!500661 () Bool)

(declare-fun res!302594 () Bool)

(declare-fun e!293323 () Bool)

(assert (=> b!500661 (=> res!302594 e!293323)))

(declare-fun lt!227352 () SeekEntryResult!3992)

(assert (=> b!500661 (= res!302594 (or (undefined!4804 lt!227352) (not (is-Intermediate!3992 lt!227352))))))

(declare-fun b!500662 () Bool)

(declare-fun e!293317 () Bool)

(assert (=> b!500662 (= e!293317 false)))

(declare-fun b!500663 () Bool)

(declare-fun e!293318 () Bool)

(assert (=> b!500663 (= e!293323 e!293318)))

(declare-fun res!302587 () Bool)

(assert (=> b!500663 (=> res!302587 e!293318)))

(declare-fun lt!227351 () (_ BitVec 32))

(assert (=> b!500663 (= res!302587 (or (bvsgt #b00000000000000000000000000000000 (x!47208 lt!227352)) (bvsgt (x!47208 lt!227352) #b01111111111111111111111111111110) (bvslt lt!227351 #b00000000000000000000000000000000) (bvsge lt!227351 (size!15882 a!3235)) (bvslt (index!18152 lt!227352) #b00000000000000000000000000000000) (bvsge (index!18152 lt!227352) (size!15882 a!3235)) (not (= lt!227352 (Intermediate!3992 false (index!18152 lt!227352) (x!47208 lt!227352))))))))

(assert (=> b!500663 (and (or (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!15058 0))(
  ( (Unit!15059) )
))
(declare-fun lt!227355 () Unit!15058)

(declare-fun e!293322 () Unit!15058)

(assert (=> b!500663 (= lt!227355 e!293322)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59315 () Bool)

(assert (=> b!500663 (= c!59315 (= (select (arr!15518 a!3235) (index!18152 lt!227352)) (select (arr!15518 a!3235) j!176)))))

(assert (=> b!500663 (and (bvslt (x!47208 lt!227352) #b01111111111111111111111111111110) (or (= (select (arr!15518 a!3235) (index!18152 lt!227352)) (select (arr!15518 a!3235) j!176)) (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15518 a!3235) (index!18152 lt!227352)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500664 () Bool)

(declare-fun res!302582 () Bool)

(assert (=> b!500664 (=> (not res!302582) (not e!293321))))

(assert (=> b!500664 (= res!302582 (and (= (size!15882 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15882 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15882 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500665 () Bool)

(declare-fun Unit!15060 () Unit!15058)

(assert (=> b!500665 (= e!293322 Unit!15060)))

(declare-fun lt!227357 () Unit!15058)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32279 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15058)

(assert (=> b!500665 (= lt!227357 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227351 #b00000000000000000000000000000000 (index!18152 lt!227352) (x!47208 lt!227352) mask!3524))))

(declare-fun lt!227359 () array!32279)

(declare-fun lt!227354 () (_ BitVec 64))

(declare-fun res!302589 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32279 (_ BitVec 32)) SeekEntryResult!3992)

(assert (=> b!500665 (= res!302589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227351 lt!227354 lt!227359 mask!3524) (Intermediate!3992 false (index!18152 lt!227352) (x!47208 lt!227352))))))

(assert (=> b!500665 (=> (not res!302589) (not e!293317))))

(assert (=> b!500665 e!293317))

(declare-fun b!500666 () Bool)

(assert (=> b!500666 (= e!293320 (not e!293323))))

(declare-fun res!302584 () Bool)

(assert (=> b!500666 (=> res!302584 e!293323)))

(declare-fun lt!227360 () (_ BitVec 32))

(assert (=> b!500666 (= res!302584 (= lt!227352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227360 lt!227354 lt!227359 mask!3524)))))

(assert (=> b!500666 (= lt!227352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227351 (select (arr!15518 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500666 (= lt!227360 (toIndex!0 lt!227354 mask!3524))))

(assert (=> b!500666 (= lt!227354 (select (store (arr!15518 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500666 (= lt!227351 (toIndex!0 (select (arr!15518 a!3235) j!176) mask!3524))))

(assert (=> b!500666 (= lt!227359 (array!32280 (store (arr!15518 a!3235) i!1204 k!2280) (size!15882 a!3235)))))

(declare-fun e!293316 () Bool)

(assert (=> b!500666 e!293316))

(declare-fun res!302585 () Bool)

(assert (=> b!500666 (=> (not res!302585) (not e!293316))))

(assert (=> b!500666 (= res!302585 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227353 () Unit!15058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15058)

(assert (=> b!500666 (= lt!227353 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!302593 () Bool)

(assert (=> start!45494 (=> (not res!302593) (not e!293321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45494 (= res!302593 (validMask!0 mask!3524))))

(assert (=> start!45494 e!293321))

(assert (=> start!45494 true))

(declare-fun array_inv!11292 (array!32279) Bool)

(assert (=> start!45494 (array_inv!11292 a!3235)))

(declare-fun b!500667 () Bool)

(declare-fun res!302583 () Bool)

(assert (=> b!500667 (=> (not res!302583) (not e!293321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500667 (= res!302583 (validKeyInArray!0 k!2280))))

(declare-fun b!500668 () Bool)

(declare-fun res!302590 () Bool)

(assert (=> b!500668 (=> (not res!302590) (not e!293321))))

(assert (=> b!500668 (= res!302590 (validKeyInArray!0 (select (arr!15518 a!3235) j!176)))))

(declare-fun b!500669 () Bool)

(assert (=> b!500669 (= e!293318 true)))

(declare-fun lt!227356 () SeekEntryResult!3992)

(assert (=> b!500669 (= lt!227356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227351 lt!227354 lt!227359 mask!3524))))

(declare-fun b!500670 () Bool)

(assert (=> b!500670 (= e!293316 (= (seekEntryOrOpen!0 (select (arr!15518 a!3235) j!176) a!3235 mask!3524) (Found!3992 j!176)))))

(declare-fun b!500671 () Bool)

(declare-fun res!302588 () Bool)

(assert (=> b!500671 (=> (not res!302588) (not e!293321))))

(declare-fun arrayContainsKey!0 (array!32279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500671 (= res!302588 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500672 () Bool)

(declare-fun Unit!15061 () Unit!15058)

(assert (=> b!500672 (= e!293322 Unit!15061)))

(assert (= (and start!45494 res!302593) b!500664))

(assert (= (and b!500664 res!302582) b!500668))

(assert (= (and b!500668 res!302590) b!500667))

(assert (= (and b!500667 res!302583) b!500671))

(assert (= (and b!500671 res!302588) b!500658))

(assert (= (and b!500658 res!302586) b!500659))

(assert (= (and b!500659 res!302591) b!500660))

(assert (= (and b!500660 res!302592) b!500666))

(assert (= (and b!500666 res!302585) b!500670))

(assert (= (and b!500666 (not res!302584)) b!500661))

(assert (= (and b!500661 (not res!302594)) b!500663))

(assert (= (and b!500663 c!59315) b!500665))

(assert (= (and b!500663 (not c!59315)) b!500672))

(assert (= (and b!500665 res!302589) b!500662))

(assert (= (and b!500663 (not res!302587)) b!500669))

(declare-fun m!481801 () Bool)

(assert (=> b!500658 m!481801))

(declare-fun m!481803 () Bool)

(assert (=> b!500670 m!481803))

(assert (=> b!500670 m!481803))

(declare-fun m!481805 () Bool)

(assert (=> b!500670 m!481805))

(declare-fun m!481807 () Bool)

(assert (=> b!500667 m!481807))

(declare-fun m!481809 () Bool)

(assert (=> b!500665 m!481809))

(declare-fun m!481811 () Bool)

(assert (=> b!500665 m!481811))

(declare-fun m!481813 () Bool)

(assert (=> b!500660 m!481813))

(assert (=> b!500668 m!481803))

(assert (=> b!500668 m!481803))

(declare-fun m!481815 () Bool)

(assert (=> b!500668 m!481815))

(declare-fun m!481817 () Bool)

(assert (=> b!500659 m!481817))

(declare-fun m!481819 () Bool)

(assert (=> b!500671 m!481819))

(declare-fun m!481821 () Bool)

(assert (=> b!500663 m!481821))

(assert (=> b!500663 m!481803))

(declare-fun m!481823 () Bool)

(assert (=> b!500666 m!481823))

(declare-fun m!481825 () Bool)

(assert (=> b!500666 m!481825))

(declare-fun m!481827 () Bool)

(assert (=> b!500666 m!481827))

(assert (=> b!500666 m!481803))

(declare-fun m!481829 () Bool)

(assert (=> b!500666 m!481829))

(declare-fun m!481831 () Bool)

(assert (=> b!500666 m!481831))

(assert (=> b!500666 m!481803))

(declare-fun m!481833 () Bool)

(assert (=> b!500666 m!481833))

(declare-fun m!481835 () Bool)

(assert (=> b!500666 m!481835))

(declare-fun m!481837 () Bool)

(assert (=> b!500666 m!481837))

(assert (=> b!500666 m!481803))

(assert (=> b!500669 m!481811))

(declare-fun m!481839 () Bool)

(assert (=> start!45494 m!481839))

(declare-fun m!481841 () Bool)

(assert (=> start!45494 m!481841))

(push 1)

