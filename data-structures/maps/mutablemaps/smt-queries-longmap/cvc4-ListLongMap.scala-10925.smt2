; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127862 () Bool)

(assert start!127862)

(declare-fun res!1023174 () Bool)

(declare-fun e!840164 () Bool)

(assert (=> start!127862 (=> (not res!1023174) (not e!840164))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127862 (= res!1023174 (validMask!0 mask!2661))))

(assert (=> start!127862 e!840164))

(assert (=> start!127862 true))

(declare-datatypes ((array!100156 0))(
  ( (array!100157 (arr!48333 (Array (_ BitVec 32) (_ BitVec 64))) (size!48884 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100156)

(declare-fun array_inv!37278 (array!100156) Bool)

(assert (=> start!127862 (array_inv!37278 a!2850)))

(declare-fun b!1502020 () Bool)

(declare-fun res!1023173 () Bool)

(assert (=> b!1502020 (=> (not res!1023173) (not e!840164))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502020 (= res!1023173 (validKeyInArray!0 (select (arr!48333 a!2850) i!996)))))

(declare-fun b!1502021 () Bool)

(declare-fun res!1023169 () Bool)

(assert (=> b!1502021 (=> (not res!1023169) (not e!840164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100156 (_ BitVec 32)) Bool)

(assert (=> b!1502021 (= res!1023169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502022 () Bool)

(declare-fun res!1023170 () Bool)

(assert (=> b!1502022 (=> (not res!1023170) (not e!840164))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502022 (= res!1023170 (and (= (size!48884 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48884 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48884 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502023 () Bool)

(assert (=> b!1502023 (= e!840164 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12550 0))(
  ( (MissingZero!12550 (index!52591 (_ BitVec 32))) (Found!12550 (index!52592 (_ BitVec 32))) (Intermediate!12550 (undefined!13362 Bool) (index!52593 (_ BitVec 32)) (x!134293 (_ BitVec 32))) (Undefined!12550) (MissingVacant!12550 (index!52594 (_ BitVec 32))) )
))
(declare-fun lt!653272 () SeekEntryResult!12550)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100156 (_ BitVec 32)) SeekEntryResult!12550)

(assert (=> b!1502023 (= lt!653272 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48333 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502024 () Bool)

(declare-fun res!1023168 () Bool)

(assert (=> b!1502024 (=> (not res!1023168) (not e!840164))))

(declare-datatypes ((List!35005 0))(
  ( (Nil!35002) (Cons!35001 (h!36399 (_ BitVec 64)) (t!49706 List!35005)) )
))
(declare-fun arrayNoDuplicates!0 (array!100156 (_ BitVec 32) List!35005) Bool)

(assert (=> b!1502024 (= res!1023168 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35002))))

(declare-fun b!1502025 () Bool)

(declare-fun res!1023171 () Bool)

(assert (=> b!1502025 (=> (not res!1023171) (not e!840164))))

(assert (=> b!1502025 (= res!1023171 (validKeyInArray!0 (select (arr!48333 a!2850) j!87)))))

(declare-fun b!1502026 () Bool)

(declare-fun res!1023172 () Bool)

(assert (=> b!1502026 (=> (not res!1023172) (not e!840164))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502026 (= res!1023172 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48884 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48884 a!2850)) (= (select (arr!48333 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48333 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48884 a!2850))))))

(assert (= (and start!127862 res!1023174) b!1502022))

(assert (= (and b!1502022 res!1023170) b!1502020))

(assert (= (and b!1502020 res!1023173) b!1502025))

(assert (= (and b!1502025 res!1023171) b!1502021))

(assert (= (and b!1502021 res!1023169) b!1502024))

(assert (= (and b!1502024 res!1023168) b!1502026))

(assert (= (and b!1502026 res!1023172) b!1502023))

(declare-fun m!1385373 () Bool)

(assert (=> b!1502024 m!1385373))

(declare-fun m!1385375 () Bool)

(assert (=> start!127862 m!1385375))

(declare-fun m!1385377 () Bool)

(assert (=> start!127862 m!1385377))

(declare-fun m!1385379 () Bool)

(assert (=> b!1502023 m!1385379))

(assert (=> b!1502023 m!1385379))

(declare-fun m!1385381 () Bool)

(assert (=> b!1502023 m!1385381))

(declare-fun m!1385383 () Bool)

(assert (=> b!1502026 m!1385383))

(declare-fun m!1385385 () Bool)

(assert (=> b!1502026 m!1385385))

(declare-fun m!1385387 () Bool)

(assert (=> b!1502026 m!1385387))

(declare-fun m!1385389 () Bool)

(assert (=> b!1502020 m!1385389))

(assert (=> b!1502020 m!1385389))

(declare-fun m!1385391 () Bool)

(assert (=> b!1502020 m!1385391))

(declare-fun m!1385393 () Bool)

(assert (=> b!1502021 m!1385393))

(assert (=> b!1502025 m!1385379))

(assert (=> b!1502025 m!1385379))

(declare-fun m!1385395 () Bool)

(assert (=> b!1502025 m!1385395))

(push 1)

(assert (not b!1502024))

(assert (not b!1502023))

(assert (not b!1502021))

(assert (not b!1502025))

(assert (not b!1502020))

(assert (not start!127862))

