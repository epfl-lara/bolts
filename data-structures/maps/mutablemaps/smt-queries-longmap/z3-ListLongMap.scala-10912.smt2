; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127782 () Bool)

(assert start!127782)

(declare-fun b!1500975 () Bool)

(declare-fun res!1022133 () Bool)

(declare-fun e!839781 () Bool)

(assert (=> b!1500975 (=> (not res!1022133) (not e!839781))))

(declare-datatypes ((array!100076 0))(
  ( (array!100077 (arr!48293 (Array (_ BitVec 32) (_ BitVec 64))) (size!48844 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100076)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500975 (= res!1022133 (validKeyInArray!0 (select (arr!48293 a!2850) i!996)))))

(declare-fun b!1500976 () Bool)

(declare-fun res!1022126 () Bool)

(assert (=> b!1500976 (=> (not res!1022126) (not e!839781))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500976 (= res!1022126 (validKeyInArray!0 (select (arr!48293 a!2850) j!87)))))

(declare-fun res!1022130 () Bool)

(assert (=> start!127782 (=> (not res!1022130) (not e!839781))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127782 (= res!1022130 (validMask!0 mask!2661))))

(assert (=> start!127782 e!839781))

(assert (=> start!127782 true))

(declare-fun array_inv!37238 (array!100076) Bool)

(assert (=> start!127782 (array_inv!37238 a!2850)))

(declare-fun b!1500977 () Bool)

(declare-fun res!1022128 () Bool)

(declare-fun e!839782 () Bool)

(assert (=> b!1500977 (=> (not res!1022128) (not e!839782))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1500977 (= res!1022128 (not (= (select (arr!48293 a!2850) index!625) (select (arr!48293 a!2850) j!87))))))

(declare-fun b!1500978 () Bool)

(assert (=> b!1500978 (= e!839781 e!839782)))

(declare-fun res!1022129 () Bool)

(assert (=> b!1500978 (=> (not res!1022129) (not e!839782))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12522 0))(
  ( (MissingZero!12522 (index!52479 (_ BitVec 32))) (Found!12522 (index!52480 (_ BitVec 32))) (Intermediate!12522 (undefined!13334 Bool) (index!52481 (_ BitVec 32)) (x!134161 (_ BitVec 32))) (Undefined!12522) (MissingVacant!12522 (index!52482 (_ BitVec 32))) )
))
(declare-fun lt!653019 () SeekEntryResult!12522)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100076 (_ BitVec 32)) SeekEntryResult!12522)

(assert (=> b!1500978 (= res!1022129 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48293 a!2850) j!87) a!2850 mask!2661) lt!653019))))

(assert (=> b!1500978 (= lt!653019 (Found!12522 j!87))))

(declare-fun b!1500979 () Bool)

(declare-fun res!1022124 () Bool)

(declare-fun e!839780 () Bool)

(assert (=> b!1500979 (=> (not res!1022124) (not e!839780))))

(declare-fun lt!653018 () (_ BitVec 32))

(assert (=> b!1500979 (= res!1022124 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653018 vacantBefore!10 (select (arr!48293 a!2850) j!87) a!2850 mask!2661) lt!653019))))

(declare-fun b!1500980 () Bool)

(declare-fun res!1022123 () Bool)

(assert (=> b!1500980 (=> (not res!1022123) (not e!839781))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500980 (= res!1022123 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48844 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48844 a!2850)) (= (select (arr!48293 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48293 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48844 a!2850))))))

(declare-fun b!1500981 () Bool)

(assert (=> b!1500981 (= e!839780 (not true))))

(assert (=> b!1500981 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653018 vacantAfter!10 (select (store (arr!48293 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100077 (store (arr!48293 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48844 a!2850)) mask!2661) lt!653019)))

(declare-datatypes ((Unit!50152 0))(
  ( (Unit!50153) )
))
(declare-fun lt!653020 () Unit!50152)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100076 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50152)

(assert (=> b!1500981 (= lt!653020 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653018 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1500982 () Bool)

(declare-fun res!1022127 () Bool)

(assert (=> b!1500982 (=> (not res!1022127) (not e!839781))))

(assert (=> b!1500982 (= res!1022127 (and (= (size!48844 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48844 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48844 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500983 () Bool)

(declare-fun res!1022132 () Bool)

(assert (=> b!1500983 (=> (not res!1022132) (not e!839781))))

(declare-datatypes ((List!34965 0))(
  ( (Nil!34962) (Cons!34961 (h!36359 (_ BitVec 64)) (t!49666 List!34965)) )
))
(declare-fun arrayNoDuplicates!0 (array!100076 (_ BitVec 32) List!34965) Bool)

(assert (=> b!1500983 (= res!1022132 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34962))))

(declare-fun b!1500984 () Bool)

(declare-fun res!1022131 () Bool)

(assert (=> b!1500984 (=> (not res!1022131) (not e!839781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100076 (_ BitVec 32)) Bool)

(assert (=> b!1500984 (= res!1022131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500985 () Bool)

(assert (=> b!1500985 (= e!839782 e!839780)))

(declare-fun res!1022125 () Bool)

(assert (=> b!1500985 (=> (not res!1022125) (not e!839780))))

(assert (=> b!1500985 (= res!1022125 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653018 #b00000000000000000000000000000000) (bvslt lt!653018 (size!48844 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500985 (= lt!653018 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127782 res!1022130) b!1500982))

(assert (= (and b!1500982 res!1022127) b!1500975))

(assert (= (and b!1500975 res!1022133) b!1500976))

(assert (= (and b!1500976 res!1022126) b!1500984))

(assert (= (and b!1500984 res!1022131) b!1500983))

(assert (= (and b!1500983 res!1022132) b!1500980))

(assert (= (and b!1500980 res!1022123) b!1500978))

(assert (= (and b!1500978 res!1022129) b!1500977))

(assert (= (and b!1500977 res!1022128) b!1500985))

(assert (= (and b!1500985 res!1022125) b!1500979))

(assert (= (and b!1500979 res!1022124) b!1500981))

(declare-fun m!1384227 () Bool)

(assert (=> b!1500976 m!1384227))

(assert (=> b!1500976 m!1384227))

(declare-fun m!1384229 () Bool)

(assert (=> b!1500976 m!1384229))

(declare-fun m!1384231 () Bool)

(assert (=> b!1500984 m!1384231))

(declare-fun m!1384233 () Bool)

(assert (=> b!1500983 m!1384233))

(declare-fun m!1384235 () Bool)

(assert (=> start!127782 m!1384235))

(declare-fun m!1384237 () Bool)

(assert (=> start!127782 m!1384237))

(assert (=> b!1500978 m!1384227))

(assert (=> b!1500978 m!1384227))

(declare-fun m!1384239 () Bool)

(assert (=> b!1500978 m!1384239))

(declare-fun m!1384241 () Bool)

(assert (=> b!1500980 m!1384241))

(declare-fun m!1384243 () Bool)

(assert (=> b!1500980 m!1384243))

(declare-fun m!1384245 () Bool)

(assert (=> b!1500980 m!1384245))

(declare-fun m!1384247 () Bool)

(assert (=> b!1500977 m!1384247))

(assert (=> b!1500977 m!1384227))

(assert (=> b!1500979 m!1384227))

(assert (=> b!1500979 m!1384227))

(declare-fun m!1384249 () Bool)

(assert (=> b!1500979 m!1384249))

(declare-fun m!1384251 () Bool)

(assert (=> b!1500975 m!1384251))

(assert (=> b!1500975 m!1384251))

(declare-fun m!1384253 () Bool)

(assert (=> b!1500975 m!1384253))

(assert (=> b!1500981 m!1384243))

(declare-fun m!1384255 () Bool)

(assert (=> b!1500981 m!1384255))

(assert (=> b!1500981 m!1384255))

(declare-fun m!1384257 () Bool)

(assert (=> b!1500981 m!1384257))

(declare-fun m!1384259 () Bool)

(assert (=> b!1500981 m!1384259))

(declare-fun m!1384261 () Bool)

(assert (=> b!1500985 m!1384261))

(check-sat (not b!1500983) (not b!1500976) (not b!1500978) (not b!1500985) (not b!1500979) (not b!1500981) (not start!127782) (not b!1500984) (not b!1500975))
(check-sat)
