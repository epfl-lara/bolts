; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130778 () Bool)

(assert start!130778)

(declare-fun b!1533249 () Bool)

(declare-fun res!1050476 () Bool)

(declare-fun e!854170 () Bool)

(assert (=> b!1533249 (=> (not res!1050476) (not e!854170))))

(declare-datatypes ((array!101803 0))(
  ( (array!101804 (arr!49113 (Array (_ BitVec 32) (_ BitVec 64))) (size!49664 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101803)

(declare-datatypes ((List!35767 0))(
  ( (Nil!35764) (Cons!35763 (h!37209 (_ BitVec 64)) (t!50468 List!35767)) )
))
(declare-fun arrayNoDuplicates!0 (array!101803 (_ BitVec 32) List!35767) Bool)

(assert (=> b!1533249 (= res!1050476 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35764))))

(declare-fun res!1050477 () Bool)

(assert (=> start!130778 (=> (not res!1050477) (not e!854170))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130778 (= res!1050477 (validMask!0 mask!2480))))

(assert (=> start!130778 e!854170))

(assert (=> start!130778 true))

(declare-fun array_inv!38058 (array!101803) Bool)

(assert (=> start!130778 (array_inv!38058 a!2792)))

(declare-fun b!1533250 () Bool)

(declare-fun res!1050480 () Bool)

(assert (=> b!1533250 (=> (not res!1050480) (not e!854170))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533250 (= res!1050480 (validKeyInArray!0 (select (arr!49113 a!2792) j!64)))))

(declare-fun b!1533251 () Bool)

(declare-fun res!1050473 () Bool)

(assert (=> b!1533251 (=> (not res!1050473) (not e!854170))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533251 (= res!1050473 (and (= (size!49664 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49664 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49664 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533252 () Bool)

(declare-fun res!1050478 () Bool)

(assert (=> b!1533252 (=> (not res!1050478) (not e!854170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101803 (_ BitVec 32)) Bool)

(assert (=> b!1533252 (= res!1050478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533253 () Bool)

(declare-fun res!1050474 () Bool)

(assert (=> b!1533253 (=> (not res!1050474) (not e!854170))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533253 (= res!1050474 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49664 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49664 a!2792)) (= (select (arr!49113 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533254 () Bool)

(declare-fun res!1050479 () Bool)

(assert (=> b!1533254 (=> (not res!1050479) (not e!854170))))

(declare-datatypes ((SeekEntryResult!13268 0))(
  ( (MissingZero!13268 (index!55466 (_ BitVec 32))) (Found!13268 (index!55467 (_ BitVec 32))) (Intermediate!13268 (undefined!14080 Bool) (index!55468 (_ BitVec 32)) (x!137241 (_ BitVec 32))) (Undefined!13268) (MissingVacant!13268 (index!55469 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101803 (_ BitVec 32)) SeekEntryResult!13268)

(assert (=> b!1533254 (= res!1050479 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49113 a!2792) j!64) a!2792 mask!2480) (Found!13268 j!64)))))

(declare-fun b!1533255 () Bool)

(declare-fun res!1050475 () Bool)

(assert (=> b!1533255 (=> (not res!1050475) (not e!854170))))

(assert (=> b!1533255 (= res!1050475 (validKeyInArray!0 (select (arr!49113 a!2792) i!951)))))

(declare-fun b!1533256 () Bool)

(assert (=> b!1533256 (= e!854170 (and (= (select (arr!49113 a!2792) index!463) (select (arr!49113 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(assert (= (and start!130778 res!1050477) b!1533251))

(assert (= (and b!1533251 res!1050473) b!1533255))

(assert (= (and b!1533255 res!1050475) b!1533250))

(assert (= (and b!1533250 res!1050480) b!1533252))

(assert (= (and b!1533252 res!1050478) b!1533249))

(assert (= (and b!1533249 res!1050476) b!1533253))

(assert (= (and b!1533253 res!1050474) b!1533254))

(assert (= (and b!1533254 res!1050479) b!1533256))

(declare-fun m!1415993 () Bool)

(assert (=> b!1533254 m!1415993))

(assert (=> b!1533254 m!1415993))

(declare-fun m!1415995 () Bool)

(assert (=> b!1533254 m!1415995))

(assert (=> b!1533250 m!1415993))

(assert (=> b!1533250 m!1415993))

(declare-fun m!1415997 () Bool)

(assert (=> b!1533250 m!1415997))

(declare-fun m!1415999 () Bool)

(assert (=> b!1533255 m!1415999))

(assert (=> b!1533255 m!1415999))

(declare-fun m!1416001 () Bool)

(assert (=> b!1533255 m!1416001))

(declare-fun m!1416003 () Bool)

(assert (=> b!1533253 m!1416003))

(declare-fun m!1416005 () Bool)

(assert (=> b!1533256 m!1416005))

(assert (=> b!1533256 m!1415993))

(declare-fun m!1416007 () Bool)

(assert (=> start!130778 m!1416007))

(declare-fun m!1416009 () Bool)

(assert (=> start!130778 m!1416009))

(declare-fun m!1416011 () Bool)

(assert (=> b!1533252 m!1416011))

(declare-fun m!1416013 () Bool)

(assert (=> b!1533249 m!1416013))

(push 1)

(assert (not b!1533249))

(assert (not b!1533254))

(assert (not start!130778))

(assert (not b!1533250))

(assert (not b!1533252))

(assert (not b!1533255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

