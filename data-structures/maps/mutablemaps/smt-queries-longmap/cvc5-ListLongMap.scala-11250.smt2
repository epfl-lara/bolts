; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131200 () Bool)

(assert start!131200)

(declare-fun b!1538639 () Bool)

(declare-fun res!1055760 () Bool)

(declare-fun e!856022 () Bool)

(assert (=> b!1538639 (=> (not res!1055760) (not e!856022))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((array!102192 0))(
  ( (array!102193 (arr!49306 (Array (_ BitVec 32) (_ BitVec 64))) (size!49857 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102192)

(assert (=> b!1538639 (= res!1055760 (not (= (select (arr!49306 a!2792) index!463) (select (arr!49306 a!2792) j!64))))))

(declare-fun b!1538640 () Bool)

(declare-fun res!1055759 () Bool)

(assert (=> b!1538640 (=> (not res!1055759) (not e!856022))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538640 (= res!1055759 (and (= (size!49857 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49857 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49857 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538641 () Bool)

(assert (=> b!1538641 (= e!856022 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664858 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538641 (= lt!664858 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538642 () Bool)

(declare-fun res!1055758 () Bool)

(assert (=> b!1538642 (=> (not res!1055758) (not e!856022))))

(declare-datatypes ((List!35960 0))(
  ( (Nil!35957) (Cons!35956 (h!37402 (_ BitVec 64)) (t!50661 List!35960)) )
))
(declare-fun arrayNoDuplicates!0 (array!102192 (_ BitVec 32) List!35960) Bool)

(assert (=> b!1538642 (= res!1055758 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35957))))

(declare-fun b!1538643 () Bool)

(declare-fun res!1055755 () Bool)

(assert (=> b!1538643 (=> (not res!1055755) (not e!856022))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13455 0))(
  ( (MissingZero!13455 (index!56214 (_ BitVec 32))) (Found!13455 (index!56215 (_ BitVec 32))) (Intermediate!13455 (undefined!14267 Bool) (index!56216 (_ BitVec 32)) (x!137951 (_ BitVec 32))) (Undefined!13455) (MissingVacant!13455 (index!56217 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102192 (_ BitVec 32)) SeekEntryResult!13455)

(assert (=> b!1538643 (= res!1055755 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49306 a!2792) j!64) a!2792 mask!2480) (Found!13455 j!64)))))

(declare-fun res!1055761 () Bool)

(assert (=> start!131200 (=> (not res!1055761) (not e!856022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131200 (= res!1055761 (validMask!0 mask!2480))))

(assert (=> start!131200 e!856022))

(assert (=> start!131200 true))

(declare-fun array_inv!38251 (array!102192) Bool)

(assert (=> start!131200 (array_inv!38251 a!2792)))

(declare-fun b!1538644 () Bool)

(declare-fun res!1055763 () Bool)

(assert (=> b!1538644 (=> (not res!1055763) (not e!856022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538644 (= res!1055763 (validKeyInArray!0 (select (arr!49306 a!2792) i!951)))))

(declare-fun b!1538645 () Bool)

(declare-fun res!1055757 () Bool)

(assert (=> b!1538645 (=> (not res!1055757) (not e!856022))))

(assert (=> b!1538645 (= res!1055757 (validKeyInArray!0 (select (arr!49306 a!2792) j!64)))))

(declare-fun b!1538646 () Bool)

(declare-fun res!1055762 () Bool)

(assert (=> b!1538646 (=> (not res!1055762) (not e!856022))))

(assert (=> b!1538646 (= res!1055762 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49857 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49857 a!2792)) (= (select (arr!49306 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538647 () Bool)

(declare-fun res!1055756 () Bool)

(assert (=> b!1538647 (=> (not res!1055756) (not e!856022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102192 (_ BitVec 32)) Bool)

(assert (=> b!1538647 (= res!1055756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131200 res!1055761) b!1538640))

(assert (= (and b!1538640 res!1055759) b!1538644))

(assert (= (and b!1538644 res!1055763) b!1538645))

(assert (= (and b!1538645 res!1055757) b!1538647))

(assert (= (and b!1538647 res!1055756) b!1538642))

(assert (= (and b!1538642 res!1055758) b!1538646))

(assert (= (and b!1538646 res!1055762) b!1538643))

(assert (= (and b!1538643 res!1055755) b!1538639))

(assert (= (and b!1538639 res!1055760) b!1538641))

(declare-fun m!1421085 () Bool)

(assert (=> b!1538645 m!1421085))

(assert (=> b!1538645 m!1421085))

(declare-fun m!1421087 () Bool)

(assert (=> b!1538645 m!1421087))

(declare-fun m!1421089 () Bool)

(assert (=> b!1538642 m!1421089))

(assert (=> b!1538643 m!1421085))

(assert (=> b!1538643 m!1421085))

(declare-fun m!1421091 () Bool)

(assert (=> b!1538643 m!1421091))

(declare-fun m!1421093 () Bool)

(assert (=> b!1538647 m!1421093))

(declare-fun m!1421095 () Bool)

(assert (=> b!1538646 m!1421095))

(declare-fun m!1421097 () Bool)

(assert (=> b!1538641 m!1421097))

(declare-fun m!1421099 () Bool)

(assert (=> b!1538644 m!1421099))

(assert (=> b!1538644 m!1421099))

(declare-fun m!1421101 () Bool)

(assert (=> b!1538644 m!1421101))

(declare-fun m!1421103 () Bool)

(assert (=> b!1538639 m!1421103))

(assert (=> b!1538639 m!1421085))

(declare-fun m!1421105 () Bool)

(assert (=> start!131200 m!1421105))

(declare-fun m!1421107 () Bool)

(assert (=> start!131200 m!1421107))

(push 1)

(assert (not b!1538645))

(assert (not b!1538644))

(assert (not b!1538643))

(assert (not b!1538647))

(assert (not start!131200))

(assert (not b!1538641))

(assert (not b!1538642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

