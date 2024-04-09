; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121544 () Bool)

(assert start!121544)

(declare-fun e!798936 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96463 0))(
  ( (array!96464 (arr!46566 (Array (_ BitVec 32) (_ BitVec 64))) (size!47117 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96463)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1411763 () Bool)

(declare-datatypes ((SeekEntryResult!10899 0))(
  ( (MissingZero!10899 (index!45972 (_ BitVec 32))) (Found!10899 (index!45973 (_ BitVec 32))) (Intermediate!10899 (undefined!11711 Bool) (index!45974 (_ BitVec 32)) (x!127561 (_ BitVec 32))) (Undefined!10899) (MissingVacant!10899 (index!45975 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96463 (_ BitVec 32)) SeekEntryResult!10899)

(assert (=> b!1411763 (= e!798936 (= (seekEntryOrOpen!0 (select (arr!46566 a!2901) j!112) a!2901 mask!2840) (Found!10899 j!112)))))

(declare-fun res!949099 () Bool)

(declare-fun e!798938 () Bool)

(assert (=> start!121544 (=> (not res!949099) (not e!798938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121544 (= res!949099 (validMask!0 mask!2840))))

(assert (=> start!121544 e!798938))

(assert (=> start!121544 true))

(declare-fun array_inv!35511 (array!96463) Bool)

(assert (=> start!121544 (array_inv!35511 a!2901)))

(declare-fun b!1411764 () Bool)

(declare-fun e!798934 () Bool)

(assert (=> b!1411764 (= e!798938 (not e!798934))))

(declare-fun res!949101 () Bool)

(assert (=> b!1411764 (=> res!949101 e!798934)))

(declare-fun lt!621927 () SeekEntryResult!10899)

(assert (=> b!1411764 (= res!949101 (or (not (is-Intermediate!10899 lt!621927)) (undefined!11711 lt!621927)))))

(assert (=> b!1411764 e!798936))

(declare-fun res!949105 () Bool)

(assert (=> b!1411764 (=> (not res!949105) (not e!798936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96463 (_ BitVec 32)) Bool)

(assert (=> b!1411764 (= res!949105 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47722 0))(
  ( (Unit!47723) )
))
(declare-fun lt!621931 () Unit!47722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47722)

(assert (=> b!1411764 (= lt!621931 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621928 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96463 (_ BitVec 32)) SeekEntryResult!10899)

(assert (=> b!1411764 (= lt!621927 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621928 (select (arr!46566 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411764 (= lt!621928 (toIndex!0 (select (arr!46566 a!2901) j!112) mask!2840))))

(declare-fun b!1411765 () Bool)

(declare-fun res!949100 () Bool)

(assert (=> b!1411765 (=> (not res!949100) (not e!798938))))

(declare-datatypes ((List!33265 0))(
  ( (Nil!33262) (Cons!33261 (h!34533 (_ BitVec 64)) (t!47966 List!33265)) )
))
(declare-fun arrayNoDuplicates!0 (array!96463 (_ BitVec 32) List!33265) Bool)

(assert (=> b!1411765 (= res!949100 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33262))))

(declare-fun b!1411766 () Bool)

(declare-fun res!949104 () Bool)

(assert (=> b!1411766 (=> (not res!949104) (not e!798938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411766 (= res!949104 (validKeyInArray!0 (select (arr!46566 a!2901) j!112)))))

(declare-fun b!1411767 () Bool)

(declare-fun e!798937 () Bool)

(assert (=> b!1411767 (= e!798934 e!798937)))

(declare-fun res!949106 () Bool)

(assert (=> b!1411767 (=> res!949106 e!798937)))

(declare-fun lt!621930 () SeekEntryResult!10899)

(assert (=> b!1411767 (= res!949106 (or (= lt!621927 lt!621930) (not (is-Intermediate!10899 lt!621930))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!621926 () (_ BitVec 64))

(assert (=> b!1411767 (= lt!621930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621926 mask!2840) lt!621926 (array!96464 (store (arr!46566 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47117 a!2901)) mask!2840))))

(assert (=> b!1411767 (= lt!621926 (select (store (arr!46566 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411768 () Bool)

(assert (=> b!1411768 (= e!798937 true)))

(assert (=> b!1411768 (and (not (undefined!11711 lt!621930)) (= (index!45974 lt!621930) i!1037) (bvslt (x!127561 lt!621930) (x!127561 lt!621927)) (= (select (store (arr!46566 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45974 lt!621930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621929 () Unit!47722)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47722)

(assert (=> b!1411768 (= lt!621929 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621928 (x!127561 lt!621927) (index!45974 lt!621927) (x!127561 lt!621930) (index!45974 lt!621930) (undefined!11711 lt!621930) mask!2840))))

(declare-fun b!1411769 () Bool)

(declare-fun res!949103 () Bool)

(assert (=> b!1411769 (=> (not res!949103) (not e!798938))))

(assert (=> b!1411769 (= res!949103 (validKeyInArray!0 (select (arr!46566 a!2901) i!1037)))))

(declare-fun b!1411770 () Bool)

(declare-fun res!949107 () Bool)

(assert (=> b!1411770 (=> (not res!949107) (not e!798938))))

(assert (=> b!1411770 (= res!949107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411771 () Bool)

(declare-fun res!949102 () Bool)

(assert (=> b!1411771 (=> (not res!949102) (not e!798938))))

(assert (=> b!1411771 (= res!949102 (and (= (size!47117 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47117 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47117 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121544 res!949099) b!1411771))

(assert (= (and b!1411771 res!949102) b!1411769))

(assert (= (and b!1411769 res!949103) b!1411766))

(assert (= (and b!1411766 res!949104) b!1411770))

(assert (= (and b!1411770 res!949107) b!1411765))

(assert (= (and b!1411765 res!949100) b!1411764))

(assert (= (and b!1411764 res!949105) b!1411763))

(assert (= (and b!1411764 (not res!949101)) b!1411767))

(assert (= (and b!1411767 (not res!949106)) b!1411768))

(declare-fun m!1301835 () Bool)

(assert (=> b!1411769 m!1301835))

(assert (=> b!1411769 m!1301835))

(declare-fun m!1301837 () Bool)

(assert (=> b!1411769 m!1301837))

(declare-fun m!1301839 () Bool)

(assert (=> b!1411765 m!1301839))

(declare-fun m!1301841 () Bool)

(assert (=> b!1411768 m!1301841))

(declare-fun m!1301843 () Bool)

(assert (=> b!1411768 m!1301843))

(declare-fun m!1301845 () Bool)

(assert (=> b!1411768 m!1301845))

(declare-fun m!1301847 () Bool)

(assert (=> start!121544 m!1301847))

(declare-fun m!1301849 () Bool)

(assert (=> start!121544 m!1301849))

(declare-fun m!1301851 () Bool)

(assert (=> b!1411770 m!1301851))

(declare-fun m!1301853 () Bool)

(assert (=> b!1411766 m!1301853))

(assert (=> b!1411766 m!1301853))

(declare-fun m!1301855 () Bool)

(assert (=> b!1411766 m!1301855))

(assert (=> b!1411764 m!1301853))

(declare-fun m!1301857 () Bool)

(assert (=> b!1411764 m!1301857))

(assert (=> b!1411764 m!1301853))

(assert (=> b!1411764 m!1301853))

(declare-fun m!1301859 () Bool)

(assert (=> b!1411764 m!1301859))

(declare-fun m!1301861 () Bool)

(assert (=> b!1411764 m!1301861))

(declare-fun m!1301863 () Bool)

(assert (=> b!1411764 m!1301863))

(assert (=> b!1411763 m!1301853))

(assert (=> b!1411763 m!1301853))

(declare-fun m!1301865 () Bool)

(assert (=> b!1411763 m!1301865))

(declare-fun m!1301867 () Bool)

(assert (=> b!1411767 m!1301867))

(assert (=> b!1411767 m!1301841))

(assert (=> b!1411767 m!1301867))

(declare-fun m!1301869 () Bool)

(assert (=> b!1411767 m!1301869))

(declare-fun m!1301871 () Bool)

(assert (=> b!1411767 m!1301871))

(push 1)

