; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120080 () Bool)

(assert start!120080)

(declare-fun b!1397414 () Bool)

(declare-fun res!936444 () Bool)

(declare-fun e!791148 () Bool)

(assert (=> b!1397414 (=> (not res!936444) (not e!791148))))

(declare-datatypes ((array!95527 0))(
  ( (array!95528 (arr!46113 (Array (_ BitVec 32) (_ BitVec 64))) (size!46664 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95527)

(declare-datatypes ((List!32812 0))(
  ( (Nil!32809) (Cons!32808 (h!34050 (_ BitVec 64)) (t!47513 List!32812)) )
))
(declare-fun arrayNoDuplicates!0 (array!95527 (_ BitVec 32) List!32812) Bool)

(assert (=> b!1397414 (= res!936444 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32809))))

(declare-fun res!936439 () Bool)

(assert (=> start!120080 (=> (not res!936439) (not e!791148))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120080 (= res!936439 (validMask!0 mask!2840))))

(assert (=> start!120080 e!791148))

(assert (=> start!120080 true))

(declare-fun array_inv!35058 (array!95527) Bool)

(assert (=> start!120080 (array_inv!35058 a!2901)))

(declare-fun b!1397415 () Bool)

(declare-fun res!936437 () Bool)

(assert (=> b!1397415 (=> (not res!936437) (not e!791148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95527 (_ BitVec 32)) Bool)

(assert (=> b!1397415 (= res!936437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397416 () Bool)

(declare-fun res!936436 () Bool)

(assert (=> b!1397416 (=> (not res!936436) (not e!791148))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397416 (= res!936436 (validKeyInArray!0 (select (arr!46113 a!2901) i!1037)))))

(declare-fun b!1397417 () Bool)

(declare-fun res!936441 () Bool)

(assert (=> b!1397417 (=> (not res!936441) (not e!791148))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397417 (= res!936441 (and (= (size!46664 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46664 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46664 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397418 () Bool)

(declare-fun e!791149 () Bool)

(assert (=> b!1397418 (= e!791148 (not e!791149))))

(declare-fun res!936438 () Bool)

(assert (=> b!1397418 (=> res!936438 e!791149)))

(declare-datatypes ((SeekEntryResult!10452 0))(
  ( (MissingZero!10452 (index!44178 (_ BitVec 32))) (Found!10452 (index!44179 (_ BitVec 32))) (Intermediate!10452 (undefined!11264 Bool) (index!44180 (_ BitVec 32)) (x!125837 (_ BitVec 32))) (Undefined!10452) (MissingVacant!10452 (index!44181 (_ BitVec 32))) )
))
(declare-fun lt!614192 () SeekEntryResult!10452)

(assert (=> b!1397418 (= res!936438 (or (not (is-Intermediate!10452 lt!614192)) (undefined!11264 lt!614192)))))

(declare-fun e!791146 () Bool)

(assert (=> b!1397418 e!791146))

(declare-fun res!936442 () Bool)

(assert (=> b!1397418 (=> (not res!936442) (not e!791146))))

(assert (=> b!1397418 (= res!936442 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46858 0))(
  ( (Unit!46859) )
))
(declare-fun lt!614194 () Unit!46858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46858)

(assert (=> b!1397418 (= lt!614194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614188 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95527 (_ BitVec 32)) SeekEntryResult!10452)

(assert (=> b!1397418 (= lt!614192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614188 (select (arr!46113 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397418 (= lt!614188 (toIndex!0 (select (arr!46113 a!2901) j!112) mask!2840))))

(declare-fun b!1397419 () Bool)

(declare-fun e!791147 () Bool)

(assert (=> b!1397419 (= e!791149 e!791147)))

(declare-fun res!936443 () Bool)

(assert (=> b!1397419 (=> res!936443 e!791147)))

(declare-fun lt!614191 () SeekEntryResult!10452)

(assert (=> b!1397419 (= res!936443 (or (= lt!614192 lt!614191) (not (is-Intermediate!10452 lt!614191)) (bvslt (x!125837 lt!614192) #b00000000000000000000000000000000) (bvsgt (x!125837 lt!614192) #b01111111111111111111111111111110) (bvslt lt!614188 #b00000000000000000000000000000000) (bvsge lt!614188 (size!46664 a!2901)) (bvslt (index!44180 lt!614192) #b00000000000000000000000000000000) (bvsge (index!44180 lt!614192) (size!46664 a!2901)) (not (= lt!614192 (Intermediate!10452 false (index!44180 lt!614192) (x!125837 lt!614192)))) (not (= lt!614191 (Intermediate!10452 (undefined!11264 lt!614191) (index!44180 lt!614191) (x!125837 lt!614191))))))))

(declare-fun lt!614190 () (_ BitVec 64))

(declare-fun lt!614193 () array!95527)

(assert (=> b!1397419 (= lt!614191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614190 mask!2840) lt!614190 lt!614193 mask!2840))))

(assert (=> b!1397419 (= lt!614190 (select (store (arr!46113 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397419 (= lt!614193 (array!95528 (store (arr!46113 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46664 a!2901)))))

(declare-fun b!1397420 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95527 (_ BitVec 32)) SeekEntryResult!10452)

(assert (=> b!1397420 (= e!791146 (= (seekEntryOrOpen!0 (select (arr!46113 a!2901) j!112) a!2901 mask!2840) (Found!10452 j!112)))))

(declare-fun b!1397421 () Bool)

(assert (=> b!1397421 (= e!791147 true)))

(declare-fun lt!614189 () SeekEntryResult!10452)

(assert (=> b!1397421 (= lt!614189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614188 lt!614190 lt!614193 mask!2840))))

(declare-fun b!1397422 () Bool)

(declare-fun res!936440 () Bool)

(assert (=> b!1397422 (=> (not res!936440) (not e!791148))))

(assert (=> b!1397422 (= res!936440 (validKeyInArray!0 (select (arr!46113 a!2901) j!112)))))

(assert (= (and start!120080 res!936439) b!1397417))

(assert (= (and b!1397417 res!936441) b!1397416))

(assert (= (and b!1397416 res!936436) b!1397422))

(assert (= (and b!1397422 res!936440) b!1397415))

(assert (= (and b!1397415 res!936437) b!1397414))

(assert (= (and b!1397414 res!936444) b!1397418))

(assert (= (and b!1397418 res!936442) b!1397420))

(assert (= (and b!1397418 (not res!936438)) b!1397419))

(assert (= (and b!1397419 (not res!936443)) b!1397421))

(declare-fun m!1284263 () Bool)

(assert (=> b!1397416 m!1284263))

(assert (=> b!1397416 m!1284263))

(declare-fun m!1284265 () Bool)

(assert (=> b!1397416 m!1284265))

(declare-fun m!1284267 () Bool)

(assert (=> b!1397414 m!1284267))

(declare-fun m!1284269 () Bool)

(assert (=> b!1397422 m!1284269))

(assert (=> b!1397422 m!1284269))

(declare-fun m!1284271 () Bool)

(assert (=> b!1397422 m!1284271))

(declare-fun m!1284273 () Bool)

(assert (=> b!1397419 m!1284273))

(assert (=> b!1397419 m!1284273))

(declare-fun m!1284275 () Bool)

(assert (=> b!1397419 m!1284275))

(declare-fun m!1284277 () Bool)

(assert (=> b!1397419 m!1284277))

(declare-fun m!1284279 () Bool)

(assert (=> b!1397419 m!1284279))

(assert (=> b!1397418 m!1284269))

(declare-fun m!1284281 () Bool)

(assert (=> b!1397418 m!1284281))

(assert (=> b!1397418 m!1284269))

(assert (=> b!1397418 m!1284269))

(declare-fun m!1284283 () Bool)

(assert (=> b!1397418 m!1284283))

(declare-fun m!1284285 () Bool)

(assert (=> b!1397418 m!1284285))

(declare-fun m!1284287 () Bool)

(assert (=> b!1397418 m!1284287))

(assert (=> b!1397420 m!1284269))

(assert (=> b!1397420 m!1284269))

(declare-fun m!1284289 () Bool)

(assert (=> b!1397420 m!1284289))

(declare-fun m!1284291 () Bool)

(assert (=> b!1397421 m!1284291))

(declare-fun m!1284293 () Bool)

(assert (=> start!120080 m!1284293))

(declare-fun m!1284295 () Bool)

(assert (=> start!120080 m!1284295))

(declare-fun m!1284297 () Bool)

(assert (=> b!1397415 m!1284297))

(push 1)

(assert (not b!1397415))

(assert (not b!1397421))

(assert (not b!1397418))

(assert (not b!1397414))

(assert (not b!1397422))

(assert (not start!120080))

(assert (not b!1397419))

(assert (not b!1397416))

(assert (not b!1397420))

(check-sat)

(pop 1)

(push 1)

