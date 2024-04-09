; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127994 () Bool)

(assert start!127994)

(declare-fun b!1503035 () Bool)

(declare-fun e!840541 () Bool)

(assert (=> b!1503035 (= e!840541 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653449 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503035 (= lt!653449 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503036 () Bool)

(declare-fun res!1023991 () Bool)

(assert (=> b!1503036 (=> (not res!1023991) (not e!840541))))

(declare-datatypes ((array!100222 0))(
  ( (array!100223 (arr!48363 (Array (_ BitVec 32) (_ BitVec 64))) (size!48914 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100222)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100222 (_ BitVec 32)) Bool)

(assert (=> b!1503036 (= res!1023991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503037 () Bool)

(declare-fun res!1023987 () Bool)

(assert (=> b!1503037 (=> (not res!1023987) (not e!840541))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12580 0))(
  ( (MissingZero!12580 (index!52711 (_ BitVec 32))) (Found!12580 (index!52712 (_ BitVec 32))) (Intermediate!12580 (undefined!13392 Bool) (index!52713 (_ BitVec 32)) (x!134409 (_ BitVec 32))) (Undefined!12580) (MissingVacant!12580 (index!52714 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100222 (_ BitVec 32)) SeekEntryResult!12580)

(assert (=> b!1503037 (= res!1023987 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48363 a!2850) j!87) a!2850 mask!2661) (Found!12580 j!87)))))

(declare-fun b!1503038 () Bool)

(declare-fun res!1023989 () Bool)

(assert (=> b!1503038 (=> (not res!1023989) (not e!840541))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503038 (= res!1023989 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48914 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48914 a!2850)) (= (select (arr!48363 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48363 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48914 a!2850))))))

(declare-fun b!1503039 () Bool)

(declare-fun res!1023993 () Bool)

(assert (=> b!1503039 (=> (not res!1023993) (not e!840541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503039 (= res!1023993 (validKeyInArray!0 (select (arr!48363 a!2850) j!87)))))

(declare-fun res!1023985 () Bool)

(assert (=> start!127994 (=> (not res!1023985) (not e!840541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127994 (= res!1023985 (validMask!0 mask!2661))))

(assert (=> start!127994 e!840541))

(assert (=> start!127994 true))

(declare-fun array_inv!37308 (array!100222) Bool)

(assert (=> start!127994 (array_inv!37308 a!2850)))

(declare-fun b!1503040 () Bool)

(declare-fun res!1023992 () Bool)

(assert (=> b!1503040 (=> (not res!1023992) (not e!840541))))

(assert (=> b!1503040 (= res!1023992 (validKeyInArray!0 (select (arr!48363 a!2850) i!996)))))

(declare-fun b!1503041 () Bool)

(declare-fun res!1023988 () Bool)

(assert (=> b!1503041 (=> (not res!1023988) (not e!840541))))

(assert (=> b!1503041 (= res!1023988 (not (= (select (arr!48363 a!2850) index!625) (select (arr!48363 a!2850) j!87))))))

(declare-fun b!1503042 () Bool)

(declare-fun res!1023986 () Bool)

(assert (=> b!1503042 (=> (not res!1023986) (not e!840541))))

(assert (=> b!1503042 (= res!1023986 (and (= (size!48914 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48914 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48914 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503043 () Bool)

(declare-fun res!1023990 () Bool)

(assert (=> b!1503043 (=> (not res!1023990) (not e!840541))))

(declare-datatypes ((List!35035 0))(
  ( (Nil!35032) (Cons!35031 (h!36429 (_ BitVec 64)) (t!49736 List!35035)) )
))
(declare-fun arrayNoDuplicates!0 (array!100222 (_ BitVec 32) List!35035) Bool)

(assert (=> b!1503043 (= res!1023990 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35032))))

(assert (= (and start!127994 res!1023985) b!1503042))

(assert (= (and b!1503042 res!1023986) b!1503040))

(assert (= (and b!1503040 res!1023992) b!1503039))

(assert (= (and b!1503039 res!1023993) b!1503036))

(assert (= (and b!1503036 res!1023991) b!1503043))

(assert (= (and b!1503043 res!1023990) b!1503038))

(assert (= (and b!1503038 res!1023989) b!1503037))

(assert (= (and b!1503037 res!1023987) b!1503041))

(assert (= (and b!1503041 res!1023988) b!1503035))

(declare-fun m!1386329 () Bool)

(assert (=> start!127994 m!1386329))

(declare-fun m!1386331 () Bool)

(assert (=> start!127994 m!1386331))

(declare-fun m!1386333 () Bool)

(assert (=> b!1503043 m!1386333))

(declare-fun m!1386335 () Bool)

(assert (=> b!1503040 m!1386335))

(assert (=> b!1503040 m!1386335))

(declare-fun m!1386337 () Bool)

(assert (=> b!1503040 m!1386337))

(declare-fun m!1386339 () Bool)

(assert (=> b!1503038 m!1386339))

(declare-fun m!1386341 () Bool)

(assert (=> b!1503038 m!1386341))

(declare-fun m!1386343 () Bool)

(assert (=> b!1503038 m!1386343))

(declare-fun m!1386345 () Bool)

(assert (=> b!1503041 m!1386345))

(declare-fun m!1386347 () Bool)

(assert (=> b!1503041 m!1386347))

(declare-fun m!1386349 () Bool)

(assert (=> b!1503036 m!1386349))

(assert (=> b!1503039 m!1386347))

(assert (=> b!1503039 m!1386347))

(declare-fun m!1386351 () Bool)

(assert (=> b!1503039 m!1386351))

(declare-fun m!1386353 () Bool)

(assert (=> b!1503035 m!1386353))

(assert (=> b!1503037 m!1386347))

(assert (=> b!1503037 m!1386347))

(declare-fun m!1386355 () Bool)

(assert (=> b!1503037 m!1386355))

(push 1)

(assert (not b!1503040))

(assert (not b!1503036))

(assert (not b!1503043))

(assert (not b!1503037))

(assert (not start!127994))

(assert (not b!1503039))

(assert (not b!1503035))

