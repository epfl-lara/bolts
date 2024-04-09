; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127788 () Bool)

(assert start!127788)

(declare-fun b!1501074 () Bool)

(declare-fun e!839818 () Bool)

(declare-fun e!839819 () Bool)

(assert (=> b!1501074 (= e!839818 e!839819)))

(declare-fun res!1022222 () Bool)

(assert (=> b!1501074 (=> (not res!1022222) (not e!839819))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100082 0))(
  ( (array!100083 (arr!48296 (Array (_ BitVec 32) (_ BitVec 64))) (size!48847 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100082)

(declare-fun index!625 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12525 0))(
  ( (MissingZero!12525 (index!52491 (_ BitVec 32))) (Found!12525 (index!52492 (_ BitVec 32))) (Intermediate!12525 (undefined!13337 Bool) (index!52493 (_ BitVec 32)) (x!134172 (_ BitVec 32))) (Undefined!12525) (MissingVacant!12525 (index!52494 (_ BitVec 32))) )
))
(declare-fun lt!653047 () SeekEntryResult!12525)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100082 (_ BitVec 32)) SeekEntryResult!12525)

(assert (=> b!1501074 (= res!1022222 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48296 a!2850) j!87) a!2850 mask!2661) lt!653047))))

(assert (=> b!1501074 (= lt!653047 (Found!12525 j!87))))

(declare-fun b!1501075 () Bool)

(declare-fun res!1022229 () Bool)

(assert (=> b!1501075 (=> (not res!1022229) (not e!839819))))

(assert (=> b!1501075 (= res!1022229 (not (= (select (arr!48296 a!2850) index!625) (select (arr!48296 a!2850) j!87))))))

(declare-fun b!1501076 () Bool)

(declare-fun res!1022225 () Bool)

(assert (=> b!1501076 (=> (not res!1022225) (not e!839818))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501076 (= res!1022225 (validKeyInArray!0 (select (arr!48296 a!2850) i!996)))))

(declare-fun b!1501077 () Bool)

(declare-fun res!1022231 () Bool)

(assert (=> b!1501077 (=> (not res!1022231) (not e!839818))))

(declare-datatypes ((List!34968 0))(
  ( (Nil!34965) (Cons!34964 (h!36362 (_ BitVec 64)) (t!49669 List!34968)) )
))
(declare-fun arrayNoDuplicates!0 (array!100082 (_ BitVec 32) List!34968) Bool)

(assert (=> b!1501077 (= res!1022231 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34965))))

(declare-fun b!1501078 () Bool)

(declare-fun res!1022228 () Bool)

(assert (=> b!1501078 (=> (not res!1022228) (not e!839818))))

(assert (=> b!1501078 (= res!1022228 (validKeyInArray!0 (select (arr!48296 a!2850) j!87)))))

(declare-fun b!1501079 () Bool)

(declare-fun res!1022232 () Bool)

(assert (=> b!1501079 (=> (not res!1022232) (not e!839818))))

(assert (=> b!1501079 (= res!1022232 (and (= (size!48847 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48847 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48847 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501080 () Bool)

(declare-fun e!839816 () Bool)

(assert (=> b!1501080 (= e!839819 e!839816)))

(declare-fun res!1022226 () Bool)

(assert (=> b!1501080 (=> (not res!1022226) (not e!839816))))

(declare-fun lt!653046 () (_ BitVec 32))

(assert (=> b!1501080 (= res!1022226 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653046 #b00000000000000000000000000000000) (bvslt lt!653046 (size!48847 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501080 (= lt!653046 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1022223 () Bool)

(assert (=> start!127788 (=> (not res!1022223) (not e!839818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127788 (= res!1022223 (validMask!0 mask!2661))))

(assert (=> start!127788 e!839818))

(assert (=> start!127788 true))

(declare-fun array_inv!37241 (array!100082) Bool)

(assert (=> start!127788 (array_inv!37241 a!2850)))

(declare-fun b!1501081 () Bool)

(assert (=> b!1501081 (= e!839816 (not (bvsge mask!2661 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501081 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653046 vacantAfter!10 (select (store (arr!48296 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100083 (store (arr!48296 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48847 a!2850)) mask!2661) lt!653047)))

(declare-datatypes ((Unit!50158 0))(
  ( (Unit!50159) )
))
(declare-fun lt!653045 () Unit!50158)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50158)

(assert (=> b!1501081 (= lt!653045 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653046 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501082 () Bool)

(declare-fun res!1022224 () Bool)

(assert (=> b!1501082 (=> (not res!1022224) (not e!839818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100082 (_ BitVec 32)) Bool)

(assert (=> b!1501082 (= res!1022224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501083 () Bool)

(declare-fun res!1022230 () Bool)

(assert (=> b!1501083 (=> (not res!1022230) (not e!839816))))

(assert (=> b!1501083 (= res!1022230 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653046 vacantBefore!10 (select (arr!48296 a!2850) j!87) a!2850 mask!2661) lt!653047))))

(declare-fun b!1501084 () Bool)

(declare-fun res!1022227 () Bool)

(assert (=> b!1501084 (=> (not res!1022227) (not e!839818))))

(assert (=> b!1501084 (= res!1022227 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48847 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48847 a!2850)) (= (select (arr!48296 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48296 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48847 a!2850))))))

(assert (= (and start!127788 res!1022223) b!1501079))

(assert (= (and b!1501079 res!1022232) b!1501076))

(assert (= (and b!1501076 res!1022225) b!1501078))

(assert (= (and b!1501078 res!1022228) b!1501082))

(assert (= (and b!1501082 res!1022224) b!1501077))

(assert (= (and b!1501077 res!1022231) b!1501084))

(assert (= (and b!1501084 res!1022227) b!1501074))

(assert (= (and b!1501074 res!1022222) b!1501075))

(assert (= (and b!1501075 res!1022229) b!1501080))

(assert (= (and b!1501080 res!1022226) b!1501083))

(assert (= (and b!1501083 res!1022230) b!1501081))

(declare-fun m!1384335 () Bool)

(assert (=> start!127788 m!1384335))

(declare-fun m!1384337 () Bool)

(assert (=> start!127788 m!1384337))

(declare-fun m!1384339 () Bool)

(assert (=> b!1501084 m!1384339))

(declare-fun m!1384341 () Bool)

(assert (=> b!1501084 m!1384341))

(declare-fun m!1384343 () Bool)

(assert (=> b!1501084 m!1384343))

(declare-fun m!1384345 () Bool)

(assert (=> b!1501082 m!1384345))

(declare-fun m!1384347 () Bool)

(assert (=> b!1501083 m!1384347))

(assert (=> b!1501083 m!1384347))

(declare-fun m!1384349 () Bool)

(assert (=> b!1501083 m!1384349))

(assert (=> b!1501074 m!1384347))

(assert (=> b!1501074 m!1384347))

(declare-fun m!1384351 () Bool)

(assert (=> b!1501074 m!1384351))

(declare-fun m!1384353 () Bool)

(assert (=> b!1501077 m!1384353))

(assert (=> b!1501081 m!1384341))

(declare-fun m!1384355 () Bool)

(assert (=> b!1501081 m!1384355))

(assert (=> b!1501081 m!1384355))

(declare-fun m!1384357 () Bool)

(assert (=> b!1501081 m!1384357))

(declare-fun m!1384359 () Bool)

(assert (=> b!1501081 m!1384359))

(declare-fun m!1384361 () Bool)

(assert (=> b!1501076 m!1384361))

(assert (=> b!1501076 m!1384361))

(declare-fun m!1384363 () Bool)

(assert (=> b!1501076 m!1384363))

(assert (=> b!1501078 m!1384347))

(assert (=> b!1501078 m!1384347))

(declare-fun m!1384365 () Bool)

(assert (=> b!1501078 m!1384365))

(declare-fun m!1384367 () Bool)

(assert (=> b!1501080 m!1384367))

(declare-fun m!1384369 () Bool)

(assert (=> b!1501075 m!1384369))

(assert (=> b!1501075 m!1384347))

(check-sat (not b!1501078) (not b!1501083) (not b!1501080) (not b!1501074) (not start!127788) (not b!1501077) (not b!1501076) (not b!1501081) (not b!1501082))
(check-sat)
