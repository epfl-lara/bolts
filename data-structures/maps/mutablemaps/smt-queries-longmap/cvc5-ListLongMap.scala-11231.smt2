; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131050 () Bool)

(assert start!131050)

(declare-fun b!1537104 () Bool)

(declare-fun res!1054335 () Bool)

(declare-fun e!855499 () Bool)

(assert (=> b!1537104 (=> (not res!1054335) (not e!855499))))

(declare-datatypes ((array!102075 0))(
  ( (array!102076 (arr!49249 (Array (_ BitVec 32) (_ BitVec 64))) (size!49800 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102075)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102075 (_ BitVec 32)) Bool)

(assert (=> b!1537104 (= res!1054335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537105 () Bool)

(declare-fun res!1054333 () Bool)

(assert (=> b!1537105 (=> (not res!1054333) (not e!855499))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537105 (= res!1054333 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49800 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49800 a!2792)) (= (select (arr!49249 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537106 () Bool)

(declare-fun res!1054337 () Bool)

(assert (=> b!1537106 (=> (not res!1054337) (not e!855499))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537106 (= res!1054337 (and (= (size!49800 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49800 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49800 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537107 () Bool)

(declare-fun res!1054336 () Bool)

(assert (=> b!1537107 (=> (not res!1054336) (not e!855499))))

(declare-datatypes ((List!35903 0))(
  ( (Nil!35900) (Cons!35899 (h!37345 (_ BitVec 64)) (t!50604 List!35903)) )
))
(declare-fun arrayNoDuplicates!0 (array!102075 (_ BitVec 32) List!35903) Bool)

(assert (=> b!1537107 (= res!1054336 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35900))))

(declare-fun b!1537108 () Bool)

(declare-fun e!855498 () Bool)

(declare-fun e!855496 () Bool)

(assert (=> b!1537108 (= e!855498 e!855496)))

(declare-fun res!1054334 () Bool)

(assert (=> b!1537108 (=> (not res!1054334) (not e!855496))))

(declare-datatypes ((SeekEntryResult!13404 0))(
  ( (MissingZero!13404 (index!56010 (_ BitVec 32))) (Found!13404 (index!56011 (_ BitVec 32))) (Intermediate!13404 (undefined!14216 Bool) (index!56012 (_ BitVec 32)) (x!137745 (_ BitVec 32))) (Undefined!13404) (MissingVacant!13404 (index!56013 (_ BitVec 32))) )
))
(declare-fun lt!664564 () SeekEntryResult!13404)

(declare-fun lt!664562 () SeekEntryResult!13404)

(assert (=> b!1537108 (= res!1054334 (= lt!664564 lt!664562))))

(declare-fun lt!664561 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102075 (_ BitVec 32)) SeekEntryResult!13404)

(assert (=> b!1537108 (= lt!664564 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664561 vacantIndex!5 (select (arr!49249 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054338 () Bool)

(assert (=> start!131050 (=> (not res!1054338) (not e!855499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131050 (= res!1054338 (validMask!0 mask!2480))))

(assert (=> start!131050 e!855499))

(assert (=> start!131050 true))

(declare-fun array_inv!38194 (array!102075) Bool)

(assert (=> start!131050 (array_inv!38194 a!2792)))

(declare-fun b!1537109 () Bool)

(declare-fun e!855500 () Bool)

(assert (=> b!1537109 (= e!855500 e!855498)))

(declare-fun res!1054329 () Bool)

(assert (=> b!1537109 (=> (not res!1054329) (not e!855498))))

(assert (=> b!1537109 (= res!1054329 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664561 #b00000000000000000000000000000000) (bvslt lt!664561 (size!49800 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537109 (= lt!664561 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537110 () Bool)

(declare-fun res!1054330 () Bool)

(assert (=> b!1537110 (=> (not res!1054330) (not e!855499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537110 (= res!1054330 (validKeyInArray!0 (select (arr!49249 a!2792) i!951)))))

(declare-fun b!1537111 () Bool)

(declare-fun res!1054328 () Bool)

(assert (=> b!1537111 (=> (not res!1054328) (not e!855500))))

(assert (=> b!1537111 (= res!1054328 (not (= (select (arr!49249 a!2792) index!463) (select (arr!49249 a!2792) j!64))))))

(declare-fun b!1537112 () Bool)

(assert (=> b!1537112 (= e!855499 e!855500)))

(declare-fun res!1054331 () Bool)

(assert (=> b!1537112 (=> (not res!1054331) (not e!855500))))

(assert (=> b!1537112 (= res!1054331 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49249 a!2792) j!64) a!2792 mask!2480) lt!664562))))

(assert (=> b!1537112 (= lt!664562 (Found!13404 j!64))))

(declare-fun b!1537113 () Bool)

(declare-fun res!1054332 () Bool)

(assert (=> b!1537113 (=> (not res!1054332) (not e!855499))))

(assert (=> b!1537113 (= res!1054332 (validKeyInArray!0 (select (arr!49249 a!2792) j!64)))))

(declare-fun b!1537114 () Bool)

(assert (=> b!1537114 (= e!855496 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(assert (=> b!1537114 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664561 vacantIndex!5 (select (store (arr!49249 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102076 (store (arr!49249 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49800 a!2792)) mask!2480) lt!664564)))

(declare-datatypes ((Unit!51332 0))(
  ( (Unit!51333) )
))
(declare-fun lt!664563 () Unit!51332)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51332)

(assert (=> b!1537114 (= lt!664563 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664561 vacantIndex!5 mask!2480))))

(assert (= (and start!131050 res!1054338) b!1537106))

(assert (= (and b!1537106 res!1054337) b!1537110))

(assert (= (and b!1537110 res!1054330) b!1537113))

(assert (= (and b!1537113 res!1054332) b!1537104))

(assert (= (and b!1537104 res!1054335) b!1537107))

(assert (= (and b!1537107 res!1054336) b!1537105))

(assert (= (and b!1537105 res!1054333) b!1537112))

(assert (= (and b!1537112 res!1054331) b!1537111))

(assert (= (and b!1537111 res!1054328) b!1537109))

(assert (= (and b!1537109 res!1054329) b!1537108))

(assert (= (and b!1537108 res!1054334) b!1537114))

(declare-fun m!1419651 () Bool)

(assert (=> b!1537110 m!1419651))

(assert (=> b!1537110 m!1419651))

(declare-fun m!1419653 () Bool)

(assert (=> b!1537110 m!1419653))

(declare-fun m!1419655 () Bool)

(assert (=> b!1537113 m!1419655))

(assert (=> b!1537113 m!1419655))

(declare-fun m!1419657 () Bool)

(assert (=> b!1537113 m!1419657))

(declare-fun m!1419659 () Bool)

(assert (=> b!1537114 m!1419659))

(declare-fun m!1419661 () Bool)

(assert (=> b!1537114 m!1419661))

(assert (=> b!1537114 m!1419661))

(declare-fun m!1419663 () Bool)

(assert (=> b!1537114 m!1419663))

(declare-fun m!1419665 () Bool)

(assert (=> b!1537114 m!1419665))

(assert (=> b!1537108 m!1419655))

(assert (=> b!1537108 m!1419655))

(declare-fun m!1419667 () Bool)

(assert (=> b!1537108 m!1419667))

(declare-fun m!1419669 () Bool)

(assert (=> b!1537105 m!1419669))

(declare-fun m!1419671 () Bool)

(assert (=> b!1537109 m!1419671))

(declare-fun m!1419673 () Bool)

(assert (=> b!1537104 m!1419673))

(assert (=> b!1537112 m!1419655))

(assert (=> b!1537112 m!1419655))

(declare-fun m!1419675 () Bool)

(assert (=> b!1537112 m!1419675))

(declare-fun m!1419677 () Bool)

(assert (=> b!1537111 m!1419677))

(assert (=> b!1537111 m!1419655))

(declare-fun m!1419679 () Bool)

(assert (=> start!131050 m!1419679))

(declare-fun m!1419681 () Bool)

(assert (=> start!131050 m!1419681))

(declare-fun m!1419683 () Bool)

(assert (=> b!1537107 m!1419683))

(push 1)

(assert (not b!1537108))

(assert (not b!1537113))

(assert (not b!1537112))

(assert (not b!1537107))

(assert (not b!1537109))

(assert (not b!1537114))

(assert (not start!131050))

(assert (not b!1537110))

(assert (not b!1537104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

