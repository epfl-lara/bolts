; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68068 () Bool)

(assert start!68068)

(declare-fun b!791576 () Bool)

(declare-fun res!536481 () Bool)

(declare-fun e!439899 () Bool)

(assert (=> b!791576 (=> (not res!536481) (not e!439899))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791576 (= res!536481 (validKeyInArray!0 k!2044))))

(declare-fun res!536482 () Bool)

(assert (=> start!68068 (=> (not res!536482) (not e!439899))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68068 (= res!536482 (validMask!0 mask!3266))))

(assert (=> start!68068 e!439899))

(assert (=> start!68068 true))

(declare-datatypes ((array!42926 0))(
  ( (array!42927 (arr!20544 (Array (_ BitVec 32) (_ BitVec 64))) (size!20965 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42926)

(declare-fun array_inv!16318 (array!42926) Bool)

(assert (=> start!68068 (array_inv!16318 a!3170)))

(declare-fun b!791577 () Bool)

(declare-fun res!536483 () Bool)

(assert (=> b!791577 (=> (not res!536483) (not e!439899))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791577 (= res!536483 (and (= (size!20965 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20965 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20965 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791578 () Bool)

(declare-fun res!536484 () Bool)

(assert (=> b!791578 (=> (not res!536484) (not e!439899))))

(assert (=> b!791578 (= res!536484 (validKeyInArray!0 (select (arr!20544 a!3170) j!153)))))

(declare-fun b!791579 () Bool)

(declare-fun res!536485 () Bool)

(assert (=> b!791579 (=> (not res!536485) (not e!439899))))

(declare-fun arrayContainsKey!0 (array!42926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791579 (= res!536485 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791580 () Bool)

(assert (=> b!791580 (= e!439899 false)))

(declare-datatypes ((SeekEntryResult!8142 0))(
  ( (MissingZero!8142 (index!34935 (_ BitVec 32))) (Found!8142 (index!34936 (_ BitVec 32))) (Intermediate!8142 (undefined!8954 Bool) (index!34937 (_ BitVec 32)) (x!65925 (_ BitVec 32))) (Undefined!8142) (MissingVacant!8142 (index!34938 (_ BitVec 32))) )
))
(declare-fun lt!353242 () SeekEntryResult!8142)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42926 (_ BitVec 32)) SeekEntryResult!8142)

(assert (=> b!791580 (= lt!353242 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68068 res!536482) b!791577))

(assert (= (and b!791577 res!536483) b!791578))

(assert (= (and b!791578 res!536484) b!791576))

(assert (= (and b!791576 res!536481) b!791579))

(assert (= (and b!791579 res!536485) b!791580))

(declare-fun m!732373 () Bool)

(assert (=> start!68068 m!732373))

(declare-fun m!732375 () Bool)

(assert (=> start!68068 m!732375))

(declare-fun m!732377 () Bool)

(assert (=> b!791580 m!732377))

(declare-fun m!732379 () Bool)

(assert (=> b!791579 m!732379))

(declare-fun m!732381 () Bool)

(assert (=> b!791578 m!732381))

(assert (=> b!791578 m!732381))

(declare-fun m!732383 () Bool)

(assert (=> b!791578 m!732383))

(declare-fun m!732385 () Bool)

(assert (=> b!791576 m!732385))

(push 1)

(assert (not b!791576))

(assert (not b!791579))

(assert (not b!791580))

(assert (not start!68068))

(assert (not b!791578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

