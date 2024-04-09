; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46088 () Bool)

(assert start!46088)

(declare-fun res!311159 () Bool)

(declare-fun e!298221 () Bool)

(assert (=> start!46088 (=> (not res!311159) (not e!298221))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46088 (= res!311159 (validMask!0 mask!3524))))

(assert (=> start!46088 e!298221))

(assert (=> start!46088 true))

(declare-datatypes ((array!32759 0))(
  ( (array!32760 (arr!15755 (Array (_ BitVec 32) (_ BitVec 64))) (size!16119 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32759)

(declare-fun array_inv!11529 (array!32759) Bool)

(assert (=> start!46088 (array_inv!11529 a!3235)))

(declare-fun b!510156 () Bool)

(declare-fun e!298220 () Bool)

(declare-fun e!298222 () Bool)

(assert (=> b!510156 (= e!298220 (not e!298222))))

(declare-fun res!311151 () Bool)

(assert (=> b!510156 (=> res!311151 e!298222)))

(declare-fun lt!233289 () array!32759)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233290 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4229 0))(
  ( (MissingZero!4229 (index!19104 (_ BitVec 32))) (Found!4229 (index!19105 (_ BitVec 32))) (Intermediate!4229 (undefined!5041 Bool) (index!19106 (_ BitVec 32)) (x!48089 (_ BitVec 32))) (Undefined!4229) (MissingVacant!4229 (index!19107 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32759 (_ BitVec 32)) SeekEntryResult!4229)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510156 (= res!311151 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15755 a!3235) j!176) mask!3524) (select (arr!15755 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233290 mask!3524) lt!233290 lt!233289 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510156 (= lt!233290 (select (store (arr!15755 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510156 (= lt!233289 (array!32760 (store (arr!15755 a!3235) i!1204 k!2280) (size!16119 a!3235)))))

(declare-fun lt!233288 () SeekEntryResult!4229)

(assert (=> b!510156 (= lt!233288 (Found!4229 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32759 (_ BitVec 32)) SeekEntryResult!4229)

(assert (=> b!510156 (= lt!233288 (seekEntryOrOpen!0 (select (arr!15755 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32759 (_ BitVec 32)) Bool)

(assert (=> b!510156 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15708 0))(
  ( (Unit!15709) )
))
(declare-fun lt!233286 () Unit!15708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15708)

(assert (=> b!510156 (= lt!233286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510157 () Bool)

(declare-fun res!311158 () Bool)

(assert (=> b!510157 (=> (not res!311158) (not e!298221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510157 (= res!311158 (validKeyInArray!0 k!2280))))

(declare-fun b!510158 () Bool)

(assert (=> b!510158 (= e!298221 e!298220)))

(declare-fun res!311152 () Bool)

(assert (=> b!510158 (=> (not res!311152) (not e!298220))))

(declare-fun lt!233291 () SeekEntryResult!4229)

(assert (=> b!510158 (= res!311152 (or (= lt!233291 (MissingZero!4229 i!1204)) (= lt!233291 (MissingVacant!4229 i!1204))))))

(assert (=> b!510158 (= lt!233291 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510159 () Bool)

(assert (=> b!510159 (= e!298222 true)))

(assert (=> b!510159 (= lt!233288 (seekEntryOrOpen!0 lt!233290 lt!233289 mask!3524))))

(declare-fun lt!233287 () Unit!15708)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32759 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15708)

(assert (=> b!510159 (= lt!233287 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510160 () Bool)

(declare-fun res!311154 () Bool)

(assert (=> b!510160 (=> (not res!311154) (not e!298221))))

(declare-fun arrayContainsKey!0 (array!32759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510160 (= res!311154 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510161 () Bool)

(declare-fun res!311156 () Bool)

(assert (=> b!510161 (=> (not res!311156) (not e!298220))))

(declare-datatypes ((List!9966 0))(
  ( (Nil!9963) (Cons!9962 (h!10839 (_ BitVec 64)) (t!16202 List!9966)) )
))
(declare-fun arrayNoDuplicates!0 (array!32759 (_ BitVec 32) List!9966) Bool)

(assert (=> b!510161 (= res!311156 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9963))))

(declare-fun b!510162 () Bool)

(declare-fun res!311153 () Bool)

(assert (=> b!510162 (=> (not res!311153) (not e!298221))))

(assert (=> b!510162 (= res!311153 (and (= (size!16119 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16119 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16119 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510163 () Bool)

(declare-fun res!311157 () Bool)

(assert (=> b!510163 (=> (not res!311157) (not e!298221))))

(assert (=> b!510163 (= res!311157 (validKeyInArray!0 (select (arr!15755 a!3235) j!176)))))

(declare-fun b!510164 () Bool)

(declare-fun res!311155 () Bool)

(assert (=> b!510164 (=> (not res!311155) (not e!298220))))

(assert (=> b!510164 (= res!311155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46088 res!311159) b!510162))

(assert (= (and b!510162 res!311153) b!510163))

(assert (= (and b!510163 res!311157) b!510157))

(assert (= (and b!510157 res!311158) b!510160))

(assert (= (and b!510160 res!311154) b!510158))

(assert (= (and b!510158 res!311152) b!510164))

(assert (= (and b!510164 res!311155) b!510161))

(assert (= (and b!510161 res!311156) b!510156))

(assert (= (and b!510156 (not res!311151)) b!510159))

(declare-fun m!491415 () Bool)

(assert (=> b!510161 m!491415))

(declare-fun m!491417 () Bool)

(assert (=> start!46088 m!491417))

(declare-fun m!491419 () Bool)

(assert (=> start!46088 m!491419))

(declare-fun m!491421 () Bool)

(assert (=> b!510163 m!491421))

(assert (=> b!510163 m!491421))

(declare-fun m!491423 () Bool)

(assert (=> b!510163 m!491423))

(declare-fun m!491425 () Bool)

(assert (=> b!510160 m!491425))

(declare-fun m!491427 () Bool)

(assert (=> b!510156 m!491427))

(declare-fun m!491429 () Bool)

(assert (=> b!510156 m!491429))

(declare-fun m!491431 () Bool)

(assert (=> b!510156 m!491431))

(declare-fun m!491433 () Bool)

(assert (=> b!510156 m!491433))

(assert (=> b!510156 m!491421))

(declare-fun m!491435 () Bool)

(assert (=> b!510156 m!491435))

(declare-fun m!491437 () Bool)

(assert (=> b!510156 m!491437))

(assert (=> b!510156 m!491421))

(declare-fun m!491439 () Bool)

(assert (=> b!510156 m!491439))

(assert (=> b!510156 m!491421))

(declare-fun m!491441 () Bool)

(assert (=> b!510156 m!491441))

(assert (=> b!510156 m!491421))

(assert (=> b!510156 m!491433))

(assert (=> b!510156 m!491437))

(declare-fun m!491443 () Bool)

(assert (=> b!510156 m!491443))

(declare-fun m!491445 () Bool)

(assert (=> b!510164 m!491445))

(declare-fun m!491447 () Bool)

(assert (=> b!510159 m!491447))

(declare-fun m!491449 () Bool)

(assert (=> b!510159 m!491449))

(declare-fun m!491451 () Bool)

(assert (=> b!510158 m!491451))

(declare-fun m!491453 () Bool)

(assert (=> b!510157 m!491453))

(push 1)

