; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120872 () Bool)

(assert start!120872)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96097 0))(
  ( (array!96098 (arr!46392 (Array (_ BitVec 32) (_ BitVec 64))) (size!46943 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96097)

(declare-fun e!795768 () Bool)

(declare-fun b!1405842 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10725 0))(
  ( (MissingZero!10725 (index!45276 (_ BitVec 32))) (Found!10725 (index!45277 (_ BitVec 32))) (Intermediate!10725 (undefined!11537 Bool) (index!45278 (_ BitVec 32)) (x!126887 (_ BitVec 32))) (Undefined!10725) (MissingVacant!10725 (index!45279 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96097 (_ BitVec 32)) SeekEntryResult!10725)

(assert (=> b!1405842 (= e!795768 (= (seekEntryOrOpen!0 (select (arr!46392 a!2901) j!112) a!2901 mask!2840) (Found!10725 j!112)))))

(declare-fun b!1405843 () Bool)

(declare-fun res!944174 () Bool)

(declare-fun e!795770 () Bool)

(assert (=> b!1405843 (=> (not res!944174) (not e!795770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405843 (= res!944174 (validKeyInArray!0 (select (arr!46392 a!2901) j!112)))))

(declare-fun b!1405844 () Bool)

(declare-fun res!944168 () Bool)

(assert (=> b!1405844 (=> (not res!944168) (not e!795770))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405844 (= res!944168 (validKeyInArray!0 (select (arr!46392 a!2901) i!1037)))))

(declare-fun b!1405845 () Bool)

(declare-fun res!944169 () Bool)

(assert (=> b!1405845 (=> (not res!944169) (not e!795770))))

(assert (=> b!1405845 (= res!944169 (and (= (size!46943 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46943 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46943 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405846 () Bool)

(declare-fun e!795769 () Bool)

(assert (=> b!1405846 (= e!795770 (not e!795769))))

(declare-fun res!944171 () Bool)

(assert (=> b!1405846 (=> res!944171 e!795769)))

(declare-fun lt!619130 () SeekEntryResult!10725)

(assert (=> b!1405846 (= res!944171 (or (not (is-Intermediate!10725 lt!619130)) (undefined!11537 lt!619130)))))

(assert (=> b!1405846 e!795768))

(declare-fun res!944175 () Bool)

(assert (=> b!1405846 (=> (not res!944175) (not e!795768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96097 (_ BitVec 32)) Bool)

(assert (=> b!1405846 (= res!944175 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47374 0))(
  ( (Unit!47375) )
))
(declare-fun lt!619132 () Unit!47374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47374)

(assert (=> b!1405846 (= lt!619132 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96097 (_ BitVec 32)) SeekEntryResult!10725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405846 (= lt!619130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46392 a!2901) j!112) mask!2840) (select (arr!46392 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944170 () Bool)

(assert (=> start!120872 (=> (not res!944170) (not e!795770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120872 (= res!944170 (validMask!0 mask!2840))))

(assert (=> start!120872 e!795770))

(assert (=> start!120872 true))

(declare-fun array_inv!35337 (array!96097) Bool)

(assert (=> start!120872 (array_inv!35337 a!2901)))

(declare-fun b!1405847 () Bool)

(declare-fun res!944172 () Bool)

(assert (=> b!1405847 (=> (not res!944172) (not e!795770))))

(assert (=> b!1405847 (= res!944172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405848 () Bool)

(assert (=> b!1405848 (= e!795769 true)))

(declare-fun lt!619131 () SeekEntryResult!10725)

(assert (=> b!1405848 (= lt!619131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46392 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46392 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96098 (store (arr!46392 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46943 a!2901)) mask!2840))))

(declare-fun b!1405849 () Bool)

(declare-fun res!944173 () Bool)

(assert (=> b!1405849 (=> (not res!944173) (not e!795770))))

(declare-datatypes ((List!33091 0))(
  ( (Nil!33088) (Cons!33087 (h!34341 (_ BitVec 64)) (t!47792 List!33091)) )
))
(declare-fun arrayNoDuplicates!0 (array!96097 (_ BitVec 32) List!33091) Bool)

(assert (=> b!1405849 (= res!944173 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33088))))

(assert (= (and start!120872 res!944170) b!1405845))

(assert (= (and b!1405845 res!944169) b!1405844))

(assert (= (and b!1405844 res!944168) b!1405843))

(assert (= (and b!1405843 res!944174) b!1405847))

(assert (= (and b!1405847 res!944172) b!1405849))

(assert (= (and b!1405849 res!944173) b!1405846))

(assert (= (and b!1405846 res!944175) b!1405842))

(assert (= (and b!1405846 (not res!944171)) b!1405848))

(declare-fun m!1294831 () Bool)

(assert (=> b!1405846 m!1294831))

(declare-fun m!1294833 () Bool)

(assert (=> b!1405846 m!1294833))

(assert (=> b!1405846 m!1294831))

(declare-fun m!1294835 () Bool)

(assert (=> b!1405846 m!1294835))

(assert (=> b!1405846 m!1294833))

(assert (=> b!1405846 m!1294831))

(declare-fun m!1294837 () Bool)

(assert (=> b!1405846 m!1294837))

(declare-fun m!1294839 () Bool)

(assert (=> b!1405846 m!1294839))

(declare-fun m!1294841 () Bool)

(assert (=> b!1405848 m!1294841))

(declare-fun m!1294843 () Bool)

(assert (=> b!1405848 m!1294843))

(assert (=> b!1405848 m!1294843))

(declare-fun m!1294845 () Bool)

(assert (=> b!1405848 m!1294845))

(assert (=> b!1405848 m!1294845))

(assert (=> b!1405848 m!1294843))

(declare-fun m!1294847 () Bool)

(assert (=> b!1405848 m!1294847))

(declare-fun m!1294849 () Bool)

(assert (=> b!1405844 m!1294849))

(assert (=> b!1405844 m!1294849))

(declare-fun m!1294851 () Bool)

(assert (=> b!1405844 m!1294851))

(declare-fun m!1294853 () Bool)

(assert (=> start!120872 m!1294853))

(declare-fun m!1294855 () Bool)

(assert (=> start!120872 m!1294855))

(assert (=> b!1405842 m!1294831))

(assert (=> b!1405842 m!1294831))

(declare-fun m!1294857 () Bool)

(assert (=> b!1405842 m!1294857))

(declare-fun m!1294859 () Bool)

(assert (=> b!1405849 m!1294859))

(assert (=> b!1405843 m!1294831))

(assert (=> b!1405843 m!1294831))

(declare-fun m!1294861 () Bool)

(assert (=> b!1405843 m!1294861))

(declare-fun m!1294863 () Bool)

(assert (=> b!1405847 m!1294863))

(push 1)

(assert (not b!1405842))

(assert (not b!1405848))

(assert (not start!120872))

(assert (not b!1405843))

(assert (not b!1405849))

(assert (not b!1405846))

(assert (not b!1405847))

(assert (not b!1405844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

