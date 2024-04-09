; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46106 () Bool)

(assert start!46106)

(declare-fun b!510399 () Bool)

(declare-fun e!298329 () Bool)

(declare-fun e!298327 () Bool)

(assert (=> b!510399 (= e!298329 (not e!298327))))

(declare-fun res!311397 () Bool)

(assert (=> b!510399 (=> res!311397 e!298327)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233453 () (_ BitVec 64))

(declare-datatypes ((array!32777 0))(
  ( (array!32778 (arr!15764 (Array (_ BitVec 32) (_ BitVec 64))) (size!16128 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32777)

(declare-fun lt!233449 () array!32777)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4238 0))(
  ( (MissingZero!4238 (index!19140 (_ BitVec 32))) (Found!4238 (index!19141 (_ BitVec 32))) (Intermediate!4238 (undefined!5050 Bool) (index!19142 (_ BitVec 32)) (x!48122 (_ BitVec 32))) (Undefined!4238) (MissingVacant!4238 (index!19143 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32777 (_ BitVec 32)) SeekEntryResult!4238)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510399 (= res!311397 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15764 a!3235) j!176) mask!3524) (select (arr!15764 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233453 mask!3524) lt!233453 lt!233449 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510399 (= lt!233453 (select (store (arr!15764 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510399 (= lt!233449 (array!32778 (store (arr!15764 a!3235) i!1204 k!2280) (size!16128 a!3235)))))

(declare-fun lt!233448 () SeekEntryResult!4238)

(assert (=> b!510399 (= lt!233448 (Found!4238 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32777 (_ BitVec 32)) SeekEntryResult!4238)

(assert (=> b!510399 (= lt!233448 (seekEntryOrOpen!0 (select (arr!15764 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32777 (_ BitVec 32)) Bool)

(assert (=> b!510399 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15726 0))(
  ( (Unit!15727) )
))
(declare-fun lt!233452 () Unit!15726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15726)

(assert (=> b!510399 (= lt!233452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510400 () Bool)

(declare-fun e!298330 () Bool)

(assert (=> b!510400 (= e!298330 e!298329)))

(declare-fun res!311401 () Bool)

(assert (=> b!510400 (=> (not res!311401) (not e!298329))))

(declare-fun lt!233451 () SeekEntryResult!4238)

(assert (=> b!510400 (= res!311401 (or (= lt!233451 (MissingZero!4238 i!1204)) (= lt!233451 (MissingVacant!4238 i!1204))))))

(assert (=> b!510400 (= lt!233451 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510401 () Bool)

(assert (=> b!510401 (= e!298327 true)))

(assert (=> b!510401 (= lt!233448 (seekEntryOrOpen!0 lt!233453 lt!233449 mask!3524))))

(declare-fun lt!233450 () Unit!15726)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15726)

(assert (=> b!510401 (= lt!233450 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun res!311394 () Bool)

(assert (=> start!46106 (=> (not res!311394) (not e!298330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46106 (= res!311394 (validMask!0 mask!3524))))

(assert (=> start!46106 e!298330))

(assert (=> start!46106 true))

(declare-fun array_inv!11538 (array!32777) Bool)

(assert (=> start!46106 (array_inv!11538 a!3235)))

(declare-fun b!510402 () Bool)

(declare-fun res!311395 () Bool)

(assert (=> b!510402 (=> (not res!311395) (not e!298329))))

(declare-datatypes ((List!9975 0))(
  ( (Nil!9972) (Cons!9971 (h!10848 (_ BitVec 64)) (t!16211 List!9975)) )
))
(declare-fun arrayNoDuplicates!0 (array!32777 (_ BitVec 32) List!9975) Bool)

(assert (=> b!510402 (= res!311395 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9972))))

(declare-fun b!510403 () Bool)

(declare-fun res!311402 () Bool)

(assert (=> b!510403 (=> (not res!311402) (not e!298330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510403 (= res!311402 (validKeyInArray!0 k!2280))))

(declare-fun b!510404 () Bool)

(declare-fun res!311400 () Bool)

(assert (=> b!510404 (=> (not res!311400) (not e!298330))))

(assert (=> b!510404 (= res!311400 (and (= (size!16128 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16128 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16128 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510405 () Bool)

(declare-fun res!311398 () Bool)

(assert (=> b!510405 (=> (not res!311398) (not e!298329))))

(assert (=> b!510405 (= res!311398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510406 () Bool)

(declare-fun res!311399 () Bool)

(assert (=> b!510406 (=> (not res!311399) (not e!298330))))

(declare-fun arrayContainsKey!0 (array!32777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510406 (= res!311399 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510407 () Bool)

(declare-fun res!311396 () Bool)

(assert (=> b!510407 (=> (not res!311396) (not e!298330))))

(assert (=> b!510407 (= res!311396 (validKeyInArray!0 (select (arr!15764 a!3235) j!176)))))

(assert (= (and start!46106 res!311394) b!510404))

(assert (= (and b!510404 res!311400) b!510407))

(assert (= (and b!510407 res!311396) b!510403))

(assert (= (and b!510403 res!311402) b!510406))

(assert (= (and b!510406 res!311399) b!510400))

(assert (= (and b!510400 res!311401) b!510405))

(assert (= (and b!510405 res!311398) b!510402))

(assert (= (and b!510402 res!311395) b!510399))

(assert (= (and b!510399 (not res!311397)) b!510401))

(declare-fun m!491775 () Bool)

(assert (=> b!510405 m!491775))

(declare-fun m!491777 () Bool)

(assert (=> b!510403 m!491777))

(declare-fun m!491779 () Bool)

(assert (=> start!46106 m!491779))

(declare-fun m!491781 () Bool)

(assert (=> start!46106 m!491781))

(declare-fun m!491783 () Bool)

(assert (=> b!510406 m!491783))

(declare-fun m!491785 () Bool)

(assert (=> b!510402 m!491785))

(declare-fun m!491787 () Bool)

(assert (=> b!510407 m!491787))

(assert (=> b!510407 m!491787))

(declare-fun m!491789 () Bool)

(assert (=> b!510407 m!491789))

(declare-fun m!491791 () Bool)

(assert (=> b!510400 m!491791))

(declare-fun m!491793 () Bool)

(assert (=> b!510401 m!491793))

(declare-fun m!491795 () Bool)

(assert (=> b!510401 m!491795))

(declare-fun m!491797 () Bool)

(assert (=> b!510399 m!491797))

(declare-fun m!491799 () Bool)

(assert (=> b!510399 m!491799))

(declare-fun m!491801 () Bool)

(assert (=> b!510399 m!491801))

(declare-fun m!491803 () Bool)

(assert (=> b!510399 m!491803))

(assert (=> b!510399 m!491787))

(declare-fun m!491805 () Bool)

(assert (=> b!510399 m!491805))

(assert (=> b!510399 m!491787))

(assert (=> b!510399 m!491803))

(assert (=> b!510399 m!491787))

(declare-fun m!491807 () Bool)

(assert (=> b!510399 m!491807))

(assert (=> b!510399 m!491787))

(declare-fun m!491809 () Bool)

(assert (=> b!510399 m!491809))

(assert (=> b!510399 m!491807))

(declare-fun m!491811 () Bool)

(assert (=> b!510399 m!491811))

(declare-fun m!491813 () Bool)

(assert (=> b!510399 m!491813))

(push 1)

