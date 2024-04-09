; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127554 () Bool)

(assert start!127554)

(declare-fun e!838916 () Bool)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99848 0))(
  ( (array!99849 (arr!48179 (Array (_ BitVec 32) (_ BitVec 64))) (size!48730 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99848)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun b!1498079 () Bool)

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498079 (= e!838916 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48730 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48730 a!2850)) (= (select (arr!48179 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48179 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48730 a!2850)) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498080 () Bool)

(declare-fun res!1019228 () Bool)

(assert (=> b!1498080 (=> (not res!1019228) (not e!838916))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498080 (= res!1019228 (validKeyInArray!0 (select (arr!48179 a!2850) j!87)))))

(declare-fun b!1498081 () Bool)

(declare-fun res!1019227 () Bool)

(assert (=> b!1498081 (=> (not res!1019227) (not e!838916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99848 (_ BitVec 32)) Bool)

(assert (=> b!1498081 (= res!1019227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498082 () Bool)

(declare-fun res!1019230 () Bool)

(assert (=> b!1498082 (=> (not res!1019230) (not e!838916))))

(assert (=> b!1498082 (= res!1019230 (validKeyInArray!0 (select (arr!48179 a!2850) i!996)))))

(declare-fun b!1498083 () Bool)

(declare-fun res!1019231 () Bool)

(assert (=> b!1498083 (=> (not res!1019231) (not e!838916))))

(assert (=> b!1498083 (= res!1019231 (and (= (size!48730 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48730 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48730 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498084 () Bool)

(declare-fun res!1019232 () Bool)

(assert (=> b!1498084 (=> (not res!1019232) (not e!838916))))

(declare-datatypes ((List!34851 0))(
  ( (Nil!34848) (Cons!34847 (h!36245 (_ BitVec 64)) (t!49552 List!34851)) )
))
(declare-fun arrayNoDuplicates!0 (array!99848 (_ BitVec 32) List!34851) Bool)

(assert (=> b!1498084 (= res!1019232 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34848))))

(declare-fun res!1019229 () Bool)

(assert (=> start!127554 (=> (not res!1019229) (not e!838916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127554 (= res!1019229 (validMask!0 mask!2661))))

(assert (=> start!127554 e!838916))

(assert (=> start!127554 true))

(declare-fun array_inv!37124 (array!99848) Bool)

(assert (=> start!127554 (array_inv!37124 a!2850)))

(assert (= (and start!127554 res!1019229) b!1498083))

(assert (= (and b!1498083 res!1019231) b!1498082))

(assert (= (and b!1498082 res!1019230) b!1498080))

(assert (= (and b!1498080 res!1019228) b!1498081))

(assert (= (and b!1498081 res!1019227) b!1498084))

(assert (= (and b!1498084 res!1019232) b!1498079))

(declare-fun m!1381201 () Bool)

(assert (=> b!1498079 m!1381201))

(declare-fun m!1381203 () Bool)

(assert (=> b!1498079 m!1381203))

(declare-fun m!1381205 () Bool)

(assert (=> b!1498079 m!1381205))

(declare-fun m!1381207 () Bool)

(assert (=> b!1498084 m!1381207))

(declare-fun m!1381209 () Bool)

(assert (=> b!1498082 m!1381209))

(assert (=> b!1498082 m!1381209))

(declare-fun m!1381211 () Bool)

(assert (=> b!1498082 m!1381211))

(declare-fun m!1381213 () Bool)

(assert (=> b!1498080 m!1381213))

(assert (=> b!1498080 m!1381213))

(declare-fun m!1381215 () Bool)

(assert (=> b!1498080 m!1381215))

(declare-fun m!1381217 () Bool)

(assert (=> b!1498081 m!1381217))

(declare-fun m!1381219 () Bool)

(assert (=> start!127554 m!1381219))

(declare-fun m!1381221 () Bool)

(assert (=> start!127554 m!1381221))

(check-sat (not start!127554) (not b!1498080) (not b!1498081) (not b!1498084) (not b!1498082))
(check-sat)
