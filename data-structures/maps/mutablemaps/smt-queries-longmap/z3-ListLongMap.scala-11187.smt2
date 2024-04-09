; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130788 () Bool)

(assert start!130788)

(declare-fun res!1050585 () Bool)

(declare-fun e!854200 () Bool)

(assert (=> start!130788 (=> (not res!1050585) (not e!854200))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130788 (= res!1050585 (validMask!0 mask!2480))))

(assert (=> start!130788 e!854200))

(assert (=> start!130788 true))

(declare-datatypes ((array!101813 0))(
  ( (array!101814 (arr!49118 (Array (_ BitVec 32) (_ BitVec 64))) (size!49669 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101813)

(declare-fun array_inv!38063 (array!101813) Bool)

(assert (=> start!130788 (array_inv!38063 a!2792)))

(declare-fun b!1533360 () Bool)

(declare-fun res!1050584 () Bool)

(assert (=> b!1533360 (=> (not res!1050584) (not e!854200))))

(declare-datatypes ((List!35772 0))(
  ( (Nil!35769) (Cons!35768 (h!37214 (_ BitVec 64)) (t!50473 List!35772)) )
))
(declare-fun arrayNoDuplicates!0 (array!101813 (_ BitVec 32) List!35772) Bool)

(assert (=> b!1533360 (= res!1050584 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35769))))

(declare-fun b!1533361 () Bool)

(declare-fun res!1050588 () Bool)

(assert (=> b!1533361 (=> (not res!1050588) (not e!854200))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533361 (= res!1050588 (validKeyInArray!0 (select (arr!49118 a!2792) i!951)))))

(declare-fun b!1533362 () Bool)

(declare-fun res!1050590 () Bool)

(assert (=> b!1533362 (=> (not res!1050590) (not e!854200))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1533362 (= res!1050590 (validKeyInArray!0 (select (arr!49118 a!2792) j!64)))))

(declare-fun b!1533363 () Bool)

(declare-fun res!1050589 () Bool)

(assert (=> b!1533363 (=> (not res!1050589) (not e!854200))))

(assert (=> b!1533363 (= res!1050589 (and (= (size!49669 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49669 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49669 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533364 () Bool)

(declare-fun res!1050591 () Bool)

(assert (=> b!1533364 (=> (not res!1050591) (not e!854200))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13273 0))(
  ( (MissingZero!13273 (index!55486 (_ BitVec 32))) (Found!13273 (index!55487 (_ BitVec 32))) (Intermediate!13273 (undefined!14085 Bool) (index!55488 (_ BitVec 32)) (x!137262 (_ BitVec 32))) (Undefined!13273) (MissingVacant!13273 (index!55489 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101813 (_ BitVec 32)) SeekEntryResult!13273)

(assert (=> b!1533364 (= res!1050591 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49118 a!2792) j!64) a!2792 mask!2480) (Found!13273 j!64)))))

(declare-fun b!1533365 () Bool)

(assert (=> b!1533365 (= e!854200 (and (= (select (arr!49118 a!2792) index!463) (select (arr!49118 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533366 () Bool)

(declare-fun res!1050586 () Bool)

(assert (=> b!1533366 (=> (not res!1050586) (not e!854200))))

(assert (=> b!1533366 (= res!1050586 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49669 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49669 a!2792)) (= (select (arr!49118 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533367 () Bool)

(declare-fun res!1050587 () Bool)

(assert (=> b!1533367 (=> (not res!1050587) (not e!854200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101813 (_ BitVec 32)) Bool)

(assert (=> b!1533367 (= res!1050587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130788 res!1050585) b!1533363))

(assert (= (and b!1533363 res!1050589) b!1533361))

(assert (= (and b!1533361 res!1050588) b!1533362))

(assert (= (and b!1533362 res!1050590) b!1533367))

(assert (= (and b!1533367 res!1050587) b!1533360))

(assert (= (and b!1533360 res!1050584) b!1533366))

(assert (= (and b!1533366 res!1050586) b!1533364))

(assert (= (and b!1533364 res!1050591) b!1533365))

(declare-fun m!1416097 () Bool)

(assert (=> b!1533365 m!1416097))

(declare-fun m!1416099 () Bool)

(assert (=> b!1533365 m!1416099))

(assert (=> b!1533362 m!1416099))

(assert (=> b!1533362 m!1416099))

(declare-fun m!1416101 () Bool)

(assert (=> b!1533362 m!1416101))

(declare-fun m!1416103 () Bool)

(assert (=> b!1533361 m!1416103))

(assert (=> b!1533361 m!1416103))

(declare-fun m!1416105 () Bool)

(assert (=> b!1533361 m!1416105))

(declare-fun m!1416107 () Bool)

(assert (=> b!1533360 m!1416107))

(assert (=> b!1533364 m!1416099))

(assert (=> b!1533364 m!1416099))

(declare-fun m!1416109 () Bool)

(assert (=> b!1533364 m!1416109))

(declare-fun m!1416111 () Bool)

(assert (=> b!1533366 m!1416111))

(declare-fun m!1416113 () Bool)

(assert (=> b!1533367 m!1416113))

(declare-fun m!1416115 () Bool)

(assert (=> start!130788 m!1416115))

(declare-fun m!1416117 () Bool)

(assert (=> start!130788 m!1416117))

(check-sat (not b!1533361) (not start!130788) (not b!1533364) (not b!1533360) (not b!1533362) (not b!1533367))
(check-sat)
