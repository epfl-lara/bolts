; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68084 () Bool)

(assert start!68084)

(declare-fun res!536605 () Bool)

(declare-fun e!439947 () Bool)

(assert (=> start!68084 (=> (not res!536605) (not e!439947))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68084 (= res!536605 (validMask!0 mask!3266))))

(assert (=> start!68084 e!439947))

(assert (=> start!68084 true))

(declare-datatypes ((array!42942 0))(
  ( (array!42943 (arr!20552 (Array (_ BitVec 32) (_ BitVec 64))) (size!20973 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42942)

(declare-fun array_inv!16326 (array!42942) Bool)

(assert (=> start!68084 (array_inv!16326 a!3170)))

(declare-fun b!791696 () Bool)

(declare-fun res!536602 () Bool)

(assert (=> b!791696 (=> (not res!536602) (not e!439947))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791696 (= res!536602 (validKeyInArray!0 (select (arr!20552 a!3170) j!153)))))

(declare-fun b!791697 () Bool)

(declare-fun res!536601 () Bool)

(assert (=> b!791697 (=> (not res!536601) (not e!439947))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791697 (= res!536601 (validKeyInArray!0 k!2044))))

(declare-fun b!791698 () Bool)

(assert (=> b!791698 (= e!439947 false)))

(declare-datatypes ((SeekEntryResult!8150 0))(
  ( (MissingZero!8150 (index!34967 (_ BitVec 32))) (Found!8150 (index!34968 (_ BitVec 32))) (Intermediate!8150 (undefined!8962 Bool) (index!34969 (_ BitVec 32)) (x!65949 (_ BitVec 32))) (Undefined!8150) (MissingVacant!8150 (index!34970 (_ BitVec 32))) )
))
(declare-fun lt!353266 () SeekEntryResult!8150)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42942 (_ BitVec 32)) SeekEntryResult!8150)

(assert (=> b!791698 (= lt!353266 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791699 () Bool)

(declare-fun res!536603 () Bool)

(assert (=> b!791699 (=> (not res!536603) (not e!439947))))

(declare-fun arrayContainsKey!0 (array!42942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791699 (= res!536603 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791700 () Bool)

(declare-fun res!536604 () Bool)

(assert (=> b!791700 (=> (not res!536604) (not e!439947))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791700 (= res!536604 (and (= (size!20973 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20973 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20973 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68084 res!536605) b!791700))

(assert (= (and b!791700 res!536604) b!791696))

(assert (= (and b!791696 res!536602) b!791697))

(assert (= (and b!791697 res!536601) b!791699))

(assert (= (and b!791699 res!536603) b!791698))

(declare-fun m!732485 () Bool)

(assert (=> b!791697 m!732485))

(declare-fun m!732487 () Bool)

(assert (=> b!791699 m!732487))

(declare-fun m!732489 () Bool)

(assert (=> b!791698 m!732489))

(declare-fun m!732491 () Bool)

(assert (=> b!791696 m!732491))

(assert (=> b!791696 m!732491))

(declare-fun m!732493 () Bool)

(assert (=> b!791696 m!732493))

(declare-fun m!732495 () Bool)

(assert (=> start!68084 m!732495))

(declare-fun m!732497 () Bool)

(assert (=> start!68084 m!732497))

(push 1)

(assert (not b!791697))

(assert (not start!68084))

(assert (not b!791699))

(assert (not b!791696))

(assert (not b!791698))

(check-sat)

