; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127800 () Bool)

(assert start!127800)

(declare-fun b!1501272 () Bool)

(declare-fun res!1022429 () Bool)

(declare-fun e!839888 () Bool)

(assert (=> b!1501272 (=> (not res!1022429) (not e!839888))))

(declare-datatypes ((array!100094 0))(
  ( (array!100095 (arr!48302 (Array (_ BitVec 32) (_ BitVec 64))) (size!48853 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100094)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501272 (= res!1022429 (validKeyInArray!0 (select (arr!48302 a!2850) j!87)))))

(declare-fun b!1501273 () Bool)

(declare-fun res!1022430 () Bool)

(assert (=> b!1501273 (=> (not res!1022430) (not e!839888))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501273 (= res!1022430 (validKeyInArray!0 (select (arr!48302 a!2850) i!996)))))

(declare-fun b!1501274 () Bool)

(declare-fun e!839890 () Bool)

(assert (=> b!1501274 (= e!839888 e!839890)))

(declare-fun res!1022428 () Bool)

(assert (=> b!1501274 (=> (not res!1022428) (not e!839890))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12531 0))(
  ( (MissingZero!12531 (index!52515 (_ BitVec 32))) (Found!12531 (index!52516 (_ BitVec 32))) (Intermediate!12531 (undefined!13343 Bool) (index!52517 (_ BitVec 32)) (x!134194 (_ BitVec 32))) (Undefined!12531) (MissingVacant!12531 (index!52518 (_ BitVec 32))) )
))
(declare-fun lt!653100 () SeekEntryResult!12531)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100094 (_ BitVec 32)) SeekEntryResult!12531)

(assert (=> b!1501274 (= res!1022428 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48302 a!2850) j!87) a!2850 mask!2661) lt!653100))))

(assert (=> b!1501274 (= lt!653100 (Found!12531 j!87))))

(declare-fun b!1501275 () Bool)

(declare-fun res!1022420 () Bool)

(assert (=> b!1501275 (=> (not res!1022420) (not e!839890))))

(assert (=> b!1501275 (= res!1022420 (not (= (select (arr!48302 a!2850) index!625) (select (arr!48302 a!2850) j!87))))))

(declare-fun b!1501276 () Bool)

(declare-fun res!1022426 () Bool)

(assert (=> b!1501276 (=> (not res!1022426) (not e!839888))))

(assert (=> b!1501276 (= res!1022426 (and (= (size!48853 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48853 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48853 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501277 () Bool)

(declare-fun e!839891 () Bool)

(assert (=> b!1501277 (= e!839891 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(declare-fun lt!653101 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501277 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653101 vacantAfter!10 (select (store (arr!48302 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100095 (store (arr!48302 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48853 a!2850)) mask!2661) lt!653100)))

(declare-datatypes ((Unit!50170 0))(
  ( (Unit!50171) )
))
(declare-fun lt!653099 () Unit!50170)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100094 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50170)

(assert (=> b!1501277 (= lt!653099 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653101 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun res!1022423 () Bool)

(assert (=> start!127800 (=> (not res!1022423) (not e!839888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127800 (= res!1022423 (validMask!0 mask!2661))))

(assert (=> start!127800 e!839888))

(assert (=> start!127800 true))

(declare-fun array_inv!37247 (array!100094) Bool)

(assert (=> start!127800 (array_inv!37247 a!2850)))

(declare-fun b!1501278 () Bool)

(assert (=> b!1501278 (= e!839890 e!839891)))

(declare-fun res!1022425 () Bool)

(assert (=> b!1501278 (=> (not res!1022425) (not e!839891))))

(assert (=> b!1501278 (= res!1022425 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653101 #b00000000000000000000000000000000) (bvslt lt!653101 (size!48853 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501278 (= lt!653101 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501279 () Bool)

(declare-fun res!1022421 () Bool)

(assert (=> b!1501279 (=> (not res!1022421) (not e!839888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100094 (_ BitVec 32)) Bool)

(assert (=> b!1501279 (= res!1022421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501280 () Bool)

(declare-fun res!1022427 () Bool)

(assert (=> b!1501280 (=> (not res!1022427) (not e!839891))))

(assert (=> b!1501280 (= res!1022427 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653101 vacantBefore!10 (select (arr!48302 a!2850) j!87) a!2850 mask!2661) lt!653100))))

(declare-fun b!1501281 () Bool)

(declare-fun res!1022422 () Bool)

(assert (=> b!1501281 (=> (not res!1022422) (not e!839888))))

(declare-datatypes ((List!34974 0))(
  ( (Nil!34971) (Cons!34970 (h!36368 (_ BitVec 64)) (t!49675 List!34974)) )
))
(declare-fun arrayNoDuplicates!0 (array!100094 (_ BitVec 32) List!34974) Bool)

(assert (=> b!1501281 (= res!1022422 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34971))))

(declare-fun b!1501282 () Bool)

(declare-fun res!1022424 () Bool)

(assert (=> b!1501282 (=> (not res!1022424) (not e!839888))))

(assert (=> b!1501282 (= res!1022424 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48853 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48853 a!2850)) (= (select (arr!48302 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48302 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48853 a!2850))))))

(assert (= (and start!127800 res!1022423) b!1501276))

(assert (= (and b!1501276 res!1022426) b!1501273))

(assert (= (and b!1501273 res!1022430) b!1501272))

(assert (= (and b!1501272 res!1022429) b!1501279))

(assert (= (and b!1501279 res!1022421) b!1501281))

(assert (= (and b!1501281 res!1022422) b!1501282))

(assert (= (and b!1501282 res!1022424) b!1501274))

(assert (= (and b!1501274 res!1022428) b!1501275))

(assert (= (and b!1501275 res!1022420) b!1501278))

(assert (= (and b!1501278 res!1022425) b!1501280))

(assert (= (and b!1501280 res!1022427) b!1501277))

(declare-fun m!1384551 () Bool)

(assert (=> b!1501278 m!1384551))

(declare-fun m!1384553 () Bool)

(assert (=> b!1501275 m!1384553))

(declare-fun m!1384555 () Bool)

(assert (=> b!1501275 m!1384555))

(assert (=> b!1501274 m!1384555))

(assert (=> b!1501274 m!1384555))

(declare-fun m!1384557 () Bool)

(assert (=> b!1501274 m!1384557))

(declare-fun m!1384559 () Bool)

(assert (=> b!1501281 m!1384559))

(assert (=> b!1501280 m!1384555))

(assert (=> b!1501280 m!1384555))

(declare-fun m!1384561 () Bool)

(assert (=> b!1501280 m!1384561))

(assert (=> b!1501272 m!1384555))

(assert (=> b!1501272 m!1384555))

(declare-fun m!1384563 () Bool)

(assert (=> b!1501272 m!1384563))

(declare-fun m!1384565 () Bool)

(assert (=> b!1501277 m!1384565))

(declare-fun m!1384567 () Bool)

(assert (=> b!1501277 m!1384567))

(assert (=> b!1501277 m!1384567))

(declare-fun m!1384569 () Bool)

(assert (=> b!1501277 m!1384569))

(declare-fun m!1384571 () Bool)

(assert (=> b!1501277 m!1384571))

(declare-fun m!1384573 () Bool)

(assert (=> b!1501279 m!1384573))

(declare-fun m!1384575 () Bool)

(assert (=> b!1501282 m!1384575))

(assert (=> b!1501282 m!1384565))

(declare-fun m!1384577 () Bool)

(assert (=> b!1501282 m!1384577))

(declare-fun m!1384579 () Bool)

(assert (=> start!127800 m!1384579))

(declare-fun m!1384581 () Bool)

(assert (=> start!127800 m!1384581))

(declare-fun m!1384583 () Bool)

(assert (=> b!1501273 m!1384583))

(assert (=> b!1501273 m!1384583))

(declare-fun m!1384585 () Bool)

(assert (=> b!1501273 m!1384585))

(check-sat (not b!1501273) (not b!1501281) (not b!1501274) (not b!1501280) (not b!1501272) (not b!1501279) (not start!127800) (not b!1501277) (not b!1501278))
(check-sat)
