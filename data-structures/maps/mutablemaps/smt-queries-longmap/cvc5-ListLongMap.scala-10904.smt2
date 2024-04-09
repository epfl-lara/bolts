; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127732 () Bool)

(assert start!127732)

(declare-fun b!1500220 () Bool)

(declare-fun res!1021374 () Bool)

(declare-fun e!839551 () Bool)

(assert (=> b!1500220 (=> (not res!1021374) (not e!839551))))

(declare-datatypes ((array!100026 0))(
  ( (array!100027 (arr!48268 (Array (_ BitVec 32) (_ BitVec 64))) (size!48819 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100026)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500220 (= res!1021374 (not (= (select (arr!48268 a!2850) index!625) (select (arr!48268 a!2850) j!87))))))

(declare-fun b!1500221 () Bool)

(declare-fun e!839552 () Bool)

(assert (=> b!1500221 (= e!839552 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12497 0))(
  ( (MissingZero!12497 (index!52379 (_ BitVec 32))) (Found!12497 (index!52380 (_ BitVec 32))) (Intermediate!12497 (undefined!13309 Bool) (index!52381 (_ BitVec 32)) (x!134072 (_ BitVec 32))) (Undefined!12497) (MissingVacant!12497 (index!52382 (_ BitVec 32))) )
))
(declare-fun lt!652863 () SeekEntryResult!12497)

(declare-fun lt!652864 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100026 (_ BitVec 32)) SeekEntryResult!12497)

(assert (=> b!1500221 (= lt!652863 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652864 vacantBefore!10 (select (arr!48268 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1021369 () Bool)

(assert (=> start!127732 (=> (not res!1021369) (not e!839551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127732 (= res!1021369 (validMask!0 mask!2661))))

(assert (=> start!127732 e!839551))

(assert (=> start!127732 true))

(declare-fun array_inv!37213 (array!100026) Bool)

(assert (=> start!127732 (array_inv!37213 a!2850)))

(declare-fun b!1500222 () Bool)

(declare-fun res!1021377 () Bool)

(assert (=> b!1500222 (=> (not res!1021377) (not e!839551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100026 (_ BitVec 32)) Bool)

(assert (=> b!1500222 (= res!1021377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500223 () Bool)

(declare-fun res!1021375 () Bool)

(assert (=> b!1500223 (=> (not res!1021375) (not e!839551))))

(declare-datatypes ((List!34940 0))(
  ( (Nil!34937) (Cons!34936 (h!36334 (_ BitVec 64)) (t!49641 List!34940)) )
))
(declare-fun arrayNoDuplicates!0 (array!100026 (_ BitVec 32) List!34940) Bool)

(assert (=> b!1500223 (= res!1021375 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34937))))

(declare-fun b!1500224 () Bool)

(declare-fun res!1021372 () Bool)

(assert (=> b!1500224 (=> (not res!1021372) (not e!839551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500224 (= res!1021372 (validKeyInArray!0 (select (arr!48268 a!2850) j!87)))))

(declare-fun b!1500225 () Bool)

(declare-fun res!1021370 () Bool)

(assert (=> b!1500225 (=> (not res!1021370) (not e!839551))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500225 (= res!1021370 (validKeyInArray!0 (select (arr!48268 a!2850) i!996)))))

(declare-fun b!1500226 () Bool)

(declare-fun res!1021371 () Bool)

(assert (=> b!1500226 (=> (not res!1021371) (not e!839551))))

(assert (=> b!1500226 (= res!1021371 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48268 a!2850) j!87) a!2850 mask!2661) (Found!12497 j!87)))))

(declare-fun b!1500227 () Bool)

(declare-fun res!1021376 () Bool)

(assert (=> b!1500227 (=> (not res!1021376) (not e!839551))))

(assert (=> b!1500227 (= res!1021376 (and (= (size!48819 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48819 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48819 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500228 () Bool)

(assert (=> b!1500228 (= e!839551 e!839552)))

(declare-fun res!1021373 () Bool)

(assert (=> b!1500228 (=> (not res!1021373) (not e!839552))))

(assert (=> b!1500228 (= res!1021373 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652864 #b00000000000000000000000000000000) (bvslt lt!652864 (size!48819 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500228 (= lt!652864 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500229 () Bool)

(declare-fun res!1021368 () Bool)

(assert (=> b!1500229 (=> (not res!1021368) (not e!839551))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500229 (= res!1021368 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48819 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48819 a!2850)) (= (select (arr!48268 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48268 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48819 a!2850))))))

(assert (= (and start!127732 res!1021369) b!1500227))

(assert (= (and b!1500227 res!1021376) b!1500225))

(assert (= (and b!1500225 res!1021370) b!1500224))

(assert (= (and b!1500224 res!1021372) b!1500222))

(assert (= (and b!1500222 res!1021377) b!1500223))

(assert (= (and b!1500223 res!1021375) b!1500229))

(assert (= (and b!1500229 res!1021368) b!1500226))

(assert (= (and b!1500226 res!1021371) b!1500220))

(assert (= (and b!1500220 res!1021374) b!1500228))

(assert (= (and b!1500228 res!1021373) b!1500221))

(declare-fun m!1383471 () Bool)

(assert (=> b!1500228 m!1383471))

(declare-fun m!1383473 () Bool)

(assert (=> b!1500226 m!1383473))

(assert (=> b!1500226 m!1383473))

(declare-fun m!1383475 () Bool)

(assert (=> b!1500226 m!1383475))

(declare-fun m!1383477 () Bool)

(assert (=> b!1500220 m!1383477))

(assert (=> b!1500220 m!1383473))

(declare-fun m!1383479 () Bool)

(assert (=> b!1500223 m!1383479))

(assert (=> b!1500221 m!1383473))

(assert (=> b!1500221 m!1383473))

(declare-fun m!1383481 () Bool)

(assert (=> b!1500221 m!1383481))

(assert (=> b!1500224 m!1383473))

(assert (=> b!1500224 m!1383473))

(declare-fun m!1383483 () Bool)

(assert (=> b!1500224 m!1383483))

(declare-fun m!1383485 () Bool)

(assert (=> b!1500225 m!1383485))

(assert (=> b!1500225 m!1383485))

(declare-fun m!1383487 () Bool)

(assert (=> b!1500225 m!1383487))

(declare-fun m!1383489 () Bool)

(assert (=> start!127732 m!1383489))

(declare-fun m!1383491 () Bool)

(assert (=> start!127732 m!1383491))

(declare-fun m!1383493 () Bool)

(assert (=> b!1500222 m!1383493))

(declare-fun m!1383495 () Bool)

(assert (=> b!1500229 m!1383495))

(declare-fun m!1383497 () Bool)

(assert (=> b!1500229 m!1383497))

(declare-fun m!1383499 () Bool)

(assert (=> b!1500229 m!1383499))

(push 1)

