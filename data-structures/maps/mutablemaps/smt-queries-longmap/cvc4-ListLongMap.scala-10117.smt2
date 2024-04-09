; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119240 () Bool)

(assert start!119240)

(declare-fun b!1390390 () Bool)

(declare-fun e!787416 () Bool)

(assert (=> b!1390390 (= e!787416 (not true))))

(declare-fun e!787418 () Bool)

(assert (=> b!1390390 e!787418))

(declare-fun res!930662 () Bool)

(assert (=> b!1390390 (=> (not res!930662) (not e!787418))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95095 0))(
  ( (array!95096 (arr!45909 (Array (_ BitVec 32) (_ BitVec 64))) (size!46460 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95095)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95095 (_ BitVec 32)) Bool)

(assert (=> b!1390390 (= res!930662 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46450 0))(
  ( (Unit!46451) )
))
(declare-fun lt!610774 () Unit!46450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46450)

(assert (=> b!1390390 (= lt!610774 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10248 0))(
  ( (MissingZero!10248 (index!43362 (_ BitVec 32))) (Found!10248 (index!43363 (_ BitVec 32))) (Intermediate!10248 (undefined!11060 Bool) (index!43364 (_ BitVec 32)) (x!125041 (_ BitVec 32))) (Undefined!10248) (MissingVacant!10248 (index!43365 (_ BitVec 32))) )
))
(declare-fun lt!610773 () SeekEntryResult!10248)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95095 (_ BitVec 32)) SeekEntryResult!10248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390390 (= lt!610773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45909 a!2901) j!112) mask!2840) (select (arr!45909 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390391 () Bool)

(declare-fun res!930663 () Bool)

(assert (=> b!1390391 (=> (not res!930663) (not e!787416))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390391 (= res!930663 (and (= (size!46460 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46460 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46460 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390392 () Bool)

(declare-fun res!930661 () Bool)

(assert (=> b!1390392 (=> (not res!930661) (not e!787416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390392 (= res!930661 (validKeyInArray!0 (select (arr!45909 a!2901) j!112)))))

(declare-fun b!1390393 () Bool)

(declare-fun res!930665 () Bool)

(assert (=> b!1390393 (=> (not res!930665) (not e!787416))))

(assert (=> b!1390393 (= res!930665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390394 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95095 (_ BitVec 32)) SeekEntryResult!10248)

(assert (=> b!1390394 (= e!787418 (= (seekEntryOrOpen!0 (select (arr!45909 a!2901) j!112) a!2901 mask!2840) (Found!10248 j!112)))))

(declare-fun b!1390395 () Bool)

(declare-fun res!930660 () Bool)

(assert (=> b!1390395 (=> (not res!930660) (not e!787416))))

(declare-datatypes ((List!32608 0))(
  ( (Nil!32605) (Cons!32604 (h!33822 (_ BitVec 64)) (t!47309 List!32608)) )
))
(declare-fun arrayNoDuplicates!0 (array!95095 (_ BitVec 32) List!32608) Bool)

(assert (=> b!1390395 (= res!930660 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32605))))

(declare-fun res!930666 () Bool)

(assert (=> start!119240 (=> (not res!930666) (not e!787416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119240 (= res!930666 (validMask!0 mask!2840))))

(assert (=> start!119240 e!787416))

(assert (=> start!119240 true))

(declare-fun array_inv!34854 (array!95095) Bool)

(assert (=> start!119240 (array_inv!34854 a!2901)))

(declare-fun b!1390396 () Bool)

(declare-fun res!930664 () Bool)

(assert (=> b!1390396 (=> (not res!930664) (not e!787416))))

(assert (=> b!1390396 (= res!930664 (validKeyInArray!0 (select (arr!45909 a!2901) i!1037)))))

(assert (= (and start!119240 res!930666) b!1390391))

(assert (= (and b!1390391 res!930663) b!1390396))

(assert (= (and b!1390396 res!930664) b!1390392))

(assert (= (and b!1390392 res!930661) b!1390393))

(assert (= (and b!1390393 res!930665) b!1390395))

(assert (= (and b!1390395 res!930660) b!1390390))

(assert (= (and b!1390390 res!930662) b!1390394))

(declare-fun m!1276305 () Bool)

(assert (=> b!1390393 m!1276305))

(declare-fun m!1276307 () Bool)

(assert (=> b!1390395 m!1276307))

(declare-fun m!1276309 () Bool)

(assert (=> b!1390394 m!1276309))

(assert (=> b!1390394 m!1276309))

(declare-fun m!1276311 () Bool)

(assert (=> b!1390394 m!1276311))

(declare-fun m!1276313 () Bool)

(assert (=> start!119240 m!1276313))

(declare-fun m!1276315 () Bool)

(assert (=> start!119240 m!1276315))

(declare-fun m!1276317 () Bool)

(assert (=> b!1390396 m!1276317))

(assert (=> b!1390396 m!1276317))

(declare-fun m!1276319 () Bool)

(assert (=> b!1390396 m!1276319))

(assert (=> b!1390392 m!1276309))

(assert (=> b!1390392 m!1276309))

(declare-fun m!1276321 () Bool)

(assert (=> b!1390392 m!1276321))

(assert (=> b!1390390 m!1276309))

(declare-fun m!1276323 () Bool)

(assert (=> b!1390390 m!1276323))

(assert (=> b!1390390 m!1276309))

(declare-fun m!1276325 () Bool)

(assert (=> b!1390390 m!1276325))

(assert (=> b!1390390 m!1276323))

(assert (=> b!1390390 m!1276309))

(declare-fun m!1276327 () Bool)

(assert (=> b!1390390 m!1276327))

(declare-fun m!1276329 () Bool)

(assert (=> b!1390390 m!1276329))

(push 1)

(assert (not b!1390396))

(assert (not start!119240))

(assert (not b!1390395))

(assert (not b!1390392))

(assert (not b!1390390))

(assert (not b!1390393))

(assert (not b!1390394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

