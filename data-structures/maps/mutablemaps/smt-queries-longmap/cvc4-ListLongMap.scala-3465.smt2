; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48134 () Bool)

(assert start!48134)

(declare-fun b!529810 () Bool)

(declare-fun res!325668 () Bool)

(declare-fun e!308717 () Bool)

(assert (=> b!529810 (=> (not res!325668) (not e!308717))))

(declare-datatypes ((array!33530 0))(
  ( (array!33531 (arr!16109 (Array (_ BitVec 32) (_ BitVec 64))) (size!16473 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33530)

(declare-datatypes ((List!10320 0))(
  ( (Nil!10317) (Cons!10316 (h!11256 (_ BitVec 64)) (t!16556 List!10320)) )
))
(declare-fun arrayNoDuplicates!0 (array!33530 (_ BitVec 32) List!10320) Bool)

(assert (=> b!529810 (= res!325668 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10317))))

(declare-fun b!529811 () Bool)

(declare-fun res!325669 () Bool)

(declare-fun e!308722 () Bool)

(assert (=> b!529811 (=> (not res!325669) (not e!308722))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529811 (= res!325669 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529812 () Bool)

(declare-fun res!325672 () Bool)

(assert (=> b!529812 (=> (not res!325672) (not e!308717))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33530 (_ BitVec 32)) Bool)

(assert (=> b!529812 (= res!325672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529813 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!308721 () Bool)

(declare-datatypes ((SeekEntryResult!4583 0))(
  ( (MissingZero!4583 (index!20556 (_ BitVec 32))) (Found!4583 (index!20557 (_ BitVec 32))) (Intermediate!4583 (undefined!5395 Bool) (index!20558 (_ BitVec 32)) (x!49552 (_ BitVec 32))) (Undefined!4583) (MissingVacant!4583 (index!20559 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33530 (_ BitVec 32)) SeekEntryResult!4583)

(assert (=> b!529813 (= e!308721 (= (seekEntryOrOpen!0 (select (arr!16109 a!3235) j!176) a!3235 mask!3524) (Found!4583 j!176)))))

(declare-fun b!529814 () Bool)

(assert (=> b!529814 (= e!308722 e!308717)))

(declare-fun res!325666 () Bool)

(assert (=> b!529814 (=> (not res!325666) (not e!308717))))

(declare-fun lt!244386 () SeekEntryResult!4583)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529814 (= res!325666 (or (= lt!244386 (MissingZero!4583 i!1204)) (= lt!244386 (MissingVacant!4583 i!1204))))))

(assert (=> b!529814 (= lt!244386 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529815 () Bool)

(declare-fun e!308719 () Bool)

(assert (=> b!529815 (= e!308717 (not e!308719))))

(declare-fun res!325675 () Bool)

(assert (=> b!529815 (=> res!325675 e!308719)))

(declare-fun lt!244394 () SeekEntryResult!4583)

(declare-fun lt!244387 () (_ BitVec 32))

(declare-fun lt!244391 () array!33530)

(declare-fun lt!244393 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33530 (_ BitVec 32)) SeekEntryResult!4583)

(assert (=> b!529815 (= res!325675 (= lt!244394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244387 lt!244393 lt!244391 mask!3524)))))

(declare-fun lt!244392 () (_ BitVec 32))

(assert (=> b!529815 (= lt!244394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244392 (select (arr!16109 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529815 (= lt!244387 (toIndex!0 lt!244393 mask!3524))))

(assert (=> b!529815 (= lt!244393 (select (store (arr!16109 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529815 (= lt!244392 (toIndex!0 (select (arr!16109 a!3235) j!176) mask!3524))))

(assert (=> b!529815 (= lt!244391 (array!33531 (store (arr!16109 a!3235) i!1204 k!2280) (size!16473 a!3235)))))

(assert (=> b!529815 e!308721))

(declare-fun res!325667 () Bool)

(assert (=> b!529815 (=> (not res!325667) (not e!308721))))

(assert (=> b!529815 (= res!325667 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16770 0))(
  ( (Unit!16771) )
))
(declare-fun lt!244389 () Unit!16770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16770)

(assert (=> b!529815 (= lt!244389 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!325670 () Bool)

(assert (=> start!48134 (=> (not res!325670) (not e!308722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48134 (= res!325670 (validMask!0 mask!3524))))

(assert (=> start!48134 e!308722))

(assert (=> start!48134 true))

(declare-fun array_inv!11883 (array!33530) Bool)

(assert (=> start!48134 (array_inv!11883 a!3235)))

(declare-fun b!529816 () Bool)

(declare-fun e!308718 () Bool)

(assert (=> b!529816 (= e!308718 true)))

(declare-fun lt!244388 () SeekEntryResult!4583)

(assert (=> b!529816 (= lt!244388 (seekEntryOrOpen!0 lt!244393 lt!244391 mask!3524))))

(assert (=> b!529816 false))

(declare-fun b!529817 () Bool)

(declare-fun res!325671 () Bool)

(assert (=> b!529817 (=> (not res!325671) (not e!308722))))

(assert (=> b!529817 (= res!325671 (and (= (size!16473 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16473 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16473 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529818 () Bool)

(declare-fun res!325673 () Bool)

(assert (=> b!529818 (=> (not res!325673) (not e!308722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529818 (= res!325673 (validKeyInArray!0 (select (arr!16109 a!3235) j!176)))))

(declare-fun b!529819 () Bool)

(declare-fun res!325674 () Bool)

(assert (=> b!529819 (=> (not res!325674) (not e!308722))))

(assert (=> b!529819 (= res!325674 (validKeyInArray!0 k!2280))))

(declare-fun b!529820 () Bool)

(assert (=> b!529820 (= e!308719 e!308718)))

(declare-fun res!325676 () Bool)

(assert (=> b!529820 (=> res!325676 e!308718)))

(declare-fun lt!244390 () Bool)

(assert (=> b!529820 (= res!325676 (or (and (not lt!244390) (undefined!5395 lt!244394)) (and (not lt!244390) (not (undefined!5395 lt!244394)))))))

(assert (=> b!529820 (= lt!244390 (not (is-Intermediate!4583 lt!244394)))))

(assert (= (and start!48134 res!325670) b!529817))

(assert (= (and b!529817 res!325671) b!529818))

(assert (= (and b!529818 res!325673) b!529819))

(assert (= (and b!529819 res!325674) b!529811))

(assert (= (and b!529811 res!325669) b!529814))

(assert (= (and b!529814 res!325666) b!529812))

(assert (= (and b!529812 res!325672) b!529810))

(assert (= (and b!529810 res!325668) b!529815))

(assert (= (and b!529815 res!325667) b!529813))

(assert (= (and b!529815 (not res!325675)) b!529820))

(assert (= (and b!529820 (not res!325676)) b!529816))

(declare-fun m!510365 () Bool)

(assert (=> start!48134 m!510365))

(declare-fun m!510367 () Bool)

(assert (=> start!48134 m!510367))

(declare-fun m!510369 () Bool)

(assert (=> b!529814 m!510369))

(declare-fun m!510371 () Bool)

(assert (=> b!529818 m!510371))

(assert (=> b!529818 m!510371))

(declare-fun m!510373 () Bool)

(assert (=> b!529818 m!510373))

(declare-fun m!510375 () Bool)

(assert (=> b!529815 m!510375))

(assert (=> b!529815 m!510371))

(declare-fun m!510377 () Bool)

(assert (=> b!529815 m!510377))

(declare-fun m!510379 () Bool)

(assert (=> b!529815 m!510379))

(declare-fun m!510381 () Bool)

(assert (=> b!529815 m!510381))

(declare-fun m!510383 () Bool)

(assert (=> b!529815 m!510383))

(assert (=> b!529815 m!510371))

(declare-fun m!510385 () Bool)

(assert (=> b!529815 m!510385))

(declare-fun m!510387 () Bool)

(assert (=> b!529815 m!510387))

(assert (=> b!529815 m!510371))

(declare-fun m!510389 () Bool)

(assert (=> b!529815 m!510389))

(declare-fun m!510391 () Bool)

(assert (=> b!529816 m!510391))

(declare-fun m!510393 () Bool)

(assert (=> b!529819 m!510393))

(declare-fun m!510395 () Bool)

(assert (=> b!529811 m!510395))

(declare-fun m!510397 () Bool)

(assert (=> b!529810 m!510397))

(declare-fun m!510399 () Bool)

(assert (=> b!529812 m!510399))

(assert (=> b!529813 m!510371))

(assert (=> b!529813 m!510371))

(declare-fun m!510401 () Bool)

(assert (=> b!529813 m!510401))

(push 1)

