; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68092 () Bool)

(assert start!68092)

(declare-fun b!791756 () Bool)

(declare-fun res!536662 () Bool)

(declare-fun e!439971 () Bool)

(assert (=> b!791756 (=> (not res!536662) (not e!439971))))

(declare-datatypes ((array!42950 0))(
  ( (array!42951 (arr!20556 (Array (_ BitVec 32) (_ BitVec 64))) (size!20977 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42950)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791756 (= res!536662 (validKeyInArray!0 (select (arr!20556 a!3170) j!153)))))

(declare-fun b!791757 () Bool)

(declare-fun res!536665 () Bool)

(assert (=> b!791757 (=> (not res!536665) (not e!439971))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791757 (= res!536665 (and (= (size!20977 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20977 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20977 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791758 () Bool)

(declare-fun res!536663 () Bool)

(assert (=> b!791758 (=> (not res!536663) (not e!439971))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791758 (= res!536663 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791759 () Bool)

(declare-fun res!536664 () Bool)

(assert (=> b!791759 (=> (not res!536664) (not e!439971))))

(assert (=> b!791759 (= res!536664 (validKeyInArray!0 k!2044))))

(declare-fun b!791760 () Bool)

(assert (=> b!791760 (= e!439971 false)))

(declare-datatypes ((SeekEntryResult!8154 0))(
  ( (MissingZero!8154 (index!34983 (_ BitVec 32))) (Found!8154 (index!34984 (_ BitVec 32))) (Intermediate!8154 (undefined!8966 Bool) (index!34985 (_ BitVec 32)) (x!65969 (_ BitVec 32))) (Undefined!8154) (MissingVacant!8154 (index!34986 (_ BitVec 32))) )
))
(declare-fun lt!353278 () SeekEntryResult!8154)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42950 (_ BitVec 32)) SeekEntryResult!8154)

(assert (=> b!791760 (= lt!353278 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!536661 () Bool)

(assert (=> start!68092 (=> (not res!536661) (not e!439971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68092 (= res!536661 (validMask!0 mask!3266))))

(assert (=> start!68092 e!439971))

(assert (=> start!68092 true))

(declare-fun array_inv!16330 (array!42950) Bool)

(assert (=> start!68092 (array_inv!16330 a!3170)))

(assert (= (and start!68092 res!536661) b!791757))

(assert (= (and b!791757 res!536665) b!791756))

(assert (= (and b!791756 res!536662) b!791759))

(assert (= (and b!791759 res!536664) b!791758))

(assert (= (and b!791758 res!536663) b!791760))

(declare-fun m!732541 () Bool)

(assert (=> b!791758 m!732541))

(declare-fun m!732543 () Bool)

(assert (=> b!791759 m!732543))

(declare-fun m!732545 () Bool)

(assert (=> start!68092 m!732545))

(declare-fun m!732547 () Bool)

(assert (=> start!68092 m!732547))

(declare-fun m!732549 () Bool)

(assert (=> b!791756 m!732549))

(assert (=> b!791756 m!732549))

(declare-fun m!732551 () Bool)

(assert (=> b!791756 m!732551))

(declare-fun m!732553 () Bool)

(assert (=> b!791760 m!732553))

(push 1)

(assert (not start!68092))

(assert (not b!791758))

(assert (not b!791756))

(assert (not b!791759))

(assert (not b!791760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

