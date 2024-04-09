; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68072 () Bool)

(assert start!68072)

(declare-fun res!536515 () Bool)

(declare-fun e!439912 () Bool)

(assert (=> start!68072 (=> (not res!536515) (not e!439912))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68072 (= res!536515 (validMask!0 mask!3266))))

(assert (=> start!68072 e!439912))

(assert (=> start!68072 true))

(declare-datatypes ((array!42930 0))(
  ( (array!42931 (arr!20546 (Array (_ BitVec 32) (_ BitVec 64))) (size!20967 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42930)

(declare-fun array_inv!16320 (array!42930) Bool)

(assert (=> start!68072 (array_inv!16320 a!3170)))

(declare-fun b!791606 () Bool)

(assert (=> b!791606 (= e!439912 false)))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8144 0))(
  ( (MissingZero!8144 (index!34943 (_ BitVec 32))) (Found!8144 (index!34944 (_ BitVec 32))) (Intermediate!8144 (undefined!8956 Bool) (index!34945 (_ BitVec 32)) (x!65927 (_ BitVec 32))) (Undefined!8144) (MissingVacant!8144 (index!34946 (_ BitVec 32))) )
))
(declare-fun lt!353248 () SeekEntryResult!8144)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42930 (_ BitVec 32)) SeekEntryResult!8144)

(assert (=> b!791606 (= lt!353248 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791607 () Bool)

(declare-fun res!536512 () Bool)

(assert (=> b!791607 (=> (not res!536512) (not e!439912))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791607 (= res!536512 (validKeyInArray!0 (select (arr!20546 a!3170) j!153)))))

(declare-fun b!791608 () Bool)

(declare-fun res!536514 () Bool)

(assert (=> b!791608 (=> (not res!536514) (not e!439912))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791608 (= res!536514 (and (= (size!20967 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20967 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20967 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791609 () Bool)

(declare-fun res!536513 () Bool)

(assert (=> b!791609 (=> (not res!536513) (not e!439912))))

(declare-fun arrayContainsKey!0 (array!42930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791609 (= res!536513 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791610 () Bool)

(declare-fun res!536511 () Bool)

(assert (=> b!791610 (=> (not res!536511) (not e!439912))))

(assert (=> b!791610 (= res!536511 (validKeyInArray!0 k!2044))))

(assert (= (and start!68072 res!536515) b!791608))

(assert (= (and b!791608 res!536514) b!791607))

(assert (= (and b!791607 res!536512) b!791610))

(assert (= (and b!791610 res!536511) b!791609))

(assert (= (and b!791609 res!536513) b!791606))

(declare-fun m!732401 () Bool)

(assert (=> b!791609 m!732401))

(declare-fun m!732403 () Bool)

(assert (=> b!791606 m!732403))

(declare-fun m!732405 () Bool)

(assert (=> b!791610 m!732405))

(declare-fun m!732407 () Bool)

(assert (=> start!68072 m!732407))

(declare-fun m!732409 () Bool)

(assert (=> start!68072 m!732409))

(declare-fun m!732411 () Bool)

(assert (=> b!791607 m!732411))

(assert (=> b!791607 m!732411))

(declare-fun m!732413 () Bool)

(assert (=> b!791607 m!732413))

(push 1)

(assert (not start!68072))

(assert (not b!791609))

(assert (not b!791607))

(assert (not b!791610))

(assert (not b!791606))

(check-sat)

