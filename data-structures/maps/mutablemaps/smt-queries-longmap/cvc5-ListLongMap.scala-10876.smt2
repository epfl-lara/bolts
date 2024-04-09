; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127564 () Bool)

(assert start!127564)

(declare-fun res!1019308 () Bool)

(declare-fun e!838945 () Bool)

(assert (=> start!127564 (=> (not res!1019308) (not e!838945))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127564 (= res!1019308 (validMask!0 mask!2661))))

(assert (=> start!127564 e!838945))

(assert (=> start!127564 true))

(declare-datatypes ((array!99858 0))(
  ( (array!99859 (arr!48184 (Array (_ BitVec 32) (_ BitVec 64))) (size!48735 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99858)

(declare-fun array_inv!37129 (array!99858) Bool)

(assert (=> start!127564 (array_inv!37129 a!2850)))

(declare-fun b!1498160 () Bool)

(declare-fun res!1019311 () Bool)

(assert (=> b!1498160 (=> (not res!1019311) (not e!838945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99858 (_ BitVec 32)) Bool)

(assert (=> b!1498160 (= res!1019311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498161 () Bool)

(declare-fun res!1019313 () Bool)

(assert (=> b!1498161 (=> (not res!1019313) (not e!838945))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498161 (= res!1019313 (validKeyInArray!0 (select (arr!48184 a!2850) j!87)))))

(declare-fun b!1498162 () Bool)

(declare-fun res!1019309 () Bool)

(assert (=> b!1498162 (=> (not res!1019309) (not e!838945))))

(declare-datatypes ((List!34856 0))(
  ( (Nil!34853) (Cons!34852 (h!36250 (_ BitVec 64)) (t!49557 List!34856)) )
))
(declare-fun arrayNoDuplicates!0 (array!99858 (_ BitVec 32) List!34856) Bool)

(assert (=> b!1498162 (= res!1019309 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34853))))

(declare-fun b!1498163 () Bool)

(declare-fun res!1019310 () Bool)

(assert (=> b!1498163 (=> (not res!1019310) (not e!838945))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498163 (= res!1019310 (validKeyInArray!0 (select (arr!48184 a!2850) i!996)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1498164 () Bool)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498164 (= e!838945 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48735 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48735 a!2850)) (= (select (arr!48184 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48184 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48735 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498165 () Bool)

(declare-fun res!1019312 () Bool)

(assert (=> b!1498165 (=> (not res!1019312) (not e!838945))))

(assert (=> b!1498165 (= res!1019312 (and (= (size!48735 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48735 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48735 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127564 res!1019308) b!1498165))

(assert (= (and b!1498165 res!1019312) b!1498163))

(assert (= (and b!1498163 res!1019310) b!1498161))

(assert (= (and b!1498161 res!1019313) b!1498160))

(assert (= (and b!1498160 res!1019311) b!1498162))

(assert (= (and b!1498162 res!1019309) b!1498164))

(declare-fun m!1381293 () Bool)

(assert (=> start!127564 m!1381293))

(declare-fun m!1381295 () Bool)

(assert (=> start!127564 m!1381295))

(declare-fun m!1381297 () Bool)

(assert (=> b!1498161 m!1381297))

(assert (=> b!1498161 m!1381297))

(declare-fun m!1381299 () Bool)

(assert (=> b!1498161 m!1381299))

(declare-fun m!1381301 () Bool)

(assert (=> b!1498162 m!1381301))

(declare-fun m!1381303 () Bool)

(assert (=> b!1498160 m!1381303))

(declare-fun m!1381305 () Bool)

(assert (=> b!1498163 m!1381305))

(assert (=> b!1498163 m!1381305))

(declare-fun m!1381307 () Bool)

(assert (=> b!1498163 m!1381307))

(declare-fun m!1381309 () Bool)

(assert (=> b!1498164 m!1381309))

(declare-fun m!1381311 () Bool)

(assert (=> b!1498164 m!1381311))

(declare-fun m!1381313 () Bool)

(assert (=> b!1498164 m!1381313))

(push 1)

(assert (not b!1498160))

(assert (not start!127564))

(assert (not b!1498162))

(assert (not b!1498163))

(assert (not b!1498161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

