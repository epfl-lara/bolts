; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68066 () Bool)

(assert start!68066)

(declare-fun b!791560 () Bool)

(declare-fun res!536468 () Bool)

(declare-fun e!439894 () Bool)

(assert (=> b!791560 (=> (not res!536468) (not e!439894))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791560 (= res!536468 (validKeyInArray!0 k!2044))))

(declare-fun b!791561 () Bool)

(declare-fun res!536467 () Bool)

(assert (=> b!791561 (=> (not res!536467) (not e!439894))))

(declare-datatypes ((array!42924 0))(
  ( (array!42925 (arr!20543 (Array (_ BitVec 32) (_ BitVec 64))) (size!20964 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42924)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791561 (= res!536467 (validKeyInArray!0 (select (arr!20543 a!3170) j!153)))))

(declare-fun b!791562 () Bool)

(declare-fun res!536470 () Bool)

(assert (=> b!791562 (=> (not res!536470) (not e!439894))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791562 (= res!536470 (and (= (size!20964 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20964 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20964 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791563 () Bool)

(declare-fun res!536465 () Bool)

(assert (=> b!791563 (=> (not res!536465) (not e!439894))))

(declare-fun arrayContainsKey!0 (array!42924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791563 (= res!536465 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791564 () Bool)

(declare-fun res!536466 () Bool)

(assert (=> b!791564 (=> (not res!536466) (not e!439894))))

(declare-datatypes ((SeekEntryResult!8141 0))(
  ( (MissingZero!8141 (index!34931 (_ BitVec 32))) (Found!8141 (index!34932 (_ BitVec 32))) (Intermediate!8141 (undefined!8953 Bool) (index!34933 (_ BitVec 32)) (x!65916 (_ BitVec 32))) (Undefined!8141) (MissingVacant!8141 (index!34934 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42924 (_ BitVec 32)) SeekEntryResult!8141)

(assert (=> b!791564 (= res!536466 (not (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) (MissingZero!8141 i!1163))))))

(declare-fun b!791565 () Bool)

(assert (=> b!791565 (= e!439894 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!536469 () Bool)

(assert (=> start!68066 (=> (not res!536469) (not e!439894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68066 (= res!536469 (validMask!0 mask!3266))))

(assert (=> start!68066 e!439894))

(assert (=> start!68066 true))

(declare-fun array_inv!16317 (array!42924) Bool)

(assert (=> start!68066 (array_inv!16317 a!3170)))

(assert (= (and start!68066 res!536469) b!791562))

(assert (= (and b!791562 res!536470) b!791561))

(assert (= (and b!791561 res!536467) b!791560))

(assert (= (and b!791560 res!536468) b!791563))

(assert (= (and b!791563 res!536465) b!791564))

(assert (= (and b!791564 res!536466) b!791565))

(declare-fun m!732359 () Bool)

(assert (=> b!791564 m!732359))

(declare-fun m!732361 () Bool)

(assert (=> b!791561 m!732361))

(assert (=> b!791561 m!732361))

(declare-fun m!732363 () Bool)

(assert (=> b!791561 m!732363))

(declare-fun m!732365 () Bool)

(assert (=> b!791560 m!732365))

(declare-fun m!732367 () Bool)

(assert (=> start!68066 m!732367))

(declare-fun m!732369 () Bool)

(assert (=> start!68066 m!732369))

(declare-fun m!732371 () Bool)

(assert (=> b!791563 m!732371))

(push 1)

(assert (not b!791563))

(assert (not b!791561))

(assert (not start!68066))

(assert (not b!791560))

(assert (not b!791564))

(check-sat)

