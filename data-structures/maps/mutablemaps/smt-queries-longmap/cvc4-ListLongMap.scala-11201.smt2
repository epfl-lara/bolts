; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130874 () Bool)

(assert start!130874)

(declare-fun b!1534339 () Bool)

(declare-fun res!1051567 () Bool)

(declare-fun e!854458 () Bool)

(assert (=> b!1534339 (=> (not res!1051567) (not e!854458))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101899 0))(
  ( (array!101900 (arr!49161 (Array (_ BitVec 32) (_ BitVec 64))) (size!49712 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101899)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534339 (= res!1051567 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49712 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49712 a!2792)) (= (select (arr!49161 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534340 () Bool)

(declare-fun res!1051568 () Bool)

(assert (=> b!1534340 (=> (not res!1051568) (not e!854458))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101899 (_ BitVec 32)) Bool)

(assert (=> b!1534340 (= res!1051568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534341 () Bool)

(declare-fun res!1051569 () Bool)

(assert (=> b!1534341 (=> (not res!1051569) (not e!854458))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534341 (= res!1051569 (validKeyInArray!0 (select (arr!49161 a!2792) i!951)))))

(declare-fun res!1051564 () Bool)

(assert (=> start!130874 (=> (not res!1051564) (not e!854458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130874 (= res!1051564 (validMask!0 mask!2480))))

(assert (=> start!130874 e!854458))

(assert (=> start!130874 true))

(declare-fun array_inv!38106 (array!101899) Bool)

(assert (=> start!130874 (array_inv!38106 a!2792)))

(declare-fun b!1534342 () Bool)

(declare-fun res!1051566 () Bool)

(assert (=> b!1534342 (=> (not res!1051566) (not e!854458))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1534342 (= res!1051566 (and (= (size!49712 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49712 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49712 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534343 () Bool)

(declare-fun res!1051565 () Bool)

(assert (=> b!1534343 (=> (not res!1051565) (not e!854458))))

(declare-datatypes ((List!35815 0))(
  ( (Nil!35812) (Cons!35811 (h!37257 (_ BitVec 64)) (t!50516 List!35815)) )
))
(declare-fun arrayNoDuplicates!0 (array!101899 (_ BitVec 32) List!35815) Bool)

(assert (=> b!1534343 (= res!1051565 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35812))))

(declare-fun b!1534344 () Bool)

(declare-fun res!1051563 () Bool)

(assert (=> b!1534344 (=> (not res!1051563) (not e!854458))))

(assert (=> b!1534344 (= res!1051563 (validKeyInArray!0 (select (arr!49161 a!2792) j!64)))))

(declare-fun b!1534345 () Bool)

(assert (=> b!1534345 (= e!854458 false)))

(declare-datatypes ((SeekEntryResult!13316 0))(
  ( (MissingZero!13316 (index!55658 (_ BitVec 32))) (Found!13316 (index!55659 (_ BitVec 32))) (Intermediate!13316 (undefined!14128 Bool) (index!55660 (_ BitVec 32)) (x!137417 (_ BitVec 32))) (Undefined!13316) (MissingVacant!13316 (index!55661 (_ BitVec 32))) )
))
(declare-fun lt!663787 () SeekEntryResult!13316)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101899 (_ BitVec 32)) SeekEntryResult!13316)

(assert (=> b!1534345 (= lt!663787 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49161 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130874 res!1051564) b!1534342))

(assert (= (and b!1534342 res!1051566) b!1534341))

(assert (= (and b!1534341 res!1051569) b!1534344))

(assert (= (and b!1534344 res!1051563) b!1534340))

(assert (= (and b!1534340 res!1051568) b!1534343))

(assert (= (and b!1534343 res!1051565) b!1534339))

(assert (= (and b!1534339 res!1051567) b!1534345))

(declare-fun m!1417039 () Bool)

(assert (=> b!1534344 m!1417039))

(assert (=> b!1534344 m!1417039))

(declare-fun m!1417041 () Bool)

(assert (=> b!1534344 m!1417041))

(assert (=> b!1534345 m!1417039))

(assert (=> b!1534345 m!1417039))

(declare-fun m!1417043 () Bool)

(assert (=> b!1534345 m!1417043))

(declare-fun m!1417045 () Bool)

(assert (=> b!1534343 m!1417045))

(declare-fun m!1417047 () Bool)

(assert (=> b!1534341 m!1417047))

(assert (=> b!1534341 m!1417047))

(declare-fun m!1417049 () Bool)

(assert (=> b!1534341 m!1417049))

(declare-fun m!1417051 () Bool)

(assert (=> b!1534340 m!1417051))

(declare-fun m!1417053 () Bool)

(assert (=> start!130874 m!1417053))

(declare-fun m!1417055 () Bool)

(assert (=> start!130874 m!1417055))

(declare-fun m!1417057 () Bool)

(assert (=> b!1534339 m!1417057))

(push 1)

(assert (not b!1534343))

(assert (not b!1534345))

(assert (not b!1534341))

(assert (not start!130874))

(assert (not b!1534344))

(assert (not b!1534340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

