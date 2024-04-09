; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130766 () Bool)

(assert start!130766)

(declare-fun b!1533114 () Bool)

(declare-fun res!1050344 () Bool)

(declare-fun e!854134 () Bool)

(assert (=> b!1533114 (=> (not res!1050344) (not e!854134))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101791 0))(
  ( (array!101792 (arr!49107 (Array (_ BitVec 32) (_ BitVec 64))) (size!49658 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101791)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533114 (= res!1050344 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49658 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49658 a!2792)) (= (select (arr!49107 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun b!1533115 () Bool)

(assert (=> b!1533115 (= e!854134 (and (= (select (arr!49107 a!2792) index!463) (select (arr!49107 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533116 () Bool)

(declare-fun res!1050339 () Bool)

(assert (=> b!1533116 (=> (not res!1050339) (not e!854134))))

(declare-datatypes ((SeekEntryResult!13262 0))(
  ( (MissingZero!13262 (index!55442 (_ BitVec 32))) (Found!13262 (index!55443 (_ BitVec 32))) (Intermediate!13262 (undefined!14074 Bool) (index!55444 (_ BitVec 32)) (x!137219 (_ BitVec 32))) (Undefined!13262) (MissingVacant!13262 (index!55445 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101791 (_ BitVec 32)) SeekEntryResult!13262)

(assert (=> b!1533116 (= res!1050339 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49107 a!2792) j!64) a!2792 mask!2480) (Found!13262 j!64)))))

(declare-fun b!1533117 () Bool)

(declare-fun res!1050342 () Bool)

(assert (=> b!1533117 (=> (not res!1050342) (not e!854134))))

(declare-datatypes ((List!35761 0))(
  ( (Nil!35758) (Cons!35757 (h!37203 (_ BitVec 64)) (t!50462 List!35761)) )
))
(declare-fun arrayNoDuplicates!0 (array!101791 (_ BitVec 32) List!35761) Bool)

(assert (=> b!1533117 (= res!1050342 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35758))))

(declare-fun b!1533118 () Bool)

(declare-fun res!1050343 () Bool)

(assert (=> b!1533118 (=> (not res!1050343) (not e!854134))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533118 (= res!1050343 (and (= (size!49658 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49658 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49658 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050338 () Bool)

(assert (=> start!130766 (=> (not res!1050338) (not e!854134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130766 (= res!1050338 (validMask!0 mask!2480))))

(assert (=> start!130766 e!854134))

(assert (=> start!130766 true))

(declare-fun array_inv!38052 (array!101791) Bool)

(assert (=> start!130766 (array_inv!38052 a!2792)))

(declare-fun b!1533119 () Bool)

(declare-fun res!1050341 () Bool)

(assert (=> b!1533119 (=> (not res!1050341) (not e!854134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101791 (_ BitVec 32)) Bool)

(assert (=> b!1533119 (= res!1050341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533120 () Bool)

(declare-fun res!1050345 () Bool)

(assert (=> b!1533120 (=> (not res!1050345) (not e!854134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533120 (= res!1050345 (validKeyInArray!0 (select (arr!49107 a!2792) j!64)))))

(declare-fun b!1533121 () Bool)

(declare-fun res!1050340 () Bool)

(assert (=> b!1533121 (=> (not res!1050340) (not e!854134))))

(assert (=> b!1533121 (= res!1050340 (validKeyInArray!0 (select (arr!49107 a!2792) i!951)))))

(assert (= (and start!130766 res!1050338) b!1533118))

(assert (= (and b!1533118 res!1050343) b!1533121))

(assert (= (and b!1533121 res!1050340) b!1533120))

(assert (= (and b!1533120 res!1050345) b!1533119))

(assert (= (and b!1533119 res!1050341) b!1533117))

(assert (= (and b!1533117 res!1050342) b!1533114))

(assert (= (and b!1533114 res!1050344) b!1533116))

(assert (= (and b!1533116 res!1050339) b!1533115))

(declare-fun m!1415867 () Bool)

(assert (=> b!1533121 m!1415867))

(assert (=> b!1533121 m!1415867))

(declare-fun m!1415869 () Bool)

(assert (=> b!1533121 m!1415869))

(declare-fun m!1415871 () Bool)

(assert (=> b!1533116 m!1415871))

(assert (=> b!1533116 m!1415871))

(declare-fun m!1415873 () Bool)

(assert (=> b!1533116 m!1415873))

(declare-fun m!1415875 () Bool)

(assert (=> b!1533119 m!1415875))

(declare-fun m!1415877 () Bool)

(assert (=> start!130766 m!1415877))

(declare-fun m!1415879 () Bool)

(assert (=> start!130766 m!1415879))

(declare-fun m!1415881 () Bool)

(assert (=> b!1533114 m!1415881))

(declare-fun m!1415883 () Bool)

(assert (=> b!1533115 m!1415883))

(assert (=> b!1533115 m!1415871))

(declare-fun m!1415885 () Bool)

(assert (=> b!1533117 m!1415885))

(assert (=> b!1533120 m!1415871))

(assert (=> b!1533120 m!1415871))

(declare-fun m!1415887 () Bool)

(assert (=> b!1533120 m!1415887))

(push 1)

(assert (not b!1533117))

(assert (not b!1533121))

(assert (not b!1533120))

(assert (not b!1533116))

(assert (not b!1533119))

(assert (not start!130766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

