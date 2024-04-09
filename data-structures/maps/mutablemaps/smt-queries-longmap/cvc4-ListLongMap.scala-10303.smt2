; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121184 () Bool)

(assert start!121184)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96256 0))(
  ( (array!96257 (arr!46467 (Array (_ BitVec 32) (_ BitVec 64))) (size!47018 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96256)

(declare-fun b!1408488 () Bool)

(declare-fun e!797144 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10800 0))(
  ( (MissingZero!10800 (index!45576 (_ BitVec 32))) (Found!10800 (index!45577 (_ BitVec 32))) (Intermediate!10800 (undefined!11612 Bool) (index!45578 (_ BitVec 32)) (x!127180 (_ BitVec 32))) (Undefined!10800) (MissingVacant!10800 (index!45579 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96256 (_ BitVec 32)) SeekEntryResult!10800)

(assert (=> b!1408488 (= e!797144 (= (seekEntryOrOpen!0 (select (arr!46467 a!2901) j!112) a!2901 mask!2840) (Found!10800 j!112)))))

(declare-fun b!1408489 () Bool)

(declare-fun res!946323 () Bool)

(declare-fun e!797147 () Bool)

(assert (=> b!1408489 (=> (not res!946323) (not e!797147))))

(declare-datatypes ((List!33166 0))(
  ( (Nil!33163) (Cons!33162 (h!34425 (_ BitVec 64)) (t!47867 List!33166)) )
))
(declare-fun arrayNoDuplicates!0 (array!96256 (_ BitVec 32) List!33166) Bool)

(assert (=> b!1408489 (= res!946323 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33163))))

(declare-fun b!1408490 () Bool)

(declare-fun res!946322 () Bool)

(assert (=> b!1408490 (=> (not res!946322) (not e!797147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96256 (_ BitVec 32)) Bool)

(assert (=> b!1408490 (= res!946322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!946326 () Bool)

(assert (=> start!121184 (=> (not res!946326) (not e!797147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121184 (= res!946326 (validMask!0 mask!2840))))

(assert (=> start!121184 e!797147))

(assert (=> start!121184 true))

(declare-fun array_inv!35412 (array!96256) Bool)

(assert (=> start!121184 (array_inv!35412 a!2901)))

(declare-fun b!1408491 () Bool)

(declare-fun res!946325 () Bool)

(assert (=> b!1408491 (=> (not res!946325) (not e!797147))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408491 (= res!946325 (and (= (size!47018 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47018 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47018 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408492 () Bool)

(declare-fun e!797145 () Bool)

(assert (=> b!1408492 (= e!797145 true)))

(declare-fun lt!620337 () SeekEntryResult!10800)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96256 (_ BitVec 32)) SeekEntryResult!10800)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408492 (= lt!620337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46467 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46467 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96257 (store (arr!46467 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47018 a!2901)) mask!2840))))

(declare-fun b!1408493 () Bool)

(declare-fun res!946321 () Bool)

(assert (=> b!1408493 (=> (not res!946321) (not e!797147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408493 (= res!946321 (validKeyInArray!0 (select (arr!46467 a!2901) i!1037)))))

(declare-fun b!1408494 () Bool)

(assert (=> b!1408494 (= e!797147 (not e!797145))))

(declare-fun res!946324 () Bool)

(assert (=> b!1408494 (=> res!946324 e!797145)))

(declare-fun lt!620338 () SeekEntryResult!10800)

(assert (=> b!1408494 (= res!946324 (or (not (is-Intermediate!10800 lt!620338)) (undefined!11612 lt!620338)))))

(assert (=> b!1408494 e!797144))

(declare-fun res!946319 () Bool)

(assert (=> b!1408494 (=> (not res!946319) (not e!797144))))

(assert (=> b!1408494 (= res!946319 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47524 0))(
  ( (Unit!47525) )
))
(declare-fun lt!620336 () Unit!47524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47524)

(assert (=> b!1408494 (= lt!620336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408494 (= lt!620338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46467 a!2901) j!112) mask!2840) (select (arr!46467 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408495 () Bool)

(declare-fun res!946320 () Bool)

(assert (=> b!1408495 (=> (not res!946320) (not e!797147))))

(assert (=> b!1408495 (= res!946320 (validKeyInArray!0 (select (arr!46467 a!2901) j!112)))))

(assert (= (and start!121184 res!946326) b!1408491))

(assert (= (and b!1408491 res!946325) b!1408493))

(assert (= (and b!1408493 res!946321) b!1408495))

(assert (= (and b!1408495 res!946320) b!1408490))

(assert (= (and b!1408490 res!946322) b!1408489))

(assert (= (and b!1408489 res!946323) b!1408494))

(assert (= (and b!1408494 res!946319) b!1408488))

(assert (= (and b!1408494 (not res!946324)) b!1408492))

(declare-fun m!1297903 () Bool)

(assert (=> start!121184 m!1297903))

(declare-fun m!1297905 () Bool)

(assert (=> start!121184 m!1297905))

(declare-fun m!1297907 () Bool)

(assert (=> b!1408495 m!1297907))

(assert (=> b!1408495 m!1297907))

(declare-fun m!1297909 () Bool)

(assert (=> b!1408495 m!1297909))

(assert (=> b!1408488 m!1297907))

(assert (=> b!1408488 m!1297907))

(declare-fun m!1297911 () Bool)

(assert (=> b!1408488 m!1297911))

(declare-fun m!1297913 () Bool)

(assert (=> b!1408492 m!1297913))

(declare-fun m!1297915 () Bool)

(assert (=> b!1408492 m!1297915))

(assert (=> b!1408492 m!1297915))

(declare-fun m!1297917 () Bool)

(assert (=> b!1408492 m!1297917))

(assert (=> b!1408492 m!1297917))

(assert (=> b!1408492 m!1297915))

(declare-fun m!1297919 () Bool)

(assert (=> b!1408492 m!1297919))

(declare-fun m!1297921 () Bool)

(assert (=> b!1408493 m!1297921))

(assert (=> b!1408493 m!1297921))

(declare-fun m!1297923 () Bool)

(assert (=> b!1408493 m!1297923))

(assert (=> b!1408494 m!1297907))

(declare-fun m!1297925 () Bool)

(assert (=> b!1408494 m!1297925))

(assert (=> b!1408494 m!1297907))

(declare-fun m!1297927 () Bool)

(assert (=> b!1408494 m!1297927))

(assert (=> b!1408494 m!1297925))

(assert (=> b!1408494 m!1297907))

(declare-fun m!1297929 () Bool)

(assert (=> b!1408494 m!1297929))

(declare-fun m!1297931 () Bool)

(assert (=> b!1408494 m!1297931))

(declare-fun m!1297933 () Bool)

(assert (=> b!1408489 m!1297933))

(declare-fun m!1297935 () Bool)

(assert (=> b!1408490 m!1297935))

(push 1)

(assert (not b!1408489))

(assert (not b!1408492))

(assert (not b!1408488))

(assert (not start!121184))

(assert (not b!1408490))

(assert (not b!1408493))

(assert (not b!1408494))

(assert (not b!1408495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

