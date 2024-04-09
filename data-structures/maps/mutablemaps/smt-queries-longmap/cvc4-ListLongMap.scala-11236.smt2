; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131084 () Bool)

(assert start!131084)

(declare-fun res!1054749 () Bool)

(declare-fun e!855673 () Bool)

(assert (=> start!131084 (=> (not res!1054749) (not e!855673))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131084 (= res!1054749 (validMask!0 mask!2480))))

(assert (=> start!131084 e!855673))

(assert (=> start!131084 true))

(declare-datatypes ((array!102109 0))(
  ( (array!102110 (arr!49266 (Array (_ BitVec 32) (_ BitVec 64))) (size!49817 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102109)

(declare-fun array_inv!38211 (array!102109) Bool)

(assert (=> start!131084 (array_inv!38211 a!2792)))

(declare-fun b!1537525 () Bool)

(declare-fun res!1054753 () Bool)

(assert (=> b!1537525 (=> (not res!1054753) (not e!855673))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537525 (= res!1054753 (validKeyInArray!0 (select (arr!49266 a!2792) i!951)))))

(declare-fun b!1537526 () Bool)

(assert (=> b!1537526 (= e!855673 false)))

(declare-datatypes ((SeekEntryResult!13415 0))(
  ( (MissingZero!13415 (index!56054 (_ BitVec 32))) (Found!13415 (index!56055 (_ BitVec 32))) (Intermediate!13415 (undefined!14227 Bool) (index!56056 (_ BitVec 32)) (x!137796 (_ BitVec 32))) (Undefined!13415) (MissingVacant!13415 (index!56057 (_ BitVec 32))) )
))
(declare-fun lt!664687 () SeekEntryResult!13415)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102109 (_ BitVec 32)) SeekEntryResult!13415)

(assert (=> b!1537526 (= lt!664687 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49266 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537527 () Bool)

(declare-fun res!1054750 () Bool)

(assert (=> b!1537527 (=> (not res!1054750) (not e!855673))))

(assert (=> b!1537527 (= res!1054750 (and (= (size!49817 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49817 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49817 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537528 () Bool)

(declare-fun res!1054752 () Bool)

(assert (=> b!1537528 (=> (not res!1054752) (not e!855673))))

(assert (=> b!1537528 (= res!1054752 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49817 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49817 a!2792)) (= (select (arr!49266 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537529 () Bool)

(declare-fun res!1054751 () Bool)

(assert (=> b!1537529 (=> (not res!1054751) (not e!855673))))

(declare-datatypes ((List!35920 0))(
  ( (Nil!35917) (Cons!35916 (h!37362 (_ BitVec 64)) (t!50621 List!35920)) )
))
(declare-fun arrayNoDuplicates!0 (array!102109 (_ BitVec 32) List!35920) Bool)

(assert (=> b!1537529 (= res!1054751 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35917))))

(declare-fun b!1537530 () Bool)

(declare-fun res!1054754 () Bool)

(assert (=> b!1537530 (=> (not res!1054754) (not e!855673))))

(assert (=> b!1537530 (= res!1054754 (validKeyInArray!0 (select (arr!49266 a!2792) j!64)))))

(declare-fun b!1537531 () Bool)

(declare-fun res!1054755 () Bool)

(assert (=> b!1537531 (=> (not res!1054755) (not e!855673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102109 (_ BitVec 32)) Bool)

(assert (=> b!1537531 (= res!1054755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131084 res!1054749) b!1537527))

(assert (= (and b!1537527 res!1054750) b!1537525))

(assert (= (and b!1537525 res!1054753) b!1537530))

(assert (= (and b!1537530 res!1054754) b!1537531))

(assert (= (and b!1537531 res!1054755) b!1537529))

(assert (= (and b!1537529 res!1054751) b!1537528))

(assert (= (and b!1537528 res!1054752) b!1537526))

(declare-fun m!1420093 () Bool)

(assert (=> b!1537531 m!1420093))

(declare-fun m!1420095 () Bool)

(assert (=> b!1537525 m!1420095))

(assert (=> b!1537525 m!1420095))

(declare-fun m!1420097 () Bool)

(assert (=> b!1537525 m!1420097))

(declare-fun m!1420099 () Bool)

(assert (=> start!131084 m!1420099))

(declare-fun m!1420101 () Bool)

(assert (=> start!131084 m!1420101))

(declare-fun m!1420103 () Bool)

(assert (=> b!1537526 m!1420103))

(assert (=> b!1537526 m!1420103))

(declare-fun m!1420105 () Bool)

(assert (=> b!1537526 m!1420105))

(assert (=> b!1537530 m!1420103))

(assert (=> b!1537530 m!1420103))

(declare-fun m!1420107 () Bool)

(assert (=> b!1537530 m!1420107))

(declare-fun m!1420109 () Bool)

(assert (=> b!1537528 m!1420109))

(declare-fun m!1420111 () Bool)

(assert (=> b!1537529 m!1420111))

(push 1)

(assert (not b!1537529))

(assert (not b!1537530))

(assert (not start!131084))

(assert (not b!1537526))

(assert (not b!1537531))

(assert (not b!1537525))

(check-sat)

