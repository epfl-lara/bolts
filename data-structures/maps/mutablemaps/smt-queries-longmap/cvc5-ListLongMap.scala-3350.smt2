; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46102 () Bool)

(assert start!46102)

(declare-fun b!510345 () Bool)

(declare-fun res!311346 () Bool)

(declare-fun e!298306 () Bool)

(assert (=> b!510345 (=> (not res!311346) (not e!298306))))

(declare-datatypes ((array!32773 0))(
  ( (array!32774 (arr!15762 (Array (_ BitVec 32) (_ BitVec 64))) (size!16126 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32773)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510345 (= res!311346 (validKeyInArray!0 (select (arr!15762 a!3235) j!176)))))

(declare-fun b!510346 () Bool)

(declare-fun res!311347 () Bool)

(declare-fun e!298304 () Bool)

(assert (=> b!510346 (=> (not res!311347) (not e!298304))))

(declare-datatypes ((List!9973 0))(
  ( (Nil!9970) (Cons!9969 (h!10846 (_ BitVec 64)) (t!16209 List!9973)) )
))
(declare-fun arrayNoDuplicates!0 (array!32773 (_ BitVec 32) List!9973) Bool)

(assert (=> b!510346 (= res!311347 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9970))))

(declare-fun b!510347 () Bool)

(declare-fun res!311342 () Bool)

(assert (=> b!510347 (=> (not res!311342) (not e!298306))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510347 (= res!311342 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510348 () Bool)

(declare-fun res!311343 () Bool)

(assert (=> b!510348 (=> (not res!311343) (not e!298306))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510348 (= res!311343 (and (= (size!16126 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16126 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16126 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!311345 () Bool)

(assert (=> start!46102 (=> (not res!311345) (not e!298306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46102 (= res!311345 (validMask!0 mask!3524))))

(assert (=> start!46102 e!298306))

(assert (=> start!46102 true))

(declare-fun array_inv!11536 (array!32773) Bool)

(assert (=> start!46102 (array_inv!11536 a!3235)))

(declare-fun b!510349 () Bool)

(declare-fun res!311340 () Bool)

(assert (=> b!510349 (=> (not res!311340) (not e!298306))))

(assert (=> b!510349 (= res!311340 (validKeyInArray!0 k!2280))))

(declare-fun b!510350 () Bool)

(declare-fun e!298303 () Bool)

(assert (=> b!510350 (= e!298304 (not e!298303))))

(declare-fun res!311348 () Bool)

(assert (=> b!510350 (=> res!311348 e!298303)))

(declare-fun lt!233414 () array!32773)

(declare-fun lt!233412 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4236 0))(
  ( (MissingZero!4236 (index!19132 (_ BitVec 32))) (Found!4236 (index!19133 (_ BitVec 32))) (Intermediate!4236 (undefined!5048 Bool) (index!19134 (_ BitVec 32)) (x!48120 (_ BitVec 32))) (Undefined!4236) (MissingVacant!4236 (index!19135 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32773 (_ BitVec 32)) SeekEntryResult!4236)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510350 (= res!311348 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15762 a!3235) j!176) mask!3524) (select (arr!15762 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233412 mask!3524) lt!233412 lt!233414 mask!3524))))))

(assert (=> b!510350 (= lt!233412 (select (store (arr!15762 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510350 (= lt!233414 (array!32774 (store (arr!15762 a!3235) i!1204 k!2280) (size!16126 a!3235)))))

(declare-fun lt!233415 () SeekEntryResult!4236)

(assert (=> b!510350 (= lt!233415 (Found!4236 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32773 (_ BitVec 32)) SeekEntryResult!4236)

(assert (=> b!510350 (= lt!233415 (seekEntryOrOpen!0 (select (arr!15762 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32773 (_ BitVec 32)) Bool)

(assert (=> b!510350 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15722 0))(
  ( (Unit!15723) )
))
(declare-fun lt!233417 () Unit!15722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15722)

(assert (=> b!510350 (= lt!233417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510351 () Bool)

(assert (=> b!510351 (= e!298303 true)))

(assert (=> b!510351 (= lt!233415 (seekEntryOrOpen!0 lt!233412 lt!233414 mask!3524))))

(declare-fun lt!233416 () Unit!15722)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32773 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15722)

(assert (=> b!510351 (= lt!233416 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510352 () Bool)

(assert (=> b!510352 (= e!298306 e!298304)))

(declare-fun res!311344 () Bool)

(assert (=> b!510352 (=> (not res!311344) (not e!298304))))

(declare-fun lt!233413 () SeekEntryResult!4236)

(assert (=> b!510352 (= res!311344 (or (= lt!233413 (MissingZero!4236 i!1204)) (= lt!233413 (MissingVacant!4236 i!1204))))))

(assert (=> b!510352 (= lt!233413 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510353 () Bool)

(declare-fun res!311341 () Bool)

(assert (=> b!510353 (=> (not res!311341) (not e!298304))))

(assert (=> b!510353 (= res!311341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46102 res!311345) b!510348))

(assert (= (and b!510348 res!311343) b!510345))

(assert (= (and b!510345 res!311346) b!510349))

(assert (= (and b!510349 res!311340) b!510347))

(assert (= (and b!510347 res!311342) b!510352))

(assert (= (and b!510352 res!311344) b!510353))

(assert (= (and b!510353 res!311341) b!510346))

(assert (= (and b!510346 res!311347) b!510350))

(assert (= (and b!510350 (not res!311348)) b!510351))

(declare-fun m!491695 () Bool)

(assert (=> b!510346 m!491695))

(declare-fun m!491697 () Bool)

(assert (=> b!510352 m!491697))

(declare-fun m!491699 () Bool)

(assert (=> b!510351 m!491699))

(declare-fun m!491701 () Bool)

(assert (=> b!510351 m!491701))

(declare-fun m!491703 () Bool)

(assert (=> b!510347 m!491703))

(declare-fun m!491705 () Bool)

(assert (=> b!510350 m!491705))

(declare-fun m!491707 () Bool)

(assert (=> b!510350 m!491707))

(declare-fun m!491709 () Bool)

(assert (=> b!510350 m!491709))

(declare-fun m!491711 () Bool)

(assert (=> b!510350 m!491711))

(declare-fun m!491713 () Bool)

(assert (=> b!510350 m!491713))

(assert (=> b!510350 m!491711))

(assert (=> b!510350 m!491711))

(declare-fun m!491715 () Bool)

(assert (=> b!510350 m!491715))

(assert (=> b!510350 m!491713))

(assert (=> b!510350 m!491711))

(declare-fun m!491717 () Bool)

(assert (=> b!510350 m!491717))

(declare-fun m!491719 () Bool)

(assert (=> b!510350 m!491719))

(declare-fun m!491721 () Bool)

(assert (=> b!510350 m!491721))

(declare-fun m!491723 () Bool)

(assert (=> b!510350 m!491723))

(assert (=> b!510350 m!491719))

(declare-fun m!491725 () Bool)

(assert (=> start!46102 m!491725))

(declare-fun m!491727 () Bool)

(assert (=> start!46102 m!491727))

(assert (=> b!510345 m!491711))

(assert (=> b!510345 m!491711))

(declare-fun m!491729 () Bool)

(assert (=> b!510345 m!491729))

(declare-fun m!491731 () Bool)

(assert (=> b!510353 m!491731))

(declare-fun m!491733 () Bool)

(assert (=> b!510349 m!491733))

(push 1)

