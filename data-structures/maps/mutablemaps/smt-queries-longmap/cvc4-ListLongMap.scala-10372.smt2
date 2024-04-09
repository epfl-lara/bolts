; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122144 () Bool)

(assert start!122144)

(declare-fun b!1416840 () Bool)

(declare-fun e!801917 () Bool)

(assert (=> b!1416840 (= e!801917 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96697 0))(
  ( (array!96698 (arr!46674 (Array (_ BitVec 32) (_ BitVec 64))) (size!47225 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96697)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11007 0))(
  ( (MissingZero!11007 (index!46419 (_ BitVec 32))) (Found!11007 (index!46420 (_ BitVec 32))) (Intermediate!11007 (undefined!11819 Bool) (index!46421 (_ BitVec 32)) (x!128023 (_ BitVec 32))) (Undefined!11007) (MissingVacant!11007 (index!46422 (_ BitVec 32))) )
))
(declare-fun lt!625107 () SeekEntryResult!11007)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96697 (_ BitVec 32)) SeekEntryResult!11007)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416840 (= lt!625107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46674 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46674 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96698 (store (arr!46674 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47225 a!2901)) mask!2840))))

(declare-fun b!1416841 () Bool)

(declare-fun e!801915 () Bool)

(assert (=> b!1416841 (= e!801915 (not e!801917))))

(declare-fun res!952827 () Bool)

(assert (=> b!1416841 (=> res!952827 e!801917)))

(declare-fun lt!625106 () SeekEntryResult!11007)

(assert (=> b!1416841 (= res!952827 (or (not (is-Intermediate!11007 lt!625106)) (undefined!11819 lt!625106)))))

(declare-fun e!801914 () Bool)

(assert (=> b!1416841 e!801914))

(declare-fun res!952828 () Bool)

(assert (=> b!1416841 (=> (not res!952828) (not e!801914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96697 (_ BitVec 32)) Bool)

(assert (=> b!1416841 (= res!952828 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47938 0))(
  ( (Unit!47939) )
))
(declare-fun lt!625108 () Unit!47938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47938)

(assert (=> b!1416841 (= lt!625108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416841 (= lt!625106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46674 a!2901) j!112) mask!2840) (select (arr!46674 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416842 () Bool)

(declare-fun res!952831 () Bool)

(assert (=> b!1416842 (=> (not res!952831) (not e!801915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416842 (= res!952831 (validKeyInArray!0 (select (arr!46674 a!2901) j!112)))))

(declare-fun b!1416844 () Bool)

(declare-fun res!952833 () Bool)

(assert (=> b!1416844 (=> (not res!952833) (not e!801915))))

(assert (=> b!1416844 (= res!952833 (validKeyInArray!0 (select (arr!46674 a!2901) i!1037)))))

(declare-fun b!1416845 () Bool)

(declare-fun res!952830 () Bool)

(assert (=> b!1416845 (=> (not res!952830) (not e!801915))))

(assert (=> b!1416845 (= res!952830 (and (= (size!47225 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47225 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47225 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416846 () Bool)

(declare-fun res!952832 () Bool)

(assert (=> b!1416846 (=> (not res!952832) (not e!801915))))

(assert (=> b!1416846 (= res!952832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416847 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96697 (_ BitVec 32)) SeekEntryResult!11007)

(assert (=> b!1416847 (= e!801914 (= (seekEntryOrOpen!0 (select (arr!46674 a!2901) j!112) a!2901 mask!2840) (Found!11007 j!112)))))

(declare-fun b!1416843 () Bool)

(declare-fun res!952829 () Bool)

(assert (=> b!1416843 (=> (not res!952829) (not e!801915))))

(declare-datatypes ((List!33373 0))(
  ( (Nil!33370) (Cons!33369 (h!34659 (_ BitVec 64)) (t!48074 List!33373)) )
))
(declare-fun arrayNoDuplicates!0 (array!96697 (_ BitVec 32) List!33373) Bool)

(assert (=> b!1416843 (= res!952829 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33370))))

(declare-fun res!952826 () Bool)

(assert (=> start!122144 (=> (not res!952826) (not e!801915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122144 (= res!952826 (validMask!0 mask!2840))))

(assert (=> start!122144 e!801915))

(assert (=> start!122144 true))

(declare-fun array_inv!35619 (array!96697) Bool)

(assert (=> start!122144 (array_inv!35619 a!2901)))

(assert (= (and start!122144 res!952826) b!1416845))

(assert (= (and b!1416845 res!952830) b!1416844))

(assert (= (and b!1416844 res!952833) b!1416842))

(assert (= (and b!1416842 res!952831) b!1416846))

(assert (= (and b!1416846 res!952832) b!1416843))

(assert (= (and b!1416843 res!952829) b!1416841))

(assert (= (and b!1416841 res!952828) b!1416847))

(assert (= (and b!1416841 (not res!952827)) b!1416840))

(declare-fun m!1307617 () Bool)

(assert (=> b!1416846 m!1307617))

(declare-fun m!1307619 () Bool)

(assert (=> b!1416841 m!1307619))

(declare-fun m!1307621 () Bool)

(assert (=> b!1416841 m!1307621))

(assert (=> b!1416841 m!1307619))

(declare-fun m!1307623 () Bool)

(assert (=> b!1416841 m!1307623))

(assert (=> b!1416841 m!1307621))

(assert (=> b!1416841 m!1307619))

(declare-fun m!1307625 () Bool)

(assert (=> b!1416841 m!1307625))

(declare-fun m!1307627 () Bool)

(assert (=> b!1416841 m!1307627))

(assert (=> b!1416842 m!1307619))

(assert (=> b!1416842 m!1307619))

(declare-fun m!1307629 () Bool)

(assert (=> b!1416842 m!1307629))

(declare-fun m!1307631 () Bool)

(assert (=> b!1416840 m!1307631))

(declare-fun m!1307633 () Bool)

(assert (=> b!1416840 m!1307633))

(assert (=> b!1416840 m!1307633))

(declare-fun m!1307635 () Bool)

(assert (=> b!1416840 m!1307635))

(assert (=> b!1416840 m!1307635))

(assert (=> b!1416840 m!1307633))

(declare-fun m!1307637 () Bool)

(assert (=> b!1416840 m!1307637))

(declare-fun m!1307639 () Bool)

(assert (=> start!122144 m!1307639))

(declare-fun m!1307641 () Bool)

(assert (=> start!122144 m!1307641))

(assert (=> b!1416847 m!1307619))

(assert (=> b!1416847 m!1307619))

(declare-fun m!1307643 () Bool)

(assert (=> b!1416847 m!1307643))

(declare-fun m!1307645 () Bool)

(assert (=> b!1416844 m!1307645))

(assert (=> b!1416844 m!1307645))

(declare-fun m!1307647 () Bool)

(assert (=> b!1416844 m!1307647))

(declare-fun m!1307649 () Bool)

(assert (=> b!1416843 m!1307649))

(push 1)

(assert (not b!1416841))

(assert (not b!1416846))

(assert (not start!122144))

(assert (not b!1416842))

(assert (not b!1416844))

