; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127794 () Bool)

(assert start!127794)

(declare-fun b!1501173 () Bool)

(declare-fun res!1022328 () Bool)

(declare-fun e!839854 () Bool)

(assert (=> b!1501173 (=> (not res!1022328) (not e!839854))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100088 0))(
  ( (array!100089 (arr!48299 (Array (_ BitVec 32) (_ BitVec 64))) (size!48850 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100088)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12528 0))(
  ( (MissingZero!12528 (index!52503 (_ BitVec 32))) (Found!12528 (index!52504 (_ BitVec 32))) (Intermediate!12528 (undefined!13340 Bool) (index!52505 (_ BitVec 32)) (x!134183 (_ BitVec 32))) (Undefined!12528) (MissingVacant!12528 (index!52506 (_ BitVec 32))) )
))
(declare-fun lt!653073 () SeekEntryResult!12528)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun lt!653074 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100088 (_ BitVec 32)) SeekEntryResult!12528)

(assert (=> b!1501173 (= res!1022328 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653074 vacantBefore!10 (select (arr!48299 a!2850) j!87) a!2850 mask!2661) lt!653073))))

(declare-fun b!1501174 () Bool)

(declare-fun res!1022329 () Bool)

(declare-fun e!839855 () Bool)

(assert (=> b!1501174 (=> (not res!1022329) (not e!839855))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501174 (= res!1022329 (validKeyInArray!0 (select (arr!48299 a!2850) i!996)))))

(declare-fun b!1501175 () Bool)

(declare-fun res!1022327 () Bool)

(assert (=> b!1501175 (=> (not res!1022327) (not e!839855))))

(declare-datatypes ((List!34971 0))(
  ( (Nil!34968) (Cons!34967 (h!36365 (_ BitVec 64)) (t!49672 List!34971)) )
))
(declare-fun arrayNoDuplicates!0 (array!100088 (_ BitVec 32) List!34971) Bool)

(assert (=> b!1501175 (= res!1022327 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34968))))

(declare-fun b!1501176 () Bool)

(declare-fun res!1022322 () Bool)

(assert (=> b!1501176 (=> (not res!1022322) (not e!839855))))

(assert (=> b!1501176 (= res!1022322 (validKeyInArray!0 (select (arr!48299 a!2850) j!87)))))

(declare-fun b!1501177 () Bool)

(declare-fun res!1022325 () Bool)

(assert (=> b!1501177 (=> (not res!1022325) (not e!839855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100088 (_ BitVec 32)) Bool)

(assert (=> b!1501177 (= res!1022325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501178 () Bool)

(declare-fun res!1022331 () Bool)

(declare-fun e!839852 () Bool)

(assert (=> b!1501178 (=> (not res!1022331) (not e!839852))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1501178 (= res!1022331 (not (= (select (arr!48299 a!2850) index!625) (select (arr!48299 a!2850) j!87))))))

(declare-fun b!1501179 () Bool)

(declare-fun res!1022324 () Bool)

(assert (=> b!1501179 (=> (not res!1022324) (not e!839855))))

(assert (=> b!1501179 (= res!1022324 (and (= (size!48850 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48850 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48850 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1022326 () Bool)

(assert (=> start!127794 (=> (not res!1022326) (not e!839855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127794 (= res!1022326 (validMask!0 mask!2661))))

(assert (=> start!127794 e!839855))

(assert (=> start!127794 true))

(declare-fun array_inv!37244 (array!100088) Bool)

(assert (=> start!127794 (array_inv!37244 a!2850)))

(declare-fun b!1501180 () Bool)

(assert (=> b!1501180 (= e!839855 e!839852)))

(declare-fun res!1022330 () Bool)

(assert (=> b!1501180 (=> (not res!1022330) (not e!839852))))

(assert (=> b!1501180 (= res!1022330 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48299 a!2850) j!87) a!2850 mask!2661) lt!653073))))

(assert (=> b!1501180 (= lt!653073 (Found!12528 j!87))))

(declare-fun b!1501181 () Bool)

(declare-fun res!1022323 () Bool)

(assert (=> b!1501181 (=> (not res!1022323) (not e!839855))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501181 (= res!1022323 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48850 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48850 a!2850)) (= (select (arr!48299 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48299 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48850 a!2850))))))

(declare-fun b!1501182 () Bool)

(assert (=> b!1501182 (= e!839852 e!839854)))

(declare-fun res!1022321 () Bool)

(assert (=> b!1501182 (=> (not res!1022321) (not e!839854))))

(assert (=> b!1501182 (= res!1022321 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653074 #b00000000000000000000000000000000) (bvslt lt!653074 (size!48850 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501182 (= lt!653074 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501183 () Bool)

(assert (=> b!1501183 (= e!839854 (not true))))

(assert (=> b!1501183 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653074 vacantAfter!10 (select (store (arr!48299 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100089 (store (arr!48299 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48850 a!2850)) mask!2661) lt!653073)))

(declare-datatypes ((Unit!50164 0))(
  ( (Unit!50165) )
))
(declare-fun lt!653072 () Unit!50164)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50164)

(assert (=> b!1501183 (= lt!653072 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653074 vacantBefore!10 vacantAfter!10 mask!2661))))

(assert (= (and start!127794 res!1022326) b!1501179))

(assert (= (and b!1501179 res!1022324) b!1501174))

(assert (= (and b!1501174 res!1022329) b!1501176))

(assert (= (and b!1501176 res!1022322) b!1501177))

(assert (= (and b!1501177 res!1022325) b!1501175))

(assert (= (and b!1501175 res!1022327) b!1501181))

(assert (= (and b!1501181 res!1022323) b!1501180))

(assert (= (and b!1501180 res!1022330) b!1501178))

(assert (= (and b!1501178 res!1022331) b!1501182))

(assert (= (and b!1501182 res!1022321) b!1501173))

(assert (= (and b!1501173 res!1022328) b!1501183))

(declare-fun m!1384443 () Bool)

(assert (=> b!1501181 m!1384443))

(declare-fun m!1384445 () Bool)

(assert (=> b!1501181 m!1384445))

(declare-fun m!1384447 () Bool)

(assert (=> b!1501181 m!1384447))

(declare-fun m!1384449 () Bool)

(assert (=> b!1501177 m!1384449))

(declare-fun m!1384451 () Bool)

(assert (=> b!1501175 m!1384451))

(declare-fun m!1384453 () Bool)

(assert (=> b!1501176 m!1384453))

(assert (=> b!1501176 m!1384453))

(declare-fun m!1384455 () Bool)

(assert (=> b!1501176 m!1384455))

(declare-fun m!1384457 () Bool)

(assert (=> b!1501182 m!1384457))

(declare-fun m!1384459 () Bool)

(assert (=> b!1501174 m!1384459))

(assert (=> b!1501174 m!1384459))

(declare-fun m!1384461 () Bool)

(assert (=> b!1501174 m!1384461))

(assert (=> b!1501183 m!1384445))

(declare-fun m!1384463 () Bool)

(assert (=> b!1501183 m!1384463))

(assert (=> b!1501183 m!1384463))

(declare-fun m!1384465 () Bool)

(assert (=> b!1501183 m!1384465))

(declare-fun m!1384467 () Bool)

(assert (=> b!1501183 m!1384467))

(declare-fun m!1384469 () Bool)

(assert (=> start!127794 m!1384469))

(declare-fun m!1384471 () Bool)

(assert (=> start!127794 m!1384471))

(assert (=> b!1501180 m!1384453))

(assert (=> b!1501180 m!1384453))

(declare-fun m!1384473 () Bool)

(assert (=> b!1501180 m!1384473))

(declare-fun m!1384475 () Bool)

(assert (=> b!1501178 m!1384475))

(assert (=> b!1501178 m!1384453))

(assert (=> b!1501173 m!1384453))

(assert (=> b!1501173 m!1384453))

(declare-fun m!1384477 () Bool)

(assert (=> b!1501173 m!1384477))

(check-sat (not b!1501183) (not b!1501173) (not start!127794) (not b!1501180) (not b!1501174) (not b!1501177) (not b!1501182) (not b!1501175) (not b!1501176))
(check-sat)
