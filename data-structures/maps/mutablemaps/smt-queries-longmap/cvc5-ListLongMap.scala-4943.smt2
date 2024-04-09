; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68062 () Bool)

(assert start!68062)

(declare-fun b!791525 () Bool)

(declare-fun res!536430 () Bool)

(declare-fun e!439881 () Bool)

(assert (=> b!791525 (=> (not res!536430) (not e!439881))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!42920 0))(
  ( (array!42921 (arr!20541 (Array (_ BitVec 32) (_ BitVec 64))) (size!20962 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42920)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8139 0))(
  ( (MissingZero!8139 (index!34923 (_ BitVec 32))) (Found!8139 (index!34924 (_ BitVec 32))) (Intermediate!8139 (undefined!8951 Bool) (index!34925 (_ BitVec 32)) (x!65914 (_ BitVec 32))) (Undefined!8139) (MissingVacant!8139 (index!34926 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42920 (_ BitVec 32)) SeekEntryResult!8139)

(assert (=> b!791525 (= res!536430 (not (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) (MissingZero!8139 i!1163))))))

(declare-fun b!791526 () Bool)

(declare-fun res!536432 () Bool)

(assert (=> b!791526 (=> (not res!536432) (not e!439881))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791526 (= res!536432 (validKeyInArray!0 (select (arr!20541 a!3170) j!153)))))

(declare-fun b!791527 () Bool)

(declare-fun res!536429 () Bool)

(assert (=> b!791527 (=> (not res!536429) (not e!439881))))

(assert (=> b!791527 (= res!536429 (validKeyInArray!0 k!2044))))

(declare-fun b!791528 () Bool)

(assert (=> b!791528 (= e!439881 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!791529 () Bool)

(declare-fun res!536431 () Bool)

(assert (=> b!791529 (=> (not res!536431) (not e!439881))))

(assert (=> b!791529 (= res!536431 (and (= (size!20962 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20962 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20962 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791524 () Bool)

(declare-fun res!536434 () Bool)

(assert (=> b!791524 (=> (not res!536434) (not e!439881))))

(declare-fun arrayContainsKey!0 (array!42920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791524 (= res!536434 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!536433 () Bool)

(assert (=> start!68062 (=> (not res!536433) (not e!439881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68062 (= res!536433 (validMask!0 mask!3266))))

(assert (=> start!68062 e!439881))

(assert (=> start!68062 true))

(declare-fun array_inv!16315 (array!42920) Bool)

(assert (=> start!68062 (array_inv!16315 a!3170)))

(assert (= (and start!68062 res!536433) b!791529))

(assert (= (and b!791529 res!536431) b!791526))

(assert (= (and b!791526 res!536432) b!791527))

(assert (= (and b!791527 res!536429) b!791524))

(assert (= (and b!791524 res!536434) b!791525))

(assert (= (and b!791525 res!536430) b!791528))

(declare-fun m!732331 () Bool)

(assert (=> b!791524 m!732331))

(declare-fun m!732333 () Bool)

(assert (=> b!791525 m!732333))

(declare-fun m!732335 () Bool)

(assert (=> b!791526 m!732335))

(assert (=> b!791526 m!732335))

(declare-fun m!732337 () Bool)

(assert (=> b!791526 m!732337))

(declare-fun m!732339 () Bool)

(assert (=> b!791527 m!732339))

(declare-fun m!732341 () Bool)

(assert (=> start!68062 m!732341))

(declare-fun m!732343 () Bool)

(assert (=> start!68062 m!732343))

(push 1)

(assert (not b!791524))

(assert (not b!791525))

(assert (not start!68062))

(assert (not b!791527))

(assert (not b!791526))

(check-sat)

