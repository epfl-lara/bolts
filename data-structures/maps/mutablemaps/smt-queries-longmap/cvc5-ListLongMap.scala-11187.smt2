; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130786 () Bool)

(assert start!130786)

(declare-fun b!1533336 () Bool)

(declare-fun res!1050561 () Bool)

(declare-fun e!854194 () Bool)

(assert (=> b!1533336 (=> (not res!1050561) (not e!854194))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101811 0))(
  ( (array!101812 (arr!49117 (Array (_ BitVec 32) (_ BitVec 64))) (size!49668 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101811)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13272 0))(
  ( (MissingZero!13272 (index!55482 (_ BitVec 32))) (Found!13272 (index!55483 (_ BitVec 32))) (Intermediate!13272 (undefined!14084 Bool) (index!55484 (_ BitVec 32)) (x!137261 (_ BitVec 32))) (Undefined!13272) (MissingVacant!13272 (index!55485 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101811 (_ BitVec 32)) SeekEntryResult!13272)

(assert (=> b!1533336 (= res!1050561 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49117 a!2792) j!64) a!2792 mask!2480) (Found!13272 j!64)))))

(declare-fun b!1533337 () Bool)

(declare-fun res!1050564 () Bool)

(assert (=> b!1533337 (=> (not res!1050564) (not e!854194))))

(assert (=> b!1533337 (= res!1050564 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49668 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49668 a!2792)) (= (select (arr!49117 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533338 () Bool)

(declare-fun res!1050566 () Bool)

(assert (=> b!1533338 (=> (not res!1050566) (not e!854194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533338 (= res!1050566 (validKeyInArray!0 (select (arr!49117 a!2792) j!64)))))

(declare-fun b!1533339 () Bool)

(declare-fun res!1050563 () Bool)

(assert (=> b!1533339 (=> (not res!1050563) (not e!854194))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533339 (= res!1050563 (validKeyInArray!0 (select (arr!49117 a!2792) i!951)))))

(declare-fun res!1050565 () Bool)

(assert (=> start!130786 (=> (not res!1050565) (not e!854194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130786 (= res!1050565 (validMask!0 mask!2480))))

(assert (=> start!130786 e!854194))

(assert (=> start!130786 true))

(declare-fun array_inv!38062 (array!101811) Bool)

(assert (=> start!130786 (array_inv!38062 a!2792)))

(declare-fun b!1533340 () Bool)

(assert (=> b!1533340 (= e!854194 (and (= (select (arr!49117 a!2792) index!463) (select (arr!49117 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533341 () Bool)

(declare-fun res!1050567 () Bool)

(assert (=> b!1533341 (=> (not res!1050567) (not e!854194))))

(declare-datatypes ((List!35771 0))(
  ( (Nil!35768) (Cons!35767 (h!37213 (_ BitVec 64)) (t!50472 List!35771)) )
))
(declare-fun arrayNoDuplicates!0 (array!101811 (_ BitVec 32) List!35771) Bool)

(assert (=> b!1533341 (= res!1050567 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35768))))

(declare-fun b!1533342 () Bool)

(declare-fun res!1050562 () Bool)

(assert (=> b!1533342 (=> (not res!1050562) (not e!854194))))

(assert (=> b!1533342 (= res!1050562 (and (= (size!49668 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49668 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49668 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533343 () Bool)

(declare-fun res!1050560 () Bool)

(assert (=> b!1533343 (=> (not res!1050560) (not e!854194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101811 (_ BitVec 32)) Bool)

(assert (=> b!1533343 (= res!1050560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130786 res!1050565) b!1533342))

(assert (= (and b!1533342 res!1050562) b!1533339))

(assert (= (and b!1533339 res!1050563) b!1533338))

(assert (= (and b!1533338 res!1050566) b!1533343))

(assert (= (and b!1533343 res!1050560) b!1533341))

(assert (= (and b!1533341 res!1050567) b!1533337))

(assert (= (and b!1533337 res!1050564) b!1533336))

(assert (= (and b!1533336 res!1050561) b!1533340))

(declare-fun m!1416075 () Bool)

(assert (=> b!1533338 m!1416075))

(assert (=> b!1533338 m!1416075))

(declare-fun m!1416077 () Bool)

(assert (=> b!1533338 m!1416077))

(declare-fun m!1416079 () Bool)

(assert (=> b!1533339 m!1416079))

(assert (=> b!1533339 m!1416079))

(declare-fun m!1416081 () Bool)

(assert (=> b!1533339 m!1416081))

(assert (=> b!1533336 m!1416075))

(assert (=> b!1533336 m!1416075))

(declare-fun m!1416083 () Bool)

(assert (=> b!1533336 m!1416083))

(declare-fun m!1416085 () Bool)

(assert (=> b!1533340 m!1416085))

(assert (=> b!1533340 m!1416075))

(declare-fun m!1416087 () Bool)

(assert (=> b!1533337 m!1416087))

(declare-fun m!1416089 () Bool)

(assert (=> b!1533341 m!1416089))

(declare-fun m!1416091 () Bool)

(assert (=> start!130786 m!1416091))

(declare-fun m!1416093 () Bool)

(assert (=> start!130786 m!1416093))

(declare-fun m!1416095 () Bool)

(assert (=> b!1533343 m!1416095))

(push 1)

(assert (not b!1533343))

(assert (not b!1533339))

(assert (not start!130786))

(assert (not b!1533336))

(assert (not b!1533341))

(assert (not b!1533338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

