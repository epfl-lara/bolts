; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127790 () Bool)

(assert start!127790)

(declare-fun b!1501107 () Bool)

(declare-fun res!1022264 () Bool)

(declare-fun e!839828 () Bool)

(assert (=> b!1501107 (=> (not res!1022264) (not e!839828))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100084 0))(
  ( (array!100085 (arr!48297 (Array (_ BitVec 32) (_ BitVec 64))) (size!48848 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100084)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12526 0))(
  ( (MissingZero!12526 (index!52495 (_ BitVec 32))) (Found!12526 (index!52496 (_ BitVec 32))) (Intermediate!12526 (undefined!13338 Bool) (index!52497 (_ BitVec 32)) (x!134173 (_ BitVec 32))) (Undefined!12526) (MissingVacant!12526 (index!52498 (_ BitVec 32))) )
))
(declare-fun lt!653055 () SeekEntryResult!12526)

(declare-fun lt!653054 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100084 (_ BitVec 32)) SeekEntryResult!12526)

(assert (=> b!1501107 (= res!1022264 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653054 vacantBefore!10 (select (arr!48297 a!2850) j!87) a!2850 mask!2661) lt!653055))))

(declare-fun b!1501108 () Bool)

(declare-fun res!1022256 () Bool)

(declare-fun e!839830 () Bool)

(assert (=> b!1501108 (=> (not res!1022256) (not e!839830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501108 (= res!1022256 (validKeyInArray!0 (select (arr!48297 a!2850) j!87)))))

(declare-fun b!1501109 () Bool)

(declare-fun res!1022265 () Bool)

(assert (=> b!1501109 (=> (not res!1022265) (not e!839830))))

(declare-datatypes ((List!34969 0))(
  ( (Nil!34966) (Cons!34965 (h!36363 (_ BitVec 64)) (t!49670 List!34969)) )
))
(declare-fun arrayNoDuplicates!0 (array!100084 (_ BitVec 32) List!34969) Bool)

(assert (=> b!1501109 (= res!1022265 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34966))))

(declare-fun b!1501110 () Bool)

(declare-fun res!1022260 () Bool)

(assert (=> b!1501110 (=> (not res!1022260) (not e!839830))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501110 (= res!1022260 (and (= (size!48848 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48848 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48848 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501111 () Bool)

(declare-fun res!1022255 () Bool)

(assert (=> b!1501111 (=> (not res!1022255) (not e!839830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100084 (_ BitVec 32)) Bool)

(assert (=> b!1501111 (= res!1022255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501112 () Bool)

(assert (=> b!1501112 (= e!839828 (not (bvsge mask!2661 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501112 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653054 vacantAfter!10 (select (store (arr!48297 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100085 (store (arr!48297 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48848 a!2850)) mask!2661) lt!653055)))

(declare-datatypes ((Unit!50160 0))(
  ( (Unit!50161) )
))
(declare-fun lt!653056 () Unit!50160)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50160)

(assert (=> b!1501112 (= lt!653056 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653054 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501113 () Bool)

(declare-fun e!839831 () Bool)

(assert (=> b!1501113 (= e!839830 e!839831)))

(declare-fun res!1022257 () Bool)

(assert (=> b!1501113 (=> (not res!1022257) (not e!839831))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1501113 (= res!1022257 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48297 a!2850) j!87) a!2850 mask!2661) lt!653055))))

(assert (=> b!1501113 (= lt!653055 (Found!12526 j!87))))

(declare-fun res!1022259 () Bool)

(assert (=> start!127790 (=> (not res!1022259) (not e!839830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127790 (= res!1022259 (validMask!0 mask!2661))))

(assert (=> start!127790 e!839830))

(assert (=> start!127790 true))

(declare-fun array_inv!37242 (array!100084) Bool)

(assert (=> start!127790 (array_inv!37242 a!2850)))

(declare-fun b!1501114 () Bool)

(declare-fun res!1022258 () Bool)

(assert (=> b!1501114 (=> (not res!1022258) (not e!839831))))

(assert (=> b!1501114 (= res!1022258 (not (= (select (arr!48297 a!2850) index!625) (select (arr!48297 a!2850) j!87))))))

(declare-fun b!1501115 () Bool)

(declare-fun res!1022263 () Bool)

(assert (=> b!1501115 (=> (not res!1022263) (not e!839830))))

(assert (=> b!1501115 (= res!1022263 (validKeyInArray!0 (select (arr!48297 a!2850) i!996)))))

(declare-fun b!1501116 () Bool)

(declare-fun res!1022262 () Bool)

(assert (=> b!1501116 (=> (not res!1022262) (not e!839830))))

(assert (=> b!1501116 (= res!1022262 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48848 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48848 a!2850)) (= (select (arr!48297 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48297 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48848 a!2850))))))

(declare-fun b!1501117 () Bool)

(assert (=> b!1501117 (= e!839831 e!839828)))

(declare-fun res!1022261 () Bool)

(assert (=> b!1501117 (=> (not res!1022261) (not e!839828))))

(assert (=> b!1501117 (= res!1022261 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653054 #b00000000000000000000000000000000) (bvslt lt!653054 (size!48848 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501117 (= lt!653054 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127790 res!1022259) b!1501110))

(assert (= (and b!1501110 res!1022260) b!1501115))

(assert (= (and b!1501115 res!1022263) b!1501108))

(assert (= (and b!1501108 res!1022256) b!1501111))

(assert (= (and b!1501111 res!1022255) b!1501109))

(assert (= (and b!1501109 res!1022265) b!1501116))

(assert (= (and b!1501116 res!1022262) b!1501113))

(assert (= (and b!1501113 res!1022257) b!1501114))

(assert (= (and b!1501114 res!1022258) b!1501117))

(assert (= (and b!1501117 res!1022261) b!1501107))

(assert (= (and b!1501107 res!1022264) b!1501112))

(declare-fun m!1384371 () Bool)

(assert (=> b!1501114 m!1384371))

(declare-fun m!1384373 () Bool)

(assert (=> b!1501114 m!1384373))

(declare-fun m!1384375 () Bool)

(assert (=> b!1501109 m!1384375))

(declare-fun m!1384377 () Bool)

(assert (=> b!1501117 m!1384377))

(assert (=> b!1501108 m!1384373))

(assert (=> b!1501108 m!1384373))

(declare-fun m!1384379 () Bool)

(assert (=> b!1501108 m!1384379))

(declare-fun m!1384381 () Bool)

(assert (=> b!1501115 m!1384381))

(assert (=> b!1501115 m!1384381))

(declare-fun m!1384383 () Bool)

(assert (=> b!1501115 m!1384383))

(declare-fun m!1384385 () Bool)

(assert (=> b!1501116 m!1384385))

(declare-fun m!1384387 () Bool)

(assert (=> b!1501116 m!1384387))

(declare-fun m!1384389 () Bool)

(assert (=> b!1501116 m!1384389))

(assert (=> b!1501113 m!1384373))

(assert (=> b!1501113 m!1384373))

(declare-fun m!1384391 () Bool)

(assert (=> b!1501113 m!1384391))

(declare-fun m!1384393 () Bool)

(assert (=> start!127790 m!1384393))

(declare-fun m!1384395 () Bool)

(assert (=> start!127790 m!1384395))

(assert (=> b!1501107 m!1384373))

(assert (=> b!1501107 m!1384373))

(declare-fun m!1384397 () Bool)

(assert (=> b!1501107 m!1384397))

(assert (=> b!1501112 m!1384387))

(declare-fun m!1384399 () Bool)

(assert (=> b!1501112 m!1384399))

(assert (=> b!1501112 m!1384399))

(declare-fun m!1384401 () Bool)

(assert (=> b!1501112 m!1384401))

(declare-fun m!1384403 () Bool)

(assert (=> b!1501112 m!1384403))

(declare-fun m!1384405 () Bool)

(assert (=> b!1501111 m!1384405))

(push 1)

(assert (not b!1501112))

(assert (not b!1501113))

(assert (not b!1501115))

(assert (not b!1501108))

(assert (not start!127790))

(assert (not b!1501117))

(assert (not b!1501107))

(assert (not b!1501111))

(assert (not b!1501109))

(check-sat)

