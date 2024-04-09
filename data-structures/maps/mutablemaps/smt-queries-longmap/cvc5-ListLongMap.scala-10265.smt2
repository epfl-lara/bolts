; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120790 () Bool)

(assert start!120790)

(declare-fun b!1404946 () Bool)

(declare-fun e!795363 () Bool)

(assert (=> b!1404946 (= e!795363 (not true))))

(declare-fun e!795365 () Bool)

(assert (=> b!1404946 e!795365))

(declare-fun res!943275 () Bool)

(assert (=> b!1404946 (=> (not res!943275) (not e!795365))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96015 0))(
  ( (array!96016 (arr!46351 (Array (_ BitVec 32) (_ BitVec 64))) (size!46902 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96015)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96015 (_ BitVec 32)) Bool)

(assert (=> b!1404946 (= res!943275 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47292 0))(
  ( (Unit!47293) )
))
(declare-fun lt!618849 () Unit!47292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47292)

(assert (=> b!1404946 (= lt!618849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10684 0))(
  ( (MissingZero!10684 (index!45112 (_ BitVec 32))) (Found!10684 (index!45113 (_ BitVec 32))) (Intermediate!10684 (undefined!11496 Bool) (index!45114 (_ BitVec 32)) (x!126742 (_ BitVec 32))) (Undefined!10684) (MissingVacant!10684 (index!45115 (_ BitVec 32))) )
))
(declare-fun lt!618850 () SeekEntryResult!10684)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96015 (_ BitVec 32)) SeekEntryResult!10684)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404946 (= lt!618850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46351 a!2901) j!112) mask!2840) (select (arr!46351 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404947 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96015 (_ BitVec 32)) SeekEntryResult!10684)

(assert (=> b!1404947 (= e!795365 (= (seekEntryOrOpen!0 (select (arr!46351 a!2901) j!112) a!2901 mask!2840) (Found!10684 j!112)))))

(declare-fun b!1404948 () Bool)

(declare-fun res!943274 () Bool)

(assert (=> b!1404948 (=> (not res!943274) (not e!795363))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404948 (= res!943274 (validKeyInArray!0 (select (arr!46351 a!2901) i!1037)))))

(declare-fun b!1404949 () Bool)

(declare-fun res!943278 () Bool)

(assert (=> b!1404949 (=> (not res!943278) (not e!795363))))

(assert (=> b!1404949 (= res!943278 (and (= (size!46902 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46902 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46902 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404950 () Bool)

(declare-fun res!943272 () Bool)

(assert (=> b!1404950 (=> (not res!943272) (not e!795363))))

(declare-datatypes ((List!33050 0))(
  ( (Nil!33047) (Cons!33046 (h!34300 (_ BitVec 64)) (t!47751 List!33050)) )
))
(declare-fun arrayNoDuplicates!0 (array!96015 (_ BitVec 32) List!33050) Bool)

(assert (=> b!1404950 (= res!943272 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33047))))

(declare-fun b!1404951 () Bool)

(declare-fun res!943277 () Bool)

(assert (=> b!1404951 (=> (not res!943277) (not e!795363))))

(assert (=> b!1404951 (= res!943277 (validKeyInArray!0 (select (arr!46351 a!2901) j!112)))))

(declare-fun res!943276 () Bool)

(assert (=> start!120790 (=> (not res!943276) (not e!795363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120790 (= res!943276 (validMask!0 mask!2840))))

(assert (=> start!120790 e!795363))

(assert (=> start!120790 true))

(declare-fun array_inv!35296 (array!96015) Bool)

(assert (=> start!120790 (array_inv!35296 a!2901)))

(declare-fun b!1404952 () Bool)

(declare-fun res!943273 () Bool)

(assert (=> b!1404952 (=> (not res!943273) (not e!795363))))

(assert (=> b!1404952 (= res!943273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120790 res!943276) b!1404949))

(assert (= (and b!1404949 res!943278) b!1404948))

(assert (= (and b!1404948 res!943274) b!1404951))

(assert (= (and b!1404951 res!943277) b!1404952))

(assert (= (and b!1404952 res!943273) b!1404950))

(assert (= (and b!1404950 res!943272) b!1404946))

(assert (= (and b!1404946 res!943275) b!1404947))

(declare-fun m!1293689 () Bool)

(assert (=> b!1404947 m!1293689))

(assert (=> b!1404947 m!1293689))

(declare-fun m!1293691 () Bool)

(assert (=> b!1404947 m!1293691))

(assert (=> b!1404946 m!1293689))

(declare-fun m!1293693 () Bool)

(assert (=> b!1404946 m!1293693))

(assert (=> b!1404946 m!1293689))

(declare-fun m!1293695 () Bool)

(assert (=> b!1404946 m!1293695))

(assert (=> b!1404946 m!1293693))

(assert (=> b!1404946 m!1293689))

(declare-fun m!1293697 () Bool)

(assert (=> b!1404946 m!1293697))

(declare-fun m!1293699 () Bool)

(assert (=> b!1404946 m!1293699))

(declare-fun m!1293701 () Bool)

(assert (=> b!1404948 m!1293701))

(assert (=> b!1404948 m!1293701))

(declare-fun m!1293703 () Bool)

(assert (=> b!1404948 m!1293703))

(declare-fun m!1293705 () Bool)

(assert (=> start!120790 m!1293705))

(declare-fun m!1293707 () Bool)

(assert (=> start!120790 m!1293707))

(declare-fun m!1293709 () Bool)

(assert (=> b!1404952 m!1293709))

(declare-fun m!1293711 () Bool)

(assert (=> b!1404950 m!1293711))

(assert (=> b!1404951 m!1293689))

(assert (=> b!1404951 m!1293689))

(declare-fun m!1293713 () Bool)

(assert (=> b!1404951 m!1293713))

(push 1)

(assert (not b!1404952))

(assert (not b!1404946))

(assert (not b!1404947))

(assert (not start!120790))

(assert (not b!1404950))

(assert (not b!1404948))

(assert (not b!1404951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

