; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46080 () Bool)

(assert start!46080)

(declare-fun b!510048 () Bool)

(declare-fun res!311051 () Bool)

(declare-fun e!298173 () Bool)

(assert (=> b!510048 (=> (not res!311051) (not e!298173))))

(declare-datatypes ((array!32751 0))(
  ( (array!32752 (arr!15751 (Array (_ BitVec 32) (_ BitVec 64))) (size!16115 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32751)

(declare-datatypes ((List!9962 0))(
  ( (Nil!9959) (Cons!9958 (h!10835 (_ BitVec 64)) (t!16198 List!9962)) )
))
(declare-fun arrayNoDuplicates!0 (array!32751 (_ BitVec 32) List!9962) Bool)

(assert (=> b!510048 (= res!311051 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9959))))

(declare-fun res!311046 () Bool)

(declare-fun e!298172 () Bool)

(assert (=> start!46080 (=> (not res!311046) (not e!298172))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46080 (= res!311046 (validMask!0 mask!3524))))

(assert (=> start!46080 e!298172))

(assert (=> start!46080 true))

(declare-fun array_inv!11525 (array!32751) Bool)

(assert (=> start!46080 (array_inv!11525 a!3235)))

(declare-fun b!510049 () Bool)

(declare-fun e!298171 () Bool)

(assert (=> b!510049 (= e!298171 true)))

(declare-datatypes ((SeekEntryResult!4225 0))(
  ( (MissingZero!4225 (index!19088 (_ BitVec 32))) (Found!4225 (index!19089 (_ BitVec 32))) (Intermediate!4225 (undefined!5037 Bool) (index!19090 (_ BitVec 32)) (x!48077 (_ BitVec 32))) (Undefined!4225) (MissingVacant!4225 (index!19091 (_ BitVec 32))) )
))
(declare-fun lt!233216 () SeekEntryResult!4225)

(declare-fun lt!233219 () (_ BitVec 64))

(declare-fun lt!233217 () array!32751)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32751 (_ BitVec 32)) SeekEntryResult!4225)

(assert (=> b!510049 (= lt!233216 (seekEntryOrOpen!0 lt!233219 lt!233217 mask!3524))))

(declare-datatypes ((Unit!15700 0))(
  ( (Unit!15701) )
))
(declare-fun lt!233214 () Unit!15700)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32751 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15700)

(assert (=> b!510049 (= lt!233214 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!510050 () Bool)

(declare-fun res!311050 () Bool)

(assert (=> b!510050 (=> (not res!311050) (not e!298172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510050 (= res!311050 (validKeyInArray!0 (select (arr!15751 a!3235) j!176)))))

(declare-fun b!510051 () Bool)

(declare-fun res!311048 () Bool)

(assert (=> b!510051 (=> (not res!311048) (not e!298172))))

(declare-fun arrayContainsKey!0 (array!32751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510051 (= res!311048 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510052 () Bool)

(declare-fun res!311049 () Bool)

(assert (=> b!510052 (=> (not res!311049) (not e!298172))))

(assert (=> b!510052 (= res!311049 (and (= (size!16115 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16115 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16115 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510053 () Bool)

(declare-fun res!311045 () Bool)

(assert (=> b!510053 (=> (not res!311045) (not e!298173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32751 (_ BitVec 32)) Bool)

(assert (=> b!510053 (= res!311045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510054 () Bool)

(assert (=> b!510054 (= e!298173 (not e!298171))))

(declare-fun res!311047 () Bool)

(assert (=> b!510054 (=> res!311047 e!298171)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32751 (_ BitVec 32)) SeekEntryResult!4225)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510054 (= res!311047 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15751 a!3235) j!176) mask!3524) (select (arr!15751 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233219 mask!3524) lt!233219 lt!233217 mask!3524))))))

(assert (=> b!510054 (= lt!233219 (select (store (arr!15751 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510054 (= lt!233217 (array!32752 (store (arr!15751 a!3235) i!1204 k0!2280) (size!16115 a!3235)))))

(assert (=> b!510054 (= lt!233216 (Found!4225 j!176))))

(assert (=> b!510054 (= lt!233216 (seekEntryOrOpen!0 (select (arr!15751 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510054 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233215 () Unit!15700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15700)

(assert (=> b!510054 (= lt!233215 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510055 () Bool)

(declare-fun res!311043 () Bool)

(assert (=> b!510055 (=> (not res!311043) (not e!298172))))

(assert (=> b!510055 (= res!311043 (validKeyInArray!0 k0!2280))))

(declare-fun b!510056 () Bool)

(assert (=> b!510056 (= e!298172 e!298173)))

(declare-fun res!311044 () Bool)

(assert (=> b!510056 (=> (not res!311044) (not e!298173))))

(declare-fun lt!233218 () SeekEntryResult!4225)

(assert (=> b!510056 (= res!311044 (or (= lt!233218 (MissingZero!4225 i!1204)) (= lt!233218 (MissingVacant!4225 i!1204))))))

(assert (=> b!510056 (= lt!233218 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46080 res!311046) b!510052))

(assert (= (and b!510052 res!311049) b!510050))

(assert (= (and b!510050 res!311050) b!510055))

(assert (= (and b!510055 res!311043) b!510051))

(assert (= (and b!510051 res!311048) b!510056))

(assert (= (and b!510056 res!311044) b!510053))

(assert (= (and b!510053 res!311045) b!510048))

(assert (= (and b!510048 res!311051) b!510054))

(assert (= (and b!510054 (not res!311047)) b!510049))

(declare-fun m!491255 () Bool)

(assert (=> b!510049 m!491255))

(declare-fun m!491257 () Bool)

(assert (=> b!510049 m!491257))

(declare-fun m!491259 () Bool)

(assert (=> b!510054 m!491259))

(declare-fun m!491261 () Bool)

(assert (=> b!510054 m!491261))

(declare-fun m!491263 () Bool)

(assert (=> b!510054 m!491263))

(declare-fun m!491265 () Bool)

(assert (=> b!510054 m!491265))

(declare-fun m!491267 () Bool)

(assert (=> b!510054 m!491267))

(declare-fun m!491269 () Bool)

(assert (=> b!510054 m!491269))

(declare-fun m!491271 () Bool)

(assert (=> b!510054 m!491271))

(assert (=> b!510054 m!491269))

(assert (=> b!510054 m!491267))

(assert (=> b!510054 m!491259))

(declare-fun m!491273 () Bool)

(assert (=> b!510054 m!491273))

(assert (=> b!510054 m!491269))

(declare-fun m!491275 () Bool)

(assert (=> b!510054 m!491275))

(assert (=> b!510054 m!491269))

(declare-fun m!491277 () Bool)

(assert (=> b!510054 m!491277))

(assert (=> b!510050 m!491269))

(assert (=> b!510050 m!491269))

(declare-fun m!491279 () Bool)

(assert (=> b!510050 m!491279))

(declare-fun m!491281 () Bool)

(assert (=> b!510053 m!491281))

(declare-fun m!491283 () Bool)

(assert (=> b!510056 m!491283))

(declare-fun m!491285 () Bool)

(assert (=> b!510051 m!491285))

(declare-fun m!491287 () Bool)

(assert (=> b!510048 m!491287))

(declare-fun m!491289 () Bool)

(assert (=> b!510055 m!491289))

(declare-fun m!491291 () Bool)

(assert (=> start!46080 m!491291))

(declare-fun m!491293 () Bool)

(assert (=> start!46080 m!491293))

(check-sat (not start!46080) (not b!510056) (not b!510048) (not b!510053) (not b!510054) (not b!510051) (not b!510055) (not b!510050) (not b!510049))
(check-sat)
