; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131102 () Bool)

(assert start!131102)

(declare-fun b!1537714 () Bool)

(declare-fun res!1054941 () Bool)

(declare-fun e!855728 () Bool)

(assert (=> b!1537714 (=> (not res!1054941) (not e!855728))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102127 0))(
  ( (array!102128 (arr!49275 (Array (_ BitVec 32) (_ BitVec 64))) (size!49826 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102127)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1537714 (= res!1054941 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49826 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49826 a!2792)) (= (select (arr!49275 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537715 () Bool)

(declare-fun res!1054942 () Bool)

(assert (=> b!1537715 (=> (not res!1054942) (not e!855728))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537715 (= res!1054942 (validKeyInArray!0 (select (arr!49275 a!2792) j!64)))))

(declare-fun b!1537716 () Bool)

(declare-fun res!1054940 () Bool)

(assert (=> b!1537716 (=> (not res!1054940) (not e!855728))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537716 (= res!1054940 (validKeyInArray!0 (select (arr!49275 a!2792) i!951)))))

(declare-fun b!1537717 () Bool)

(declare-fun res!1054944 () Bool)

(assert (=> b!1537717 (=> (not res!1054944) (not e!855728))))

(declare-datatypes ((List!35929 0))(
  ( (Nil!35926) (Cons!35925 (h!37371 (_ BitVec 64)) (t!50630 List!35929)) )
))
(declare-fun arrayNoDuplicates!0 (array!102127 (_ BitVec 32) List!35929) Bool)

(assert (=> b!1537717 (= res!1054944 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35926))))

(declare-fun res!1054939 () Bool)

(assert (=> start!131102 (=> (not res!1054939) (not e!855728))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131102 (= res!1054939 (validMask!0 mask!2480))))

(assert (=> start!131102 e!855728))

(assert (=> start!131102 true))

(declare-fun array_inv!38220 (array!102127) Bool)

(assert (=> start!131102 (array_inv!38220 a!2792)))

(declare-fun b!1537718 () Bool)

(declare-fun res!1054943 () Bool)

(assert (=> b!1537718 (=> (not res!1054943) (not e!855728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102127 (_ BitVec 32)) Bool)

(assert (=> b!1537718 (= res!1054943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537719 () Bool)

(assert (=> b!1537719 (= e!855728 false)))

(declare-datatypes ((SeekEntryResult!13424 0))(
  ( (MissingZero!13424 (index!56090 (_ BitVec 32))) (Found!13424 (index!56091 (_ BitVec 32))) (Intermediate!13424 (undefined!14236 Bool) (index!56092 (_ BitVec 32)) (x!137829 (_ BitVec 32))) (Undefined!13424) (MissingVacant!13424 (index!56093 (_ BitVec 32))) )
))
(declare-fun lt!664714 () SeekEntryResult!13424)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102127 (_ BitVec 32)) SeekEntryResult!13424)

(assert (=> b!1537719 (= lt!664714 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49275 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537720 () Bool)

(declare-fun res!1054938 () Bool)

(assert (=> b!1537720 (=> (not res!1054938) (not e!855728))))

(assert (=> b!1537720 (= res!1054938 (and (= (size!49826 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49826 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49826 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131102 res!1054939) b!1537720))

(assert (= (and b!1537720 res!1054938) b!1537716))

(assert (= (and b!1537716 res!1054940) b!1537715))

(assert (= (and b!1537715 res!1054942) b!1537718))

(assert (= (and b!1537718 res!1054943) b!1537717))

(assert (= (and b!1537717 res!1054944) b!1537714))

(assert (= (and b!1537714 res!1054941) b!1537719))

(declare-fun m!1420273 () Bool)

(assert (=> b!1537717 m!1420273))

(declare-fun m!1420275 () Bool)

(assert (=> b!1537714 m!1420275))

(declare-fun m!1420277 () Bool)

(assert (=> b!1537719 m!1420277))

(assert (=> b!1537719 m!1420277))

(declare-fun m!1420279 () Bool)

(assert (=> b!1537719 m!1420279))

(assert (=> b!1537715 m!1420277))

(assert (=> b!1537715 m!1420277))

(declare-fun m!1420281 () Bool)

(assert (=> b!1537715 m!1420281))

(declare-fun m!1420283 () Bool)

(assert (=> start!131102 m!1420283))

(declare-fun m!1420285 () Bool)

(assert (=> start!131102 m!1420285))

(declare-fun m!1420287 () Bool)

(assert (=> b!1537716 m!1420287))

(assert (=> b!1537716 m!1420287))

(declare-fun m!1420289 () Bool)

(assert (=> b!1537716 m!1420289))

(declare-fun m!1420291 () Bool)

(assert (=> b!1537718 m!1420291))

(push 1)

(assert (not b!1537716))

(assert (not b!1537717))

(assert (not b!1537718))

(assert (not b!1537715))

(assert (not start!131102))

(assert (not b!1537719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

