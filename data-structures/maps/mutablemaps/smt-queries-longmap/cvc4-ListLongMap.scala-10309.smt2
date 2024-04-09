; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121220 () Bool)

(assert start!121220)

(declare-fun b!1408921 () Bool)

(declare-fun res!946751 () Bool)

(declare-fun e!797361 () Bool)

(assert (=> b!1408921 (=> (not res!946751) (not e!797361))))

(declare-datatypes ((array!96292 0))(
  ( (array!96293 (arr!46485 (Array (_ BitVec 32) (_ BitVec 64))) (size!47036 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96292)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408921 (= res!946751 (validKeyInArray!0 (select (arr!46485 a!2901) j!112)))))

(declare-fun b!1408922 () Bool)

(declare-fun res!946755 () Bool)

(assert (=> b!1408922 (=> (not res!946755) (not e!797361))))

(declare-datatypes ((List!33184 0))(
  ( (Nil!33181) (Cons!33180 (h!34443 (_ BitVec 64)) (t!47885 List!33184)) )
))
(declare-fun arrayNoDuplicates!0 (array!96292 (_ BitVec 32) List!33184) Bool)

(assert (=> b!1408922 (= res!946755 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33181))))

(declare-fun b!1408923 () Bool)

(declare-fun e!797363 () Bool)

(assert (=> b!1408923 (= e!797361 (not e!797363))))

(declare-fun res!946758 () Bool)

(assert (=> b!1408923 (=> res!946758 e!797363)))

(declare-datatypes ((SeekEntryResult!10818 0))(
  ( (MissingZero!10818 (index!45648 (_ BitVec 32))) (Found!10818 (index!45649 (_ BitVec 32))) (Intermediate!10818 (undefined!11630 Bool) (index!45650 (_ BitVec 32)) (x!127246 (_ BitVec 32))) (Undefined!10818) (MissingVacant!10818 (index!45651 (_ BitVec 32))) )
))
(declare-fun lt!620499 () SeekEntryResult!10818)

(assert (=> b!1408923 (= res!946758 (or (not (is-Intermediate!10818 lt!620499)) (undefined!11630 lt!620499)))))

(declare-fun e!797360 () Bool)

(assert (=> b!1408923 e!797360))

(declare-fun res!946757 () Bool)

(assert (=> b!1408923 (=> (not res!946757) (not e!797360))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96292 (_ BitVec 32)) Bool)

(assert (=> b!1408923 (= res!946757 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47560 0))(
  ( (Unit!47561) )
))
(declare-fun lt!620498 () Unit!47560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47560)

(assert (=> b!1408923 (= lt!620498 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96292 (_ BitVec 32)) SeekEntryResult!10818)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408923 (= lt!620499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46485 a!2901) j!112) mask!2840) (select (arr!46485 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408924 () Bool)

(declare-fun res!946756 () Bool)

(assert (=> b!1408924 (=> (not res!946756) (not e!797361))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408924 (= res!946756 (and (= (size!47036 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47036 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47036 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408925 () Bool)

(declare-fun res!946753 () Bool)

(assert (=> b!1408925 (=> (not res!946753) (not e!797361))))

(assert (=> b!1408925 (= res!946753 (validKeyInArray!0 (select (arr!46485 a!2901) i!1037)))))

(declare-fun b!1408926 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96292 (_ BitVec 32)) SeekEntryResult!10818)

(assert (=> b!1408926 (= e!797360 (= (seekEntryOrOpen!0 (select (arr!46485 a!2901) j!112) a!2901 mask!2840) (Found!10818 j!112)))))

(declare-fun b!1408927 () Bool)

(assert (=> b!1408927 (= e!797363 true)))

(declare-fun lt!620500 () SeekEntryResult!10818)

(assert (=> b!1408927 (= lt!620500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46485 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46485 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96293 (store (arr!46485 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47036 a!2901)) mask!2840))))

(declare-fun res!946752 () Bool)

(assert (=> start!121220 (=> (not res!946752) (not e!797361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121220 (= res!946752 (validMask!0 mask!2840))))

(assert (=> start!121220 e!797361))

(assert (=> start!121220 true))

(declare-fun array_inv!35430 (array!96292) Bool)

(assert (=> start!121220 (array_inv!35430 a!2901)))

(declare-fun b!1408920 () Bool)

(declare-fun res!946754 () Bool)

(assert (=> b!1408920 (=> (not res!946754) (not e!797361))))

(assert (=> b!1408920 (= res!946754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121220 res!946752) b!1408924))

(assert (= (and b!1408924 res!946756) b!1408925))

(assert (= (and b!1408925 res!946753) b!1408921))

(assert (= (and b!1408921 res!946751) b!1408920))

(assert (= (and b!1408920 res!946754) b!1408922))

(assert (= (and b!1408922 res!946755) b!1408923))

(assert (= (and b!1408923 res!946757) b!1408926))

(assert (= (and b!1408923 (not res!946758)) b!1408927))

(declare-fun m!1298515 () Bool)

(assert (=> b!1408922 m!1298515))

(declare-fun m!1298517 () Bool)

(assert (=> b!1408926 m!1298517))

(assert (=> b!1408926 m!1298517))

(declare-fun m!1298519 () Bool)

(assert (=> b!1408926 m!1298519))

(declare-fun m!1298521 () Bool)

(assert (=> start!121220 m!1298521))

(declare-fun m!1298523 () Bool)

(assert (=> start!121220 m!1298523))

(assert (=> b!1408921 m!1298517))

(assert (=> b!1408921 m!1298517))

(declare-fun m!1298525 () Bool)

(assert (=> b!1408921 m!1298525))

(declare-fun m!1298527 () Bool)

(assert (=> b!1408920 m!1298527))

(declare-fun m!1298529 () Bool)

(assert (=> b!1408927 m!1298529))

(declare-fun m!1298531 () Bool)

(assert (=> b!1408927 m!1298531))

(assert (=> b!1408927 m!1298531))

(declare-fun m!1298533 () Bool)

(assert (=> b!1408927 m!1298533))

(assert (=> b!1408927 m!1298533))

(assert (=> b!1408927 m!1298531))

(declare-fun m!1298535 () Bool)

(assert (=> b!1408927 m!1298535))

(assert (=> b!1408923 m!1298517))

(declare-fun m!1298537 () Bool)

(assert (=> b!1408923 m!1298537))

(assert (=> b!1408923 m!1298517))

(declare-fun m!1298539 () Bool)

(assert (=> b!1408923 m!1298539))

(assert (=> b!1408923 m!1298537))

(assert (=> b!1408923 m!1298517))

(declare-fun m!1298541 () Bool)

(assert (=> b!1408923 m!1298541))

(declare-fun m!1298543 () Bool)

(assert (=> b!1408923 m!1298543))

(declare-fun m!1298545 () Bool)

(assert (=> b!1408925 m!1298545))

(assert (=> b!1408925 m!1298545))

(declare-fun m!1298547 () Bool)

(assert (=> b!1408925 m!1298547))

(push 1)

(assert (not b!1408923))

(assert (not b!1408922))

(assert (not start!121220))

(assert (not b!1408921))

(assert (not b!1408926))

(assert (not b!1408920))

(assert (not b!1408927))

(assert (not b!1408925))

(check-sat)

