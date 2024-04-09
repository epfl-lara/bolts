; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120562 () Bool)

(assert start!120562)

(declare-fun b!1403304 () Bool)

(declare-fun res!941926 () Bool)

(declare-fun e!794600 () Bool)

(assert (=> b!1403304 (=> (not res!941926) (not e!794600))))

(declare-datatypes ((array!95889 0))(
  ( (array!95890 (arr!46291 (Array (_ BitVec 32) (_ BitVec 64))) (size!46842 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95889)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403304 (= res!941926 (validKeyInArray!0 (select (arr!46291 a!2901) j!112)))))

(declare-fun b!1403305 () Bool)

(declare-fun e!794603 () Bool)

(assert (=> b!1403305 (= e!794600 (not e!794603))))

(declare-fun res!941925 () Bool)

(assert (=> b!1403305 (=> res!941925 e!794603)))

(declare-datatypes ((SeekEntryResult!10630 0))(
  ( (MissingZero!10630 (index!44896 (_ BitVec 32))) (Found!10630 (index!44897 (_ BitVec 32))) (Intermediate!10630 (undefined!11442 Bool) (index!44898 (_ BitVec 32)) (x!126516 (_ BitVec 32))) (Undefined!10630) (MissingVacant!10630 (index!44899 (_ BitVec 32))) )
))
(declare-fun lt!618320 () SeekEntryResult!10630)

(assert (=> b!1403305 (= res!941925 (or (not (is-Intermediate!10630 lt!618320)) (undefined!11442 lt!618320)))))

(declare-fun e!794601 () Bool)

(assert (=> b!1403305 e!794601))

(declare-fun res!941929 () Bool)

(assert (=> b!1403305 (=> (not res!941929) (not e!794601))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95889 (_ BitVec 32)) Bool)

(assert (=> b!1403305 (= res!941929 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47214 0))(
  ( (Unit!47215) )
))
(declare-fun lt!618321 () Unit!47214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47214)

(assert (=> b!1403305 (= lt!618321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95889 (_ BitVec 32)) SeekEntryResult!10630)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403305 (= lt!618320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46291 a!2901) j!112) mask!2840) (select (arr!46291 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403307 () Bool)

(declare-fun res!941931 () Bool)

(assert (=> b!1403307 (=> (not res!941931) (not e!794600))))

(assert (=> b!1403307 (= res!941931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403308 () Bool)

(declare-fun res!941924 () Bool)

(assert (=> b!1403308 (=> (not res!941924) (not e!794600))))

(declare-datatypes ((List!32990 0))(
  ( (Nil!32987) (Cons!32986 (h!34234 (_ BitVec 64)) (t!47691 List!32990)) )
))
(declare-fun arrayNoDuplicates!0 (array!95889 (_ BitVec 32) List!32990) Bool)

(assert (=> b!1403308 (= res!941924 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32987))))

(declare-fun b!1403309 () Bool)

(declare-fun res!941930 () Bool)

(assert (=> b!1403309 (=> (not res!941930) (not e!794600))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403309 (= res!941930 (and (= (size!46842 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46842 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46842 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403306 () Bool)

(assert (=> b!1403306 (= e!794603 true)))

(declare-fun lt!618322 () SeekEntryResult!10630)

(assert (=> b!1403306 (= lt!618322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46291 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46291 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95890 (store (arr!46291 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46842 a!2901)) mask!2840))))

(declare-fun res!941928 () Bool)

(assert (=> start!120562 (=> (not res!941928) (not e!794600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120562 (= res!941928 (validMask!0 mask!2840))))

(assert (=> start!120562 e!794600))

(assert (=> start!120562 true))

(declare-fun array_inv!35236 (array!95889) Bool)

(assert (=> start!120562 (array_inv!35236 a!2901)))

(declare-fun b!1403310 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95889 (_ BitVec 32)) SeekEntryResult!10630)

(assert (=> b!1403310 (= e!794601 (= (seekEntryOrOpen!0 (select (arr!46291 a!2901) j!112) a!2901 mask!2840) (Found!10630 j!112)))))

(declare-fun b!1403311 () Bool)

(declare-fun res!941927 () Bool)

(assert (=> b!1403311 (=> (not res!941927) (not e!794600))))

(assert (=> b!1403311 (= res!941927 (validKeyInArray!0 (select (arr!46291 a!2901) i!1037)))))

(assert (= (and start!120562 res!941928) b!1403309))

(assert (= (and b!1403309 res!941930) b!1403311))

(assert (= (and b!1403311 res!941927) b!1403304))

(assert (= (and b!1403304 res!941926) b!1403307))

(assert (= (and b!1403307 res!941931) b!1403308))

(assert (= (and b!1403308 res!941924) b!1403305))

(assert (= (and b!1403305 res!941929) b!1403310))

(assert (= (and b!1403305 (not res!941925)) b!1403306))

(declare-fun m!1291979 () Bool)

(assert (=> start!120562 m!1291979))

(declare-fun m!1291981 () Bool)

(assert (=> start!120562 m!1291981))

(declare-fun m!1291983 () Bool)

(assert (=> b!1403306 m!1291983))

(declare-fun m!1291985 () Bool)

(assert (=> b!1403306 m!1291985))

(assert (=> b!1403306 m!1291985))

(declare-fun m!1291987 () Bool)

(assert (=> b!1403306 m!1291987))

(assert (=> b!1403306 m!1291987))

(assert (=> b!1403306 m!1291985))

(declare-fun m!1291989 () Bool)

(assert (=> b!1403306 m!1291989))

(declare-fun m!1291991 () Bool)

(assert (=> b!1403305 m!1291991))

(declare-fun m!1291993 () Bool)

(assert (=> b!1403305 m!1291993))

(assert (=> b!1403305 m!1291991))

(declare-fun m!1291995 () Bool)

(assert (=> b!1403305 m!1291995))

(assert (=> b!1403305 m!1291993))

(assert (=> b!1403305 m!1291991))

(declare-fun m!1291997 () Bool)

(assert (=> b!1403305 m!1291997))

(declare-fun m!1291999 () Bool)

(assert (=> b!1403305 m!1291999))

(declare-fun m!1292001 () Bool)

(assert (=> b!1403311 m!1292001))

(assert (=> b!1403311 m!1292001))

(declare-fun m!1292003 () Bool)

(assert (=> b!1403311 m!1292003))

(assert (=> b!1403304 m!1291991))

(assert (=> b!1403304 m!1291991))

(declare-fun m!1292005 () Bool)

(assert (=> b!1403304 m!1292005))

(declare-fun m!1292007 () Bool)

(assert (=> b!1403308 m!1292007))

(assert (=> b!1403310 m!1291991))

(assert (=> b!1403310 m!1291991))

(declare-fun m!1292009 () Bool)

(assert (=> b!1403310 m!1292009))

(declare-fun m!1292011 () Bool)

(assert (=> b!1403307 m!1292011))

(push 1)

(assert (not b!1403311))

(assert (not b!1403304))

(assert (not start!120562))

(assert (not b!1403305))

(assert (not b!1403307))

(assert (not b!1403310))

(assert (not b!1403308))

(assert (not b!1403306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

