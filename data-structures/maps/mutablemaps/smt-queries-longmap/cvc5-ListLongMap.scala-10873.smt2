; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127546 () Bool)

(assert start!127546)

(declare-fun b!1498014 () Bool)

(declare-fun res!1019165 () Bool)

(declare-fun e!838891 () Bool)

(assert (=> b!1498014 (=> (not res!1019165) (not e!838891))))

(declare-datatypes ((array!99840 0))(
  ( (array!99841 (arr!48175 (Array (_ BitVec 32) (_ BitVec 64))) (size!48726 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99840)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498014 (= res!1019165 (validKeyInArray!0 (select (arr!48175 a!2850) j!87)))))

(declare-fun b!1498015 () Bool)

(declare-fun res!1019164 () Bool)

(assert (=> b!1498015 (=> (not res!1019164) (not e!838891))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99840 (_ BitVec 32)) Bool)

(assert (=> b!1498015 (= res!1019164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019163 () Bool)

(assert (=> start!127546 (=> (not res!1019163) (not e!838891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127546 (= res!1019163 (validMask!0 mask!2661))))

(assert (=> start!127546 e!838891))

(assert (=> start!127546 true))

(declare-fun array_inv!37120 (array!99840) Bool)

(assert (=> start!127546 (array_inv!37120 a!2850)))

(declare-fun b!1498016 () Bool)

(declare-fun res!1019166 () Bool)

(assert (=> b!1498016 (=> (not res!1019166) (not e!838891))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498016 (= res!1019166 (and (= (size!48726 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48726 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48726 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498017 () Bool)

(assert (=> b!1498017 (= e!838891 false)))

(declare-fun lt!652564 () Bool)

(declare-datatypes ((List!34847 0))(
  ( (Nil!34844) (Cons!34843 (h!36241 (_ BitVec 64)) (t!49548 List!34847)) )
))
(declare-fun arrayNoDuplicates!0 (array!99840 (_ BitVec 32) List!34847) Bool)

(assert (=> b!1498017 (= lt!652564 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34844))))

(declare-fun b!1498018 () Bool)

(declare-fun res!1019162 () Bool)

(assert (=> b!1498018 (=> (not res!1019162) (not e!838891))))

(assert (=> b!1498018 (= res!1019162 (validKeyInArray!0 (select (arr!48175 a!2850) i!996)))))

(assert (= (and start!127546 res!1019163) b!1498016))

(assert (= (and b!1498016 res!1019166) b!1498018))

(assert (= (and b!1498018 res!1019162) b!1498014))

(assert (= (and b!1498014 res!1019165) b!1498015))

(assert (= (and b!1498015 res!1019164) b!1498017))

(declare-fun m!1381131 () Bool)

(assert (=> b!1498015 m!1381131))

(declare-fun m!1381133 () Bool)

(assert (=> b!1498014 m!1381133))

(assert (=> b!1498014 m!1381133))

(declare-fun m!1381135 () Bool)

(assert (=> b!1498014 m!1381135))

(declare-fun m!1381137 () Bool)

(assert (=> start!127546 m!1381137))

(declare-fun m!1381139 () Bool)

(assert (=> start!127546 m!1381139))

(declare-fun m!1381141 () Bool)

(assert (=> b!1498018 m!1381141))

(assert (=> b!1498018 m!1381141))

(declare-fun m!1381143 () Bool)

(assert (=> b!1498018 m!1381143))

(declare-fun m!1381145 () Bool)

(assert (=> b!1498017 m!1381145))

(push 1)

(assert (not b!1498017))

(assert (not b!1498018))

(assert (not b!1498014))

(assert (not b!1498015))

(assert (not start!127546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

