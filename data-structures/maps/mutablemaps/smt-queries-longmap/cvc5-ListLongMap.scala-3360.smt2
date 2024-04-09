; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46222 () Bool)

(assert start!46222)

(declare-fun b!511475 () Bool)

(declare-fun res!312288 () Bool)

(declare-fun e!298851 () Bool)

(assert (=> b!511475 (=> (not res!312288) (not e!298851))))

(declare-datatypes ((array!32836 0))(
  ( (array!32837 (arr!15792 (Array (_ BitVec 32) (_ BitVec 64))) (size!16156 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32836)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511475 (= res!312288 (validKeyInArray!0 (select (arr!15792 a!3235) j!176)))))

(declare-fun b!511476 () Bool)

(declare-fun res!312290 () Bool)

(assert (=> b!511476 (=> (not res!312290) (not e!298851))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!511476 (= res!312290 (validKeyInArray!0 k!2280))))

(declare-fun b!511477 () Bool)

(declare-fun res!312295 () Bool)

(declare-fun e!298852 () Bool)

(assert (=> b!511477 (=> res!312295 e!298852)))

(declare-datatypes ((SeekEntryResult!4266 0))(
  ( (MissingZero!4266 (index!19252 (_ BitVec 32))) (Found!4266 (index!19253 (_ BitVec 32))) (Intermediate!4266 (undefined!5078 Bool) (index!19254 (_ BitVec 32)) (x!48236 (_ BitVec 32))) (Undefined!4266) (MissingVacant!4266 (index!19255 (_ BitVec 32))) )
))
(declare-fun lt!234084 () SeekEntryResult!4266)

(assert (=> b!511477 (= res!312295 (or (not (is-Intermediate!4266 lt!234084)) (not (undefined!5078 lt!234084))))))

(declare-fun b!511478 () Bool)

(assert (=> b!511478 (= e!298852 (or (bvsgt #b00000000000000000000000000000000 (size!16156 a!3235)) (bvsle j!176 (size!16156 a!3235))))))

(declare-fun lt!234082 () SeekEntryResult!4266)

(assert (=> b!511478 (= lt!234082 Undefined!4266)))

(declare-fun b!511479 () Bool)

(declare-fun res!312287 () Bool)

(declare-fun e!298850 () Bool)

(assert (=> b!511479 (=> (not res!312287) (not e!298850))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32836 (_ BitVec 32)) Bool)

(assert (=> b!511479 (= res!312287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511481 () Bool)

(declare-fun res!312292 () Bool)

(assert (=> b!511481 (=> (not res!312292) (not e!298851))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511481 (= res!312292 (and (= (size!16156 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16156 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16156 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511482 () Bool)

(assert (=> b!511482 (= e!298850 (not e!298852))))

(declare-fun res!312293 () Bool)

(assert (=> b!511482 (=> res!312293 e!298852)))

(declare-fun lt!234083 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32836 (_ BitVec 32)) SeekEntryResult!4266)

(assert (=> b!511482 (= res!312293 (= lt!234084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234083 (select (store (arr!15792 a!3235) i!1204 k!2280) j!176) (array!32837 (store (arr!15792 a!3235) i!1204 k!2280) (size!16156 a!3235)) mask!3524)))))

(declare-fun lt!234085 () (_ BitVec 32))

(assert (=> b!511482 (= lt!234084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234085 (select (arr!15792 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511482 (= lt!234083 (toIndex!0 (select (store (arr!15792 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511482 (= lt!234085 (toIndex!0 (select (arr!15792 a!3235) j!176) mask!3524))))

(assert (=> b!511482 (= lt!234082 (Found!4266 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32836 (_ BitVec 32)) SeekEntryResult!4266)

(assert (=> b!511482 (= lt!234082 (seekEntryOrOpen!0 (select (arr!15792 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511482 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15782 0))(
  ( (Unit!15783) )
))
(declare-fun lt!234081 () Unit!15782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15782)

(assert (=> b!511482 (= lt!234081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!312294 () Bool)

(assert (=> start!46222 (=> (not res!312294) (not e!298851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46222 (= res!312294 (validMask!0 mask!3524))))

(assert (=> start!46222 e!298851))

(assert (=> start!46222 true))

(declare-fun array_inv!11566 (array!32836) Bool)

(assert (=> start!46222 (array_inv!11566 a!3235)))

(declare-fun b!511480 () Bool)

(declare-fun res!312291 () Bool)

(assert (=> b!511480 (=> (not res!312291) (not e!298851))))

(declare-fun arrayContainsKey!0 (array!32836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511480 (= res!312291 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511483 () Bool)

(assert (=> b!511483 (= e!298851 e!298850)))

(declare-fun res!312296 () Bool)

(assert (=> b!511483 (=> (not res!312296) (not e!298850))))

(declare-fun lt!234086 () SeekEntryResult!4266)

(assert (=> b!511483 (= res!312296 (or (= lt!234086 (MissingZero!4266 i!1204)) (= lt!234086 (MissingVacant!4266 i!1204))))))

(assert (=> b!511483 (= lt!234086 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511484 () Bool)

(declare-fun res!312289 () Bool)

(assert (=> b!511484 (=> (not res!312289) (not e!298850))))

(declare-datatypes ((List!10003 0))(
  ( (Nil!10000) (Cons!9999 (h!10879 (_ BitVec 64)) (t!16239 List!10003)) )
))
(declare-fun arrayNoDuplicates!0 (array!32836 (_ BitVec 32) List!10003) Bool)

(assert (=> b!511484 (= res!312289 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10000))))

(assert (= (and start!46222 res!312294) b!511481))

(assert (= (and b!511481 res!312292) b!511475))

(assert (= (and b!511475 res!312288) b!511476))

(assert (= (and b!511476 res!312290) b!511480))

(assert (= (and b!511480 res!312291) b!511483))

(assert (= (and b!511483 res!312296) b!511479))

(assert (= (and b!511479 res!312287) b!511484))

(assert (= (and b!511484 res!312289) b!511482))

(assert (= (and b!511482 (not res!312293)) b!511477))

(assert (= (and b!511477 (not res!312295)) b!511478))

(declare-fun m!493015 () Bool)

(assert (=> b!511480 m!493015))

(declare-fun m!493017 () Bool)

(assert (=> b!511484 m!493017))

(declare-fun m!493019 () Bool)

(assert (=> b!511483 m!493019))

(declare-fun m!493021 () Bool)

(assert (=> b!511475 m!493021))

(assert (=> b!511475 m!493021))

(declare-fun m!493023 () Bool)

(assert (=> b!511475 m!493023))

(declare-fun m!493025 () Bool)

(assert (=> b!511482 m!493025))

(declare-fun m!493027 () Bool)

(assert (=> b!511482 m!493027))

(declare-fun m!493029 () Bool)

(assert (=> b!511482 m!493029))

(declare-fun m!493031 () Bool)

(assert (=> b!511482 m!493031))

(assert (=> b!511482 m!493025))

(assert (=> b!511482 m!493021))

(declare-fun m!493033 () Bool)

(assert (=> b!511482 m!493033))

(assert (=> b!511482 m!493021))

(declare-fun m!493035 () Bool)

(assert (=> b!511482 m!493035))

(assert (=> b!511482 m!493021))

(declare-fun m!493037 () Bool)

(assert (=> b!511482 m!493037))

(assert (=> b!511482 m!493021))

(declare-fun m!493039 () Bool)

(assert (=> b!511482 m!493039))

(assert (=> b!511482 m!493025))

(declare-fun m!493041 () Bool)

(assert (=> b!511482 m!493041))

(declare-fun m!493043 () Bool)

(assert (=> b!511476 m!493043))

(declare-fun m!493045 () Bool)

(assert (=> b!511479 m!493045))

(declare-fun m!493047 () Bool)

(assert (=> start!46222 m!493047))

(declare-fun m!493049 () Bool)

(assert (=> start!46222 m!493049))

(push 1)

