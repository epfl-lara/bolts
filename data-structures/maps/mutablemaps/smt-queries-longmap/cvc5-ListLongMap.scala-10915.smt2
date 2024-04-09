; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127798 () Bool)

(assert start!127798)

(declare-fun b!1501239 () Bool)

(declare-fun e!839877 () Bool)

(declare-fun e!839879 () Bool)

(assert (=> b!1501239 (= e!839877 e!839879)))

(declare-fun res!1022394 () Bool)

(assert (=> b!1501239 (=> (not res!1022394) (not e!839879))))

(declare-datatypes ((array!100092 0))(
  ( (array!100093 (arr!48301 (Array (_ BitVec 32) (_ BitVec 64))) (size!48852 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100092)

(declare-fun lt!653092 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1501239 (= res!1022394 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653092 #b00000000000000000000000000000000) (bvslt lt!653092 (size!48852 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501239 (= lt!653092 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1022389 () Bool)

(declare-fun e!839878 () Bool)

(assert (=> start!127798 (=> (not res!1022389) (not e!839878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127798 (= res!1022389 (validMask!0 mask!2661))))

(assert (=> start!127798 e!839878))

(assert (=> start!127798 true))

(declare-fun array_inv!37246 (array!100092) Bool)

(assert (=> start!127798 (array_inv!37246 a!2850)))

(declare-fun b!1501240 () Bool)

(declare-fun res!1022395 () Bool)

(assert (=> b!1501240 (=> (not res!1022395) (not e!839878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100092 (_ BitVec 32)) Bool)

(assert (=> b!1501240 (= res!1022395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501241 () Bool)

(declare-fun res!1022393 () Bool)

(assert (=> b!1501241 (=> (not res!1022393) (not e!839879))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12530 0))(
  ( (MissingZero!12530 (index!52511 (_ BitVec 32))) (Found!12530 (index!52512 (_ BitVec 32))) (Intermediate!12530 (undefined!13342 Bool) (index!52513 (_ BitVec 32)) (x!134193 (_ BitVec 32))) (Undefined!12530) (MissingVacant!12530 (index!52514 (_ BitVec 32))) )
))
(declare-fun lt!653091 () SeekEntryResult!12530)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100092 (_ BitVec 32)) SeekEntryResult!12530)

(assert (=> b!1501241 (= res!1022393 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653092 vacantBefore!10 (select (arr!48301 a!2850) j!87) a!2850 mask!2661) lt!653091))))

(declare-fun b!1501242 () Bool)

(declare-fun res!1022387 () Bool)

(assert (=> b!1501242 (=> (not res!1022387) (not e!839878))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501242 (= res!1022387 (validKeyInArray!0 (select (arr!48301 a!2850) i!996)))))

(declare-fun b!1501243 () Bool)

(assert (=> b!1501243 (= e!839878 e!839877)))

(declare-fun res!1022397 () Bool)

(assert (=> b!1501243 (=> (not res!1022397) (not e!839877))))

(assert (=> b!1501243 (= res!1022397 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48301 a!2850) j!87) a!2850 mask!2661) lt!653091))))

(assert (=> b!1501243 (= lt!653091 (Found!12530 j!87))))

(declare-fun b!1501244 () Bool)

(declare-fun res!1022388 () Bool)

(assert (=> b!1501244 (=> (not res!1022388) (not e!839878))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501244 (= res!1022388 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48852 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48852 a!2850)) (= (select (arr!48301 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48301 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48852 a!2850))))))

(declare-fun b!1501245 () Bool)

(declare-fun res!1022391 () Bool)

(assert (=> b!1501245 (=> (not res!1022391) (not e!839877))))

(assert (=> b!1501245 (= res!1022391 (not (= (select (arr!48301 a!2850) index!625) (select (arr!48301 a!2850) j!87))))))

(declare-fun b!1501246 () Bool)

(declare-fun res!1022396 () Bool)

(assert (=> b!1501246 (=> (not res!1022396) (not e!839878))))

(assert (=> b!1501246 (= res!1022396 (validKeyInArray!0 (select (arr!48301 a!2850) j!87)))))

(declare-fun b!1501247 () Bool)

(assert (=> b!1501247 (= e!839879 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(assert (=> b!1501247 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653092 vacantAfter!10 (select (store (arr!48301 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100093 (store (arr!48301 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48852 a!2850)) mask!2661) lt!653091)))

(declare-datatypes ((Unit!50168 0))(
  ( (Unit!50169) )
))
(declare-fun lt!653090 () Unit!50168)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50168)

(assert (=> b!1501247 (= lt!653090 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653092 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501248 () Bool)

(declare-fun res!1022390 () Bool)

(assert (=> b!1501248 (=> (not res!1022390) (not e!839878))))

(assert (=> b!1501248 (= res!1022390 (and (= (size!48852 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48852 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48852 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501249 () Bool)

(declare-fun res!1022392 () Bool)

(assert (=> b!1501249 (=> (not res!1022392) (not e!839878))))

(declare-datatypes ((List!34973 0))(
  ( (Nil!34970) (Cons!34969 (h!36367 (_ BitVec 64)) (t!49674 List!34973)) )
))
(declare-fun arrayNoDuplicates!0 (array!100092 (_ BitVec 32) List!34973) Bool)

(assert (=> b!1501249 (= res!1022392 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34970))))

(assert (= (and start!127798 res!1022389) b!1501248))

(assert (= (and b!1501248 res!1022390) b!1501242))

(assert (= (and b!1501242 res!1022387) b!1501246))

(assert (= (and b!1501246 res!1022396) b!1501240))

(assert (= (and b!1501240 res!1022395) b!1501249))

(assert (= (and b!1501249 res!1022392) b!1501244))

(assert (= (and b!1501244 res!1022388) b!1501243))

(assert (= (and b!1501243 res!1022397) b!1501245))

(assert (= (and b!1501245 res!1022391) b!1501239))

(assert (= (and b!1501239 res!1022394) b!1501241))

(assert (= (and b!1501241 res!1022393) b!1501247))

(declare-fun m!1384515 () Bool)

(assert (=> b!1501247 m!1384515))

(declare-fun m!1384517 () Bool)

(assert (=> b!1501247 m!1384517))

(assert (=> b!1501247 m!1384517))

(declare-fun m!1384519 () Bool)

(assert (=> b!1501247 m!1384519))

(declare-fun m!1384521 () Bool)

(assert (=> b!1501247 m!1384521))

(declare-fun m!1384523 () Bool)

(assert (=> b!1501246 m!1384523))

(assert (=> b!1501246 m!1384523))

(declare-fun m!1384525 () Bool)

(assert (=> b!1501246 m!1384525))

(declare-fun m!1384527 () Bool)

(assert (=> b!1501242 m!1384527))

(assert (=> b!1501242 m!1384527))

(declare-fun m!1384529 () Bool)

(assert (=> b!1501242 m!1384529))

(declare-fun m!1384531 () Bool)

(assert (=> b!1501249 m!1384531))

(declare-fun m!1384533 () Bool)

(assert (=> start!127798 m!1384533))

(declare-fun m!1384535 () Bool)

(assert (=> start!127798 m!1384535))

(declare-fun m!1384537 () Bool)

(assert (=> b!1501240 m!1384537))

(assert (=> b!1501243 m!1384523))

(assert (=> b!1501243 m!1384523))

(declare-fun m!1384539 () Bool)

(assert (=> b!1501243 m!1384539))

(declare-fun m!1384541 () Bool)

(assert (=> b!1501245 m!1384541))

(assert (=> b!1501245 m!1384523))

(declare-fun m!1384543 () Bool)

(assert (=> b!1501239 m!1384543))

(assert (=> b!1501241 m!1384523))

(assert (=> b!1501241 m!1384523))

(declare-fun m!1384545 () Bool)

(assert (=> b!1501241 m!1384545))

(declare-fun m!1384547 () Bool)

(assert (=> b!1501244 m!1384547))

(assert (=> b!1501244 m!1384515))

(declare-fun m!1384549 () Bool)

(assert (=> b!1501244 m!1384549))

(push 1)

(assert (not b!1501239))

(assert (not b!1501249))

(assert (not b!1501247))

(assert (not b!1501243))

(assert (not b!1501241))

(assert (not b!1501242))

(assert (not b!1501246))

(assert (not b!1501240))

(assert (not start!127798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

