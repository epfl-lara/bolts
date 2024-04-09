; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121484 () Bool)

(assert start!121484)

(declare-fun b!1410951 () Bool)

(declare-fun res!948295 () Bool)

(declare-fun e!798485 () Bool)

(assert (=> b!1410951 (=> (not res!948295) (not e!798485))))

(declare-datatypes ((array!96403 0))(
  ( (array!96404 (arr!46536 (Array (_ BitVec 32) (_ BitVec 64))) (size!47087 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96403)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410951 (= res!948295 (validKeyInArray!0 (select (arr!46536 a!2901) i!1037)))))

(declare-fun b!1410952 () Bool)

(declare-fun res!948290 () Bool)

(declare-fun e!798484 () Bool)

(assert (=> b!1410952 (=> res!948290 e!798484)))

(declare-fun lt!621422 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10869 0))(
  ( (MissingZero!10869 (index!45852 (_ BitVec 32))) (Found!10869 (index!45853 (_ BitVec 32))) (Intermediate!10869 (undefined!11681 Bool) (index!45854 (_ BitVec 32)) (x!127451 (_ BitVec 32))) (Undefined!10869) (MissingVacant!10869 (index!45855 (_ BitVec 32))) )
))
(declare-fun lt!621427 () SeekEntryResult!10869)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621424 () array!96403)

(declare-fun lt!621425 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96403 (_ BitVec 32)) SeekEntryResult!10869)

(assert (=> b!1410952 (= res!948290 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621422 lt!621425 lt!621424 mask!2840) lt!621427)))))

(declare-fun b!1410953 () Bool)

(declare-fun res!948296 () Bool)

(assert (=> b!1410953 (=> (not res!948296) (not e!798485))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410953 (= res!948296 (and (= (size!47087 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47087 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47087 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!948287 () Bool)

(assert (=> start!121484 (=> (not res!948287) (not e!798485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121484 (= res!948287 (validMask!0 mask!2840))))

(assert (=> start!121484 e!798485))

(assert (=> start!121484 true))

(declare-fun array_inv!35481 (array!96403) Bool)

(assert (=> start!121484 (array_inv!35481 a!2901)))

(declare-fun b!1410954 () Bool)

(declare-fun res!948297 () Bool)

(assert (=> b!1410954 (=> (not res!948297) (not e!798485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96403 (_ BitVec 32)) Bool)

(assert (=> b!1410954 (= res!948297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410955 () Bool)

(declare-fun e!798486 () Bool)

(declare-fun e!798487 () Bool)

(assert (=> b!1410955 (= e!798486 e!798487)))

(declare-fun res!948294 () Bool)

(assert (=> b!1410955 (=> res!948294 e!798487)))

(declare-fun lt!621421 () SeekEntryResult!10869)

(declare-fun lt!621426 () SeekEntryResult!10869)

(assert (=> b!1410955 (= res!948294 (or (= lt!621426 lt!621421) (not (is-Intermediate!10869 lt!621421)) (bvslt (x!127451 lt!621426) #b00000000000000000000000000000000) (bvsgt (x!127451 lt!621426) #b01111111111111111111111111111110) (bvslt lt!621422 #b00000000000000000000000000000000) (bvsge lt!621422 (size!47087 a!2901)) (bvslt (index!45854 lt!621426) #b00000000000000000000000000000000) (bvsge (index!45854 lt!621426) (size!47087 a!2901)) (not (= lt!621426 (Intermediate!10869 false (index!45854 lt!621426) (x!127451 lt!621426))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410955 (= lt!621421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621425 mask!2840) lt!621425 lt!621424 mask!2840))))

(assert (=> b!1410955 (= lt!621425 (select (store (arr!46536 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410955 (= lt!621424 (array!96404 (store (arr!46536 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47087 a!2901)))))

(declare-fun b!1410956 () Bool)

(assert (=> b!1410956 (= e!798484 (or (undefined!11681 lt!621421) (not (= (index!45854 lt!621426) (index!45854 lt!621421))) (not (= (x!127451 lt!621426) (x!127451 lt!621421)))))))

(declare-fun b!1410957 () Bool)

(declare-fun res!948293 () Bool)

(assert (=> b!1410957 (=> (not res!948293) (not e!798485))))

(declare-datatypes ((List!33235 0))(
  ( (Nil!33232) (Cons!33231 (h!34503 (_ BitVec 64)) (t!47936 List!33235)) )
))
(declare-fun arrayNoDuplicates!0 (array!96403 (_ BitVec 32) List!33235) Bool)

(assert (=> b!1410957 (= res!948293 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33232))))

(declare-fun b!1410958 () Bool)

(declare-fun e!798488 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96403 (_ BitVec 32)) SeekEntryResult!10869)

(assert (=> b!1410958 (= e!798488 (= (seekEntryOrOpen!0 (select (arr!46536 a!2901) j!112) a!2901 mask!2840) (Found!10869 j!112)))))

(declare-fun b!1410959 () Bool)

(assert (=> b!1410959 (= e!798487 e!798484)))

(declare-fun res!948289 () Bool)

(assert (=> b!1410959 (=> res!948289 e!798484)))

(assert (=> b!1410959 (= res!948289 (not (= lt!621421 lt!621427)))))

(assert (=> b!1410959 (= lt!621427 (Intermediate!10869 (undefined!11681 lt!621421) (index!45854 lt!621421) (x!127451 lt!621421)))))

(declare-fun b!1410960 () Bool)

(declare-fun res!948292 () Bool)

(assert (=> b!1410960 (=> (not res!948292) (not e!798485))))

(assert (=> b!1410960 (= res!948292 (validKeyInArray!0 (select (arr!46536 a!2901) j!112)))))

(declare-fun b!1410961 () Bool)

(assert (=> b!1410961 (= e!798485 (not e!798486))))

(declare-fun res!948291 () Bool)

(assert (=> b!1410961 (=> res!948291 e!798486)))

(assert (=> b!1410961 (= res!948291 (or (not (is-Intermediate!10869 lt!621426)) (undefined!11681 lt!621426)))))

(assert (=> b!1410961 e!798488))

(declare-fun res!948288 () Bool)

(assert (=> b!1410961 (=> (not res!948288) (not e!798488))))

(assert (=> b!1410961 (= res!948288 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47662 0))(
  ( (Unit!47663) )
))
(declare-fun lt!621423 () Unit!47662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47662)

(assert (=> b!1410961 (= lt!621423 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410961 (= lt!621426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621422 (select (arr!46536 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410961 (= lt!621422 (toIndex!0 (select (arr!46536 a!2901) j!112) mask!2840))))

(assert (= (and start!121484 res!948287) b!1410953))

(assert (= (and b!1410953 res!948296) b!1410951))

(assert (= (and b!1410951 res!948295) b!1410960))

(assert (= (and b!1410960 res!948292) b!1410954))

(assert (= (and b!1410954 res!948297) b!1410957))

(assert (= (and b!1410957 res!948293) b!1410961))

(assert (= (and b!1410961 res!948288) b!1410958))

(assert (= (and b!1410961 (not res!948291)) b!1410955))

(assert (= (and b!1410955 (not res!948294)) b!1410959))

(assert (= (and b!1410959 (not res!948289)) b!1410952))

(assert (= (and b!1410952 (not res!948290)) b!1410956))

(declare-fun m!1300721 () Bool)

(assert (=> b!1410958 m!1300721))

(assert (=> b!1410958 m!1300721))

(declare-fun m!1300723 () Bool)

(assert (=> b!1410958 m!1300723))

(declare-fun m!1300725 () Bool)

(assert (=> start!121484 m!1300725))

(declare-fun m!1300727 () Bool)

(assert (=> start!121484 m!1300727))

(declare-fun m!1300729 () Bool)

(assert (=> b!1410955 m!1300729))

(assert (=> b!1410955 m!1300729))

(declare-fun m!1300731 () Bool)

(assert (=> b!1410955 m!1300731))

(declare-fun m!1300733 () Bool)

(assert (=> b!1410955 m!1300733))

(declare-fun m!1300735 () Bool)

(assert (=> b!1410955 m!1300735))

(assert (=> b!1410961 m!1300721))

(declare-fun m!1300737 () Bool)

(assert (=> b!1410961 m!1300737))

(assert (=> b!1410961 m!1300721))

(declare-fun m!1300739 () Bool)

(assert (=> b!1410961 m!1300739))

(assert (=> b!1410961 m!1300721))

(declare-fun m!1300741 () Bool)

(assert (=> b!1410961 m!1300741))

(declare-fun m!1300743 () Bool)

(assert (=> b!1410961 m!1300743))

(assert (=> b!1410960 m!1300721))

(assert (=> b!1410960 m!1300721))

(declare-fun m!1300745 () Bool)

(assert (=> b!1410960 m!1300745))

(declare-fun m!1300747 () Bool)

(assert (=> b!1410957 m!1300747))

(declare-fun m!1300749 () Bool)

(assert (=> b!1410954 m!1300749))

(declare-fun m!1300751 () Bool)

(assert (=> b!1410952 m!1300751))

(declare-fun m!1300753 () Bool)

(assert (=> b!1410951 m!1300753))

(assert (=> b!1410951 m!1300753))

(declare-fun m!1300755 () Bool)

(assert (=> b!1410951 m!1300755))

(push 1)

