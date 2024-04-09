; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131172 () Bool)

(assert start!131172)

(declare-fun b!1538261 () Bool)

(declare-fun res!1055379 () Bool)

(declare-fun e!855938 () Bool)

(assert (=> b!1538261 (=> (not res!1055379) (not e!855938))))

(declare-datatypes ((array!102164 0))(
  ( (array!102165 (arr!49292 (Array (_ BitVec 32) (_ BitVec 64))) (size!49843 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102164)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538261 (= res!1055379 (and (= (size!49843 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49843 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49843 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1055383 () Bool)

(assert (=> start!131172 (=> (not res!1055383) (not e!855938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131172 (= res!1055383 (validMask!0 mask!2480))))

(assert (=> start!131172 e!855938))

(assert (=> start!131172 true))

(declare-fun array_inv!38237 (array!102164) Bool)

(assert (=> start!131172 (array_inv!38237 a!2792)))

(declare-fun b!1538262 () Bool)

(declare-fun res!1055380 () Bool)

(assert (=> b!1538262 (=> (not res!1055380) (not e!855938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102164 (_ BitVec 32)) Bool)

(assert (=> b!1538262 (= res!1055380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538263 () Bool)

(assert (=> b!1538263 (= e!855938 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun lt!664816 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538263 (= lt!664816 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538264 () Bool)

(declare-fun res!1055378 () Bool)

(assert (=> b!1538264 (=> (not res!1055378) (not e!855938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538264 (= res!1055378 (validKeyInArray!0 (select (arr!49292 a!2792) j!64)))))

(declare-fun b!1538265 () Bool)

(declare-fun res!1055377 () Bool)

(assert (=> b!1538265 (=> (not res!1055377) (not e!855938))))

(assert (=> b!1538265 (= res!1055377 (not (= (select (arr!49292 a!2792) index!463) (select (arr!49292 a!2792) j!64))))))

(declare-fun b!1538266 () Bool)

(declare-fun res!1055382 () Bool)

(assert (=> b!1538266 (=> (not res!1055382) (not e!855938))))

(assert (=> b!1538266 (= res!1055382 (validKeyInArray!0 (select (arr!49292 a!2792) i!951)))))

(declare-fun b!1538267 () Bool)

(declare-fun res!1055381 () Bool)

(assert (=> b!1538267 (=> (not res!1055381) (not e!855938))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538267 (= res!1055381 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49843 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49843 a!2792)) (= (select (arr!49292 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538268 () Bool)

(declare-fun res!1055384 () Bool)

(assert (=> b!1538268 (=> (not res!1055384) (not e!855938))))

(declare-datatypes ((List!35946 0))(
  ( (Nil!35943) (Cons!35942 (h!37388 (_ BitVec 64)) (t!50647 List!35946)) )
))
(declare-fun arrayNoDuplicates!0 (array!102164 (_ BitVec 32) List!35946) Bool)

(assert (=> b!1538268 (= res!1055384 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35943))))

(declare-fun b!1538269 () Bool)

(declare-fun res!1055385 () Bool)

(assert (=> b!1538269 (=> (not res!1055385) (not e!855938))))

(declare-datatypes ((SeekEntryResult!13441 0))(
  ( (MissingZero!13441 (index!56158 (_ BitVec 32))) (Found!13441 (index!56159 (_ BitVec 32))) (Intermediate!13441 (undefined!14253 Bool) (index!56160 (_ BitVec 32)) (x!137897 (_ BitVec 32))) (Undefined!13441) (MissingVacant!13441 (index!56161 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102164 (_ BitVec 32)) SeekEntryResult!13441)

(assert (=> b!1538269 (= res!1055385 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49292 a!2792) j!64) a!2792 mask!2480) (Found!13441 j!64)))))

(assert (= (and start!131172 res!1055383) b!1538261))

(assert (= (and b!1538261 res!1055379) b!1538266))

(assert (= (and b!1538266 res!1055382) b!1538264))

(assert (= (and b!1538264 res!1055378) b!1538262))

(assert (= (and b!1538262 res!1055380) b!1538268))

(assert (= (and b!1538268 res!1055384) b!1538267))

(assert (= (and b!1538267 res!1055381) b!1538269))

(assert (= (and b!1538269 res!1055385) b!1538265))

(assert (= (and b!1538265 res!1055377) b!1538263))

(declare-fun m!1420749 () Bool)

(assert (=> b!1538268 m!1420749))

(declare-fun m!1420751 () Bool)

(assert (=> b!1538263 m!1420751))

(declare-fun m!1420753 () Bool)

(assert (=> b!1538265 m!1420753))

(declare-fun m!1420755 () Bool)

(assert (=> b!1538265 m!1420755))

(declare-fun m!1420757 () Bool)

(assert (=> b!1538262 m!1420757))

(assert (=> b!1538264 m!1420755))

(assert (=> b!1538264 m!1420755))

(declare-fun m!1420759 () Bool)

(assert (=> b!1538264 m!1420759))

(declare-fun m!1420761 () Bool)

(assert (=> start!131172 m!1420761))

(declare-fun m!1420763 () Bool)

(assert (=> start!131172 m!1420763))

(assert (=> b!1538269 m!1420755))

(assert (=> b!1538269 m!1420755))

(declare-fun m!1420765 () Bool)

(assert (=> b!1538269 m!1420765))

(declare-fun m!1420767 () Bool)

(assert (=> b!1538266 m!1420767))

(assert (=> b!1538266 m!1420767))

(declare-fun m!1420769 () Bool)

(assert (=> b!1538266 m!1420769))

(declare-fun m!1420771 () Bool)

(assert (=> b!1538267 m!1420771))

(check-sat (not start!131172) (not b!1538263) (not b!1538266) (not b!1538268) (not b!1538264) (not b!1538269) (not b!1538262))
