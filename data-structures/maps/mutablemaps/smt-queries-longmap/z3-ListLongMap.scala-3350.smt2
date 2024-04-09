; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46104 () Bool)

(assert start!46104)

(declare-fun b!510372 () Bool)

(declare-fun res!311372 () Bool)

(declare-fun e!298317 () Bool)

(assert (=> b!510372 (=> (not res!311372) (not e!298317))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510372 (= res!311372 (validKeyInArray!0 k0!2280))))

(declare-fun b!510373 () Bool)

(declare-fun e!298315 () Bool)

(assert (=> b!510373 (= e!298315 true)))

(declare-datatypes ((SeekEntryResult!4237 0))(
  ( (MissingZero!4237 (index!19136 (_ BitVec 32))) (Found!4237 (index!19137 (_ BitVec 32))) (Intermediate!4237 (undefined!5049 Bool) (index!19138 (_ BitVec 32)) (x!48121 (_ BitVec 32))) (Undefined!4237) (MissingVacant!4237 (index!19139 (_ BitVec 32))) )
))
(declare-fun lt!233431 () SeekEntryResult!4237)

(declare-datatypes ((array!32775 0))(
  ( (array!32776 (arr!15763 (Array (_ BitVec 32) (_ BitVec 64))) (size!16127 (_ BitVec 32))) )
))
(declare-fun lt!233430 () array!32775)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233433 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32775 (_ BitVec 32)) SeekEntryResult!4237)

(assert (=> b!510373 (= lt!233431 (seekEntryOrOpen!0 lt!233433 lt!233430 mask!3524))))

(declare-datatypes ((Unit!15724 0))(
  ( (Unit!15725) )
))
(declare-fun lt!233434 () Unit!15724)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32775)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32775 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15724)

(assert (=> b!510373 (= lt!233434 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!510374 () Bool)

(declare-fun e!298316 () Bool)

(assert (=> b!510374 (= e!298316 (not e!298315))))

(declare-fun res!311367 () Bool)

(assert (=> b!510374 (=> res!311367 e!298315)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32775 (_ BitVec 32)) SeekEntryResult!4237)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510374 (= res!311367 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15763 a!3235) j!176) mask!3524) (select (arr!15763 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233433 mask!3524) lt!233433 lt!233430 mask!3524))))))

(assert (=> b!510374 (= lt!233433 (select (store (arr!15763 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510374 (= lt!233430 (array!32776 (store (arr!15763 a!3235) i!1204 k0!2280) (size!16127 a!3235)))))

(assert (=> b!510374 (= lt!233431 (Found!4237 j!176))))

(assert (=> b!510374 (= lt!233431 (seekEntryOrOpen!0 (select (arr!15763 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32775 (_ BitVec 32)) Bool)

(assert (=> b!510374 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233432 () Unit!15724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15724)

(assert (=> b!510374 (= lt!233432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510375 () Bool)

(assert (=> b!510375 (= e!298317 e!298316)))

(declare-fun res!311371 () Bool)

(assert (=> b!510375 (=> (not res!311371) (not e!298316))))

(declare-fun lt!233435 () SeekEntryResult!4237)

(assert (=> b!510375 (= res!311371 (or (= lt!233435 (MissingZero!4237 i!1204)) (= lt!233435 (MissingVacant!4237 i!1204))))))

(assert (=> b!510375 (= lt!233435 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510376 () Bool)

(declare-fun res!311373 () Bool)

(assert (=> b!510376 (=> (not res!311373) (not e!298316))))

(assert (=> b!510376 (= res!311373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510377 () Bool)

(declare-fun res!311374 () Bool)

(assert (=> b!510377 (=> (not res!311374) (not e!298317))))

(assert (=> b!510377 (= res!311374 (and (= (size!16127 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16127 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16127 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510379 () Bool)

(declare-fun res!311369 () Bool)

(assert (=> b!510379 (=> (not res!311369) (not e!298316))))

(declare-datatypes ((List!9974 0))(
  ( (Nil!9971) (Cons!9970 (h!10847 (_ BitVec 64)) (t!16210 List!9974)) )
))
(declare-fun arrayNoDuplicates!0 (array!32775 (_ BitVec 32) List!9974) Bool)

(assert (=> b!510379 (= res!311369 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9971))))

(declare-fun b!510380 () Bool)

(declare-fun res!311368 () Bool)

(assert (=> b!510380 (=> (not res!311368) (not e!298317))))

(declare-fun arrayContainsKey!0 (array!32775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510380 (= res!311368 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!311370 () Bool)

(assert (=> start!46104 (=> (not res!311370) (not e!298317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46104 (= res!311370 (validMask!0 mask!3524))))

(assert (=> start!46104 e!298317))

(assert (=> start!46104 true))

(declare-fun array_inv!11537 (array!32775) Bool)

(assert (=> start!46104 (array_inv!11537 a!3235)))

(declare-fun b!510378 () Bool)

(declare-fun res!311375 () Bool)

(assert (=> b!510378 (=> (not res!311375) (not e!298317))))

(assert (=> b!510378 (= res!311375 (validKeyInArray!0 (select (arr!15763 a!3235) j!176)))))

(assert (= (and start!46104 res!311370) b!510377))

(assert (= (and b!510377 res!311374) b!510378))

(assert (= (and b!510378 res!311375) b!510372))

(assert (= (and b!510372 res!311372) b!510380))

(assert (= (and b!510380 res!311368) b!510375))

(assert (= (and b!510375 res!311371) b!510376))

(assert (= (and b!510376 res!311373) b!510379))

(assert (= (and b!510379 res!311369) b!510374))

(assert (= (and b!510374 (not res!311367)) b!510373))

(declare-fun m!491735 () Bool)

(assert (=> b!510375 m!491735))

(declare-fun m!491737 () Bool)

(assert (=> b!510373 m!491737))

(declare-fun m!491739 () Bool)

(assert (=> b!510373 m!491739))

(declare-fun m!491741 () Bool)

(assert (=> b!510379 m!491741))

(declare-fun m!491743 () Bool)

(assert (=> start!46104 m!491743))

(declare-fun m!491745 () Bool)

(assert (=> start!46104 m!491745))

(declare-fun m!491747 () Bool)

(assert (=> b!510378 m!491747))

(assert (=> b!510378 m!491747))

(declare-fun m!491749 () Bool)

(assert (=> b!510378 m!491749))

(declare-fun m!491751 () Bool)

(assert (=> b!510374 m!491751))

(declare-fun m!491753 () Bool)

(assert (=> b!510374 m!491753))

(declare-fun m!491755 () Bool)

(assert (=> b!510374 m!491755))

(assert (=> b!510374 m!491747))

(declare-fun m!491757 () Bool)

(assert (=> b!510374 m!491757))

(declare-fun m!491759 () Bool)

(assert (=> b!510374 m!491759))

(declare-fun m!491761 () Bool)

(assert (=> b!510374 m!491761))

(assert (=> b!510374 m!491747))

(assert (=> b!510374 m!491755))

(assert (=> b!510374 m!491747))

(declare-fun m!491763 () Bool)

(assert (=> b!510374 m!491763))

(assert (=> b!510374 m!491747))

(declare-fun m!491765 () Bool)

(assert (=> b!510374 m!491765))

(assert (=> b!510374 m!491759))

(declare-fun m!491767 () Bool)

(assert (=> b!510374 m!491767))

(declare-fun m!491769 () Bool)

(assert (=> b!510372 m!491769))

(declare-fun m!491771 () Bool)

(assert (=> b!510376 m!491771))

(declare-fun m!491773 () Bool)

(assert (=> b!510380 m!491773))

(check-sat (not b!510374) (not b!510380) (not b!510375) (not b!510378) (not b!510372) (not b!510379) (not b!510376) (not start!46104) (not b!510373))
(check-sat)
