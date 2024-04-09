; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121462 () Bool)

(assert start!121462)

(declare-fun b!1410645 () Bool)

(declare-fun res!947985 () Bool)

(declare-fun e!798318 () Bool)

(assert (=> b!1410645 (=> (not res!947985) (not e!798318))))

(declare-datatypes ((array!96381 0))(
  ( (array!96382 (arr!46525 (Array (_ BitVec 32) (_ BitVec 64))) (size!47076 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96381)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96381 (_ BitVec 32)) Bool)

(assert (=> b!1410645 (= res!947985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!798319 () Bool)

(declare-fun lt!621247 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10858 0))(
  ( (MissingZero!10858 (index!45808 (_ BitVec 32))) (Found!10858 (index!45809 (_ BitVec 32))) (Intermediate!10858 (undefined!11670 Bool) (index!45810 (_ BitVec 32)) (x!127416 (_ BitVec 32))) (Undefined!10858) (MissingVacant!10858 (index!45811 (_ BitVec 32))) )
))
(declare-fun lt!621248 () SeekEntryResult!10858)

(declare-fun lt!621249 () SeekEntryResult!10858)

(declare-fun b!1410646 () Bool)

(assert (=> b!1410646 (= e!798319 (or (= lt!621248 lt!621249) (not (is-Intermediate!10858 lt!621249)) (bvslt (x!127416 lt!621248) #b00000000000000000000000000000000) (bvsgt (x!127416 lt!621248) #b01111111111111111111111111111110) (bvslt lt!621247 #b00000000000000000000000000000000) (bvsge lt!621247 (size!47076 a!2901)) (bvslt (index!45810 lt!621248) #b00000000000000000000000000000000) (bvsge (index!45810 lt!621248) (size!47076 a!2901)) (not (= lt!621248 (Intermediate!10858 false (index!45810 lt!621248) (x!127416 lt!621248)))) (= lt!621249 (Intermediate!10858 (undefined!11670 lt!621249) (index!45810 lt!621249) (x!127416 lt!621249)))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96381 (_ BitVec 32)) SeekEntryResult!10858)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410646 (= lt!621249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46525 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46525 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96382 (store (arr!46525 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47076 a!2901)) mask!2840))))

(declare-fun b!1410647 () Bool)

(declare-fun res!947986 () Bool)

(assert (=> b!1410647 (=> (not res!947986) (not e!798318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410647 (= res!947986 (validKeyInArray!0 (select (arr!46525 a!2901) j!112)))))

(declare-fun b!1410648 () Bool)

(declare-fun res!947988 () Bool)

(assert (=> b!1410648 (=> (not res!947988) (not e!798318))))

(declare-datatypes ((List!33224 0))(
  ( (Nil!33221) (Cons!33220 (h!34492 (_ BitVec 64)) (t!47925 List!33224)) )
))
(declare-fun arrayNoDuplicates!0 (array!96381 (_ BitVec 32) List!33224) Bool)

(assert (=> b!1410648 (= res!947988 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33221))))

(declare-fun b!1410649 () Bool)

(assert (=> b!1410649 (= e!798318 (not e!798319))))

(declare-fun res!947984 () Bool)

(assert (=> b!1410649 (=> res!947984 e!798319)))

(assert (=> b!1410649 (= res!947984 (or (not (is-Intermediate!10858 lt!621248)) (undefined!11670 lt!621248)))))

(declare-fun e!798320 () Bool)

(assert (=> b!1410649 e!798320))

(declare-fun res!947987 () Bool)

(assert (=> b!1410649 (=> (not res!947987) (not e!798320))))

(assert (=> b!1410649 (= res!947987 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47640 0))(
  ( (Unit!47641) )
))
(declare-fun lt!621250 () Unit!47640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47640)

(assert (=> b!1410649 (= lt!621250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410649 (= lt!621248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621247 (select (arr!46525 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410649 (= lt!621247 (toIndex!0 (select (arr!46525 a!2901) j!112) mask!2840))))

(declare-fun b!1410650 () Bool)

(declare-fun res!947982 () Bool)

(assert (=> b!1410650 (=> (not res!947982) (not e!798318))))

(assert (=> b!1410650 (= res!947982 (validKeyInArray!0 (select (arr!46525 a!2901) i!1037)))))

(declare-fun res!947981 () Bool)

(assert (=> start!121462 (=> (not res!947981) (not e!798318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121462 (= res!947981 (validMask!0 mask!2840))))

(assert (=> start!121462 e!798318))

(assert (=> start!121462 true))

(declare-fun array_inv!35470 (array!96381) Bool)

(assert (=> start!121462 (array_inv!35470 a!2901)))

(declare-fun b!1410651 () Bool)

(declare-fun res!947983 () Bool)

(assert (=> b!1410651 (=> (not res!947983) (not e!798318))))

(assert (=> b!1410651 (= res!947983 (and (= (size!47076 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47076 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47076 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410652 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96381 (_ BitVec 32)) SeekEntryResult!10858)

(assert (=> b!1410652 (= e!798320 (= (seekEntryOrOpen!0 (select (arr!46525 a!2901) j!112) a!2901 mask!2840) (Found!10858 j!112)))))

(assert (= (and start!121462 res!947981) b!1410651))

(assert (= (and b!1410651 res!947983) b!1410650))

(assert (= (and b!1410650 res!947982) b!1410647))

(assert (= (and b!1410647 res!947986) b!1410645))

(assert (= (and b!1410645 res!947985) b!1410648))

(assert (= (and b!1410648 res!947988) b!1410649))

(assert (= (and b!1410649 res!947987) b!1410652))

(assert (= (and b!1410649 (not res!947984)) b!1410646))

(declare-fun m!1300337 () Bool)

(assert (=> b!1410646 m!1300337))

(declare-fun m!1300339 () Bool)

(assert (=> b!1410646 m!1300339))

(assert (=> b!1410646 m!1300339))

(declare-fun m!1300341 () Bool)

(assert (=> b!1410646 m!1300341))

(assert (=> b!1410646 m!1300341))

(assert (=> b!1410646 m!1300339))

(declare-fun m!1300343 () Bool)

(assert (=> b!1410646 m!1300343))

(declare-fun m!1300345 () Bool)

(assert (=> start!121462 m!1300345))

(declare-fun m!1300347 () Bool)

(assert (=> start!121462 m!1300347))

(declare-fun m!1300349 () Bool)

(assert (=> b!1410649 m!1300349))

(declare-fun m!1300351 () Bool)

(assert (=> b!1410649 m!1300351))

(assert (=> b!1410649 m!1300349))

(declare-fun m!1300353 () Bool)

(assert (=> b!1410649 m!1300353))

(declare-fun m!1300355 () Bool)

(assert (=> b!1410649 m!1300355))

(assert (=> b!1410649 m!1300349))

(declare-fun m!1300357 () Bool)

(assert (=> b!1410649 m!1300357))

(declare-fun m!1300359 () Bool)

(assert (=> b!1410648 m!1300359))

(declare-fun m!1300361 () Bool)

(assert (=> b!1410650 m!1300361))

(assert (=> b!1410650 m!1300361))

(declare-fun m!1300363 () Bool)

(assert (=> b!1410650 m!1300363))

(assert (=> b!1410647 m!1300349))

(assert (=> b!1410647 m!1300349))

(declare-fun m!1300365 () Bool)

(assert (=> b!1410647 m!1300365))

(declare-fun m!1300367 () Bool)

(assert (=> b!1410645 m!1300367))

(assert (=> b!1410652 m!1300349))

(assert (=> b!1410652 m!1300349))

(declare-fun m!1300369 () Bool)

(assert (=> b!1410652 m!1300369))

(push 1)

(assert (not b!1410649))

(assert (not b!1410645))

(assert (not b!1410647))

(assert (not b!1410646))

(assert (not b!1410650))

(assert (not b!1410652))

(assert (not b!1410648))

(assert (not start!121462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

