; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131096 () Bool)

(assert start!131096)

(declare-fun b!1537651 () Bool)

(declare-fun res!1054881 () Bool)

(declare-fun e!855710 () Bool)

(assert (=> b!1537651 (=> (not res!1054881) (not e!855710))))

(declare-datatypes ((array!102121 0))(
  ( (array!102122 (arr!49272 (Array (_ BitVec 32) (_ BitVec 64))) (size!49823 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102121)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537651 (= res!1054881 (and (= (size!49823 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49823 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49823 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537652 () Bool)

(declare-fun res!1054880 () Bool)

(assert (=> b!1537652 (=> (not res!1054880) (not e!855710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537652 (= res!1054880 (validKeyInArray!0 (select (arr!49272 a!2792) i!951)))))

(declare-fun b!1537653 () Bool)

(declare-fun res!1054878 () Bool)

(assert (=> b!1537653 (=> (not res!1054878) (not e!855710))))

(declare-datatypes ((List!35926 0))(
  ( (Nil!35923) (Cons!35922 (h!37368 (_ BitVec 64)) (t!50627 List!35926)) )
))
(declare-fun arrayNoDuplicates!0 (array!102121 (_ BitVec 32) List!35926) Bool)

(assert (=> b!1537653 (= res!1054878 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35923))))

(declare-fun b!1537654 () Bool)

(declare-fun res!1054875 () Bool)

(assert (=> b!1537654 (=> (not res!1054875) (not e!855710))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537654 (= res!1054875 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49823 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49823 a!2792)) (= (select (arr!49272 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537655 () Bool)

(assert (=> b!1537655 (= e!855710 false)))

(declare-datatypes ((SeekEntryResult!13421 0))(
  ( (MissingZero!13421 (index!56078 (_ BitVec 32))) (Found!13421 (index!56079 (_ BitVec 32))) (Intermediate!13421 (undefined!14233 Bool) (index!56080 (_ BitVec 32)) (x!137818 (_ BitVec 32))) (Undefined!13421) (MissingVacant!13421 (index!56081 (_ BitVec 32))) )
))
(declare-fun lt!664705 () SeekEntryResult!13421)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102121 (_ BitVec 32)) SeekEntryResult!13421)

(assert (=> b!1537655 (= lt!664705 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49272 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054879 () Bool)

(assert (=> start!131096 (=> (not res!1054879) (not e!855710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131096 (= res!1054879 (validMask!0 mask!2480))))

(assert (=> start!131096 e!855710))

(assert (=> start!131096 true))

(declare-fun array_inv!38217 (array!102121) Bool)

(assert (=> start!131096 (array_inv!38217 a!2792)))

(declare-fun b!1537656 () Bool)

(declare-fun res!1054877 () Bool)

(assert (=> b!1537656 (=> (not res!1054877) (not e!855710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102121 (_ BitVec 32)) Bool)

(assert (=> b!1537656 (= res!1054877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537657 () Bool)

(declare-fun res!1054876 () Bool)

(assert (=> b!1537657 (=> (not res!1054876) (not e!855710))))

(assert (=> b!1537657 (= res!1054876 (validKeyInArray!0 (select (arr!49272 a!2792) j!64)))))

(assert (= (and start!131096 res!1054879) b!1537651))

(assert (= (and b!1537651 res!1054881) b!1537652))

(assert (= (and b!1537652 res!1054880) b!1537657))

(assert (= (and b!1537657 res!1054876) b!1537656))

(assert (= (and b!1537656 res!1054877) b!1537653))

(assert (= (and b!1537653 res!1054878) b!1537654))

(assert (= (and b!1537654 res!1054875) b!1537655))

(declare-fun m!1420213 () Bool)

(assert (=> b!1537654 m!1420213))

(declare-fun m!1420215 () Bool)

(assert (=> b!1537657 m!1420215))

(assert (=> b!1537657 m!1420215))

(declare-fun m!1420217 () Bool)

(assert (=> b!1537657 m!1420217))

(declare-fun m!1420219 () Bool)

(assert (=> b!1537652 m!1420219))

(assert (=> b!1537652 m!1420219))

(declare-fun m!1420221 () Bool)

(assert (=> b!1537652 m!1420221))

(declare-fun m!1420223 () Bool)

(assert (=> start!131096 m!1420223))

(declare-fun m!1420225 () Bool)

(assert (=> start!131096 m!1420225))

(declare-fun m!1420227 () Bool)

(assert (=> b!1537653 m!1420227))

(declare-fun m!1420229 () Bool)

(assert (=> b!1537656 m!1420229))

(assert (=> b!1537655 m!1420215))

(assert (=> b!1537655 m!1420215))

(declare-fun m!1420231 () Bool)

(assert (=> b!1537655 m!1420231))

(push 1)

(assert (not b!1537653))

(assert (not b!1537655))

(assert (not b!1537656))

(assert (not start!131096))

(assert (not b!1537652))

(assert (not b!1537657))

(check-sat)

