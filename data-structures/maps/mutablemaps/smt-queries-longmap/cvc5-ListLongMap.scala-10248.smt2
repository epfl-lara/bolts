; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120580 () Bool)

(assert start!120580)

(declare-fun res!942131 () Bool)

(declare-fun e!794698 () Bool)

(assert (=> start!120580 (=> (not res!942131) (not e!794698))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120580 (= res!942131 (validMask!0 mask!2840))))

(assert (=> start!120580 e!794698))

(assert (=> start!120580 true))

(declare-datatypes ((array!95907 0))(
  ( (array!95908 (arr!46300 (Array (_ BitVec 32) (_ BitVec 64))) (size!46851 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95907)

(declare-fun array_inv!35245 (array!95907) Bool)

(assert (=> start!120580 (array_inv!35245 a!2901)))

(declare-fun b!1403509 () Bool)

(declare-fun res!942134 () Bool)

(assert (=> b!1403509 (=> (not res!942134) (not e!794698))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403509 (= res!942134 (validKeyInArray!0 (select (arr!46300 a!2901) j!112)))))

(declare-fun b!1403510 () Bool)

(declare-fun res!942132 () Bool)

(assert (=> b!1403510 (=> (not res!942132) (not e!794698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95907 (_ BitVec 32)) Bool)

(assert (=> b!1403510 (= res!942132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403511 () Bool)

(declare-fun res!942135 () Bool)

(assert (=> b!1403511 (=> (not res!942135) (not e!794698))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403511 (= res!942135 (and (= (size!46851 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46851 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46851 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403512 () Bool)

(assert (=> b!1403512 (= e!794698 (not true))))

(declare-fun e!794697 () Bool)

(assert (=> b!1403512 e!794697))

(declare-fun res!942133 () Bool)

(assert (=> b!1403512 (=> (not res!942133) (not e!794697))))

(assert (=> b!1403512 (= res!942133 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47232 0))(
  ( (Unit!47233) )
))
(declare-fun lt!618390 () Unit!47232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95907 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47232)

(assert (=> b!1403512 (= lt!618390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10639 0))(
  ( (MissingZero!10639 (index!44932 (_ BitVec 32))) (Found!10639 (index!44933 (_ BitVec 32))) (Intermediate!10639 (undefined!11451 Bool) (index!44934 (_ BitVec 32)) (x!126549 (_ BitVec 32))) (Undefined!10639) (MissingVacant!10639 (index!44935 (_ BitVec 32))) )
))
(declare-fun lt!618391 () SeekEntryResult!10639)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95907 (_ BitVec 32)) SeekEntryResult!10639)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403512 (= lt!618391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46300 a!2901) j!112) mask!2840) (select (arr!46300 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403513 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95907 (_ BitVec 32)) SeekEntryResult!10639)

(assert (=> b!1403513 (= e!794697 (= (seekEntryOrOpen!0 (select (arr!46300 a!2901) j!112) a!2901 mask!2840) (Found!10639 j!112)))))

(declare-fun b!1403514 () Bool)

(declare-fun res!942129 () Bool)

(assert (=> b!1403514 (=> (not res!942129) (not e!794698))))

(assert (=> b!1403514 (= res!942129 (validKeyInArray!0 (select (arr!46300 a!2901) i!1037)))))

(declare-fun b!1403515 () Bool)

(declare-fun res!942130 () Bool)

(assert (=> b!1403515 (=> (not res!942130) (not e!794698))))

(declare-datatypes ((List!32999 0))(
  ( (Nil!32996) (Cons!32995 (h!34243 (_ BitVec 64)) (t!47700 List!32999)) )
))
(declare-fun arrayNoDuplicates!0 (array!95907 (_ BitVec 32) List!32999) Bool)

(assert (=> b!1403515 (= res!942130 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32996))))

(assert (= (and start!120580 res!942131) b!1403511))

(assert (= (and b!1403511 res!942135) b!1403514))

(assert (= (and b!1403514 res!942129) b!1403509))

(assert (= (and b!1403509 res!942134) b!1403510))

(assert (= (and b!1403510 res!942132) b!1403515))

(assert (= (and b!1403515 res!942130) b!1403512))

(assert (= (and b!1403512 res!942133) b!1403513))

(declare-fun m!1292261 () Bool)

(assert (=> b!1403514 m!1292261))

(assert (=> b!1403514 m!1292261))

(declare-fun m!1292263 () Bool)

(assert (=> b!1403514 m!1292263))

(declare-fun m!1292265 () Bool)

(assert (=> start!120580 m!1292265))

(declare-fun m!1292267 () Bool)

(assert (=> start!120580 m!1292267))

(declare-fun m!1292269 () Bool)

(assert (=> b!1403515 m!1292269))

(declare-fun m!1292271 () Bool)

(assert (=> b!1403513 m!1292271))

(assert (=> b!1403513 m!1292271))

(declare-fun m!1292273 () Bool)

(assert (=> b!1403513 m!1292273))

(assert (=> b!1403509 m!1292271))

(assert (=> b!1403509 m!1292271))

(declare-fun m!1292275 () Bool)

(assert (=> b!1403509 m!1292275))

(assert (=> b!1403512 m!1292271))

(declare-fun m!1292277 () Bool)

(assert (=> b!1403512 m!1292277))

(assert (=> b!1403512 m!1292271))

(declare-fun m!1292279 () Bool)

(assert (=> b!1403512 m!1292279))

(assert (=> b!1403512 m!1292277))

(assert (=> b!1403512 m!1292271))

(declare-fun m!1292281 () Bool)

(assert (=> b!1403512 m!1292281))

(declare-fun m!1292283 () Bool)

(assert (=> b!1403512 m!1292283))

(declare-fun m!1292285 () Bool)

(assert (=> b!1403510 m!1292285))

(push 1)

(assert (not b!1403515))

(assert (not b!1403512))

(assert (not b!1403509))

(assert (not b!1403510))

(assert (not b!1403514))

(assert (not start!120580))

(assert (not b!1403513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

