; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128110 () Bool)

(assert start!128110)

(declare-fun b!1504169 () Bool)

(declare-fun e!840854 () Bool)

(assert (=> b!1504169 (= e!840854 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653614 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504169 (= lt!653614 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504170 () Bool)

(declare-fun res!1025037 () Bool)

(assert (=> b!1504170 (=> (not res!1025037) (not e!840854))))

(declare-datatypes ((array!100299 0))(
  ( (array!100300 (arr!48400 (Array (_ BitVec 32) (_ BitVec 64))) (size!48951 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100299)

(declare-datatypes ((List!35072 0))(
  ( (Nil!35069) (Cons!35068 (h!36466 (_ BitVec 64)) (t!49773 List!35072)) )
))
(declare-fun arrayNoDuplicates!0 (array!100299 (_ BitVec 32) List!35072) Bool)

(assert (=> b!1504170 (= res!1025037 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35069))))

(declare-fun res!1025033 () Bool)

(assert (=> start!128110 (=> (not res!1025033) (not e!840854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128110 (= res!1025033 (validMask!0 mask!2661))))

(assert (=> start!128110 e!840854))

(assert (=> start!128110 true))

(declare-fun array_inv!37345 (array!100299) Bool)

(assert (=> start!128110 (array_inv!37345 a!2850)))

(declare-fun b!1504171 () Bool)

(declare-fun res!1025032 () Bool)

(assert (=> b!1504171 (=> (not res!1025032) (not e!840854))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504171 (= res!1025032 (validKeyInArray!0 (select (arr!48400 a!2850) i!996)))))

(declare-fun b!1504172 () Bool)

(declare-fun res!1025030 () Bool)

(assert (=> b!1504172 (=> (not res!1025030) (not e!840854))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12617 0))(
  ( (MissingZero!12617 (index!52859 (_ BitVec 32))) (Found!12617 (index!52860 (_ BitVec 32))) (Intermediate!12617 (undefined!13429 Bool) (index!52861 (_ BitVec 32)) (x!134556 (_ BitVec 32))) (Undefined!12617) (MissingVacant!12617 (index!52862 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100299 (_ BitVec 32)) SeekEntryResult!12617)

(assert (=> b!1504172 (= res!1025030 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48400 a!2850) j!87) a!2850 mask!2661) (Found!12617 j!87)))))

(declare-fun b!1504173 () Bool)

(declare-fun res!1025029 () Bool)

(assert (=> b!1504173 (=> (not res!1025029) (not e!840854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100299 (_ BitVec 32)) Bool)

(assert (=> b!1504173 (= res!1025029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504174 () Bool)

(declare-fun res!1025034 () Bool)

(assert (=> b!1504174 (=> (not res!1025034) (not e!840854))))

(assert (=> b!1504174 (= res!1025034 (validKeyInArray!0 (select (arr!48400 a!2850) j!87)))))

(declare-fun b!1504175 () Bool)

(declare-fun res!1025031 () Bool)

(assert (=> b!1504175 (=> (not res!1025031) (not e!840854))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504175 (= res!1025031 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48951 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48951 a!2850)) (= (select (arr!48400 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48400 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48951 a!2850))))))

(declare-fun b!1504176 () Bool)

(declare-fun res!1025035 () Bool)

(assert (=> b!1504176 (=> (not res!1025035) (not e!840854))))

(assert (=> b!1504176 (= res!1025035 (and (= (size!48951 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48951 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48951 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504177 () Bool)

(declare-fun res!1025036 () Bool)

(assert (=> b!1504177 (=> (not res!1025036) (not e!840854))))

(assert (=> b!1504177 (= res!1025036 (not (= (select (arr!48400 a!2850) index!625) (select (arr!48400 a!2850) j!87))))))

(assert (= (and start!128110 res!1025033) b!1504176))

(assert (= (and b!1504176 res!1025035) b!1504171))

(assert (= (and b!1504171 res!1025032) b!1504174))

(assert (= (and b!1504174 res!1025034) b!1504173))

(assert (= (and b!1504173 res!1025029) b!1504170))

(assert (= (and b!1504170 res!1025037) b!1504175))

(assert (= (and b!1504175 res!1025031) b!1504172))

(assert (= (and b!1504172 res!1025030) b!1504177))

(assert (= (and b!1504177 res!1025036) b!1504169))

(declare-fun m!1387437 () Bool)

(assert (=> b!1504171 m!1387437))

(assert (=> b!1504171 m!1387437))

(declare-fun m!1387439 () Bool)

(assert (=> b!1504171 m!1387439))

(declare-fun m!1387441 () Bool)

(assert (=> b!1504177 m!1387441))

(declare-fun m!1387443 () Bool)

(assert (=> b!1504177 m!1387443))

(assert (=> b!1504174 m!1387443))

(assert (=> b!1504174 m!1387443))

(declare-fun m!1387445 () Bool)

(assert (=> b!1504174 m!1387445))

(declare-fun m!1387447 () Bool)

(assert (=> start!128110 m!1387447))

(declare-fun m!1387449 () Bool)

(assert (=> start!128110 m!1387449))

(assert (=> b!1504172 m!1387443))

(assert (=> b!1504172 m!1387443))

(declare-fun m!1387451 () Bool)

(assert (=> b!1504172 m!1387451))

(declare-fun m!1387453 () Bool)

(assert (=> b!1504173 m!1387453))

(declare-fun m!1387455 () Bool)

(assert (=> b!1504175 m!1387455))

(declare-fun m!1387457 () Bool)

(assert (=> b!1504175 m!1387457))

(declare-fun m!1387459 () Bool)

(assert (=> b!1504175 m!1387459))

(declare-fun m!1387461 () Bool)

(assert (=> b!1504169 m!1387461))

(declare-fun m!1387463 () Bool)

(assert (=> b!1504170 m!1387463))

(push 1)

(assert (not b!1504171))

(assert (not b!1504173))

(assert (not start!128110))

(assert (not b!1504172))

(assert (not b!1504169))

(assert (not b!1504170))

(assert (not b!1504174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

