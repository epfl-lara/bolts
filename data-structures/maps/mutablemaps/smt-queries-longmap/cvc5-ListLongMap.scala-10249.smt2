; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120586 () Bool)

(assert start!120586)

(declare-fun res!942192 () Bool)

(declare-fun e!794726 () Bool)

(assert (=> start!120586 (=> (not res!942192) (not e!794726))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120586 (= res!942192 (validMask!0 mask!2840))))

(assert (=> start!120586 e!794726))

(assert (=> start!120586 true))

(declare-datatypes ((array!95913 0))(
  ( (array!95914 (arr!46303 (Array (_ BitVec 32) (_ BitVec 64))) (size!46854 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95913)

(declare-fun array_inv!35248 (array!95913) Bool)

(assert (=> start!120586 (array_inv!35248 a!2901)))

(declare-fun b!1403572 () Bool)

(declare-fun res!942193 () Bool)

(assert (=> b!1403572 (=> (not res!942193) (not e!794726))))

(declare-datatypes ((List!33002 0))(
  ( (Nil!32999) (Cons!32998 (h!34246 (_ BitVec 64)) (t!47703 List!33002)) )
))
(declare-fun arrayNoDuplicates!0 (array!95913 (_ BitVec 32) List!33002) Bool)

(assert (=> b!1403572 (= res!942193 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32999))))

(declare-fun e!794724 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1403573 () Bool)

(declare-datatypes ((SeekEntryResult!10642 0))(
  ( (MissingZero!10642 (index!44944 (_ BitVec 32))) (Found!10642 (index!44945 (_ BitVec 32))) (Intermediate!10642 (undefined!11454 Bool) (index!44946 (_ BitVec 32)) (x!126560 (_ BitVec 32))) (Undefined!10642) (MissingVacant!10642 (index!44947 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95913 (_ BitVec 32)) SeekEntryResult!10642)

(assert (=> b!1403573 (= e!794724 (= (seekEntryOrOpen!0 (select (arr!46303 a!2901) j!112) a!2901 mask!2840) (Found!10642 j!112)))))

(declare-fun b!1403574 () Bool)

(assert (=> b!1403574 (= e!794726 (not true))))

(assert (=> b!1403574 e!794724))

(declare-fun res!942197 () Bool)

(assert (=> b!1403574 (=> (not res!942197) (not e!794724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95913 (_ BitVec 32)) Bool)

(assert (=> b!1403574 (= res!942197 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47238 0))(
  ( (Unit!47239) )
))
(declare-fun lt!618408 () Unit!47238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47238)

(assert (=> b!1403574 (= lt!618408 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618409 () SeekEntryResult!10642)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95913 (_ BitVec 32)) SeekEntryResult!10642)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403574 (= lt!618409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46303 a!2901) j!112) mask!2840) (select (arr!46303 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403575 () Bool)

(declare-fun res!942194 () Bool)

(assert (=> b!1403575 (=> (not res!942194) (not e!794726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403575 (= res!942194 (validKeyInArray!0 (select (arr!46303 a!2901) j!112)))))

(declare-fun b!1403576 () Bool)

(declare-fun res!942198 () Bool)

(assert (=> b!1403576 (=> (not res!942198) (not e!794726))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403576 (= res!942198 (validKeyInArray!0 (select (arr!46303 a!2901) i!1037)))))

(declare-fun b!1403577 () Bool)

(declare-fun res!942196 () Bool)

(assert (=> b!1403577 (=> (not res!942196) (not e!794726))))

(assert (=> b!1403577 (= res!942196 (and (= (size!46854 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46854 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46854 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403578 () Bool)

(declare-fun res!942195 () Bool)

(assert (=> b!1403578 (=> (not res!942195) (not e!794726))))

(assert (=> b!1403578 (= res!942195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120586 res!942192) b!1403577))

(assert (= (and b!1403577 res!942196) b!1403576))

(assert (= (and b!1403576 res!942198) b!1403575))

(assert (= (and b!1403575 res!942194) b!1403578))

(assert (= (and b!1403578 res!942195) b!1403572))

(assert (= (and b!1403572 res!942193) b!1403574))

(assert (= (and b!1403574 res!942197) b!1403573))

(declare-fun m!1292339 () Bool)

(assert (=> b!1403574 m!1292339))

(declare-fun m!1292341 () Bool)

(assert (=> b!1403574 m!1292341))

(assert (=> b!1403574 m!1292339))

(declare-fun m!1292343 () Bool)

(assert (=> b!1403574 m!1292343))

(assert (=> b!1403574 m!1292341))

(assert (=> b!1403574 m!1292339))

(declare-fun m!1292345 () Bool)

(assert (=> b!1403574 m!1292345))

(declare-fun m!1292347 () Bool)

(assert (=> b!1403574 m!1292347))

(declare-fun m!1292349 () Bool)

(assert (=> b!1403576 m!1292349))

(assert (=> b!1403576 m!1292349))

(declare-fun m!1292351 () Bool)

(assert (=> b!1403576 m!1292351))

(assert (=> b!1403573 m!1292339))

(assert (=> b!1403573 m!1292339))

(declare-fun m!1292353 () Bool)

(assert (=> b!1403573 m!1292353))

(declare-fun m!1292355 () Bool)

(assert (=> start!120586 m!1292355))

(declare-fun m!1292357 () Bool)

(assert (=> start!120586 m!1292357))

(assert (=> b!1403575 m!1292339))

(assert (=> b!1403575 m!1292339))

(declare-fun m!1292359 () Bool)

(assert (=> b!1403575 m!1292359))

(declare-fun m!1292361 () Bool)

(assert (=> b!1403578 m!1292361))

(declare-fun m!1292363 () Bool)

(assert (=> b!1403572 m!1292363))

(push 1)

(assert (not b!1403574))

(assert (not b!1403578))

(assert (not start!120586))

(assert (not b!1403575))

(assert (not b!1403576))

(assert (not b!1403572))

(assert (not b!1403573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

