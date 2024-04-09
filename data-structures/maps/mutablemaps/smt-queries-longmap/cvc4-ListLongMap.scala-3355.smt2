; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46136 () Bool)

(assert start!46136)

(declare-fun b!510804 () Bool)

(declare-fun res!311806 () Bool)

(declare-fun e!298509 () Bool)

(assert (=> b!510804 (=> (not res!311806) (not e!298509))))

(declare-datatypes ((array!32807 0))(
  ( (array!32808 (arr!15779 (Array (_ BitVec 32) (_ BitVec 64))) (size!16143 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32807)

(declare-datatypes ((List!9990 0))(
  ( (Nil!9987) (Cons!9986 (h!10863 (_ BitVec 64)) (t!16226 List!9990)) )
))
(declare-fun arrayNoDuplicates!0 (array!32807 (_ BitVec 32) List!9990) Bool)

(assert (=> b!510804 (= res!311806 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9987))))

(declare-fun b!510805 () Bool)

(declare-fun res!311803 () Bool)

(declare-fun e!298510 () Bool)

(assert (=> b!510805 (=> (not res!311803) (not e!298510))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510805 (= res!311803 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510806 () Bool)

(declare-fun res!311802 () Bool)

(assert (=> b!510806 (=> (not res!311802) (not e!298510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510806 (= res!311802 (validKeyInArray!0 k!2280))))

(declare-fun b!510807 () Bool)

(declare-fun res!311807 () Bool)

(assert (=> b!510807 (=> (not res!311807) (not e!298510))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510807 (= res!311807 (and (= (size!16143 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16143 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16143 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!298507 () Bool)

(declare-fun b!510809 () Bool)

(declare-datatypes ((SeekEntryResult!4253 0))(
  ( (MissingZero!4253 (index!19200 (_ BitVec 32))) (Found!4253 (index!19201 (_ BitVec 32))) (Intermediate!4253 (undefined!5065 Bool) (index!19202 (_ BitVec 32)) (x!48177 (_ BitVec 32))) (Undefined!4253) (MissingVacant!4253 (index!19203 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32807 (_ BitVec 32)) SeekEntryResult!4253)

(assert (=> b!510809 (= e!298507 (= (seekEntryOrOpen!0 (select (arr!15779 a!3235) j!176) a!3235 mask!3524) (Found!4253 j!176)))))

(declare-fun b!510810 () Bool)

(declare-fun res!311800 () Bool)

(assert (=> b!510810 (=> (not res!311800) (not e!298509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32807 (_ BitVec 32)) Bool)

(assert (=> b!510810 (= res!311800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510811 () Bool)

(assert (=> b!510811 (= e!298510 e!298509)))

(declare-fun res!311804 () Bool)

(assert (=> b!510811 (=> (not res!311804) (not e!298509))))

(declare-fun lt!233723 () SeekEntryResult!4253)

(assert (=> b!510811 (= res!311804 (or (= lt!233723 (MissingZero!4253 i!1204)) (= lt!233723 (MissingVacant!4253 i!1204))))))

(assert (=> b!510811 (= lt!233723 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510812 () Bool)

(assert (=> b!510812 (= e!298509 (not true))))

(declare-fun lt!233721 () (_ BitVec 32))

(declare-fun lt!233722 () SeekEntryResult!4253)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32807 (_ BitVec 32)) SeekEntryResult!4253)

(assert (=> b!510812 (= lt!233722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233721 (select (store (arr!15779 a!3235) i!1204 k!2280) j!176) (array!32808 (store (arr!15779 a!3235) i!1204 k!2280) (size!16143 a!3235)) mask!3524))))

(declare-fun lt!233719 () SeekEntryResult!4253)

(declare-fun lt!233720 () (_ BitVec 32))

(assert (=> b!510812 (= lt!233719 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233720 (select (arr!15779 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510812 (= lt!233721 (toIndex!0 (select (store (arr!15779 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510812 (= lt!233720 (toIndex!0 (select (arr!15779 a!3235) j!176) mask!3524))))

(assert (=> b!510812 e!298507))

(declare-fun res!311805 () Bool)

(assert (=> b!510812 (=> (not res!311805) (not e!298507))))

(assert (=> b!510812 (= res!311805 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15756 0))(
  ( (Unit!15757) )
))
(declare-fun lt!233718 () Unit!15756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15756)

(assert (=> b!510812 (= lt!233718 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510808 () Bool)

(declare-fun res!311799 () Bool)

(assert (=> b!510808 (=> (not res!311799) (not e!298510))))

(assert (=> b!510808 (= res!311799 (validKeyInArray!0 (select (arr!15779 a!3235) j!176)))))

(declare-fun res!311801 () Bool)

(assert (=> start!46136 (=> (not res!311801) (not e!298510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46136 (= res!311801 (validMask!0 mask!3524))))

(assert (=> start!46136 e!298510))

(assert (=> start!46136 true))

(declare-fun array_inv!11553 (array!32807) Bool)

(assert (=> start!46136 (array_inv!11553 a!3235)))

(assert (= (and start!46136 res!311801) b!510807))

(assert (= (and b!510807 res!311807) b!510808))

(assert (= (and b!510808 res!311799) b!510806))

(assert (= (and b!510806 res!311802) b!510805))

(assert (= (and b!510805 res!311803) b!510811))

(assert (= (and b!510811 res!311804) b!510810))

(assert (= (and b!510810 res!311800) b!510804))

(assert (= (and b!510804 res!311806) b!510812))

(assert (= (and b!510812 res!311805) b!510809))

(declare-fun m!492343 () Bool)

(assert (=> b!510811 m!492343))

(declare-fun m!492345 () Bool)

(assert (=> b!510809 m!492345))

(assert (=> b!510809 m!492345))

(declare-fun m!492347 () Bool)

(assert (=> b!510809 m!492347))

(assert (=> b!510812 m!492345))

(declare-fun m!492349 () Bool)

(assert (=> b!510812 m!492349))

(declare-fun m!492351 () Bool)

(assert (=> b!510812 m!492351))

(declare-fun m!492353 () Bool)

(assert (=> b!510812 m!492353))

(declare-fun m!492355 () Bool)

(assert (=> b!510812 m!492355))

(assert (=> b!510812 m!492355))

(declare-fun m!492357 () Bool)

(assert (=> b!510812 m!492357))

(assert (=> b!510812 m!492345))

(declare-fun m!492359 () Bool)

(assert (=> b!510812 m!492359))

(assert (=> b!510812 m!492345))

(declare-fun m!492361 () Bool)

(assert (=> b!510812 m!492361))

(assert (=> b!510812 m!492355))

(declare-fun m!492363 () Bool)

(assert (=> b!510812 m!492363))

(declare-fun m!492365 () Bool)

(assert (=> b!510806 m!492365))

(assert (=> b!510808 m!492345))

(assert (=> b!510808 m!492345))

(declare-fun m!492367 () Bool)

(assert (=> b!510808 m!492367))

(declare-fun m!492369 () Bool)

(assert (=> b!510804 m!492369))

(declare-fun m!492371 () Bool)

(assert (=> start!46136 m!492371))

(declare-fun m!492373 () Bool)

(assert (=> start!46136 m!492373))

(declare-fun m!492375 () Bool)

(assert (=> b!510805 m!492375))

(declare-fun m!492377 () Bool)

(assert (=> b!510810 m!492377))

(push 1)

