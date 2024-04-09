; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68074 () Bool)

(assert start!68074)

(declare-fun b!791621 () Bool)

(declare-fun e!439918 () Bool)

(assert (=> b!791621 (= e!439918 false)))

(declare-datatypes ((SeekEntryResult!8145 0))(
  ( (MissingZero!8145 (index!34947 (_ BitVec 32))) (Found!8145 (index!34948 (_ BitVec 32))) (Intermediate!8145 (undefined!8957 Bool) (index!34949 (_ BitVec 32)) (x!65936 (_ BitVec 32))) (Undefined!8145) (MissingVacant!8145 (index!34950 (_ BitVec 32))) )
))
(declare-fun lt!353251 () SeekEntryResult!8145)

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!42932 0))(
  ( (array!42933 (arr!20547 (Array (_ BitVec 32) (_ BitVec 64))) (size!20968 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42932)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42932 (_ BitVec 32)) SeekEntryResult!8145)

(assert (=> b!791621 (= lt!353251 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791622 () Bool)

(declare-fun res!536526 () Bool)

(assert (=> b!791622 (=> (not res!536526) (not e!439918))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791622 (= res!536526 (validKeyInArray!0 (select (arr!20547 a!3170) j!153)))))

(declare-fun b!791623 () Bool)

(declare-fun res!536527 () Bool)

(assert (=> b!791623 (=> (not res!536527) (not e!439918))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791623 (= res!536527 (and (= (size!20968 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20968 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20968 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791624 () Bool)

(declare-fun res!536528 () Bool)

(assert (=> b!791624 (=> (not res!536528) (not e!439918))))

(assert (=> b!791624 (= res!536528 (validKeyInArray!0 k!2044))))

(declare-fun b!791625 () Bool)

(declare-fun res!536530 () Bool)

(assert (=> b!791625 (=> (not res!536530) (not e!439918))))

(declare-fun arrayContainsKey!0 (array!42932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791625 (= res!536530 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!536529 () Bool)

(assert (=> start!68074 (=> (not res!536529) (not e!439918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68074 (= res!536529 (validMask!0 mask!3266))))

(assert (=> start!68074 e!439918))

(assert (=> start!68074 true))

(declare-fun array_inv!16321 (array!42932) Bool)

(assert (=> start!68074 (array_inv!16321 a!3170)))

(assert (= (and start!68074 res!536529) b!791623))

(assert (= (and b!791623 res!536527) b!791622))

(assert (= (and b!791622 res!536526) b!791624))

(assert (= (and b!791624 res!536528) b!791625))

(assert (= (and b!791625 res!536530) b!791621))

(declare-fun m!732415 () Bool)

(assert (=> b!791621 m!732415))

(declare-fun m!732417 () Bool)

(assert (=> start!68074 m!732417))

(declare-fun m!732419 () Bool)

(assert (=> start!68074 m!732419))

(declare-fun m!732421 () Bool)

(assert (=> b!791622 m!732421))

(assert (=> b!791622 m!732421))

(declare-fun m!732423 () Bool)

(assert (=> b!791622 m!732423))

(declare-fun m!732425 () Bool)

(assert (=> b!791624 m!732425))

(declare-fun m!732427 () Bool)

(assert (=> b!791625 m!732427))

(push 1)

(assert (not b!791624))

(assert (not b!791622))

(assert (not b!791621))

(assert (not start!68074))

(assert (not b!791625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

