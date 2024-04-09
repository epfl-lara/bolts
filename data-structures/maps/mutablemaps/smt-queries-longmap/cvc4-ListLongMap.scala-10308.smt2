; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121214 () Bool)

(assert start!121214)

(declare-fun b!1408848 () Bool)

(declare-fun res!946680 () Bool)

(declare-fun e!797325 () Bool)

(assert (=> b!1408848 (=> (not res!946680) (not e!797325))))

(declare-datatypes ((array!96286 0))(
  ( (array!96287 (arr!46482 (Array (_ BitVec 32) (_ BitVec 64))) (size!47033 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96286)

(declare-datatypes ((List!33181 0))(
  ( (Nil!33178) (Cons!33177 (h!34440 (_ BitVec 64)) (t!47882 List!33181)) )
))
(declare-fun arrayNoDuplicates!0 (array!96286 (_ BitVec 32) List!33181) Bool)

(assert (=> b!1408848 (= res!946680 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33178))))

(declare-fun b!1408849 () Bool)

(declare-fun res!946685 () Bool)

(assert (=> b!1408849 (=> (not res!946685) (not e!797325))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408849 (= res!946685 (validKeyInArray!0 (select (arr!46482 a!2901) i!1037)))))

(declare-fun b!1408850 () Bool)

(declare-fun e!797327 () Bool)

(assert (=> b!1408850 (= e!797325 (not e!797327))))

(declare-fun res!946684 () Bool)

(assert (=> b!1408850 (=> res!946684 e!797327)))

(declare-datatypes ((SeekEntryResult!10815 0))(
  ( (MissingZero!10815 (index!45636 (_ BitVec 32))) (Found!10815 (index!45637 (_ BitVec 32))) (Intermediate!10815 (undefined!11627 Bool) (index!45638 (_ BitVec 32)) (x!127235 (_ BitVec 32))) (Undefined!10815) (MissingVacant!10815 (index!45639 (_ BitVec 32))) )
))
(declare-fun lt!620472 () SeekEntryResult!10815)

(assert (=> b!1408850 (= res!946684 (or (not (is-Intermediate!10815 lt!620472)) (undefined!11627 lt!620472)))))

(declare-fun e!797324 () Bool)

(assert (=> b!1408850 e!797324))

(declare-fun res!946679 () Bool)

(assert (=> b!1408850 (=> (not res!946679) (not e!797324))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96286 (_ BitVec 32)) Bool)

(assert (=> b!1408850 (= res!946679 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47554 0))(
  ( (Unit!47555) )
))
(declare-fun lt!620471 () Unit!47554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47554)

(assert (=> b!1408850 (= lt!620471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96286 (_ BitVec 32)) SeekEntryResult!10815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408850 (= lt!620472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46482 a!2901) j!112) mask!2840) (select (arr!46482 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408851 () Bool)

(assert (=> b!1408851 (= e!797327 true)))

(declare-fun lt!620473 () SeekEntryResult!10815)

(assert (=> b!1408851 (= lt!620473 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46482 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46482 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96287 (store (arr!46482 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47033 a!2901)) mask!2840))))

(declare-fun b!1408852 () Bool)

(declare-fun res!946682 () Bool)

(assert (=> b!1408852 (=> (not res!946682) (not e!797325))))

(assert (=> b!1408852 (= res!946682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408853 () Bool)

(declare-fun res!946683 () Bool)

(assert (=> b!1408853 (=> (not res!946683) (not e!797325))))

(assert (=> b!1408853 (= res!946683 (and (= (size!47033 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47033 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47033 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!946686 () Bool)

(assert (=> start!121214 (=> (not res!946686) (not e!797325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121214 (= res!946686 (validMask!0 mask!2840))))

(assert (=> start!121214 e!797325))

(assert (=> start!121214 true))

(declare-fun array_inv!35427 (array!96286) Bool)

(assert (=> start!121214 (array_inv!35427 a!2901)))

(declare-fun b!1408854 () Bool)

(declare-fun res!946681 () Bool)

(assert (=> b!1408854 (=> (not res!946681) (not e!797325))))

(assert (=> b!1408854 (= res!946681 (validKeyInArray!0 (select (arr!46482 a!2901) j!112)))))

(declare-fun b!1408855 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96286 (_ BitVec 32)) SeekEntryResult!10815)

(assert (=> b!1408855 (= e!797324 (= (seekEntryOrOpen!0 (select (arr!46482 a!2901) j!112) a!2901 mask!2840) (Found!10815 j!112)))))

(assert (= (and start!121214 res!946686) b!1408853))

(assert (= (and b!1408853 res!946683) b!1408849))

(assert (= (and b!1408849 res!946685) b!1408854))

(assert (= (and b!1408854 res!946681) b!1408852))

(assert (= (and b!1408852 res!946682) b!1408848))

(assert (= (and b!1408848 res!946680) b!1408850))

(assert (= (and b!1408850 res!946679) b!1408855))

(assert (= (and b!1408850 (not res!946684)) b!1408851))

(declare-fun m!1298413 () Bool)

(assert (=> b!1408854 m!1298413))

(assert (=> b!1408854 m!1298413))

(declare-fun m!1298415 () Bool)

(assert (=> b!1408854 m!1298415))

(declare-fun m!1298417 () Bool)

(assert (=> b!1408849 m!1298417))

(assert (=> b!1408849 m!1298417))

(declare-fun m!1298419 () Bool)

(assert (=> b!1408849 m!1298419))

(declare-fun m!1298421 () Bool)

(assert (=> b!1408852 m!1298421))

(assert (=> b!1408850 m!1298413))

(declare-fun m!1298423 () Bool)

(assert (=> b!1408850 m!1298423))

(assert (=> b!1408850 m!1298413))

(declare-fun m!1298425 () Bool)

(assert (=> b!1408850 m!1298425))

(assert (=> b!1408850 m!1298423))

(assert (=> b!1408850 m!1298413))

(declare-fun m!1298427 () Bool)

(assert (=> b!1408850 m!1298427))

(declare-fun m!1298429 () Bool)

(assert (=> b!1408850 m!1298429))

(assert (=> b!1408855 m!1298413))

(assert (=> b!1408855 m!1298413))

(declare-fun m!1298431 () Bool)

(assert (=> b!1408855 m!1298431))

(declare-fun m!1298433 () Bool)

(assert (=> b!1408851 m!1298433))

(declare-fun m!1298435 () Bool)

(assert (=> b!1408851 m!1298435))

(assert (=> b!1408851 m!1298435))

(declare-fun m!1298437 () Bool)

(assert (=> b!1408851 m!1298437))

(assert (=> b!1408851 m!1298437))

(assert (=> b!1408851 m!1298435))

(declare-fun m!1298439 () Bool)

(assert (=> b!1408851 m!1298439))

(declare-fun m!1298441 () Bool)

(assert (=> start!121214 m!1298441))

(declare-fun m!1298443 () Bool)

(assert (=> start!121214 m!1298443))

(declare-fun m!1298445 () Bool)

(assert (=> b!1408848 m!1298445))

(push 1)

(assert (not b!1408852))

(assert (not start!121214))

(assert (not b!1408854))

(assert (not b!1408850))

(assert (not b!1408855))

(assert (not b!1408849))

(assert (not b!1408848))

(assert (not b!1408851))

(check-sat)

(pop 1)

