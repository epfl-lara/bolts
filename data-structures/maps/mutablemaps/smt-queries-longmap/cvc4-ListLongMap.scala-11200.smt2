; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130868 () Bool)

(assert start!130868)

(declare-fun b!1534275 () Bool)

(declare-fun res!1051501 () Bool)

(declare-fun e!854441 () Bool)

(assert (=> b!1534275 (=> (not res!1051501) (not e!854441))))

(declare-datatypes ((array!101893 0))(
  ( (array!101894 (arr!49158 (Array (_ BitVec 32) (_ BitVec 64))) (size!49709 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101893)

(declare-datatypes ((List!35812 0))(
  ( (Nil!35809) (Cons!35808 (h!37254 (_ BitVec 64)) (t!50513 List!35812)) )
))
(declare-fun arrayNoDuplicates!0 (array!101893 (_ BitVec 32) List!35812) Bool)

(assert (=> b!1534275 (= res!1051501 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35809))))

(declare-fun b!1534276 () Bool)

(declare-fun res!1051503 () Bool)

(assert (=> b!1534276 (=> (not res!1051503) (not e!854441))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534276 (= res!1051503 (validKeyInArray!0 (select (arr!49158 a!2792) i!951)))))

(declare-fun b!1534277 () Bool)

(declare-fun res!1051504 () Bool)

(assert (=> b!1534277 (=> (not res!1051504) (not e!854441))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534277 (= res!1051504 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49709 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49709 a!2792)) (= (select (arr!49158 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534278 () Bool)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1534278 (= e!854441 (and (not (= (select (arr!49158 a!2792) index!463) (select (arr!49158 a!2792) j!64))) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1534279 () Bool)

(declare-fun res!1051499 () Bool)

(assert (=> b!1534279 (=> (not res!1051499) (not e!854441))))

(declare-datatypes ((SeekEntryResult!13313 0))(
  ( (MissingZero!13313 (index!55646 (_ BitVec 32))) (Found!13313 (index!55647 (_ BitVec 32))) (Intermediate!13313 (undefined!14125 Bool) (index!55648 (_ BitVec 32)) (x!137406 (_ BitVec 32))) (Undefined!13313) (MissingVacant!13313 (index!55649 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101893 (_ BitVec 32)) SeekEntryResult!13313)

(assert (=> b!1534279 (= res!1051499 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49158 a!2792) j!64) a!2792 mask!2480) (Found!13313 j!64)))))

(declare-fun res!1051506 () Bool)

(assert (=> start!130868 (=> (not res!1051506) (not e!854441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130868 (= res!1051506 (validMask!0 mask!2480))))

(assert (=> start!130868 e!854441))

(assert (=> start!130868 true))

(declare-fun array_inv!38103 (array!101893) Bool)

(assert (=> start!130868 (array_inv!38103 a!2792)))

(declare-fun b!1534280 () Bool)

(declare-fun res!1051502 () Bool)

(assert (=> b!1534280 (=> (not res!1051502) (not e!854441))))

(assert (=> b!1534280 (= res!1051502 (validKeyInArray!0 (select (arr!49158 a!2792) j!64)))))

(declare-fun b!1534281 () Bool)

(declare-fun res!1051505 () Bool)

(assert (=> b!1534281 (=> (not res!1051505) (not e!854441))))

(assert (=> b!1534281 (= res!1051505 (and (= (size!49709 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49709 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49709 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534282 () Bool)

(declare-fun res!1051500 () Bool)

(assert (=> b!1534282 (=> (not res!1051500) (not e!854441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101893 (_ BitVec 32)) Bool)

(assert (=> b!1534282 (= res!1051500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130868 res!1051506) b!1534281))

(assert (= (and b!1534281 res!1051505) b!1534276))

(assert (= (and b!1534276 res!1051503) b!1534280))

(assert (= (and b!1534280 res!1051502) b!1534282))

(assert (= (and b!1534282 res!1051500) b!1534275))

(assert (= (and b!1534275 res!1051501) b!1534277))

(assert (= (and b!1534277 res!1051504) b!1534279))

(assert (= (and b!1534279 res!1051499) b!1534278))

(declare-fun m!1416977 () Bool)

(assert (=> b!1534279 m!1416977))

(assert (=> b!1534279 m!1416977))

(declare-fun m!1416979 () Bool)

(assert (=> b!1534279 m!1416979))

(declare-fun m!1416981 () Bool)

(assert (=> b!1534278 m!1416981))

(assert (=> b!1534278 m!1416977))

(assert (=> b!1534280 m!1416977))

(assert (=> b!1534280 m!1416977))

(declare-fun m!1416983 () Bool)

(assert (=> b!1534280 m!1416983))

(declare-fun m!1416985 () Bool)

(assert (=> b!1534276 m!1416985))

(assert (=> b!1534276 m!1416985))

(declare-fun m!1416987 () Bool)

(assert (=> b!1534276 m!1416987))

(declare-fun m!1416989 () Bool)

(assert (=> b!1534277 m!1416989))

(declare-fun m!1416991 () Bool)

(assert (=> b!1534282 m!1416991))

(declare-fun m!1416993 () Bool)

(assert (=> start!130868 m!1416993))

(declare-fun m!1416995 () Bool)

(assert (=> start!130868 m!1416995))

(declare-fun m!1416997 () Bool)

(assert (=> b!1534275 m!1416997))

(push 1)

(assert (not b!1534279))

(assert (not start!130868))

(assert (not b!1534282))

(assert (not b!1534275))

(assert (not b!1534276))

(assert (not b!1534280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

