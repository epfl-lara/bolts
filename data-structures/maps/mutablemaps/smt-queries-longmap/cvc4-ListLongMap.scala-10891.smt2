; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127658 () Bool)

(assert start!127658)

(declare-fun b!1499140 () Bool)

(declare-fun res!1020288 () Bool)

(declare-fun e!839227 () Bool)

(assert (=> b!1499140 (=> (not res!1020288) (not e!839227))))

(declare-datatypes ((array!99952 0))(
  ( (array!99953 (arr!48231 (Array (_ BitVec 32) (_ BitVec 64))) (size!48782 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99952)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499140 (= res!1020288 (validKeyInArray!0 (select (arr!48231 a!2850) j!87)))))

(declare-fun b!1499141 () Bool)

(declare-fun res!1020293 () Bool)

(assert (=> b!1499141 (=> (not res!1020293) (not e!839227))))

(declare-datatypes ((List!34903 0))(
  ( (Nil!34900) (Cons!34899 (h!36297 (_ BitVec 64)) (t!49604 List!34903)) )
))
(declare-fun arrayNoDuplicates!0 (array!99952 (_ BitVec 32) List!34903) Bool)

(assert (=> b!1499141 (= res!1020293 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34900))))

(declare-fun b!1499142 () Bool)

(declare-fun res!1020291 () Bool)

(assert (=> b!1499142 (=> (not res!1020291) (not e!839227))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499142 (= res!1020291 (validKeyInArray!0 (select (arr!48231 a!2850) i!996)))))

(declare-fun b!1499143 () Bool)

(declare-fun res!1020290 () Bool)

(assert (=> b!1499143 (=> (not res!1020290) (not e!839227))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12460 0))(
  ( (MissingZero!12460 (index!52231 (_ BitVec 32))) (Found!12460 (index!52232 (_ BitVec 32))) (Intermediate!12460 (undefined!13272 Bool) (index!52233 (_ BitVec 32)) (x!133931 (_ BitVec 32))) (Undefined!12460) (MissingVacant!12460 (index!52234 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99952 (_ BitVec 32)) SeekEntryResult!12460)

(assert (=> b!1499143 (= res!1020290 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48231 a!2850) j!87) a!2850 mask!2661) (Found!12460 j!87)))))

(declare-fun res!1020289 () Bool)

(assert (=> start!127658 (=> (not res!1020289) (not e!839227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127658 (= res!1020289 (validMask!0 mask!2661))))

(assert (=> start!127658 e!839227))

(assert (=> start!127658 true))

(declare-fun array_inv!37176 (array!99952) Bool)

(assert (=> start!127658 (array_inv!37176 a!2850)))

(declare-fun b!1499139 () Bool)

(declare-fun res!1020292 () Bool)

(assert (=> b!1499139 (=> (not res!1020292) (not e!839227))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499139 (= res!1020292 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48782 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48782 a!2850)) (= (select (arr!48231 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48231 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48782 a!2850))))))

(declare-fun b!1499144 () Bool)

(declare-fun res!1020287 () Bool)

(assert (=> b!1499144 (=> (not res!1020287) (not e!839227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99952 (_ BitVec 32)) Bool)

(assert (=> b!1499144 (= res!1020287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499145 () Bool)

(assert (=> b!1499145 (= e!839227 (and (not (= (select (arr!48231 a!2850) index!625) (select (arr!48231 a!2850) j!87))) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1499146 () Bool)

(declare-fun res!1020294 () Bool)

(assert (=> b!1499146 (=> (not res!1020294) (not e!839227))))

(assert (=> b!1499146 (= res!1020294 (and (= (size!48782 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48782 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48782 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127658 res!1020289) b!1499146))

(assert (= (and b!1499146 res!1020294) b!1499142))

(assert (= (and b!1499142 res!1020291) b!1499140))

(assert (= (and b!1499140 res!1020288) b!1499144))

(assert (= (and b!1499144 res!1020287) b!1499141))

(assert (= (and b!1499141 res!1020293) b!1499139))

(assert (= (and b!1499139 res!1020292) b!1499143))

(assert (= (and b!1499143 res!1020290) b!1499145))

(declare-fun m!1382383 () Bool)

(assert (=> b!1499145 m!1382383))

(declare-fun m!1382385 () Bool)

(assert (=> b!1499145 m!1382385))

(declare-fun m!1382387 () Bool)

(assert (=> b!1499141 m!1382387))

(assert (=> b!1499140 m!1382385))

(assert (=> b!1499140 m!1382385))

(declare-fun m!1382389 () Bool)

(assert (=> b!1499140 m!1382389))

(declare-fun m!1382391 () Bool)

(assert (=> b!1499142 m!1382391))

(assert (=> b!1499142 m!1382391))

(declare-fun m!1382393 () Bool)

(assert (=> b!1499142 m!1382393))

(declare-fun m!1382395 () Bool)

(assert (=> b!1499144 m!1382395))

(declare-fun m!1382397 () Bool)

(assert (=> start!127658 m!1382397))

(declare-fun m!1382399 () Bool)

(assert (=> start!127658 m!1382399))

(declare-fun m!1382401 () Bool)

(assert (=> b!1499139 m!1382401))

(declare-fun m!1382403 () Bool)

(assert (=> b!1499139 m!1382403))

(declare-fun m!1382405 () Bool)

(assert (=> b!1499139 m!1382405))

(assert (=> b!1499143 m!1382385))

(assert (=> b!1499143 m!1382385))

(declare-fun m!1382407 () Bool)

(assert (=> b!1499143 m!1382407))

(push 1)

(assert (not b!1499141))

(assert (not start!127658))

(assert (not b!1499144))

(assert (not b!1499143))

(assert (not b!1499142))

(assert (not b!1499140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

