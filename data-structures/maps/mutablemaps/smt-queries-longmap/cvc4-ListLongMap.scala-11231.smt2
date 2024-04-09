; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131054 () Bool)

(assert start!131054)

(declare-fun b!1537170 () Bool)

(declare-fun e!855527 () Bool)

(declare-fun e!855526 () Bool)

(assert (=> b!1537170 (= e!855527 e!855526)))

(declare-fun res!1054397 () Bool)

(assert (=> b!1537170 (=> (not res!1054397) (not e!855526))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102079 0))(
  ( (array!102080 (arr!49251 (Array (_ BitVec 32) (_ BitVec 64))) (size!49802 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102079)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13406 0))(
  ( (MissingZero!13406 (index!56018 (_ BitVec 32))) (Found!13406 (index!56019 (_ BitVec 32))) (Intermediate!13406 (undefined!14218 Bool) (index!56020 (_ BitVec 32)) (x!137747 (_ BitVec 32))) (Undefined!13406) (MissingVacant!13406 (index!56021 (_ BitVec 32))) )
))
(declare-fun lt!664585 () SeekEntryResult!13406)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102079 (_ BitVec 32)) SeekEntryResult!13406)

(assert (=> b!1537170 (= res!1054397 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49251 a!2792) j!64) a!2792 mask!2480) lt!664585))))

(assert (=> b!1537170 (= lt!664585 (Found!13406 j!64))))

(declare-fun b!1537171 () Bool)

(declare-fun res!1054401 () Bool)

(assert (=> b!1537171 (=> (not res!1054401) (not e!855527))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537171 (= res!1054401 (and (= (size!49802 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49802 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49802 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537172 () Bool)

(declare-fun res!1054400 () Bool)

(assert (=> b!1537172 (=> (not res!1054400) (not e!855527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537172 (= res!1054400 (validKeyInArray!0 (select (arr!49251 a!2792) j!64)))))

(declare-fun b!1537174 () Bool)

(declare-fun res!1054394 () Bool)

(assert (=> b!1537174 (=> (not res!1054394) (not e!855527))))

(declare-datatypes ((List!35905 0))(
  ( (Nil!35902) (Cons!35901 (h!37347 (_ BitVec 64)) (t!50606 List!35905)) )
))
(declare-fun arrayNoDuplicates!0 (array!102079 (_ BitVec 32) List!35905) Bool)

(assert (=> b!1537174 (= res!1054394 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35902))))

(declare-fun b!1537175 () Bool)

(declare-fun e!855529 () Bool)

(assert (=> b!1537175 (= e!855526 e!855529)))

(declare-fun res!1054399 () Bool)

(assert (=> b!1537175 (=> (not res!1054399) (not e!855529))))

(declare-fun lt!664587 () (_ BitVec 32))

(assert (=> b!1537175 (= res!1054399 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664587 #b00000000000000000000000000000000) (bvslt lt!664587 (size!49802 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537175 (= lt!664587 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537176 () Bool)

(declare-fun e!855530 () Bool)

(assert (=> b!1537176 (= e!855529 e!855530)))

(declare-fun res!1054396 () Bool)

(assert (=> b!1537176 (=> (not res!1054396) (not e!855530))))

(declare-fun lt!664586 () SeekEntryResult!13406)

(assert (=> b!1537176 (= res!1054396 (= lt!664586 lt!664585))))

(assert (=> b!1537176 (= lt!664586 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664587 vacantIndex!5 (select (arr!49251 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537177 () Bool)

(assert (=> b!1537177 (= e!855530 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(assert (=> b!1537177 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664587 vacantIndex!5 (select (store (arr!49251 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102080 (store (arr!49251 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49802 a!2792)) mask!2480) lt!664586)))

(declare-datatypes ((Unit!51336 0))(
  ( (Unit!51337) )
))
(declare-fun lt!664588 () Unit!51336)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51336)

(assert (=> b!1537177 (= lt!664588 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664587 vacantIndex!5 mask!2480))))

(declare-fun b!1537178 () Bool)

(declare-fun res!1054398 () Bool)

(assert (=> b!1537178 (=> (not res!1054398) (not e!855527))))

(assert (=> b!1537178 (= res!1054398 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49802 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49802 a!2792)) (= (select (arr!49251 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1054403 () Bool)

(assert (=> start!131054 (=> (not res!1054403) (not e!855527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131054 (= res!1054403 (validMask!0 mask!2480))))

(assert (=> start!131054 e!855527))

(assert (=> start!131054 true))

(declare-fun array_inv!38196 (array!102079) Bool)

(assert (=> start!131054 (array_inv!38196 a!2792)))

(declare-fun b!1537173 () Bool)

(declare-fun res!1054395 () Bool)

(assert (=> b!1537173 (=> (not res!1054395) (not e!855527))))

(assert (=> b!1537173 (= res!1054395 (validKeyInArray!0 (select (arr!49251 a!2792) i!951)))))

(declare-fun b!1537179 () Bool)

(declare-fun res!1054402 () Bool)

(assert (=> b!1537179 (=> (not res!1054402) (not e!855527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102079 (_ BitVec 32)) Bool)

(assert (=> b!1537179 (= res!1054402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537180 () Bool)

(declare-fun res!1054404 () Bool)

(assert (=> b!1537180 (=> (not res!1054404) (not e!855526))))

(assert (=> b!1537180 (= res!1054404 (not (= (select (arr!49251 a!2792) index!463) (select (arr!49251 a!2792) j!64))))))

(assert (= (and start!131054 res!1054403) b!1537171))

(assert (= (and b!1537171 res!1054401) b!1537173))

(assert (= (and b!1537173 res!1054395) b!1537172))

(assert (= (and b!1537172 res!1054400) b!1537179))

(assert (= (and b!1537179 res!1054402) b!1537174))

(assert (= (and b!1537174 res!1054394) b!1537178))

(assert (= (and b!1537178 res!1054398) b!1537170))

(assert (= (and b!1537170 res!1054397) b!1537180))

(assert (= (and b!1537180 res!1054404) b!1537175))

(assert (= (and b!1537175 res!1054399) b!1537176))

(assert (= (and b!1537176 res!1054396) b!1537177))

(declare-fun m!1419719 () Bool)

(assert (=> b!1537173 m!1419719))

(assert (=> b!1537173 m!1419719))

(declare-fun m!1419721 () Bool)

(assert (=> b!1537173 m!1419721))

(declare-fun m!1419723 () Bool)

(assert (=> start!131054 m!1419723))

(declare-fun m!1419725 () Bool)

(assert (=> start!131054 m!1419725))

(declare-fun m!1419727 () Bool)

(assert (=> b!1537179 m!1419727))

(declare-fun m!1419729 () Bool)

(assert (=> b!1537172 m!1419729))

(assert (=> b!1537172 m!1419729))

(declare-fun m!1419731 () Bool)

(assert (=> b!1537172 m!1419731))

(declare-fun m!1419733 () Bool)

(assert (=> b!1537178 m!1419733))

(declare-fun m!1419735 () Bool)

(assert (=> b!1537174 m!1419735))

(assert (=> b!1537170 m!1419729))

(assert (=> b!1537170 m!1419729))

(declare-fun m!1419737 () Bool)

(assert (=> b!1537170 m!1419737))

(declare-fun m!1419739 () Bool)

(assert (=> b!1537177 m!1419739))

(declare-fun m!1419741 () Bool)

(assert (=> b!1537177 m!1419741))

(assert (=> b!1537177 m!1419741))

(declare-fun m!1419743 () Bool)

(assert (=> b!1537177 m!1419743))

(declare-fun m!1419745 () Bool)

(assert (=> b!1537177 m!1419745))

(assert (=> b!1537176 m!1419729))

(assert (=> b!1537176 m!1419729))

(declare-fun m!1419747 () Bool)

(assert (=> b!1537176 m!1419747))

(declare-fun m!1419749 () Bool)

(assert (=> b!1537180 m!1419749))

(assert (=> b!1537180 m!1419729))

(declare-fun m!1419751 () Bool)

(assert (=> b!1537175 m!1419751))

(push 1)

(assert (not b!1537170))

(assert (not b!1537175))

(assert (not b!1537177))

(assert (not b!1537176))

(assert (not b!1537179))

(assert (not b!1537172))

(assert (not b!1537173))

(assert (not b!1537174))

(assert (not start!131054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

