; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127568 () Bool)

(assert start!127568)

(declare-fun b!1498196 () Bool)

(declare-fun res!1019347 () Bool)

(declare-fun e!838958 () Bool)

(assert (=> b!1498196 (=> (not res!1019347) (not e!838958))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99862 0))(
  ( (array!99863 (arr!48186 (Array (_ BitVec 32) (_ BitVec 64))) (size!48737 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99862)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498196 (= res!1019347 (and (= (size!48737 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48737 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48737 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498197 () Bool)

(declare-fun res!1019344 () Bool)

(assert (=> b!1498197 (=> (not res!1019344) (not e!838958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498197 (= res!1019344 (validKeyInArray!0 (select (arr!48186 a!2850) i!996)))))

(declare-fun b!1498198 () Bool)

(declare-fun res!1019345 () Bool)

(assert (=> b!1498198 (=> (not res!1019345) (not e!838958))))

(assert (=> b!1498198 (= res!1019345 (validKeyInArray!0 (select (arr!48186 a!2850) j!87)))))

(declare-fun b!1498199 () Bool)

(declare-fun res!1019348 () Bool)

(assert (=> b!1498199 (=> (not res!1019348) (not e!838958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99862 (_ BitVec 32)) Bool)

(assert (=> b!1498199 (= res!1019348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019346 () Bool)

(assert (=> start!127568 (=> (not res!1019346) (not e!838958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127568 (= res!1019346 (validMask!0 mask!2661))))

(assert (=> start!127568 e!838958))

(assert (=> start!127568 true))

(declare-fun array_inv!37131 (array!99862) Bool)

(assert (=> start!127568 (array_inv!37131 a!2850)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1498200 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498200 (= e!838958 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48737 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48737 a!2850)) (= (select (arr!48186 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48186 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48737 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498201 () Bool)

(declare-fun res!1019349 () Bool)

(assert (=> b!1498201 (=> (not res!1019349) (not e!838958))))

(declare-datatypes ((List!34858 0))(
  ( (Nil!34855) (Cons!34854 (h!36252 (_ BitVec 64)) (t!49559 List!34858)) )
))
(declare-fun arrayNoDuplicates!0 (array!99862 (_ BitVec 32) List!34858) Bool)

(assert (=> b!1498201 (= res!1019349 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34855))))

(assert (= (and start!127568 res!1019346) b!1498196))

(assert (= (and b!1498196 res!1019347) b!1498197))

(assert (= (and b!1498197 res!1019344) b!1498198))

(assert (= (and b!1498198 res!1019345) b!1498199))

(assert (= (and b!1498199 res!1019348) b!1498201))

(assert (= (and b!1498201 res!1019349) b!1498200))

(declare-fun m!1381337 () Bool)

(assert (=> b!1498201 m!1381337))

(declare-fun m!1381339 () Bool)

(assert (=> start!127568 m!1381339))

(declare-fun m!1381341 () Bool)

(assert (=> start!127568 m!1381341))

(declare-fun m!1381343 () Bool)

(assert (=> b!1498197 m!1381343))

(assert (=> b!1498197 m!1381343))

(declare-fun m!1381345 () Bool)

(assert (=> b!1498197 m!1381345))

(declare-fun m!1381347 () Bool)

(assert (=> b!1498200 m!1381347))

(declare-fun m!1381349 () Bool)

(assert (=> b!1498200 m!1381349))

(declare-fun m!1381351 () Bool)

(assert (=> b!1498200 m!1381351))

(declare-fun m!1381353 () Bool)

(assert (=> b!1498198 m!1381353))

(assert (=> b!1498198 m!1381353))

(declare-fun m!1381355 () Bool)

(assert (=> b!1498198 m!1381355))

(declare-fun m!1381357 () Bool)

(assert (=> b!1498199 m!1381357))

(push 1)

(assert (not start!127568))

(assert (not b!1498201))

(assert (not b!1498199))

(assert (not b!1498197))

(assert (not b!1498198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

