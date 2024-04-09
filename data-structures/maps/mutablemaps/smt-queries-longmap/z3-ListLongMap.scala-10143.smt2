; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119664 () Bool)

(assert start!119664)

(declare-fun b!1393341 () Bool)

(declare-fun e!788993 () Bool)

(declare-fun e!788994 () Bool)

(assert (=> b!1393341 (= e!788993 (not e!788994))))

(declare-fun res!932863 () Bool)

(assert (=> b!1393341 (=> res!932863 e!788994)))

(declare-datatypes ((SeekEntryResult!10325 0))(
  ( (MissingZero!10325 (index!43670 (_ BitVec 32))) (Found!10325 (index!43671 (_ BitVec 32))) (Intermediate!10325 (undefined!11137 Bool) (index!43672 (_ BitVec 32)) (x!125356 (_ BitVec 32))) (Undefined!10325) (MissingVacant!10325 (index!43673 (_ BitVec 32))) )
))
(declare-fun lt!611926 () SeekEntryResult!10325)

(get-info :version)

(assert (=> b!1393341 (= res!932863 (or (not ((_ is Intermediate!10325) lt!611926)) (undefined!11137 lt!611926)))))

(declare-fun e!788995 () Bool)

(assert (=> b!1393341 e!788995))

(declare-fun res!932859 () Bool)

(assert (=> b!1393341 (=> (not res!932859) (not e!788995))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95264 0))(
  ( (array!95265 (arr!45986 (Array (_ BitVec 32) (_ BitVec 64))) (size!46537 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95264)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95264 (_ BitVec 32)) Bool)

(assert (=> b!1393341 (= res!932859 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46604 0))(
  ( (Unit!46605) )
))
(declare-fun lt!611924 () Unit!46604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46604)

(assert (=> b!1393341 (= lt!611924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95264 (_ BitVec 32)) SeekEntryResult!10325)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393341 (= lt!611926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45986 a!2901) j!112) mask!2840) (select (arr!45986 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393342 () Bool)

(declare-fun res!932864 () Bool)

(assert (=> b!1393342 (=> (not res!932864) (not e!788993))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393342 (= res!932864 (and (= (size!46537 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46537 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46537 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393343 () Bool)

(declare-fun res!932865 () Bool)

(assert (=> b!1393343 (=> (not res!932865) (not e!788993))))

(assert (=> b!1393343 (= res!932865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393344 () Bool)

(declare-fun res!932861 () Bool)

(assert (=> b!1393344 (=> (not res!932861) (not e!788993))))

(declare-datatypes ((List!32685 0))(
  ( (Nil!32682) (Cons!32681 (h!33914 (_ BitVec 64)) (t!47386 List!32685)) )
))
(declare-fun arrayNoDuplicates!0 (array!95264 (_ BitVec 32) List!32685) Bool)

(assert (=> b!1393344 (= res!932861 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32682))))

(declare-fun b!1393346 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95264 (_ BitVec 32)) SeekEntryResult!10325)

(assert (=> b!1393346 (= e!788995 (= (seekEntryOrOpen!0 (select (arr!45986 a!2901) j!112) a!2901 mask!2840) (Found!10325 j!112)))))

(declare-fun b!1393347 () Bool)

(assert (=> b!1393347 (= e!788994 true)))

(declare-fun lt!611925 () SeekEntryResult!10325)

(assert (=> b!1393347 (= lt!611925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45986 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45986 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95265 (store (arr!45986 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46537 a!2901)) mask!2840))))

(declare-fun b!1393348 () Bool)

(declare-fun res!932858 () Bool)

(assert (=> b!1393348 (=> (not res!932858) (not e!788993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393348 (= res!932858 (validKeyInArray!0 (select (arr!45986 a!2901) j!112)))))

(declare-fun res!932862 () Bool)

(assert (=> start!119664 (=> (not res!932862) (not e!788993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119664 (= res!932862 (validMask!0 mask!2840))))

(assert (=> start!119664 e!788993))

(assert (=> start!119664 true))

(declare-fun array_inv!34931 (array!95264) Bool)

(assert (=> start!119664 (array_inv!34931 a!2901)))

(declare-fun b!1393345 () Bool)

(declare-fun res!932860 () Bool)

(assert (=> b!1393345 (=> (not res!932860) (not e!788993))))

(assert (=> b!1393345 (= res!932860 (validKeyInArray!0 (select (arr!45986 a!2901) i!1037)))))

(assert (= (and start!119664 res!932862) b!1393342))

(assert (= (and b!1393342 res!932864) b!1393345))

(assert (= (and b!1393345 res!932860) b!1393348))

(assert (= (and b!1393348 res!932858) b!1393343))

(assert (= (and b!1393343 res!932865) b!1393344))

(assert (= (and b!1393344 res!932861) b!1393341))

(assert (= (and b!1393341 res!932859) b!1393346))

(assert (= (and b!1393341 (not res!932863)) b!1393347))

(declare-fun m!1279305 () Bool)

(assert (=> b!1393347 m!1279305))

(declare-fun m!1279307 () Bool)

(assert (=> b!1393347 m!1279307))

(assert (=> b!1393347 m!1279307))

(declare-fun m!1279309 () Bool)

(assert (=> b!1393347 m!1279309))

(assert (=> b!1393347 m!1279309))

(assert (=> b!1393347 m!1279307))

(declare-fun m!1279311 () Bool)

(assert (=> b!1393347 m!1279311))

(declare-fun m!1279313 () Bool)

(assert (=> b!1393348 m!1279313))

(assert (=> b!1393348 m!1279313))

(declare-fun m!1279315 () Bool)

(assert (=> b!1393348 m!1279315))

(assert (=> b!1393346 m!1279313))

(assert (=> b!1393346 m!1279313))

(declare-fun m!1279317 () Bool)

(assert (=> b!1393346 m!1279317))

(declare-fun m!1279319 () Bool)

(assert (=> b!1393344 m!1279319))

(declare-fun m!1279321 () Bool)

(assert (=> start!119664 m!1279321))

(declare-fun m!1279323 () Bool)

(assert (=> start!119664 m!1279323))

(assert (=> b!1393341 m!1279313))

(declare-fun m!1279325 () Bool)

(assert (=> b!1393341 m!1279325))

(assert (=> b!1393341 m!1279313))

(declare-fun m!1279327 () Bool)

(assert (=> b!1393341 m!1279327))

(assert (=> b!1393341 m!1279325))

(assert (=> b!1393341 m!1279313))

(declare-fun m!1279329 () Bool)

(assert (=> b!1393341 m!1279329))

(declare-fun m!1279331 () Bool)

(assert (=> b!1393341 m!1279331))

(declare-fun m!1279333 () Bool)

(assert (=> b!1393345 m!1279333))

(assert (=> b!1393345 m!1279333))

(declare-fun m!1279335 () Bool)

(assert (=> b!1393345 m!1279335))

(declare-fun m!1279337 () Bool)

(assert (=> b!1393343 m!1279337))

(check-sat (not b!1393341) (not b!1393346) (not b!1393348) (not b!1393343) (not b!1393345) (not start!119664) (not b!1393347) (not b!1393344))
