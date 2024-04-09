; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131398 () Bool)

(assert start!131398)

(declare-fun b!1540083 () Bool)

(declare-fun e!856588 () Bool)

(declare-fun e!856587 () Bool)

(assert (=> b!1540083 (= e!856588 e!856587)))

(declare-fun res!1056920 () Bool)

(assert (=> b!1540083 (=> (not res!1056920) (not e!856587))))

(declare-datatypes ((SeekEntryResult!13491 0))(
  ( (MissingZero!13491 (index!56358 (_ BitVec 32))) (Found!13491 (index!56359 (_ BitVec 32))) (Intermediate!13491 (undefined!14303 Bool) (index!56360 (_ BitVec 32)) (x!138101 (_ BitVec 32))) (Undefined!13491) (MissingVacant!13491 (index!56361 (_ BitVec 32))) )
))
(declare-fun lt!665187 () SeekEntryResult!13491)

(declare-fun lt!665188 () SeekEntryResult!13491)

(assert (=> b!1540083 (= res!1056920 (= lt!665187 lt!665188))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102273 0))(
  ( (array!102274 (arr!49342 (Array (_ BitVec 32) (_ BitVec 64))) (size!49893 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102273)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!665186 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102273 (_ BitVec 32)) SeekEntryResult!13491)

(assert (=> b!1540083 (= lt!665187 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665186 vacantIndex!5 (select (arr!49342 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540084 () Bool)

(declare-fun res!1056919 () Bool)

(declare-fun e!856585 () Bool)

(assert (=> b!1540084 (=> (not res!1056919) (not e!856585))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540084 (= res!1056919 (and (= (size!49893 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49893 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49893 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540085 () Bool)

(declare-fun res!1056912 () Bool)

(assert (=> b!1540085 (=> (not res!1056912) (not e!856585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540085 (= res!1056912 (validKeyInArray!0 (select (arr!49342 a!2792) j!64)))))

(declare-fun b!1540086 () Bool)

(declare-fun e!856589 () Bool)

(assert (=> b!1540086 (= e!856585 e!856589)))

(declare-fun res!1056913 () Bool)

(assert (=> b!1540086 (=> (not res!1056913) (not e!856589))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540086 (= res!1056913 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49342 a!2792) j!64) a!2792 mask!2480) lt!665188))))

(assert (=> b!1540086 (= lt!665188 (Found!13491 j!64))))

(declare-fun b!1540087 () Bool)

(declare-fun res!1056918 () Bool)

(assert (=> b!1540087 (=> (not res!1056918) (not e!856585))))

(declare-datatypes ((List!35996 0))(
  ( (Nil!35993) (Cons!35992 (h!37438 (_ BitVec 64)) (t!50697 List!35996)) )
))
(declare-fun arrayNoDuplicates!0 (array!102273 (_ BitVec 32) List!35996) Bool)

(assert (=> b!1540087 (= res!1056918 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35993))))

(declare-fun res!1056916 () Bool)

(assert (=> start!131398 (=> (not res!1056916) (not e!856585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131398 (= res!1056916 (validMask!0 mask!2480))))

(assert (=> start!131398 e!856585))

(assert (=> start!131398 true))

(declare-fun array_inv!38287 (array!102273) Bool)

(assert (=> start!131398 (array_inv!38287 a!2792)))

(declare-fun b!1540088 () Bool)

(declare-fun res!1056915 () Bool)

(assert (=> b!1540088 (=> (not res!1056915) (not e!856585))))

(assert (=> b!1540088 (= res!1056915 (validKeyInArray!0 (select (arr!49342 a!2792) i!951)))))

(declare-fun b!1540089 () Bool)

(declare-fun res!1056911 () Bool)

(assert (=> b!1540089 (=> (not res!1056911) (not e!856585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102273 (_ BitVec 32)) Bool)

(assert (=> b!1540089 (= res!1056911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540090 () Bool)

(declare-fun res!1056914 () Bool)

(assert (=> b!1540090 (=> (not res!1056914) (not e!856589))))

(assert (=> b!1540090 (= res!1056914 (not (= (select (arr!49342 a!2792) index!463) (select (arr!49342 a!2792) j!64))))))

(declare-fun b!1540091 () Bool)

(assert (=> b!1540091 (= e!856589 e!856588)))

(declare-fun res!1056921 () Bool)

(assert (=> b!1540091 (=> (not res!1056921) (not e!856588))))

(assert (=> b!1540091 (= res!1056921 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665186 #b00000000000000000000000000000000) (bvslt lt!665186 (size!49893 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540091 (= lt!665186 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540092 () Bool)

(assert (=> b!1540092 (= e!856587 (not true))))

(assert (=> b!1540092 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665186 vacantIndex!5 (select (store (arr!49342 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102274 (store (arr!49342 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49893 a!2792)) mask!2480) lt!665187)))

(declare-datatypes ((Unit!51374 0))(
  ( (Unit!51375) )
))
(declare-fun lt!665185 () Unit!51374)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51374)

(assert (=> b!1540092 (= lt!665185 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665186 vacantIndex!5 mask!2480))))

(declare-fun b!1540093 () Bool)

(declare-fun res!1056917 () Bool)

(assert (=> b!1540093 (=> (not res!1056917) (not e!856585))))

(assert (=> b!1540093 (= res!1056917 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49893 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49893 a!2792)) (= (select (arr!49342 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131398 res!1056916) b!1540084))

(assert (= (and b!1540084 res!1056919) b!1540088))

(assert (= (and b!1540088 res!1056915) b!1540085))

(assert (= (and b!1540085 res!1056912) b!1540089))

(assert (= (and b!1540089 res!1056911) b!1540087))

(assert (= (and b!1540087 res!1056918) b!1540093))

(assert (= (and b!1540093 res!1056917) b!1540086))

(assert (= (and b!1540086 res!1056913) b!1540090))

(assert (= (and b!1540090 res!1056914) b!1540091))

(assert (= (and b!1540091 res!1056921) b!1540083))

(assert (= (and b!1540083 res!1056920) b!1540092))

(declare-fun m!1422237 () Bool)

(assert (=> start!131398 m!1422237))

(declare-fun m!1422239 () Bool)

(assert (=> start!131398 m!1422239))

(declare-fun m!1422241 () Bool)

(assert (=> b!1540091 m!1422241))

(declare-fun m!1422243 () Bool)

(assert (=> b!1540083 m!1422243))

(assert (=> b!1540083 m!1422243))

(declare-fun m!1422245 () Bool)

(assert (=> b!1540083 m!1422245))

(declare-fun m!1422247 () Bool)

(assert (=> b!1540092 m!1422247))

(declare-fun m!1422249 () Bool)

(assert (=> b!1540092 m!1422249))

(assert (=> b!1540092 m!1422249))

(declare-fun m!1422251 () Bool)

(assert (=> b!1540092 m!1422251))

(declare-fun m!1422253 () Bool)

(assert (=> b!1540092 m!1422253))

(assert (=> b!1540085 m!1422243))

(assert (=> b!1540085 m!1422243))

(declare-fun m!1422255 () Bool)

(assert (=> b!1540085 m!1422255))

(declare-fun m!1422257 () Bool)

(assert (=> b!1540093 m!1422257))

(declare-fun m!1422259 () Bool)

(assert (=> b!1540087 m!1422259))

(declare-fun m!1422261 () Bool)

(assert (=> b!1540090 m!1422261))

(assert (=> b!1540090 m!1422243))

(declare-fun m!1422263 () Bool)

(assert (=> b!1540088 m!1422263))

(assert (=> b!1540088 m!1422263))

(declare-fun m!1422265 () Bool)

(assert (=> b!1540088 m!1422265))

(assert (=> b!1540086 m!1422243))

(assert (=> b!1540086 m!1422243))

(declare-fun m!1422267 () Bool)

(assert (=> b!1540086 m!1422267))

(declare-fun m!1422269 () Bool)

(assert (=> b!1540089 m!1422269))

(push 1)

