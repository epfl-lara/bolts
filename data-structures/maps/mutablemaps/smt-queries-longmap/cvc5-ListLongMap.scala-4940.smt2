; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68032 () Bool)

(assert start!68032)

(declare-fun b!791397 () Bool)

(declare-fun e!439827 () Bool)

(declare-datatypes ((array!42901 0))(
  ( (array!42902 (arr!20532 (Array (_ BitVec 32) (_ BitVec 64))) (size!20953 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42901)

(assert (=> b!791397 (= e!439827 (and (bvslt #b00000000000000000000000000000000 (size!20953 a!3170)) (bvsge (size!20953 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!791394 () Bool)

(declare-fun res!536301 () Bool)

(assert (=> b!791394 (=> (not res!536301) (not e!439827))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791394 (= res!536301 (and (= (size!20953 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20953 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20953 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791396 () Bool)

(declare-fun res!536302 () Bool)

(assert (=> b!791396 (=> (not res!536302) (not e!439827))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791396 (= res!536302 (validKeyInArray!0 k!2044))))

(declare-fun res!536300 () Bool)

(assert (=> start!68032 (=> (not res!536300) (not e!439827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68032 (= res!536300 (validMask!0 mask!3266))))

(assert (=> start!68032 e!439827))

(assert (=> start!68032 true))

(declare-fun array_inv!16306 (array!42901) Bool)

(assert (=> start!68032 (array_inv!16306 a!3170)))

(declare-fun b!791395 () Bool)

(declare-fun res!536299 () Bool)

(assert (=> b!791395 (=> (not res!536299) (not e!439827))))

(assert (=> b!791395 (= res!536299 (validKeyInArray!0 (select (arr!20532 a!3170) j!153)))))

(assert (= (and start!68032 res!536300) b!791394))

(assert (= (and b!791394 res!536301) b!791395))

(assert (= (and b!791395 res!536299) b!791396))

(assert (= (and b!791396 res!536302) b!791397))

(declare-fun m!732223 () Bool)

(assert (=> b!791396 m!732223))

(declare-fun m!732225 () Bool)

(assert (=> start!68032 m!732225))

(declare-fun m!732227 () Bool)

(assert (=> start!68032 m!732227))

(declare-fun m!732229 () Bool)

(assert (=> b!791395 m!732229))

(assert (=> b!791395 m!732229))

(declare-fun m!732231 () Bool)

(assert (=> b!791395 m!732231))

(push 1)

(assert (not start!68032))

(assert (not b!791395))

(assert (not b!791396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

