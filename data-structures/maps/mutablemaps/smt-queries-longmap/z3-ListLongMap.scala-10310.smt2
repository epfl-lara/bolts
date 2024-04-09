; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121224 () Bool)

(assert start!121224)

(declare-fun b!1408968 () Bool)

(declare-fun res!946805 () Bool)

(declare-fun e!797386 () Bool)

(assert (=> b!1408968 (=> (not res!946805) (not e!797386))))

(declare-datatypes ((array!96296 0))(
  ( (array!96297 (arr!46487 (Array (_ BitVec 32) (_ BitVec 64))) (size!47038 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96296)

(declare-datatypes ((List!33186 0))(
  ( (Nil!33183) (Cons!33182 (h!34445 (_ BitVec 64)) (t!47887 List!33186)) )
))
(declare-fun arrayNoDuplicates!0 (array!96296 (_ BitVec 32) List!33186) Bool)

(assert (=> b!1408968 (= res!946805 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33183))))

(declare-fun b!1408969 () Bool)

(declare-fun res!946802 () Bool)

(assert (=> b!1408969 (=> (not res!946802) (not e!797386))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408969 (= res!946802 (validKeyInArray!0 (select (arr!46487 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1408970 () Bool)

(declare-fun e!797385 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10820 0))(
  ( (MissingZero!10820 (index!45656 (_ BitVec 32))) (Found!10820 (index!45657 (_ BitVec 32))) (Intermediate!10820 (undefined!11632 Bool) (index!45658 (_ BitVec 32)) (x!127256 (_ BitVec 32))) (Undefined!10820) (MissingVacant!10820 (index!45659 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96296 (_ BitVec 32)) SeekEntryResult!10820)

(assert (=> b!1408970 (= e!797385 (= (seekEntryOrOpen!0 (select (arr!46487 a!2901) j!112) a!2901 mask!2840) (Found!10820 j!112)))))

(declare-fun b!1408971 () Bool)

(declare-fun res!946803 () Bool)

(assert (=> b!1408971 (=> (not res!946803) (not e!797386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96296 (_ BitVec 32)) Bool)

(assert (=> b!1408971 (= res!946803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408972 () Bool)

(declare-fun res!946800 () Bool)

(assert (=> b!1408972 (=> (not res!946800) (not e!797386))))

(assert (=> b!1408972 (= res!946800 (validKeyInArray!0 (select (arr!46487 a!2901) j!112)))))

(declare-fun b!1408973 () Bool)

(declare-fun e!797387 () Bool)

(assert (=> b!1408973 (= e!797386 (not e!797387))))

(declare-fun res!946799 () Bool)

(assert (=> b!1408973 (=> res!946799 e!797387)))

(declare-fun lt!620517 () SeekEntryResult!10820)

(get-info :version)

(assert (=> b!1408973 (= res!946799 (or (not ((_ is Intermediate!10820) lt!620517)) (undefined!11632 lt!620517)))))

(assert (=> b!1408973 e!797385))

(declare-fun res!946801 () Bool)

(assert (=> b!1408973 (=> (not res!946801) (not e!797385))))

(assert (=> b!1408973 (= res!946801 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47564 0))(
  ( (Unit!47565) )
))
(declare-fun lt!620516 () Unit!47564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47564)

(assert (=> b!1408973 (= lt!620516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96296 (_ BitVec 32)) SeekEntryResult!10820)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408973 (= lt!620517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46487 a!2901) j!112) mask!2840) (select (arr!46487 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946804 () Bool)

(assert (=> start!121224 (=> (not res!946804) (not e!797386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121224 (= res!946804 (validMask!0 mask!2840))))

(assert (=> start!121224 e!797386))

(assert (=> start!121224 true))

(declare-fun array_inv!35432 (array!96296) Bool)

(assert (=> start!121224 (array_inv!35432 a!2901)))

(declare-fun b!1408974 () Bool)

(assert (=> b!1408974 (= e!797387 true)))

(declare-fun lt!620518 () SeekEntryResult!10820)

(assert (=> b!1408974 (= lt!620518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46487 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46487 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96297 (store (arr!46487 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47038 a!2901)) mask!2840))))

(declare-fun b!1408975 () Bool)

(declare-fun res!946806 () Bool)

(assert (=> b!1408975 (=> (not res!946806) (not e!797386))))

(assert (=> b!1408975 (= res!946806 (and (= (size!47038 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47038 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47038 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121224 res!946804) b!1408975))

(assert (= (and b!1408975 res!946806) b!1408969))

(assert (= (and b!1408969 res!946802) b!1408972))

(assert (= (and b!1408972 res!946800) b!1408971))

(assert (= (and b!1408971 res!946803) b!1408968))

(assert (= (and b!1408968 res!946805) b!1408973))

(assert (= (and b!1408973 res!946801) b!1408970))

(assert (= (and b!1408973 (not res!946799)) b!1408974))

(declare-fun m!1298583 () Bool)

(assert (=> b!1408974 m!1298583))

(declare-fun m!1298585 () Bool)

(assert (=> b!1408974 m!1298585))

(assert (=> b!1408974 m!1298585))

(declare-fun m!1298587 () Bool)

(assert (=> b!1408974 m!1298587))

(assert (=> b!1408974 m!1298587))

(assert (=> b!1408974 m!1298585))

(declare-fun m!1298589 () Bool)

(assert (=> b!1408974 m!1298589))

(declare-fun m!1298591 () Bool)

(assert (=> b!1408972 m!1298591))

(assert (=> b!1408972 m!1298591))

(declare-fun m!1298593 () Bool)

(assert (=> b!1408972 m!1298593))

(declare-fun m!1298595 () Bool)

(assert (=> b!1408971 m!1298595))

(assert (=> b!1408970 m!1298591))

(assert (=> b!1408970 m!1298591))

(declare-fun m!1298597 () Bool)

(assert (=> b!1408970 m!1298597))

(declare-fun m!1298599 () Bool)

(assert (=> b!1408969 m!1298599))

(assert (=> b!1408969 m!1298599))

(declare-fun m!1298601 () Bool)

(assert (=> b!1408969 m!1298601))

(declare-fun m!1298603 () Bool)

(assert (=> b!1408968 m!1298603))

(assert (=> b!1408973 m!1298591))

(declare-fun m!1298605 () Bool)

(assert (=> b!1408973 m!1298605))

(assert (=> b!1408973 m!1298591))

(declare-fun m!1298607 () Bool)

(assert (=> b!1408973 m!1298607))

(assert (=> b!1408973 m!1298605))

(assert (=> b!1408973 m!1298591))

(declare-fun m!1298609 () Bool)

(assert (=> b!1408973 m!1298609))

(declare-fun m!1298611 () Bool)

(assert (=> b!1408973 m!1298611))

(declare-fun m!1298613 () Bool)

(assert (=> start!121224 m!1298613))

(declare-fun m!1298615 () Bool)

(assert (=> start!121224 m!1298615))

(check-sat (not b!1408972) (not b!1408969) (not b!1408968) (not b!1408974) (not b!1408970) (not b!1408971) (not start!121224) (not b!1408973))
