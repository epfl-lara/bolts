; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130828 () Bool)

(assert start!130828)

(declare-fun b!1533829 () Bool)

(declare-fun res!1051056 () Bool)

(declare-fun e!854320 () Bool)

(assert (=> b!1533829 (=> (not res!1051056) (not e!854320))))

(declare-datatypes ((array!101853 0))(
  ( (array!101854 (arr!49138 (Array (_ BitVec 32) (_ BitVec 64))) (size!49689 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101853)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533829 (= res!1051056 (and (= (size!49689 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49689 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49689 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533830 () Bool)

(declare-fun res!1051058 () Bool)

(assert (=> b!1533830 (=> (not res!1051058) (not e!854320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533830 (= res!1051058 (validKeyInArray!0 (select (arr!49138 a!2792) j!64)))))

(declare-fun b!1533831 () Bool)

(assert (=> b!1533831 (= e!854320 false)))

(declare-datatypes ((SeekEntryResult!13293 0))(
  ( (MissingZero!13293 (index!55566 (_ BitVec 32))) (Found!13293 (index!55567 (_ BitVec 32))) (Intermediate!13293 (undefined!14105 Bool) (index!55568 (_ BitVec 32)) (x!137338 (_ BitVec 32))) (Undefined!13293) (MissingVacant!13293 (index!55569 (_ BitVec 32))) )
))
(declare-fun lt!663745 () SeekEntryResult!13293)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101853 (_ BitVec 32)) SeekEntryResult!13293)

(assert (=> b!1533831 (= lt!663745 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49138 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533832 () Bool)

(declare-fun res!1051054 () Bool)

(assert (=> b!1533832 (=> (not res!1051054) (not e!854320))))

(assert (=> b!1533832 (= res!1051054 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49689 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49689 a!2792)) (= (select (arr!49138 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1051057 () Bool)

(assert (=> start!130828 (=> (not res!1051057) (not e!854320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130828 (= res!1051057 (validMask!0 mask!2480))))

(assert (=> start!130828 e!854320))

(assert (=> start!130828 true))

(declare-fun array_inv!38083 (array!101853) Bool)

(assert (=> start!130828 (array_inv!38083 a!2792)))

(declare-fun b!1533833 () Bool)

(declare-fun res!1051055 () Bool)

(assert (=> b!1533833 (=> (not res!1051055) (not e!854320))))

(assert (=> b!1533833 (= res!1051055 (validKeyInArray!0 (select (arr!49138 a!2792) i!951)))))

(declare-fun b!1533834 () Bool)

(declare-fun res!1051059 () Bool)

(assert (=> b!1533834 (=> (not res!1051059) (not e!854320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101853 (_ BitVec 32)) Bool)

(assert (=> b!1533834 (= res!1051059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533835 () Bool)

(declare-fun res!1051053 () Bool)

(assert (=> b!1533835 (=> (not res!1051053) (not e!854320))))

(declare-datatypes ((List!35792 0))(
  ( (Nil!35789) (Cons!35788 (h!37234 (_ BitVec 64)) (t!50493 List!35792)) )
))
(declare-fun arrayNoDuplicates!0 (array!101853 (_ BitVec 32) List!35792) Bool)

(assert (=> b!1533835 (= res!1051053 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35789))))

(assert (= (and start!130828 res!1051057) b!1533829))

(assert (= (and b!1533829 res!1051056) b!1533833))

(assert (= (and b!1533833 res!1051055) b!1533830))

(assert (= (and b!1533830 res!1051058) b!1533834))

(assert (= (and b!1533834 res!1051059) b!1533835))

(assert (= (and b!1533835 res!1051053) b!1533832))

(assert (= (and b!1533832 res!1051054) b!1533831))

(declare-fun m!1416561 () Bool)

(assert (=> b!1533835 m!1416561))

(declare-fun m!1416563 () Bool)

(assert (=> start!130828 m!1416563))

(declare-fun m!1416565 () Bool)

(assert (=> start!130828 m!1416565))

(declare-fun m!1416567 () Bool)

(assert (=> b!1533832 m!1416567))

(declare-fun m!1416569 () Bool)

(assert (=> b!1533830 m!1416569))

(assert (=> b!1533830 m!1416569))

(declare-fun m!1416571 () Bool)

(assert (=> b!1533830 m!1416571))

(declare-fun m!1416573 () Bool)

(assert (=> b!1533834 m!1416573))

(declare-fun m!1416575 () Bool)

(assert (=> b!1533833 m!1416575))

(assert (=> b!1533833 m!1416575))

(declare-fun m!1416577 () Bool)

(assert (=> b!1533833 m!1416577))

(assert (=> b!1533831 m!1416569))

(assert (=> b!1533831 m!1416569))

(declare-fun m!1416579 () Bool)

(assert (=> b!1533831 m!1416579))

(push 1)

(assert (not b!1533830))

(assert (not b!1533831))

(assert (not b!1533833))

(assert (not b!1533835))

(assert (not b!1533834))

(assert (not start!130828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

