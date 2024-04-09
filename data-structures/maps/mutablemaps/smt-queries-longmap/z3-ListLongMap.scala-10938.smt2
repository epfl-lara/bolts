; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128010 () Bool)

(assert start!128010)

(declare-fun b!1503251 () Bool)

(declare-fun res!1024201 () Bool)

(declare-fun e!840589 () Bool)

(assert (=> b!1503251 (=> (not res!1024201) (not e!840589))))

(declare-datatypes ((array!100238 0))(
  ( (array!100239 (arr!48371 (Array (_ BitVec 32) (_ BitVec 64))) (size!48922 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100238)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503251 (= res!1024201 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48922 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48922 a!2850)) (= (select (arr!48371 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48371 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48922 a!2850))))))

(declare-fun b!1503252 () Bool)

(declare-fun res!1024206 () Bool)

(assert (=> b!1503252 (=> (not res!1024206) (not e!840589))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503252 (= res!1024206 (not (= (select (arr!48371 a!2850) index!625) (select (arr!48371 a!2850) j!87))))))

(declare-fun b!1503253 () Bool)

(declare-fun res!1024208 () Bool)

(assert (=> b!1503253 (=> (not res!1024208) (not e!840589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503253 (= res!1024208 (validKeyInArray!0 (select (arr!48371 a!2850) j!87)))))

(declare-fun b!1503254 () Bool)

(declare-fun res!1024207 () Bool)

(assert (=> b!1503254 (=> (not res!1024207) (not e!840589))))

(declare-datatypes ((List!35043 0))(
  ( (Nil!35040) (Cons!35039 (h!36437 (_ BitVec 64)) (t!49744 List!35043)) )
))
(declare-fun arrayNoDuplicates!0 (array!100238 (_ BitVec 32) List!35043) Bool)

(assert (=> b!1503254 (= res!1024207 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35040))))

(declare-fun b!1503255 () Bool)

(declare-fun res!1024209 () Bool)

(assert (=> b!1503255 (=> (not res!1024209) (not e!840589))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12588 0))(
  ( (MissingZero!12588 (index!52743 (_ BitVec 32))) (Found!12588 (index!52744 (_ BitVec 32))) (Intermediate!12588 (undefined!13400 Bool) (index!52745 (_ BitVec 32)) (x!134441 (_ BitVec 32))) (Undefined!12588) (MissingVacant!12588 (index!52746 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100238 (_ BitVec 32)) SeekEntryResult!12588)

(assert (=> b!1503255 (= res!1024209 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48371 a!2850) j!87) a!2850 mask!2661) (Found!12588 j!87)))))

(declare-fun b!1503256 () Bool)

(declare-fun res!1024204 () Bool)

(assert (=> b!1503256 (=> (not res!1024204) (not e!840589))))

(assert (=> b!1503256 (= res!1024204 (and (= (size!48922 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48922 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48922 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1024205 () Bool)

(assert (=> start!128010 (=> (not res!1024205) (not e!840589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128010 (= res!1024205 (validMask!0 mask!2661))))

(assert (=> start!128010 e!840589))

(assert (=> start!128010 true))

(declare-fun array_inv!37316 (array!100238) Bool)

(assert (=> start!128010 (array_inv!37316 a!2850)))

(declare-fun b!1503257 () Bool)

(declare-fun res!1024203 () Bool)

(assert (=> b!1503257 (=> (not res!1024203) (not e!840589))))

(assert (=> b!1503257 (= res!1024203 (validKeyInArray!0 (select (arr!48371 a!2850) i!996)))))

(declare-fun b!1503258 () Bool)

(assert (=> b!1503258 (= e!840589 false)))

(declare-fun lt!653473 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503258 (= lt!653473 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503259 () Bool)

(declare-fun res!1024202 () Bool)

(assert (=> b!1503259 (=> (not res!1024202) (not e!840589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100238 (_ BitVec 32)) Bool)

(assert (=> b!1503259 (= res!1024202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!128010 res!1024205) b!1503256))

(assert (= (and b!1503256 res!1024204) b!1503257))

(assert (= (and b!1503257 res!1024203) b!1503253))

(assert (= (and b!1503253 res!1024208) b!1503259))

(assert (= (and b!1503259 res!1024202) b!1503254))

(assert (= (and b!1503254 res!1024207) b!1503251))

(assert (= (and b!1503251 res!1024201) b!1503255))

(assert (= (and b!1503255 res!1024209) b!1503252))

(assert (= (and b!1503252 res!1024206) b!1503258))

(declare-fun m!1386553 () Bool)

(assert (=> b!1503257 m!1386553))

(assert (=> b!1503257 m!1386553))

(declare-fun m!1386555 () Bool)

(assert (=> b!1503257 m!1386555))

(declare-fun m!1386557 () Bool)

(assert (=> start!128010 m!1386557))

(declare-fun m!1386559 () Bool)

(assert (=> start!128010 m!1386559))

(declare-fun m!1386561 () Bool)

(assert (=> b!1503252 m!1386561))

(declare-fun m!1386563 () Bool)

(assert (=> b!1503252 m!1386563))

(declare-fun m!1386565 () Bool)

(assert (=> b!1503251 m!1386565))

(declare-fun m!1386567 () Bool)

(assert (=> b!1503251 m!1386567))

(declare-fun m!1386569 () Bool)

(assert (=> b!1503251 m!1386569))

(declare-fun m!1386571 () Bool)

(assert (=> b!1503259 m!1386571))

(declare-fun m!1386573 () Bool)

(assert (=> b!1503254 m!1386573))

(assert (=> b!1503255 m!1386563))

(assert (=> b!1503255 m!1386563))

(declare-fun m!1386575 () Bool)

(assert (=> b!1503255 m!1386575))

(assert (=> b!1503253 m!1386563))

(assert (=> b!1503253 m!1386563))

(declare-fun m!1386577 () Bool)

(assert (=> b!1503253 m!1386577))

(declare-fun m!1386579 () Bool)

(assert (=> b!1503258 m!1386579))

(check-sat (not start!128010) (not b!1503259) (not b!1503253) (not b!1503257) (not b!1503255) (not b!1503258) (not b!1503254))
