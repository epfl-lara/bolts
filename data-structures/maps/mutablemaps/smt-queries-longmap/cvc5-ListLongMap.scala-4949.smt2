; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68098 () Bool)

(assert start!68098)

(declare-fun res!536706 () Bool)

(declare-fun e!439989 () Bool)

(assert (=> start!68098 (=> (not res!536706) (not e!439989))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68098 (= res!536706 (validMask!0 mask!3266))))

(assert (=> start!68098 e!439989))

(assert (=> start!68098 true))

(declare-datatypes ((array!42956 0))(
  ( (array!42957 (arr!20559 (Array (_ BitVec 32) (_ BitVec 64))) (size!20980 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42956)

(declare-fun array_inv!16333 (array!42956) Bool)

(assert (=> start!68098 (array_inv!16333 a!3170)))

(declare-fun b!791801 () Bool)

(declare-fun res!536708 () Bool)

(assert (=> b!791801 (=> (not res!536708) (not e!439989))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791801 (= res!536708 (validKeyInArray!0 (select (arr!20559 a!3170) j!153)))))

(declare-fun b!791802 () Bool)

(declare-fun res!536709 () Bool)

(assert (=> b!791802 (=> (not res!536709) (not e!439989))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791802 (= res!536709 (and (= (size!20980 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20980 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20980 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791803 () Bool)

(declare-fun res!536707 () Bool)

(assert (=> b!791803 (=> (not res!536707) (not e!439989))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791803 (= res!536707 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!8157 0))(
  ( (MissingZero!8157 (index!34995 (_ BitVec 32))) (Found!8157 (index!34996 (_ BitVec 32))) (Intermediate!8157 (undefined!8969 Bool) (index!34997 (_ BitVec 32)) (x!65980 (_ BitVec 32))) (Undefined!8157) (MissingVacant!8157 (index!34998 (_ BitVec 32))) )
))
(declare-fun lt!353287 () SeekEntryResult!8157)

(declare-fun b!791804 () Bool)

(assert (=> b!791804 (= e!439989 (and (or (= lt!353287 (MissingZero!8157 i!1163)) (= lt!353287 (MissingVacant!8157 i!1163))) (bvsgt #b00000000000000000000000000000000 (size!20980 a!3170))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42956 (_ BitVec 32)) SeekEntryResult!8157)

(assert (=> b!791804 (= lt!353287 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791805 () Bool)

(declare-fun res!536710 () Bool)

(assert (=> b!791805 (=> (not res!536710) (not e!439989))))

(assert (=> b!791805 (= res!536710 (validKeyInArray!0 k!2044))))

(assert (= (and start!68098 res!536706) b!791802))

(assert (= (and b!791802 res!536709) b!791801))

(assert (= (and b!791801 res!536708) b!791805))

(assert (= (and b!791805 res!536710) b!791803))

(assert (= (and b!791803 res!536707) b!791804))

(declare-fun m!732583 () Bool)

(assert (=> b!791803 m!732583))

(declare-fun m!732585 () Bool)

(assert (=> b!791804 m!732585))

(declare-fun m!732587 () Bool)

(assert (=> b!791805 m!732587))

(declare-fun m!732589 () Bool)

(assert (=> start!68098 m!732589))

(declare-fun m!732591 () Bool)

(assert (=> start!68098 m!732591))

(declare-fun m!732593 () Bool)

(assert (=> b!791801 m!732593))

(assert (=> b!791801 m!732593))

(declare-fun m!732595 () Bool)

(assert (=> b!791801 m!732595))

(push 1)

(assert (not b!791803))

(assert (not b!791805))

(assert (not b!791801))

(assert (not b!791804))

