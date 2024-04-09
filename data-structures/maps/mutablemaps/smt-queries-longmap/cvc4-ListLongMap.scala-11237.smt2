; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131090 () Bool)

(assert start!131090)

(declare-fun b!1537588 () Bool)

(declare-fun e!855691 () Bool)

(assert (=> b!1537588 (= e!855691 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102115 0))(
  ( (array!102116 (arr!49269 (Array (_ BitVec 32) (_ BitVec 64))) (size!49820 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102115)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13418 0))(
  ( (MissingZero!13418 (index!56066 (_ BitVec 32))) (Found!13418 (index!56067 (_ BitVec 32))) (Intermediate!13418 (undefined!14230 Bool) (index!56068 (_ BitVec 32)) (x!137807 (_ BitVec 32))) (Undefined!13418) (MissingVacant!13418 (index!56069 (_ BitVec 32))) )
))
(declare-fun lt!664696 () SeekEntryResult!13418)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102115 (_ BitVec 32)) SeekEntryResult!13418)

(assert (=> b!1537588 (= lt!664696 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49269 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054817 () Bool)

(assert (=> start!131090 (=> (not res!1054817) (not e!855691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131090 (= res!1054817 (validMask!0 mask!2480))))

(assert (=> start!131090 e!855691))

(assert (=> start!131090 true))

(declare-fun array_inv!38214 (array!102115) Bool)

(assert (=> start!131090 (array_inv!38214 a!2792)))

(declare-fun b!1537589 () Bool)

(declare-fun res!1054814 () Bool)

(assert (=> b!1537589 (=> (not res!1054814) (not e!855691))))

(assert (=> b!1537589 (= res!1054814 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49820 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49820 a!2792)) (= (select (arr!49269 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537590 () Bool)

(declare-fun res!1054812 () Bool)

(assert (=> b!1537590 (=> (not res!1054812) (not e!855691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102115 (_ BitVec 32)) Bool)

(assert (=> b!1537590 (= res!1054812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537591 () Bool)

(declare-fun res!1054816 () Bool)

(assert (=> b!1537591 (=> (not res!1054816) (not e!855691))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537591 (= res!1054816 (validKeyInArray!0 (select (arr!49269 a!2792) i!951)))))

(declare-fun b!1537592 () Bool)

(declare-fun res!1054818 () Bool)

(assert (=> b!1537592 (=> (not res!1054818) (not e!855691))))

(assert (=> b!1537592 (= res!1054818 (and (= (size!49820 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49820 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49820 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537593 () Bool)

(declare-fun res!1054815 () Bool)

(assert (=> b!1537593 (=> (not res!1054815) (not e!855691))))

(assert (=> b!1537593 (= res!1054815 (validKeyInArray!0 (select (arr!49269 a!2792) j!64)))))

(declare-fun b!1537594 () Bool)

(declare-fun res!1054813 () Bool)

(assert (=> b!1537594 (=> (not res!1054813) (not e!855691))))

(declare-datatypes ((List!35923 0))(
  ( (Nil!35920) (Cons!35919 (h!37365 (_ BitVec 64)) (t!50624 List!35923)) )
))
(declare-fun arrayNoDuplicates!0 (array!102115 (_ BitVec 32) List!35923) Bool)

(assert (=> b!1537594 (= res!1054813 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35920))))

(assert (= (and start!131090 res!1054817) b!1537592))

(assert (= (and b!1537592 res!1054818) b!1537591))

(assert (= (and b!1537591 res!1054816) b!1537593))

(assert (= (and b!1537593 res!1054815) b!1537590))

(assert (= (and b!1537590 res!1054812) b!1537594))

(assert (= (and b!1537594 res!1054813) b!1537589))

(assert (= (and b!1537589 res!1054814) b!1537588))

(declare-fun m!1420153 () Bool)

(assert (=> b!1537589 m!1420153))

(declare-fun m!1420155 () Bool)

(assert (=> b!1537591 m!1420155))

(assert (=> b!1537591 m!1420155))

(declare-fun m!1420157 () Bool)

(assert (=> b!1537591 m!1420157))

(declare-fun m!1420159 () Bool)

(assert (=> start!131090 m!1420159))

(declare-fun m!1420161 () Bool)

(assert (=> start!131090 m!1420161))

(declare-fun m!1420163 () Bool)

(assert (=> b!1537588 m!1420163))

(assert (=> b!1537588 m!1420163))

(declare-fun m!1420165 () Bool)

(assert (=> b!1537588 m!1420165))

(assert (=> b!1537593 m!1420163))

(assert (=> b!1537593 m!1420163))

(declare-fun m!1420167 () Bool)

(assert (=> b!1537593 m!1420167))

(declare-fun m!1420169 () Bool)

(assert (=> b!1537594 m!1420169))

(declare-fun m!1420171 () Bool)

(assert (=> b!1537590 m!1420171))

(push 1)

(assert (not b!1537593))

(assert (not b!1537594))

(assert (not b!1537590))

(assert (not b!1537591))

(assert (not start!131090))

(assert (not b!1537588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

