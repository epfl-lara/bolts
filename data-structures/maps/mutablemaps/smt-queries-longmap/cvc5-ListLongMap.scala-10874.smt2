; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127552 () Bool)

(assert start!127552)

(declare-fun b!1498061 () Bool)

(declare-fun res!1019210 () Bool)

(declare-fun e!838910 () Bool)

(assert (=> b!1498061 (=> (not res!1019210) (not e!838910))))

(declare-datatypes ((array!99846 0))(
  ( (array!99847 (arr!48178 (Array (_ BitVec 32) (_ BitVec 64))) (size!48729 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99846)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498061 (= res!1019210 (validKeyInArray!0 (select (arr!48178 a!2850) j!87)))))

(declare-fun b!1498062 () Bool)

(declare-fun res!1019211 () Bool)

(assert (=> b!1498062 (=> (not res!1019211) (not e!838910))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99846 (_ BitVec 32)) Bool)

(assert (=> b!1498062 (= res!1019211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498063 () Bool)

(declare-fun res!1019209 () Bool)

(assert (=> b!1498063 (=> (not res!1019209) (not e!838910))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498063 (= res!1019209 (validKeyInArray!0 (select (arr!48178 a!2850) i!996)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1498064 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498064 (= e!838910 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48729 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48729 a!2850)) (= (select (arr!48178 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48178 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48729 a!2850)) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498065 () Bool)

(declare-fun res!1019212 () Bool)

(assert (=> b!1498065 (=> (not res!1019212) (not e!838910))))

(assert (=> b!1498065 (= res!1019212 (and (= (size!48729 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48729 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48729 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498066 () Bool)

(declare-fun res!1019213 () Bool)

(assert (=> b!1498066 (=> (not res!1019213) (not e!838910))))

(declare-datatypes ((List!34850 0))(
  ( (Nil!34847) (Cons!34846 (h!36244 (_ BitVec 64)) (t!49551 List!34850)) )
))
(declare-fun arrayNoDuplicates!0 (array!99846 (_ BitVec 32) List!34850) Bool)

(assert (=> b!1498066 (= res!1019213 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34847))))

(declare-fun res!1019214 () Bool)

(assert (=> start!127552 (=> (not res!1019214) (not e!838910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127552 (= res!1019214 (validMask!0 mask!2661))))

(assert (=> start!127552 e!838910))

(assert (=> start!127552 true))

(declare-fun array_inv!37123 (array!99846) Bool)

(assert (=> start!127552 (array_inv!37123 a!2850)))

(assert (= (and start!127552 res!1019214) b!1498065))

(assert (= (and b!1498065 res!1019212) b!1498063))

(assert (= (and b!1498063 res!1019209) b!1498061))

(assert (= (and b!1498061 res!1019210) b!1498062))

(assert (= (and b!1498062 res!1019211) b!1498066))

(assert (= (and b!1498066 res!1019213) b!1498064))

(declare-fun m!1381179 () Bool)

(assert (=> b!1498062 m!1381179))

(declare-fun m!1381181 () Bool)

(assert (=> b!1498066 m!1381181))

(declare-fun m!1381183 () Bool)

(assert (=> b!1498064 m!1381183))

(declare-fun m!1381185 () Bool)

(assert (=> b!1498064 m!1381185))

(declare-fun m!1381187 () Bool)

(assert (=> b!1498064 m!1381187))

(declare-fun m!1381189 () Bool)

(assert (=> start!127552 m!1381189))

(declare-fun m!1381191 () Bool)

(assert (=> start!127552 m!1381191))

(declare-fun m!1381193 () Bool)

(assert (=> b!1498063 m!1381193))

(assert (=> b!1498063 m!1381193))

(declare-fun m!1381195 () Bool)

(assert (=> b!1498063 m!1381195))

(declare-fun m!1381197 () Bool)

(assert (=> b!1498061 m!1381197))

(assert (=> b!1498061 m!1381197))

(declare-fun m!1381199 () Bool)

(assert (=> b!1498061 m!1381199))

(push 1)

(assert (not b!1498063))

(assert (not b!1498061))

(assert (not start!127552))

(assert (not b!1498066))

(assert (not b!1498062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

