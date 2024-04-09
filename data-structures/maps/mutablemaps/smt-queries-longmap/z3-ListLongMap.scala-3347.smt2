; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46086 () Bool)

(assert start!46086)

(declare-fun b!510129 () Bool)

(declare-fun res!311124 () Bool)

(declare-fun e!298207 () Bool)

(assert (=> b!510129 (=> (not res!311124) (not e!298207))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510129 (= res!311124 (validKeyInArray!0 k0!2280))))

(declare-fun b!510130 () Bool)

(declare-fun res!311125 () Bool)

(assert (=> b!510130 (=> (not res!311125) (not e!298207))))

(declare-datatypes ((array!32757 0))(
  ( (array!32758 (arr!15754 (Array (_ BitVec 32) (_ BitVec 64))) (size!16118 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32757)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510130 (= res!311125 (validKeyInArray!0 (select (arr!15754 a!3235) j!176)))))

(declare-fun b!510131 () Bool)

(declare-fun res!311131 () Bool)

(declare-fun e!298209 () Bool)

(assert (=> b!510131 (=> (not res!311131) (not e!298209))))

(declare-datatypes ((List!9965 0))(
  ( (Nil!9962) (Cons!9961 (h!10838 (_ BitVec 64)) (t!16201 List!9965)) )
))
(declare-fun arrayNoDuplicates!0 (array!32757 (_ BitVec 32) List!9965) Bool)

(assert (=> b!510131 (= res!311131 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9962))))

(declare-fun b!510132 () Bool)

(declare-fun e!298210 () Bool)

(assert (=> b!510132 (= e!298210 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233272 () array!32757)

(declare-fun lt!233273 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4228 0))(
  ( (MissingZero!4228 (index!19100 (_ BitVec 32))) (Found!4228 (index!19101 (_ BitVec 32))) (Intermediate!4228 (undefined!5040 Bool) (index!19102 (_ BitVec 32)) (x!48088 (_ BitVec 32))) (Undefined!4228) (MissingVacant!4228 (index!19103 (_ BitVec 32))) )
))
(declare-fun lt!233269 () SeekEntryResult!4228)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32757 (_ BitVec 32)) SeekEntryResult!4228)

(assert (=> b!510132 (= lt!233269 (seekEntryOrOpen!0 lt!233273 lt!233272 mask!3524))))

(declare-datatypes ((Unit!15706 0))(
  ( (Unit!15707) )
))
(declare-fun lt!233271 () Unit!15706)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15706)

(assert (=> b!510132 (= lt!233271 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun res!311127 () Bool)

(assert (=> start!46086 (=> (not res!311127) (not e!298207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46086 (= res!311127 (validMask!0 mask!3524))))

(assert (=> start!46086 e!298207))

(assert (=> start!46086 true))

(declare-fun array_inv!11528 (array!32757) Bool)

(assert (=> start!46086 (array_inv!11528 a!3235)))

(declare-fun b!510133 () Bool)

(declare-fun res!311126 () Bool)

(assert (=> b!510133 (=> (not res!311126) (not e!298207))))

(declare-fun arrayContainsKey!0 (array!32757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510133 (= res!311126 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510134 () Bool)

(declare-fun res!311132 () Bool)

(assert (=> b!510134 (=> (not res!311132) (not e!298209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32757 (_ BitVec 32)) Bool)

(assert (=> b!510134 (= res!311132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510135 () Bool)

(assert (=> b!510135 (= e!298207 e!298209)))

(declare-fun res!311130 () Bool)

(assert (=> b!510135 (=> (not res!311130) (not e!298209))))

(declare-fun lt!233268 () SeekEntryResult!4228)

(assert (=> b!510135 (= res!311130 (or (= lt!233268 (MissingZero!4228 i!1204)) (= lt!233268 (MissingVacant!4228 i!1204))))))

(assert (=> b!510135 (= lt!233268 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510136 () Bool)

(declare-fun res!311129 () Bool)

(assert (=> b!510136 (=> (not res!311129) (not e!298207))))

(assert (=> b!510136 (= res!311129 (and (= (size!16118 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16118 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16118 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510137 () Bool)

(assert (=> b!510137 (= e!298209 (not e!298210))))

(declare-fun res!311128 () Bool)

(assert (=> b!510137 (=> res!311128 e!298210)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32757 (_ BitVec 32)) SeekEntryResult!4228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510137 (= res!311128 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15754 a!3235) j!176) mask!3524) (select (arr!15754 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233273 mask!3524) lt!233273 lt!233272 mask!3524))))))

(assert (=> b!510137 (= lt!233273 (select (store (arr!15754 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510137 (= lt!233272 (array!32758 (store (arr!15754 a!3235) i!1204 k0!2280) (size!16118 a!3235)))))

(assert (=> b!510137 (= lt!233269 (Found!4228 j!176))))

(assert (=> b!510137 (= lt!233269 (seekEntryOrOpen!0 (select (arr!15754 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510137 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233270 () Unit!15706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15706)

(assert (=> b!510137 (= lt!233270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46086 res!311127) b!510136))

(assert (= (and b!510136 res!311129) b!510130))

(assert (= (and b!510130 res!311125) b!510129))

(assert (= (and b!510129 res!311124) b!510133))

(assert (= (and b!510133 res!311126) b!510135))

(assert (= (and b!510135 res!311130) b!510134))

(assert (= (and b!510134 res!311132) b!510131))

(assert (= (and b!510131 res!311131) b!510137))

(assert (= (and b!510137 (not res!311128)) b!510132))

(declare-fun m!491375 () Bool)

(assert (=> b!510129 m!491375))

(declare-fun m!491377 () Bool)

(assert (=> start!46086 m!491377))

(declare-fun m!491379 () Bool)

(assert (=> start!46086 m!491379))

(declare-fun m!491381 () Bool)

(assert (=> b!510131 m!491381))

(declare-fun m!491383 () Bool)

(assert (=> b!510135 m!491383))

(declare-fun m!491385 () Bool)

(assert (=> b!510137 m!491385))

(declare-fun m!491387 () Bool)

(assert (=> b!510137 m!491387))

(declare-fun m!491389 () Bool)

(assert (=> b!510137 m!491389))

(declare-fun m!491391 () Bool)

(assert (=> b!510137 m!491391))

(declare-fun m!491393 () Bool)

(assert (=> b!510137 m!491393))

(declare-fun m!491395 () Bool)

(assert (=> b!510137 m!491395))

(declare-fun m!491397 () Bool)

(assert (=> b!510137 m!491397))

(assert (=> b!510137 m!491395))

(assert (=> b!510137 m!491393))

(assert (=> b!510137 m!491395))

(declare-fun m!491399 () Bool)

(assert (=> b!510137 m!491399))

(assert (=> b!510137 m!491395))

(declare-fun m!491401 () Bool)

(assert (=> b!510137 m!491401))

(assert (=> b!510137 m!491385))

(declare-fun m!491403 () Bool)

(assert (=> b!510137 m!491403))

(declare-fun m!491405 () Bool)

(assert (=> b!510132 m!491405))

(declare-fun m!491407 () Bool)

(assert (=> b!510132 m!491407))

(assert (=> b!510130 m!491395))

(assert (=> b!510130 m!491395))

(declare-fun m!491409 () Bool)

(assert (=> b!510130 m!491409))

(declare-fun m!491411 () Bool)

(assert (=> b!510133 m!491411))

(declare-fun m!491413 () Bool)

(assert (=> b!510134 m!491413))

(check-sat (not b!510134) (not b!510132) (not start!46086) (not b!510131) (not b!510130) (not b!510129) (not b!510135) (not b!510133) (not b!510137))
(check-sat)
