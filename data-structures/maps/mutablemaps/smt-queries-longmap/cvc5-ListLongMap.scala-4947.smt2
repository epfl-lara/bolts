; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68086 () Bool)

(assert start!68086)

(declare-fun b!791711 () Bool)

(declare-fun res!536616 () Bool)

(declare-fun e!439953 () Bool)

(assert (=> b!791711 (=> (not res!536616) (not e!439953))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!42944 0))(
  ( (array!42945 (arr!20553 (Array (_ BitVec 32) (_ BitVec 64))) (size!20974 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42944)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791711 (= res!536616 (and (= (size!20974 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20974 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20974 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791712 () Bool)

(declare-fun res!536620 () Bool)

(assert (=> b!791712 (=> (not res!536620) (not e!439953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791712 (= res!536620 (validKeyInArray!0 (select (arr!20553 a!3170) j!153)))))

(declare-fun res!536619 () Bool)

(assert (=> start!68086 (=> (not res!536619) (not e!439953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68086 (= res!536619 (validMask!0 mask!3266))))

(assert (=> start!68086 e!439953))

(assert (=> start!68086 true))

(declare-fun array_inv!16327 (array!42944) Bool)

(assert (=> start!68086 (array_inv!16327 a!3170)))

(declare-fun b!791713 () Bool)

(declare-fun res!536618 () Bool)

(assert (=> b!791713 (=> (not res!536618) (not e!439953))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791713 (= res!536618 (validKeyInArray!0 k!2044))))

(declare-fun b!791714 () Bool)

(assert (=> b!791714 (= e!439953 false)))

(declare-datatypes ((SeekEntryResult!8151 0))(
  ( (MissingZero!8151 (index!34971 (_ BitVec 32))) (Found!8151 (index!34972 (_ BitVec 32))) (Intermediate!8151 (undefined!8963 Bool) (index!34973 (_ BitVec 32)) (x!65958 (_ BitVec 32))) (Undefined!8151) (MissingVacant!8151 (index!34974 (_ BitVec 32))) )
))
(declare-fun lt!353269 () SeekEntryResult!8151)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42944 (_ BitVec 32)) SeekEntryResult!8151)

(assert (=> b!791714 (= lt!353269 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791715 () Bool)

(declare-fun res!536617 () Bool)

(assert (=> b!791715 (=> (not res!536617) (not e!439953))))

(declare-fun arrayContainsKey!0 (array!42944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791715 (= res!536617 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68086 res!536619) b!791711))

(assert (= (and b!791711 res!536616) b!791712))

(assert (= (and b!791712 res!536620) b!791713))

(assert (= (and b!791713 res!536618) b!791715))

(assert (= (and b!791715 res!536617) b!791714))

(declare-fun m!732499 () Bool)

(assert (=> b!791715 m!732499))

(declare-fun m!732501 () Bool)

(assert (=> b!791714 m!732501))

(declare-fun m!732503 () Bool)

(assert (=> b!791712 m!732503))

(assert (=> b!791712 m!732503))

(declare-fun m!732505 () Bool)

(assert (=> b!791712 m!732505))

(declare-fun m!732507 () Bool)

(assert (=> b!791713 m!732507))

(declare-fun m!732509 () Bool)

(assert (=> start!68086 m!732509))

(declare-fun m!732511 () Bool)

(assert (=> start!68086 m!732511))

(push 1)

(assert (not b!791713))

(assert (not b!791714))

(assert (not start!68086))

(assert (not b!791712))

(assert (not b!791715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

