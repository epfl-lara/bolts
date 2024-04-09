; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68028 () Bool)

(assert start!68028)

(declare-fun b!791370 () Bool)

(declare-fun res!536277 () Bool)

(declare-fun e!439815 () Bool)

(assert (=> b!791370 (=> (not res!536277) (not e!439815))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!42897 0))(
  ( (array!42898 (arr!20530 (Array (_ BitVec 32) (_ BitVec 64))) (size!20951 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42897)

(assert (=> b!791370 (= res!536277 (and (= (size!20951 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20951 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20951 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791373 () Bool)

(assert (=> b!791373 (= e!439815 (bvsge #b00000000000000000000000000000000 (size!20951 a!3170)))))

(declare-fun b!791372 () Bool)

(declare-fun res!536278 () Bool)

(assert (=> b!791372 (=> (not res!536278) (not e!439815))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791372 (= res!536278 (validKeyInArray!0 k0!2044))))

(declare-fun res!536276 () Bool)

(assert (=> start!68028 (=> (not res!536276) (not e!439815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68028 (= res!536276 (validMask!0 mask!3266))))

(assert (=> start!68028 e!439815))

(assert (=> start!68028 true))

(declare-fun array_inv!16304 (array!42897) Bool)

(assert (=> start!68028 (array_inv!16304 a!3170)))

(declare-fun b!791371 () Bool)

(declare-fun res!536275 () Bool)

(assert (=> b!791371 (=> (not res!536275) (not e!439815))))

(assert (=> b!791371 (= res!536275 (validKeyInArray!0 (select (arr!20530 a!3170) j!153)))))

(assert (= (and start!68028 res!536276) b!791370))

(assert (= (and b!791370 res!536277) b!791371))

(assert (= (and b!791371 res!536275) b!791372))

(assert (= (and b!791372 res!536278) b!791373))

(declare-fun m!732203 () Bool)

(assert (=> b!791372 m!732203))

(declare-fun m!732205 () Bool)

(assert (=> start!68028 m!732205))

(declare-fun m!732207 () Bool)

(assert (=> start!68028 m!732207))

(declare-fun m!732209 () Bool)

(assert (=> b!791371 m!732209))

(assert (=> b!791371 m!732209))

(declare-fun m!732211 () Bool)

(assert (=> b!791371 m!732211))

(check-sat (not b!791372) (not start!68028) (not b!791371))
(check-sat)
