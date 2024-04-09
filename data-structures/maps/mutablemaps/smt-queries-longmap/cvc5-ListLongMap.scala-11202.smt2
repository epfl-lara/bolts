; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130876 () Bool)

(assert start!130876)

(declare-fun b!1534366 () Bool)

(declare-fun res!1051595 () Bool)

(declare-fun e!854468 () Bool)

(assert (=> b!1534366 (=> (not res!1051595) (not e!854468))))

(declare-datatypes ((array!101901 0))(
  ( (array!101902 (arr!49162 (Array (_ BitVec 32) (_ BitVec 64))) (size!49713 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101901)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101901 (_ BitVec 32)) Bool)

(assert (=> b!1534366 (= res!1051595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1051593 () Bool)

(assert (=> start!130876 (=> (not res!1051593) (not e!854468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130876 (= res!1051593 (validMask!0 mask!2480))))

(assert (=> start!130876 e!854468))

(assert (=> start!130876 true))

(declare-fun array_inv!38107 (array!101901) Bool)

(assert (=> start!130876 (array_inv!38107 a!2792)))

(declare-fun b!1534367 () Bool)

(declare-fun e!854466 () Bool)

(assert (=> b!1534367 (= e!854468 e!854466)))

(declare-fun res!1051598 () Bool)

(assert (=> b!1534367 (=> (not res!1051598) (not e!854466))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663792 () (_ BitVec 32))

(assert (=> b!1534367 (= res!1051598 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663792 #b00000000000000000000000000000000) (bvslt lt!663792 (size!49713 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534367 (= lt!663792 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534368 () Bool)

(declare-fun res!1051596 () Bool)

(assert (=> b!1534368 (=> (not res!1051596) (not e!854468))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534368 (= res!1051596 (and (= (size!49713 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49713 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49713 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534369 () Bool)

(declare-fun res!1051594 () Bool)

(assert (=> b!1534369 (=> (not res!1051594) (not e!854468))))

(declare-datatypes ((List!35816 0))(
  ( (Nil!35813) (Cons!35812 (h!37258 (_ BitVec 64)) (t!50517 List!35816)) )
))
(declare-fun arrayNoDuplicates!0 (array!101901 (_ BitVec 32) List!35816) Bool)

(assert (=> b!1534369 (= res!1051594 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35813))))

(declare-fun b!1534370 () Bool)

(declare-fun res!1051597 () Bool)

(assert (=> b!1534370 (=> (not res!1051597) (not e!854468))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13317 0))(
  ( (MissingZero!13317 (index!55662 (_ BitVec 32))) (Found!13317 (index!55663 (_ BitVec 32))) (Intermediate!13317 (undefined!14129 Bool) (index!55664 (_ BitVec 32)) (x!137426 (_ BitVec 32))) (Undefined!13317) (MissingVacant!13317 (index!55665 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101901 (_ BitVec 32)) SeekEntryResult!13317)

(assert (=> b!1534370 (= res!1051597 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49162 a!2792) j!64) a!2792 mask!2480) (Found!13317 j!64)))))

(declare-fun b!1534371 () Bool)

(assert (=> b!1534371 (= e!854466 false)))

(declare-fun lt!663793 () SeekEntryResult!13317)

(assert (=> b!1534371 (= lt!663793 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663792 vacantIndex!5 (select (arr!49162 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534372 () Bool)

(declare-fun res!1051599 () Bool)

(assert (=> b!1534372 (=> (not res!1051599) (not e!854468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534372 (= res!1051599 (validKeyInArray!0 (select (arr!49162 a!2792) i!951)))))

(declare-fun b!1534373 () Bool)

(declare-fun res!1051591 () Bool)

(assert (=> b!1534373 (=> (not res!1051591) (not e!854468))))

(assert (=> b!1534373 (= res!1051591 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49713 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49713 a!2792)) (= (select (arr!49162 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534374 () Bool)

(declare-fun res!1051592 () Bool)

(assert (=> b!1534374 (=> (not res!1051592) (not e!854468))))

(assert (=> b!1534374 (= res!1051592 (not (= (select (arr!49162 a!2792) index!463) (select (arr!49162 a!2792) j!64))))))

(declare-fun b!1534375 () Bool)

(declare-fun res!1051590 () Bool)

(assert (=> b!1534375 (=> (not res!1051590) (not e!854468))))

(assert (=> b!1534375 (= res!1051590 (validKeyInArray!0 (select (arr!49162 a!2792) j!64)))))

(assert (= (and start!130876 res!1051593) b!1534368))

(assert (= (and b!1534368 res!1051596) b!1534372))

(assert (= (and b!1534372 res!1051599) b!1534375))

(assert (= (and b!1534375 res!1051590) b!1534366))

(assert (= (and b!1534366 res!1051595) b!1534369))

(assert (= (and b!1534369 res!1051594) b!1534373))

(assert (= (and b!1534373 res!1051591) b!1534370))

(assert (= (and b!1534370 res!1051597) b!1534374))

(assert (= (and b!1534374 res!1051592) b!1534367))

(assert (= (and b!1534367 res!1051598) b!1534371))

(declare-fun m!1417059 () Bool)

(assert (=> b!1534369 m!1417059))

(declare-fun m!1417061 () Bool)

(assert (=> b!1534366 m!1417061))

(declare-fun m!1417063 () Bool)

(assert (=> b!1534367 m!1417063))

(declare-fun m!1417065 () Bool)

(assert (=> b!1534373 m!1417065))

(declare-fun m!1417067 () Bool)

(assert (=> start!130876 m!1417067))

(declare-fun m!1417069 () Bool)

(assert (=> start!130876 m!1417069))

(declare-fun m!1417071 () Bool)

(assert (=> b!1534372 m!1417071))

(assert (=> b!1534372 m!1417071))

(declare-fun m!1417073 () Bool)

(assert (=> b!1534372 m!1417073))

(declare-fun m!1417075 () Bool)

(assert (=> b!1534370 m!1417075))

(assert (=> b!1534370 m!1417075))

(declare-fun m!1417077 () Bool)

(assert (=> b!1534370 m!1417077))

(assert (=> b!1534375 m!1417075))

(assert (=> b!1534375 m!1417075))

(declare-fun m!1417079 () Bool)

(assert (=> b!1534375 m!1417079))

(assert (=> b!1534371 m!1417075))

(assert (=> b!1534371 m!1417075))

(declare-fun m!1417081 () Bool)

(assert (=> b!1534371 m!1417081))

(declare-fun m!1417083 () Bool)

(assert (=> b!1534374 m!1417083))

(assert (=> b!1534374 m!1417075))

(push 1)

