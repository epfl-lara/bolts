; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68052 () Bool)

(assert start!68052)

(declare-fun b!791447 () Bool)

(declare-fun res!536353 () Bool)

(declare-fun e!439852 () Bool)

(assert (=> b!791447 (=> (not res!536353) (not e!439852))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!42910 0))(
  ( (array!42911 (arr!20536 (Array (_ BitVec 32) (_ BitVec 64))) (size!20957 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42910)

(assert (=> b!791447 (= res!536353 (and (= (size!20957 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20957 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20957 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791448 () Bool)

(declare-fun res!536356 () Bool)

(assert (=> b!791448 (=> (not res!536356) (not e!439852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791448 (= res!536356 (validKeyInArray!0 (select (arr!20536 a!3170) j!153)))))

(declare-fun b!791449 () Bool)

(declare-fun res!536352 () Bool)

(assert (=> b!791449 (=> (not res!536352) (not e!439852))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791449 (= res!536352 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!536355 () Bool)

(assert (=> start!68052 (=> (not res!536355) (not e!439852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68052 (= res!536355 (validMask!0 mask!3266))))

(assert (=> start!68052 e!439852))

(assert (=> start!68052 true))

(declare-fun array_inv!16310 (array!42910) Bool)

(assert (=> start!68052 (array_inv!16310 a!3170)))

(declare-fun b!791450 () Bool)

(declare-fun res!536354 () Bool)

(assert (=> b!791450 (=> (not res!536354) (not e!439852))))

(assert (=> b!791450 (= res!536354 (validKeyInArray!0 k0!2044))))

(declare-fun b!791451 () Bool)

(assert (=> b!791451 (= e!439852 (bvslt mask!3266 #b00000000000000000000000000000000))))

(assert (= (and start!68052 res!536355) b!791447))

(assert (= (and b!791447 res!536353) b!791448))

(assert (= (and b!791448 res!536356) b!791450))

(assert (= (and b!791450 res!536354) b!791449))

(assert (= (and b!791449 res!536352) b!791451))

(declare-fun m!732265 () Bool)

(assert (=> b!791448 m!732265))

(assert (=> b!791448 m!732265))

(declare-fun m!732267 () Bool)

(assert (=> b!791448 m!732267))

(declare-fun m!732269 () Bool)

(assert (=> b!791449 m!732269))

(declare-fun m!732271 () Bool)

(assert (=> start!68052 m!732271))

(declare-fun m!732273 () Bool)

(assert (=> start!68052 m!732273))

(declare-fun m!732275 () Bool)

(assert (=> b!791450 m!732275))

(check-sat (not start!68052) (not b!791448) (not b!791450) (not b!791449))
(check-sat)
