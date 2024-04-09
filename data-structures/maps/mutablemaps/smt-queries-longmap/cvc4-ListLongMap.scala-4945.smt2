; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68078 () Bool)

(assert start!68078)

(declare-fun res!536559 () Bool)

(declare-fun e!439930 () Bool)

(assert (=> start!68078 (=> (not res!536559) (not e!439930))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68078 (= res!536559 (validMask!0 mask!3266))))

(assert (=> start!68078 e!439930))

(assert (=> start!68078 true))

(declare-datatypes ((array!42936 0))(
  ( (array!42937 (arr!20549 (Array (_ BitVec 32) (_ BitVec 64))) (size!20970 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42936)

(declare-fun array_inv!16323 (array!42936) Bool)

(assert (=> start!68078 (array_inv!16323 a!3170)))

(declare-fun b!791651 () Bool)

(declare-fun res!536560 () Bool)

(assert (=> b!791651 (=> (not res!536560) (not e!439930))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791651 (= res!536560 (validKeyInArray!0 k!2044))))

(declare-fun b!791652 () Bool)

(declare-fun res!536557 () Bool)

(assert (=> b!791652 (=> (not res!536557) (not e!439930))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791652 (= res!536557 (validKeyInArray!0 (select (arr!20549 a!3170) j!153)))))

(declare-fun b!791653 () Bool)

(declare-fun res!536556 () Bool)

(assert (=> b!791653 (=> (not res!536556) (not e!439930))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791653 (= res!536556 (and (= (size!20970 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20970 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20970 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791654 () Bool)

(assert (=> b!791654 (= e!439930 false)))

(declare-datatypes ((SeekEntryResult!8147 0))(
  ( (MissingZero!8147 (index!34955 (_ BitVec 32))) (Found!8147 (index!34956 (_ BitVec 32))) (Intermediate!8147 (undefined!8959 Bool) (index!34957 (_ BitVec 32)) (x!65938 (_ BitVec 32))) (Undefined!8147) (MissingVacant!8147 (index!34958 (_ BitVec 32))) )
))
(declare-fun lt!353257 () SeekEntryResult!8147)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42936 (_ BitVec 32)) SeekEntryResult!8147)

(assert (=> b!791654 (= lt!353257 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791655 () Bool)

(declare-fun res!536558 () Bool)

(assert (=> b!791655 (=> (not res!536558) (not e!439930))))

(declare-fun arrayContainsKey!0 (array!42936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791655 (= res!536558 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68078 res!536559) b!791653))

(assert (= (and b!791653 res!536556) b!791652))

(assert (= (and b!791652 res!536557) b!791651))

(assert (= (and b!791651 res!536560) b!791655))

(assert (= (and b!791655 res!536558) b!791654))

(declare-fun m!732443 () Bool)

(assert (=> b!791651 m!732443))

(declare-fun m!732445 () Bool)

(assert (=> b!791652 m!732445))

(assert (=> b!791652 m!732445))

(declare-fun m!732447 () Bool)

(assert (=> b!791652 m!732447))

(declare-fun m!732449 () Bool)

(assert (=> start!68078 m!732449))

(declare-fun m!732451 () Bool)

(assert (=> start!68078 m!732451))

(declare-fun m!732453 () Bool)

(assert (=> b!791654 m!732453))

(declare-fun m!732455 () Bool)

(assert (=> b!791655 m!732455))

(push 1)

(assert (not b!791655))

(assert (not b!791651))

(assert (not b!791654))

(assert (not start!68078))

(assert (not b!791652))

(check-sat)

