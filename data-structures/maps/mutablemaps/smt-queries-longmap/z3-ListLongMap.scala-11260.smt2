; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131388 () Bool)

(assert start!131388)

(declare-fun b!1539918 () Bool)

(declare-fun res!1056747 () Bool)

(declare-fun e!856517 () Bool)

(assert (=> b!1539918 (=> (not res!1056747) (not e!856517))))

(declare-datatypes ((array!102263 0))(
  ( (array!102264 (arr!49337 (Array (_ BitVec 32) (_ BitVec 64))) (size!49888 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102263)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539918 (= res!1056747 (not (= (select (arr!49337 a!2792) index!463) (select (arr!49337 a!2792) j!64))))))

(declare-fun b!1539919 () Bool)

(declare-fun res!1056751 () Bool)

(declare-fun e!856516 () Bool)

(assert (=> b!1539919 (=> (not res!1056751) (not e!856516))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539919 (= res!1056751 (validKeyInArray!0 (select (arr!49337 a!2792) i!951)))))

(declare-fun b!1539920 () Bool)

(declare-fun res!1056748 () Bool)

(assert (=> b!1539920 (=> (not res!1056748) (not e!856516))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1539920 (= res!1056748 (and (= (size!49888 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49888 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49888 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539921 () Bool)

(declare-fun res!1056756 () Bool)

(assert (=> b!1539921 (=> (not res!1056756) (not e!856516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102263 (_ BitVec 32)) Bool)

(assert (=> b!1539921 (= res!1056756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539922 () Bool)

(assert (=> b!1539922 (= e!856516 e!856517)))

(declare-fun res!1056753 () Bool)

(assert (=> b!1539922 (=> (not res!1056753) (not e!856517))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13486 0))(
  ( (MissingZero!13486 (index!56338 (_ BitVec 32))) (Found!13486 (index!56339 (_ BitVec 32))) (Intermediate!13486 (undefined!14298 Bool) (index!56340 (_ BitVec 32)) (x!138080 (_ BitVec 32))) (Undefined!13486) (MissingVacant!13486 (index!56341 (_ BitVec 32))) )
))
(declare-fun lt!665133 () SeekEntryResult!13486)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102263 (_ BitVec 32)) SeekEntryResult!13486)

(assert (=> b!1539922 (= res!1056753 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49337 a!2792) j!64) a!2792 mask!2480) lt!665133))))

(assert (=> b!1539922 (= lt!665133 (Found!13486 j!64))))

(declare-fun b!1539923 () Bool)

(declare-fun res!1056746 () Bool)

(declare-fun e!856515 () Bool)

(assert (=> b!1539923 (=> (not res!1056746) (not e!856515))))

(declare-fun lt!665134 () (_ BitVec 32))

(assert (=> b!1539923 (= res!1056746 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665134 vacantIndex!5 (select (arr!49337 a!2792) j!64) a!2792 mask!2480) lt!665133))))

(declare-fun b!1539924 () Bool)

(declare-fun res!1056755 () Bool)

(assert (=> b!1539924 (=> (not res!1056755) (not e!856516))))

(assert (=> b!1539924 (= res!1056755 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49888 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49888 a!2792)) (= (select (arr!49337 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1056752 () Bool)

(assert (=> start!131388 (=> (not res!1056752) (not e!856516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131388 (= res!1056752 (validMask!0 mask!2480))))

(assert (=> start!131388 e!856516))

(assert (=> start!131388 true))

(declare-fun array_inv!38282 (array!102263) Bool)

(assert (=> start!131388 (array_inv!38282 a!2792)))

(declare-fun b!1539925 () Bool)

(assert (=> b!1539925 (= e!856515 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!510)) (bvsub #b01111111111111111111111111111110 x!510)))))

(declare-fun b!1539926 () Bool)

(declare-fun res!1056750 () Bool)

(assert (=> b!1539926 (=> (not res!1056750) (not e!856516))))

(declare-datatypes ((List!35991 0))(
  ( (Nil!35988) (Cons!35987 (h!37433 (_ BitVec 64)) (t!50692 List!35991)) )
))
(declare-fun arrayNoDuplicates!0 (array!102263 (_ BitVec 32) List!35991) Bool)

(assert (=> b!1539926 (= res!1056750 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35988))))

(declare-fun b!1539927 () Bool)

(assert (=> b!1539927 (= e!856517 e!856515)))

(declare-fun res!1056749 () Bool)

(assert (=> b!1539927 (=> (not res!1056749) (not e!856515))))

(assert (=> b!1539927 (= res!1056749 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665134 #b00000000000000000000000000000000) (bvslt lt!665134 (size!49888 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539927 (= lt!665134 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539928 () Bool)

(declare-fun res!1056754 () Bool)

(assert (=> b!1539928 (=> (not res!1056754) (not e!856516))))

(assert (=> b!1539928 (= res!1056754 (validKeyInArray!0 (select (arr!49337 a!2792) j!64)))))

(assert (= (and start!131388 res!1056752) b!1539920))

(assert (= (and b!1539920 res!1056748) b!1539919))

(assert (= (and b!1539919 res!1056751) b!1539928))

(assert (= (and b!1539928 res!1056754) b!1539921))

(assert (= (and b!1539921 res!1056756) b!1539926))

(assert (= (and b!1539926 res!1056750) b!1539924))

(assert (= (and b!1539924 res!1056755) b!1539922))

(assert (= (and b!1539922 res!1056753) b!1539918))

(assert (= (and b!1539918 res!1056747) b!1539927))

(assert (= (and b!1539927 res!1056749) b!1539923))

(assert (= (and b!1539923 res!1056746) b!1539925))

(declare-fun m!1422083 () Bool)

(assert (=> start!131388 m!1422083))

(declare-fun m!1422085 () Bool)

(assert (=> start!131388 m!1422085))

(declare-fun m!1422087 () Bool)

(assert (=> b!1539918 m!1422087))

(declare-fun m!1422089 () Bool)

(assert (=> b!1539918 m!1422089))

(assert (=> b!1539923 m!1422089))

(assert (=> b!1539923 m!1422089))

(declare-fun m!1422091 () Bool)

(assert (=> b!1539923 m!1422091))

(assert (=> b!1539928 m!1422089))

(assert (=> b!1539928 m!1422089))

(declare-fun m!1422093 () Bool)

(assert (=> b!1539928 m!1422093))

(declare-fun m!1422095 () Bool)

(assert (=> b!1539927 m!1422095))

(assert (=> b!1539922 m!1422089))

(assert (=> b!1539922 m!1422089))

(declare-fun m!1422097 () Bool)

(assert (=> b!1539922 m!1422097))

(declare-fun m!1422099 () Bool)

(assert (=> b!1539919 m!1422099))

(assert (=> b!1539919 m!1422099))

(declare-fun m!1422101 () Bool)

(assert (=> b!1539919 m!1422101))

(declare-fun m!1422103 () Bool)

(assert (=> b!1539926 m!1422103))

(declare-fun m!1422105 () Bool)

(assert (=> b!1539921 m!1422105))

(declare-fun m!1422107 () Bool)

(assert (=> b!1539924 m!1422107))

(check-sat (not b!1539926) (not b!1539922) (not b!1539923) (not b!1539921) (not start!131388) (not b!1539927) (not b!1539919) (not b!1539928))
(check-sat)
