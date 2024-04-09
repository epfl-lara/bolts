; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121546 () Bool)

(assert start!121546)

(declare-fun b!1411790 () Bool)

(declare-fun res!949132 () Bool)

(declare-fun e!798950 () Bool)

(assert (=> b!1411790 (=> (not res!949132) (not e!798950))))

(declare-datatypes ((array!96465 0))(
  ( (array!96466 (arr!46567 (Array (_ BitVec 32) (_ BitVec 64))) (size!47118 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96465)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411790 (= res!949132 (validKeyInArray!0 (select (arr!46567 a!2901) j!112)))))

(declare-fun b!1411791 () Bool)

(declare-fun e!798949 () Bool)

(assert (=> b!1411791 (= e!798950 (not e!798949))))

(declare-fun res!949128 () Bool)

(assert (=> b!1411791 (=> res!949128 e!798949)))

(declare-datatypes ((SeekEntryResult!10900 0))(
  ( (MissingZero!10900 (index!45976 (_ BitVec 32))) (Found!10900 (index!45977 (_ BitVec 32))) (Intermediate!10900 (undefined!11712 Bool) (index!45978 (_ BitVec 32)) (x!127570 (_ BitVec 32))) (Undefined!10900) (MissingVacant!10900 (index!45979 (_ BitVec 32))) )
))
(declare-fun lt!621947 () SeekEntryResult!10900)

(assert (=> b!1411791 (= res!949128 (or (not (is-Intermediate!10900 lt!621947)) (undefined!11712 lt!621947)))))

(declare-fun e!798951 () Bool)

(assert (=> b!1411791 e!798951))

(declare-fun res!949130 () Bool)

(assert (=> b!1411791 (=> (not res!949130) (not e!798951))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96465 (_ BitVec 32)) Bool)

(assert (=> b!1411791 (= res!949130 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47724 0))(
  ( (Unit!47725) )
))
(declare-fun lt!621950 () Unit!47724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47724)

(assert (=> b!1411791 (= lt!621950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621948 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96465 (_ BitVec 32)) SeekEntryResult!10900)

(assert (=> b!1411791 (= lt!621947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621948 (select (arr!46567 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411791 (= lt!621948 (toIndex!0 (select (arr!46567 a!2901) j!112) mask!2840))))

(declare-fun b!1411792 () Bool)

(declare-fun res!949133 () Bool)

(assert (=> b!1411792 (=> (not res!949133) (not e!798950))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411792 (= res!949133 (validKeyInArray!0 (select (arr!46567 a!2901) i!1037)))))

(declare-fun b!1411793 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96465 (_ BitVec 32)) SeekEntryResult!10900)

(assert (=> b!1411793 (= e!798951 (= (seekEntryOrOpen!0 (select (arr!46567 a!2901) j!112) a!2901 mask!2840) (Found!10900 j!112)))))

(declare-fun b!1411794 () Bool)

(declare-fun lt!621952 () array!96465)

(declare-fun lt!621951 () (_ BitVec 64))

(declare-fun e!798952 () Bool)

(declare-fun lt!621949 () SeekEntryResult!10900)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96465 (_ BitVec 32)) SeekEntryResult!10900)

(assert (=> b!1411794 (= e!798952 (= (seekEntryOrOpen!0 lt!621951 lt!621952 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127570 lt!621949) (index!45978 lt!621949) (index!45978 lt!621949) (select (arr!46567 a!2901) j!112) lt!621952 mask!2840)))))

(assert (=> b!1411794 (and (not (undefined!11712 lt!621949)) (= (index!45978 lt!621949) i!1037) (bvslt (x!127570 lt!621949) (x!127570 lt!621947)) (= (select (store (arr!46567 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45978 lt!621949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621946 () Unit!47724)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47724)

(assert (=> b!1411794 (= lt!621946 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621948 (x!127570 lt!621947) (index!45978 lt!621947) (x!127570 lt!621949) (index!45978 lt!621949) (undefined!11712 lt!621949) mask!2840))))

(declare-fun b!1411795 () Bool)

(declare-fun res!949126 () Bool)

(assert (=> b!1411795 (=> (not res!949126) (not e!798950))))

(assert (=> b!1411795 (= res!949126 (and (= (size!47118 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47118 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47118 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411796 () Bool)

(declare-fun res!949129 () Bool)

(assert (=> b!1411796 (=> (not res!949129) (not e!798950))))

(declare-datatypes ((List!33266 0))(
  ( (Nil!33263) (Cons!33262 (h!34534 (_ BitVec 64)) (t!47967 List!33266)) )
))
(declare-fun arrayNoDuplicates!0 (array!96465 (_ BitVec 32) List!33266) Bool)

(assert (=> b!1411796 (= res!949129 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33263))))

(declare-fun b!1411797 () Bool)

(assert (=> b!1411797 (= e!798949 e!798952)))

(declare-fun res!949127 () Bool)

(assert (=> b!1411797 (=> res!949127 e!798952)))

(assert (=> b!1411797 (= res!949127 (or (= lt!621947 lt!621949) (not (is-Intermediate!10900 lt!621949))))))

(assert (=> b!1411797 (= lt!621949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621951 mask!2840) lt!621951 lt!621952 mask!2840))))

(assert (=> b!1411797 (= lt!621951 (select (store (arr!46567 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1411797 (= lt!621952 (array!96466 (store (arr!46567 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47118 a!2901)))))

(declare-fun res!949134 () Bool)

(assert (=> start!121546 (=> (not res!949134) (not e!798950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121546 (= res!949134 (validMask!0 mask!2840))))

(assert (=> start!121546 e!798950))

(assert (=> start!121546 true))

(declare-fun array_inv!35512 (array!96465) Bool)

(assert (=> start!121546 (array_inv!35512 a!2901)))

(declare-fun b!1411798 () Bool)

(declare-fun res!949131 () Bool)

(assert (=> b!1411798 (=> (not res!949131) (not e!798950))))

(assert (=> b!1411798 (= res!949131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121546 res!949134) b!1411795))

(assert (= (and b!1411795 res!949126) b!1411792))

(assert (= (and b!1411792 res!949133) b!1411790))

(assert (= (and b!1411790 res!949132) b!1411798))

(assert (= (and b!1411798 res!949131) b!1411796))

(assert (= (and b!1411796 res!949129) b!1411791))

(assert (= (and b!1411791 res!949130) b!1411793))

(assert (= (and b!1411791 (not res!949128)) b!1411797))

(assert (= (and b!1411797 (not res!949127)) b!1411794))

(declare-fun m!1301873 () Bool)

(assert (=> b!1411790 m!1301873))

(assert (=> b!1411790 m!1301873))

(declare-fun m!1301875 () Bool)

(assert (=> b!1411790 m!1301875))

(declare-fun m!1301877 () Bool)

(assert (=> start!121546 m!1301877))

(declare-fun m!1301879 () Bool)

(assert (=> start!121546 m!1301879))

(assert (=> b!1411793 m!1301873))

(assert (=> b!1411793 m!1301873))

(declare-fun m!1301881 () Bool)

(assert (=> b!1411793 m!1301881))

(declare-fun m!1301883 () Bool)

(assert (=> b!1411792 m!1301883))

(assert (=> b!1411792 m!1301883))

(declare-fun m!1301885 () Bool)

(assert (=> b!1411792 m!1301885))

(declare-fun m!1301887 () Bool)

(assert (=> b!1411797 m!1301887))

(assert (=> b!1411797 m!1301887))

(declare-fun m!1301889 () Bool)

(assert (=> b!1411797 m!1301889))

(declare-fun m!1301891 () Bool)

(assert (=> b!1411797 m!1301891))

(declare-fun m!1301893 () Bool)

(assert (=> b!1411797 m!1301893))

(assert (=> b!1411794 m!1301873))

(declare-fun m!1301895 () Bool)

(assert (=> b!1411794 m!1301895))

(declare-fun m!1301897 () Bool)

(assert (=> b!1411794 m!1301897))

(assert (=> b!1411794 m!1301873))

(declare-fun m!1301899 () Bool)

(assert (=> b!1411794 m!1301899))

(declare-fun m!1301901 () Bool)

(assert (=> b!1411794 m!1301901))

(assert (=> b!1411794 m!1301891))

(assert (=> b!1411791 m!1301873))

(declare-fun m!1301903 () Bool)

(assert (=> b!1411791 m!1301903))

(assert (=> b!1411791 m!1301873))

(declare-fun m!1301905 () Bool)

(assert (=> b!1411791 m!1301905))

(assert (=> b!1411791 m!1301873))

(declare-fun m!1301907 () Bool)

(assert (=> b!1411791 m!1301907))

(declare-fun m!1301909 () Bool)

(assert (=> b!1411791 m!1301909))

(declare-fun m!1301911 () Bool)

(assert (=> b!1411796 m!1301911))

(declare-fun m!1301913 () Bool)

(assert (=> b!1411798 m!1301913))

(push 1)

(assert (not b!1411791))

(assert (not b!1411797))

(assert (not b!1411798))

(assert (not b!1411790))

(assert (not start!121546))

(assert (not b!1411796))

(assert (not b!1411792))

(assert (not b!1411793))

(assert (not b!1411794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151931 () Bool)

(declare-fun lt!622016 () SeekEntryResult!10900)

(assert (=> d!151931 (and (or (is-Undefined!10900 lt!622016) (not (is-Found!10900 lt!622016)) (and (bvsge (index!45977 lt!622016) #b00000000000000000000000000000000) (bvslt (index!45977 lt!622016) (size!47118 lt!621952)))) (or (is-Undefined!10900 lt!622016) (is-Found!10900 lt!622016) (not (is-MissingZero!10900 lt!622016)) (and (bvsge (index!45976 lt!622016) #b00000000000000000000000000000000) (bvslt (index!45976 lt!622016) (size!47118 lt!621952)))) (or (is-Undefined!10900 lt!622016) (is-Found!10900 lt!622016) (is-MissingZero!10900 lt!622016) (not (is-MissingVacant!10900 lt!622016)) (and (bvsge (index!45979 lt!622016) #b00000000000000000000000000000000) (bvslt (index!45979 lt!622016) (size!47118 lt!621952)))) (or (is-Undefined!10900 lt!622016) (ite (is-Found!10900 lt!622016) (= (select (arr!46567 lt!621952) (index!45977 lt!622016)) lt!621951) (ite (is-MissingZero!10900 lt!622016) (= (select (arr!46567 lt!621952) (index!45976 lt!622016)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10900 lt!622016) (= (select (arr!46567 lt!621952) (index!45979 lt!622016)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!799035 () SeekEntryResult!10900)

(assert (=> d!151931 (= lt!622016 e!799035)))

(declare-fun c!130829 () Bool)

(declare-fun lt!622014 () SeekEntryResult!10900)

(assert (=> d!151931 (= c!130829 (and (is-Intermediate!10900 lt!622014) (undefined!11712 lt!622014)))))

(assert (=> d!151931 (= lt!622014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621951 mask!2840) lt!621951 lt!621952 mask!2840))))

(assert (=> d!151931 (validMask!0 mask!2840)))

(assert (=> d!151931 (= (seekEntryOrOpen!0 lt!621951 lt!621952 mask!2840) lt!622016)))

(declare-fun b!1411925 () Bool)

(declare-fun e!799034 () SeekEntryResult!10900)

(assert (=> b!1411925 (= e!799034 (MissingZero!10900 (index!45978 lt!622014)))))

(declare-fun b!1411926 () Bool)

(assert (=> b!1411926 (= e!799034 (seekKeyOrZeroReturnVacant!0 (x!127570 lt!622014) (index!45978 lt!622014) (index!45978 lt!622014) lt!621951 lt!621952 mask!2840))))

(declare-fun b!1411927 () Bool)

(assert (=> b!1411927 (= e!799035 Undefined!10900)))

(declare-fun b!1411928 () Bool)

(declare-fun c!130827 () Bool)

(declare-fun lt!622015 () (_ BitVec 64))

(assert (=> b!1411928 (= c!130827 (= lt!622015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799033 () SeekEntryResult!10900)

(assert (=> b!1411928 (= e!799033 e!799034)))

(declare-fun b!1411929 () Bool)

(assert (=> b!1411929 (= e!799035 e!799033)))

(assert (=> b!1411929 (= lt!622015 (select (arr!46567 lt!621952) (index!45978 lt!622014)))))

(declare-fun c!130828 () Bool)

(assert (=> b!1411929 (= c!130828 (= lt!622015 lt!621951))))

(declare-fun b!1411930 () Bool)

(assert (=> b!1411930 (= e!799033 (Found!10900 (index!45978 lt!622014)))))

(assert (= (and d!151931 c!130829) b!1411927))

(assert (= (and d!151931 (not c!130829)) b!1411929))

(assert (= (and b!1411929 c!130828) b!1411930))

(assert (= (and b!1411929 (not c!130828)) b!1411928))

(assert (= (and b!1411928 c!130827) b!1411925))

(assert (= (and b!1411928 (not c!130827)) b!1411926))

(assert (=> d!151931 m!1301887))

(assert (=> d!151931 m!1301889))

(declare-fun m!1302023 () Bool)

(assert (=> d!151931 m!1302023))

(declare-fun m!1302025 () Bool)

(assert (=> d!151931 m!1302025))

(declare-fun m!1302027 () Bool)

(assert (=> d!151931 m!1302027))

(assert (=> d!151931 m!1301877))

(assert (=> d!151931 m!1301887))

(declare-fun m!1302029 () Bool)

(assert (=> b!1411926 m!1302029))

(declare-fun m!1302031 () Bool)

(assert (=> b!1411929 m!1302031))

(assert (=> b!1411794 d!151931))

(declare-fun b!1411970 () Bool)

(declare-fun e!799057 () SeekEntryResult!10900)

(declare-fun e!799058 () SeekEntryResult!10900)

(assert (=> b!1411970 (= e!799057 e!799058)))

(declare-fun lt!622034 () (_ BitVec 64))

(declare-fun c!130847 () Bool)

(assert (=> b!1411970 (= c!130847 (= lt!622034 (select (arr!46567 a!2901) j!112)))))

(declare-fun b!1411972 () Bool)

(declare-fun e!799059 () SeekEntryResult!10900)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411972 (= e!799059 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127570 lt!621949) #b00000000000000000000000000000001) (nextIndex!0 (index!45978 lt!621949) (x!127570 lt!621949) mask!2840) (index!45978 lt!621949) (select (arr!46567 a!2901) j!112) lt!621952 mask!2840))))

(declare-fun b!1411973 () Bool)

(assert (=> b!1411973 (= e!799058 (Found!10900 (index!45978 lt!621949)))))

(declare-fun b!1411974 () Bool)

(assert (=> b!1411974 (= e!799057 Undefined!10900)))

(declare-fun b!1411975 () Bool)

(assert (=> b!1411975 (= e!799059 (MissingVacant!10900 (index!45978 lt!621949)))))

(declare-fun b!1411971 () Bool)

(declare-fun c!130845 () Bool)

(assert (=> b!1411971 (= c!130845 (= lt!622034 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1411971 (= e!799058 e!799059)))

(declare-fun lt!622033 () SeekEntryResult!10900)

(declare-fun d!151939 () Bool)

(assert (=> d!151939 (and (or (is-Undefined!10900 lt!622033) (not (is-Found!10900 lt!622033)) (and (bvsge (index!45977 lt!622033) #b00000000000000000000000000000000) (bvslt (index!45977 lt!622033) (size!47118 lt!621952)))) (or (is-Undefined!10900 lt!622033) (is-Found!10900 lt!622033) (not (is-MissingVacant!10900 lt!622033)) (not (= (index!45979 lt!622033) (index!45978 lt!621949))) (and (bvsge (index!45979 lt!622033) #b00000000000000000000000000000000) (bvslt (index!45979 lt!622033) (size!47118 lt!621952)))) (or (is-Undefined!10900 lt!622033) (ite (is-Found!10900 lt!622033) (= (select (arr!46567 lt!621952) (index!45977 lt!622033)) (select (arr!46567 a!2901) j!112)) (and (is-MissingVacant!10900 lt!622033) (= (index!45979 lt!622033) (index!45978 lt!621949)) (= (select (arr!46567 lt!621952) (index!45979 lt!622033)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!151939 (= lt!622033 e!799057)))

(declare-fun c!130846 () Bool)

(assert (=> d!151939 (= c!130846 (bvsge (x!127570 lt!621949) #b01111111111111111111111111111110))))

(assert (=> d!151939 (= lt!622034 (select (arr!46567 lt!621952) (index!45978 lt!621949)))))

(assert (=> d!151939 (validMask!0 mask!2840)))

(assert (=> d!151939 (= (seekKeyOrZeroReturnVacant!0 (x!127570 lt!621949) (index!45978 lt!621949) (index!45978 lt!621949) (select (arr!46567 a!2901) j!112) lt!621952 mask!2840) lt!622033)))

(assert (= (and d!151939 c!130846) b!1411974))

(assert (= (and d!151939 (not c!130846)) b!1411970))

(assert (= (and b!1411970 c!130847) b!1411973))

(assert (= (and b!1411970 (not c!130847)) b!1411971))

(assert (= (and b!1411971 c!130845) b!1411975))

(assert (= (and b!1411971 (not c!130845)) b!1411972))

(declare-fun m!1302041 () Bool)

(assert (=> b!1411972 m!1302041))

(assert (=> b!1411972 m!1302041))

(assert (=> b!1411972 m!1301873))

(declare-fun m!1302043 () Bool)

(assert (=> b!1411972 m!1302043))

(declare-fun m!1302045 () Bool)

(assert (=> d!151939 m!1302045))

(declare-fun m!1302047 () Bool)

(assert (=> d!151939 m!1302047))

(declare-fun m!1302049 () Bool)

(assert (=> d!151939 m!1302049))

(assert (=> d!151939 m!1301877))

(assert (=> b!1411794 d!151939))

(declare-fun d!151945 () Bool)

(assert (=> d!151945 (and (not (undefined!11712 lt!621949)) (= (index!45978 lt!621949) i!1037) (bvslt (x!127570 lt!621949) (x!127570 lt!621947)))))

(declare-fun lt!622039 () Unit!47724)

(declare-fun choose!62 (array!96465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47724)

(assert (=> d!151945 (= lt!622039 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621948 (x!127570 lt!621947) (index!45978 lt!621947) (x!127570 lt!621949) (index!45978 lt!621949) (undefined!11712 lt!621949) mask!2840))))

(assert (=> d!151945 (validMask!0 mask!2840)))

(assert (=> d!151945 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621948 (x!127570 lt!621947) (index!45978 lt!621947) (x!127570 lt!621949) (index!45978 lt!621949) (undefined!11712 lt!621949) mask!2840) lt!622039)))

(declare-fun bs!41162 () Bool)

(assert (= bs!41162 d!151945))

(declare-fun m!1302059 () Bool)

(assert (=> bs!41162 m!1302059))

(assert (=> bs!41162 m!1301877))

(assert (=> b!1411794 d!151945))

(declare-fun d!151949 () Bool)

(declare-fun lt!622042 () SeekEntryResult!10900)

(assert (=> d!151949 (and (or (is-Undefined!10900 lt!622042) (not (is-Found!10900 lt!622042)) (and (bvsge (index!45977 lt!622042) #b00000000000000000000000000000000) (bvslt (index!45977 lt!622042) (size!47118 a!2901)))) (or (is-Undefined!10900 lt!622042) (is-Found!10900 lt!622042) (not (is-MissingZero!10900 lt!622042)) (and (bvsge (index!45976 lt!622042) #b00000000000000000000000000000000) (bvslt (index!45976 lt!622042) (size!47118 a!2901)))) (or (is-Undefined!10900 lt!622042) (is-Found!10900 lt!622042) (is-MissingZero!10900 lt!622042) (not (is-MissingVacant!10900 lt!622042)) (and (bvsge (index!45979 lt!622042) #b00000000000000000000000000000000) (bvslt (index!45979 lt!622042) (size!47118 a!2901)))) (or (is-Undefined!10900 lt!622042) (ite (is-Found!10900 lt!622042) (= (select (arr!46567 a!2901) (index!45977 lt!622042)) (select (arr!46567 a!2901) j!112)) (ite (is-MissingZero!10900 lt!622042) (= (select (arr!46567 a!2901) (index!45976 lt!622042)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10900 lt!622042) (= (select (arr!46567 a!2901) (index!45979 lt!622042)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!799067 () SeekEntryResult!10900)

(assert (=> d!151949 (= lt!622042 e!799067)))

(declare-fun c!130853 () Bool)

(declare-fun lt!622040 () SeekEntryResult!10900)

(assert (=> d!151949 (= c!130853 (and (is-Intermediate!10900 lt!622040) (undefined!11712 lt!622040)))))

(assert (=> d!151949 (= lt!622040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46567 a!2901) j!112) mask!2840) (select (arr!46567 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151949 (validMask!0 mask!2840)))

(assert (=> d!151949 (= (seekEntryOrOpen!0 (select (arr!46567 a!2901) j!112) a!2901 mask!2840) lt!622042)))

(declare-fun b!1411985 () Bool)

(declare-fun e!799066 () SeekEntryResult!10900)

(assert (=> b!1411985 (= e!799066 (MissingZero!10900 (index!45978 lt!622040)))))

(declare-fun b!1411986 () Bool)

(assert (=> b!1411986 (= e!799066 (seekKeyOrZeroReturnVacant!0 (x!127570 lt!622040) (index!45978 lt!622040) (index!45978 lt!622040) (select (arr!46567 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1411987 () Bool)

(assert (=> b!1411987 (= e!799067 Undefined!10900)))

(declare-fun b!1411988 () Bool)

(declare-fun c!130851 () Bool)

(declare-fun lt!622041 () (_ BitVec 64))

(assert (=> b!1411988 (= c!130851 (= lt!622041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!799065 () SeekEntryResult!10900)

(assert (=> b!1411988 (= e!799065 e!799066)))

(declare-fun b!1411989 () Bool)

(assert (=> b!1411989 (= e!799067 e!799065)))

(assert (=> b!1411989 (= lt!622041 (select (arr!46567 a!2901) (index!45978 lt!622040)))))

(declare-fun c!130852 () Bool)

(assert (=> b!1411989 (= c!130852 (= lt!622041 (select (arr!46567 a!2901) j!112)))))

(declare-fun b!1411990 () Bool)

(assert (=> b!1411990 (= e!799065 (Found!10900 (index!45978 lt!622040)))))

(assert (= (and d!151949 c!130853) b!1411987))

(assert (= (and d!151949 (not c!130853)) b!1411989))

(assert (= (and b!1411989 c!130852) b!1411990))

(assert (= (and b!1411989 (not c!130852)) b!1411988))

(assert (= (and b!1411988 c!130851) b!1411985))

(assert (= (and b!1411988 (not c!130851)) b!1411986))

(assert (=> d!151949 m!1301903))

(assert (=> d!151949 m!1301873))

(declare-fun m!1302061 () Bool)

(assert (=> d!151949 m!1302061))

(declare-fun m!1302063 () Bool)

(assert (=> d!151949 m!1302063))

(declare-fun m!1302065 () Bool)

(assert (=> d!151949 m!1302065))

(declare-fun m!1302067 () Bool)

(assert (=> d!151949 m!1302067))

(assert (=> d!151949 m!1301877))

(assert (=> d!151949 m!1301873))

(assert (=> d!151949 m!1301903))

(assert (=> b!1411986 m!1301873))

(declare-fun m!1302069 () Bool)

(assert (=> b!1411986 m!1302069))

(declare-fun m!1302071 () Bool)

(assert (=> b!1411989 m!1302071))

(assert (=> b!1411793 d!151949))

(declare-fun d!151951 () Bool)

(assert (=> d!151951 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121546 d!151951))

(declare-fun d!151957 () Bool)

(assert (=> d!151957 (= (array_inv!35512 a!2901) (bvsge (size!47118 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121546 d!151957))

(declare-fun b!1412035 () Bool)

(declare-fun e!799092 () Bool)

(declare-fun e!799094 () Bool)

(assert (=> b!1412035 (= e!799092 e!799094)))

(declare-fun lt!622074 () (_ BitVec 64))

(assert (=> b!1412035 (= lt!622074 (select (arr!46567 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!622075 () Unit!47724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96465 (_ BitVec 64) (_ BitVec 32)) Unit!47724)

(assert (=> b!1412035 (= lt!622075 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622074 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1412035 (arrayContainsKey!0 a!2901 lt!622074 #b00000000000000000000000000000000)))

(declare-fun lt!622073 () Unit!47724)

(assert (=> b!1412035 (= lt!622073 lt!622075)))

(declare-fun res!949237 () Bool)

(assert (=> b!1412035 (= res!949237 (= (seekEntryOrOpen!0 (select (arr!46567 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10900 #b00000000000000000000000000000000)))))

(assert (=> b!1412035 (=> (not res!949237) (not e!799094))))

(declare-fun b!1412036 () Bool)

(declare-fun call!67086 () Bool)

(assert (=> b!1412036 (= e!799092 call!67086)))

(declare-fun b!1412037 () Bool)

(assert (=> b!1412037 (= e!799094 call!67086)))

(declare-fun bm!67083 () Bool)

(assert (=> bm!67083 (= call!67086 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!151959 () Bool)

(declare-fun res!949238 () Bool)

(declare-fun e!799093 () Bool)

(assert (=> d!151959 (=> res!949238 e!799093)))

(assert (=> d!151959 (= res!949238 (bvsge #b00000000000000000000000000000000 (size!47118 a!2901)))))

(assert (=> d!151959 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!799093)))

(declare-fun b!1412038 () Bool)

(assert (=> b!1412038 (= e!799093 e!799092)))

(declare-fun c!130874 () Bool)

(assert (=> b!1412038 (= c!130874 (validKeyInArray!0 (select (arr!46567 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151959 (not res!949238)) b!1412038))

(assert (= (and b!1412038 c!130874) b!1412035))

(assert (= (and b!1412038 (not c!130874)) b!1412036))

(assert (= (and b!1412035 res!949237) b!1412037))

(assert (= (or b!1412037 b!1412036) bm!67083))

(declare-fun m!1302095 () Bool)

(assert (=> b!1412035 m!1302095))

(declare-fun m!1302097 () Bool)

(assert (=> b!1412035 m!1302097))

(declare-fun m!1302099 () Bool)

(assert (=> b!1412035 m!1302099))

(assert (=> b!1412035 m!1302095))

(declare-fun m!1302101 () Bool)

(assert (=> b!1412035 m!1302101))

(declare-fun m!1302103 () Bool)

(assert (=> bm!67083 m!1302103))

(assert (=> b!1412038 m!1302095))

(assert (=> b!1412038 m!1302095))

(declare-fun m!1302105 () Bool)

(assert (=> b!1412038 m!1302105))

(assert (=> b!1411798 d!151959))

(declare-fun e!799136 () SeekEntryResult!10900)

(declare-fun b!1412106 () Bool)

(assert (=> b!1412106 (= e!799136 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!621951 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!621951 lt!621952 mask!2840))))

(declare-fun b!1412107 () Bool)

(declare-fun e!799137 () SeekEntryResult!10900)

(assert (=> b!1412107 (= e!799137 (Intermediate!10900 true (toIndex!0 lt!621951 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1412108 () Bool)

(assert (=> b!1412108 (= e!799137 e!799136)))

(declare-fun c!130900 () Bool)

(declare-fun lt!622111 () (_ BitVec 64))

(assert (=> b!1412108 (= c!130900 (or (= lt!622111 lt!621951) (= (bvadd lt!622111 lt!622111) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1412109 () Bool)

(assert (=> b!1412109 (= e!799136 (Intermediate!10900 false (toIndex!0 lt!621951 mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151967 () Bool)

(declare-fun e!799138 () Bool)

(assert (=> d!151967 e!799138))

(declare-fun c!130902 () Bool)

(declare-fun lt!622112 () SeekEntryResult!10900)

(assert (=> d!151967 (= c!130902 (and (is-Intermediate!10900 lt!622112) (undefined!11712 lt!622112)))))

(assert (=> d!151967 (= lt!622112 e!799137)))

(declare-fun c!130901 () Bool)

(assert (=> d!151967 (= c!130901 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151967 (= lt!622111 (select (arr!46567 lt!621952) (toIndex!0 lt!621951 mask!2840)))))

(assert (=> d!151967 (validMask!0 mask!2840)))

(assert (=> d!151967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621951 mask!2840) lt!621951 lt!621952 mask!2840) lt!622112)))

(declare-fun b!1412110 () Bool)

(assert (=> b!1412110 (and (bvsge (index!45978 lt!622112) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622112) (size!47118 lt!621952)))))

(declare-fun res!949257 () Bool)

(assert (=> b!1412110 (= res!949257 (= (select (arr!46567 lt!621952) (index!45978 lt!622112)) lt!621951))))

(declare-fun e!799135 () Bool)

(assert (=> b!1412110 (=> res!949257 e!799135)))

(declare-fun e!799134 () Bool)

(assert (=> b!1412110 (= e!799134 e!799135)))

(declare-fun b!1412111 () Bool)

(assert (=> b!1412111 (= e!799138 (bvsge (x!127570 lt!622112) #b01111111111111111111111111111110))))

(declare-fun b!1412112 () Bool)

(assert (=> b!1412112 (and (bvsge (index!45978 lt!622112) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622112) (size!47118 lt!621952)))))

(assert (=> b!1412112 (= e!799135 (= (select (arr!46567 lt!621952) (index!45978 lt!622112)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1412113 () Bool)

(assert (=> b!1412113 (= e!799138 e!799134)))

(declare-fun res!949256 () Bool)

(assert (=> b!1412113 (= res!949256 (and (is-Intermediate!10900 lt!622112) (not (undefined!11712 lt!622112)) (bvslt (x!127570 lt!622112) #b01111111111111111111111111111110) (bvsge (x!127570 lt!622112) #b00000000000000000000000000000000) (bvsge (x!127570 lt!622112) #b00000000000000000000000000000000)))))

(assert (=> b!1412113 (=> (not res!949256) (not e!799134))))

(declare-fun b!1412114 () Bool)

(assert (=> b!1412114 (and (bvsge (index!45978 lt!622112) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622112) (size!47118 lt!621952)))))

(declare-fun res!949258 () Bool)

(assert (=> b!1412114 (= res!949258 (= (select (arr!46567 lt!621952) (index!45978 lt!622112)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412114 (=> res!949258 e!799135)))

(assert (= (and d!151967 c!130901) b!1412107))

(assert (= (and d!151967 (not c!130901)) b!1412108))

(assert (= (and b!1412108 c!130900) b!1412109))

(assert (= (and b!1412108 (not c!130900)) b!1412106))

(assert (= (and d!151967 c!130902) b!1412111))

(assert (= (and d!151967 (not c!130902)) b!1412113))

(assert (= (and b!1412113 res!949256) b!1412110))

(assert (= (and b!1412110 (not res!949257)) b!1412114))

(assert (= (and b!1412114 (not res!949258)) b!1412112))

(assert (=> d!151967 m!1301887))

(declare-fun m!1302159 () Bool)

(assert (=> d!151967 m!1302159))

(assert (=> d!151967 m!1301877))

(declare-fun m!1302161 () Bool)

(assert (=> b!1412114 m!1302161))

(assert (=> b!1412112 m!1302161))

(assert (=> b!1412106 m!1301887))

(declare-fun m!1302165 () Bool)

(assert (=> b!1412106 m!1302165))

(assert (=> b!1412106 m!1302165))

(declare-fun m!1302167 () Bool)

(assert (=> b!1412106 m!1302167))

(assert (=> b!1412110 m!1302161))

(assert (=> b!1411797 d!151967))

(declare-fun d!151991 () Bool)

(declare-fun lt!622129 () (_ BitVec 32))

(declare-fun lt!622128 () (_ BitVec 32))

(assert (=> d!151991 (= lt!622129 (bvmul (bvxor lt!622128 (bvlshr lt!622128 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151991 (= lt!622128 ((_ extract 31 0) (bvand (bvxor lt!621951 (bvlshr lt!621951 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151991 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949261 (let ((h!34539 ((_ extract 31 0) (bvand (bvxor lt!621951 (bvlshr lt!621951 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127582 (bvmul (bvxor h!34539 (bvlshr h!34539 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127582 (bvlshr x!127582 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949261 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949261 #b00000000000000000000000000000000))))))

(assert (=> d!151991 (= (toIndex!0 lt!621951 mask!2840) (bvand (bvxor lt!622129 (bvlshr lt!622129 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411797 d!151991))

(declare-fun d!151999 () Bool)

(assert (=> d!151999 (= (validKeyInArray!0 (select (arr!46567 a!2901) i!1037)) (and (not (= (select (arr!46567 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46567 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411792 d!151999))

(declare-fun b!1412134 () Bool)

(declare-fun e!799150 () Bool)

(declare-fun e!799152 () Bool)

(assert (=> b!1412134 (= e!799150 e!799152)))

(declare-fun lt!622133 () (_ BitVec 64))

(assert (=> b!1412134 (= lt!622133 (select (arr!46567 a!2901) j!112))))

(declare-fun lt!622134 () Unit!47724)

(assert (=> b!1412134 (= lt!622134 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!622133 j!112))))

(assert (=> b!1412134 (arrayContainsKey!0 a!2901 lt!622133 #b00000000000000000000000000000000)))

(declare-fun lt!622132 () Unit!47724)

(assert (=> b!1412134 (= lt!622132 lt!622134)))

(declare-fun res!949265 () Bool)

(assert (=> b!1412134 (= res!949265 (= (seekEntryOrOpen!0 (select (arr!46567 a!2901) j!112) a!2901 mask!2840) (Found!10900 j!112)))))

(assert (=> b!1412134 (=> (not res!949265) (not e!799152))))

(declare-fun b!1412135 () Bool)

(declare-fun call!67092 () Bool)

(assert (=> b!1412135 (= e!799150 call!67092)))

(declare-fun b!1412136 () Bool)

(assert (=> b!1412136 (= e!799152 call!67092)))

(declare-fun bm!67089 () Bool)

(assert (=> bm!67089 (= call!67092 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152003 () Bool)

(declare-fun res!949266 () Bool)

(declare-fun e!799151 () Bool)

(assert (=> d!152003 (=> res!949266 e!799151)))

(assert (=> d!152003 (= res!949266 (bvsge j!112 (size!47118 a!2901)))))

(assert (=> d!152003 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!799151)))

(declare-fun b!1412137 () Bool)

(assert (=> b!1412137 (= e!799151 e!799150)))

(declare-fun c!130910 () Bool)

(assert (=> b!1412137 (= c!130910 (validKeyInArray!0 (select (arr!46567 a!2901) j!112)))))

(assert (= (and d!152003 (not res!949266)) b!1412137))

(assert (= (and b!1412137 c!130910) b!1412134))

(assert (= (and b!1412137 (not c!130910)) b!1412135))

(assert (= (and b!1412134 res!949265) b!1412136))

(assert (= (or b!1412136 b!1412135) bm!67089))

(assert (=> b!1412134 m!1301873))

(declare-fun m!1302189 () Bool)

(assert (=> b!1412134 m!1302189))

(declare-fun m!1302191 () Bool)

(assert (=> b!1412134 m!1302191))

(assert (=> b!1412134 m!1301873))

(assert (=> b!1412134 m!1301881))

(declare-fun m!1302193 () Bool)

(assert (=> bm!67089 m!1302193))

(assert (=> b!1412137 m!1301873))

(assert (=> b!1412137 m!1301873))

(assert (=> b!1412137 m!1301875))

(assert (=> b!1411791 d!152003))

(declare-fun d!152007 () Bool)

(assert (=> d!152007 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!622137 () Unit!47724)

(declare-fun choose!38 (array!96465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47724)

(assert (=> d!152007 (= lt!622137 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152007 (validMask!0 mask!2840)))

(assert (=> d!152007 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!622137)))

(declare-fun bs!41166 () Bool)

(assert (= bs!41166 d!152007))

(assert (=> bs!41166 m!1301909))

(declare-fun m!1302195 () Bool)

(assert (=> bs!41166 m!1302195))

(assert (=> bs!41166 m!1301877))

(assert (=> b!1411791 d!152007))

(declare-fun e!799155 () SeekEntryResult!10900)

(declare-fun b!1412138 () Bool)

(assert (=> b!1412138 (= e!799155 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!621948 #b00000000000000000000000000000000 mask!2840) (select (arr!46567 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1412139 () Bool)

(declare-fun e!799156 () SeekEntryResult!10900)

(assert (=> b!1412139 (= e!799156 (Intermediate!10900 true lt!621948 #b00000000000000000000000000000000))))

(declare-fun b!1412140 () Bool)

(assert (=> b!1412140 (= e!799156 e!799155)))

(declare-fun c!130911 () Bool)

(declare-fun lt!622138 () (_ BitVec 64))

(assert (=> b!1412140 (= c!130911 (or (= lt!622138 (select (arr!46567 a!2901) j!112)) (= (bvadd lt!622138 lt!622138) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1412141 () Bool)

(assert (=> b!1412141 (= e!799155 (Intermediate!10900 false lt!621948 #b00000000000000000000000000000000))))

(declare-fun d!152009 () Bool)

(declare-fun e!799157 () Bool)

(assert (=> d!152009 e!799157))

(declare-fun c!130913 () Bool)

(declare-fun lt!622139 () SeekEntryResult!10900)

(assert (=> d!152009 (= c!130913 (and (is-Intermediate!10900 lt!622139) (undefined!11712 lt!622139)))))

(assert (=> d!152009 (= lt!622139 e!799156)))

(declare-fun c!130912 () Bool)

(assert (=> d!152009 (= c!130912 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152009 (= lt!622138 (select (arr!46567 a!2901) lt!621948))))

(assert (=> d!152009 (validMask!0 mask!2840)))

(assert (=> d!152009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621948 (select (arr!46567 a!2901) j!112) a!2901 mask!2840) lt!622139)))

(declare-fun b!1412142 () Bool)

(assert (=> b!1412142 (and (bvsge (index!45978 lt!622139) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622139) (size!47118 a!2901)))))

(declare-fun res!949268 () Bool)

(assert (=> b!1412142 (= res!949268 (= (select (arr!46567 a!2901) (index!45978 lt!622139)) (select (arr!46567 a!2901) j!112)))))

(declare-fun e!799154 () Bool)

(assert (=> b!1412142 (=> res!949268 e!799154)))

(declare-fun e!799153 () Bool)

(assert (=> b!1412142 (= e!799153 e!799154)))

(declare-fun b!1412143 () Bool)

(assert (=> b!1412143 (= e!799157 (bvsge (x!127570 lt!622139) #b01111111111111111111111111111110))))

(declare-fun b!1412144 () Bool)

(assert (=> b!1412144 (and (bvsge (index!45978 lt!622139) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622139) (size!47118 a!2901)))))

(assert (=> b!1412144 (= e!799154 (= (select (arr!46567 a!2901) (index!45978 lt!622139)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1412145 () Bool)

(assert (=> b!1412145 (= e!799157 e!799153)))

(declare-fun res!949267 () Bool)

(assert (=> b!1412145 (= res!949267 (and (is-Intermediate!10900 lt!622139) (not (undefined!11712 lt!622139)) (bvslt (x!127570 lt!622139) #b01111111111111111111111111111110) (bvsge (x!127570 lt!622139) #b00000000000000000000000000000000) (bvsge (x!127570 lt!622139) #b00000000000000000000000000000000)))))

(assert (=> b!1412145 (=> (not res!949267) (not e!799153))))

(declare-fun b!1412146 () Bool)

(assert (=> b!1412146 (and (bvsge (index!45978 lt!622139) #b00000000000000000000000000000000) (bvslt (index!45978 lt!622139) (size!47118 a!2901)))))

(declare-fun res!949269 () Bool)

(assert (=> b!1412146 (= res!949269 (= (select (arr!46567 a!2901) (index!45978 lt!622139)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1412146 (=> res!949269 e!799154)))

(assert (= (and d!152009 c!130912) b!1412139))

(assert (= (and d!152009 (not c!130912)) b!1412140))

(assert (= (and b!1412140 c!130911) b!1412141))

(assert (= (and b!1412140 (not c!130911)) b!1412138))

(assert (= (and d!152009 c!130913) b!1412143))

(assert (= (and d!152009 (not c!130913)) b!1412145))

(assert (= (and b!1412145 res!949267) b!1412142))

(assert (= (and b!1412142 (not res!949268)) b!1412146))

(assert (= (and b!1412146 (not res!949269)) b!1412144))

(declare-fun m!1302197 () Bool)

(assert (=> d!152009 m!1302197))

(assert (=> d!152009 m!1301877))

(declare-fun m!1302199 () Bool)

(assert (=> b!1412146 m!1302199))

(assert (=> b!1412144 m!1302199))

(declare-fun m!1302201 () Bool)

(assert (=> b!1412138 m!1302201))

(assert (=> b!1412138 m!1302201))

(assert (=> b!1412138 m!1301873))

(declare-fun m!1302203 () Bool)

(assert (=> b!1412138 m!1302203))

(assert (=> b!1412142 m!1302199))

(assert (=> b!1411791 d!152009))

(declare-fun d!152011 () Bool)

(declare-fun lt!622145 () (_ BitVec 32))

(declare-fun lt!622144 () (_ BitVec 32))

(assert (=> d!152011 (= lt!622145 (bvmul (bvxor lt!622144 (bvlshr lt!622144 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152011 (= lt!622144 ((_ extract 31 0) (bvand (bvxor (select (arr!46567 a!2901) j!112) (bvlshr (select (arr!46567 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152011 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!949261 (let ((h!34539 ((_ extract 31 0) (bvand (bvxor (select (arr!46567 a!2901) j!112) (bvlshr (select (arr!46567 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127582 (bvmul (bvxor h!34539 (bvlshr h!34539 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127582 (bvlshr x!127582 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!949261 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!949261 #b00000000000000000000000000000000))))))

(assert (=> d!152011 (= (toIndex!0 (select (arr!46567 a!2901) j!112) mask!2840) (bvand (bvxor lt!622145 (bvlshr lt!622145 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1411791 d!152011))

(declare-fun b!1412175 () Bool)

(declare-fun e!799178 () Bool)

(declare-fun contains!9827 (List!33266 (_ BitVec 64)) Bool)

(assert (=> b!1412175 (= e!799178 (contains!9827 Nil!33263 (select (arr!46567 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1412176 () Bool)

(declare-fun e!799176 () Bool)

(declare-fun e!799175 () Bool)

(assert (=> b!1412176 (= e!799176 e!799175)))

(declare-fun c!130925 () Bool)

(assert (=> b!1412176 (= c!130925 (validKeyInArray!0 (select (arr!46567 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1412177 () Bool)

(declare-fun call!67095 () Bool)

(assert (=> b!1412177 (= e!799175 call!67095)))

(declare-fun b!1412178 () Bool)

(assert (=> b!1412178 (= e!799175 call!67095)))

(declare-fun b!1412179 () Bool)

(declare-fun e!799177 () Bool)

(assert (=> b!1412179 (= e!799177 e!799176)))

(declare-fun res!949277 () Bool)

(assert (=> b!1412179 (=> (not res!949277) (not e!799176))))

(assert (=> b!1412179 (= res!949277 (not e!799178))))

(declare-fun res!949278 () Bool)

(assert (=> b!1412179 (=> (not res!949278) (not e!799178))))

(assert (=> b!1412179 (= res!949278 (validKeyInArray!0 (select (arr!46567 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152013 () Bool)

(declare-fun res!949276 () Bool)

(assert (=> d!152013 (=> res!949276 e!799177)))

(assert (=> d!152013 (= res!949276 (bvsge #b00000000000000000000000000000000 (size!47118 a!2901)))))

(assert (=> d!152013 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33263) e!799177)))

(declare-fun bm!67092 () Bool)

(assert (=> bm!67092 (= call!67095 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130925 (Cons!33262 (select (arr!46567 a!2901) #b00000000000000000000000000000000) Nil!33263) Nil!33263)))))

(assert (= (and d!152013 (not res!949276)) b!1412179))

(assert (= (and b!1412179 res!949278) b!1412175))

(assert (= (and b!1412179 res!949277) b!1412176))

(assert (= (and b!1412176 c!130925) b!1412178))

(assert (= (and b!1412176 (not c!130925)) b!1412177))

(assert (= (or b!1412178 b!1412177) bm!67092))

(assert (=> b!1412175 m!1302095))

(assert (=> b!1412175 m!1302095))

(declare-fun m!1302217 () Bool)

(assert (=> b!1412175 m!1302217))

(assert (=> b!1412176 m!1302095))

(assert (=> b!1412176 m!1302095))

(assert (=> b!1412176 m!1302105))

(assert (=> b!1412179 m!1302095))

(assert (=> b!1412179 m!1302095))

(assert (=> b!1412179 m!1302105))

(assert (=> bm!67092 m!1302095))

(declare-fun m!1302219 () Bool)

(assert (=> bm!67092 m!1302219))

(assert (=> b!1411796 d!152013))

(declare-fun d!152019 () Bool)

(assert (=> d!152019 (= (validKeyInArray!0 (select (arr!46567 a!2901) j!112)) (and (not (= (select (arr!46567 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46567 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1411790 d!152019))

(push 1)

