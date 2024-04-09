; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131048 () Bool)

(assert start!131048)

(declare-fun b!1537071 () Bool)

(declare-fun res!1054301 () Bool)

(declare-fun e!855483 () Bool)

(assert (=> b!1537071 (=> (not res!1054301) (not e!855483))))

(declare-datatypes ((array!102073 0))(
  ( (array!102074 (arr!49248 (Array (_ BitVec 32) (_ BitVec 64))) (size!49799 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102073)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1537071 (= res!1054301 (and (= (size!49799 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49799 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49799 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537072 () Bool)

(declare-fun res!1054298 () Bool)

(assert (=> b!1537072 (=> (not res!1054298) (not e!855483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537072 (= res!1054298 (validKeyInArray!0 (select (arr!49248 a!2792) j!64)))))

(declare-fun b!1537073 () Bool)

(declare-fun e!855484 () Bool)

(assert (=> b!1537073 (= e!855483 e!855484)))

(declare-fun res!1054305 () Bool)

(assert (=> b!1537073 (=> (not res!1054305) (not e!855484))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13403 0))(
  ( (MissingZero!13403 (index!56006 (_ BitVec 32))) (Found!13403 (index!56007 (_ BitVec 32))) (Intermediate!13403 (undefined!14215 Bool) (index!56008 (_ BitVec 32)) (x!137736 (_ BitVec 32))) (Undefined!13403) (MissingVacant!13403 (index!56009 (_ BitVec 32))) )
))
(declare-fun lt!664550 () SeekEntryResult!13403)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102073 (_ BitVec 32)) SeekEntryResult!13403)

(assert (=> b!1537073 (= res!1054305 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49248 a!2792) j!64) a!2792 mask!2480) lt!664550))))

(assert (=> b!1537073 (= lt!664550 (Found!13403 j!64))))

(declare-fun b!1537074 () Bool)

(declare-fun e!855482 () Bool)

(assert (=> b!1537074 (= e!855484 e!855482)))

(declare-fun res!1054297 () Bool)

(assert (=> b!1537074 (=> (not res!1054297) (not e!855482))))

(declare-fun lt!664551 () (_ BitVec 32))

(assert (=> b!1537074 (= res!1054297 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664551 #b00000000000000000000000000000000) (bvslt lt!664551 (size!49799 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537074 (= lt!664551 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537075 () Bool)

(declare-fun e!855485 () Bool)

(assert (=> b!1537075 (= e!855482 e!855485)))

(declare-fun res!1054299 () Bool)

(assert (=> b!1537075 (=> (not res!1054299) (not e!855485))))

(declare-fun lt!664552 () SeekEntryResult!13403)

(assert (=> b!1537075 (= res!1054299 (= lt!664552 lt!664550))))

(assert (=> b!1537075 (= lt!664552 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664551 vacantIndex!5 (select (arr!49248 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537076 () Bool)

(assert (=> b!1537076 (= e!855485 (not true))))

(assert (=> b!1537076 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664551 vacantIndex!5 (select (store (arr!49248 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102074 (store (arr!49248 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49799 a!2792)) mask!2480) lt!664552)))

(declare-datatypes ((Unit!51330 0))(
  ( (Unit!51331) )
))
(declare-fun lt!664549 () Unit!51330)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51330)

(assert (=> b!1537076 (= lt!664549 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664551 vacantIndex!5 mask!2480))))

(declare-fun b!1537077 () Bool)

(declare-fun res!1054302 () Bool)

(assert (=> b!1537077 (=> (not res!1054302) (not e!855483))))

(declare-datatypes ((List!35902 0))(
  ( (Nil!35899) (Cons!35898 (h!37344 (_ BitVec 64)) (t!50603 List!35902)) )
))
(declare-fun arrayNoDuplicates!0 (array!102073 (_ BitVec 32) List!35902) Bool)

(assert (=> b!1537077 (= res!1054302 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35899))))

(declare-fun res!1054304 () Bool)

(assert (=> start!131048 (=> (not res!1054304) (not e!855483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131048 (= res!1054304 (validMask!0 mask!2480))))

(assert (=> start!131048 e!855483))

(assert (=> start!131048 true))

(declare-fun array_inv!38193 (array!102073) Bool)

(assert (=> start!131048 (array_inv!38193 a!2792)))

(declare-fun b!1537078 () Bool)

(declare-fun res!1054300 () Bool)

(assert (=> b!1537078 (=> (not res!1054300) (not e!855483))))

(assert (=> b!1537078 (= res!1054300 (validKeyInArray!0 (select (arr!49248 a!2792) i!951)))))

(declare-fun b!1537079 () Bool)

(declare-fun res!1054296 () Bool)

(assert (=> b!1537079 (=> (not res!1054296) (not e!855483))))

(assert (=> b!1537079 (= res!1054296 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49799 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49799 a!2792)) (= (select (arr!49248 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537080 () Bool)

(declare-fun res!1054303 () Bool)

(assert (=> b!1537080 (=> (not res!1054303) (not e!855483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102073 (_ BitVec 32)) Bool)

(assert (=> b!1537080 (= res!1054303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537081 () Bool)

(declare-fun res!1054295 () Bool)

(assert (=> b!1537081 (=> (not res!1054295) (not e!855484))))

(assert (=> b!1537081 (= res!1054295 (not (= (select (arr!49248 a!2792) index!463) (select (arr!49248 a!2792) j!64))))))

(assert (= (and start!131048 res!1054304) b!1537071))

(assert (= (and b!1537071 res!1054301) b!1537078))

(assert (= (and b!1537078 res!1054300) b!1537072))

(assert (= (and b!1537072 res!1054298) b!1537080))

(assert (= (and b!1537080 res!1054303) b!1537077))

(assert (= (and b!1537077 res!1054302) b!1537079))

(assert (= (and b!1537079 res!1054296) b!1537073))

(assert (= (and b!1537073 res!1054305) b!1537081))

(assert (= (and b!1537081 res!1054295) b!1537074))

(assert (= (and b!1537074 res!1054297) b!1537075))

(assert (= (and b!1537075 res!1054299) b!1537076))

(declare-fun m!1419617 () Bool)

(assert (=> b!1537076 m!1419617))

(declare-fun m!1419619 () Bool)

(assert (=> b!1537076 m!1419619))

(assert (=> b!1537076 m!1419619))

(declare-fun m!1419621 () Bool)

(assert (=> b!1537076 m!1419621))

(declare-fun m!1419623 () Bool)

(assert (=> b!1537076 m!1419623))

(declare-fun m!1419625 () Bool)

(assert (=> b!1537074 m!1419625))

(declare-fun m!1419627 () Bool)

(assert (=> b!1537077 m!1419627))

(declare-fun m!1419629 () Bool)

(assert (=> b!1537080 m!1419629))

(declare-fun m!1419631 () Bool)

(assert (=> start!131048 m!1419631))

(declare-fun m!1419633 () Bool)

(assert (=> start!131048 m!1419633))

(declare-fun m!1419635 () Bool)

(assert (=> b!1537078 m!1419635))

(assert (=> b!1537078 m!1419635))

(declare-fun m!1419637 () Bool)

(assert (=> b!1537078 m!1419637))

(declare-fun m!1419639 () Bool)

(assert (=> b!1537072 m!1419639))

(assert (=> b!1537072 m!1419639))

(declare-fun m!1419641 () Bool)

(assert (=> b!1537072 m!1419641))

(assert (=> b!1537075 m!1419639))

(assert (=> b!1537075 m!1419639))

(declare-fun m!1419643 () Bool)

(assert (=> b!1537075 m!1419643))

(declare-fun m!1419645 () Bool)

(assert (=> b!1537079 m!1419645))

(declare-fun m!1419647 () Bool)

(assert (=> b!1537081 m!1419647))

(assert (=> b!1537081 m!1419639))

(assert (=> b!1537073 m!1419639))

(assert (=> b!1537073 m!1419639))

(declare-fun m!1419649 () Bool)

(assert (=> b!1537073 m!1419649))

(push 1)

(assert (not b!1537080))

(assert (not b!1537074))

