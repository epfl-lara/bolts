; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131046 () Bool)

(assert start!131046)

(declare-fun res!1054269 () Bool)

(declare-fun e!855467 () Bool)

(assert (=> start!131046 (=> (not res!1054269) (not e!855467))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131046 (= res!1054269 (validMask!0 mask!2480))))

(assert (=> start!131046 e!855467))

(assert (=> start!131046 true))

(declare-datatypes ((array!102071 0))(
  ( (array!102072 (arr!49247 (Array (_ BitVec 32) (_ BitVec 64))) (size!49798 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102071)

(declare-fun array_inv!38192 (array!102071) Bool)

(assert (=> start!131046 (array_inv!38192 a!2792)))

(declare-fun b!1537038 () Bool)

(declare-fun e!855468 () Bool)

(declare-fun e!855466 () Bool)

(assert (=> b!1537038 (= e!855468 e!855466)))

(declare-fun res!1054264 () Bool)

(assert (=> b!1537038 (=> (not res!1054264) (not e!855466))))

(declare-datatypes ((SeekEntryResult!13402 0))(
  ( (MissingZero!13402 (index!56002 (_ BitVec 32))) (Found!13402 (index!56003 (_ BitVec 32))) (Intermediate!13402 (undefined!14214 Bool) (index!56004 (_ BitVec 32)) (x!137735 (_ BitVec 32))) (Undefined!13402) (MissingVacant!13402 (index!56005 (_ BitVec 32))) )
))
(declare-fun lt!664537 () SeekEntryResult!13402)

(declare-fun lt!664540 () SeekEntryResult!13402)

(assert (=> b!1537038 (= res!1054264 (= lt!664537 lt!664540))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun lt!664538 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102071 (_ BitVec 32)) SeekEntryResult!13402)

(assert (=> b!1537038 (= lt!664537 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664538 vacantIndex!5 (select (arr!49247 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537039 () Bool)

(declare-fun res!1054270 () Bool)

(assert (=> b!1537039 (=> (not res!1054270) (not e!855467))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537039 (= res!1054270 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49798 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49798 a!2792)) (= (select (arr!49247 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537040 () Bool)

(declare-fun res!1054272 () Bool)

(declare-fun e!855470 () Bool)

(assert (=> b!1537040 (=> (not res!1054272) (not e!855470))))

(assert (=> b!1537040 (= res!1054272 (not (= (select (arr!49247 a!2792) index!463) (select (arr!49247 a!2792) j!64))))))

(declare-fun b!1537041 () Bool)

(declare-fun res!1054262 () Bool)

(assert (=> b!1537041 (=> (not res!1054262) (not e!855467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537041 (= res!1054262 (validKeyInArray!0 (select (arr!49247 a!2792) j!64)))))

(declare-fun b!1537042 () Bool)

(declare-fun res!1054266 () Bool)

(assert (=> b!1537042 (=> (not res!1054266) (not e!855467))))

(declare-datatypes ((List!35901 0))(
  ( (Nil!35898) (Cons!35897 (h!37343 (_ BitVec 64)) (t!50602 List!35901)) )
))
(declare-fun arrayNoDuplicates!0 (array!102071 (_ BitVec 32) List!35901) Bool)

(assert (=> b!1537042 (= res!1054266 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35898))))

(declare-fun b!1537043 () Bool)

(declare-fun res!1054265 () Bool)

(assert (=> b!1537043 (=> (not res!1054265) (not e!855467))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537043 (= res!1054265 (and (= (size!49798 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49798 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49798 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537044 () Bool)

(declare-fun res!1054263 () Bool)

(assert (=> b!1537044 (=> (not res!1054263) (not e!855467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102071 (_ BitVec 32)) Bool)

(assert (=> b!1537044 (= res!1054263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537045 () Bool)

(declare-fun res!1054268 () Bool)

(assert (=> b!1537045 (=> (not res!1054268) (not e!855467))))

(assert (=> b!1537045 (= res!1054268 (validKeyInArray!0 (select (arr!49247 a!2792) i!951)))))

(declare-fun b!1537046 () Bool)

(assert (=> b!1537046 (= e!855467 e!855470)))

(declare-fun res!1054267 () Bool)

(assert (=> b!1537046 (=> (not res!1054267) (not e!855470))))

(assert (=> b!1537046 (= res!1054267 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49247 a!2792) j!64) a!2792 mask!2480) lt!664540))))

(assert (=> b!1537046 (= lt!664540 (Found!13402 j!64))))

(declare-fun b!1537047 () Bool)

(assert (=> b!1537047 (= e!855466 (not true))))

(assert (=> b!1537047 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664538 vacantIndex!5 (select (store (arr!49247 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102072 (store (arr!49247 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49798 a!2792)) mask!2480) lt!664537)))

(declare-datatypes ((Unit!51328 0))(
  ( (Unit!51329) )
))
(declare-fun lt!664539 () Unit!51328)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51328)

(assert (=> b!1537047 (= lt!664539 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664538 vacantIndex!5 mask!2480))))

(declare-fun b!1537048 () Bool)

(assert (=> b!1537048 (= e!855470 e!855468)))

(declare-fun res!1054271 () Bool)

(assert (=> b!1537048 (=> (not res!1054271) (not e!855468))))

(assert (=> b!1537048 (= res!1054271 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664538 #b00000000000000000000000000000000) (bvslt lt!664538 (size!49798 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537048 (= lt!664538 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131046 res!1054269) b!1537043))

(assert (= (and b!1537043 res!1054265) b!1537045))

(assert (= (and b!1537045 res!1054268) b!1537041))

(assert (= (and b!1537041 res!1054262) b!1537044))

(assert (= (and b!1537044 res!1054263) b!1537042))

(assert (= (and b!1537042 res!1054266) b!1537039))

(assert (= (and b!1537039 res!1054270) b!1537046))

(assert (= (and b!1537046 res!1054267) b!1537040))

(assert (= (and b!1537040 res!1054272) b!1537048))

(assert (= (and b!1537048 res!1054271) b!1537038))

(assert (= (and b!1537038 res!1054264) b!1537047))

(declare-fun m!1419583 () Bool)

(assert (=> b!1537048 m!1419583))

(declare-fun m!1419585 () Bool)

(assert (=> b!1537039 m!1419585))

(declare-fun m!1419587 () Bool)

(assert (=> b!1537045 m!1419587))

(assert (=> b!1537045 m!1419587))

(declare-fun m!1419589 () Bool)

(assert (=> b!1537045 m!1419589))

(declare-fun m!1419591 () Bool)

(assert (=> b!1537044 m!1419591))

(declare-fun m!1419593 () Bool)

(assert (=> b!1537040 m!1419593))

(declare-fun m!1419595 () Bool)

(assert (=> b!1537040 m!1419595))

(assert (=> b!1537038 m!1419595))

(assert (=> b!1537038 m!1419595))

(declare-fun m!1419597 () Bool)

(assert (=> b!1537038 m!1419597))

(declare-fun m!1419599 () Bool)

(assert (=> b!1537042 m!1419599))

(assert (=> b!1537046 m!1419595))

(assert (=> b!1537046 m!1419595))

(declare-fun m!1419601 () Bool)

(assert (=> b!1537046 m!1419601))

(declare-fun m!1419603 () Bool)

(assert (=> start!131046 m!1419603))

(declare-fun m!1419605 () Bool)

(assert (=> start!131046 m!1419605))

(assert (=> b!1537041 m!1419595))

(assert (=> b!1537041 m!1419595))

(declare-fun m!1419607 () Bool)

(assert (=> b!1537041 m!1419607))

(declare-fun m!1419609 () Bool)

(assert (=> b!1537047 m!1419609))

(declare-fun m!1419611 () Bool)

(assert (=> b!1537047 m!1419611))

(assert (=> b!1537047 m!1419611))

(declare-fun m!1419613 () Bool)

(assert (=> b!1537047 m!1419613))

(declare-fun m!1419615 () Bool)

(assert (=> b!1537047 m!1419615))

(check-sat (not b!1537038) (not b!1537041) (not b!1537047) (not b!1537045) (not start!131046) (not b!1537046) (not b!1537042) (not b!1537044) (not b!1537048))
(check-sat)
