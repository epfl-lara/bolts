; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128108 () Bool)

(assert start!128108)

(declare-fun b!1504142 () Bool)

(declare-fun res!1025009 () Bool)

(declare-fun e!840847 () Bool)

(assert (=> b!1504142 (=> (not res!1025009) (not e!840847))))

(declare-datatypes ((array!100297 0))(
  ( (array!100298 (arr!48399 (Array (_ BitVec 32) (_ BitVec 64))) (size!48950 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100297)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100297 (_ BitVec 32)) Bool)

(assert (=> b!1504142 (= res!1025009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504143 () Bool)

(declare-fun res!1025002 () Bool)

(assert (=> b!1504143 (=> (not res!1025002) (not e!840847))))

(declare-datatypes ((List!35071 0))(
  ( (Nil!35068) (Cons!35067 (h!36465 (_ BitVec 64)) (t!49772 List!35071)) )
))
(declare-fun arrayNoDuplicates!0 (array!100297 (_ BitVec 32) List!35071) Bool)

(assert (=> b!1504143 (= res!1025002 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35068))))

(declare-fun b!1504144 () Bool)

(declare-fun res!1025003 () Bool)

(assert (=> b!1504144 (=> (not res!1025003) (not e!840847))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504144 (= res!1025003 (not (= (select (arr!48399 a!2850) index!625) (select (arr!48399 a!2850) j!87))))))

(declare-fun res!1025006 () Bool)

(assert (=> start!128108 (=> (not res!1025006) (not e!840847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128108 (= res!1025006 (validMask!0 mask!2661))))

(assert (=> start!128108 e!840847))

(assert (=> start!128108 true))

(declare-fun array_inv!37344 (array!100297) Bool)

(assert (=> start!128108 (array_inv!37344 a!2850)))

(declare-fun b!1504145 () Bool)

(declare-fun res!1025005 () Bool)

(assert (=> b!1504145 (=> (not res!1025005) (not e!840847))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504145 (= res!1025005 (validKeyInArray!0 (select (arr!48399 a!2850) i!996)))))

(declare-fun b!1504146 () Bool)

(declare-fun res!1025010 () Bool)

(assert (=> b!1504146 (=> (not res!1025010) (not e!840847))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12616 0))(
  ( (MissingZero!12616 (index!52855 (_ BitVec 32))) (Found!12616 (index!52856 (_ BitVec 32))) (Intermediate!12616 (undefined!13428 Bool) (index!52857 (_ BitVec 32)) (x!134547 (_ BitVec 32))) (Undefined!12616) (MissingVacant!12616 (index!52858 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100297 (_ BitVec 32)) SeekEntryResult!12616)

(assert (=> b!1504146 (= res!1025010 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48399 a!2850) j!87) a!2850 mask!2661) (Found!12616 j!87)))))

(declare-fun b!1504147 () Bool)

(declare-fun res!1025004 () Bool)

(assert (=> b!1504147 (=> (not res!1025004) (not e!840847))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504147 (= res!1025004 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48950 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48950 a!2850)) (= (select (arr!48399 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48399 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48950 a!2850))))))

(declare-fun b!1504148 () Bool)

(declare-fun res!1025007 () Bool)

(assert (=> b!1504148 (=> (not res!1025007) (not e!840847))))

(assert (=> b!1504148 (= res!1025007 (validKeyInArray!0 (select (arr!48399 a!2850) j!87)))))

(declare-fun b!1504149 () Bool)

(declare-fun res!1025008 () Bool)

(assert (=> b!1504149 (=> (not res!1025008) (not e!840847))))

(assert (=> b!1504149 (= res!1025008 (and (= (size!48950 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48950 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48950 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504150 () Bool)

(assert (=> b!1504150 (= e!840847 false)))

(declare-fun lt!653611 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504150 (= lt!653611 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128108 res!1025006) b!1504149))

(assert (= (and b!1504149 res!1025008) b!1504145))

(assert (= (and b!1504145 res!1025005) b!1504148))

(assert (= (and b!1504148 res!1025007) b!1504142))

(assert (= (and b!1504142 res!1025009) b!1504143))

(assert (= (and b!1504143 res!1025002) b!1504147))

(assert (= (and b!1504147 res!1025004) b!1504146))

(assert (= (and b!1504146 res!1025010) b!1504144))

(assert (= (and b!1504144 res!1025003) b!1504150))

(declare-fun m!1387409 () Bool)

(assert (=> b!1504145 m!1387409))

(assert (=> b!1504145 m!1387409))

(declare-fun m!1387411 () Bool)

(assert (=> b!1504145 m!1387411))

(declare-fun m!1387413 () Bool)

(assert (=> b!1504146 m!1387413))

(assert (=> b!1504146 m!1387413))

(declare-fun m!1387415 () Bool)

(assert (=> b!1504146 m!1387415))

(declare-fun m!1387417 () Bool)

(assert (=> start!128108 m!1387417))

(declare-fun m!1387419 () Bool)

(assert (=> start!128108 m!1387419))

(declare-fun m!1387421 () Bool)

(assert (=> b!1504142 m!1387421))

(declare-fun m!1387423 () Bool)

(assert (=> b!1504147 m!1387423))

(declare-fun m!1387425 () Bool)

(assert (=> b!1504147 m!1387425))

(declare-fun m!1387427 () Bool)

(assert (=> b!1504147 m!1387427))

(declare-fun m!1387429 () Bool)

(assert (=> b!1504143 m!1387429))

(declare-fun m!1387431 () Bool)

(assert (=> b!1504144 m!1387431))

(assert (=> b!1504144 m!1387413))

(declare-fun m!1387433 () Bool)

(assert (=> b!1504150 m!1387433))

(assert (=> b!1504148 m!1387413))

(assert (=> b!1504148 m!1387413))

(declare-fun m!1387435 () Bool)

(assert (=> b!1504148 m!1387435))

(push 1)

(assert (not b!1504145))

(assert (not b!1504146))

(assert (not b!1504150))

(assert (not start!128108))

(assert (not b!1504148))

(assert (not b!1504142))

(assert (not b!1504143))

(check-sat)

(pop 1)

(push 1)

