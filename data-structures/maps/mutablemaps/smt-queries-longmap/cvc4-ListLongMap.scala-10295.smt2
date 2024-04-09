; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121136 () Bool)

(assert start!121136)

(declare-fun b!1407867 () Bool)

(declare-fun res!945699 () Bool)

(declare-fun e!796857 () Bool)

(assert (=> b!1407867 (=> (not res!945699) (not e!796857))))

(declare-datatypes ((array!96208 0))(
  ( (array!96209 (arr!46443 (Array (_ BitVec 32) (_ BitVec 64))) (size!46994 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96208)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407867 (= res!945699 (validKeyInArray!0 (select (arr!46443 a!2901) i!1037)))))

(declare-fun b!1407868 () Bool)

(declare-fun res!945702 () Bool)

(assert (=> b!1407868 (=> (not res!945702) (not e!796857))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407868 (= res!945702 (validKeyInArray!0 (select (arr!46443 a!2901) j!112)))))

(declare-fun b!1407869 () Bool)

(declare-fun res!945701 () Bool)

(assert (=> b!1407869 (=> (not res!945701) (not e!796857))))

(declare-datatypes ((List!33142 0))(
  ( (Nil!33139) (Cons!33138 (h!34401 (_ BitVec 64)) (t!47843 List!33142)) )
))
(declare-fun arrayNoDuplicates!0 (array!96208 (_ BitVec 32) List!33142) Bool)

(assert (=> b!1407869 (= res!945701 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33139))))

(declare-fun res!945698 () Bool)

(assert (=> start!121136 (=> (not res!945698) (not e!796857))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121136 (= res!945698 (validMask!0 mask!2840))))

(assert (=> start!121136 e!796857))

(assert (=> start!121136 true))

(declare-fun array_inv!35388 (array!96208) Bool)

(assert (=> start!121136 (array_inv!35388 a!2901)))

(declare-fun b!1407870 () Bool)

(declare-fun e!796859 () Bool)

(assert (=> b!1407870 (= e!796859 true)))

(declare-datatypes ((SeekEntryResult!10776 0))(
  ( (MissingZero!10776 (index!45480 (_ BitVec 32))) (Found!10776 (index!45481 (_ BitVec 32))) (Intermediate!10776 (undefined!11588 Bool) (index!45482 (_ BitVec 32)) (x!127092 (_ BitVec 32))) (Undefined!10776) (MissingVacant!10776 (index!45483 (_ BitVec 32))) )
))
(declare-fun lt!619940 () SeekEntryResult!10776)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96208 (_ BitVec 32)) SeekEntryResult!10776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407870 (= lt!619940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46443 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46443 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96209 (store (arr!46443 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46994 a!2901)) mask!2840))))

(declare-fun b!1407871 () Bool)

(declare-fun res!945704 () Bool)

(assert (=> b!1407871 (=> (not res!945704) (not e!796857))))

(assert (=> b!1407871 (= res!945704 (and (= (size!46994 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46994 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46994 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407872 () Bool)

(assert (=> b!1407872 (= e!796857 (not e!796859))))

(declare-fun res!945703 () Bool)

(assert (=> b!1407872 (=> res!945703 e!796859)))

(declare-fun lt!619942 () SeekEntryResult!10776)

(assert (=> b!1407872 (= res!945703 (or (not (is-Intermediate!10776 lt!619942)) (undefined!11588 lt!619942)))))

(declare-fun e!796858 () Bool)

(assert (=> b!1407872 e!796858))

(declare-fun res!945700 () Bool)

(assert (=> b!1407872 (=> (not res!945700) (not e!796858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96208 (_ BitVec 32)) Bool)

(assert (=> b!1407872 (= res!945700 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47476 0))(
  ( (Unit!47477) )
))
(declare-fun lt!619941 () Unit!47476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47476)

(assert (=> b!1407872 (= lt!619941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407872 (= lt!619942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46443 a!2901) j!112) mask!2840) (select (arr!46443 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407873 () Bool)

(declare-fun res!945705 () Bool)

(assert (=> b!1407873 (=> (not res!945705) (not e!796857))))

(assert (=> b!1407873 (= res!945705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407874 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96208 (_ BitVec 32)) SeekEntryResult!10776)

(assert (=> b!1407874 (= e!796858 (= (seekEntryOrOpen!0 (select (arr!46443 a!2901) j!112) a!2901 mask!2840) (Found!10776 j!112)))))

(assert (= (and start!121136 res!945698) b!1407871))

(assert (= (and b!1407871 res!945704) b!1407867))

(assert (= (and b!1407867 res!945699) b!1407868))

(assert (= (and b!1407868 res!945702) b!1407873))

(assert (= (and b!1407873 res!945705) b!1407869))

(assert (= (and b!1407869 res!945701) b!1407872))

(assert (= (and b!1407872 res!945700) b!1407874))

(assert (= (and b!1407872 (not res!945703)) b!1407870))

(declare-fun m!1297027 () Bool)

(assert (=> b!1407868 m!1297027))

(assert (=> b!1407868 m!1297027))

(declare-fun m!1297029 () Bool)

(assert (=> b!1407868 m!1297029))

(assert (=> b!1407874 m!1297027))

(assert (=> b!1407874 m!1297027))

(declare-fun m!1297031 () Bool)

(assert (=> b!1407874 m!1297031))

(declare-fun m!1297033 () Bool)

(assert (=> b!1407869 m!1297033))

(assert (=> b!1407872 m!1297027))

(declare-fun m!1297035 () Bool)

(assert (=> b!1407872 m!1297035))

(assert (=> b!1407872 m!1297027))

(declare-fun m!1297037 () Bool)

(assert (=> b!1407872 m!1297037))

(assert (=> b!1407872 m!1297035))

(assert (=> b!1407872 m!1297027))

(declare-fun m!1297039 () Bool)

(assert (=> b!1407872 m!1297039))

(declare-fun m!1297041 () Bool)

(assert (=> b!1407872 m!1297041))

(declare-fun m!1297043 () Bool)

(assert (=> b!1407870 m!1297043))

(declare-fun m!1297045 () Bool)

(assert (=> b!1407870 m!1297045))

(assert (=> b!1407870 m!1297045))

(declare-fun m!1297047 () Bool)

(assert (=> b!1407870 m!1297047))

(assert (=> b!1407870 m!1297047))

(assert (=> b!1407870 m!1297045))

(declare-fun m!1297049 () Bool)

(assert (=> b!1407870 m!1297049))

(declare-fun m!1297051 () Bool)

(assert (=> b!1407873 m!1297051))

(declare-fun m!1297053 () Bool)

(assert (=> start!121136 m!1297053))

(declare-fun m!1297055 () Bool)

(assert (=> start!121136 m!1297055))

(declare-fun m!1297057 () Bool)

(assert (=> b!1407867 m!1297057))

(assert (=> b!1407867 m!1297057))

(declare-fun m!1297059 () Bool)

(assert (=> b!1407867 m!1297059))

(push 1)

(assert (not start!121136))

(assert (not b!1407867))

(assert (not b!1407874))

(assert (not b!1407868))

(assert (not b!1407870))

(assert (not b!1407873))

(assert (not b!1407872))

(assert (not b!1407869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

