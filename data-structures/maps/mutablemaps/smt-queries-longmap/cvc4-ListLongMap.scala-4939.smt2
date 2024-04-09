; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68030 () Bool)

(assert start!68030)

(declare-fun b!791383 () Bool)

(declare-fun res!536288 () Bool)

(declare-fun e!439822 () Bool)

(assert (=> b!791383 (=> (not res!536288) (not e!439822))))

(declare-datatypes ((array!42899 0))(
  ( (array!42900 (arr!20531 (Array (_ BitVec 32) (_ BitVec 64))) (size!20952 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42899)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791383 (= res!536288 (validKeyInArray!0 (select (arr!20531 a!3170) j!153)))))

(declare-fun b!791382 () Bool)

(declare-fun res!536287 () Bool)

(assert (=> b!791382 (=> (not res!536287) (not e!439822))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791382 (= res!536287 (and (= (size!20952 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20952 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20952 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791385 () Bool)

(assert (=> b!791385 (= e!439822 (bvsge #b00000000000000000000000000000000 (size!20952 a!3170)))))

(declare-fun b!791384 () Bool)

(declare-fun res!536290 () Bool)

(assert (=> b!791384 (=> (not res!536290) (not e!439822))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791384 (= res!536290 (validKeyInArray!0 k!2044))))

(declare-fun res!536289 () Bool)

(assert (=> start!68030 (=> (not res!536289) (not e!439822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68030 (= res!536289 (validMask!0 mask!3266))))

(assert (=> start!68030 e!439822))

(assert (=> start!68030 true))

(declare-fun array_inv!16305 (array!42899) Bool)

(assert (=> start!68030 (array_inv!16305 a!3170)))

(assert (= (and start!68030 res!536289) b!791382))

(assert (= (and b!791382 res!536287) b!791383))

(assert (= (and b!791383 res!536288) b!791384))

(assert (= (and b!791384 res!536290) b!791385))

(declare-fun m!732213 () Bool)

(assert (=> b!791383 m!732213))

(assert (=> b!791383 m!732213))

(declare-fun m!732215 () Bool)

(assert (=> b!791383 m!732215))

(declare-fun m!732217 () Bool)

(assert (=> b!791384 m!732217))

(declare-fun m!732219 () Bool)

(assert (=> start!68030 m!732219))

(declare-fun m!732221 () Bool)

(assert (=> start!68030 m!732221))

(push 1)

(assert (not start!68030))

(assert (not b!791383))

(assert (not b!791384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

