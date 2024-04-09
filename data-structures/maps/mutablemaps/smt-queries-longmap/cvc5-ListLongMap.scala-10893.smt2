; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127666 () Bool)

(assert start!127666)

(declare-fun res!1020380 () Bool)

(declare-fun e!839253 () Bool)

(assert (=> start!127666 (=> (not res!1020380) (not e!839253))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127666 (= res!1020380 (validMask!0 mask!2661))))

(assert (=> start!127666 e!839253))

(assert (=> start!127666 true))

(declare-datatypes ((array!99960 0))(
  ( (array!99961 (arr!48235 (Array (_ BitVec 32) (_ BitVec 64))) (size!48786 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99960)

(declare-fun array_inv!37180 (array!99960) Bool)

(assert (=> start!127666 (array_inv!37180 a!2850)))

(declare-fun b!1499230 () Bool)

(declare-fun res!1020382 () Bool)

(assert (=> b!1499230 (=> (not res!1020382) (not e!839253))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499230 (= res!1020382 (and (= (size!48786 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48786 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48786 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499231 () Bool)

(declare-fun res!1020384 () Bool)

(assert (=> b!1499231 (=> (not res!1020384) (not e!839253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99960 (_ BitVec 32)) Bool)

(assert (=> b!1499231 (= res!1020384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499232 () Bool)

(declare-fun e!839255 () Bool)

(assert (=> b!1499232 (= e!839255 false)))

(declare-datatypes ((SeekEntryResult!12464 0))(
  ( (MissingZero!12464 (index!52247 (_ BitVec 32))) (Found!12464 (index!52248 (_ BitVec 32))) (Intermediate!12464 (undefined!13276 Bool) (index!52249 (_ BitVec 32)) (x!133951 (_ BitVec 32))) (Undefined!12464) (MissingVacant!12464 (index!52250 (_ BitVec 32))) )
))
(declare-fun lt!652665 () SeekEntryResult!12464)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652666 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99960 (_ BitVec 32)) SeekEntryResult!12464)

(assert (=> b!1499232 (= lt!652665 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652666 vacantBefore!10 (select (arr!48235 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499233 () Bool)

(declare-fun res!1020378 () Bool)

(assert (=> b!1499233 (=> (not res!1020378) (not e!839253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499233 (= res!1020378 (validKeyInArray!0 (select (arr!48235 a!2850) i!996)))))

(declare-fun b!1499234 () Bool)

(assert (=> b!1499234 (= e!839253 e!839255)))

(declare-fun res!1020381 () Bool)

(assert (=> b!1499234 (=> (not res!1020381) (not e!839255))))

(assert (=> b!1499234 (= res!1020381 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652666 #b00000000000000000000000000000000) (bvslt lt!652666 (size!48786 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499234 (= lt!652666 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499235 () Bool)

(declare-fun res!1020379 () Bool)

(assert (=> b!1499235 (=> (not res!1020379) (not e!839253))))

(assert (=> b!1499235 (= res!1020379 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48235 a!2850) j!87) a!2850 mask!2661) (Found!12464 j!87)))))

(declare-fun b!1499236 () Bool)

(declare-fun res!1020386 () Bool)

(assert (=> b!1499236 (=> (not res!1020386) (not e!839253))))

(assert (=> b!1499236 (= res!1020386 (not (= (select (arr!48235 a!2850) index!625) (select (arr!48235 a!2850) j!87))))))

(declare-fun b!1499237 () Bool)

(declare-fun res!1020385 () Bool)

(assert (=> b!1499237 (=> (not res!1020385) (not e!839253))))

(declare-datatypes ((List!34907 0))(
  ( (Nil!34904) (Cons!34903 (h!36301 (_ BitVec 64)) (t!49608 List!34907)) )
))
(declare-fun arrayNoDuplicates!0 (array!99960 (_ BitVec 32) List!34907) Bool)

(assert (=> b!1499237 (= res!1020385 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34904))))

(declare-fun b!1499238 () Bool)

(declare-fun res!1020383 () Bool)

(assert (=> b!1499238 (=> (not res!1020383) (not e!839253))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499238 (= res!1020383 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48786 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48786 a!2850)) (= (select (arr!48235 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48235 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48786 a!2850))))))

(declare-fun b!1499239 () Bool)

(declare-fun res!1020387 () Bool)

(assert (=> b!1499239 (=> (not res!1020387) (not e!839253))))

(assert (=> b!1499239 (= res!1020387 (validKeyInArray!0 (select (arr!48235 a!2850) j!87)))))

(assert (= (and start!127666 res!1020380) b!1499230))

(assert (= (and b!1499230 res!1020382) b!1499233))

(assert (= (and b!1499233 res!1020378) b!1499239))

(assert (= (and b!1499239 res!1020387) b!1499231))

(assert (= (and b!1499231 res!1020384) b!1499237))

(assert (= (and b!1499237 res!1020385) b!1499238))

(assert (= (and b!1499238 res!1020383) b!1499235))

(assert (= (and b!1499235 res!1020379) b!1499236))

(assert (= (and b!1499236 res!1020386) b!1499234))

(assert (= (and b!1499234 res!1020381) b!1499232))

(declare-fun m!1382481 () Bool)

(assert (=> b!1499233 m!1382481))

(assert (=> b!1499233 m!1382481))

(declare-fun m!1382483 () Bool)

(assert (=> b!1499233 m!1382483))

(declare-fun m!1382485 () Bool)

(assert (=> b!1499235 m!1382485))

(assert (=> b!1499235 m!1382485))

(declare-fun m!1382487 () Bool)

(assert (=> b!1499235 m!1382487))

(declare-fun m!1382489 () Bool)

(assert (=> b!1499238 m!1382489))

(declare-fun m!1382491 () Bool)

(assert (=> b!1499238 m!1382491))

(declare-fun m!1382493 () Bool)

(assert (=> b!1499238 m!1382493))

(declare-fun m!1382495 () Bool)

(assert (=> start!127666 m!1382495))

(declare-fun m!1382497 () Bool)

(assert (=> start!127666 m!1382497))

(declare-fun m!1382499 () Bool)

(assert (=> b!1499237 m!1382499))

(declare-fun m!1382501 () Bool)

(assert (=> b!1499234 m!1382501))

(assert (=> b!1499239 m!1382485))

(assert (=> b!1499239 m!1382485))

(declare-fun m!1382503 () Bool)

(assert (=> b!1499239 m!1382503))

(assert (=> b!1499232 m!1382485))

(assert (=> b!1499232 m!1382485))

(declare-fun m!1382505 () Bool)

(assert (=> b!1499232 m!1382505))

(declare-fun m!1382507 () Bool)

(assert (=> b!1499231 m!1382507))

(declare-fun m!1382509 () Bool)

(assert (=> b!1499236 m!1382509))

(assert (=> b!1499236 m!1382485))

(push 1)

