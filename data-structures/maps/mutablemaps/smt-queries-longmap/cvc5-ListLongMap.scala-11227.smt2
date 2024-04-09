; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131026 () Bool)

(assert start!131026)

(declare-fun b!1536708 () Bool)

(declare-fun res!1053938 () Bool)

(declare-fun e!855316 () Bool)

(assert (=> b!1536708 (=> (not res!1053938) (not e!855316))))

(declare-datatypes ((array!102051 0))(
  ( (array!102052 (arr!49237 (Array (_ BitVec 32) (_ BitVec 64))) (size!49788 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102051)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536708 (= res!1053938 (validKeyInArray!0 (select (arr!49237 a!2792) i!951)))))

(declare-fun b!1536709 () Bool)

(declare-fun e!855320 () Bool)

(declare-fun e!855317 () Bool)

(assert (=> b!1536709 (= e!855320 e!855317)))

(declare-fun res!1053942 () Bool)

(assert (=> b!1536709 (=> (not res!1053942) (not e!855317))))

(declare-datatypes ((SeekEntryResult!13392 0))(
  ( (MissingZero!13392 (index!55962 (_ BitVec 32))) (Found!13392 (index!55963 (_ BitVec 32))) (Intermediate!13392 (undefined!14204 Bool) (index!55964 (_ BitVec 32)) (x!137701 (_ BitVec 32))) (Undefined!13392) (MissingVacant!13392 (index!55965 (_ BitVec 32))) )
))
(declare-fun lt!664419 () SeekEntryResult!13392)

(declare-fun lt!664420 () SeekEntryResult!13392)

(assert (=> b!1536709 (= res!1053942 (= lt!664419 lt!664420))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!664417 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102051 (_ BitVec 32)) SeekEntryResult!13392)

(assert (=> b!1536709 (= lt!664419 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664417 vacantIndex!5 (select (arr!49237 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536710 () Bool)

(declare-fun res!1053936 () Bool)

(assert (=> b!1536710 (=> (not res!1053936) (not e!855316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102051 (_ BitVec 32)) Bool)

(assert (=> b!1536710 (= res!1053936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536711 () Bool)

(assert (=> b!1536711 (= e!855317 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(assert (=> b!1536711 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664417 vacantIndex!5 (select (store (arr!49237 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102052 (store (arr!49237 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49788 a!2792)) mask!2480) lt!664419)))

(declare-datatypes ((Unit!51308 0))(
  ( (Unit!51309) )
))
(declare-fun lt!664418 () Unit!51308)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51308)

(assert (=> b!1536711 (= lt!664418 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664417 vacantIndex!5 mask!2480))))

(declare-fun b!1536712 () Bool)

(declare-fun res!1053934 () Bool)

(declare-fun e!855319 () Bool)

(assert (=> b!1536712 (=> (not res!1053934) (not e!855319))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536712 (= res!1053934 (not (= (select (arr!49237 a!2792) index!463) (select (arr!49237 a!2792) j!64))))))

(declare-fun b!1536713 () Bool)

(declare-fun res!1053933 () Bool)

(assert (=> b!1536713 (=> (not res!1053933) (not e!855316))))

(assert (=> b!1536713 (= res!1053933 (and (= (size!49788 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49788 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49788 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536714 () Bool)

(assert (=> b!1536714 (= e!855319 e!855320)))

(declare-fun res!1053940 () Bool)

(assert (=> b!1536714 (=> (not res!1053940) (not e!855320))))

(assert (=> b!1536714 (= res!1053940 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664417 #b00000000000000000000000000000000) (bvslt lt!664417 (size!49788 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536714 (= lt!664417 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1053935 () Bool)

(assert (=> start!131026 (=> (not res!1053935) (not e!855316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131026 (= res!1053935 (validMask!0 mask!2480))))

(assert (=> start!131026 e!855316))

(assert (=> start!131026 true))

(declare-fun array_inv!38182 (array!102051) Bool)

(assert (=> start!131026 (array_inv!38182 a!2792)))

(declare-fun b!1536715 () Bool)

(assert (=> b!1536715 (= e!855316 e!855319)))

(declare-fun res!1053939 () Bool)

(assert (=> b!1536715 (=> (not res!1053939) (not e!855319))))

(assert (=> b!1536715 (= res!1053939 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49237 a!2792) j!64) a!2792 mask!2480) lt!664420))))

(assert (=> b!1536715 (= lt!664420 (Found!13392 j!64))))

(declare-fun b!1536716 () Bool)

(declare-fun res!1053941 () Bool)

(assert (=> b!1536716 (=> (not res!1053941) (not e!855316))))

(declare-datatypes ((List!35891 0))(
  ( (Nil!35888) (Cons!35887 (h!37333 (_ BitVec 64)) (t!50592 List!35891)) )
))
(declare-fun arrayNoDuplicates!0 (array!102051 (_ BitVec 32) List!35891) Bool)

(assert (=> b!1536716 (= res!1053941 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35888))))

(declare-fun b!1536717 () Bool)

(declare-fun res!1053932 () Bool)

(assert (=> b!1536717 (=> (not res!1053932) (not e!855316))))

(assert (=> b!1536717 (= res!1053932 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49788 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49788 a!2792)) (= (select (arr!49237 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536718 () Bool)

(declare-fun res!1053937 () Bool)

(assert (=> b!1536718 (=> (not res!1053937) (not e!855316))))

(assert (=> b!1536718 (= res!1053937 (validKeyInArray!0 (select (arr!49237 a!2792) j!64)))))

(assert (= (and start!131026 res!1053935) b!1536713))

(assert (= (and b!1536713 res!1053933) b!1536708))

(assert (= (and b!1536708 res!1053938) b!1536718))

(assert (= (and b!1536718 res!1053937) b!1536710))

(assert (= (and b!1536710 res!1053936) b!1536716))

(assert (= (and b!1536716 res!1053941) b!1536717))

(assert (= (and b!1536717 res!1053932) b!1536715))

(assert (= (and b!1536715 res!1053939) b!1536712))

(assert (= (and b!1536712 res!1053934) b!1536714))

(assert (= (and b!1536714 res!1053940) b!1536709))

(assert (= (and b!1536709 res!1053942) b!1536711))

(declare-fun m!1419243 () Bool)

(assert (=> b!1536717 m!1419243))

(declare-fun m!1419245 () Bool)

(assert (=> b!1536710 m!1419245))

(declare-fun m!1419247 () Bool)

(assert (=> b!1536714 m!1419247))

(declare-fun m!1419249 () Bool)

(assert (=> b!1536708 m!1419249))

(assert (=> b!1536708 m!1419249))

(declare-fun m!1419251 () Bool)

(assert (=> b!1536708 m!1419251))

(declare-fun m!1419253 () Bool)

(assert (=> b!1536715 m!1419253))

(assert (=> b!1536715 m!1419253))

(declare-fun m!1419255 () Bool)

(assert (=> b!1536715 m!1419255))

(declare-fun m!1419257 () Bool)

(assert (=> b!1536716 m!1419257))

(declare-fun m!1419259 () Bool)

(assert (=> b!1536711 m!1419259))

(declare-fun m!1419261 () Bool)

(assert (=> b!1536711 m!1419261))

(assert (=> b!1536711 m!1419261))

(declare-fun m!1419263 () Bool)

(assert (=> b!1536711 m!1419263))

(declare-fun m!1419265 () Bool)

(assert (=> b!1536711 m!1419265))

(declare-fun m!1419267 () Bool)

(assert (=> b!1536712 m!1419267))

(assert (=> b!1536712 m!1419253))

(assert (=> b!1536709 m!1419253))

(assert (=> b!1536709 m!1419253))

(declare-fun m!1419269 () Bool)

(assert (=> b!1536709 m!1419269))

(declare-fun m!1419271 () Bool)

(assert (=> start!131026 m!1419271))

(declare-fun m!1419273 () Bool)

(assert (=> start!131026 m!1419273))

(assert (=> b!1536718 m!1419253))

(assert (=> b!1536718 m!1419253))

(declare-fun m!1419275 () Bool)

(assert (=> b!1536718 m!1419275))

(push 1)

