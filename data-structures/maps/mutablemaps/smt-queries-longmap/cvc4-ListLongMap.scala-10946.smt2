; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128102 () Bool)

(assert start!128102)

(declare-fun b!1504061 () Bool)

(declare-fun res!1024925 () Bool)

(declare-fun e!840829 () Bool)

(assert (=> b!1504061 (=> (not res!1024925) (not e!840829))))

(declare-datatypes ((array!100291 0))(
  ( (array!100292 (arr!48396 (Array (_ BitVec 32) (_ BitVec 64))) (size!48947 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100291)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504061 (= res!1024925 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48947 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48947 a!2850)) (= (select (arr!48396 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48396 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48947 a!2850))))))

(declare-fun b!1504062 () Bool)

(declare-fun res!1024928 () Bool)

(assert (=> b!1504062 (=> (not res!1024928) (not e!840829))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504062 (= res!1024928 (and (= (size!48947 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48947 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48947 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1024927 () Bool)

(assert (=> start!128102 (=> (not res!1024927) (not e!840829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128102 (= res!1024927 (validMask!0 mask!2661))))

(assert (=> start!128102 e!840829))

(assert (=> start!128102 true))

(declare-fun array_inv!37341 (array!100291) Bool)

(assert (=> start!128102 (array_inv!37341 a!2850)))

(declare-fun b!1504063 () Bool)

(declare-fun res!1024926 () Bool)

(assert (=> b!1504063 (=> (not res!1024926) (not e!840829))))

(declare-datatypes ((List!35068 0))(
  ( (Nil!35065) (Cons!35064 (h!36462 (_ BitVec 64)) (t!49769 List!35068)) )
))
(declare-fun arrayNoDuplicates!0 (array!100291 (_ BitVec 32) List!35068) Bool)

(assert (=> b!1504063 (= res!1024926 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35065))))

(declare-fun b!1504064 () Bool)

(declare-fun res!1024923 () Bool)

(assert (=> b!1504064 (=> (not res!1024923) (not e!840829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504064 (= res!1024923 (validKeyInArray!0 (select (arr!48396 a!2850) i!996)))))

(declare-fun b!1504065 () Bool)

(declare-fun res!1024922 () Bool)

(assert (=> b!1504065 (=> (not res!1024922) (not e!840829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100291 (_ BitVec 32)) Bool)

(assert (=> b!1504065 (= res!1024922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504066 () Bool)

(declare-fun res!1024921 () Bool)

(assert (=> b!1504066 (=> (not res!1024921) (not e!840829))))

(assert (=> b!1504066 (= res!1024921 (validKeyInArray!0 (select (arr!48396 a!2850) j!87)))))

(declare-fun b!1504067 () Bool)

(declare-fun res!1024924 () Bool)

(assert (=> b!1504067 (=> (not res!1024924) (not e!840829))))

(declare-datatypes ((SeekEntryResult!12613 0))(
  ( (MissingZero!12613 (index!52843 (_ BitVec 32))) (Found!12613 (index!52844 (_ BitVec 32))) (Intermediate!12613 (undefined!13425 Bool) (index!52845 (_ BitVec 32)) (x!134536 (_ BitVec 32))) (Undefined!12613) (MissingVacant!12613 (index!52846 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100291 (_ BitVec 32)) SeekEntryResult!12613)

(assert (=> b!1504067 (= res!1024924 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48396 a!2850) j!87) a!2850 mask!2661) (Found!12613 j!87)))))

(declare-fun b!1504068 () Bool)

(declare-fun res!1024929 () Bool)

(assert (=> b!1504068 (=> (not res!1024929) (not e!840829))))

(assert (=> b!1504068 (= res!1024929 (not (= (select (arr!48396 a!2850) index!625) (select (arr!48396 a!2850) j!87))))))

(declare-fun b!1504069 () Bool)

(assert (=> b!1504069 (= e!840829 false)))

(declare-fun lt!653602 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504069 (= lt!653602 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128102 res!1024927) b!1504062))

(assert (= (and b!1504062 res!1024928) b!1504064))

(assert (= (and b!1504064 res!1024923) b!1504066))

(assert (= (and b!1504066 res!1024921) b!1504065))

(assert (= (and b!1504065 res!1024922) b!1504063))

(assert (= (and b!1504063 res!1024926) b!1504061))

(assert (= (and b!1504061 res!1024925) b!1504067))

(assert (= (and b!1504067 res!1024924) b!1504068))

(assert (= (and b!1504068 res!1024929) b!1504069))

(declare-fun m!1387325 () Bool)

(assert (=> b!1504065 m!1387325))

(declare-fun m!1387327 () Bool)

(assert (=> start!128102 m!1387327))

(declare-fun m!1387329 () Bool)

(assert (=> start!128102 m!1387329))

(declare-fun m!1387331 () Bool)

(assert (=> b!1504063 m!1387331))

(declare-fun m!1387333 () Bool)

(assert (=> b!1504067 m!1387333))

(assert (=> b!1504067 m!1387333))

(declare-fun m!1387335 () Bool)

(assert (=> b!1504067 m!1387335))

(declare-fun m!1387337 () Bool)

(assert (=> b!1504064 m!1387337))

(assert (=> b!1504064 m!1387337))

(declare-fun m!1387339 () Bool)

(assert (=> b!1504064 m!1387339))

(declare-fun m!1387341 () Bool)

(assert (=> b!1504068 m!1387341))

(assert (=> b!1504068 m!1387333))

(declare-fun m!1387343 () Bool)

(assert (=> b!1504069 m!1387343))

(assert (=> b!1504066 m!1387333))

(assert (=> b!1504066 m!1387333))

(declare-fun m!1387345 () Bool)

(assert (=> b!1504066 m!1387345))

(declare-fun m!1387347 () Bool)

(assert (=> b!1504061 m!1387347))

(declare-fun m!1387349 () Bool)

(assert (=> b!1504061 m!1387349))

(declare-fun m!1387351 () Bool)

(assert (=> b!1504061 m!1387351))

(push 1)

(assert (not b!1504064))

(assert (not b!1504065))

(assert (not b!1504066))

(assert (not b!1504069))

(assert (not start!128102))

(assert (not b!1504067))

(assert (not b!1504063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

