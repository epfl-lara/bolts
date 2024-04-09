; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131060 () Bool)

(assert start!131060)

(declare-fun b!1537269 () Bool)

(declare-fun e!855571 () Bool)

(declare-fun e!855573 () Bool)

(assert (=> b!1537269 (= e!855571 e!855573)))

(declare-fun res!1054494 () Bool)

(assert (=> b!1537269 (=> (not res!1054494) (not e!855573))))

(declare-datatypes ((SeekEntryResult!13409 0))(
  ( (MissingZero!13409 (index!56030 (_ BitVec 32))) (Found!13409 (index!56031 (_ BitVec 32))) (Intermediate!13409 (undefined!14221 Bool) (index!56032 (_ BitVec 32)) (x!137758 (_ BitVec 32))) (Undefined!13409) (MissingVacant!13409 (index!56033 (_ BitVec 32))) )
))
(declare-fun lt!664624 () SeekEntryResult!13409)

(declare-fun lt!664621 () SeekEntryResult!13409)

(assert (=> b!1537269 (= res!1054494 (= lt!664624 lt!664621))))

(declare-fun lt!664622 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102085 0))(
  ( (array!102086 (arr!49254 (Array (_ BitVec 32) (_ BitVec 64))) (size!49805 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102085)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102085 (_ BitVec 32)) SeekEntryResult!13409)

(assert (=> b!1537269 (= lt!664624 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664622 vacantIndex!5 (select (arr!49254 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537270 () Bool)

(declare-fun res!1054497 () Bool)

(declare-fun e!855575 () Bool)

(assert (=> b!1537270 (=> (not res!1054497) (not e!855575))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537270 (= res!1054497 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49805 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49805 a!2792)) (= (select (arr!49254 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537271 () Bool)

(declare-fun res!1054500 () Bool)

(declare-fun e!855574 () Bool)

(assert (=> b!1537271 (=> (not res!1054500) (not e!855574))))

(assert (=> b!1537271 (= res!1054500 (not (= (select (arr!49254 a!2792) index!463) (select (arr!49254 a!2792) j!64))))))

(declare-fun b!1537272 () Bool)

(declare-fun res!1054496 () Bool)

(assert (=> b!1537272 (=> (not res!1054496) (not e!855575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537272 (= res!1054496 (validKeyInArray!0 (select (arr!49254 a!2792) j!64)))))

(declare-fun b!1537274 () Bool)

(assert (=> b!1537274 (= e!855575 e!855574)))

(declare-fun res!1054495 () Bool)

(assert (=> b!1537274 (=> (not res!1054495) (not e!855574))))

(assert (=> b!1537274 (= res!1054495 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49254 a!2792) j!64) a!2792 mask!2480) lt!664621))))

(assert (=> b!1537274 (= lt!664621 (Found!13409 j!64))))

(declare-fun b!1537275 () Bool)

(declare-fun res!1054499 () Bool)

(assert (=> b!1537275 (=> (not res!1054499) (not e!855575))))

(declare-datatypes ((List!35908 0))(
  ( (Nil!35905) (Cons!35904 (h!37350 (_ BitVec 64)) (t!50609 List!35908)) )
))
(declare-fun arrayNoDuplicates!0 (array!102085 (_ BitVec 32) List!35908) Bool)

(assert (=> b!1537275 (= res!1054499 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35905))))

(declare-fun b!1537276 () Bool)

(declare-fun res!1054503 () Bool)

(assert (=> b!1537276 (=> (not res!1054503) (not e!855575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102085 (_ BitVec 32)) Bool)

(assert (=> b!1537276 (= res!1054503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537277 () Bool)

(assert (=> b!1537277 (= e!855574 e!855571)))

(declare-fun res!1054498 () Bool)

(assert (=> b!1537277 (=> (not res!1054498) (not e!855571))))

(assert (=> b!1537277 (= res!1054498 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664622 #b00000000000000000000000000000000) (bvslt lt!664622 (size!49805 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537277 (= lt!664622 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537278 () Bool)

(declare-fun res!1054502 () Bool)

(assert (=> b!1537278 (=> (not res!1054502) (not e!855575))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537278 (= res!1054502 (validKeyInArray!0 (select (arr!49254 a!2792) i!951)))))

(declare-fun b!1537279 () Bool)

(assert (=> b!1537279 (= e!855573 (not true))))

(assert (=> b!1537279 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664622 vacantIndex!5 (select (store (arr!49254 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102086 (store (arr!49254 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49805 a!2792)) mask!2480) lt!664624)))

(declare-datatypes ((Unit!51342 0))(
  ( (Unit!51343) )
))
(declare-fun lt!664623 () Unit!51342)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51342)

(assert (=> b!1537279 (= lt!664623 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664622 vacantIndex!5 mask!2480))))

(declare-fun res!1054501 () Bool)

(assert (=> start!131060 (=> (not res!1054501) (not e!855575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131060 (= res!1054501 (validMask!0 mask!2480))))

(assert (=> start!131060 e!855575))

(assert (=> start!131060 true))

(declare-fun array_inv!38199 (array!102085) Bool)

(assert (=> start!131060 (array_inv!38199 a!2792)))

(declare-fun b!1537273 () Bool)

(declare-fun res!1054493 () Bool)

(assert (=> b!1537273 (=> (not res!1054493) (not e!855575))))

(assert (=> b!1537273 (= res!1054493 (and (= (size!49805 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49805 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49805 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131060 res!1054501) b!1537273))

(assert (= (and b!1537273 res!1054493) b!1537278))

(assert (= (and b!1537278 res!1054502) b!1537272))

(assert (= (and b!1537272 res!1054496) b!1537276))

(assert (= (and b!1537276 res!1054503) b!1537275))

(assert (= (and b!1537275 res!1054499) b!1537270))

(assert (= (and b!1537270 res!1054497) b!1537274))

(assert (= (and b!1537274 res!1054495) b!1537271))

(assert (= (and b!1537271 res!1054500) b!1537277))

(assert (= (and b!1537277 res!1054498) b!1537269))

(assert (= (and b!1537269 res!1054494) b!1537279))

(declare-fun m!1419821 () Bool)

(assert (=> b!1537270 m!1419821))

(declare-fun m!1419823 () Bool)

(assert (=> b!1537269 m!1419823))

(assert (=> b!1537269 m!1419823))

(declare-fun m!1419825 () Bool)

(assert (=> b!1537269 m!1419825))

(declare-fun m!1419827 () Bool)

(assert (=> b!1537275 m!1419827))

(assert (=> b!1537274 m!1419823))

(assert (=> b!1537274 m!1419823))

(declare-fun m!1419829 () Bool)

(assert (=> b!1537274 m!1419829))

(assert (=> b!1537272 m!1419823))

(assert (=> b!1537272 m!1419823))

(declare-fun m!1419831 () Bool)

(assert (=> b!1537272 m!1419831))

(declare-fun m!1419833 () Bool)

(assert (=> b!1537277 m!1419833))

(declare-fun m!1419835 () Bool)

(assert (=> b!1537278 m!1419835))

(assert (=> b!1537278 m!1419835))

(declare-fun m!1419837 () Bool)

(assert (=> b!1537278 m!1419837))

(declare-fun m!1419839 () Bool)

(assert (=> b!1537271 m!1419839))

(assert (=> b!1537271 m!1419823))

(declare-fun m!1419841 () Bool)

(assert (=> start!131060 m!1419841))

(declare-fun m!1419843 () Bool)

(assert (=> start!131060 m!1419843))

(declare-fun m!1419845 () Bool)

(assert (=> b!1537279 m!1419845))

(declare-fun m!1419847 () Bool)

(assert (=> b!1537279 m!1419847))

(assert (=> b!1537279 m!1419847))

(declare-fun m!1419849 () Bool)

(assert (=> b!1537279 m!1419849))

(declare-fun m!1419851 () Bool)

(assert (=> b!1537279 m!1419851))

(declare-fun m!1419853 () Bool)

(assert (=> b!1537276 m!1419853))

(push 1)

