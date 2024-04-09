; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119232 () Bool)

(assert start!119232)

(declare-fun b!1390306 () Bool)

(declare-fun res!930576 () Bool)

(declare-fun e!787382 () Bool)

(assert (=> b!1390306 (=> (not res!930576) (not e!787382))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95087 0))(
  ( (array!95088 (arr!45905 (Array (_ BitVec 32) (_ BitVec 64))) (size!46456 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95087)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390306 (= res!930576 (and (= (size!46456 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46456 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46456 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390307 () Bool)

(assert (=> b!1390307 (= e!787382 (not true))))

(declare-fun e!787381 () Bool)

(assert (=> b!1390307 e!787381))

(declare-fun res!930581 () Bool)

(assert (=> b!1390307 (=> (not res!930581) (not e!787381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95087 (_ BitVec 32)) Bool)

(assert (=> b!1390307 (= res!930581 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46442 0))(
  ( (Unit!46443) )
))
(declare-fun lt!610749 () Unit!46442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46442)

(assert (=> b!1390307 (= lt!610749 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10244 0))(
  ( (MissingZero!10244 (index!43346 (_ BitVec 32))) (Found!10244 (index!43347 (_ BitVec 32))) (Intermediate!10244 (undefined!11056 Bool) (index!43348 (_ BitVec 32)) (x!125029 (_ BitVec 32))) (Undefined!10244) (MissingVacant!10244 (index!43349 (_ BitVec 32))) )
))
(declare-fun lt!610750 () SeekEntryResult!10244)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95087 (_ BitVec 32)) SeekEntryResult!10244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390307 (= lt!610750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45905 a!2901) j!112) mask!2840) (select (arr!45905 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390308 () Bool)

(declare-fun res!930580 () Bool)

(assert (=> b!1390308 (=> (not res!930580) (not e!787382))))

(declare-datatypes ((List!32604 0))(
  ( (Nil!32601) (Cons!32600 (h!33818 (_ BitVec 64)) (t!47305 List!32604)) )
))
(declare-fun arrayNoDuplicates!0 (array!95087 (_ BitVec 32) List!32604) Bool)

(assert (=> b!1390308 (= res!930580 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32601))))

(declare-fun b!1390309 () Bool)

(declare-fun res!930579 () Bool)

(assert (=> b!1390309 (=> (not res!930579) (not e!787382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390309 (= res!930579 (validKeyInArray!0 (select (arr!45905 a!2901) j!112)))))

(declare-fun b!1390310 () Bool)

(declare-fun res!930578 () Bool)

(assert (=> b!1390310 (=> (not res!930578) (not e!787382))))

(assert (=> b!1390310 (= res!930578 (validKeyInArray!0 (select (arr!45905 a!2901) i!1037)))))

(declare-fun res!930577 () Bool)

(assert (=> start!119232 (=> (not res!930577) (not e!787382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119232 (= res!930577 (validMask!0 mask!2840))))

(assert (=> start!119232 e!787382))

(assert (=> start!119232 true))

(declare-fun array_inv!34850 (array!95087) Bool)

(assert (=> start!119232 (array_inv!34850 a!2901)))

(declare-fun b!1390311 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95087 (_ BitVec 32)) SeekEntryResult!10244)

(assert (=> b!1390311 (= e!787381 (= (seekEntryOrOpen!0 (select (arr!45905 a!2901) j!112) a!2901 mask!2840) (Found!10244 j!112)))))

(declare-fun b!1390312 () Bool)

(declare-fun res!930582 () Bool)

(assert (=> b!1390312 (=> (not res!930582) (not e!787382))))

(assert (=> b!1390312 (= res!930582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119232 res!930577) b!1390306))

(assert (= (and b!1390306 res!930576) b!1390310))

(assert (= (and b!1390310 res!930578) b!1390309))

(assert (= (and b!1390309 res!930579) b!1390312))

(assert (= (and b!1390312 res!930582) b!1390308))

(assert (= (and b!1390308 res!930580) b!1390307))

(assert (= (and b!1390307 res!930581) b!1390311))

(declare-fun m!1276201 () Bool)

(assert (=> b!1390309 m!1276201))

(assert (=> b!1390309 m!1276201))

(declare-fun m!1276203 () Bool)

(assert (=> b!1390309 m!1276203))

(declare-fun m!1276205 () Bool)

(assert (=> b!1390310 m!1276205))

(assert (=> b!1390310 m!1276205))

(declare-fun m!1276207 () Bool)

(assert (=> b!1390310 m!1276207))

(declare-fun m!1276209 () Bool)

(assert (=> start!119232 m!1276209))

(declare-fun m!1276211 () Bool)

(assert (=> start!119232 m!1276211))

(assert (=> b!1390307 m!1276201))

(declare-fun m!1276213 () Bool)

(assert (=> b!1390307 m!1276213))

(assert (=> b!1390307 m!1276201))

(declare-fun m!1276215 () Bool)

(assert (=> b!1390307 m!1276215))

(assert (=> b!1390307 m!1276213))

(assert (=> b!1390307 m!1276201))

(declare-fun m!1276217 () Bool)

(assert (=> b!1390307 m!1276217))

(declare-fun m!1276219 () Bool)

(assert (=> b!1390307 m!1276219))

(declare-fun m!1276221 () Bool)

(assert (=> b!1390308 m!1276221))

(assert (=> b!1390311 m!1276201))

(assert (=> b!1390311 m!1276201))

(declare-fun m!1276223 () Bool)

(assert (=> b!1390311 m!1276223))

(declare-fun m!1276225 () Bool)

(assert (=> b!1390312 m!1276225))

(check-sat (not b!1390308) (not b!1390309) (not b!1390312) (not b!1390307) (not start!119232) (not b!1390311) (not b!1390310))
