; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131186 () Bool)

(assert start!131186)

(declare-fun res!1055568 () Bool)

(declare-fun e!855980 () Bool)

(assert (=> start!131186 (=> (not res!1055568) (not e!855980))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131186 (= res!1055568 (validMask!0 mask!2480))))

(assert (=> start!131186 e!855980))

(assert (=> start!131186 true))

(declare-datatypes ((array!102178 0))(
  ( (array!102179 (arr!49299 (Array (_ BitVec 32) (_ BitVec 64))) (size!49850 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102178)

(declare-fun array_inv!38244 (array!102178) Bool)

(assert (=> start!131186 (array_inv!38244 a!2792)))

(declare-fun b!1538450 () Bool)

(declare-fun res!1055567 () Bool)

(assert (=> b!1538450 (=> (not res!1055567) (not e!855980))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538450 (= res!1055567 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49850 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49850 a!2792)) (= (select (arr!49299 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538451 () Bool)

(declare-fun res!1055571 () Bool)

(assert (=> b!1538451 (=> (not res!1055571) (not e!855980))))

(declare-datatypes ((List!35953 0))(
  ( (Nil!35950) (Cons!35949 (h!37395 (_ BitVec 64)) (t!50654 List!35953)) )
))
(declare-fun arrayNoDuplicates!0 (array!102178 (_ BitVec 32) List!35953) Bool)

(assert (=> b!1538451 (= res!1055571 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35950))))

(declare-fun b!1538452 () Bool)

(assert (=> b!1538452 (= e!855980 false)))

(declare-fun lt!664837 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538452 (= lt!664837 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538453 () Bool)

(declare-fun res!1055569 () Bool)

(assert (=> b!1538453 (=> (not res!1055569) (not e!855980))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538453 (= res!1055569 (not (= (select (arr!49299 a!2792) index!463) (select (arr!49299 a!2792) j!64))))))

(declare-fun b!1538454 () Bool)

(declare-fun res!1055566 () Bool)

(assert (=> b!1538454 (=> (not res!1055566) (not e!855980))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538454 (= res!1055566 (validKeyInArray!0 (select (arr!49299 a!2792) i!951)))))

(declare-fun b!1538455 () Bool)

(declare-fun res!1055573 () Bool)

(assert (=> b!1538455 (=> (not res!1055573) (not e!855980))))

(assert (=> b!1538455 (= res!1055573 (and (= (size!49850 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49850 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49850 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538456 () Bool)

(declare-fun res!1055574 () Bool)

(assert (=> b!1538456 (=> (not res!1055574) (not e!855980))))

(assert (=> b!1538456 (= res!1055574 (validKeyInArray!0 (select (arr!49299 a!2792) j!64)))))

(declare-fun b!1538457 () Bool)

(declare-fun res!1055572 () Bool)

(assert (=> b!1538457 (=> (not res!1055572) (not e!855980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102178 (_ BitVec 32)) Bool)

(assert (=> b!1538457 (= res!1055572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538458 () Bool)

(declare-fun res!1055570 () Bool)

(assert (=> b!1538458 (=> (not res!1055570) (not e!855980))))

(declare-datatypes ((SeekEntryResult!13448 0))(
  ( (MissingZero!13448 (index!56186 (_ BitVec 32))) (Found!13448 (index!56187 (_ BitVec 32))) (Intermediate!13448 (undefined!14260 Bool) (index!56188 (_ BitVec 32)) (x!137920 (_ BitVec 32))) (Undefined!13448) (MissingVacant!13448 (index!56189 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102178 (_ BitVec 32)) SeekEntryResult!13448)

(assert (=> b!1538458 (= res!1055570 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49299 a!2792) j!64) a!2792 mask!2480) (Found!13448 j!64)))))

(assert (= (and start!131186 res!1055568) b!1538455))

(assert (= (and b!1538455 res!1055573) b!1538454))

(assert (= (and b!1538454 res!1055566) b!1538456))

(assert (= (and b!1538456 res!1055574) b!1538457))

(assert (= (and b!1538457 res!1055572) b!1538451))

(assert (= (and b!1538451 res!1055571) b!1538450))

(assert (= (and b!1538450 res!1055567) b!1538458))

(assert (= (and b!1538458 res!1055570) b!1538453))

(assert (= (and b!1538453 res!1055569) b!1538452))

(declare-fun m!1420917 () Bool)

(assert (=> b!1538450 m!1420917))

(declare-fun m!1420919 () Bool)

(assert (=> start!131186 m!1420919))

(declare-fun m!1420921 () Bool)

(assert (=> start!131186 m!1420921))

(declare-fun m!1420923 () Bool)

(assert (=> b!1538458 m!1420923))

(assert (=> b!1538458 m!1420923))

(declare-fun m!1420925 () Bool)

(assert (=> b!1538458 m!1420925))

(declare-fun m!1420927 () Bool)

(assert (=> b!1538452 m!1420927))

(declare-fun m!1420929 () Bool)

(assert (=> b!1538457 m!1420929))

(declare-fun m!1420931 () Bool)

(assert (=> b!1538451 m!1420931))

(declare-fun m!1420933 () Bool)

(assert (=> b!1538454 m!1420933))

(assert (=> b!1538454 m!1420933))

(declare-fun m!1420935 () Bool)

(assert (=> b!1538454 m!1420935))

(declare-fun m!1420937 () Bool)

(assert (=> b!1538453 m!1420937))

(assert (=> b!1538453 m!1420923))

(assert (=> b!1538456 m!1420923))

(assert (=> b!1538456 m!1420923))

(declare-fun m!1420939 () Bool)

(assert (=> b!1538456 m!1420939))

(push 1)

(assert (not b!1538451))

(assert (not b!1538457))

(assert (not b!1538458))

(assert (not b!1538452))

(assert (not start!131186))

(assert (not b!1538456))

(assert (not b!1538454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

