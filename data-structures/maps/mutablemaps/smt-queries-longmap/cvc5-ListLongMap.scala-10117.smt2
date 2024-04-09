; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119236 () Bool)

(assert start!119236)

(declare-fun b!1390348 () Bool)

(declare-fun res!930618 () Bool)

(declare-fun e!787399 () Bool)

(assert (=> b!1390348 (=> (not res!930618) (not e!787399))))

(declare-datatypes ((array!95091 0))(
  ( (array!95092 (arr!45907 (Array (_ BitVec 32) (_ BitVec 64))) (size!46458 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95091)

(declare-datatypes ((List!32606 0))(
  ( (Nil!32603) (Cons!32602 (h!33820 (_ BitVec 64)) (t!47307 List!32606)) )
))
(declare-fun arrayNoDuplicates!0 (array!95091 (_ BitVec 32) List!32606) Bool)

(assert (=> b!1390348 (= res!930618 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32603))))

(declare-fun b!1390349 () Bool)

(declare-fun res!930622 () Bool)

(assert (=> b!1390349 (=> (not res!930622) (not e!787399))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390349 (= res!930622 (and (= (size!46458 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46458 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46458 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390350 () Bool)

(declare-fun e!787400 () Bool)

(declare-datatypes ((SeekEntryResult!10246 0))(
  ( (MissingZero!10246 (index!43354 (_ BitVec 32))) (Found!10246 (index!43355 (_ BitVec 32))) (Intermediate!10246 (undefined!11058 Bool) (index!43356 (_ BitVec 32)) (x!125039 (_ BitVec 32))) (Undefined!10246) (MissingVacant!10246 (index!43357 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95091 (_ BitVec 32)) SeekEntryResult!10246)

(assert (=> b!1390350 (= e!787400 (= (seekEntryOrOpen!0 (select (arr!45907 a!2901) j!112) a!2901 mask!2840) (Found!10246 j!112)))))

(declare-fun res!930619 () Bool)

(assert (=> start!119236 (=> (not res!930619) (not e!787399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119236 (= res!930619 (validMask!0 mask!2840))))

(assert (=> start!119236 e!787399))

(assert (=> start!119236 true))

(declare-fun array_inv!34852 (array!95091) Bool)

(assert (=> start!119236 (array_inv!34852 a!2901)))

(declare-fun b!1390351 () Bool)

(declare-fun res!930624 () Bool)

(assert (=> b!1390351 (=> (not res!930624) (not e!787399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95091 (_ BitVec 32)) Bool)

(assert (=> b!1390351 (= res!930624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390352 () Bool)

(declare-fun res!930623 () Bool)

(assert (=> b!1390352 (=> (not res!930623) (not e!787399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390352 (= res!930623 (validKeyInArray!0 (select (arr!45907 a!2901) i!1037)))))

(declare-fun b!1390353 () Bool)

(assert (=> b!1390353 (= e!787399 (not true))))

(assert (=> b!1390353 e!787400))

(declare-fun res!930621 () Bool)

(assert (=> b!1390353 (=> (not res!930621) (not e!787400))))

(assert (=> b!1390353 (= res!930621 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46446 0))(
  ( (Unit!46447) )
))
(declare-fun lt!610761 () Unit!46446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46446)

(assert (=> b!1390353 (= lt!610761 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610762 () SeekEntryResult!10246)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95091 (_ BitVec 32)) SeekEntryResult!10246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390353 (= lt!610762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45907 a!2901) j!112) mask!2840) (select (arr!45907 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390354 () Bool)

(declare-fun res!930620 () Bool)

(assert (=> b!1390354 (=> (not res!930620) (not e!787399))))

(assert (=> b!1390354 (= res!930620 (validKeyInArray!0 (select (arr!45907 a!2901) j!112)))))

(assert (= (and start!119236 res!930619) b!1390349))

(assert (= (and b!1390349 res!930622) b!1390352))

(assert (= (and b!1390352 res!930623) b!1390354))

(assert (= (and b!1390354 res!930620) b!1390351))

(assert (= (and b!1390351 res!930624) b!1390348))

(assert (= (and b!1390348 res!930618) b!1390353))

(assert (= (and b!1390353 res!930621) b!1390350))

(declare-fun m!1276253 () Bool)

(assert (=> b!1390350 m!1276253))

(assert (=> b!1390350 m!1276253))

(declare-fun m!1276255 () Bool)

(assert (=> b!1390350 m!1276255))

(declare-fun m!1276257 () Bool)

(assert (=> b!1390351 m!1276257))

(assert (=> b!1390354 m!1276253))

(assert (=> b!1390354 m!1276253))

(declare-fun m!1276259 () Bool)

(assert (=> b!1390354 m!1276259))

(assert (=> b!1390353 m!1276253))

(declare-fun m!1276261 () Bool)

(assert (=> b!1390353 m!1276261))

(assert (=> b!1390353 m!1276253))

(declare-fun m!1276263 () Bool)

(assert (=> b!1390353 m!1276263))

(assert (=> b!1390353 m!1276261))

(assert (=> b!1390353 m!1276253))

(declare-fun m!1276265 () Bool)

(assert (=> b!1390353 m!1276265))

(declare-fun m!1276267 () Bool)

(assert (=> b!1390353 m!1276267))

(declare-fun m!1276269 () Bool)

(assert (=> start!119236 m!1276269))

(declare-fun m!1276271 () Bool)

(assert (=> start!119236 m!1276271))

(declare-fun m!1276273 () Bool)

(assert (=> b!1390348 m!1276273))

(declare-fun m!1276275 () Bool)

(assert (=> b!1390352 m!1276275))

(assert (=> b!1390352 m!1276275))

(declare-fun m!1276277 () Bool)

(assert (=> b!1390352 m!1276277))

(push 1)

(assert (not b!1390348))

(assert (not b!1390354))

(assert (not b!1390353))

(assert (not b!1390350))

(assert (not b!1390352))

(assert (not start!119236))

(assert (not b!1390351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

