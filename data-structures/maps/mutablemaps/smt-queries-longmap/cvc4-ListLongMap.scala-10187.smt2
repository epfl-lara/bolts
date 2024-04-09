; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120092 () Bool)

(assert start!120092)

(declare-fun b!1397576 () Bool)

(declare-fun res!936606 () Bool)

(declare-fun e!791240 () Bool)

(assert (=> b!1397576 (=> (not res!936606) (not e!791240))))

(declare-datatypes ((array!95539 0))(
  ( (array!95540 (arr!46119 (Array (_ BitVec 32) (_ BitVec 64))) (size!46670 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95539)

(declare-datatypes ((List!32818 0))(
  ( (Nil!32815) (Cons!32814 (h!34056 (_ BitVec 64)) (t!47519 List!32818)) )
))
(declare-fun arrayNoDuplicates!0 (array!95539 (_ BitVec 32) List!32818) Bool)

(assert (=> b!1397576 (= res!936606 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32815))))

(declare-fun b!1397577 () Bool)

(declare-fun e!791236 () Bool)

(assert (=> b!1397577 (= e!791236 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!614316 () array!95539)

(declare-fun lt!614314 () (_ BitVec 64))

(declare-fun lt!614318 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10458 0))(
  ( (MissingZero!10458 (index!44202 (_ BitVec 32))) (Found!10458 (index!44203 (_ BitVec 32))) (Intermediate!10458 (undefined!11270 Bool) (index!44204 (_ BitVec 32)) (x!125859 (_ BitVec 32))) (Undefined!10458) (MissingVacant!10458 (index!44205 (_ BitVec 32))) )
))
(declare-fun lt!614315 () SeekEntryResult!10458)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95539 (_ BitVec 32)) SeekEntryResult!10458)

(assert (=> b!1397577 (= lt!614315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614318 lt!614314 lt!614316 mask!2840))))

(declare-fun b!1397578 () Bool)

(declare-fun res!936602 () Bool)

(assert (=> b!1397578 (=> (not res!936602) (not e!791240))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397578 (= res!936602 (validKeyInArray!0 (select (arr!46119 a!2901) j!112)))))

(declare-fun res!936599 () Bool)

(assert (=> start!120092 (=> (not res!936599) (not e!791240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120092 (= res!936599 (validMask!0 mask!2840))))

(assert (=> start!120092 e!791240))

(assert (=> start!120092 true))

(declare-fun array_inv!35064 (array!95539) Bool)

(assert (=> start!120092 (array_inv!35064 a!2901)))

(declare-fun e!791239 () Bool)

(declare-fun b!1397579 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95539 (_ BitVec 32)) SeekEntryResult!10458)

(assert (=> b!1397579 (= e!791239 (= (seekEntryOrOpen!0 (select (arr!46119 a!2901) j!112) a!2901 mask!2840) (Found!10458 j!112)))))

(declare-fun b!1397580 () Bool)

(declare-fun res!936598 () Bool)

(assert (=> b!1397580 (=> (not res!936598) (not e!791240))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397580 (= res!936598 (and (= (size!46670 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46670 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46670 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397581 () Bool)

(declare-fun e!791238 () Bool)

(assert (=> b!1397581 (= e!791240 (not e!791238))))

(declare-fun res!936603 () Bool)

(assert (=> b!1397581 (=> res!936603 e!791238)))

(declare-fun lt!614317 () SeekEntryResult!10458)

(assert (=> b!1397581 (= res!936603 (or (not (is-Intermediate!10458 lt!614317)) (undefined!11270 lt!614317)))))

(assert (=> b!1397581 e!791239))

(declare-fun res!936604 () Bool)

(assert (=> b!1397581 (=> (not res!936604) (not e!791239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95539 (_ BitVec 32)) Bool)

(assert (=> b!1397581 (= res!936604 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46870 0))(
  ( (Unit!46871) )
))
(declare-fun lt!614319 () Unit!46870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46870)

(assert (=> b!1397581 (= lt!614319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397581 (= lt!614317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614318 (select (arr!46119 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397581 (= lt!614318 (toIndex!0 (select (arr!46119 a!2901) j!112) mask!2840))))

(declare-fun b!1397582 () Bool)

(assert (=> b!1397582 (= e!791238 e!791236)))

(declare-fun res!936601 () Bool)

(assert (=> b!1397582 (=> res!936601 e!791236)))

(declare-fun lt!614320 () SeekEntryResult!10458)

(assert (=> b!1397582 (= res!936601 (or (= lt!614317 lt!614320) (not (is-Intermediate!10458 lt!614320)) (bvslt (x!125859 lt!614317) #b00000000000000000000000000000000) (bvsgt (x!125859 lt!614317) #b01111111111111111111111111111110) (bvslt lt!614318 #b00000000000000000000000000000000) (bvsge lt!614318 (size!46670 a!2901)) (bvslt (index!44204 lt!614317) #b00000000000000000000000000000000) (bvsge (index!44204 lt!614317) (size!46670 a!2901)) (not (= lt!614317 (Intermediate!10458 false (index!44204 lt!614317) (x!125859 lt!614317)))) (not (= lt!614320 (Intermediate!10458 (undefined!11270 lt!614320) (index!44204 lt!614320) (x!125859 lt!614320))))))))

(assert (=> b!1397582 (= lt!614320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614314 mask!2840) lt!614314 lt!614316 mask!2840))))

(assert (=> b!1397582 (= lt!614314 (select (store (arr!46119 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397582 (= lt!614316 (array!95540 (store (arr!46119 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46670 a!2901)))))

(declare-fun b!1397583 () Bool)

(declare-fun res!936605 () Bool)

(assert (=> b!1397583 (=> (not res!936605) (not e!791240))))

(assert (=> b!1397583 (= res!936605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397584 () Bool)

(declare-fun res!936600 () Bool)

(assert (=> b!1397584 (=> (not res!936600) (not e!791240))))

(assert (=> b!1397584 (= res!936600 (validKeyInArray!0 (select (arr!46119 a!2901) i!1037)))))

(assert (= (and start!120092 res!936599) b!1397580))

(assert (= (and b!1397580 res!936598) b!1397584))

(assert (= (and b!1397584 res!936600) b!1397578))

(assert (= (and b!1397578 res!936602) b!1397583))

(assert (= (and b!1397583 res!936605) b!1397576))

(assert (= (and b!1397576 res!936606) b!1397581))

(assert (= (and b!1397581 res!936604) b!1397579))

(assert (= (and b!1397581 (not res!936603)) b!1397582))

(assert (= (and b!1397582 (not res!936601)) b!1397577))

(declare-fun m!1284479 () Bool)

(assert (=> b!1397582 m!1284479))

(assert (=> b!1397582 m!1284479))

(declare-fun m!1284481 () Bool)

(assert (=> b!1397582 m!1284481))

(declare-fun m!1284483 () Bool)

(assert (=> b!1397582 m!1284483))

(declare-fun m!1284485 () Bool)

(assert (=> b!1397582 m!1284485))

(declare-fun m!1284487 () Bool)

(assert (=> b!1397578 m!1284487))

(assert (=> b!1397578 m!1284487))

(declare-fun m!1284489 () Bool)

(assert (=> b!1397578 m!1284489))

(declare-fun m!1284491 () Bool)

(assert (=> b!1397583 m!1284491))

(declare-fun m!1284493 () Bool)

(assert (=> b!1397576 m!1284493))

(declare-fun m!1284495 () Bool)

(assert (=> start!120092 m!1284495))

(declare-fun m!1284497 () Bool)

(assert (=> start!120092 m!1284497))

(assert (=> b!1397581 m!1284487))

(declare-fun m!1284499 () Bool)

(assert (=> b!1397581 m!1284499))

(assert (=> b!1397581 m!1284487))

(declare-fun m!1284501 () Bool)

(assert (=> b!1397581 m!1284501))

(assert (=> b!1397581 m!1284487))

(declare-fun m!1284503 () Bool)

(assert (=> b!1397581 m!1284503))

(declare-fun m!1284505 () Bool)

(assert (=> b!1397581 m!1284505))

(declare-fun m!1284507 () Bool)

(assert (=> b!1397584 m!1284507))

(assert (=> b!1397584 m!1284507))

(declare-fun m!1284509 () Bool)

(assert (=> b!1397584 m!1284509))

(declare-fun m!1284511 () Bool)

(assert (=> b!1397577 m!1284511))

(assert (=> b!1397579 m!1284487))

(assert (=> b!1397579 m!1284487))

(declare-fun m!1284513 () Bool)

(assert (=> b!1397579 m!1284513))

(push 1)

