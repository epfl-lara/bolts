; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46090 () Bool)

(assert start!46090)

(declare-fun b!510183 () Bool)

(declare-fun res!311185 () Bool)

(declare-fun e!298231 () Bool)

(assert (=> b!510183 (=> (not res!311185) (not e!298231))))

(declare-datatypes ((array!32761 0))(
  ( (array!32762 (arr!15756 (Array (_ BitVec 32) (_ BitVec 64))) (size!16120 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32761)

(declare-datatypes ((List!9967 0))(
  ( (Nil!9964) (Cons!9963 (h!10840 (_ BitVec 64)) (t!16203 List!9967)) )
))
(declare-fun arrayNoDuplicates!0 (array!32761 (_ BitVec 32) List!9967) Bool)

(assert (=> b!510183 (= res!311185 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9964))))

(declare-fun res!311182 () Bool)

(declare-fun e!298233 () Bool)

(assert (=> start!46090 (=> (not res!311182) (not e!298233))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46090 (= res!311182 (validMask!0 mask!3524))))

(assert (=> start!46090 e!298233))

(assert (=> start!46090 true))

(declare-fun array_inv!11530 (array!32761) Bool)

(assert (=> start!46090 (array_inv!11530 a!3235)))

(declare-fun b!510184 () Bool)

(declare-fun res!311184 () Bool)

(assert (=> b!510184 (=> (not res!311184) (not e!298233))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510184 (= res!311184 (validKeyInArray!0 k!2280))))

(declare-fun b!510185 () Bool)

(declare-fun e!298232 () Bool)

(assert (=> b!510185 (= e!298231 (not e!298232))))

(declare-fun res!311186 () Bool)

(assert (=> b!510185 (=> res!311186 e!298232)))

(declare-fun lt!233308 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233305 () array!32761)

(declare-datatypes ((SeekEntryResult!4230 0))(
  ( (MissingZero!4230 (index!19108 (_ BitVec 32))) (Found!4230 (index!19109 (_ BitVec 32))) (Intermediate!4230 (undefined!5042 Bool) (index!19110 (_ BitVec 32)) (x!48098 (_ BitVec 32))) (Undefined!4230) (MissingVacant!4230 (index!19111 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32761 (_ BitVec 32)) SeekEntryResult!4230)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510185 (= res!311186 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15756 a!3235) j!176) mask!3524) (select (arr!15756 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233308 mask!3524) lt!233308 lt!233305 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510185 (= lt!233308 (select (store (arr!15756 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510185 (= lt!233305 (array!32762 (store (arr!15756 a!3235) i!1204 k!2280) (size!16120 a!3235)))))

(declare-fun lt!233304 () SeekEntryResult!4230)

(assert (=> b!510185 (= lt!233304 (Found!4230 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32761 (_ BitVec 32)) SeekEntryResult!4230)

(assert (=> b!510185 (= lt!233304 (seekEntryOrOpen!0 (select (arr!15756 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32761 (_ BitVec 32)) Bool)

(assert (=> b!510185 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15710 0))(
  ( (Unit!15711) )
))
(declare-fun lt!233309 () Unit!15710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15710)

(assert (=> b!510185 (= lt!233309 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510186 () Bool)

(assert (=> b!510186 (= e!298233 e!298231)))

(declare-fun res!311179 () Bool)

(assert (=> b!510186 (=> (not res!311179) (not e!298231))))

(declare-fun lt!233306 () SeekEntryResult!4230)

(assert (=> b!510186 (= res!311179 (or (= lt!233306 (MissingZero!4230 i!1204)) (= lt!233306 (MissingVacant!4230 i!1204))))))

(assert (=> b!510186 (= lt!233306 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510187 () Bool)

(declare-fun res!311181 () Bool)

(assert (=> b!510187 (=> (not res!311181) (not e!298233))))

(assert (=> b!510187 (= res!311181 (and (= (size!16120 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16120 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16120 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510188 () Bool)

(declare-fun res!311180 () Bool)

(assert (=> b!510188 (=> (not res!311180) (not e!298233))))

(declare-fun arrayContainsKey!0 (array!32761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510188 (= res!311180 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510189 () Bool)

(declare-fun res!311178 () Bool)

(assert (=> b!510189 (=> (not res!311178) (not e!298231))))

(assert (=> b!510189 (= res!311178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510190 () Bool)

(assert (=> b!510190 (= e!298232 true)))

(assert (=> b!510190 (= lt!233304 (seekEntryOrOpen!0 lt!233308 lt!233305 mask!3524))))

(declare-fun lt!233307 () Unit!15710)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32761 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15710)

(assert (=> b!510190 (= lt!233307 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510191 () Bool)

(declare-fun res!311183 () Bool)

(assert (=> b!510191 (=> (not res!311183) (not e!298233))))

(assert (=> b!510191 (= res!311183 (validKeyInArray!0 (select (arr!15756 a!3235) j!176)))))

(assert (= (and start!46090 res!311182) b!510187))

(assert (= (and b!510187 res!311181) b!510191))

(assert (= (and b!510191 res!311183) b!510184))

(assert (= (and b!510184 res!311184) b!510188))

(assert (= (and b!510188 res!311180) b!510186))

(assert (= (and b!510186 res!311179) b!510189))

(assert (= (and b!510189 res!311178) b!510183))

(assert (= (and b!510183 res!311185) b!510185))

(assert (= (and b!510185 (not res!311186)) b!510190))

(declare-fun m!491455 () Bool)

(assert (=> b!510183 m!491455))

(declare-fun m!491457 () Bool)

(assert (=> b!510188 m!491457))

(declare-fun m!491459 () Bool)

(assert (=> b!510184 m!491459))

(declare-fun m!491461 () Bool)

(assert (=> start!46090 m!491461))

(declare-fun m!491463 () Bool)

(assert (=> start!46090 m!491463))

(declare-fun m!491465 () Bool)

(assert (=> b!510186 m!491465))

(declare-fun m!491467 () Bool)

(assert (=> b!510185 m!491467))

(declare-fun m!491469 () Bool)

(assert (=> b!510185 m!491469))

(declare-fun m!491471 () Bool)

(assert (=> b!510185 m!491471))

(declare-fun m!491473 () Bool)

(assert (=> b!510185 m!491473))

(assert (=> b!510185 m!491467))

(declare-fun m!491475 () Bool)

(assert (=> b!510185 m!491475))

(declare-fun m!491477 () Bool)

(assert (=> b!510185 m!491477))

(declare-fun m!491479 () Bool)

(assert (=> b!510185 m!491479))

(declare-fun m!491481 () Bool)

(assert (=> b!510185 m!491481))

(assert (=> b!510185 m!491479))

(assert (=> b!510185 m!491477))

(assert (=> b!510185 m!491479))

(declare-fun m!491483 () Bool)

(assert (=> b!510185 m!491483))

(assert (=> b!510185 m!491479))

(declare-fun m!491485 () Bool)

(assert (=> b!510185 m!491485))

(assert (=> b!510191 m!491479))

(assert (=> b!510191 m!491479))

(declare-fun m!491487 () Bool)

(assert (=> b!510191 m!491487))

(declare-fun m!491489 () Bool)

(assert (=> b!510189 m!491489))

(declare-fun m!491491 () Bool)

(assert (=> b!510190 m!491491))

(declare-fun m!491493 () Bool)

(assert (=> b!510190 m!491493))

(push 1)

