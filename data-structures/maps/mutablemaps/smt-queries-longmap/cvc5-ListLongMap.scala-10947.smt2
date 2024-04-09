; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128104 () Bool)

(assert start!128104)

(declare-fun b!1504088 () Bool)

(declare-fun e!840835 () Bool)

(assert (=> b!1504088 (= e!840835 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun lt!653605 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504088 (= lt!653605 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504089 () Bool)

(declare-fun res!1024953 () Bool)

(assert (=> b!1504089 (=> (not res!1024953) (not e!840835))))

(declare-datatypes ((array!100293 0))(
  ( (array!100294 (arr!48397 (Array (_ BitVec 32) (_ BitVec 64))) (size!48948 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100293)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504089 (= res!1024953 (validKeyInArray!0 (select (arr!48397 a!2850) j!87)))))

(declare-fun b!1504090 () Bool)

(declare-fun res!1024948 () Bool)

(assert (=> b!1504090 (=> (not res!1024948) (not e!840835))))

(declare-datatypes ((List!35069 0))(
  ( (Nil!35066) (Cons!35065 (h!36463 (_ BitVec 64)) (t!49770 List!35069)) )
))
(declare-fun arrayNoDuplicates!0 (array!100293 (_ BitVec 32) List!35069) Bool)

(assert (=> b!1504090 (= res!1024948 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35066))))

(declare-fun b!1504091 () Bool)

(declare-fun res!1024955 () Bool)

(assert (=> b!1504091 (=> (not res!1024955) (not e!840835))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504091 (= res!1024955 (and (= (size!48948 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48948 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48948 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504092 () Bool)

(declare-fun res!1024949 () Bool)

(assert (=> b!1504092 (=> (not res!1024949) (not e!840835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100293 (_ BitVec 32)) Bool)

(assert (=> b!1504092 (= res!1024949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504093 () Bool)

(declare-fun res!1024956 () Bool)

(assert (=> b!1504093 (=> (not res!1024956) (not e!840835))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504093 (= res!1024956 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48948 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48948 a!2850)) (= (select (arr!48397 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48397 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48948 a!2850))))))

(declare-fun res!1024950 () Bool)

(assert (=> start!128104 (=> (not res!1024950) (not e!840835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128104 (= res!1024950 (validMask!0 mask!2661))))

(assert (=> start!128104 e!840835))

(assert (=> start!128104 true))

(declare-fun array_inv!37342 (array!100293) Bool)

(assert (=> start!128104 (array_inv!37342 a!2850)))

(declare-fun b!1504094 () Bool)

(declare-fun res!1024952 () Bool)

(assert (=> b!1504094 (=> (not res!1024952) (not e!840835))))

(assert (=> b!1504094 (= res!1024952 (validKeyInArray!0 (select (arr!48397 a!2850) i!996)))))

(declare-fun b!1504095 () Bool)

(declare-fun res!1024954 () Bool)

(assert (=> b!1504095 (=> (not res!1024954) (not e!840835))))

(declare-datatypes ((SeekEntryResult!12614 0))(
  ( (MissingZero!12614 (index!52847 (_ BitVec 32))) (Found!12614 (index!52848 (_ BitVec 32))) (Intermediate!12614 (undefined!13426 Bool) (index!52849 (_ BitVec 32)) (x!134545 (_ BitVec 32))) (Undefined!12614) (MissingVacant!12614 (index!52850 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100293 (_ BitVec 32)) SeekEntryResult!12614)

(assert (=> b!1504095 (= res!1024954 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48397 a!2850) j!87) a!2850 mask!2661) (Found!12614 j!87)))))

(declare-fun b!1504096 () Bool)

(declare-fun res!1024951 () Bool)

(assert (=> b!1504096 (=> (not res!1024951) (not e!840835))))

(assert (=> b!1504096 (= res!1024951 (not (= (select (arr!48397 a!2850) index!625) (select (arr!48397 a!2850) j!87))))))

(assert (= (and start!128104 res!1024950) b!1504091))

(assert (= (and b!1504091 res!1024955) b!1504094))

(assert (= (and b!1504094 res!1024952) b!1504089))

(assert (= (and b!1504089 res!1024953) b!1504092))

(assert (= (and b!1504092 res!1024949) b!1504090))

(assert (= (and b!1504090 res!1024948) b!1504093))

(assert (= (and b!1504093 res!1024956) b!1504095))

(assert (= (and b!1504095 res!1024954) b!1504096))

(assert (= (and b!1504096 res!1024951) b!1504088))

(declare-fun m!1387353 () Bool)

(assert (=> b!1504092 m!1387353))

(declare-fun m!1387355 () Bool)

(assert (=> b!1504095 m!1387355))

(assert (=> b!1504095 m!1387355))

(declare-fun m!1387357 () Bool)

(assert (=> b!1504095 m!1387357))

(declare-fun m!1387359 () Bool)

(assert (=> b!1504096 m!1387359))

(assert (=> b!1504096 m!1387355))

(assert (=> b!1504089 m!1387355))

(assert (=> b!1504089 m!1387355))

(declare-fun m!1387361 () Bool)

(assert (=> b!1504089 m!1387361))

(declare-fun m!1387363 () Bool)

(assert (=> b!1504090 m!1387363))

(declare-fun m!1387365 () Bool)

(assert (=> start!128104 m!1387365))

(declare-fun m!1387367 () Bool)

(assert (=> start!128104 m!1387367))

(declare-fun m!1387369 () Bool)

(assert (=> b!1504093 m!1387369))

(declare-fun m!1387371 () Bool)

(assert (=> b!1504093 m!1387371))

(declare-fun m!1387373 () Bool)

(assert (=> b!1504093 m!1387373))

(declare-fun m!1387375 () Bool)

(assert (=> b!1504088 m!1387375))

(declare-fun m!1387377 () Bool)

(assert (=> b!1504094 m!1387377))

(assert (=> b!1504094 m!1387377))

(declare-fun m!1387379 () Bool)

(assert (=> b!1504094 m!1387379))

(push 1)

(assert (not b!1504092))

(assert (not b!1504089))

(assert (not b!1504094))

(assert (not start!128104))

(assert (not b!1504088))

(assert (not b!1504090))

(assert (not b!1504095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

