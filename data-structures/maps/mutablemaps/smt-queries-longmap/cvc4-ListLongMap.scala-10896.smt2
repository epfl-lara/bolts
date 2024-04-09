; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127688 () Bool)

(assert start!127688)

(declare-fun res!1020710 () Bool)

(declare-fun e!839354 () Bool)

(assert (=> start!127688 (=> (not res!1020710) (not e!839354))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127688 (= res!1020710 (validMask!0 mask!2661))))

(assert (=> start!127688 e!839354))

(assert (=> start!127688 true))

(declare-datatypes ((array!99982 0))(
  ( (array!99983 (arr!48246 (Array (_ BitVec 32) (_ BitVec 64))) (size!48797 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99982)

(declare-fun array_inv!37191 (array!99982) Bool)

(assert (=> start!127688 (array_inv!37191 a!2850)))

(declare-fun b!1499560 () Bool)

(declare-fun res!1020715 () Bool)

(assert (=> b!1499560 (=> (not res!1020715) (not e!839354))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499560 (= res!1020715 (not (= (select (arr!48246 a!2850) index!625) (select (arr!48246 a!2850) j!87))))))

(declare-fun b!1499561 () Bool)

(declare-fun e!839352 () Bool)

(assert (=> b!1499561 (= e!839352 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12475 0))(
  ( (MissingZero!12475 (index!52291 (_ BitVec 32))) (Found!12475 (index!52292 (_ BitVec 32))) (Intermediate!12475 (undefined!13287 Bool) (index!52293 (_ BitVec 32)) (x!133986 (_ BitVec 32))) (Undefined!12475) (MissingVacant!12475 (index!52294 (_ BitVec 32))) )
))
(declare-fun lt!652731 () SeekEntryResult!12475)

(declare-fun lt!652732 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99982 (_ BitVec 32)) SeekEntryResult!12475)

(assert (=> b!1499561 (= lt!652731 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652732 vacantBefore!10 (select (arr!48246 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499562 () Bool)

(assert (=> b!1499562 (= e!839354 e!839352)))

(declare-fun res!1020709 () Bool)

(assert (=> b!1499562 (=> (not res!1020709) (not e!839352))))

(assert (=> b!1499562 (= res!1020709 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652732 #b00000000000000000000000000000000) (bvslt lt!652732 (size!48797 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499562 (= lt!652732 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499563 () Bool)

(declare-fun res!1020717 () Bool)

(assert (=> b!1499563 (=> (not res!1020717) (not e!839354))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499563 (= res!1020717 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48797 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48797 a!2850)) (= (select (arr!48246 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48246 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48797 a!2850))))))

(declare-fun b!1499564 () Bool)

(declare-fun res!1020713 () Bool)

(assert (=> b!1499564 (=> (not res!1020713) (not e!839354))))

(assert (=> b!1499564 (= res!1020713 (and (= (size!48797 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48797 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48797 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499565 () Bool)

(declare-fun res!1020714 () Bool)

(assert (=> b!1499565 (=> (not res!1020714) (not e!839354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499565 (= res!1020714 (validKeyInArray!0 (select (arr!48246 a!2850) j!87)))))

(declare-fun b!1499566 () Bool)

(declare-fun res!1020711 () Bool)

(assert (=> b!1499566 (=> (not res!1020711) (not e!839354))))

(declare-datatypes ((List!34918 0))(
  ( (Nil!34915) (Cons!34914 (h!36312 (_ BitVec 64)) (t!49619 List!34918)) )
))
(declare-fun arrayNoDuplicates!0 (array!99982 (_ BitVec 32) List!34918) Bool)

(assert (=> b!1499566 (= res!1020711 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34915))))

(declare-fun b!1499567 () Bool)

(declare-fun res!1020712 () Bool)

(assert (=> b!1499567 (=> (not res!1020712) (not e!839354))))

(assert (=> b!1499567 (= res!1020712 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48246 a!2850) j!87) a!2850 mask!2661) (Found!12475 j!87)))))

(declare-fun b!1499568 () Bool)

(declare-fun res!1020708 () Bool)

(assert (=> b!1499568 (=> (not res!1020708) (not e!839354))))

(assert (=> b!1499568 (= res!1020708 (validKeyInArray!0 (select (arr!48246 a!2850) i!996)))))

(declare-fun b!1499569 () Bool)

(declare-fun res!1020716 () Bool)

(assert (=> b!1499569 (=> (not res!1020716) (not e!839354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99982 (_ BitVec 32)) Bool)

(assert (=> b!1499569 (= res!1020716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127688 res!1020710) b!1499564))

(assert (= (and b!1499564 res!1020713) b!1499568))

(assert (= (and b!1499568 res!1020708) b!1499565))

(assert (= (and b!1499565 res!1020714) b!1499569))

(assert (= (and b!1499569 res!1020716) b!1499566))

(assert (= (and b!1499566 res!1020711) b!1499563))

(assert (= (and b!1499563 res!1020717) b!1499567))

(assert (= (and b!1499567 res!1020712) b!1499560))

(assert (= (and b!1499560 res!1020715) b!1499562))

(assert (= (and b!1499562 res!1020709) b!1499561))

(declare-fun m!1382811 () Bool)

(assert (=> b!1499567 m!1382811))

(assert (=> b!1499567 m!1382811))

(declare-fun m!1382813 () Bool)

(assert (=> b!1499567 m!1382813))

(declare-fun m!1382815 () Bool)

(assert (=> b!1499563 m!1382815))

(declare-fun m!1382817 () Bool)

(assert (=> b!1499563 m!1382817))

(declare-fun m!1382819 () Bool)

(assert (=> b!1499563 m!1382819))

(declare-fun m!1382821 () Bool)

(assert (=> start!127688 m!1382821))

(declare-fun m!1382823 () Bool)

(assert (=> start!127688 m!1382823))

(assert (=> b!1499565 m!1382811))

(assert (=> b!1499565 m!1382811))

(declare-fun m!1382825 () Bool)

(assert (=> b!1499565 m!1382825))

(declare-fun m!1382827 () Bool)

(assert (=> b!1499568 m!1382827))

(assert (=> b!1499568 m!1382827))

(declare-fun m!1382829 () Bool)

(assert (=> b!1499568 m!1382829))

(declare-fun m!1382831 () Bool)

(assert (=> b!1499569 m!1382831))

(assert (=> b!1499561 m!1382811))

(assert (=> b!1499561 m!1382811))

(declare-fun m!1382833 () Bool)

(assert (=> b!1499561 m!1382833))

(declare-fun m!1382835 () Bool)

(assert (=> b!1499560 m!1382835))

(assert (=> b!1499560 m!1382811))

(declare-fun m!1382837 () Bool)

(assert (=> b!1499566 m!1382837))

(declare-fun m!1382839 () Bool)

(assert (=> b!1499562 m!1382839))

(push 1)

(assert (not b!1499568))

(assert (not b!1499567))

(assert (not b!1499566))

(assert (not b!1499562))

(assert (not b!1499561))

(assert (not b!1499565))

(assert (not start!127688))

(assert (not b!1499569))

(check-sat)

