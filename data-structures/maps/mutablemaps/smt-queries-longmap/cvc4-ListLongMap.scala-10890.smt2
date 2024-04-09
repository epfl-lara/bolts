; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127652 () Bool)

(assert start!127652)

(declare-fun b!1499067 () Bool)

(declare-fun res!1020219 () Bool)

(declare-fun e!839210 () Bool)

(assert (=> b!1499067 (=> (not res!1020219) (not e!839210))))

(declare-datatypes ((array!99946 0))(
  ( (array!99947 (arr!48228 (Array (_ BitVec 32) (_ BitVec 64))) (size!48779 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99946)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499067 (= res!1020219 (validKeyInArray!0 (select (arr!48228 a!2850) i!996)))))

(declare-fun b!1499068 () Bool)

(declare-fun res!1020216 () Bool)

(assert (=> b!1499068 (=> (not res!1020216) (not e!839210))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12457 0))(
  ( (MissingZero!12457 (index!52219 (_ BitVec 32))) (Found!12457 (index!52220 (_ BitVec 32))) (Intermediate!12457 (undefined!13269 Bool) (index!52221 (_ BitVec 32)) (x!133920 (_ BitVec 32))) (Undefined!12457) (MissingVacant!12457 (index!52222 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99946 (_ BitVec 32)) SeekEntryResult!12457)

(assert (=> b!1499068 (= res!1020216 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48228 a!2850) j!87) a!2850 mask!2661) (Found!12457 j!87)))))

(declare-fun b!1499069 () Bool)

(declare-fun res!1020220 () Bool)

(assert (=> b!1499069 (=> (not res!1020220) (not e!839210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99946 (_ BitVec 32)) Bool)

(assert (=> b!1499069 (= res!1020220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1020221 () Bool)

(assert (=> start!127652 (=> (not res!1020221) (not e!839210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127652 (= res!1020221 (validMask!0 mask!2661))))

(assert (=> start!127652 e!839210))

(assert (=> start!127652 true))

(declare-fun array_inv!37173 (array!99946) Bool)

(assert (=> start!127652 (array_inv!37173 a!2850)))

(declare-fun b!1499070 () Bool)

(declare-fun res!1020222 () Bool)

(assert (=> b!1499070 (=> (not res!1020222) (not e!839210))))

(assert (=> b!1499070 (= res!1020222 (and (= (size!48779 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48779 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48779 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499071 () Bool)

(assert (=> b!1499071 (= e!839210 (and (not (= (select (arr!48228 a!2850) index!625) (select (arr!48228 a!2850) j!87))) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1499072 () Bool)

(declare-fun res!1020218 () Bool)

(assert (=> b!1499072 (=> (not res!1020218) (not e!839210))))

(declare-datatypes ((List!34900 0))(
  ( (Nil!34897) (Cons!34896 (h!36294 (_ BitVec 64)) (t!49601 List!34900)) )
))
(declare-fun arrayNoDuplicates!0 (array!99946 (_ BitVec 32) List!34900) Bool)

(assert (=> b!1499072 (= res!1020218 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34897))))

(declare-fun b!1499073 () Bool)

(declare-fun res!1020215 () Bool)

(assert (=> b!1499073 (=> (not res!1020215) (not e!839210))))

(assert (=> b!1499073 (= res!1020215 (validKeyInArray!0 (select (arr!48228 a!2850) j!87)))))

(declare-fun b!1499074 () Bool)

(declare-fun res!1020217 () Bool)

(assert (=> b!1499074 (=> (not res!1020217) (not e!839210))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499074 (= res!1020217 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48779 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48779 a!2850)) (= (select (arr!48228 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48228 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48779 a!2850))))))

(assert (= (and start!127652 res!1020221) b!1499070))

(assert (= (and b!1499070 res!1020222) b!1499067))

(assert (= (and b!1499067 res!1020219) b!1499073))

(assert (= (and b!1499073 res!1020215) b!1499069))

(assert (= (and b!1499069 res!1020220) b!1499072))

(assert (= (and b!1499072 res!1020218) b!1499074))

(assert (= (and b!1499074 res!1020217) b!1499068))

(assert (= (and b!1499068 res!1020216) b!1499071))

(declare-fun m!1382305 () Bool)

(assert (=> b!1499067 m!1382305))

(assert (=> b!1499067 m!1382305))

(declare-fun m!1382307 () Bool)

(assert (=> b!1499067 m!1382307))

(declare-fun m!1382309 () Bool)

(assert (=> b!1499069 m!1382309))

(declare-fun m!1382311 () Bool)

(assert (=> b!1499072 m!1382311))

(declare-fun m!1382313 () Bool)

(assert (=> b!1499068 m!1382313))

(assert (=> b!1499068 m!1382313))

(declare-fun m!1382315 () Bool)

(assert (=> b!1499068 m!1382315))

(assert (=> b!1499073 m!1382313))

(assert (=> b!1499073 m!1382313))

(declare-fun m!1382317 () Bool)

(assert (=> b!1499073 m!1382317))

(declare-fun m!1382319 () Bool)

(assert (=> start!127652 m!1382319))

(declare-fun m!1382321 () Bool)

(assert (=> start!127652 m!1382321))

(declare-fun m!1382323 () Bool)

(assert (=> b!1499074 m!1382323))

(declare-fun m!1382325 () Bool)

(assert (=> b!1499074 m!1382325))

(declare-fun m!1382327 () Bool)

(assert (=> b!1499074 m!1382327))

(declare-fun m!1382329 () Bool)

(assert (=> b!1499071 m!1382329))

(assert (=> b!1499071 m!1382313))

(push 1)

(assert (not start!127652))

(assert (not b!1499069))

(assert (not b!1499073))

(assert (not b!1499068))

(assert (not b!1499067))

(assert (not b!1499072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

