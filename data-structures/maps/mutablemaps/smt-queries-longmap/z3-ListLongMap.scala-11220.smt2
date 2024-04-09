; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130986 () Bool)

(assert start!130986)

(declare-fun b!1536039 () Bool)

(declare-fun e!855010 () Bool)

(declare-fun e!855009 () Bool)

(assert (=> b!1536039 (= e!855010 e!855009)))

(declare-fun res!1053263 () Bool)

(assert (=> b!1536039 (=> (not res!1053263) (not e!855009))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102011 0))(
  ( (array!102012 (arr!49217 (Array (_ BitVec 32) (_ BitVec 64))) (size!49768 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102011)

(declare-fun lt!664169 () (_ BitVec 32))

(assert (=> b!1536039 (= res!1053263 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664169 #b00000000000000000000000000000000) (bvslt lt!664169 (size!49768 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536039 (= lt!664169 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536040 () Bool)

(declare-fun e!855008 () Bool)

(assert (=> b!1536040 (= e!855009 e!855008)))

(declare-fun res!1053265 () Bool)

(assert (=> b!1536040 (=> (not res!1053265) (not e!855008))))

(declare-datatypes ((SeekEntryResult!13372 0))(
  ( (MissingZero!13372 (index!55882 (_ BitVec 32))) (Found!13372 (index!55883 (_ BitVec 32))) (Intermediate!13372 (undefined!14184 Bool) (index!55884 (_ BitVec 32)) (x!137625 (_ BitVec 32))) (Undefined!13372) (MissingVacant!13372 (index!55885 (_ BitVec 32))) )
))
(declare-fun lt!664170 () SeekEntryResult!13372)

(declare-fun lt!664171 () SeekEntryResult!13372)

(assert (=> b!1536040 (= res!1053265 (= lt!664170 lt!664171))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102011 (_ BitVec 32)) SeekEntryResult!13372)

(assert (=> b!1536040 (= lt!664170 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664169 vacantIndex!5 (select (arr!49217 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536041 () Bool)

(declare-fun res!1053267 () Bool)

(declare-fun e!855007 () Bool)

(assert (=> b!1536041 (=> (not res!1053267) (not e!855007))))

(declare-datatypes ((List!35871 0))(
  ( (Nil!35868) (Cons!35867 (h!37313 (_ BitVec 64)) (t!50572 List!35871)) )
))
(declare-fun arrayNoDuplicates!0 (array!102011 (_ BitVec 32) List!35871) Bool)

(assert (=> b!1536041 (= res!1053267 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35868))))

(declare-fun b!1536042 () Bool)

(declare-fun res!1053268 () Bool)

(assert (=> b!1536042 (=> (not res!1053268) (not e!855010))))

(assert (=> b!1536042 (= res!1053268 (not (= (select (arr!49217 a!2792) index!463) (select (arr!49217 a!2792) j!64))))))

(declare-fun b!1536043 () Bool)

(assert (=> b!1536043 (= e!855007 e!855010)))

(declare-fun res!1053266 () Bool)

(assert (=> b!1536043 (=> (not res!1053266) (not e!855010))))

(assert (=> b!1536043 (= res!1053266 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49217 a!2792) j!64) a!2792 mask!2480) lt!664171))))

(assert (=> b!1536043 (= lt!664171 (Found!13372 j!64))))

(declare-fun b!1536044 () Bool)

(declare-fun res!1053270 () Bool)

(assert (=> b!1536044 (=> (not res!1053270) (not e!855007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536044 (= res!1053270 (validKeyInArray!0 (select (arr!49217 a!2792) j!64)))))

(declare-fun b!1536045 () Bool)

(declare-fun res!1053273 () Bool)

(assert (=> b!1536045 (=> (not res!1053273) (not e!855007))))

(assert (=> b!1536045 (= res!1053273 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49768 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49768 a!2792)) (= (select (arr!49217 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536046 () Bool)

(declare-fun res!1053269 () Bool)

(assert (=> b!1536046 (=> (not res!1053269) (not e!855007))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536046 (= res!1053269 (validKeyInArray!0 (select (arr!49217 a!2792) i!951)))))

(declare-fun res!1053272 () Bool)

(assert (=> start!130986 (=> (not res!1053272) (not e!855007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130986 (= res!1053272 (validMask!0 mask!2480))))

(assert (=> start!130986 e!855007))

(assert (=> start!130986 true))

(declare-fun array_inv!38162 (array!102011) Bool)

(assert (=> start!130986 (array_inv!38162 a!2792)))

(declare-fun b!1536047 () Bool)

(declare-fun res!1053264 () Bool)

(assert (=> b!1536047 (=> (not res!1053264) (not e!855007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102011 (_ BitVec 32)) Bool)

(assert (=> b!1536047 (= res!1053264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536048 () Bool)

(assert (=> b!1536048 (= e!855008 (not true))))

(assert (=> b!1536048 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664169 vacantIndex!5 (select (store (arr!49217 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102012 (store (arr!49217 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49768 a!2792)) mask!2480) lt!664170)))

(declare-datatypes ((Unit!51268 0))(
  ( (Unit!51269) )
))
(declare-fun lt!664168 () Unit!51268)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51268)

(assert (=> b!1536048 (= lt!664168 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664169 vacantIndex!5 mask!2480))))

(declare-fun b!1536049 () Bool)

(declare-fun res!1053271 () Bool)

(assert (=> b!1536049 (=> (not res!1053271) (not e!855007))))

(assert (=> b!1536049 (= res!1053271 (and (= (size!49768 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49768 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49768 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130986 res!1053272) b!1536049))

(assert (= (and b!1536049 res!1053271) b!1536046))

(assert (= (and b!1536046 res!1053269) b!1536044))

(assert (= (and b!1536044 res!1053270) b!1536047))

(assert (= (and b!1536047 res!1053264) b!1536041))

(assert (= (and b!1536041 res!1053267) b!1536045))

(assert (= (and b!1536045 res!1053273) b!1536043))

(assert (= (and b!1536043 res!1053266) b!1536042))

(assert (= (and b!1536042 res!1053268) b!1536039))

(assert (= (and b!1536039 res!1053263) b!1536040))

(assert (= (and b!1536040 res!1053265) b!1536048))

(declare-fun m!1418545 () Bool)

(assert (=> b!1536039 m!1418545))

(declare-fun m!1418547 () Bool)

(assert (=> b!1536041 m!1418547))

(declare-fun m!1418549 () Bool)

(assert (=> b!1536047 m!1418549))

(declare-fun m!1418551 () Bool)

(assert (=> b!1536043 m!1418551))

(assert (=> b!1536043 m!1418551))

(declare-fun m!1418553 () Bool)

(assert (=> b!1536043 m!1418553))

(declare-fun m!1418555 () Bool)

(assert (=> b!1536045 m!1418555))

(declare-fun m!1418557 () Bool)

(assert (=> b!1536042 m!1418557))

(assert (=> b!1536042 m!1418551))

(declare-fun m!1418559 () Bool)

(assert (=> b!1536048 m!1418559))

(declare-fun m!1418561 () Bool)

(assert (=> b!1536048 m!1418561))

(assert (=> b!1536048 m!1418561))

(declare-fun m!1418563 () Bool)

(assert (=> b!1536048 m!1418563))

(declare-fun m!1418565 () Bool)

(assert (=> b!1536048 m!1418565))

(assert (=> b!1536044 m!1418551))

(assert (=> b!1536044 m!1418551))

(declare-fun m!1418567 () Bool)

(assert (=> b!1536044 m!1418567))

(assert (=> b!1536040 m!1418551))

(assert (=> b!1536040 m!1418551))

(declare-fun m!1418569 () Bool)

(assert (=> b!1536040 m!1418569))

(declare-fun m!1418571 () Bool)

(assert (=> start!130986 m!1418571))

(declare-fun m!1418573 () Bool)

(assert (=> start!130986 m!1418573))

(declare-fun m!1418575 () Bool)

(assert (=> b!1536046 m!1418575))

(assert (=> b!1536046 m!1418575))

(declare-fun m!1418577 () Bool)

(assert (=> b!1536046 m!1418577))

(check-sat (not b!1536039) (not b!1536047) (not b!1536040) (not start!130986) (not b!1536046) (not b!1536041) (not b!1536044) (not b!1536043) (not b!1536048))
(check-sat)
