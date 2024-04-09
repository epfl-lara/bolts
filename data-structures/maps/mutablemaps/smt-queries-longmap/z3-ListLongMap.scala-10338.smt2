; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121620 () Bool)

(assert start!121620)

(declare-fun b!1412230 () Bool)

(declare-fun res!949332 () Bool)

(declare-fun e!799214 () Bool)

(assert (=> b!1412230 (=> (not res!949332) (not e!799214))))

(declare-datatypes ((array!96476 0))(
  ( (array!96477 (arr!46571 (Array (_ BitVec 32) (_ BitVec 64))) (size!47122 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96476)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96476 (_ BitVec 32)) Bool)

(assert (=> b!1412230 (= res!949332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412231 () Bool)

(declare-fun res!949337 () Bool)

(assert (=> b!1412231 (=> (not res!949337) (not e!799214))))

(declare-datatypes ((List!33270 0))(
  ( (Nil!33267) (Cons!33266 (h!34541 (_ BitVec 64)) (t!47971 List!33270)) )
))
(declare-fun arrayNoDuplicates!0 (array!96476 (_ BitVec 32) List!33270) Bool)

(assert (=> b!1412231 (= res!949337 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33267))))

(declare-fun res!949331 () Bool)

(assert (=> start!121620 (=> (not res!949331) (not e!799214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121620 (= res!949331 (validMask!0 mask!2840))))

(assert (=> start!121620 e!799214))

(assert (=> start!121620 true))

(declare-fun array_inv!35516 (array!96476) Bool)

(assert (=> start!121620 (array_inv!35516 a!2901)))

(declare-fun lt!622190 () (_ BitVec 64))

(declare-fun lt!622188 () array!96476)

(declare-datatypes ((SeekEntryResult!10904 0))(
  ( (MissingZero!10904 (index!45995 (_ BitVec 32))) (Found!10904 (index!45996 (_ BitVec 32))) (Intermediate!10904 (undefined!11716 Bool) (index!45997 (_ BitVec 32)) (x!127594 (_ BitVec 32))) (Undefined!10904) (MissingVacant!10904 (index!45998 (_ BitVec 32))) )
))
(declare-fun lt!622189 () SeekEntryResult!10904)

(declare-fun e!799211 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1412232 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96476 (_ BitVec 32)) SeekEntryResult!10904)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96476 (_ BitVec 32)) SeekEntryResult!10904)

(assert (=> b!1412232 (= e!799211 (= (seekEntryOrOpen!0 lt!622190 lt!622188 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127594 lt!622189) (index!45997 lt!622189) (index!45997 lt!622189) (select (arr!46571 a!2901) j!112) lt!622188 mask!2840)))))

(declare-fun b!1412233 () Bool)

(declare-fun res!949335 () Bool)

(assert (=> b!1412233 (=> (not res!949335) (not e!799214))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412233 (= res!949335 (and (= (size!47122 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47122 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47122 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412234 () Bool)

(declare-fun res!949329 () Bool)

(assert (=> b!1412234 (=> (not res!949329) (not e!799214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412234 (= res!949329 (validKeyInArray!0 (select (arr!46571 a!2901) j!112)))))

(declare-fun b!1412235 () Bool)

(declare-fun e!799209 () Bool)

(declare-fun e!799212 () Bool)

(assert (=> b!1412235 (= e!799209 e!799212)))

(declare-fun res!949330 () Bool)

(assert (=> b!1412235 (=> res!949330 e!799212)))

(declare-fun lt!622192 () SeekEntryResult!10904)

(get-info :version)

(assert (=> b!1412235 (= res!949330 (or (= lt!622192 lt!622189) (not ((_ is Intermediate!10904) lt!622189))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96476 (_ BitVec 32)) SeekEntryResult!10904)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412235 (= lt!622189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622190 mask!2840) lt!622190 lt!622188 mask!2840))))

(assert (=> b!1412235 (= lt!622190 (select (store (arr!46571 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412235 (= lt!622188 (array!96477 (store (arr!46571 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47122 a!2901)))))

(declare-fun b!1412236 () Bool)

(assert (=> b!1412236 (= e!799212 true)))

(assert (=> b!1412236 e!799211))

(declare-fun res!949333 () Bool)

(assert (=> b!1412236 (=> (not res!949333) (not e!799211))))

(assert (=> b!1412236 (= res!949333 (and (not (undefined!11716 lt!622189)) (= (index!45997 lt!622189) i!1037) (bvslt (x!127594 lt!622189) (x!127594 lt!622192)) (= (select (store (arr!46571 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45997 lt!622189)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47732 0))(
  ( (Unit!47733) )
))
(declare-fun lt!622191 () Unit!47732)

(declare-fun lt!622186 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47732)

(assert (=> b!1412236 (= lt!622191 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622186 (x!127594 lt!622192) (index!45997 lt!622192) (x!127594 lt!622189) (index!45997 lt!622189) (undefined!11716 lt!622189) mask!2840))))

(declare-fun b!1412237 () Bool)

(declare-fun e!799213 () Bool)

(assert (=> b!1412237 (= e!799213 (= (seekEntryOrOpen!0 (select (arr!46571 a!2901) j!112) a!2901 mask!2840) (Found!10904 j!112)))))

(declare-fun b!1412238 () Bool)

(assert (=> b!1412238 (= e!799214 (not e!799209))))

(declare-fun res!949334 () Bool)

(assert (=> b!1412238 (=> res!949334 e!799209)))

(assert (=> b!1412238 (= res!949334 (or (not ((_ is Intermediate!10904) lt!622192)) (undefined!11716 lt!622192)))))

(assert (=> b!1412238 e!799213))

(declare-fun res!949338 () Bool)

(assert (=> b!1412238 (=> (not res!949338) (not e!799213))))

(assert (=> b!1412238 (= res!949338 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622187 () Unit!47732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47732)

(assert (=> b!1412238 (= lt!622187 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412238 (= lt!622192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622186 (select (arr!46571 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412238 (= lt!622186 (toIndex!0 (select (arr!46571 a!2901) j!112) mask!2840))))

(declare-fun b!1412239 () Bool)

(declare-fun res!949336 () Bool)

(assert (=> b!1412239 (=> (not res!949336) (not e!799214))))

(assert (=> b!1412239 (= res!949336 (validKeyInArray!0 (select (arr!46571 a!2901) i!1037)))))

(assert (= (and start!121620 res!949331) b!1412233))

(assert (= (and b!1412233 res!949335) b!1412239))

(assert (= (and b!1412239 res!949336) b!1412234))

(assert (= (and b!1412234 res!949329) b!1412230))

(assert (= (and b!1412230 res!949332) b!1412231))

(assert (= (and b!1412231 res!949337) b!1412238))

(assert (= (and b!1412238 res!949338) b!1412237))

(assert (= (and b!1412238 (not res!949334)) b!1412235))

(assert (= (and b!1412235 (not res!949330)) b!1412236))

(assert (= (and b!1412236 res!949333) b!1412232))

(declare-fun m!1302263 () Bool)

(assert (=> b!1412232 m!1302263))

(declare-fun m!1302265 () Bool)

(assert (=> b!1412232 m!1302265))

(assert (=> b!1412232 m!1302265))

(declare-fun m!1302267 () Bool)

(assert (=> b!1412232 m!1302267))

(declare-fun m!1302269 () Bool)

(assert (=> b!1412231 m!1302269))

(declare-fun m!1302271 () Bool)

(assert (=> b!1412236 m!1302271))

(declare-fun m!1302273 () Bool)

(assert (=> b!1412236 m!1302273))

(declare-fun m!1302275 () Bool)

(assert (=> b!1412236 m!1302275))

(assert (=> b!1412237 m!1302265))

(assert (=> b!1412237 m!1302265))

(declare-fun m!1302277 () Bool)

(assert (=> b!1412237 m!1302277))

(declare-fun m!1302279 () Bool)

(assert (=> b!1412230 m!1302279))

(declare-fun m!1302281 () Bool)

(assert (=> b!1412235 m!1302281))

(assert (=> b!1412235 m!1302281))

(declare-fun m!1302283 () Bool)

(assert (=> b!1412235 m!1302283))

(assert (=> b!1412235 m!1302271))

(declare-fun m!1302285 () Bool)

(assert (=> b!1412235 m!1302285))

(assert (=> b!1412234 m!1302265))

(assert (=> b!1412234 m!1302265))

(declare-fun m!1302287 () Bool)

(assert (=> b!1412234 m!1302287))

(declare-fun m!1302289 () Bool)

(assert (=> start!121620 m!1302289))

(declare-fun m!1302291 () Bool)

(assert (=> start!121620 m!1302291))

(declare-fun m!1302293 () Bool)

(assert (=> b!1412239 m!1302293))

(assert (=> b!1412239 m!1302293))

(declare-fun m!1302295 () Bool)

(assert (=> b!1412239 m!1302295))

(assert (=> b!1412238 m!1302265))

(declare-fun m!1302297 () Bool)

(assert (=> b!1412238 m!1302297))

(assert (=> b!1412238 m!1302265))

(declare-fun m!1302299 () Bool)

(assert (=> b!1412238 m!1302299))

(assert (=> b!1412238 m!1302265))

(declare-fun m!1302301 () Bool)

(assert (=> b!1412238 m!1302301))

(declare-fun m!1302303 () Bool)

(assert (=> b!1412238 m!1302303))

(check-sat (not b!1412230) (not b!1412231) (not b!1412237) (not b!1412232) (not b!1412238) (not b!1412234) (not start!121620) (not b!1412239) (not b!1412236) (not b!1412235))
(check-sat)
