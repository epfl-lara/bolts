; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119408 () Bool)

(assert start!119408)

(declare-fun b!1391476 () Bool)

(declare-fun res!931454 () Bool)

(declare-fun e!787974 () Bool)

(assert (=> b!1391476 (=> (not res!931454) (not e!787974))))

(declare-datatypes ((array!95161 0))(
  ( (array!95162 (arr!45939 (Array (_ BitVec 32) (_ BitVec 64))) (size!46490 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95161)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391476 (= res!931454 (validKeyInArray!0 (select (arr!45939 a!2901) i!1037)))))

(declare-fun b!1391478 () Bool)

(declare-fun res!931455 () Bool)

(assert (=> b!1391478 (=> (not res!931455) (not e!787974))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1391478 (= res!931455 (validKeyInArray!0 (select (arr!45939 a!2901) j!112)))))

(declare-fun b!1391479 () Bool)

(declare-datatypes ((SeekEntryResult!10278 0))(
  ( (MissingZero!10278 (index!43482 (_ BitVec 32))) (Found!10278 (index!43483 (_ BitVec 32))) (Intermediate!10278 (undefined!11090 Bool) (index!43484 (_ BitVec 32)) (x!125163 (_ BitVec 32))) (Undefined!10278) (MissingVacant!10278 (index!43485 (_ BitVec 32))) )
))
(declare-fun lt!611178 () SeekEntryResult!10278)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1391479 (= e!787974 (not (or (not (is-Intermediate!10278 lt!611178)) (undefined!11090 lt!611178) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(declare-fun e!787976 () Bool)

(assert (=> b!1391479 e!787976))

(declare-fun res!931457 () Bool)

(assert (=> b!1391479 (=> (not res!931457) (not e!787976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95161 (_ BitVec 32)) Bool)

(assert (=> b!1391479 (= res!931457 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46510 0))(
  ( (Unit!46511) )
))
(declare-fun lt!611179 () Unit!46510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46510)

(assert (=> b!1391479 (= lt!611179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95161 (_ BitVec 32)) SeekEntryResult!10278)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391479 (= lt!611178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) (select (arr!45939 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391480 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95161 (_ BitVec 32)) SeekEntryResult!10278)

(assert (=> b!1391480 (= e!787976 (= (seekEntryOrOpen!0 (select (arr!45939 a!2901) j!112) a!2901 mask!2840) (Found!10278 j!112)))))

(declare-fun b!1391481 () Bool)

(declare-fun res!931458 () Bool)

(assert (=> b!1391481 (=> (not res!931458) (not e!787974))))

(assert (=> b!1391481 (= res!931458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391482 () Bool)

(declare-fun res!931453 () Bool)

(assert (=> b!1391482 (=> (not res!931453) (not e!787974))))

(declare-datatypes ((List!32638 0))(
  ( (Nil!32635) (Cons!32634 (h!33858 (_ BitVec 64)) (t!47339 List!32638)) )
))
(declare-fun arrayNoDuplicates!0 (array!95161 (_ BitVec 32) List!32638) Bool)

(assert (=> b!1391482 (= res!931453 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32635))))

(declare-fun b!1391477 () Bool)

(declare-fun res!931452 () Bool)

(assert (=> b!1391477 (=> (not res!931452) (not e!787974))))

(assert (=> b!1391477 (= res!931452 (and (= (size!46490 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46490 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46490 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!931456 () Bool)

(assert (=> start!119408 (=> (not res!931456) (not e!787974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119408 (= res!931456 (validMask!0 mask!2840))))

(assert (=> start!119408 e!787974))

(assert (=> start!119408 true))

(declare-fun array_inv!34884 (array!95161) Bool)

(assert (=> start!119408 (array_inv!34884 a!2901)))

(assert (= (and start!119408 res!931456) b!1391477))

(assert (= (and b!1391477 res!931452) b!1391476))

(assert (= (and b!1391476 res!931454) b!1391478))

(assert (= (and b!1391478 res!931455) b!1391481))

(assert (= (and b!1391481 res!931458) b!1391482))

(assert (= (and b!1391482 res!931453) b!1391479))

(assert (= (and b!1391479 res!931457) b!1391480))

(declare-fun m!1277343 () Bool)

(assert (=> b!1391481 m!1277343))

(declare-fun m!1277345 () Bool)

(assert (=> b!1391478 m!1277345))

(assert (=> b!1391478 m!1277345))

(declare-fun m!1277347 () Bool)

(assert (=> b!1391478 m!1277347))

(declare-fun m!1277349 () Bool)

(assert (=> start!119408 m!1277349))

(declare-fun m!1277351 () Bool)

(assert (=> start!119408 m!1277351))

(assert (=> b!1391479 m!1277345))

(declare-fun m!1277353 () Bool)

(assert (=> b!1391479 m!1277353))

(assert (=> b!1391479 m!1277345))

(declare-fun m!1277355 () Bool)

(assert (=> b!1391479 m!1277355))

(assert (=> b!1391479 m!1277353))

(assert (=> b!1391479 m!1277345))

(declare-fun m!1277357 () Bool)

(assert (=> b!1391479 m!1277357))

(declare-fun m!1277359 () Bool)

(assert (=> b!1391479 m!1277359))

(assert (=> b!1391480 m!1277345))

(assert (=> b!1391480 m!1277345))

(declare-fun m!1277361 () Bool)

(assert (=> b!1391480 m!1277361))

(declare-fun m!1277363 () Bool)

(assert (=> b!1391476 m!1277363))

(assert (=> b!1391476 m!1277363))

(declare-fun m!1277365 () Bool)

(assert (=> b!1391476 m!1277365))

(declare-fun m!1277367 () Bool)

(assert (=> b!1391482 m!1277367))

(push 1)

(assert (not b!1391479))

(assert (not b!1391476))

(assert (not b!1391480))

(assert (not b!1391478))

(assert (not b!1391481))

(assert (not b!1391482))

(assert (not start!119408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1391523 () Bool)

(declare-fun e!788006 () SeekEntryResult!10278)

(declare-fun e!788004 () SeekEntryResult!10278)

(assert (=> b!1391523 (= e!788006 e!788004)))

(declare-fun lt!611212 () (_ BitVec 64))

(declare-fun lt!611211 () SeekEntryResult!10278)

(assert (=> b!1391523 (= lt!611212 (select (arr!45939 a!2901) (index!43484 lt!611211)))))

(declare-fun c!129477 () Bool)

(assert (=> b!1391523 (= c!129477 (= lt!611212 (select (arr!45939 a!2901) j!112)))))

(declare-fun b!1391524 () Bool)

(declare-fun e!788005 () SeekEntryResult!10278)

(assert (=> b!1391524 (= e!788005 (MissingZero!10278 (index!43484 lt!611211)))))

(declare-fun b!1391525 () Bool)

(declare-fun c!129475 () Bool)

(assert (=> b!1391525 (= c!129475 (= lt!611212 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391525 (= e!788004 e!788005)))

(declare-fun b!1391526 () Bool)

(assert (=> b!1391526 (= e!788004 (Found!10278 (index!43484 lt!611211)))))

(declare-fun b!1391527 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95161 (_ BitVec 32)) SeekEntryResult!10278)

(assert (=> b!1391527 (= e!788005 (seekKeyOrZeroReturnVacant!0 (x!125163 lt!611211) (index!43484 lt!611211) (index!43484 lt!611211) (select (arr!45939 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391528 () Bool)

(assert (=> b!1391528 (= e!788006 Undefined!10278)))

(declare-fun d!150281 () Bool)

(declare-fun lt!611210 () SeekEntryResult!10278)

(assert (=> d!150281 (and (or (is-Undefined!10278 lt!611210) (not (is-Found!10278 lt!611210)) (and (bvsge (index!43483 lt!611210) #b00000000000000000000000000000000) (bvslt (index!43483 lt!611210) (size!46490 a!2901)))) (or (is-Undefined!10278 lt!611210) (is-Found!10278 lt!611210) (not (is-MissingZero!10278 lt!611210)) (and (bvsge (index!43482 lt!611210) #b00000000000000000000000000000000) (bvslt (index!43482 lt!611210) (size!46490 a!2901)))) (or (is-Undefined!10278 lt!611210) (is-Found!10278 lt!611210) (is-MissingZero!10278 lt!611210) (not (is-MissingVacant!10278 lt!611210)) (and (bvsge (index!43485 lt!611210) #b00000000000000000000000000000000) (bvslt (index!43485 lt!611210) (size!46490 a!2901)))) (or (is-Undefined!10278 lt!611210) (ite (is-Found!10278 lt!611210) (= (select (arr!45939 a!2901) (index!43483 lt!611210)) (select (arr!45939 a!2901) j!112)) (ite (is-MissingZero!10278 lt!611210) (= (select (arr!45939 a!2901) (index!43482 lt!611210)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10278 lt!611210) (= (select (arr!45939 a!2901) (index!43485 lt!611210)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150281 (= lt!611210 e!788006)))

(declare-fun c!129476 () Bool)

(assert (=> d!150281 (= c!129476 (and (is-Intermediate!10278 lt!611211) (undefined!11090 lt!611211)))))

(assert (=> d!150281 (= lt!611211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) (select (arr!45939 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150281 (validMask!0 mask!2840)))

(assert (=> d!150281 (= (seekEntryOrOpen!0 (select (arr!45939 a!2901) j!112) a!2901 mask!2840) lt!611210)))

(assert (= (and d!150281 c!129476) b!1391528))

(assert (= (and d!150281 (not c!129476)) b!1391523))

(assert (= (and b!1391523 c!129477) b!1391526))

(assert (= (and b!1391523 (not c!129477)) b!1391525))

(assert (= (and b!1391525 c!129475) b!1391524))

(assert (= (and b!1391525 (not c!129475)) b!1391527))

(declare-fun m!1277401 () Bool)

(assert (=> b!1391523 m!1277401))

(assert (=> b!1391527 m!1277345))

(declare-fun m!1277403 () Bool)

(assert (=> b!1391527 m!1277403))

(assert (=> d!150281 m!1277353))

(assert (=> d!150281 m!1277345))

(assert (=> d!150281 m!1277357))

(assert (=> d!150281 m!1277349))

(assert (=> d!150281 m!1277345))

(assert (=> d!150281 m!1277353))

(declare-fun m!1277405 () Bool)

(assert (=> d!150281 m!1277405))

(declare-fun m!1277407 () Bool)

(assert (=> d!150281 m!1277407))

(declare-fun m!1277409 () Bool)

(assert (=> d!150281 m!1277409))

(assert (=> b!1391480 d!150281))

(declare-fun d!150295 () Bool)

(declare-fun res!931487 () Bool)

(declare-fun e!788028 () Bool)

(assert (=> d!150295 (=> res!931487 e!788028)))

(assert (=> d!150295 (= res!931487 (bvsge #b00000000000000000000000000000000 (size!46490 a!2901)))))

(assert (=> d!150295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788028)))

(declare-fun b!1391564 () Bool)

(declare-fun e!788029 () Bool)

(declare-fun call!66748 () Bool)

(assert (=> b!1391564 (= e!788029 call!66748)))

(declare-fun b!1391565 () Bool)

(declare-fun e!788030 () Bool)

(assert (=> b!1391565 (= e!788030 e!788029)))

(declare-fun lt!611227 () (_ BitVec 64))

(assert (=> b!1391565 (= lt!611227 (select (arr!45939 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611225 () Unit!46510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95161 (_ BitVec 64) (_ BitVec 32)) Unit!46510)

(assert (=> b!1391565 (= lt!611225 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611227 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391565 (arrayContainsKey!0 a!2901 lt!611227 #b00000000000000000000000000000000)))

(declare-fun lt!611226 () Unit!46510)

(assert (=> b!1391565 (= lt!611226 lt!611225)))

(declare-fun res!931488 () Bool)

(assert (=> b!1391565 (= res!931488 (= (seekEntryOrOpen!0 (select (arr!45939 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10278 #b00000000000000000000000000000000)))))

(assert (=> b!1391565 (=> (not res!931488) (not e!788029))))

(declare-fun b!1391566 () Bool)

(assert (=> b!1391566 (= e!788028 e!788030)))

(declare-fun c!129489 () Bool)

(assert (=> b!1391566 (= c!129489 (validKeyInArray!0 (select (arr!45939 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391567 () Bool)

(assert (=> b!1391567 (= e!788030 call!66748)))

(declare-fun bm!66745 () Bool)

(assert (=> bm!66745 (= call!66748 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150295 (not res!931487)) b!1391566))

(assert (= (and b!1391566 c!129489) b!1391565))

(assert (= (and b!1391566 (not c!129489)) b!1391567))

(assert (= (and b!1391565 res!931488) b!1391564))

(assert (= (or b!1391564 b!1391567) bm!66745))

(declare-fun m!1277419 () Bool)

(assert (=> b!1391565 m!1277419))

(declare-fun m!1277421 () Bool)

(assert (=> b!1391565 m!1277421))

(declare-fun m!1277423 () Bool)

(assert (=> b!1391565 m!1277423))

(assert (=> b!1391565 m!1277419))

(declare-fun m!1277425 () Bool)

(assert (=> b!1391565 m!1277425))

(assert (=> b!1391566 m!1277419))

(assert (=> b!1391566 m!1277419))

(declare-fun m!1277427 () Bool)

(assert (=> b!1391566 m!1277427))

(declare-fun m!1277429 () Bool)

(assert (=> bm!66745 m!1277429))

(assert (=> b!1391481 d!150295))

(declare-fun d!150299 () Bool)

(declare-fun res!931489 () Bool)

(declare-fun e!788031 () Bool)

(assert (=> d!150299 (=> res!931489 e!788031)))

(assert (=> d!150299 (= res!931489 (bvsge j!112 (size!46490 a!2901)))))

(assert (=> d!150299 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788031)))

(declare-fun b!1391568 () Bool)

(declare-fun e!788032 () Bool)

(declare-fun call!66749 () Bool)

(assert (=> b!1391568 (= e!788032 call!66749)))

(declare-fun b!1391569 () Bool)

(declare-fun e!788033 () Bool)

(assert (=> b!1391569 (= e!788033 e!788032)))

(declare-fun lt!611230 () (_ BitVec 64))

(assert (=> b!1391569 (= lt!611230 (select (arr!45939 a!2901) j!112))))

(declare-fun lt!611228 () Unit!46510)

(assert (=> b!1391569 (= lt!611228 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611230 j!112))))

(assert (=> b!1391569 (arrayContainsKey!0 a!2901 lt!611230 #b00000000000000000000000000000000)))

(declare-fun lt!611229 () Unit!46510)

(assert (=> b!1391569 (= lt!611229 lt!611228)))

(declare-fun res!931490 () Bool)

(assert (=> b!1391569 (= res!931490 (= (seekEntryOrOpen!0 (select (arr!45939 a!2901) j!112) a!2901 mask!2840) (Found!10278 j!112)))))

(assert (=> b!1391569 (=> (not res!931490) (not e!788032))))

(declare-fun b!1391570 () Bool)

(assert (=> b!1391570 (= e!788031 e!788033)))

(declare-fun c!129490 () Bool)

(assert (=> b!1391570 (= c!129490 (validKeyInArray!0 (select (arr!45939 a!2901) j!112)))))

(declare-fun b!1391571 () Bool)

(assert (=> b!1391571 (= e!788033 call!66749)))

(declare-fun bm!66746 () Bool)

(assert (=> bm!66746 (= call!66749 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150299 (not res!931489)) b!1391570))

(assert (= (and b!1391570 c!129490) b!1391569))

(assert (= (and b!1391570 (not c!129490)) b!1391571))

(assert (= (and b!1391569 res!931490) b!1391568))

(assert (= (or b!1391568 b!1391571) bm!66746))

(assert (=> b!1391569 m!1277345))

(declare-fun m!1277431 () Bool)

(assert (=> b!1391569 m!1277431))

(declare-fun m!1277433 () Bool)

(assert (=> b!1391569 m!1277433))

(assert (=> b!1391569 m!1277345))

(assert (=> b!1391569 m!1277361))

(assert (=> b!1391570 m!1277345))

(assert (=> b!1391570 m!1277345))

(assert (=> b!1391570 m!1277347))

(declare-fun m!1277435 () Bool)

(assert (=> bm!66746 m!1277435))

(assert (=> b!1391479 d!150299))

(declare-fun d!150301 () Bool)

(assert (=> d!150301 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611245 () Unit!46510)

(declare-fun choose!38 (array!95161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46510)

(assert (=> d!150301 (= lt!611245 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150301 (validMask!0 mask!2840)))

(assert (=> d!150301 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611245)))

(declare-fun bs!40479 () Bool)

(assert (= bs!40479 d!150301))

(assert (=> bs!40479 m!1277359))

(declare-fun m!1277437 () Bool)

(assert (=> bs!40479 m!1277437))

(assert (=> bs!40479 m!1277349))

(assert (=> b!1391479 d!150301))

(declare-fun b!1391642 () Bool)

(declare-fun e!788080 () SeekEntryResult!10278)

(assert (=> b!1391642 (= e!788080 (Intermediate!10278 false (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun e!788081 () SeekEntryResult!10278)

(declare-fun b!1391643 () Bool)

(assert (=> b!1391643 (= e!788081 (Intermediate!10278 true (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1391644 () Bool)

(declare-fun lt!611260 () SeekEntryResult!10278)

(assert (=> b!1391644 (and (bvsge (index!43484 lt!611260) #b00000000000000000000000000000000) (bvslt (index!43484 lt!611260) (size!46490 a!2901)))))

(declare-fun res!931517 () Bool)

(assert (=> b!1391644 (= res!931517 (= (select (arr!45939 a!2901) (index!43484 lt!611260)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788083 () Bool)

(assert (=> b!1391644 (=> res!931517 e!788083)))

(declare-fun d!150305 () Bool)

(declare-fun e!788082 () Bool)

(assert (=> d!150305 e!788082))

(declare-fun c!129513 () Bool)

(assert (=> d!150305 (= c!129513 (and (is-Intermediate!10278 lt!611260) (undefined!11090 lt!611260)))))

(assert (=> d!150305 (= lt!611260 e!788081)))

(declare-fun c!129515 () Bool)

(assert (=> d!150305 (= c!129515 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611259 () (_ BitVec 64))

(assert (=> d!150305 (= lt!611259 (select (arr!45939 a!2901) (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840)))))

(assert (=> d!150305 (validMask!0 mask!2840)))

(assert (=> d!150305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) (select (arr!45939 a!2901) j!112) a!2901 mask!2840) lt!611260)))

(declare-fun b!1391645 () Bool)

(assert (=> b!1391645 (and (bvsge (index!43484 lt!611260) #b00000000000000000000000000000000) (bvslt (index!43484 lt!611260) (size!46490 a!2901)))))

(declare-fun res!931518 () Bool)

(assert (=> b!1391645 (= res!931518 (= (select (arr!45939 a!2901) (index!43484 lt!611260)) (select (arr!45939 a!2901) j!112)))))

(assert (=> b!1391645 (=> res!931518 e!788083)))

(declare-fun e!788084 () Bool)

(assert (=> b!1391645 (= e!788084 e!788083)))

(declare-fun b!1391646 () Bool)

(assert (=> b!1391646 (= e!788081 e!788080)))

(declare-fun c!129514 () Bool)

(assert (=> b!1391646 (= c!129514 (or (= lt!611259 (select (arr!45939 a!2901) j!112)) (= (bvadd lt!611259 lt!611259) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1391647 () Bool)

(assert (=> b!1391647 (= e!788082 e!788084)))

(declare-fun res!931519 () Bool)

(assert (=> b!1391647 (= res!931519 (and (is-Intermediate!10278 lt!611260) (not (undefined!11090 lt!611260)) (bvslt (x!125163 lt!611260) #b01111111111111111111111111111110) (bvsge (x!125163 lt!611260) #b00000000000000000000000000000000) (bvsge (x!125163 lt!611260) #b00000000000000000000000000000000)))))

(assert (=> b!1391647 (=> (not res!931519) (not e!788084))))

(declare-fun b!1391648 () Bool)

(assert (=> b!1391648 (and (bvsge (index!43484 lt!611260) #b00000000000000000000000000000000) (bvslt (index!43484 lt!611260) (size!46490 a!2901)))))

(assert (=> b!1391648 (= e!788083 (= (select (arr!45939 a!2901) (index!43484 lt!611260)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1391649 () Bool)

(assert (=> b!1391649 (= e!788082 (bvsge (x!125163 lt!611260) #b01111111111111111111111111111110))))

(declare-fun b!1391650 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391650 (= e!788080 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45939 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45939 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150305 c!129515) b!1391643))

(assert (= (and d!150305 (not c!129515)) b!1391646))

(assert (= (and b!1391646 c!129514) b!1391642))

(assert (= (and b!1391646 (not c!129514)) b!1391650))

(assert (= (and d!150305 c!129513) b!1391649))

