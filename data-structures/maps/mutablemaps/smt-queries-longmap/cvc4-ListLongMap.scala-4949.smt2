; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68102 () Bool)

(assert start!68102)

(declare-fun res!536737 () Bool)

(declare-fun e!440002 () Bool)

(assert (=> start!68102 (=> (not res!536737) (not e!440002))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68102 (= res!536737 (validMask!0 mask!3266))))

(assert (=> start!68102 e!440002))

(assert (=> start!68102 true))

(declare-datatypes ((array!42960 0))(
  ( (array!42961 (arr!20561 (Array (_ BitVec 32) (_ BitVec 64))) (size!20982 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42960)

(declare-fun array_inv!16335 (array!42960) Bool)

(assert (=> start!68102 (array_inv!16335 a!3170)))

(declare-fun b!791831 () Bool)

(declare-datatypes ((SeekEntryResult!8159 0))(
  ( (MissingZero!8159 (index!35003 (_ BitVec 32))) (Found!8159 (index!35004 (_ BitVec 32))) (Intermediate!8159 (undefined!8971 Bool) (index!35005 (_ BitVec 32)) (x!65982 (_ BitVec 32))) (Undefined!8159) (MissingVacant!8159 (index!35006 (_ BitVec 32))) )
))
(declare-fun lt!353293 () SeekEntryResult!8159)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791831 (= e!440002 (and (or (= lt!353293 (MissingZero!8159 i!1163)) (= lt!353293 (MissingVacant!8159 i!1163))) (bvsgt #b00000000000000000000000000000000 (size!20982 a!3170))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42960 (_ BitVec 32)) SeekEntryResult!8159)

(assert (=> b!791831 (= lt!353293 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791832 () Bool)

(declare-fun res!536738 () Bool)

(assert (=> b!791832 (=> (not res!536738) (not e!440002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791832 (= res!536738 (validKeyInArray!0 k!2044))))

(declare-fun b!791833 () Bool)

(declare-fun res!536740 () Bool)

(assert (=> b!791833 (=> (not res!536740) (not e!440002))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791833 (= res!536740 (and (= (size!20982 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20982 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20982 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791834 () Bool)

(declare-fun res!536736 () Bool)

(assert (=> b!791834 (=> (not res!536736) (not e!440002))))

(assert (=> b!791834 (= res!536736 (validKeyInArray!0 (select (arr!20561 a!3170) j!153)))))

(declare-fun b!791835 () Bool)

(declare-fun res!536739 () Bool)

(assert (=> b!791835 (=> (not res!536739) (not e!440002))))

(declare-fun arrayContainsKey!0 (array!42960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791835 (= res!536739 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68102 res!536737) b!791833))

(assert (= (and b!791833 res!536740) b!791834))

(assert (= (and b!791834 res!536736) b!791832))

(assert (= (and b!791832 res!536738) b!791835))

(assert (= (and b!791835 res!536739) b!791831))

(declare-fun m!732611 () Bool)

(assert (=> start!68102 m!732611))

(declare-fun m!732613 () Bool)

(assert (=> start!68102 m!732613))

(declare-fun m!732615 () Bool)

(assert (=> b!791834 m!732615))

(assert (=> b!791834 m!732615))

(declare-fun m!732617 () Bool)

(assert (=> b!791834 m!732617))

(declare-fun m!732619 () Bool)

(assert (=> b!791831 m!732619))

(declare-fun m!732621 () Bool)

(assert (=> b!791835 m!732621))

(declare-fun m!732623 () Bool)

(assert (=> b!791832 m!732623))

(push 1)

(assert (not b!791831))

(assert (not b!791832))

(assert (not start!68102))

