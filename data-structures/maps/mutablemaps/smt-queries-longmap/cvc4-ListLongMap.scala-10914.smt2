; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127796 () Bool)

(assert start!127796)

(declare-fun b!1501206 () Bool)

(declare-fun e!839867 () Bool)

(declare-fun e!839865 () Bool)

(assert (=> b!1501206 (= e!839867 e!839865)))

(declare-fun res!1022358 () Bool)

(assert (=> b!1501206 (=> (not res!1022358) (not e!839865))))

(declare-datatypes ((SeekEntryResult!12529 0))(
  ( (MissingZero!12529 (index!52507 (_ BitVec 32))) (Found!12529 (index!52508 (_ BitVec 32))) (Intermediate!12529 (undefined!13341 Bool) (index!52509 (_ BitVec 32)) (x!134184 (_ BitVec 32))) (Undefined!12529) (MissingVacant!12529 (index!52510 (_ BitVec 32))) )
))
(declare-fun lt!653083 () SeekEntryResult!12529)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100090 0))(
  ( (array!100091 (arr!48300 (Array (_ BitVec 32) (_ BitVec 64))) (size!48851 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100090)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100090 (_ BitVec 32)) SeekEntryResult!12529)

(assert (=> b!1501206 (= res!1022358 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48300 a!2850) j!87) a!2850 mask!2661) lt!653083))))

(assert (=> b!1501206 (= lt!653083 (Found!12529 j!87))))

(declare-fun b!1501207 () Bool)

(declare-fun res!1022357 () Bool)

(assert (=> b!1501207 (=> (not res!1022357) (not e!839867))))

(declare-datatypes ((List!34972 0))(
  ( (Nil!34969) (Cons!34968 (h!36366 (_ BitVec 64)) (t!49673 List!34972)) )
))
(declare-fun arrayNoDuplicates!0 (array!100090 (_ BitVec 32) List!34972) Bool)

(assert (=> b!1501207 (= res!1022357 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34969))))

(declare-fun b!1501208 () Bool)

(declare-fun res!1022363 () Bool)

(assert (=> b!1501208 (=> (not res!1022363) (not e!839867))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501208 (= res!1022363 (and (= (size!48851 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48851 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48851 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501209 () Bool)

(declare-fun e!839866 () Bool)

(assert (=> b!1501209 (= e!839865 e!839866)))

(declare-fun res!1022359 () Bool)

(assert (=> b!1501209 (=> (not res!1022359) (not e!839866))))

(declare-fun lt!653081 () (_ BitVec 32))

(assert (=> b!1501209 (= res!1022359 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653081 #b00000000000000000000000000000000) (bvslt lt!653081 (size!48851 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501209 (= lt!653081 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1022354 () Bool)

(assert (=> start!127796 (=> (not res!1022354) (not e!839867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127796 (= res!1022354 (validMask!0 mask!2661))))

(assert (=> start!127796 e!839867))

(assert (=> start!127796 true))

(declare-fun array_inv!37245 (array!100090) Bool)

(assert (=> start!127796 (array_inv!37245 a!2850)))

(declare-fun b!1501210 () Bool)

(assert (=> b!1501210 (= e!839866 (not true))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501210 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653081 vacantAfter!10 (select (store (arr!48300 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100091 (store (arr!48300 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48851 a!2850)) mask!2661) lt!653083)))

(declare-datatypes ((Unit!50166 0))(
  ( (Unit!50167) )
))
(declare-fun lt!653082 () Unit!50166)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50166)

(assert (=> b!1501210 (= lt!653082 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653081 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501211 () Bool)

(declare-fun res!1022356 () Bool)

(assert (=> b!1501211 (=> (not res!1022356) (not e!839867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100090 (_ BitVec 32)) Bool)

(assert (=> b!1501211 (= res!1022356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501212 () Bool)

(declare-fun res!1022355 () Bool)

(assert (=> b!1501212 (=> (not res!1022355) (not e!839867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501212 (= res!1022355 (validKeyInArray!0 (select (arr!48300 a!2850) j!87)))))

(declare-fun b!1501213 () Bool)

(declare-fun res!1022360 () Bool)

(assert (=> b!1501213 (=> (not res!1022360) (not e!839865))))

(assert (=> b!1501213 (= res!1022360 (not (= (select (arr!48300 a!2850) index!625) (select (arr!48300 a!2850) j!87))))))

(declare-fun b!1501214 () Bool)

(declare-fun res!1022364 () Bool)

(assert (=> b!1501214 (=> (not res!1022364) (not e!839866))))

(assert (=> b!1501214 (= res!1022364 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653081 vacantBefore!10 (select (arr!48300 a!2850) j!87) a!2850 mask!2661) lt!653083))))

(declare-fun b!1501215 () Bool)

(declare-fun res!1022362 () Bool)

(assert (=> b!1501215 (=> (not res!1022362) (not e!839867))))

(assert (=> b!1501215 (= res!1022362 (validKeyInArray!0 (select (arr!48300 a!2850) i!996)))))

(declare-fun b!1501216 () Bool)

(declare-fun res!1022361 () Bool)

(assert (=> b!1501216 (=> (not res!1022361) (not e!839867))))

(assert (=> b!1501216 (= res!1022361 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48851 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48851 a!2850)) (= (select (arr!48300 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48300 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48851 a!2850))))))

(assert (= (and start!127796 res!1022354) b!1501208))

(assert (= (and b!1501208 res!1022363) b!1501215))

(assert (= (and b!1501215 res!1022362) b!1501212))

(assert (= (and b!1501212 res!1022355) b!1501211))

(assert (= (and b!1501211 res!1022356) b!1501207))

(assert (= (and b!1501207 res!1022357) b!1501216))

(assert (= (and b!1501216 res!1022361) b!1501206))

(assert (= (and b!1501206 res!1022358) b!1501213))

(assert (= (and b!1501213 res!1022360) b!1501209))

(assert (= (and b!1501209 res!1022359) b!1501214))

(assert (= (and b!1501214 res!1022364) b!1501210))

(declare-fun m!1384479 () Bool)

(assert (=> b!1501210 m!1384479))

(declare-fun m!1384481 () Bool)

(assert (=> b!1501210 m!1384481))

(assert (=> b!1501210 m!1384481))

(declare-fun m!1384483 () Bool)

(assert (=> b!1501210 m!1384483))

(declare-fun m!1384485 () Bool)

(assert (=> b!1501210 m!1384485))

(declare-fun m!1384487 () Bool)

(assert (=> start!127796 m!1384487))

(declare-fun m!1384489 () Bool)

(assert (=> start!127796 m!1384489))

(declare-fun m!1384491 () Bool)

(assert (=> b!1501211 m!1384491))

(declare-fun m!1384493 () Bool)

(assert (=> b!1501209 m!1384493))

(declare-fun m!1384495 () Bool)

(assert (=> b!1501214 m!1384495))

(assert (=> b!1501214 m!1384495))

(declare-fun m!1384497 () Bool)

(assert (=> b!1501214 m!1384497))

(declare-fun m!1384499 () Bool)

(assert (=> b!1501207 m!1384499))

(declare-fun m!1384501 () Bool)

(assert (=> b!1501215 m!1384501))

(assert (=> b!1501215 m!1384501))

(declare-fun m!1384503 () Bool)

(assert (=> b!1501215 m!1384503))

(assert (=> b!1501206 m!1384495))

(assert (=> b!1501206 m!1384495))

(declare-fun m!1384505 () Bool)

(assert (=> b!1501206 m!1384505))

(declare-fun m!1384507 () Bool)

(assert (=> b!1501216 m!1384507))

(assert (=> b!1501216 m!1384479))

(declare-fun m!1384509 () Bool)

(assert (=> b!1501216 m!1384509))

(declare-fun m!1384511 () Bool)

(assert (=> b!1501213 m!1384511))

(assert (=> b!1501213 m!1384495))

(assert (=> b!1501212 m!1384495))

(assert (=> b!1501212 m!1384495))

(declare-fun m!1384513 () Bool)

(assert (=> b!1501212 m!1384513))

(push 1)

(assert (not b!1501210))

(assert (not b!1501212))

(assert (not b!1501206))

(assert (not b!1501211))

(assert (not start!127796))

