; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127864 () Bool)

(assert start!127864)

(declare-fun b!1502041 () Bool)

(declare-fun e!840169 () Bool)

(assert (=> b!1502041 (= e!840169 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100158 0))(
  ( (array!100159 (arr!48334 (Array (_ BitVec 32) (_ BitVec 64))) (size!48885 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100158)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12551 0))(
  ( (MissingZero!12551 (index!52595 (_ BitVec 32))) (Found!12551 (index!52596 (_ BitVec 32))) (Intermediate!12551 (undefined!13363 Bool) (index!52597 (_ BitVec 32)) (x!134302 (_ BitVec 32))) (Undefined!12551) (MissingVacant!12551 (index!52598 (_ BitVec 32))) )
))
(declare-fun lt!653275 () SeekEntryResult!12551)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100158 (_ BitVec 32)) SeekEntryResult!12551)

(assert (=> b!1502041 (= lt!653275 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48334 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502042 () Bool)

(declare-fun res!1023189 () Bool)

(assert (=> b!1502042 (=> (not res!1023189) (not e!840169))))

(declare-datatypes ((List!35006 0))(
  ( (Nil!35003) (Cons!35002 (h!36400 (_ BitVec 64)) (t!49707 List!35006)) )
))
(declare-fun arrayNoDuplicates!0 (array!100158 (_ BitVec 32) List!35006) Bool)

(assert (=> b!1502042 (= res!1023189 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35003))))

(declare-fun b!1502043 () Bool)

(declare-fun res!1023192 () Bool)

(assert (=> b!1502043 (=> (not res!1023192) (not e!840169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502043 (= res!1023192 (validKeyInArray!0 (select (arr!48334 a!2850) j!87)))))

(declare-fun b!1502044 () Bool)

(declare-fun res!1023191 () Bool)

(assert (=> b!1502044 (=> (not res!1023191) (not e!840169))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502044 (= res!1023191 (validKeyInArray!0 (select (arr!48334 a!2850) i!996)))))

(declare-fun b!1502045 () Bool)

(declare-fun res!1023195 () Bool)

(assert (=> b!1502045 (=> (not res!1023195) (not e!840169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100158 (_ BitVec 32)) Bool)

(assert (=> b!1502045 (= res!1023195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023194 () Bool)

(assert (=> start!127864 (=> (not res!1023194) (not e!840169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127864 (= res!1023194 (validMask!0 mask!2661))))

(assert (=> start!127864 e!840169))

(assert (=> start!127864 true))

(declare-fun array_inv!37279 (array!100158) Bool)

(assert (=> start!127864 (array_inv!37279 a!2850)))

(declare-fun b!1502046 () Bool)

(declare-fun res!1023193 () Bool)

(assert (=> b!1502046 (=> (not res!1023193) (not e!840169))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502046 (= res!1023193 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48885 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48885 a!2850)) (= (select (arr!48334 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48334 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48885 a!2850))))))

(declare-fun b!1502047 () Bool)

(declare-fun res!1023190 () Bool)

(assert (=> b!1502047 (=> (not res!1023190) (not e!840169))))

(assert (=> b!1502047 (= res!1023190 (and (= (size!48885 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48885 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48885 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127864 res!1023194) b!1502047))

(assert (= (and b!1502047 res!1023190) b!1502044))

(assert (= (and b!1502044 res!1023191) b!1502043))

(assert (= (and b!1502043 res!1023192) b!1502045))

(assert (= (and b!1502045 res!1023195) b!1502042))

(assert (= (and b!1502042 res!1023189) b!1502046))

(assert (= (and b!1502046 res!1023193) b!1502041))

(declare-fun m!1385397 () Bool)

(assert (=> b!1502045 m!1385397))

(declare-fun m!1385399 () Bool)

(assert (=> b!1502046 m!1385399))

(declare-fun m!1385401 () Bool)

(assert (=> b!1502046 m!1385401))

(declare-fun m!1385403 () Bool)

(assert (=> b!1502046 m!1385403))

(declare-fun m!1385405 () Bool)

(assert (=> start!127864 m!1385405))

(declare-fun m!1385407 () Bool)

(assert (=> start!127864 m!1385407))

(declare-fun m!1385409 () Bool)

(assert (=> b!1502042 m!1385409))

(declare-fun m!1385411 () Bool)

(assert (=> b!1502044 m!1385411))

(assert (=> b!1502044 m!1385411))

(declare-fun m!1385413 () Bool)

(assert (=> b!1502044 m!1385413))

(declare-fun m!1385415 () Bool)

(assert (=> b!1502041 m!1385415))

(assert (=> b!1502041 m!1385415))

(declare-fun m!1385417 () Bool)

(assert (=> b!1502041 m!1385417))

(assert (=> b!1502043 m!1385415))

(assert (=> b!1502043 m!1385415))

(declare-fun m!1385419 () Bool)

(assert (=> b!1502043 m!1385419))

(push 1)

(assert (not b!1502044))

(assert (not b!1502041))

(assert (not b!1502045))

(assert (not b!1502043))

(assert (not b!1502042))

(assert (not start!127864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

