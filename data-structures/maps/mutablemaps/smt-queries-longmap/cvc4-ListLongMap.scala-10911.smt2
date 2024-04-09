; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127778 () Bool)

(assert start!127778)

(declare-fun b!1500910 () Bool)

(declare-fun res!1022063 () Bool)

(declare-fun e!839757 () Bool)

(assert (=> b!1500910 (=> (not res!1022063) (not e!839757))))

(declare-datatypes ((array!100072 0))(
  ( (array!100073 (arr!48291 (Array (_ BitVec 32) (_ BitVec 64))) (size!48842 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100072)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500910 (= res!1022063 (not (= (select (arr!48291 a!2850) index!625) (select (arr!48291 a!2850) j!87))))))

(declare-fun b!1500911 () Bool)

(declare-fun res!1022060 () Bool)

(assert (=> b!1500911 (=> (not res!1022060) (not e!839757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500911 (= res!1022060 (validKeyInArray!0 (select (arr!48291 a!2850) j!87)))))

(declare-fun b!1500912 () Bool)

(declare-fun res!1022064 () Bool)

(assert (=> b!1500912 (=> (not res!1022064) (not e!839757))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500912 (= res!1022064 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48842 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48842 a!2850)) (= (select (arr!48291 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48291 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48842 a!2850))))))

(declare-fun b!1500913 () Bool)

(declare-fun res!1022067 () Bool)

(assert (=> b!1500913 (=> (not res!1022067) (not e!839757))))

(declare-datatypes ((List!34963 0))(
  ( (Nil!34960) (Cons!34959 (h!36357 (_ BitVec 64)) (t!49664 List!34963)) )
))
(declare-fun arrayNoDuplicates!0 (array!100072 (_ BitVec 32) List!34963) Bool)

(assert (=> b!1500913 (= res!1022067 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34960))))

(declare-fun b!1500914 () Bool)

(declare-fun res!1022066 () Bool)

(assert (=> b!1500914 (=> (not res!1022066) (not e!839757))))

(assert (=> b!1500914 (= res!1022066 (validKeyInArray!0 (select (arr!48291 a!2850) i!996)))))

(declare-fun b!1500915 () Bool)

(declare-fun e!839758 () Bool)

(assert (=> b!1500915 (= e!839757 e!839758)))

(declare-fun res!1022062 () Bool)

(assert (=> b!1500915 (=> (not res!1022062) (not e!839758))))

(declare-fun lt!653002 () (_ BitVec 32))

(assert (=> b!1500915 (= res!1022062 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653002 #b00000000000000000000000000000000) (bvslt lt!653002 (size!48842 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500915 (= lt!653002 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500916 () Bool)

(declare-fun res!1022065 () Bool)

(assert (=> b!1500916 (=> (not res!1022065) (not e!839757))))

(assert (=> b!1500916 (= res!1022065 (and (= (size!48842 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48842 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48842 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1022058 () Bool)

(assert (=> start!127778 (=> (not res!1022058) (not e!839757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127778 (= res!1022058 (validMask!0 mask!2661))))

(assert (=> start!127778 e!839757))

(assert (=> start!127778 true))

(declare-fun array_inv!37236 (array!100072) Bool)

(assert (=> start!127778 (array_inv!37236 a!2850)))

(declare-fun b!1500917 () Bool)

(assert (=> b!1500917 (= e!839758 false)))

(declare-datatypes ((SeekEntryResult!12520 0))(
  ( (MissingZero!12520 (index!52471 (_ BitVec 32))) (Found!12520 (index!52472 (_ BitVec 32))) (Intermediate!12520 (undefined!13332 Bool) (index!52473 (_ BitVec 32)) (x!134151 (_ BitVec 32))) (Undefined!12520) (MissingVacant!12520 (index!52474 (_ BitVec 32))) )
))
(declare-fun lt!653001 () SeekEntryResult!12520)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100072 (_ BitVec 32)) SeekEntryResult!12520)

(assert (=> b!1500917 (= lt!653001 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653002 vacantBefore!10 (select (arr!48291 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500918 () Bool)

(declare-fun res!1022061 () Bool)

(assert (=> b!1500918 (=> (not res!1022061) (not e!839757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100072 (_ BitVec 32)) Bool)

(assert (=> b!1500918 (= res!1022061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500919 () Bool)

(declare-fun res!1022059 () Bool)

(assert (=> b!1500919 (=> (not res!1022059) (not e!839757))))

(assert (=> b!1500919 (= res!1022059 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48291 a!2850) j!87) a!2850 mask!2661) (Found!12520 j!87)))))

(assert (= (and start!127778 res!1022058) b!1500916))

(assert (= (and b!1500916 res!1022065) b!1500914))

(assert (= (and b!1500914 res!1022066) b!1500911))

(assert (= (and b!1500911 res!1022060) b!1500918))

(assert (= (and b!1500918 res!1022061) b!1500913))

(assert (= (and b!1500913 res!1022067) b!1500912))

(assert (= (and b!1500912 res!1022064) b!1500919))

(assert (= (and b!1500919 res!1022059) b!1500910))

(assert (= (and b!1500910 res!1022063) b!1500915))

(assert (= (and b!1500915 res!1022062) b!1500917))

(declare-fun m!1384161 () Bool)

(assert (=> b!1500911 m!1384161))

(assert (=> b!1500911 m!1384161))

(declare-fun m!1384163 () Bool)

(assert (=> b!1500911 m!1384163))

(declare-fun m!1384165 () Bool)

(assert (=> start!127778 m!1384165))

(declare-fun m!1384167 () Bool)

(assert (=> start!127778 m!1384167))

(declare-fun m!1384169 () Bool)

(assert (=> b!1500915 m!1384169))

(declare-fun m!1384171 () Bool)

(assert (=> b!1500913 m!1384171))

(declare-fun m!1384173 () Bool)

(assert (=> b!1500912 m!1384173))

(declare-fun m!1384175 () Bool)

(assert (=> b!1500912 m!1384175))

(declare-fun m!1384177 () Bool)

(assert (=> b!1500912 m!1384177))

(declare-fun m!1384179 () Bool)

(assert (=> b!1500918 m!1384179))

(declare-fun m!1384181 () Bool)

(assert (=> b!1500914 m!1384181))

(assert (=> b!1500914 m!1384181))

(declare-fun m!1384183 () Bool)

(assert (=> b!1500914 m!1384183))

(declare-fun m!1384185 () Bool)

(assert (=> b!1500910 m!1384185))

(assert (=> b!1500910 m!1384161))

(assert (=> b!1500917 m!1384161))

(assert (=> b!1500917 m!1384161))

(declare-fun m!1384187 () Bool)

(assert (=> b!1500917 m!1384187))

(assert (=> b!1500919 m!1384161))

(assert (=> b!1500919 m!1384161))

(declare-fun m!1384189 () Bool)

(assert (=> b!1500919 m!1384189))

(push 1)

(assert (not b!1500918))

(assert (not b!1500915))

(assert (not b!1500913))

(assert (not b!1500917))

(assert (not b!1500911))

(assert (not b!1500919))

(assert (not start!127778))

(assert (not b!1500914))

(check-sat)

