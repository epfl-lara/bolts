; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121656 () Bool)

(assert start!121656)

(declare-fun b!1412770 () Bool)

(declare-fun e!799535 () Bool)

(declare-fun e!799537 () Bool)

(assert (=> b!1412770 (= e!799535 e!799537)))

(declare-fun res!949872 () Bool)

(assert (=> b!1412770 (=> res!949872 e!799537)))

(declare-datatypes ((SeekEntryResult!10922 0))(
  ( (MissingZero!10922 (index!46067 (_ BitVec 32))) (Found!10922 (index!46068 (_ BitVec 32))) (Intermediate!10922 (undefined!11734 Bool) (index!46069 (_ BitVec 32)) (x!127660 (_ BitVec 32))) (Undefined!10922) (MissingVacant!10922 (index!46070 (_ BitVec 32))) )
))
(declare-fun lt!622567 () SeekEntryResult!10922)

(declare-fun lt!622564 () SeekEntryResult!10922)

(get-info :version)

(assert (=> b!1412770 (= res!949872 (or (= lt!622567 lt!622564) (not ((_ is Intermediate!10922) lt!622564))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622570 () (_ BitVec 64))

(declare-datatypes ((array!96512 0))(
  ( (array!96513 (arr!46589 (Array (_ BitVec 32) (_ BitVec 64))) (size!47140 (_ BitVec 32))) )
))
(declare-fun lt!622566 () array!96512)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96512 (_ BitVec 32)) SeekEntryResult!10922)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412770 (= lt!622564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622570 mask!2840) lt!622570 lt!622566 mask!2840))))

(declare-fun a!2901 () array!96512)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412770 (= lt!622570 (select (store (arr!46589 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412770 (= lt!622566 (array!96513 (store (arr!46589 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47140 a!2901)))))

(declare-fun e!799534 () Bool)

(declare-fun b!1412771 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96512 (_ BitVec 32)) SeekEntryResult!10922)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96512 (_ BitVec 32)) SeekEntryResult!10922)

(assert (=> b!1412771 (= e!799534 (= (seekEntryOrOpen!0 lt!622570 lt!622566 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127660 lt!622564) (index!46069 lt!622564) (index!46069 lt!622564) (select (arr!46589 a!2901) j!112) lt!622566 mask!2840)))))

(declare-fun res!949869 () Bool)

(declare-fun e!799536 () Bool)

(assert (=> start!121656 (=> (not res!949869) (not e!799536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121656 (= res!949869 (validMask!0 mask!2840))))

(assert (=> start!121656 e!799536))

(assert (=> start!121656 true))

(declare-fun array_inv!35534 (array!96512) Bool)

(assert (=> start!121656 (array_inv!35534 a!2901)))

(declare-fun b!1412772 () Bool)

(assert (=> b!1412772 (= e!799536 (not e!799535))))

(declare-fun res!949875 () Bool)

(assert (=> b!1412772 (=> res!949875 e!799535)))

(assert (=> b!1412772 (= res!949875 (or (not ((_ is Intermediate!10922) lt!622567)) (undefined!11734 lt!622567)))))

(declare-fun e!799538 () Bool)

(assert (=> b!1412772 e!799538))

(declare-fun res!949871 () Bool)

(assert (=> b!1412772 (=> (not res!949871) (not e!799538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96512 (_ BitVec 32)) Bool)

(assert (=> b!1412772 (= res!949871 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47768 0))(
  ( (Unit!47769) )
))
(declare-fun lt!622568 () Unit!47768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47768)

(assert (=> b!1412772 (= lt!622568 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622565 () (_ BitVec 32))

(assert (=> b!1412772 (= lt!622567 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622565 (select (arr!46589 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412772 (= lt!622565 (toIndex!0 (select (arr!46589 a!2901) j!112) mask!2840))))

(declare-fun b!1412773 () Bool)

(declare-fun res!949873 () Bool)

(assert (=> b!1412773 (=> (not res!949873) (not e!799536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412773 (= res!949873 (validKeyInArray!0 (select (arr!46589 a!2901) j!112)))))

(declare-fun b!1412774 () Bool)

(declare-fun res!949876 () Bool)

(assert (=> b!1412774 (=> (not res!949876) (not e!799536))))

(assert (=> b!1412774 (= res!949876 (and (= (size!47140 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47140 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47140 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412775 () Bool)

(declare-fun res!949878 () Bool)

(assert (=> b!1412775 (=> (not res!949878) (not e!799536))))

(assert (=> b!1412775 (= res!949878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412776 () Bool)

(assert (=> b!1412776 (= e!799538 (= (seekEntryOrOpen!0 (select (arr!46589 a!2901) j!112) a!2901 mask!2840) (Found!10922 j!112)))))

(declare-fun b!1412777 () Bool)

(declare-fun res!949870 () Bool)

(assert (=> b!1412777 (=> (not res!949870) (not e!799536))))

(declare-datatypes ((List!33288 0))(
  ( (Nil!33285) (Cons!33284 (h!34559 (_ BitVec 64)) (t!47989 List!33288)) )
))
(declare-fun arrayNoDuplicates!0 (array!96512 (_ BitVec 32) List!33288) Bool)

(assert (=> b!1412777 (= res!949870 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33285))))

(declare-fun b!1412778 () Bool)

(assert (=> b!1412778 (= e!799537 true)))

(assert (=> b!1412778 e!799534))

(declare-fun res!949877 () Bool)

(assert (=> b!1412778 (=> (not res!949877) (not e!799534))))

(assert (=> b!1412778 (= res!949877 (and (not (undefined!11734 lt!622564)) (= (index!46069 lt!622564) i!1037) (bvslt (x!127660 lt!622564) (x!127660 lt!622567)) (= (select (store (arr!46589 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46069 lt!622564)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622569 () Unit!47768)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47768)

(assert (=> b!1412778 (= lt!622569 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622565 (x!127660 lt!622567) (index!46069 lt!622567) (x!127660 lt!622564) (index!46069 lt!622564) (undefined!11734 lt!622564) mask!2840))))

(declare-fun b!1412779 () Bool)

(declare-fun res!949874 () Bool)

(assert (=> b!1412779 (=> (not res!949874) (not e!799536))))

(assert (=> b!1412779 (= res!949874 (validKeyInArray!0 (select (arr!46589 a!2901) i!1037)))))

(assert (= (and start!121656 res!949869) b!1412774))

(assert (= (and b!1412774 res!949876) b!1412779))

(assert (= (and b!1412779 res!949874) b!1412773))

(assert (= (and b!1412773 res!949873) b!1412775))

(assert (= (and b!1412775 res!949878) b!1412777))

(assert (= (and b!1412777 res!949870) b!1412772))

(assert (= (and b!1412772 res!949871) b!1412776))

(assert (= (and b!1412772 (not res!949875)) b!1412770))

(assert (= (and b!1412770 (not res!949872)) b!1412778))

(assert (= (and b!1412778 res!949877) b!1412771))

(declare-fun m!1303019 () Bool)

(assert (=> b!1412771 m!1303019))

(declare-fun m!1303021 () Bool)

(assert (=> b!1412771 m!1303021))

(assert (=> b!1412771 m!1303021))

(declare-fun m!1303023 () Bool)

(assert (=> b!1412771 m!1303023))

(declare-fun m!1303025 () Bool)

(assert (=> b!1412778 m!1303025))

(declare-fun m!1303027 () Bool)

(assert (=> b!1412778 m!1303027))

(declare-fun m!1303029 () Bool)

(assert (=> b!1412778 m!1303029))

(declare-fun m!1303031 () Bool)

(assert (=> b!1412775 m!1303031))

(assert (=> b!1412773 m!1303021))

(assert (=> b!1412773 m!1303021))

(declare-fun m!1303033 () Bool)

(assert (=> b!1412773 m!1303033))

(declare-fun m!1303035 () Bool)

(assert (=> start!121656 m!1303035))

(declare-fun m!1303037 () Bool)

(assert (=> start!121656 m!1303037))

(declare-fun m!1303039 () Bool)

(assert (=> b!1412779 m!1303039))

(assert (=> b!1412779 m!1303039))

(declare-fun m!1303041 () Bool)

(assert (=> b!1412779 m!1303041))

(assert (=> b!1412772 m!1303021))

(declare-fun m!1303043 () Bool)

(assert (=> b!1412772 m!1303043))

(assert (=> b!1412772 m!1303021))

(declare-fun m!1303045 () Bool)

(assert (=> b!1412772 m!1303045))

(assert (=> b!1412772 m!1303021))

(declare-fun m!1303047 () Bool)

(assert (=> b!1412772 m!1303047))

(declare-fun m!1303049 () Bool)

(assert (=> b!1412772 m!1303049))

(declare-fun m!1303051 () Bool)

(assert (=> b!1412770 m!1303051))

(assert (=> b!1412770 m!1303051))

(declare-fun m!1303053 () Bool)

(assert (=> b!1412770 m!1303053))

(assert (=> b!1412770 m!1303025))

(declare-fun m!1303055 () Bool)

(assert (=> b!1412770 m!1303055))

(declare-fun m!1303057 () Bool)

(assert (=> b!1412777 m!1303057))

(assert (=> b!1412776 m!1303021))

(assert (=> b!1412776 m!1303021))

(declare-fun m!1303059 () Bool)

(assert (=> b!1412776 m!1303059))

(check-sat (not start!121656) (not b!1412771) (not b!1412770) (not b!1412776) (not b!1412778) (not b!1412779) (not b!1412777) (not b!1412773) (not b!1412775) (not b!1412772))
(check-sat)
