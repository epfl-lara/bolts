; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131030 () Bool)

(assert start!131030)

(declare-fun b!1536774 () Bool)

(declare-fun res!1054004 () Bool)

(declare-fun e!855348 () Bool)

(assert (=> b!1536774 (=> (not res!1054004) (not e!855348))))

(declare-datatypes ((array!102055 0))(
  ( (array!102056 (arr!49239 (Array (_ BitVec 32) (_ BitVec 64))) (size!49790 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102055)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102055 (_ BitVec 32)) Bool)

(assert (=> b!1536774 (= res!1054004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536775 () Bool)

(declare-fun res!1053999 () Bool)

(assert (=> b!1536775 (=> (not res!1053999) (not e!855348))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536775 (= res!1053999 (validKeyInArray!0 (select (arr!49239 a!2792) i!951)))))

(declare-fun b!1536776 () Bool)

(declare-fun res!1054001 () Bool)

(assert (=> b!1536776 (=> (not res!1054001) (not e!855348))))

(declare-datatypes ((List!35893 0))(
  ( (Nil!35890) (Cons!35889 (h!37335 (_ BitVec 64)) (t!50594 List!35893)) )
))
(declare-fun arrayNoDuplicates!0 (array!102055 (_ BitVec 32) List!35893) Bool)

(assert (=> b!1536776 (= res!1054001 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35890))))

(declare-fun b!1536777 () Bool)

(declare-fun res!1054003 () Bool)

(assert (=> b!1536777 (=> (not res!1054003) (not e!855348))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1536777 (= res!1054003 (and (= (size!49790 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49790 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49790 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536778 () Bool)

(declare-fun e!855347 () Bool)

(declare-fun e!855350 () Bool)

(assert (=> b!1536778 (= e!855347 e!855350)))

(declare-fun res!1054006 () Bool)

(assert (=> b!1536778 (=> (not res!1054006) (not e!855350))))

(declare-fun lt!664442 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1536778 (= res!1054006 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664442 #b00000000000000000000000000000000) (bvslt lt!664442 (size!49790 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536778 (= lt!664442 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536779 () Bool)

(declare-fun res!1054002 () Bool)

(assert (=> b!1536779 (=> (not res!1054002) (not e!855347))))

(assert (=> b!1536779 (= res!1054002 (not (= (select (arr!49239 a!2792) index!463) (select (arr!49239 a!2792) j!64))))))

(declare-fun b!1536780 () Bool)

(assert (=> b!1536780 (= e!855348 e!855347)))

(declare-fun res!1054007 () Bool)

(assert (=> b!1536780 (=> (not res!1054007) (not e!855347))))

(declare-datatypes ((SeekEntryResult!13394 0))(
  ( (MissingZero!13394 (index!55970 (_ BitVec 32))) (Found!13394 (index!55971 (_ BitVec 32))) (Intermediate!13394 (undefined!14206 Bool) (index!55972 (_ BitVec 32)) (x!137703 (_ BitVec 32))) (Undefined!13394) (MissingVacant!13394 (index!55973 (_ BitVec 32))) )
))
(declare-fun lt!664444 () SeekEntryResult!13394)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102055 (_ BitVec 32)) SeekEntryResult!13394)

(assert (=> b!1536780 (= res!1054007 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49239 a!2792) j!64) a!2792 mask!2480) lt!664444))))

(assert (=> b!1536780 (= lt!664444 (Found!13394 j!64))))

(declare-fun b!1536781 () Bool)

(declare-fun e!855349 () Bool)

(assert (=> b!1536781 (= e!855349 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(declare-fun lt!664441 () SeekEntryResult!13394)

(assert (=> b!1536781 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664442 vacantIndex!5 (select (store (arr!49239 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102056 (store (arr!49239 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49790 a!2792)) mask!2480) lt!664441)))

(declare-datatypes ((Unit!51312 0))(
  ( (Unit!51313) )
))
(declare-fun lt!664443 () Unit!51312)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51312)

(assert (=> b!1536781 (= lt!664443 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664442 vacantIndex!5 mask!2480))))

(declare-fun b!1536782 () Bool)

(assert (=> b!1536782 (= e!855350 e!855349)))

(declare-fun res!1053998 () Bool)

(assert (=> b!1536782 (=> (not res!1053998) (not e!855349))))

(assert (=> b!1536782 (= res!1053998 (= lt!664441 lt!664444))))

(assert (=> b!1536782 (= lt!664441 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664442 vacantIndex!5 (select (arr!49239 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536783 () Bool)

(declare-fun res!1054008 () Bool)

(assert (=> b!1536783 (=> (not res!1054008) (not e!855348))))

(assert (=> b!1536783 (= res!1054008 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49790 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49790 a!2792)) (= (select (arr!49239 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536784 () Bool)

(declare-fun res!1054005 () Bool)

(assert (=> b!1536784 (=> (not res!1054005) (not e!855348))))

(assert (=> b!1536784 (= res!1054005 (validKeyInArray!0 (select (arr!49239 a!2792) j!64)))))

(declare-fun res!1054000 () Bool)

(assert (=> start!131030 (=> (not res!1054000) (not e!855348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131030 (= res!1054000 (validMask!0 mask!2480))))

(assert (=> start!131030 e!855348))

(assert (=> start!131030 true))

(declare-fun array_inv!38184 (array!102055) Bool)

(assert (=> start!131030 (array_inv!38184 a!2792)))

(assert (= (and start!131030 res!1054000) b!1536777))

(assert (= (and b!1536777 res!1054003) b!1536775))

(assert (= (and b!1536775 res!1053999) b!1536784))

(assert (= (and b!1536784 res!1054005) b!1536774))

(assert (= (and b!1536774 res!1054004) b!1536776))

(assert (= (and b!1536776 res!1054001) b!1536783))

(assert (= (and b!1536783 res!1054008) b!1536780))

(assert (= (and b!1536780 res!1054007) b!1536779))

(assert (= (and b!1536779 res!1054002) b!1536778))

(assert (= (and b!1536778 res!1054006) b!1536782))

(assert (= (and b!1536782 res!1053998) b!1536781))

(declare-fun m!1419311 () Bool)

(assert (=> b!1536781 m!1419311))

(declare-fun m!1419313 () Bool)

(assert (=> b!1536781 m!1419313))

(assert (=> b!1536781 m!1419313))

(declare-fun m!1419315 () Bool)

(assert (=> b!1536781 m!1419315))

(declare-fun m!1419317 () Bool)

(assert (=> b!1536781 m!1419317))

(declare-fun m!1419319 () Bool)

(assert (=> b!1536776 m!1419319))

(declare-fun m!1419321 () Bool)

(assert (=> b!1536782 m!1419321))

(assert (=> b!1536782 m!1419321))

(declare-fun m!1419323 () Bool)

(assert (=> b!1536782 m!1419323))

(declare-fun m!1419325 () Bool)

(assert (=> b!1536774 m!1419325))

(declare-fun m!1419327 () Bool)

(assert (=> b!1536775 m!1419327))

(assert (=> b!1536775 m!1419327))

(declare-fun m!1419329 () Bool)

(assert (=> b!1536775 m!1419329))

(assert (=> b!1536784 m!1419321))

(assert (=> b!1536784 m!1419321))

(declare-fun m!1419331 () Bool)

(assert (=> b!1536784 m!1419331))

(assert (=> b!1536780 m!1419321))

(assert (=> b!1536780 m!1419321))

(declare-fun m!1419333 () Bool)

(assert (=> b!1536780 m!1419333))

(declare-fun m!1419335 () Bool)

(assert (=> b!1536778 m!1419335))

(declare-fun m!1419337 () Bool)

(assert (=> start!131030 m!1419337))

(declare-fun m!1419339 () Bool)

(assert (=> start!131030 m!1419339))

(declare-fun m!1419341 () Bool)

(assert (=> b!1536783 m!1419341))

(declare-fun m!1419343 () Bool)

(assert (=> b!1536779 m!1419343))

(assert (=> b!1536779 m!1419321))

(push 1)

(assert (not b!1536774))

(assert (not b!1536782))

(assert (not b!1536776))

(assert (not start!131030))

(assert (not b!1536775))

(assert (not b!1536781))

(assert (not b!1536778))

(assert (not b!1536780))

(assert (not b!1536784))

