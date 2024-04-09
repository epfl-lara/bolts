; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128234 () Bool)

(assert start!128234)

(declare-fun b!1505076 () Bool)

(declare-fun res!1025748 () Bool)

(declare-fun e!841252 () Bool)

(assert (=> b!1505076 (=> (not res!1025748) (not e!841252))))

(declare-datatypes ((array!100345 0))(
  ( (array!100346 (arr!48420 (Array (_ BitVec 32) (_ BitVec 64))) (size!48971 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100345)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505076 (= res!1025748 (validKeyInArray!0 (select (arr!48420 a!2850) j!87)))))

(declare-fun b!1505077 () Bool)

(declare-fun res!1025739 () Bool)

(assert (=> b!1505077 (=> (not res!1025739) (not e!841252))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1505077 (= res!1025739 (validKeyInArray!0 (select (arr!48420 a!2850) i!996)))))

(declare-fun b!1505078 () Bool)

(declare-fun res!1025743 () Bool)

(assert (=> b!1505078 (=> (not res!1025743) (not e!841252))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100345 (_ BitVec 32)) Bool)

(assert (=> b!1505078 (= res!1025743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505079 () Bool)

(declare-fun e!841253 () Bool)

(declare-fun e!841250 () Bool)

(assert (=> b!1505079 (= e!841253 e!841250)))

(declare-fun res!1025747 () Bool)

(assert (=> b!1505079 (=> (not res!1025747) (not e!841250))))

(declare-fun lt!653860 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1505079 (= res!1025747 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653860 #b00000000000000000000000000000000) (bvslt lt!653860 (size!48971 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505079 (= lt!653860 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1505080 () Bool)

(declare-fun res!1025740 () Bool)

(assert (=> b!1505080 (=> (not res!1025740) (not e!841250))))

(declare-datatypes ((SeekEntryResult!12637 0))(
  ( (MissingZero!12637 (index!52939 (_ BitVec 32))) (Found!12637 (index!52940 (_ BitVec 32))) (Intermediate!12637 (undefined!13449 Bool) (index!52941 (_ BitVec 32)) (x!134636 (_ BitVec 32))) (Undefined!12637) (MissingVacant!12637 (index!52942 (_ BitVec 32))) )
))
(declare-fun lt!653858 () SeekEntryResult!12637)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100345 (_ BitVec 32)) SeekEntryResult!12637)

(assert (=> b!1505080 (= res!1025740 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653860 vacantBefore!10 (select (arr!48420 a!2850) j!87) a!2850 mask!2661) lt!653858))))

(declare-fun b!1505082 () Bool)

(assert (=> b!1505082 (= e!841250 (not true))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1505082 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653860 vacantAfter!10 (select (store (arr!48420 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100346 (store (arr!48420 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48971 a!2850)) mask!2661) lt!653858)))

(declare-datatypes ((Unit!50236 0))(
  ( (Unit!50237) )
))
(declare-fun lt!653859 () Unit!50236)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50236)

(assert (=> b!1505082 (= lt!653859 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653860 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1505083 () Bool)

(declare-fun res!1025745 () Bool)

(assert (=> b!1505083 (=> (not res!1025745) (not e!841253))))

(assert (=> b!1505083 (= res!1025745 (not (= (select (arr!48420 a!2850) index!625) (select (arr!48420 a!2850) j!87))))))

(declare-fun b!1505084 () Bool)

(assert (=> b!1505084 (= e!841252 e!841253)))

(declare-fun res!1025738 () Bool)

(assert (=> b!1505084 (=> (not res!1025738) (not e!841253))))

(assert (=> b!1505084 (= res!1025738 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48420 a!2850) j!87) a!2850 mask!2661) lt!653858))))

(assert (=> b!1505084 (= lt!653858 (Found!12637 j!87))))

(declare-fun b!1505081 () Bool)

(declare-fun res!1025746 () Bool)

(assert (=> b!1505081 (=> (not res!1025746) (not e!841252))))

(assert (=> b!1505081 (= res!1025746 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48971 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48971 a!2850)) (= (select (arr!48420 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48420 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48971 a!2850))))))

(declare-fun res!1025742 () Bool)

(assert (=> start!128234 (=> (not res!1025742) (not e!841252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128234 (= res!1025742 (validMask!0 mask!2661))))

(assert (=> start!128234 e!841252))

(assert (=> start!128234 true))

(declare-fun array_inv!37365 (array!100345) Bool)

(assert (=> start!128234 (array_inv!37365 a!2850)))

(declare-fun b!1505085 () Bool)

(declare-fun res!1025744 () Bool)

(assert (=> b!1505085 (=> (not res!1025744) (not e!841252))))

(assert (=> b!1505085 (= res!1025744 (and (= (size!48971 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48971 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48971 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1505086 () Bool)

(declare-fun res!1025741 () Bool)

(assert (=> b!1505086 (=> (not res!1025741) (not e!841252))))

(declare-datatypes ((List!35092 0))(
  ( (Nil!35089) (Cons!35088 (h!36486 (_ BitVec 64)) (t!49793 List!35092)) )
))
(declare-fun arrayNoDuplicates!0 (array!100345 (_ BitVec 32) List!35092) Bool)

(assert (=> b!1505086 (= res!1025741 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35089))))

(assert (= (and start!128234 res!1025742) b!1505085))

(assert (= (and b!1505085 res!1025744) b!1505077))

(assert (= (and b!1505077 res!1025739) b!1505076))

(assert (= (and b!1505076 res!1025748) b!1505078))

(assert (= (and b!1505078 res!1025743) b!1505086))

(assert (= (and b!1505086 res!1025741) b!1505081))

(assert (= (and b!1505081 res!1025746) b!1505084))

(assert (= (and b!1505084 res!1025738) b!1505083))

(assert (= (and b!1505083 res!1025745) b!1505079))

(assert (= (and b!1505079 res!1025747) b!1505080))

(assert (= (and b!1505080 res!1025740) b!1505082))

(declare-fun m!1388247 () Bool)

(assert (=> b!1505080 m!1388247))

(assert (=> b!1505080 m!1388247))

(declare-fun m!1388249 () Bool)

(assert (=> b!1505080 m!1388249))

(declare-fun m!1388251 () Bool)

(assert (=> b!1505086 m!1388251))

(declare-fun m!1388253 () Bool)

(assert (=> b!1505081 m!1388253))

(declare-fun m!1388255 () Bool)

(assert (=> b!1505081 m!1388255))

(declare-fun m!1388257 () Bool)

(assert (=> b!1505081 m!1388257))

(declare-fun m!1388259 () Bool)

(assert (=> start!128234 m!1388259))

(declare-fun m!1388261 () Bool)

(assert (=> start!128234 m!1388261))

(declare-fun m!1388263 () Bool)

(assert (=> b!1505079 m!1388263))

(assert (=> b!1505082 m!1388255))

(declare-fun m!1388265 () Bool)

(assert (=> b!1505082 m!1388265))

(assert (=> b!1505082 m!1388265))

(declare-fun m!1388267 () Bool)

(assert (=> b!1505082 m!1388267))

(declare-fun m!1388269 () Bool)

(assert (=> b!1505082 m!1388269))

(declare-fun m!1388271 () Bool)

(assert (=> b!1505077 m!1388271))

(assert (=> b!1505077 m!1388271))

(declare-fun m!1388273 () Bool)

(assert (=> b!1505077 m!1388273))

(assert (=> b!1505076 m!1388247))

(assert (=> b!1505076 m!1388247))

(declare-fun m!1388275 () Bool)

(assert (=> b!1505076 m!1388275))

(declare-fun m!1388277 () Bool)

(assert (=> b!1505083 m!1388277))

(assert (=> b!1505083 m!1388247))

(declare-fun m!1388279 () Bool)

(assert (=> b!1505078 m!1388279))

(assert (=> b!1505084 m!1388247))

(assert (=> b!1505084 m!1388247))

(declare-fun m!1388281 () Bool)

(assert (=> b!1505084 m!1388281))

(push 1)

(assert (not b!1505076))

(assert (not b!1505082))

(assert (not b!1505079))

(assert (not b!1505084))

