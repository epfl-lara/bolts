; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130798 () Bool)

(assert start!130798)

(declare-fun b!1533482 () Bool)

(declare-fun res!1050706 () Bool)

(declare-fun e!854230 () Bool)

(assert (=> b!1533482 (=> (not res!1050706) (not e!854230))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101823 0))(
  ( (array!101824 (arr!49123 (Array (_ BitVec 32) (_ BitVec 64))) (size!49674 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101823)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533482 (= res!1050706 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49674 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49674 a!2792)) (= (select (arr!49123 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533483 () Bool)

(declare-fun res!1050713 () Bool)

(assert (=> b!1533483 (=> (not res!1050713) (not e!854230))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533483 (= res!1050713 (validKeyInArray!0 (select (arr!49123 a!2792) j!64)))))

(declare-fun b!1533484 () Bool)

(declare-fun res!1050707 () Bool)

(assert (=> b!1533484 (=> (not res!1050707) (not e!854230))))

(declare-datatypes ((List!35777 0))(
  ( (Nil!35774) (Cons!35773 (h!37219 (_ BitVec 64)) (t!50478 List!35777)) )
))
(declare-fun arrayNoDuplicates!0 (array!101823 (_ BitVec 32) List!35777) Bool)

(assert (=> b!1533484 (= res!1050707 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35774))))

(declare-fun b!1533485 () Bool)

(declare-fun res!1050712 () Bool)

(assert (=> b!1533485 (=> (not res!1050712) (not e!854230))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533485 (= res!1050712 (and (= (select (arr!49123 a!2792) index!463) (select (arr!49123 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49123 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533486 () Bool)

(declare-fun res!1050709 () Bool)

(assert (=> b!1533486 (=> (not res!1050709) (not e!854230))))

(declare-datatypes ((SeekEntryResult!13278 0))(
  ( (MissingZero!13278 (index!55506 (_ BitVec 32))) (Found!13278 (index!55507 (_ BitVec 32))) (Intermediate!13278 (undefined!14090 Bool) (index!55508 (_ BitVec 32)) (x!137283 (_ BitVec 32))) (Undefined!13278) (MissingVacant!13278 (index!55509 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101823 (_ BitVec 32)) SeekEntryResult!13278)

(assert (=> b!1533486 (= res!1050709 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49123 a!2792) j!64) a!2792 mask!2480) (Found!13278 j!64)))))

(declare-fun b!1533488 () Bool)

(declare-fun res!1050714 () Bool)

(assert (=> b!1533488 (=> (not res!1050714) (not e!854230))))

(assert (=> b!1533488 (= res!1050714 (and (= (size!49674 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49674 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49674 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050711 () Bool)

(assert (=> start!130798 (=> (not res!1050711) (not e!854230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130798 (= res!1050711 (validMask!0 mask!2480))))

(assert (=> start!130798 e!854230))

(assert (=> start!130798 true))

(declare-fun array_inv!38068 (array!101823) Bool)

(assert (=> start!130798 (array_inv!38068 a!2792)))

(declare-fun b!1533487 () Bool)

(declare-fun res!1050710 () Bool)

(assert (=> b!1533487 (=> (not res!1050710) (not e!854230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101823 (_ BitVec 32)) Bool)

(assert (=> b!1533487 (= res!1050710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533489 () Bool)

(assert (=> b!1533489 (= e!854230 (not (validKeyInArray!0 (select (store (arr!49123 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))))

(declare-fun b!1533490 () Bool)

(declare-fun res!1050708 () Bool)

(assert (=> b!1533490 (=> (not res!1050708) (not e!854230))))

(assert (=> b!1533490 (= res!1050708 (validKeyInArray!0 (select (arr!49123 a!2792) i!951)))))

(assert (= (and start!130798 res!1050711) b!1533488))

(assert (= (and b!1533488 res!1050714) b!1533490))

(assert (= (and b!1533490 res!1050708) b!1533483))

(assert (= (and b!1533483 res!1050713) b!1533487))

(assert (= (and b!1533487 res!1050710) b!1533484))

(assert (= (and b!1533484 res!1050707) b!1533482))

(assert (= (and b!1533482 res!1050706) b!1533486))

(assert (= (and b!1533486 res!1050709) b!1533485))

(assert (= (and b!1533485 res!1050712) b!1533489))

(declare-fun m!1416219 () Bool)

(assert (=> b!1533482 m!1416219))

(declare-fun m!1416221 () Bool)

(assert (=> b!1533487 m!1416221))

(declare-fun m!1416223 () Bool)

(assert (=> b!1533489 m!1416223))

(declare-fun m!1416225 () Bool)

(assert (=> b!1533489 m!1416225))

(assert (=> b!1533489 m!1416225))

(declare-fun m!1416227 () Bool)

(assert (=> b!1533489 m!1416227))

(declare-fun m!1416229 () Bool)

(assert (=> start!130798 m!1416229))

(declare-fun m!1416231 () Bool)

(assert (=> start!130798 m!1416231))

(declare-fun m!1416233 () Bool)

(assert (=> b!1533486 m!1416233))

(assert (=> b!1533486 m!1416233))

(declare-fun m!1416235 () Bool)

(assert (=> b!1533486 m!1416235))

(declare-fun m!1416237 () Bool)

(assert (=> b!1533485 m!1416237))

(assert (=> b!1533485 m!1416233))

(assert (=> b!1533485 m!1416223))

(declare-fun m!1416239 () Bool)

(assert (=> b!1533485 m!1416239))

(assert (=> b!1533483 m!1416233))

(assert (=> b!1533483 m!1416233))

(declare-fun m!1416241 () Bool)

(assert (=> b!1533483 m!1416241))

(declare-fun m!1416243 () Bool)

(assert (=> b!1533490 m!1416243))

(assert (=> b!1533490 m!1416243))

(declare-fun m!1416245 () Bool)

(assert (=> b!1533490 m!1416245))

(declare-fun m!1416247 () Bool)

(assert (=> b!1533484 m!1416247))

(push 1)

(assert (not b!1533486))

(assert (not b!1533490))

