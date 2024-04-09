; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127792 () Bool)

(assert start!127792)

(declare-fun b!1501140 () Bool)

(declare-fun res!1022295 () Bool)

(declare-fun e!839840 () Bool)

(assert (=> b!1501140 (=> (not res!1022295) (not e!839840))))

(declare-datatypes ((array!100086 0))(
  ( (array!100087 (arr!48298 (Array (_ BitVec 32) (_ BitVec 64))) (size!48849 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100086)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501140 (= res!1022295 (not (= (select (arr!48298 a!2850) index!625) (select (arr!48298 a!2850) j!87))))))

(declare-fun b!1501142 () Bool)

(declare-fun res!1022296 () Bool)

(declare-fun e!839841 () Bool)

(assert (=> b!1501142 (=> (not res!1022296) (not e!839841))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501142 (= res!1022296 (validKeyInArray!0 (select (arr!48298 a!2850) i!996)))))

(declare-fun b!1501143 () Bool)

(declare-fun res!1022290 () Bool)

(assert (=> b!1501143 (=> (not res!1022290) (not e!839841))))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1501143 (= res!1022290 (and (= (size!48849 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48849 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48849 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501144 () Bool)

(declare-fun e!839843 () Bool)

(assert (=> b!1501144 (= e!839843 (not true))))

(declare-datatypes ((SeekEntryResult!12527 0))(
  ( (MissingZero!12527 (index!52499 (_ BitVec 32))) (Found!12527 (index!52500 (_ BitVec 32))) (Intermediate!12527 (undefined!13339 Bool) (index!52501 (_ BitVec 32)) (x!134182 (_ BitVec 32))) (Undefined!12527) (MissingVacant!12527 (index!52502 (_ BitVec 32))) )
))
(declare-fun lt!653065 () SeekEntryResult!12527)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653064 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100086 (_ BitVec 32)) SeekEntryResult!12527)

(assert (=> b!1501144 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653064 vacantAfter!10 (select (store (arr!48298 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100087 (store (arr!48298 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48849 a!2850)) mask!2661) lt!653065)))

(declare-datatypes ((Unit!50162 0))(
  ( (Unit!50163) )
))
(declare-fun lt!653063 () Unit!50162)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50162)

(assert (=> b!1501144 (= lt!653063 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653064 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501145 () Bool)

(assert (=> b!1501145 (= e!839840 e!839843)))

(declare-fun res!1022291 () Bool)

(assert (=> b!1501145 (=> (not res!1022291) (not e!839843))))

(assert (=> b!1501145 (= res!1022291 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653064 #b00000000000000000000000000000000) (bvslt lt!653064 (size!48849 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501145 (= lt!653064 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501146 () Bool)

(declare-fun res!1022298 () Bool)

(assert (=> b!1501146 (=> (not res!1022298) (not e!839843))))

(assert (=> b!1501146 (= res!1022298 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653064 vacantBefore!10 (select (arr!48298 a!2850) j!87) a!2850 mask!2661) lt!653065))))

(declare-fun b!1501147 () Bool)

(declare-fun res!1022292 () Bool)

(assert (=> b!1501147 (=> (not res!1022292) (not e!839841))))

(assert (=> b!1501147 (= res!1022292 (validKeyInArray!0 (select (arr!48298 a!2850) j!87)))))

(declare-fun b!1501148 () Bool)

(declare-fun res!1022289 () Bool)

(assert (=> b!1501148 (=> (not res!1022289) (not e!839841))))

(assert (=> b!1501148 (= res!1022289 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48849 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48849 a!2850)) (= (select (arr!48298 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48298 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48849 a!2850))))))

(declare-fun b!1501141 () Bool)

(declare-fun res!1022288 () Bool)

(assert (=> b!1501141 (=> (not res!1022288) (not e!839841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100086 (_ BitVec 32)) Bool)

(assert (=> b!1501141 (= res!1022288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1022293 () Bool)

(assert (=> start!127792 (=> (not res!1022293) (not e!839841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127792 (= res!1022293 (validMask!0 mask!2661))))

(assert (=> start!127792 e!839841))

(assert (=> start!127792 true))

(declare-fun array_inv!37243 (array!100086) Bool)

(assert (=> start!127792 (array_inv!37243 a!2850)))

(declare-fun b!1501149 () Bool)

(declare-fun res!1022294 () Bool)

(assert (=> b!1501149 (=> (not res!1022294) (not e!839841))))

(declare-datatypes ((List!34970 0))(
  ( (Nil!34967) (Cons!34966 (h!36364 (_ BitVec 64)) (t!49671 List!34970)) )
))
(declare-fun arrayNoDuplicates!0 (array!100086 (_ BitVec 32) List!34970) Bool)

(assert (=> b!1501149 (= res!1022294 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34967))))

(declare-fun b!1501150 () Bool)

(assert (=> b!1501150 (= e!839841 e!839840)))

(declare-fun res!1022297 () Bool)

(assert (=> b!1501150 (=> (not res!1022297) (not e!839840))))

(assert (=> b!1501150 (= res!1022297 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48298 a!2850) j!87) a!2850 mask!2661) lt!653065))))

(assert (=> b!1501150 (= lt!653065 (Found!12527 j!87))))

(assert (= (and start!127792 res!1022293) b!1501143))

(assert (= (and b!1501143 res!1022290) b!1501142))

(assert (= (and b!1501142 res!1022296) b!1501147))

(assert (= (and b!1501147 res!1022292) b!1501141))

(assert (= (and b!1501141 res!1022288) b!1501149))

(assert (= (and b!1501149 res!1022294) b!1501148))

(assert (= (and b!1501148 res!1022289) b!1501150))

(assert (= (and b!1501150 res!1022297) b!1501140))

(assert (= (and b!1501140 res!1022295) b!1501145))

(assert (= (and b!1501145 res!1022291) b!1501146))

(assert (= (and b!1501146 res!1022298) b!1501144))

(declare-fun m!1384407 () Bool)

(assert (=> b!1501145 m!1384407))

(declare-fun m!1384409 () Bool)

(assert (=> b!1501144 m!1384409))

(declare-fun m!1384411 () Bool)

(assert (=> b!1501144 m!1384411))

(assert (=> b!1501144 m!1384411))

(declare-fun m!1384413 () Bool)

(assert (=> b!1501144 m!1384413))

(declare-fun m!1384415 () Bool)

(assert (=> b!1501144 m!1384415))

(declare-fun m!1384417 () Bool)

(assert (=> b!1501140 m!1384417))

(declare-fun m!1384419 () Bool)

(assert (=> b!1501140 m!1384419))

(assert (=> b!1501147 m!1384419))

(assert (=> b!1501147 m!1384419))

(declare-fun m!1384421 () Bool)

(assert (=> b!1501147 m!1384421))

(declare-fun m!1384423 () Bool)

(assert (=> b!1501141 m!1384423))

(declare-fun m!1384425 () Bool)

(assert (=> start!127792 m!1384425))

(declare-fun m!1384427 () Bool)

(assert (=> start!127792 m!1384427))

(declare-fun m!1384429 () Bool)

(assert (=> b!1501149 m!1384429))

(assert (=> b!1501146 m!1384419))

(assert (=> b!1501146 m!1384419))

(declare-fun m!1384431 () Bool)

(assert (=> b!1501146 m!1384431))

(declare-fun m!1384433 () Bool)

(assert (=> b!1501142 m!1384433))

(assert (=> b!1501142 m!1384433))

(declare-fun m!1384435 () Bool)

(assert (=> b!1501142 m!1384435))

(assert (=> b!1501150 m!1384419))

(assert (=> b!1501150 m!1384419))

(declare-fun m!1384437 () Bool)

(assert (=> b!1501150 m!1384437))

(declare-fun m!1384439 () Bool)

(assert (=> b!1501148 m!1384439))

(assert (=> b!1501148 m!1384409))

(declare-fun m!1384441 () Bool)

(assert (=> b!1501148 m!1384441))

(push 1)

