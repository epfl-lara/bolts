; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127556 () Bool)

(assert start!127556)

(declare-fun b!1498097 () Bool)

(declare-fun res!1019249 () Bool)

(declare-fun e!838921 () Bool)

(assert (=> b!1498097 (=> (not res!1019249) (not e!838921))))

(declare-datatypes ((array!99850 0))(
  ( (array!99851 (arr!48180 (Array (_ BitVec 32) (_ BitVec 64))) (size!48731 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99850)

(declare-datatypes ((List!34852 0))(
  ( (Nil!34849) (Cons!34848 (h!36246 (_ BitVec 64)) (t!49553 List!34852)) )
))
(declare-fun arrayNoDuplicates!0 (array!99850 (_ BitVec 32) List!34852) Bool)

(assert (=> b!1498097 (= res!1019249 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34849))))

(declare-fun b!1498098 () Bool)

(declare-fun res!1019245 () Bool)

(assert (=> b!1498098 (=> (not res!1019245) (not e!838921))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498098 (= res!1019245 (validKeyInArray!0 (select (arr!48180 a!2850) j!87)))))

(declare-fun res!1019248 () Bool)

(assert (=> start!127556 (=> (not res!1019248) (not e!838921))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127556 (= res!1019248 (validMask!0 mask!2661))))

(assert (=> start!127556 e!838921))

(assert (=> start!127556 true))

(declare-fun array_inv!37125 (array!99850) Bool)

(assert (=> start!127556 (array_inv!37125 a!2850)))

(declare-fun b!1498099 () Bool)

(declare-fun res!1019247 () Bool)

(assert (=> b!1498099 (=> (not res!1019247) (not e!838921))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498099 (= res!1019247 (validKeyInArray!0 (select (arr!48180 a!2850) i!996)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun b!1498100 () Bool)

(assert (=> b!1498100 (= e!838921 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48731 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48731 a!2850)) (= (select (arr!48180 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48180 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48731 a!2850)) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498101 () Bool)

(declare-fun res!1019250 () Bool)

(assert (=> b!1498101 (=> (not res!1019250) (not e!838921))))

(assert (=> b!1498101 (= res!1019250 (and (= (size!48731 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48731 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48731 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498102 () Bool)

(declare-fun res!1019246 () Bool)

(assert (=> b!1498102 (=> (not res!1019246) (not e!838921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99850 (_ BitVec 32)) Bool)

(assert (=> b!1498102 (= res!1019246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127556 res!1019248) b!1498101))

(assert (= (and b!1498101 res!1019250) b!1498099))

(assert (= (and b!1498099 res!1019247) b!1498098))

(assert (= (and b!1498098 res!1019245) b!1498102))

(assert (= (and b!1498102 res!1019246) b!1498097))

(assert (= (and b!1498097 res!1019249) b!1498100))

(declare-fun m!1381223 () Bool)

(assert (=> b!1498097 m!1381223))

(declare-fun m!1381225 () Bool)

(assert (=> b!1498100 m!1381225))

(declare-fun m!1381227 () Bool)

(assert (=> b!1498100 m!1381227))

(declare-fun m!1381229 () Bool)

(assert (=> b!1498100 m!1381229))

(declare-fun m!1381231 () Bool)

(assert (=> start!127556 m!1381231))

(declare-fun m!1381233 () Bool)

(assert (=> start!127556 m!1381233))

(declare-fun m!1381235 () Bool)

(assert (=> b!1498098 m!1381235))

(assert (=> b!1498098 m!1381235))

(declare-fun m!1381237 () Bool)

(assert (=> b!1498098 m!1381237))

(declare-fun m!1381239 () Bool)

(assert (=> b!1498099 m!1381239))

(assert (=> b!1498099 m!1381239))

(declare-fun m!1381241 () Bool)

(assert (=> b!1498099 m!1381241))

(declare-fun m!1381243 () Bool)

(assert (=> b!1498102 m!1381243))

(push 1)

(assert (not b!1498099))

(assert (not start!127556))

(assert (not b!1498098))

(assert (not b!1498102))

(assert (not b!1498097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

