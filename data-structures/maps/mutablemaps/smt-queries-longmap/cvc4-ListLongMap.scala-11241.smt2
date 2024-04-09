; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131114 () Bool)

(assert start!131114)

(declare-fun b!1537840 () Bool)

(declare-fun res!1055070 () Bool)

(declare-fun e!855764 () Bool)

(assert (=> b!1537840 (=> (not res!1055070) (not e!855764))))

(declare-datatypes ((array!102139 0))(
  ( (array!102140 (arr!49281 (Array (_ BitVec 32) (_ BitVec 64))) (size!49832 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102139)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102139 (_ BitVec 32)) Bool)

(assert (=> b!1537840 (= res!1055070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537841 () Bool)

(declare-fun res!1055064 () Bool)

(assert (=> b!1537841 (=> (not res!1055064) (not e!855764))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537841 (= res!1055064 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49832 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49832 a!2792)) (= (select (arr!49281 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537842 () Bool)

(assert (=> b!1537842 (= e!855764 false)))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13430 0))(
  ( (MissingZero!13430 (index!56114 (_ BitVec 32))) (Found!13430 (index!56115 (_ BitVec 32))) (Intermediate!13430 (undefined!14242 Bool) (index!56116 (_ BitVec 32)) (x!137851 (_ BitVec 32))) (Undefined!13430) (MissingVacant!13430 (index!56117 (_ BitVec 32))) )
))
(declare-fun lt!664732 () SeekEntryResult!13430)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102139 (_ BitVec 32)) SeekEntryResult!13430)

(assert (=> b!1537842 (= lt!664732 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49281 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537843 () Bool)

(declare-fun res!1055069 () Bool)

(assert (=> b!1537843 (=> (not res!1055069) (not e!855764))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537843 (= res!1055069 (and (= (size!49832 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49832 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49832 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1055068 () Bool)

(assert (=> start!131114 (=> (not res!1055068) (not e!855764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131114 (= res!1055068 (validMask!0 mask!2480))))

(assert (=> start!131114 e!855764))

(assert (=> start!131114 true))

(declare-fun array_inv!38226 (array!102139) Bool)

(assert (=> start!131114 (array_inv!38226 a!2792)))

(declare-fun b!1537844 () Bool)

(declare-fun res!1055067 () Bool)

(assert (=> b!1537844 (=> (not res!1055067) (not e!855764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537844 (= res!1055067 (validKeyInArray!0 (select (arr!49281 a!2792) j!64)))))

(declare-fun b!1537845 () Bool)

(declare-fun res!1055065 () Bool)

(assert (=> b!1537845 (=> (not res!1055065) (not e!855764))))

(assert (=> b!1537845 (= res!1055065 (validKeyInArray!0 (select (arr!49281 a!2792) i!951)))))

(declare-fun b!1537846 () Bool)

(declare-fun res!1055066 () Bool)

(assert (=> b!1537846 (=> (not res!1055066) (not e!855764))))

(declare-datatypes ((List!35935 0))(
  ( (Nil!35932) (Cons!35931 (h!37377 (_ BitVec 64)) (t!50636 List!35935)) )
))
(declare-fun arrayNoDuplicates!0 (array!102139 (_ BitVec 32) List!35935) Bool)

(assert (=> b!1537846 (= res!1055066 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35932))))

(assert (= (and start!131114 res!1055068) b!1537843))

(assert (= (and b!1537843 res!1055069) b!1537845))

(assert (= (and b!1537845 res!1055065) b!1537844))

(assert (= (and b!1537844 res!1055067) b!1537840))

(assert (= (and b!1537840 res!1055070) b!1537846))

(assert (= (and b!1537846 res!1055066) b!1537841))

(assert (= (and b!1537841 res!1055064) b!1537842))

(declare-fun m!1420393 () Bool)

(assert (=> b!1537845 m!1420393))

(assert (=> b!1537845 m!1420393))

(declare-fun m!1420395 () Bool)

(assert (=> b!1537845 m!1420395))

(declare-fun m!1420397 () Bool)

(assert (=> b!1537846 m!1420397))

(declare-fun m!1420399 () Bool)

(assert (=> start!131114 m!1420399))

(declare-fun m!1420401 () Bool)

(assert (=> start!131114 m!1420401))

(declare-fun m!1420403 () Bool)

(assert (=> b!1537840 m!1420403))

(declare-fun m!1420405 () Bool)

(assert (=> b!1537844 m!1420405))

(assert (=> b!1537844 m!1420405))

(declare-fun m!1420407 () Bool)

(assert (=> b!1537844 m!1420407))

(declare-fun m!1420409 () Bool)

(assert (=> b!1537841 m!1420409))

(assert (=> b!1537842 m!1420405))

(assert (=> b!1537842 m!1420405))

(declare-fun m!1420411 () Bool)

(assert (=> b!1537842 m!1420411))

(push 1)

(assert (not start!131114))

(assert (not b!1537840))

(assert (not b!1537846))

(assert (not b!1537842))

(assert (not b!1537844))

(assert (not b!1537845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

