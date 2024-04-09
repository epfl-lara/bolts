; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68060 () Bool)

(assert start!68060)

(declare-fun b!791507 () Bool)

(declare-fun res!536415 () Bool)

(declare-fun e!439876 () Bool)

(assert (=> b!791507 (=> (not res!536415) (not e!439876))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791507 (= res!536415 (validKeyInArray!0 k!2044))))

(declare-fun b!791508 () Bool)

(assert (=> b!791508 (= e!439876 false)))

(declare-datatypes ((SeekEntryResult!8138 0))(
  ( (MissingZero!8138 (index!34919 (_ BitVec 32))) (Found!8138 (index!34920 (_ BitVec 32))) (Intermediate!8138 (undefined!8950 Bool) (index!34921 (_ BitVec 32)) (x!65905 (_ BitVec 32))) (Undefined!8138) (MissingVacant!8138 (index!34922 (_ BitVec 32))) )
))
(declare-fun lt!353239 () SeekEntryResult!8138)

(declare-datatypes ((array!42918 0))(
  ( (array!42919 (arr!20540 (Array (_ BitVec 32) (_ BitVec 64))) (size!20961 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42918)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42918 (_ BitVec 32)) SeekEntryResult!8138)

(assert (=> b!791508 (= lt!353239 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791509 () Bool)

(declare-fun res!536412 () Bool)

(assert (=> b!791509 (=> (not res!536412) (not e!439876))))

(declare-fun arrayContainsKey!0 (array!42918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791509 (= res!536412 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791510 () Bool)

(declare-fun res!536416 () Bool)

(assert (=> b!791510 (=> (not res!536416) (not e!439876))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791510 (= res!536416 (and (= (size!20961 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20961 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20961 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536413 () Bool)

(assert (=> start!68060 (=> (not res!536413) (not e!439876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68060 (= res!536413 (validMask!0 mask!3266))))

(assert (=> start!68060 e!439876))

(assert (=> start!68060 true))

(declare-fun array_inv!16314 (array!42918) Bool)

(assert (=> start!68060 (array_inv!16314 a!3170)))

(declare-fun b!791511 () Bool)

(declare-fun res!536414 () Bool)

(assert (=> b!791511 (=> (not res!536414) (not e!439876))))

(assert (=> b!791511 (= res!536414 (validKeyInArray!0 (select (arr!20540 a!3170) j!153)))))

(assert (= (and start!68060 res!536413) b!791510))

(assert (= (and b!791510 res!536416) b!791511))

(assert (= (and b!791511 res!536414) b!791507))

(assert (= (and b!791507 res!536415) b!791509))

(assert (= (and b!791509 res!536412) b!791508))

(declare-fun m!732317 () Bool)

(assert (=> start!68060 m!732317))

(declare-fun m!732319 () Bool)

(assert (=> start!68060 m!732319))

(declare-fun m!732321 () Bool)

(assert (=> b!791511 m!732321))

(assert (=> b!791511 m!732321))

(declare-fun m!732323 () Bool)

(assert (=> b!791511 m!732323))

(declare-fun m!732325 () Bool)

(assert (=> b!791509 m!732325))

(declare-fun m!732327 () Bool)

(assert (=> b!791507 m!732327))

(declare-fun m!732329 () Bool)

(assert (=> b!791508 m!732329))

(push 1)

(assert (not b!791509))

(assert (not b!791507))

(assert (not b!791508))

(assert (not b!791511))

(assert (not start!68060))

(check-sat)

