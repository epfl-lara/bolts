; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128006 () Bool)

(assert start!128006)

(declare-fun b!1503197 () Bool)

(declare-fun res!1024147 () Bool)

(declare-fun e!840577 () Bool)

(assert (=> b!1503197 (=> (not res!1024147) (not e!840577))))

(declare-datatypes ((array!100234 0))(
  ( (array!100235 (arr!48369 (Array (_ BitVec 32) (_ BitVec 64))) (size!48920 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100234)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503197 (= res!1024147 (not (= (select (arr!48369 a!2850) index!625) (select (arr!48369 a!2850) j!87))))))

(declare-fun b!1503198 () Bool)

(declare-fun res!1024154 () Bool)

(assert (=> b!1503198 (=> (not res!1024154) (not e!840577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503198 (= res!1024154 (validKeyInArray!0 (select (arr!48369 a!2850) j!87)))))

(declare-fun b!1503199 () Bool)

(declare-fun res!1024148 () Bool)

(assert (=> b!1503199 (=> (not res!1024148) (not e!840577))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100234 (_ BitVec 32)) Bool)

(assert (=> b!1503199 (= res!1024148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503200 () Bool)

(declare-fun res!1024155 () Bool)

(assert (=> b!1503200 (=> (not res!1024155) (not e!840577))))

(declare-datatypes ((List!35041 0))(
  ( (Nil!35038) (Cons!35037 (h!36435 (_ BitVec 64)) (t!49742 List!35041)) )
))
(declare-fun arrayNoDuplicates!0 (array!100234 (_ BitVec 32) List!35041) Bool)

(assert (=> b!1503200 (= res!1024155 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35038))))

(declare-fun b!1503201 () Bool)

(declare-fun res!1024150 () Bool)

(assert (=> b!1503201 (=> (not res!1024150) (not e!840577))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503201 (= res!1024150 (validKeyInArray!0 (select (arr!48369 a!2850) i!996)))))

(declare-fun b!1503202 () Bool)

(declare-fun res!1024149 () Bool)

(assert (=> b!1503202 (=> (not res!1024149) (not e!840577))))

(assert (=> b!1503202 (= res!1024149 (and (= (size!48920 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48920 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48920 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503203 () Bool)

(assert (=> b!1503203 (= e!840577 false)))

(declare-fun lt!653467 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503203 (= lt!653467 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1024151 () Bool)

(assert (=> start!128006 (=> (not res!1024151) (not e!840577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128006 (= res!1024151 (validMask!0 mask!2661))))

(assert (=> start!128006 e!840577))

(assert (=> start!128006 true))

(declare-fun array_inv!37314 (array!100234) Bool)

(assert (=> start!128006 (array_inv!37314 a!2850)))

(declare-fun b!1503204 () Bool)

(declare-fun res!1024152 () Bool)

(assert (=> b!1503204 (=> (not res!1024152) (not e!840577))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12586 0))(
  ( (MissingZero!12586 (index!52735 (_ BitVec 32))) (Found!12586 (index!52736 (_ BitVec 32))) (Intermediate!12586 (undefined!13398 Bool) (index!52737 (_ BitVec 32)) (x!134431 (_ BitVec 32))) (Undefined!12586) (MissingVacant!12586 (index!52738 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100234 (_ BitVec 32)) SeekEntryResult!12586)

(assert (=> b!1503204 (= res!1024152 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48369 a!2850) j!87) a!2850 mask!2661) (Found!12586 j!87)))))

(declare-fun b!1503205 () Bool)

(declare-fun res!1024153 () Bool)

(assert (=> b!1503205 (=> (not res!1024153) (not e!840577))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503205 (= res!1024153 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48920 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48920 a!2850)) (= (select (arr!48369 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48369 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48920 a!2850))))))

(assert (= (and start!128006 res!1024151) b!1503202))

(assert (= (and b!1503202 res!1024149) b!1503201))

(assert (= (and b!1503201 res!1024150) b!1503198))

(assert (= (and b!1503198 res!1024154) b!1503199))

(assert (= (and b!1503199 res!1024148) b!1503200))

(assert (= (and b!1503200 res!1024155) b!1503205))

(assert (= (and b!1503205 res!1024153) b!1503204))

(assert (= (and b!1503204 res!1024152) b!1503197))

(assert (= (and b!1503197 res!1024147) b!1503203))

(declare-fun m!1386497 () Bool)

(assert (=> b!1503200 m!1386497))

(declare-fun m!1386499 () Bool)

(assert (=> b!1503201 m!1386499))

(assert (=> b!1503201 m!1386499))

(declare-fun m!1386501 () Bool)

(assert (=> b!1503201 m!1386501))

(declare-fun m!1386503 () Bool)

(assert (=> b!1503204 m!1386503))

(assert (=> b!1503204 m!1386503))

(declare-fun m!1386505 () Bool)

(assert (=> b!1503204 m!1386505))

(declare-fun m!1386507 () Bool)

(assert (=> b!1503205 m!1386507))

(declare-fun m!1386509 () Bool)

(assert (=> b!1503205 m!1386509))

(declare-fun m!1386511 () Bool)

(assert (=> b!1503205 m!1386511))

(declare-fun m!1386513 () Bool)

(assert (=> b!1503197 m!1386513))

(assert (=> b!1503197 m!1386503))

(assert (=> b!1503198 m!1386503))

(assert (=> b!1503198 m!1386503))

(declare-fun m!1386515 () Bool)

(assert (=> b!1503198 m!1386515))

(declare-fun m!1386517 () Bool)

(assert (=> b!1503199 m!1386517))

(declare-fun m!1386519 () Bool)

(assert (=> b!1503203 m!1386519))

(declare-fun m!1386521 () Bool)

(assert (=> start!128006 m!1386521))

(declare-fun m!1386523 () Bool)

(assert (=> start!128006 m!1386523))

(push 1)

(assert (not b!1503200))

(assert (not start!128006))

(assert (not b!1503199))

(assert (not b!1503204))

(assert (not b!1503198))

(assert (not b!1503201))

(assert (not b!1503203))

(check-sat)

