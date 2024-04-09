; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130760 () Bool)

(assert start!130760)

(declare-fun b!1533043 () Bool)

(declare-fun res!1050270 () Bool)

(declare-fun e!854116 () Bool)

(assert (=> b!1533043 (=> (not res!1050270) (not e!854116))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-datatypes ((array!101785 0))(
  ( (array!101786 (arr!49104 (Array (_ BitVec 32) (_ BitVec 64))) (size!49655 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101785)

(assert (=> b!1533043 (= res!1050270 (and (= (size!49655 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49655 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49655 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533044 () Bool)

(declare-fun res!1050268 () Bool)

(assert (=> b!1533044 (=> (not res!1050268) (not e!854116))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533044 (= res!1050268 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49655 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49655 a!2792)) (= (select (arr!49104 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533045 () Bool)

(declare-fun res!1050273 () Bool)

(assert (=> b!1533045 (=> (not res!1050273) (not e!854116))))

(declare-datatypes ((List!35758 0))(
  ( (Nil!35755) (Cons!35754 (h!37200 (_ BitVec 64)) (t!50459 List!35758)) )
))
(declare-fun arrayNoDuplicates!0 (array!101785 (_ BitVec 32) List!35758) Bool)

(assert (=> b!1533045 (= res!1050273 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35755))))

(declare-fun b!1533046 () Bool)

(declare-fun res!1050272 () Bool)

(assert (=> b!1533046 (=> (not res!1050272) (not e!854116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101785 (_ BitVec 32)) Bool)

(assert (=> b!1533046 (= res!1050272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1050269 () Bool)

(assert (=> start!130760 (=> (not res!1050269) (not e!854116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130760 (= res!1050269 (validMask!0 mask!2480))))

(assert (=> start!130760 e!854116))

(assert (=> start!130760 true))

(declare-fun array_inv!38049 (array!101785) Bool)

(assert (=> start!130760 (array_inv!38049 a!2792)))

(declare-fun b!1533047 () Bool)

(assert (=> b!1533047 (= e!854116 false)))

(declare-datatypes ((SeekEntryResult!13259 0))(
  ( (MissingZero!13259 (index!55430 (_ BitVec 32))) (Found!13259 (index!55431 (_ BitVec 32))) (Intermediate!13259 (undefined!14071 Bool) (index!55432 (_ BitVec 32)) (x!137208 (_ BitVec 32))) (Undefined!13259) (MissingVacant!13259 (index!55433 (_ BitVec 32))) )
))
(declare-fun lt!663706 () SeekEntryResult!13259)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101785 (_ BitVec 32)) SeekEntryResult!13259)

(assert (=> b!1533047 (= lt!663706 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49104 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533048 () Bool)

(declare-fun res!1050267 () Bool)

(assert (=> b!1533048 (=> (not res!1050267) (not e!854116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533048 (= res!1050267 (validKeyInArray!0 (select (arr!49104 a!2792) i!951)))))

(declare-fun b!1533049 () Bool)

(declare-fun res!1050271 () Bool)

(assert (=> b!1533049 (=> (not res!1050271) (not e!854116))))

(assert (=> b!1533049 (= res!1050271 (validKeyInArray!0 (select (arr!49104 a!2792) j!64)))))

(assert (= (and start!130760 res!1050269) b!1533043))

(assert (= (and b!1533043 res!1050270) b!1533048))

(assert (= (and b!1533048 res!1050267) b!1533049))

(assert (= (and b!1533049 res!1050271) b!1533046))

(assert (= (and b!1533046 res!1050272) b!1533045))

(assert (= (and b!1533045 res!1050273) b!1533044))

(assert (= (and b!1533044 res!1050268) b!1533047))

(declare-fun m!1415803 () Bool)

(assert (=> start!130760 m!1415803))

(declare-fun m!1415805 () Bool)

(assert (=> start!130760 m!1415805))

(declare-fun m!1415807 () Bool)

(assert (=> b!1533048 m!1415807))

(assert (=> b!1533048 m!1415807))

(declare-fun m!1415809 () Bool)

(assert (=> b!1533048 m!1415809))

(declare-fun m!1415811 () Bool)

(assert (=> b!1533044 m!1415811))

(declare-fun m!1415813 () Bool)

(assert (=> b!1533046 m!1415813))

(declare-fun m!1415815 () Bool)

(assert (=> b!1533047 m!1415815))

(assert (=> b!1533047 m!1415815))

(declare-fun m!1415817 () Bool)

(assert (=> b!1533047 m!1415817))

(assert (=> b!1533049 m!1415815))

(assert (=> b!1533049 m!1415815))

(declare-fun m!1415819 () Bool)

(assert (=> b!1533049 m!1415819))

(declare-fun m!1415821 () Bool)

(assert (=> b!1533045 m!1415821))

(push 1)

(assert (not b!1533048))

(assert (not b!1533046))

(assert (not b!1533045))

(assert (not start!130760))

(assert (not b!1533049))

(assert (not b!1533047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

