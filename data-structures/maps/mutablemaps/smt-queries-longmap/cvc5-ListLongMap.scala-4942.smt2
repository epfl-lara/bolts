; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68056 () Bool)

(assert start!68056)

(declare-fun res!536386 () Bool)

(declare-fun e!439863 () Bool)

(assert (=> start!68056 (=> (not res!536386) (not e!439863))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68056 (= res!536386 (validMask!0 mask!3266))))

(assert (=> start!68056 e!439863))

(assert (=> start!68056 true))

(declare-datatypes ((array!42914 0))(
  ( (array!42915 (arr!20538 (Array (_ BitVec 32) (_ BitVec 64))) (size!20959 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42914)

(declare-fun array_inv!16312 (array!42914) Bool)

(assert (=> start!68056 (array_inv!16312 a!3170)))

(declare-fun b!791477 () Bool)

(declare-fun res!536383 () Bool)

(assert (=> b!791477 (=> (not res!536383) (not e!439863))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791477 (= res!536383 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791478 () Bool)

(assert (=> b!791478 (= e!439863 false)))

(declare-datatypes ((SeekEntryResult!8136 0))(
  ( (MissingZero!8136 (index!34911 (_ BitVec 32))) (Found!8136 (index!34912 (_ BitVec 32))) (Intermediate!8136 (undefined!8948 Bool) (index!34913 (_ BitVec 32)) (x!65903 (_ BitVec 32))) (Undefined!8136) (MissingVacant!8136 (index!34914 (_ BitVec 32))) )
))
(declare-fun lt!353233 () SeekEntryResult!8136)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42914 (_ BitVec 32)) SeekEntryResult!8136)

(assert (=> b!791478 (= lt!353233 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791479 () Bool)

(declare-fun res!536382 () Bool)

(assert (=> b!791479 (=> (not res!536382) (not e!439863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791479 (= res!536382 (validKeyInArray!0 k!2044))))

(declare-fun b!791480 () Bool)

(declare-fun res!536384 () Bool)

(assert (=> b!791480 (=> (not res!536384) (not e!439863))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791480 (= res!536384 (and (= (size!20959 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20959 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20959 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791481 () Bool)

(declare-fun res!536385 () Bool)

(assert (=> b!791481 (=> (not res!536385) (not e!439863))))

(assert (=> b!791481 (= res!536385 (validKeyInArray!0 (select (arr!20538 a!3170) j!153)))))

(assert (= (and start!68056 res!536386) b!791480))

(assert (= (and b!791480 res!536384) b!791481))

(assert (= (and b!791481 res!536385) b!791479))

(assert (= (and b!791479 res!536382) b!791477))

(assert (= (and b!791477 res!536383) b!791478))

(declare-fun m!732289 () Bool)

(assert (=> b!791481 m!732289))

(assert (=> b!791481 m!732289))

(declare-fun m!732291 () Bool)

(assert (=> b!791481 m!732291))

(declare-fun m!732293 () Bool)

(assert (=> b!791477 m!732293))

(declare-fun m!732295 () Bool)

(assert (=> b!791478 m!732295))

(declare-fun m!732297 () Bool)

(assert (=> start!68056 m!732297))

(declare-fun m!732299 () Bool)

(assert (=> start!68056 m!732299))

(declare-fun m!732301 () Bool)

(assert (=> b!791479 m!732301))

(push 1)

(assert (not b!791479))

(assert (not b!791477))

(assert (not start!68056))

(assert (not b!791481))

(assert (not b!791478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

