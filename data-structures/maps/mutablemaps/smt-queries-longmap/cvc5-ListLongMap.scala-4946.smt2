; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68080 () Bool)

(assert start!68080)

(declare-fun b!791666 () Bool)

(declare-fun e!439936 () Bool)

(assert (=> b!791666 (= e!439936 false)))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!42938 0))(
  ( (array!42939 (arr!20550 (Array (_ BitVec 32) (_ BitVec 64))) (size!20971 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42938)

(declare-datatypes ((SeekEntryResult!8148 0))(
  ( (MissingZero!8148 (index!34959 (_ BitVec 32))) (Found!8148 (index!34960 (_ BitVec 32))) (Intermediate!8148 (undefined!8960 Bool) (index!34961 (_ BitVec 32)) (x!65947 (_ BitVec 32))) (Undefined!8148) (MissingVacant!8148 (index!34962 (_ BitVec 32))) )
))
(declare-fun lt!353260 () SeekEntryResult!8148)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42938 (_ BitVec 32)) SeekEntryResult!8148)

(assert (=> b!791666 (= lt!353260 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791667 () Bool)

(declare-fun res!536572 () Bool)

(assert (=> b!791667 (=> (not res!536572) (not e!439936))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791667 (= res!536572 (and (= (size!20971 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20971 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20971 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536573 () Bool)

(assert (=> start!68080 (=> (not res!536573) (not e!439936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68080 (= res!536573 (validMask!0 mask!3266))))

(assert (=> start!68080 e!439936))

(assert (=> start!68080 true))

(declare-fun array_inv!16324 (array!42938) Bool)

(assert (=> start!68080 (array_inv!16324 a!3170)))

(declare-fun b!791668 () Bool)

(declare-fun res!536575 () Bool)

(assert (=> b!791668 (=> (not res!536575) (not e!439936))))

(declare-fun arrayContainsKey!0 (array!42938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791668 (= res!536575 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791669 () Bool)

(declare-fun res!536574 () Bool)

(assert (=> b!791669 (=> (not res!536574) (not e!439936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791669 (= res!536574 (validKeyInArray!0 (select (arr!20550 a!3170) j!153)))))

(declare-fun b!791670 () Bool)

(declare-fun res!536571 () Bool)

(assert (=> b!791670 (=> (not res!536571) (not e!439936))))

(assert (=> b!791670 (= res!536571 (validKeyInArray!0 k!2044))))

(assert (= (and start!68080 res!536573) b!791667))

(assert (= (and b!791667 res!536572) b!791669))

(assert (= (and b!791669 res!536574) b!791670))

(assert (= (and b!791670 res!536571) b!791668))

(assert (= (and b!791668 res!536575) b!791666))

(declare-fun m!732457 () Bool)

(assert (=> b!791668 m!732457))

(declare-fun m!732459 () Bool)

(assert (=> b!791670 m!732459))

(declare-fun m!732461 () Bool)

(assert (=> start!68080 m!732461))

(declare-fun m!732463 () Bool)

(assert (=> start!68080 m!732463))

(declare-fun m!732465 () Bool)

(assert (=> b!791666 m!732465))

(declare-fun m!732467 () Bool)

(assert (=> b!791669 m!732467))

(assert (=> b!791669 m!732467))

(declare-fun m!732469 () Bool)

(assert (=> b!791669 m!732469))

(push 1)

(assert (not b!791670))

(assert (not start!68080))

(assert (not b!791666))

(assert (not b!791668))

(assert (not b!791669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

