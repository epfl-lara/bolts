; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127726 () Bool)

(assert start!127726)

(declare-fun b!1500130 () Bool)

(declare-fun res!1021278 () Bool)

(declare-fun e!839525 () Bool)

(assert (=> b!1500130 (=> (not res!1021278) (not e!839525))))

(declare-datatypes ((array!100020 0))(
  ( (array!100021 (arr!48265 (Array (_ BitVec 32) (_ BitVec 64))) (size!48816 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100020)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500130 (= res!1021278 (not (= (select (arr!48265 a!2850) index!625) (select (arr!48265 a!2850) j!87))))))

(declare-fun b!1500131 () Bool)

(declare-fun e!839523 () Bool)

(assert (=> b!1500131 (= e!839525 e!839523)))

(declare-fun res!1021279 () Bool)

(assert (=> b!1500131 (=> (not res!1021279) (not e!839523))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652845 () (_ BitVec 32))

(assert (=> b!1500131 (= res!1021279 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652845 #b00000000000000000000000000000000) (bvslt lt!652845 (size!48816 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500131 (= lt!652845 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500132 () Bool)

(assert (=> b!1500132 (= e!839523 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12494 0))(
  ( (MissingZero!12494 (index!52367 (_ BitVec 32))) (Found!12494 (index!52368 (_ BitVec 32))) (Intermediate!12494 (undefined!13306 Bool) (index!52369 (_ BitVec 32)) (x!134061 (_ BitVec 32))) (Undefined!12494) (MissingVacant!12494 (index!52370 (_ BitVec 32))) )
))
(declare-fun lt!652846 () SeekEntryResult!12494)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100020 (_ BitVec 32)) SeekEntryResult!12494)

(assert (=> b!1500132 (= lt!652846 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652845 vacantBefore!10 (select (arr!48265 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1021285 () Bool)

(assert (=> start!127726 (=> (not res!1021285) (not e!839525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127726 (= res!1021285 (validMask!0 mask!2661))))

(assert (=> start!127726 e!839525))

(assert (=> start!127726 true))

(declare-fun array_inv!37210 (array!100020) Bool)

(assert (=> start!127726 (array_inv!37210 a!2850)))

(declare-fun b!1500133 () Bool)

(declare-fun res!1021280 () Bool)

(assert (=> b!1500133 (=> (not res!1021280) (not e!839525))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500133 (= res!1021280 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48816 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48816 a!2850)) (= (select (arr!48265 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48265 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48816 a!2850))))))

(declare-fun b!1500134 () Bool)

(declare-fun res!1021286 () Bool)

(assert (=> b!1500134 (=> (not res!1021286) (not e!839525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100020 (_ BitVec 32)) Bool)

(assert (=> b!1500134 (= res!1021286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500135 () Bool)

(declare-fun res!1021281 () Bool)

(assert (=> b!1500135 (=> (not res!1021281) (not e!839525))))

(declare-datatypes ((List!34937 0))(
  ( (Nil!34934) (Cons!34933 (h!36331 (_ BitVec 64)) (t!49638 List!34937)) )
))
(declare-fun arrayNoDuplicates!0 (array!100020 (_ BitVec 32) List!34937) Bool)

(assert (=> b!1500135 (= res!1021281 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34934))))

(declare-fun b!1500136 () Bool)

(declare-fun res!1021287 () Bool)

(assert (=> b!1500136 (=> (not res!1021287) (not e!839525))))

(assert (=> b!1500136 (= res!1021287 (and (= (size!48816 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48816 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48816 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500137 () Bool)

(declare-fun res!1021282 () Bool)

(assert (=> b!1500137 (=> (not res!1021282) (not e!839525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500137 (= res!1021282 (validKeyInArray!0 (select (arr!48265 a!2850) j!87)))))

(declare-fun b!1500138 () Bool)

(declare-fun res!1021283 () Bool)

(assert (=> b!1500138 (=> (not res!1021283) (not e!839525))))

(assert (=> b!1500138 (= res!1021283 (validKeyInArray!0 (select (arr!48265 a!2850) i!996)))))

(declare-fun b!1500139 () Bool)

(declare-fun res!1021284 () Bool)

(assert (=> b!1500139 (=> (not res!1021284) (not e!839525))))

(assert (=> b!1500139 (= res!1021284 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48265 a!2850) j!87) a!2850 mask!2661) (Found!12494 j!87)))))

(assert (= (and start!127726 res!1021285) b!1500136))

(assert (= (and b!1500136 res!1021287) b!1500138))

(assert (= (and b!1500138 res!1021283) b!1500137))

(assert (= (and b!1500137 res!1021282) b!1500134))

(assert (= (and b!1500134 res!1021286) b!1500135))

(assert (= (and b!1500135 res!1021281) b!1500133))

(assert (= (and b!1500133 res!1021280) b!1500139))

(assert (= (and b!1500139 res!1021284) b!1500130))

(assert (= (and b!1500130 res!1021278) b!1500131))

(assert (= (and b!1500131 res!1021279) b!1500132))

(declare-fun m!1383381 () Bool)

(assert (=> b!1500138 m!1383381))

(assert (=> b!1500138 m!1383381))

(declare-fun m!1383383 () Bool)

(assert (=> b!1500138 m!1383383))

(declare-fun m!1383385 () Bool)

(assert (=> b!1500130 m!1383385))

(declare-fun m!1383387 () Bool)

(assert (=> b!1500130 m!1383387))

(declare-fun m!1383389 () Bool)

(assert (=> b!1500134 m!1383389))

(assert (=> b!1500139 m!1383387))

(assert (=> b!1500139 m!1383387))

(declare-fun m!1383391 () Bool)

(assert (=> b!1500139 m!1383391))

(declare-fun m!1383393 () Bool)

(assert (=> b!1500131 m!1383393))

(declare-fun m!1383395 () Bool)

(assert (=> b!1500133 m!1383395))

(declare-fun m!1383397 () Bool)

(assert (=> b!1500133 m!1383397))

(declare-fun m!1383399 () Bool)

(assert (=> b!1500133 m!1383399))

(assert (=> b!1500132 m!1383387))

(assert (=> b!1500132 m!1383387))

(declare-fun m!1383401 () Bool)

(assert (=> b!1500132 m!1383401))

(declare-fun m!1383403 () Bool)

(assert (=> start!127726 m!1383403))

(declare-fun m!1383405 () Bool)

(assert (=> start!127726 m!1383405))

(declare-fun m!1383407 () Bool)

(assert (=> b!1500135 m!1383407))

(assert (=> b!1500137 m!1383387))

(assert (=> b!1500137 m!1383387))

(declare-fun m!1383409 () Bool)

(assert (=> b!1500137 m!1383409))

(push 1)

