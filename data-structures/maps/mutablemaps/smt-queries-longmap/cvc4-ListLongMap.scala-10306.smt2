; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121202 () Bool)

(assert start!121202)

(declare-fun b!1408704 () Bool)

(declare-fun res!946540 () Bool)

(declare-fun e!797253 () Bool)

(assert (=> b!1408704 (=> (not res!946540) (not e!797253))))

(declare-datatypes ((array!96274 0))(
  ( (array!96275 (arr!46476 (Array (_ BitVec 32) (_ BitVec 64))) (size!47027 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96274)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408704 (= res!946540 (validKeyInArray!0 (select (arr!46476 a!2901) i!1037)))))

(declare-fun b!1408705 () Bool)

(declare-fun res!946535 () Bool)

(assert (=> b!1408705 (=> (not res!946535) (not e!797253))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408705 (= res!946535 (and (= (size!47027 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47027 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47027 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!797254 () Bool)

(declare-fun b!1408706 () Bool)

(declare-datatypes ((SeekEntryResult!10809 0))(
  ( (MissingZero!10809 (index!45612 (_ BitVec 32))) (Found!10809 (index!45613 (_ BitVec 32))) (Intermediate!10809 (undefined!11621 Bool) (index!45614 (_ BitVec 32)) (x!127213 (_ BitVec 32))) (Undefined!10809) (MissingVacant!10809 (index!45615 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96274 (_ BitVec 32)) SeekEntryResult!10809)

(assert (=> b!1408706 (= e!797254 (= (seekEntryOrOpen!0 (select (arr!46476 a!2901) j!112) a!2901 mask!2840) (Found!10809 j!112)))))

(declare-fun res!946538 () Bool)

(assert (=> start!121202 (=> (not res!946538) (not e!797253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121202 (= res!946538 (validMask!0 mask!2840))))

(assert (=> start!121202 e!797253))

(assert (=> start!121202 true))

(declare-fun array_inv!35421 (array!96274) Bool)

(assert (=> start!121202 (array_inv!35421 a!2901)))

(declare-fun b!1408707 () Bool)

(declare-fun res!946542 () Bool)

(assert (=> b!1408707 (=> (not res!946542) (not e!797253))))

(assert (=> b!1408707 (= res!946542 (validKeyInArray!0 (select (arr!46476 a!2901) j!112)))))

(declare-fun b!1408708 () Bool)

(declare-fun e!797252 () Bool)

(assert (=> b!1408708 (= e!797252 true)))

(declare-fun lt!620419 () SeekEntryResult!10809)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96274 (_ BitVec 32)) SeekEntryResult!10809)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408708 (= lt!620419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46476 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46476 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96275 (store (arr!46476 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47027 a!2901)) mask!2840))))

(declare-fun b!1408709 () Bool)

(assert (=> b!1408709 (= e!797253 (not e!797252))))

(declare-fun res!946537 () Bool)

(assert (=> b!1408709 (=> res!946537 e!797252)))

(declare-fun lt!620418 () SeekEntryResult!10809)

(assert (=> b!1408709 (= res!946537 (or (not (is-Intermediate!10809 lt!620418)) (undefined!11621 lt!620418)))))

(assert (=> b!1408709 e!797254))

(declare-fun res!946536 () Bool)

(assert (=> b!1408709 (=> (not res!946536) (not e!797254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96274 (_ BitVec 32)) Bool)

(assert (=> b!1408709 (= res!946536 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47542 0))(
  ( (Unit!47543) )
))
(declare-fun lt!620417 () Unit!47542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47542)

(assert (=> b!1408709 (= lt!620417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408709 (= lt!620418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46476 a!2901) j!112) mask!2840) (select (arr!46476 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408710 () Bool)

(declare-fun res!946541 () Bool)

(assert (=> b!1408710 (=> (not res!946541) (not e!797253))))

(assert (=> b!1408710 (= res!946541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408711 () Bool)

(declare-fun res!946539 () Bool)

(assert (=> b!1408711 (=> (not res!946539) (not e!797253))))

(declare-datatypes ((List!33175 0))(
  ( (Nil!33172) (Cons!33171 (h!34434 (_ BitVec 64)) (t!47876 List!33175)) )
))
(declare-fun arrayNoDuplicates!0 (array!96274 (_ BitVec 32) List!33175) Bool)

(assert (=> b!1408711 (= res!946539 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33172))))

(assert (= (and start!121202 res!946538) b!1408705))

(assert (= (and b!1408705 res!946535) b!1408704))

(assert (= (and b!1408704 res!946540) b!1408707))

(assert (= (and b!1408707 res!946542) b!1408710))

(assert (= (and b!1408710 res!946541) b!1408711))

(assert (= (and b!1408711 res!946539) b!1408709))

(assert (= (and b!1408709 res!946536) b!1408706))

(assert (= (and b!1408709 (not res!946537)) b!1408708))

(declare-fun m!1298209 () Bool)

(assert (=> b!1408708 m!1298209))

(declare-fun m!1298211 () Bool)

(assert (=> b!1408708 m!1298211))

(assert (=> b!1408708 m!1298211))

(declare-fun m!1298213 () Bool)

(assert (=> b!1408708 m!1298213))

(assert (=> b!1408708 m!1298213))

(assert (=> b!1408708 m!1298211))

(declare-fun m!1298215 () Bool)

(assert (=> b!1408708 m!1298215))

(declare-fun m!1298217 () Bool)

(assert (=> b!1408704 m!1298217))

(assert (=> b!1408704 m!1298217))

(declare-fun m!1298219 () Bool)

(assert (=> b!1408704 m!1298219))

(declare-fun m!1298221 () Bool)

(assert (=> b!1408710 m!1298221))

(declare-fun m!1298223 () Bool)

(assert (=> start!121202 m!1298223))

(declare-fun m!1298225 () Bool)

(assert (=> start!121202 m!1298225))

(declare-fun m!1298227 () Bool)

(assert (=> b!1408706 m!1298227))

(assert (=> b!1408706 m!1298227))

(declare-fun m!1298229 () Bool)

(assert (=> b!1408706 m!1298229))

(declare-fun m!1298231 () Bool)

(assert (=> b!1408711 m!1298231))

(assert (=> b!1408709 m!1298227))

(declare-fun m!1298233 () Bool)

(assert (=> b!1408709 m!1298233))

(assert (=> b!1408709 m!1298227))

(declare-fun m!1298235 () Bool)

(assert (=> b!1408709 m!1298235))

(assert (=> b!1408709 m!1298233))

(assert (=> b!1408709 m!1298227))

(declare-fun m!1298237 () Bool)

(assert (=> b!1408709 m!1298237))

(declare-fun m!1298239 () Bool)

(assert (=> b!1408709 m!1298239))

(assert (=> b!1408707 m!1298227))

(assert (=> b!1408707 m!1298227))

(declare-fun m!1298241 () Bool)

(assert (=> b!1408707 m!1298241))

(push 1)

(assert (not b!1408709))

(assert (not start!121202))

(assert (not b!1408707))

(assert (not b!1408710))

(assert (not b!1408706))

(assert (not b!1408708))

(assert (not b!1408711))

(assert (not b!1408704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

