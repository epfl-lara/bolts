; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127654 () Bool)

(assert start!127654)

(declare-fun b!1499091 () Bool)

(declare-fun res!1020245 () Bool)

(declare-fun e!839215 () Bool)

(assert (=> b!1499091 (=> (not res!1020245) (not e!839215))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99948 0))(
  ( (array!99949 (arr!48229 (Array (_ BitVec 32) (_ BitVec 64))) (size!48780 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99948)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12458 0))(
  ( (MissingZero!12458 (index!52223 (_ BitVec 32))) (Found!12458 (index!52224 (_ BitVec 32))) (Intermediate!12458 (undefined!13270 Bool) (index!52225 (_ BitVec 32)) (x!133929 (_ BitVec 32))) (Undefined!12458) (MissingVacant!12458 (index!52226 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99948 (_ BitVec 32)) SeekEntryResult!12458)

(assert (=> b!1499091 (= res!1020245 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48229 a!2850) j!87) a!2850 mask!2661) (Found!12458 j!87)))))

(declare-fun res!1020240 () Bool)

(assert (=> start!127654 (=> (not res!1020240) (not e!839215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127654 (= res!1020240 (validMask!0 mask!2661))))

(assert (=> start!127654 e!839215))

(assert (=> start!127654 true))

(declare-fun array_inv!37174 (array!99948) Bool)

(assert (=> start!127654 (array_inv!37174 a!2850)))

(declare-fun b!1499092 () Bool)

(declare-fun res!1020242 () Bool)

(assert (=> b!1499092 (=> (not res!1020242) (not e!839215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499092 (= res!1020242 (validKeyInArray!0 (select (arr!48229 a!2850) j!87)))))

(declare-fun b!1499093 () Bool)

(declare-fun res!1020243 () Bool)

(assert (=> b!1499093 (=> (not res!1020243) (not e!839215))))

(declare-datatypes ((List!34901 0))(
  ( (Nil!34898) (Cons!34897 (h!36295 (_ BitVec 64)) (t!49602 List!34901)) )
))
(declare-fun arrayNoDuplicates!0 (array!99948 (_ BitVec 32) List!34901) Bool)

(assert (=> b!1499093 (= res!1020243 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34898))))

(declare-fun b!1499094 () Bool)

(declare-fun res!1020239 () Bool)

(assert (=> b!1499094 (=> (not res!1020239) (not e!839215))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499094 (= res!1020239 (validKeyInArray!0 (select (arr!48229 a!2850) i!996)))))

(declare-fun b!1499095 () Bool)

(declare-fun res!1020244 () Bool)

(assert (=> b!1499095 (=> (not res!1020244) (not e!839215))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499095 (= res!1020244 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48780 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48780 a!2850)) (= (select (arr!48229 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48229 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48780 a!2850))))))

(declare-fun b!1499096 () Bool)

(declare-fun res!1020246 () Bool)

(assert (=> b!1499096 (=> (not res!1020246) (not e!839215))))

(assert (=> b!1499096 (= res!1020246 (and (= (size!48780 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48780 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48780 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499097 () Bool)

(declare-fun res!1020241 () Bool)

(assert (=> b!1499097 (=> (not res!1020241) (not e!839215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99948 (_ BitVec 32)) Bool)

(assert (=> b!1499097 (= res!1020241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499098 () Bool)

(assert (=> b!1499098 (= e!839215 (and (not (= (select (arr!48229 a!2850) index!625) (select (arr!48229 a!2850) j!87))) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(assert (= (and start!127654 res!1020240) b!1499096))

(assert (= (and b!1499096 res!1020246) b!1499094))

(assert (= (and b!1499094 res!1020239) b!1499092))

(assert (= (and b!1499092 res!1020242) b!1499097))

(assert (= (and b!1499097 res!1020241) b!1499093))

(assert (= (and b!1499093 res!1020243) b!1499095))

(assert (= (and b!1499095 res!1020244) b!1499091))

(assert (= (and b!1499091 res!1020245) b!1499098))

(declare-fun m!1382331 () Bool)

(assert (=> b!1499095 m!1382331))

(declare-fun m!1382333 () Bool)

(assert (=> b!1499095 m!1382333))

(declare-fun m!1382335 () Bool)

(assert (=> b!1499095 m!1382335))

(declare-fun m!1382337 () Bool)

(assert (=> b!1499092 m!1382337))

(assert (=> b!1499092 m!1382337))

(declare-fun m!1382339 () Bool)

(assert (=> b!1499092 m!1382339))

(declare-fun m!1382341 () Bool)

(assert (=> b!1499094 m!1382341))

(assert (=> b!1499094 m!1382341))

(declare-fun m!1382343 () Bool)

(assert (=> b!1499094 m!1382343))

(declare-fun m!1382345 () Bool)

(assert (=> start!127654 m!1382345))

(declare-fun m!1382347 () Bool)

(assert (=> start!127654 m!1382347))

(declare-fun m!1382349 () Bool)

(assert (=> b!1499093 m!1382349))

(declare-fun m!1382351 () Bool)

(assert (=> b!1499097 m!1382351))

(declare-fun m!1382353 () Bool)

(assert (=> b!1499098 m!1382353))

(assert (=> b!1499098 m!1382337))

(assert (=> b!1499091 m!1382337))

(assert (=> b!1499091 m!1382337))

(declare-fun m!1382355 () Bool)

(assert (=> b!1499091 m!1382355))

(push 1)

(assert (not b!1499092))

(assert (not b!1499097))

(assert (not b!1499093))

(assert (not b!1499094))

(assert (not b!1499091))

(assert (not start!127654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

