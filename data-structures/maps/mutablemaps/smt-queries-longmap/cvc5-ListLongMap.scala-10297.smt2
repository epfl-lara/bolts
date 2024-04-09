; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121144 () Bool)

(assert start!121144)

(declare-fun b!1407974 () Bool)

(declare-fun res!945807 () Bool)

(declare-fun e!796904 () Bool)

(assert (=> b!1407974 (=> (not res!945807) (not e!796904))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96216 0))(
  ( (array!96217 (arr!46447 (Array (_ BitVec 32) (_ BitVec 64))) (size!46998 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96216)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407974 (= res!945807 (and (= (size!46998 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46998 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46998 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407975 () Bool)

(declare-fun res!945809 () Bool)

(assert (=> b!1407975 (=> (not res!945809) (not e!796904))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407975 (= res!945809 (validKeyInArray!0 (select (arr!46447 a!2901) i!1037)))))

(declare-fun b!1407976 () Bool)

(declare-fun e!796907 () Bool)

(assert (=> b!1407976 (= e!796907 true)))

(declare-datatypes ((SeekEntryResult!10780 0))(
  ( (MissingZero!10780 (index!45496 (_ BitVec 32))) (Found!10780 (index!45497 (_ BitVec 32))) (Intermediate!10780 (undefined!11592 Bool) (index!45498 (_ BitVec 32)) (x!127112 (_ BitVec 32))) (Undefined!10780) (MissingVacant!10780 (index!45499 (_ BitVec 32))) )
))
(declare-fun lt!620023 () SeekEntryResult!10780)

(declare-fun lt!620020 () (_ BitVec 64))

(declare-fun lt!620021 () array!96216)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96216 (_ BitVec 32)) SeekEntryResult!10780)

(assert (=> b!1407976 (= lt!620023 (seekEntryOrOpen!0 lt!620020 lt!620021 mask!2840))))

(declare-fun lt!620024 () (_ BitVec 32))

(declare-datatypes ((Unit!47484 0))(
  ( (Unit!47485) )
))
(declare-fun lt!620026 () Unit!47484)

(declare-fun lt!620025 () SeekEntryResult!10780)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47484)

(assert (=> b!1407976 (= lt!620026 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620024 (x!127112 lt!620025) (index!45498 lt!620025) mask!2840))))

(declare-fun b!1407977 () Bool)

(declare-fun res!945811 () Bool)

(assert (=> b!1407977 (=> (not res!945811) (not e!796904))))

(assert (=> b!1407977 (= res!945811 (validKeyInArray!0 (select (arr!46447 a!2901) j!112)))))

(declare-fun b!1407978 () Bool)

(declare-fun res!945805 () Bool)

(assert (=> b!1407978 (=> (not res!945805) (not e!796904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96216 (_ BitVec 32)) Bool)

(assert (=> b!1407978 (= res!945805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407979 () Bool)

(declare-fun e!796906 () Bool)

(assert (=> b!1407979 (= e!796906 e!796907)))

(declare-fun res!945808 () Bool)

(assert (=> b!1407979 (=> res!945808 e!796907)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96216 (_ BitVec 32)) SeekEntryResult!10780)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407979 (= res!945808 (not (= lt!620025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620020 mask!2840) lt!620020 lt!620021 mask!2840))))))

(assert (=> b!1407979 (= lt!620020 (select (store (arr!46447 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1407979 (= lt!620021 (array!96217 (store (arr!46447 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46998 a!2901)))))

(declare-fun b!1407981 () Bool)

(assert (=> b!1407981 (= e!796904 (not e!796906))))

(declare-fun res!945810 () Bool)

(assert (=> b!1407981 (=> res!945810 e!796906)))

(assert (=> b!1407981 (= res!945810 (or (not (is-Intermediate!10780 lt!620025)) (undefined!11592 lt!620025)))))

(assert (=> b!1407981 (= lt!620023 (Found!10780 j!112))))

(assert (=> b!1407981 (= lt!620023 (seekEntryOrOpen!0 (select (arr!46447 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407981 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620022 () Unit!47484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47484)

(assert (=> b!1407981 (= lt!620022 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407981 (= lt!620025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620024 (select (arr!46447 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407981 (= lt!620024 (toIndex!0 (select (arr!46447 a!2901) j!112) mask!2840))))

(declare-fun b!1407982 () Bool)

(declare-fun res!945813 () Bool)

(assert (=> b!1407982 (=> res!945813 e!796907)))

(assert (=> b!1407982 (= res!945813 (or (bvslt (x!127112 lt!620025) #b00000000000000000000000000000000) (bvsgt (x!127112 lt!620025) #b01111111111111111111111111111110) (bvslt lt!620024 #b00000000000000000000000000000000) (bvsge lt!620024 (size!46998 a!2901)) (bvslt (index!45498 lt!620025) #b00000000000000000000000000000000) (bvsge (index!45498 lt!620025) (size!46998 a!2901)) (not (= lt!620025 (Intermediate!10780 false (index!45498 lt!620025) (x!127112 lt!620025))))))))

(declare-fun b!1407980 () Bool)

(declare-fun res!945806 () Bool)

(assert (=> b!1407980 (=> (not res!945806) (not e!796904))))

(declare-datatypes ((List!33146 0))(
  ( (Nil!33143) (Cons!33142 (h!34405 (_ BitVec 64)) (t!47847 List!33146)) )
))
(declare-fun arrayNoDuplicates!0 (array!96216 (_ BitVec 32) List!33146) Bool)

(assert (=> b!1407980 (= res!945806 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33143))))

(declare-fun res!945812 () Bool)

(assert (=> start!121144 (=> (not res!945812) (not e!796904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121144 (= res!945812 (validMask!0 mask!2840))))

(assert (=> start!121144 e!796904))

(assert (=> start!121144 true))

(declare-fun array_inv!35392 (array!96216) Bool)

(assert (=> start!121144 (array_inv!35392 a!2901)))

(assert (= (and start!121144 res!945812) b!1407974))

(assert (= (and b!1407974 res!945807) b!1407975))

(assert (= (and b!1407975 res!945809) b!1407977))

(assert (= (and b!1407977 res!945811) b!1407978))

(assert (= (and b!1407978 res!945805) b!1407980))

(assert (= (and b!1407980 res!945806) b!1407981))

(assert (= (and b!1407981 (not res!945810)) b!1407979))

(assert (= (and b!1407979 (not res!945808)) b!1407982))

(assert (= (and b!1407982 (not res!945813)) b!1407976))

(declare-fun m!1297175 () Bool)

(assert (=> b!1407981 m!1297175))

(declare-fun m!1297177 () Bool)

(assert (=> b!1407981 m!1297177))

(assert (=> b!1407981 m!1297175))

(assert (=> b!1407981 m!1297175))

(declare-fun m!1297179 () Bool)

(assert (=> b!1407981 m!1297179))

(declare-fun m!1297181 () Bool)

(assert (=> b!1407981 m!1297181))

(assert (=> b!1407981 m!1297175))

(declare-fun m!1297183 () Bool)

(assert (=> b!1407981 m!1297183))

(declare-fun m!1297185 () Bool)

(assert (=> b!1407981 m!1297185))

(assert (=> b!1407977 m!1297175))

(assert (=> b!1407977 m!1297175))

(declare-fun m!1297187 () Bool)

(assert (=> b!1407977 m!1297187))

(declare-fun m!1297189 () Bool)

(assert (=> b!1407980 m!1297189))

(declare-fun m!1297191 () Bool)

(assert (=> start!121144 m!1297191))

(declare-fun m!1297193 () Bool)

(assert (=> start!121144 m!1297193))

(declare-fun m!1297195 () Bool)

(assert (=> b!1407979 m!1297195))

(assert (=> b!1407979 m!1297195))

(declare-fun m!1297197 () Bool)

(assert (=> b!1407979 m!1297197))

(declare-fun m!1297199 () Bool)

(assert (=> b!1407979 m!1297199))

(declare-fun m!1297201 () Bool)

(assert (=> b!1407979 m!1297201))

(declare-fun m!1297203 () Bool)

(assert (=> b!1407975 m!1297203))

(assert (=> b!1407975 m!1297203))

(declare-fun m!1297205 () Bool)

(assert (=> b!1407975 m!1297205))

(declare-fun m!1297207 () Bool)

(assert (=> b!1407976 m!1297207))

(declare-fun m!1297209 () Bool)

(assert (=> b!1407976 m!1297209))

(declare-fun m!1297211 () Bool)

(assert (=> b!1407978 m!1297211))

(push 1)

