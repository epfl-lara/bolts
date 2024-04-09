; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130846 () Bool)

(assert start!130846)

(declare-fun b!1534027 () Bool)

(declare-fun res!1051253 () Bool)

(declare-fun e!854375 () Bool)

(assert (=> b!1534027 (=> (not res!1051253) (not e!854375))))

(declare-datatypes ((array!101871 0))(
  ( (array!101872 (arr!49147 (Array (_ BitVec 32) (_ BitVec 64))) (size!49698 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101871)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1534027 (= res!1051253 (and (= (size!49698 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49698 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49698 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1051252 () Bool)

(assert (=> start!130846 (=> (not res!1051252) (not e!854375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130846 (= res!1051252 (validMask!0 mask!2480))))

(assert (=> start!130846 e!854375))

(assert (=> start!130846 true))

(declare-fun array_inv!38092 (array!101871) Bool)

(assert (=> start!130846 (array_inv!38092 a!2792)))

(declare-fun b!1534028 () Bool)

(declare-fun res!1051254 () Bool)

(assert (=> b!1534028 (=> (not res!1051254) (not e!854375))))

(declare-datatypes ((List!35801 0))(
  ( (Nil!35798) (Cons!35797 (h!37243 (_ BitVec 64)) (t!50502 List!35801)) )
))
(declare-fun arrayNoDuplicates!0 (array!101871 (_ BitVec 32) List!35801) Bool)

(assert (=> b!1534028 (= res!1051254 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35798))))

(declare-fun b!1534029 () Bool)

(declare-fun res!1051255 () Bool)

(assert (=> b!1534029 (=> (not res!1051255) (not e!854375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534029 (= res!1051255 (validKeyInArray!0 (select (arr!49147 a!2792) j!64)))))

(declare-fun b!1534030 () Bool)

(declare-fun res!1051257 () Bool)

(assert (=> b!1534030 (=> (not res!1051257) (not e!854375))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534030 (= res!1051257 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49698 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49698 a!2792)) (= (select (arr!49147 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534031 () Bool)

(assert (=> b!1534031 (= e!854375 false)))

(declare-datatypes ((SeekEntryResult!13302 0))(
  ( (MissingZero!13302 (index!55602 (_ BitVec 32))) (Found!13302 (index!55603 (_ BitVec 32))) (Intermediate!13302 (undefined!14114 Bool) (index!55604 (_ BitVec 32)) (x!137371 (_ BitVec 32))) (Undefined!13302) (MissingVacant!13302 (index!55605 (_ BitVec 32))) )
))
(declare-fun lt!663763 () SeekEntryResult!13302)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101871 (_ BitVec 32)) SeekEntryResult!13302)

(assert (=> b!1534031 (= lt!663763 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49147 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534032 () Bool)

(declare-fun res!1051251 () Bool)

(assert (=> b!1534032 (=> (not res!1051251) (not e!854375))))

(assert (=> b!1534032 (= res!1051251 (validKeyInArray!0 (select (arr!49147 a!2792) i!951)))))

(declare-fun b!1534033 () Bool)

(declare-fun res!1051256 () Bool)

(assert (=> b!1534033 (=> (not res!1051256) (not e!854375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101871 (_ BitVec 32)) Bool)

(assert (=> b!1534033 (= res!1051256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130846 res!1051252) b!1534027))

(assert (= (and b!1534027 res!1051253) b!1534032))

(assert (= (and b!1534032 res!1051251) b!1534029))

(assert (= (and b!1534029 res!1051255) b!1534033))

(assert (= (and b!1534033 res!1051256) b!1534028))

(assert (= (and b!1534028 res!1051254) b!1534030))

(assert (= (and b!1534030 res!1051257) b!1534031))

(declare-fun m!1416747 () Bool)

(assert (=> b!1534032 m!1416747))

(assert (=> b!1534032 m!1416747))

(declare-fun m!1416749 () Bool)

(assert (=> b!1534032 m!1416749))

(declare-fun m!1416751 () Bool)

(assert (=> b!1534030 m!1416751))

(declare-fun m!1416753 () Bool)

(assert (=> b!1534029 m!1416753))

(assert (=> b!1534029 m!1416753))

(declare-fun m!1416755 () Bool)

(assert (=> b!1534029 m!1416755))

(declare-fun m!1416757 () Bool)

(assert (=> start!130846 m!1416757))

(declare-fun m!1416759 () Bool)

(assert (=> start!130846 m!1416759))

(declare-fun m!1416761 () Bool)

(assert (=> b!1534028 m!1416761))

(assert (=> b!1534031 m!1416753))

(assert (=> b!1534031 m!1416753))

(declare-fun m!1416763 () Bool)

(assert (=> b!1534031 m!1416763))

(declare-fun m!1416765 () Bool)

(assert (=> b!1534033 m!1416765))

(push 1)

(assert (not b!1534032))

(assert (not b!1534033))

(assert (not b!1534028))

(assert (not b!1534029))

(assert (not start!130846))

(assert (not b!1534031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

