; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46110 () Bool)

(assert start!46110)

(declare-fun b!510453 () Bool)

(declare-fun res!311454 () Bool)

(declare-fun e!298353 () Bool)

(assert (=> b!510453 (=> (not res!311454) (not e!298353))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32781 0))(
  ( (array!32782 (arr!15766 (Array (_ BitVec 32) (_ BitVec 64))) (size!16130 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32781)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510453 (= res!311454 (and (= (size!16130 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16130 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16130 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510454 () Bool)

(declare-fun res!311455 () Bool)

(assert (=> b!510454 (=> (not res!311455) (not e!298353))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510454 (= res!311455 (validKeyInArray!0 k0!2280))))

(declare-fun b!510455 () Bool)

(declare-fun res!311452 () Bool)

(assert (=> b!510455 (=> (not res!311452) (not e!298353))))

(declare-fun arrayContainsKey!0 (array!32781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510455 (= res!311452 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510457 () Bool)

(declare-fun e!298354 () Bool)

(assert (=> b!510457 (= e!298354 true)))

(declare-fun lt!233487 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4240 0))(
  ( (MissingZero!4240 (index!19148 (_ BitVec 32))) (Found!4240 (index!19149 (_ BitVec 32))) (Intermediate!4240 (undefined!5052 Bool) (index!19150 (_ BitVec 32)) (x!48132 (_ BitVec 32))) (Undefined!4240) (MissingVacant!4240 (index!19151 (_ BitVec 32))) )
))
(declare-fun lt!233484 () SeekEntryResult!4240)

(declare-fun lt!233485 () array!32781)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32781 (_ BitVec 32)) SeekEntryResult!4240)

(assert (=> b!510457 (= lt!233484 (seekEntryOrOpen!0 lt!233487 lt!233485 mask!3524))))

(declare-datatypes ((Unit!15730 0))(
  ( (Unit!15731) )
))
(declare-fun lt!233489 () Unit!15730)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32781 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15730)

(assert (=> b!510457 (= lt!233489 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!510458 () Bool)

(declare-fun res!311456 () Bool)

(declare-fun e!298352 () Bool)

(assert (=> b!510458 (=> (not res!311456) (not e!298352))))

(declare-datatypes ((List!9977 0))(
  ( (Nil!9974) (Cons!9973 (h!10850 (_ BitVec 64)) (t!16213 List!9977)) )
))
(declare-fun arrayNoDuplicates!0 (array!32781 (_ BitVec 32) List!9977) Bool)

(assert (=> b!510458 (= res!311456 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9974))))

(declare-fun b!510459 () Bool)

(assert (=> b!510459 (= e!298353 e!298352)))

(declare-fun res!311449 () Bool)

(assert (=> b!510459 (=> (not res!311449) (not e!298352))))

(declare-fun lt!233486 () SeekEntryResult!4240)

(assert (=> b!510459 (= res!311449 (or (= lt!233486 (MissingZero!4240 i!1204)) (= lt!233486 (MissingVacant!4240 i!1204))))))

(assert (=> b!510459 (= lt!233486 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510460 () Bool)

(assert (=> b!510460 (= e!298352 (not e!298354))))

(declare-fun res!311448 () Bool)

(assert (=> b!510460 (=> res!311448 e!298354)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32781 (_ BitVec 32)) SeekEntryResult!4240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510460 (= res!311448 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15766 a!3235) j!176) mask!3524) (select (arr!15766 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233487 mask!3524) lt!233487 lt!233485 mask!3524))))))

(assert (=> b!510460 (= lt!233487 (select (store (arr!15766 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510460 (= lt!233485 (array!32782 (store (arr!15766 a!3235) i!1204 k0!2280) (size!16130 a!3235)))))

(assert (=> b!510460 (= lt!233484 (Found!4240 j!176))))

(assert (=> b!510460 (= lt!233484 (seekEntryOrOpen!0 (select (arr!15766 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32781 (_ BitVec 32)) Bool)

(assert (=> b!510460 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233488 () Unit!15730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15730)

(assert (=> b!510460 (= lt!233488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510461 () Bool)

(declare-fun res!311451 () Bool)

(assert (=> b!510461 (=> (not res!311451) (not e!298353))))

(assert (=> b!510461 (= res!311451 (validKeyInArray!0 (select (arr!15766 a!3235) j!176)))))

(declare-fun b!510456 () Bool)

(declare-fun res!311453 () Bool)

(assert (=> b!510456 (=> (not res!311453) (not e!298352))))

(assert (=> b!510456 (= res!311453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!311450 () Bool)

(assert (=> start!46110 (=> (not res!311450) (not e!298353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46110 (= res!311450 (validMask!0 mask!3524))))

(assert (=> start!46110 e!298353))

(assert (=> start!46110 true))

(declare-fun array_inv!11540 (array!32781) Bool)

(assert (=> start!46110 (array_inv!11540 a!3235)))

(assert (= (and start!46110 res!311450) b!510453))

(assert (= (and b!510453 res!311454) b!510461))

(assert (= (and b!510461 res!311451) b!510454))

(assert (= (and b!510454 res!311455) b!510455))

(assert (= (and b!510455 res!311452) b!510459))

(assert (= (and b!510459 res!311449) b!510456))

(assert (= (and b!510456 res!311453) b!510458))

(assert (= (and b!510458 res!311456) b!510460))

(assert (= (and b!510460 (not res!311448)) b!510457))

(declare-fun m!491855 () Bool)

(assert (=> start!46110 m!491855))

(declare-fun m!491857 () Bool)

(assert (=> start!46110 m!491857))

(declare-fun m!491859 () Bool)

(assert (=> b!510459 m!491859))

(declare-fun m!491861 () Bool)

(assert (=> b!510454 m!491861))

(declare-fun m!491863 () Bool)

(assert (=> b!510458 m!491863))

(declare-fun m!491865 () Bool)

(assert (=> b!510455 m!491865))

(declare-fun m!491867 () Bool)

(assert (=> b!510457 m!491867))

(declare-fun m!491869 () Bool)

(assert (=> b!510457 m!491869))

(declare-fun m!491871 () Bool)

(assert (=> b!510460 m!491871))

(declare-fun m!491873 () Bool)

(assert (=> b!510460 m!491873))

(assert (=> b!510460 m!491871))

(declare-fun m!491875 () Bool)

(assert (=> b!510460 m!491875))

(declare-fun m!491877 () Bool)

(assert (=> b!510460 m!491877))

(declare-fun m!491879 () Bool)

(assert (=> b!510460 m!491879))

(declare-fun m!491881 () Bool)

(assert (=> b!510460 m!491881))

(declare-fun m!491883 () Bool)

(assert (=> b!510460 m!491883))

(declare-fun m!491885 () Bool)

(assert (=> b!510460 m!491885))

(assert (=> b!510460 m!491883))

(assert (=> b!510460 m!491881))

(assert (=> b!510460 m!491883))

(declare-fun m!491887 () Bool)

(assert (=> b!510460 m!491887))

(assert (=> b!510460 m!491883))

(declare-fun m!491889 () Bool)

(assert (=> b!510460 m!491889))

(declare-fun m!491891 () Bool)

(assert (=> b!510456 m!491891))

(assert (=> b!510461 m!491883))

(assert (=> b!510461 m!491883))

(declare-fun m!491893 () Bool)

(assert (=> b!510461 m!491893))

(check-sat (not b!510456) (not b!510458) (not b!510459) (not b!510457) (not b!510461) (not b!510455) (not start!46110) (not b!510460) (not b!510454))
(check-sat)
