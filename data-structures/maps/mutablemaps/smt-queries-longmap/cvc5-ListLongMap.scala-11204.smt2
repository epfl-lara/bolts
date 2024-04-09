; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130888 () Bool)

(assert start!130888)

(declare-fun b!1534546 () Bool)

(declare-fun res!1051778 () Bool)

(declare-fun e!854520 () Bool)

(assert (=> b!1534546 (=> (not res!1051778) (not e!854520))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101913 0))(
  ( (array!101914 (arr!49168 (Array (_ BitVec 32) (_ BitVec 64))) (size!49719 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101913)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13323 0))(
  ( (MissingZero!13323 (index!55686 (_ BitVec 32))) (Found!13323 (index!55687 (_ BitVec 32))) (Intermediate!13323 (undefined!14135 Bool) (index!55688 (_ BitVec 32)) (x!137448 (_ BitVec 32))) (Undefined!13323) (MissingVacant!13323 (index!55689 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101913 (_ BitVec 32)) SeekEntryResult!13323)

(assert (=> b!1534546 (= res!1051778 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49168 a!2792) j!64) a!2792 mask!2480) (Found!13323 j!64)))))

(declare-fun b!1534547 () Bool)

(declare-fun res!1051774 () Bool)

(assert (=> b!1534547 (=> (not res!1051774) (not e!854520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101913 (_ BitVec 32)) Bool)

(assert (=> b!1534547 (= res!1051774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534548 () Bool)

(declare-fun res!1051777 () Bool)

(assert (=> b!1534548 (=> (not res!1051777) (not e!854520))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534548 (= res!1051777 (and (= (size!49719 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49719 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49719 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534549 () Bool)

(declare-fun res!1051779 () Bool)

(assert (=> b!1534549 (=> (not res!1051779) (not e!854520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534549 (= res!1051779 (validKeyInArray!0 (select (arr!49168 a!2792) j!64)))))

(declare-fun b!1534550 () Bool)

(declare-fun e!854522 () Bool)

(assert (=> b!1534550 (= e!854522 false)))

(declare-fun lt!663829 () (_ BitVec 32))

(declare-fun lt!663828 () SeekEntryResult!13323)

(assert (=> b!1534550 (= lt!663828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663829 vacantIndex!5 (select (arr!49168 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1051771 () Bool)

(assert (=> start!130888 (=> (not res!1051771) (not e!854520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130888 (= res!1051771 (validMask!0 mask!2480))))

(assert (=> start!130888 e!854520))

(assert (=> start!130888 true))

(declare-fun array_inv!38113 (array!101913) Bool)

(assert (=> start!130888 (array_inv!38113 a!2792)))

(declare-fun b!1534551 () Bool)

(declare-fun res!1051772 () Bool)

(assert (=> b!1534551 (=> (not res!1051772) (not e!854520))))

(assert (=> b!1534551 (= res!1051772 (validKeyInArray!0 (select (arr!49168 a!2792) i!951)))))

(declare-fun b!1534552 () Bool)

(assert (=> b!1534552 (= e!854520 e!854522)))

(declare-fun res!1051776 () Bool)

(assert (=> b!1534552 (=> (not res!1051776) (not e!854522))))

(assert (=> b!1534552 (= res!1051776 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663829 #b00000000000000000000000000000000) (bvslt lt!663829 (size!49719 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534552 (= lt!663829 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534553 () Bool)

(declare-fun res!1051773 () Bool)

(assert (=> b!1534553 (=> (not res!1051773) (not e!854520))))

(assert (=> b!1534553 (= res!1051773 (not (= (select (arr!49168 a!2792) index!463) (select (arr!49168 a!2792) j!64))))))

(declare-fun b!1534554 () Bool)

(declare-fun res!1051770 () Bool)

(assert (=> b!1534554 (=> (not res!1051770) (not e!854520))))

(assert (=> b!1534554 (= res!1051770 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49719 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49719 a!2792)) (= (select (arr!49168 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534555 () Bool)

(declare-fun res!1051775 () Bool)

(assert (=> b!1534555 (=> (not res!1051775) (not e!854520))))

(declare-datatypes ((List!35822 0))(
  ( (Nil!35819) (Cons!35818 (h!37264 (_ BitVec 64)) (t!50523 List!35822)) )
))
(declare-fun arrayNoDuplicates!0 (array!101913 (_ BitVec 32) List!35822) Bool)

(assert (=> b!1534555 (= res!1051775 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35819))))

(assert (= (and start!130888 res!1051771) b!1534548))

(assert (= (and b!1534548 res!1051777) b!1534551))

(assert (= (and b!1534551 res!1051772) b!1534549))

(assert (= (and b!1534549 res!1051779) b!1534547))

(assert (= (and b!1534547 res!1051774) b!1534555))

(assert (= (and b!1534555 res!1051775) b!1534554))

(assert (= (and b!1534554 res!1051770) b!1534546))

(assert (= (and b!1534546 res!1051778) b!1534553))

(assert (= (and b!1534553 res!1051773) b!1534552))

(assert (= (and b!1534552 res!1051776) b!1534550))

(declare-fun m!1417215 () Bool)

(assert (=> b!1534546 m!1417215))

(assert (=> b!1534546 m!1417215))

(declare-fun m!1417217 () Bool)

(assert (=> b!1534546 m!1417217))

(declare-fun m!1417219 () Bool)

(assert (=> b!1534551 m!1417219))

(assert (=> b!1534551 m!1417219))

(declare-fun m!1417221 () Bool)

(assert (=> b!1534551 m!1417221))

(declare-fun m!1417223 () Bool)

(assert (=> b!1534552 m!1417223))

(declare-fun m!1417225 () Bool)

(assert (=> b!1534554 m!1417225))

(declare-fun m!1417227 () Bool)

(assert (=> b!1534555 m!1417227))

(declare-fun m!1417229 () Bool)

(assert (=> b!1534547 m!1417229))

(assert (=> b!1534550 m!1417215))

(assert (=> b!1534550 m!1417215))

(declare-fun m!1417231 () Bool)

(assert (=> b!1534550 m!1417231))

(declare-fun m!1417233 () Bool)

(assert (=> start!130888 m!1417233))

(declare-fun m!1417235 () Bool)

(assert (=> start!130888 m!1417235))

(assert (=> b!1534549 m!1417215))

(assert (=> b!1534549 m!1417215))

(declare-fun m!1417237 () Bool)

(assert (=> b!1534549 m!1417237))

(declare-fun m!1417239 () Bool)

(assert (=> b!1534553 m!1417239))

(assert (=> b!1534553 m!1417215))

(push 1)

