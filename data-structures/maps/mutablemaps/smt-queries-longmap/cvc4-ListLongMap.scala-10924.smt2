; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127856 () Bool)

(assert start!127856)

(declare-fun b!1501957 () Bool)

(declare-fun res!1023106 () Bool)

(declare-fun e!840145 () Bool)

(assert (=> b!1501957 (=> (not res!1023106) (not e!840145))))

(declare-datatypes ((array!100150 0))(
  ( (array!100151 (arr!48330 (Array (_ BitVec 32) (_ BitVec 64))) (size!48881 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100150)

(declare-datatypes ((List!35002 0))(
  ( (Nil!34999) (Cons!34998 (h!36396 (_ BitVec 64)) (t!49703 List!35002)) )
))
(declare-fun arrayNoDuplicates!0 (array!100150 (_ BitVec 32) List!35002) Bool)

(assert (=> b!1501957 (= res!1023106 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34999))))

(declare-fun b!1501958 () Bool)

(declare-fun res!1023110 () Bool)

(assert (=> b!1501958 (=> (not res!1023110) (not e!840145))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501958 (= res!1023110 (validKeyInArray!0 (select (arr!48330 a!2850) i!996)))))

(declare-fun res!1023111 () Bool)

(assert (=> start!127856 (=> (not res!1023111) (not e!840145))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127856 (= res!1023111 (validMask!0 mask!2661))))

(assert (=> start!127856 e!840145))

(assert (=> start!127856 true))

(declare-fun array_inv!37275 (array!100150) Bool)

(assert (=> start!127856 (array_inv!37275 a!2850)))

(declare-fun b!1501959 () Bool)

(declare-fun res!1023108 () Bool)

(assert (=> b!1501959 (=> (not res!1023108) (not e!840145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100150 (_ BitVec 32)) Bool)

(assert (=> b!1501959 (= res!1023108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501960 () Bool)

(declare-fun res!1023105 () Bool)

(assert (=> b!1501960 (=> (not res!1023105) (not e!840145))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501960 (= res!1023105 (validKeyInArray!0 (select (arr!48330 a!2850) j!87)))))

(declare-fun b!1501961 () Bool)

(declare-fun res!1023109 () Bool)

(assert (=> b!1501961 (=> (not res!1023109) (not e!840145))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501961 (= res!1023109 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48881 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48881 a!2850)) (= (select (arr!48330 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48330 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48881 a!2850))))))

(declare-fun b!1501962 () Bool)

(assert (=> b!1501962 (= e!840145 false)))

(declare-datatypes ((SeekEntryResult!12547 0))(
  ( (MissingZero!12547 (index!52579 (_ BitVec 32))) (Found!12547 (index!52580 (_ BitVec 32))) (Intermediate!12547 (undefined!13359 Bool) (index!52581 (_ BitVec 32)) (x!134282 (_ BitVec 32))) (Undefined!12547) (MissingVacant!12547 (index!52582 (_ BitVec 32))) )
))
(declare-fun lt!653263 () SeekEntryResult!12547)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100150 (_ BitVec 32)) SeekEntryResult!12547)

(assert (=> b!1501962 (= lt!653263 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48330 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1501963 () Bool)

(declare-fun res!1023107 () Bool)

(assert (=> b!1501963 (=> (not res!1023107) (not e!840145))))

(assert (=> b!1501963 (= res!1023107 (and (= (size!48881 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48881 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48881 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127856 res!1023111) b!1501963))

(assert (= (and b!1501963 res!1023107) b!1501958))

(assert (= (and b!1501958 res!1023110) b!1501960))

(assert (= (and b!1501960 res!1023105) b!1501959))

(assert (= (and b!1501959 res!1023108) b!1501957))

(assert (= (and b!1501957 res!1023106) b!1501961))

(assert (= (and b!1501961 res!1023109) b!1501962))

(declare-fun m!1385301 () Bool)

(assert (=> b!1501960 m!1385301))

(assert (=> b!1501960 m!1385301))

(declare-fun m!1385303 () Bool)

(assert (=> b!1501960 m!1385303))

(declare-fun m!1385305 () Bool)

(assert (=> b!1501957 m!1385305))

(declare-fun m!1385307 () Bool)

(assert (=> b!1501959 m!1385307))

(declare-fun m!1385309 () Bool)

(assert (=> b!1501958 m!1385309))

(assert (=> b!1501958 m!1385309))

(declare-fun m!1385311 () Bool)

(assert (=> b!1501958 m!1385311))

(declare-fun m!1385313 () Bool)

(assert (=> b!1501961 m!1385313))

(declare-fun m!1385315 () Bool)

(assert (=> b!1501961 m!1385315))

(declare-fun m!1385317 () Bool)

(assert (=> b!1501961 m!1385317))

(declare-fun m!1385319 () Bool)

(assert (=> start!127856 m!1385319))

(declare-fun m!1385321 () Bool)

(assert (=> start!127856 m!1385321))

(assert (=> b!1501962 m!1385301))

(assert (=> b!1501962 m!1385301))

(declare-fun m!1385323 () Bool)

(assert (=> b!1501962 m!1385323))

(push 1)

(assert (not b!1501957))

(assert (not b!1501958))

(assert (not b!1501960))

(assert (not b!1501959))

(assert (not b!1501962))

(assert (not start!127856))

(check-sat)

