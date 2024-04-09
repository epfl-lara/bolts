; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127860 () Bool)

(assert start!127860)

(declare-fun b!1501999 () Bool)

(declare-fun res!1023151 () Bool)

(declare-fun e!840158 () Bool)

(assert (=> b!1501999 (=> (not res!1023151) (not e!840158))))

(declare-datatypes ((array!100154 0))(
  ( (array!100155 (arr!48332 (Array (_ BitVec 32) (_ BitVec 64))) (size!48883 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100154)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100154 (_ BitVec 32)) Bool)

(assert (=> b!1501999 (= res!1023151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502000 () Bool)

(assert (=> b!1502000 (= e!840158 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12549 0))(
  ( (MissingZero!12549 (index!52587 (_ BitVec 32))) (Found!12549 (index!52588 (_ BitVec 32))) (Intermediate!12549 (undefined!13361 Bool) (index!52589 (_ BitVec 32)) (x!134292 (_ BitVec 32))) (Undefined!12549) (MissingVacant!12549 (index!52590 (_ BitVec 32))) )
))
(declare-fun lt!653269 () SeekEntryResult!12549)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100154 (_ BitVec 32)) SeekEntryResult!12549)

(assert (=> b!1502000 (= lt!653269 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48332 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502001 () Bool)

(declare-fun res!1023153 () Bool)

(assert (=> b!1502001 (=> (not res!1023153) (not e!840158))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502001 (= res!1023153 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48883 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48883 a!2850)) (= (select (arr!48332 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48332 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48883 a!2850))))))

(declare-fun b!1502002 () Bool)

(declare-fun res!1023152 () Bool)

(assert (=> b!1502002 (=> (not res!1023152) (not e!840158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502002 (= res!1023152 (validKeyInArray!0 (select (arr!48332 a!2850) j!87)))))

(declare-fun res!1023149 () Bool)

(assert (=> start!127860 (=> (not res!1023149) (not e!840158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127860 (= res!1023149 (validMask!0 mask!2661))))

(assert (=> start!127860 e!840158))

(assert (=> start!127860 true))

(declare-fun array_inv!37277 (array!100154) Bool)

(assert (=> start!127860 (array_inv!37277 a!2850)))

(declare-fun b!1502003 () Bool)

(declare-fun res!1023147 () Bool)

(assert (=> b!1502003 (=> (not res!1023147) (not e!840158))))

(assert (=> b!1502003 (= res!1023147 (and (= (size!48883 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48883 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48883 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502004 () Bool)

(declare-fun res!1023150 () Bool)

(assert (=> b!1502004 (=> (not res!1023150) (not e!840158))))

(assert (=> b!1502004 (= res!1023150 (validKeyInArray!0 (select (arr!48332 a!2850) i!996)))))

(declare-fun b!1502005 () Bool)

(declare-fun res!1023148 () Bool)

(assert (=> b!1502005 (=> (not res!1023148) (not e!840158))))

(declare-datatypes ((List!35004 0))(
  ( (Nil!35001) (Cons!35000 (h!36398 (_ BitVec 64)) (t!49705 List!35004)) )
))
(declare-fun arrayNoDuplicates!0 (array!100154 (_ BitVec 32) List!35004) Bool)

(assert (=> b!1502005 (= res!1023148 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35001))))

(assert (= (and start!127860 res!1023149) b!1502003))

(assert (= (and b!1502003 res!1023147) b!1502004))

(assert (= (and b!1502004 res!1023150) b!1502002))

(assert (= (and b!1502002 res!1023152) b!1501999))

(assert (= (and b!1501999 res!1023151) b!1502005))

(assert (= (and b!1502005 res!1023148) b!1502001))

(assert (= (and b!1502001 res!1023153) b!1502000))

(declare-fun m!1385349 () Bool)

(assert (=> b!1502005 m!1385349))

(declare-fun m!1385351 () Bool)

(assert (=> b!1502002 m!1385351))

(assert (=> b!1502002 m!1385351))

(declare-fun m!1385353 () Bool)

(assert (=> b!1502002 m!1385353))

(declare-fun m!1385355 () Bool)

(assert (=> b!1501999 m!1385355))

(assert (=> b!1502000 m!1385351))

(assert (=> b!1502000 m!1385351))

(declare-fun m!1385357 () Bool)

(assert (=> b!1502000 m!1385357))

(declare-fun m!1385359 () Bool)

(assert (=> b!1502001 m!1385359))

(declare-fun m!1385361 () Bool)

(assert (=> b!1502001 m!1385361))

(declare-fun m!1385363 () Bool)

(assert (=> b!1502001 m!1385363))

(declare-fun m!1385365 () Bool)

(assert (=> start!127860 m!1385365))

(declare-fun m!1385367 () Bool)

(assert (=> start!127860 m!1385367))

(declare-fun m!1385369 () Bool)

(assert (=> b!1502004 m!1385369))

(assert (=> b!1502004 m!1385369))

(declare-fun m!1385371 () Bool)

(assert (=> b!1502004 m!1385371))

(check-sat (not b!1502000) (not start!127860) (not b!1502004) (not b!1502002) (not b!1501999) (not b!1502005))
