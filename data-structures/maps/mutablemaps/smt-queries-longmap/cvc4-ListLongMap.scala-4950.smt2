; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68108 () Bool)

(assert start!68108)

(declare-fun b!791892 () Bool)

(declare-fun e!440029 () Bool)

(declare-datatypes ((array!42966 0))(
  ( (array!42967 (arr!20564 (Array (_ BitVec 32) (_ BitVec 64))) (size!20985 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42966)

(assert (=> b!791892 (= e!440029 (bvsgt #b00000000000000000000000000000000 (size!20985 a!3170)))))

(declare-fun b!791893 () Bool)

(declare-fun res!536803 () Bool)

(declare-fun e!440028 () Bool)

(assert (=> b!791893 (=> (not res!536803) (not e!440028))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791893 (= res!536803 (validKeyInArray!0 k!2044))))

(declare-fun b!791894 () Bool)

(declare-fun res!536801 () Bool)

(assert (=> b!791894 (=> (not res!536801) (not e!440029))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42966 (_ BitVec 32)) Bool)

(assert (=> b!791894 (= res!536801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!791895 () Bool)

(declare-fun res!536800 () Bool)

(assert (=> b!791895 (=> (not res!536800) (not e!440028))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791895 (= res!536800 (validKeyInArray!0 (select (arr!20564 a!3170) j!153)))))

(declare-fun b!791896 () Bool)

(assert (=> b!791896 (= e!440028 e!440029)))

(declare-fun res!536802 () Bool)

(assert (=> b!791896 (=> (not res!536802) (not e!440029))))

(declare-datatypes ((SeekEntryResult!8162 0))(
  ( (MissingZero!8162 (index!35015 (_ BitVec 32))) (Found!8162 (index!35016 (_ BitVec 32))) (Intermediate!8162 (undefined!8974 Bool) (index!35017 (_ BitVec 32)) (x!65993 (_ BitVec 32))) (Undefined!8162) (MissingVacant!8162 (index!35018 (_ BitVec 32))) )
))
(declare-fun lt!353302 () SeekEntryResult!8162)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791896 (= res!536802 (or (= lt!353302 (MissingZero!8162 i!1163)) (= lt!353302 (MissingVacant!8162 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42966 (_ BitVec 32)) SeekEntryResult!8162)

(assert (=> b!791896 (= lt!353302 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791898 () Bool)

(declare-fun res!536797 () Bool)

(assert (=> b!791898 (=> (not res!536797) (not e!440028))))

(declare-fun arrayContainsKey!0 (array!42966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791898 (= res!536797 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!536798 () Bool)

(assert (=> start!68108 (=> (not res!536798) (not e!440028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68108 (= res!536798 (validMask!0 mask!3266))))

(assert (=> start!68108 e!440028))

(assert (=> start!68108 true))

(declare-fun array_inv!16338 (array!42966) Bool)

(assert (=> start!68108 (array_inv!16338 a!3170)))

(declare-fun b!791897 () Bool)

(declare-fun res!536799 () Bool)

(assert (=> b!791897 (=> (not res!536799) (not e!440028))))

(assert (=> b!791897 (= res!536799 (and (= (size!20985 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20985 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20985 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68108 res!536798) b!791897))

(assert (= (and b!791897 res!536799) b!791895))

(assert (= (and b!791895 res!536800) b!791893))

(assert (= (and b!791893 res!536803) b!791898))

(assert (= (and b!791898 res!536797) b!791896))

(assert (= (and b!791896 res!536802) b!791894))

(assert (= (and b!791894 res!536801) b!791892))

(declare-fun m!732657 () Bool)

(assert (=> b!791896 m!732657))

(declare-fun m!732659 () Bool)

(assert (=> b!791894 m!732659))

(declare-fun m!732661 () Bool)

(assert (=> b!791895 m!732661))

(assert (=> b!791895 m!732661))

(declare-fun m!732663 () Bool)

(assert (=> b!791895 m!732663))

(declare-fun m!732665 () Bool)

(assert (=> b!791898 m!732665))

(declare-fun m!732667 () Bool)

(assert (=> start!68108 m!732667))

(declare-fun m!732669 () Bool)

(assert (=> start!68108 m!732669))

(declare-fun m!732671 () Bool)

(assert (=> b!791893 m!732671))

(push 1)

(assert (not start!68108))

(assert (not b!791898))

(assert (not b!791895))

(assert (not b!791893))

(assert (not b!791896))

