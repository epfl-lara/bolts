; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46084 () Bool)

(assert start!46084)

(declare-fun b!510102 () Bool)

(declare-fun res!311102 () Bool)

(declare-fun e!298196 () Bool)

(assert (=> b!510102 (=> (not res!311102) (not e!298196))))

(declare-datatypes ((array!32755 0))(
  ( (array!32756 (arr!15753 (Array (_ BitVec 32) (_ BitVec 64))) (size!16117 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32755)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32755 (_ BitVec 32)) Bool)

(assert (=> b!510102 (= res!311102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510103 () Bool)

(declare-fun res!311101 () Bool)

(declare-fun e!298198 () Bool)

(assert (=> b!510103 (=> (not res!311101) (not e!298198))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510103 (= res!311101 (and (= (size!16117 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16117 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16117 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510104 () Bool)

(declare-fun res!311104 () Bool)

(assert (=> b!510104 (=> (not res!311104) (not e!298198))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510104 (= res!311104 (validKeyInArray!0 k!2280))))

(declare-fun b!510105 () Bool)

(declare-fun e!298195 () Bool)

(assert (=> b!510105 (= e!298196 (not e!298195))))

(declare-fun res!311105 () Bool)

(assert (=> b!510105 (=> res!311105 e!298195)))

(declare-fun lt!233251 () array!32755)

(declare-fun lt!233253 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4227 0))(
  ( (MissingZero!4227 (index!19096 (_ BitVec 32))) (Found!4227 (index!19097 (_ BitVec 32))) (Intermediate!4227 (undefined!5039 Bool) (index!19098 (_ BitVec 32)) (x!48087 (_ BitVec 32))) (Undefined!4227) (MissingVacant!4227 (index!19099 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32755 (_ BitVec 32)) SeekEntryResult!4227)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510105 (= res!311105 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15753 a!3235) j!176) mask!3524) (select (arr!15753 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233253 mask!3524) lt!233253 lt!233251 mask!3524))))))

(assert (=> b!510105 (= lt!233253 (select (store (arr!15753 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510105 (= lt!233251 (array!32756 (store (arr!15753 a!3235) i!1204 k!2280) (size!16117 a!3235)))))

(declare-fun lt!233255 () SeekEntryResult!4227)

(assert (=> b!510105 (= lt!233255 (Found!4227 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32755 (_ BitVec 32)) SeekEntryResult!4227)

(assert (=> b!510105 (= lt!233255 (seekEntryOrOpen!0 (select (arr!15753 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510105 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15704 0))(
  ( (Unit!15705) )
))
(declare-fun lt!233254 () Unit!15704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15704)

(assert (=> b!510105 (= lt!233254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510106 () Bool)

(assert (=> b!510106 (= e!298195 true)))

(assert (=> b!510106 (= lt!233255 (seekEntryOrOpen!0 lt!233253 lt!233251 mask!3524))))

(declare-fun lt!233250 () Unit!15704)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15704)

(assert (=> b!510106 (= lt!233250 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510107 () Bool)

(declare-fun res!311100 () Bool)

(assert (=> b!510107 (=> (not res!311100) (not e!298198))))

(declare-fun arrayContainsKey!0 (array!32755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510107 (= res!311100 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510108 () Bool)

(declare-fun res!311097 () Bool)

(assert (=> b!510108 (=> (not res!311097) (not e!298196))))

(declare-datatypes ((List!9964 0))(
  ( (Nil!9961) (Cons!9960 (h!10837 (_ BitVec 64)) (t!16200 List!9964)) )
))
(declare-fun arrayNoDuplicates!0 (array!32755 (_ BitVec 32) List!9964) Bool)

(assert (=> b!510108 (= res!311097 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9961))))

(declare-fun res!311098 () Bool)

(assert (=> start!46084 (=> (not res!311098) (not e!298198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46084 (= res!311098 (validMask!0 mask!3524))))

(assert (=> start!46084 e!298198))

(assert (=> start!46084 true))

(declare-fun array_inv!11527 (array!32755) Bool)

(assert (=> start!46084 (array_inv!11527 a!3235)))

(declare-fun b!510109 () Bool)

(declare-fun res!311099 () Bool)

(assert (=> b!510109 (=> (not res!311099) (not e!298198))))

(assert (=> b!510109 (= res!311099 (validKeyInArray!0 (select (arr!15753 a!3235) j!176)))))

(declare-fun b!510110 () Bool)

(assert (=> b!510110 (= e!298198 e!298196)))

(declare-fun res!311103 () Bool)

(assert (=> b!510110 (=> (not res!311103) (not e!298196))))

(declare-fun lt!233252 () SeekEntryResult!4227)

(assert (=> b!510110 (= res!311103 (or (= lt!233252 (MissingZero!4227 i!1204)) (= lt!233252 (MissingVacant!4227 i!1204))))))

(assert (=> b!510110 (= lt!233252 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!46084 res!311098) b!510103))

(assert (= (and b!510103 res!311101) b!510109))

(assert (= (and b!510109 res!311099) b!510104))

(assert (= (and b!510104 res!311104) b!510107))

(assert (= (and b!510107 res!311100) b!510110))

(assert (= (and b!510110 res!311103) b!510102))

(assert (= (and b!510102 res!311102) b!510108))

(assert (= (and b!510108 res!311097) b!510105))

(assert (= (and b!510105 (not res!311105)) b!510106))

(declare-fun m!491335 () Bool)

(assert (=> b!510105 m!491335))

(declare-fun m!491337 () Bool)

(assert (=> b!510105 m!491337))

(declare-fun m!491339 () Bool)

(assert (=> b!510105 m!491339))

(declare-fun m!491341 () Bool)

(assert (=> b!510105 m!491341))

(declare-fun m!491343 () Bool)

(assert (=> b!510105 m!491343))

(declare-fun m!491345 () Bool)

(assert (=> b!510105 m!491345))

(declare-fun m!491347 () Bool)

(assert (=> b!510105 m!491347))

(declare-fun m!491349 () Bool)

(assert (=> b!510105 m!491349))

(assert (=> b!510105 m!491335))

(assert (=> b!510105 m!491347))

(assert (=> b!510105 m!491345))

(assert (=> b!510105 m!491347))

(declare-fun m!491351 () Bool)

(assert (=> b!510105 m!491351))

(assert (=> b!510105 m!491347))

(declare-fun m!491353 () Bool)

(assert (=> b!510105 m!491353))

(declare-fun m!491355 () Bool)

(assert (=> b!510107 m!491355))

(declare-fun m!491357 () Bool)

(assert (=> start!46084 m!491357))

(declare-fun m!491359 () Bool)

(assert (=> start!46084 m!491359))

(declare-fun m!491361 () Bool)

(assert (=> b!510108 m!491361))

(declare-fun m!491363 () Bool)

(assert (=> b!510110 m!491363))

(declare-fun m!491365 () Bool)

(assert (=> b!510106 m!491365))

(declare-fun m!491367 () Bool)

(assert (=> b!510106 m!491367))

(assert (=> b!510109 m!491347))

(assert (=> b!510109 m!491347))

(declare-fun m!491369 () Bool)

(assert (=> b!510109 m!491369))

(declare-fun m!491371 () Bool)

(assert (=> b!510102 m!491371))

(declare-fun m!491373 () Bool)

(assert (=> b!510104 m!491373))

(push 1)

