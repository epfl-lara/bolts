; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120168 () Bool)

(assert start!120168)

(declare-fun e!791815 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95615 0))(
  ( (array!95616 (arr!46157 (Array (_ BitVec 32) (_ BitVec 64))) (size!46708 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95615)

(declare-fun b!1398611 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10496 0))(
  ( (MissingZero!10496 (index!44354 (_ BitVec 32))) (Found!10496 (index!44355 (_ BitVec 32))) (Intermediate!10496 (undefined!11308 Bool) (index!44356 (_ BitVec 32)) (x!126001 (_ BitVec 32))) (Undefined!10496) (MissingVacant!10496 (index!44357 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95615 (_ BitVec 32)) SeekEntryResult!10496)

(assert (=> b!1398611 (= e!791815 (= (seekEntryOrOpen!0 (select (arr!46157 a!2901) j!112) a!2901 mask!2840) (Found!10496 j!112)))))

(declare-fun b!1398613 () Bool)

(declare-fun e!791817 () Bool)

(declare-fun e!791818 () Bool)

(assert (=> b!1398613 (= e!791817 e!791818)))

(declare-fun res!937639 () Bool)

(assert (=> b!1398613 (=> res!937639 e!791818)))

(declare-fun lt!615035 () SeekEntryResult!10496)

(declare-fun lt!615039 () SeekEntryResult!10496)

(get-info :version)

(assert (=> b!1398613 (= res!937639 (or (= lt!615035 lt!615039) (not ((_ is Intermediate!10496) lt!615039))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!615036 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95615 (_ BitVec 32)) SeekEntryResult!10496)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398613 (= lt!615039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615036 mask!2840) lt!615036 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)) mask!2840))))

(assert (=> b!1398613 (= lt!615036 (select (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398614 () Bool)

(declare-fun res!937635 () Bool)

(declare-fun e!791819 () Bool)

(assert (=> b!1398614 (=> (not res!937635) (not e!791819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95615 (_ BitVec 32)) Bool)

(assert (=> b!1398614 (= res!937635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398615 () Bool)

(declare-fun res!937634 () Bool)

(assert (=> b!1398615 (=> (not res!937634) (not e!791819))))

(assert (=> b!1398615 (= res!937634 (and (= (size!46708 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46708 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46708 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937638 () Bool)

(assert (=> start!120168 (=> (not res!937638) (not e!791819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120168 (= res!937638 (validMask!0 mask!2840))))

(assert (=> start!120168 e!791819))

(assert (=> start!120168 true))

(declare-fun array_inv!35102 (array!95615) Bool)

(assert (=> start!120168 (array_inv!35102 a!2901)))

(declare-fun b!1398612 () Bool)

(assert (=> b!1398612 (= e!791818 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt (index!44356 lt!615039) #b00000000000000000000000000000000) (bvsge (index!44356 lt!615039) (bvadd #b00000000000000000000000000000001 mask!2840)) (and (bvsle (x!126001 lt!615039) #b01111111111111111111111111111110) (bvsge (x!126001 lt!615039) #b00000000000000000000000000000000))))))

(assert (=> b!1398612 (and (not (undefined!11308 lt!615039)) (= (index!44356 lt!615039) i!1037) (bvslt (x!126001 lt!615039) (x!126001 lt!615035)) (= (select (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44356 lt!615039)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46946 0))(
  ( (Unit!46947) )
))
(declare-fun lt!615040 () Unit!46946)

(declare-fun lt!615038 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46946)

(assert (=> b!1398612 (= lt!615040 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615038 (x!126001 lt!615035) (index!44356 lt!615035) (x!126001 lt!615039) (index!44356 lt!615039) (undefined!11308 lt!615039) mask!2840))))

(declare-fun b!1398616 () Bool)

(assert (=> b!1398616 (= e!791819 (not e!791817))))

(declare-fun res!937641 () Bool)

(assert (=> b!1398616 (=> res!937641 e!791817)))

(assert (=> b!1398616 (= res!937641 (or (not ((_ is Intermediate!10496) lt!615035)) (undefined!11308 lt!615035)))))

(assert (=> b!1398616 e!791815))

(declare-fun res!937636 () Bool)

(assert (=> b!1398616 (=> (not res!937636) (not e!791815))))

(assert (=> b!1398616 (= res!937636 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615037 () Unit!46946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46946)

(assert (=> b!1398616 (= lt!615037 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398616 (= lt!615035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615038 (select (arr!46157 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398616 (= lt!615038 (toIndex!0 (select (arr!46157 a!2901) j!112) mask!2840))))

(declare-fun b!1398617 () Bool)

(declare-fun res!937640 () Bool)

(assert (=> b!1398617 (=> (not res!937640) (not e!791819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398617 (= res!937640 (validKeyInArray!0 (select (arr!46157 a!2901) j!112)))))

(declare-fun b!1398618 () Bool)

(declare-fun res!937633 () Bool)

(assert (=> b!1398618 (=> (not res!937633) (not e!791819))))

(assert (=> b!1398618 (= res!937633 (validKeyInArray!0 (select (arr!46157 a!2901) i!1037)))))

(declare-fun b!1398619 () Bool)

(declare-fun res!937637 () Bool)

(assert (=> b!1398619 (=> (not res!937637) (not e!791819))))

(declare-datatypes ((List!32856 0))(
  ( (Nil!32853) (Cons!32852 (h!34094 (_ BitVec 64)) (t!47557 List!32856)) )
))
(declare-fun arrayNoDuplicates!0 (array!95615 (_ BitVec 32) List!32856) Bool)

(assert (=> b!1398619 (= res!937637 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32853))))

(assert (= (and start!120168 res!937638) b!1398615))

(assert (= (and b!1398615 res!937634) b!1398618))

(assert (= (and b!1398618 res!937633) b!1398617))

(assert (= (and b!1398617 res!937640) b!1398614))

(assert (= (and b!1398614 res!937635) b!1398619))

(assert (= (and b!1398619 res!937637) b!1398616))

(assert (= (and b!1398616 res!937636) b!1398611))

(assert (= (and b!1398616 (not res!937641)) b!1398613))

(assert (= (and b!1398613 (not res!937639)) b!1398612))

(declare-fun m!1285903 () Bool)

(assert (=> b!1398614 m!1285903))

(declare-fun m!1285905 () Bool)

(assert (=> b!1398617 m!1285905))

(assert (=> b!1398617 m!1285905))

(declare-fun m!1285907 () Bool)

(assert (=> b!1398617 m!1285907))

(assert (=> b!1398611 m!1285905))

(assert (=> b!1398611 m!1285905))

(declare-fun m!1285909 () Bool)

(assert (=> b!1398611 m!1285909))

(assert (=> b!1398616 m!1285905))

(declare-fun m!1285911 () Bool)

(assert (=> b!1398616 m!1285911))

(assert (=> b!1398616 m!1285905))

(declare-fun m!1285913 () Bool)

(assert (=> b!1398616 m!1285913))

(assert (=> b!1398616 m!1285905))

(declare-fun m!1285915 () Bool)

(assert (=> b!1398616 m!1285915))

(declare-fun m!1285917 () Bool)

(assert (=> b!1398616 m!1285917))

(declare-fun m!1285919 () Bool)

(assert (=> b!1398618 m!1285919))

(assert (=> b!1398618 m!1285919))

(declare-fun m!1285921 () Bool)

(assert (=> b!1398618 m!1285921))

(declare-fun m!1285923 () Bool)

(assert (=> b!1398612 m!1285923))

(declare-fun m!1285925 () Bool)

(assert (=> b!1398612 m!1285925))

(declare-fun m!1285927 () Bool)

(assert (=> b!1398612 m!1285927))

(declare-fun m!1285929 () Bool)

(assert (=> b!1398619 m!1285929))

(declare-fun m!1285931 () Bool)

(assert (=> start!120168 m!1285931))

(declare-fun m!1285933 () Bool)

(assert (=> start!120168 m!1285933))

(declare-fun m!1285935 () Bool)

(assert (=> b!1398613 m!1285935))

(assert (=> b!1398613 m!1285923))

(assert (=> b!1398613 m!1285935))

(declare-fun m!1285937 () Bool)

(assert (=> b!1398613 m!1285937))

(declare-fun m!1285939 () Bool)

(assert (=> b!1398613 m!1285939))

(check-sat (not b!1398616) (not b!1398617) (not b!1398612) (not start!120168) (not b!1398613) (not b!1398618) (not b!1398619) (not b!1398614) (not b!1398611))
(check-sat)
(get-model)

(declare-fun b!1398655 () Bool)

(declare-fun e!791842 () Bool)

(declare-fun call!66867 () Bool)

(assert (=> b!1398655 (= e!791842 call!66867)))

(declare-fun d!150873 () Bool)

(declare-fun res!937674 () Bool)

(declare-fun e!791841 () Bool)

(assert (=> d!150873 (=> res!937674 e!791841)))

(assert (=> d!150873 (= res!937674 (bvsge j!112 (size!46708 a!2901)))))

(assert (=> d!150873 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!791841)))

(declare-fun b!1398656 () Bool)

(assert (=> b!1398656 (= e!791841 e!791842)))

(declare-fun c!129950 () Bool)

(assert (=> b!1398656 (= c!129950 (validKeyInArray!0 (select (arr!46157 a!2901) j!112)))))

(declare-fun bm!66864 () Bool)

(assert (=> bm!66864 (= call!66867 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1398657 () Bool)

(declare-fun e!791843 () Bool)

(assert (=> b!1398657 (= e!791842 e!791843)))

(declare-fun lt!615065 () (_ BitVec 64))

(assert (=> b!1398657 (= lt!615065 (select (arr!46157 a!2901) j!112))))

(declare-fun lt!615066 () Unit!46946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95615 (_ BitVec 64) (_ BitVec 32)) Unit!46946)

(assert (=> b!1398657 (= lt!615066 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615065 j!112))))

(declare-fun arrayContainsKey!0 (array!95615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1398657 (arrayContainsKey!0 a!2901 lt!615065 #b00000000000000000000000000000000)))

(declare-fun lt!615067 () Unit!46946)

(assert (=> b!1398657 (= lt!615067 lt!615066)))

(declare-fun res!937673 () Bool)

(assert (=> b!1398657 (= res!937673 (= (seekEntryOrOpen!0 (select (arr!46157 a!2901) j!112) a!2901 mask!2840) (Found!10496 j!112)))))

(assert (=> b!1398657 (=> (not res!937673) (not e!791843))))

(declare-fun b!1398658 () Bool)

(assert (=> b!1398658 (= e!791843 call!66867)))

(assert (= (and d!150873 (not res!937674)) b!1398656))

(assert (= (and b!1398656 c!129950) b!1398657))

(assert (= (and b!1398656 (not c!129950)) b!1398655))

(assert (= (and b!1398657 res!937673) b!1398658))

(assert (= (or b!1398658 b!1398655) bm!66864))

(assert (=> b!1398656 m!1285905))

(assert (=> b!1398656 m!1285905))

(assert (=> b!1398656 m!1285907))

(declare-fun m!1285979 () Bool)

(assert (=> bm!66864 m!1285979))

(assert (=> b!1398657 m!1285905))

(declare-fun m!1285981 () Bool)

(assert (=> b!1398657 m!1285981))

(declare-fun m!1285983 () Bool)

(assert (=> b!1398657 m!1285983))

(assert (=> b!1398657 m!1285905))

(assert (=> b!1398657 m!1285909))

(assert (=> b!1398616 d!150873))

(declare-fun d!150875 () Bool)

(assert (=> d!150875 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!615070 () Unit!46946)

(declare-fun choose!38 (array!95615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46946)

(assert (=> d!150875 (= lt!615070 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150875 (validMask!0 mask!2840)))

(assert (=> d!150875 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!615070)))

(declare-fun bs!40715 () Bool)

(assert (= bs!40715 d!150875))

(assert (=> bs!40715 m!1285917))

(declare-fun m!1285985 () Bool)

(assert (=> bs!40715 m!1285985))

(assert (=> bs!40715 m!1285931))

(assert (=> b!1398616 d!150875))

(declare-fun d!150877 () Bool)

(declare-fun e!791859 () Bool)

(assert (=> d!150877 e!791859))

(declare-fun c!129957 () Bool)

(declare-fun lt!615078 () SeekEntryResult!10496)

(assert (=> d!150877 (= c!129957 (and ((_ is Intermediate!10496) lt!615078) (undefined!11308 lt!615078)))))

(declare-fun e!791854 () SeekEntryResult!10496)

(assert (=> d!150877 (= lt!615078 e!791854)))

(declare-fun c!129958 () Bool)

(assert (=> d!150877 (= c!129958 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615079 () (_ BitVec 64))

(assert (=> d!150877 (= lt!615079 (select (arr!46157 a!2901) lt!615038))))

(assert (=> d!150877 (validMask!0 mask!2840)))

(assert (=> d!150877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615038 (select (arr!46157 a!2901) j!112) a!2901 mask!2840) lt!615078)))

(declare-fun b!1398677 () Bool)

(assert (=> b!1398677 (and (bvsge (index!44356 lt!615078) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615078) (size!46708 a!2901)))))

(declare-fun res!937682 () Bool)

(assert (=> b!1398677 (= res!937682 (= (select (arr!46157 a!2901) (index!44356 lt!615078)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!791860 () Bool)

(assert (=> b!1398677 (=> res!937682 e!791860)))

(declare-fun b!1398678 () Bool)

(declare-fun e!791858 () SeekEntryResult!10496)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398678 (= e!791858 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!615038 #b00000000000000000000000000000000 mask!2840) (select (arr!46157 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1398679 () Bool)

(assert (=> b!1398679 (and (bvsge (index!44356 lt!615078) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615078) (size!46708 a!2901)))))

(assert (=> b!1398679 (= e!791860 (= (select (arr!46157 a!2901) (index!44356 lt!615078)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1398680 () Bool)

(assert (=> b!1398680 (and (bvsge (index!44356 lt!615078) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615078) (size!46708 a!2901)))))

(declare-fun res!937681 () Bool)

(assert (=> b!1398680 (= res!937681 (= (select (arr!46157 a!2901) (index!44356 lt!615078)) (select (arr!46157 a!2901) j!112)))))

(assert (=> b!1398680 (=> res!937681 e!791860)))

(declare-fun e!791857 () Bool)

(assert (=> b!1398680 (= e!791857 e!791860)))

(declare-fun b!1398681 () Bool)

(assert (=> b!1398681 (= e!791854 (Intermediate!10496 true lt!615038 #b00000000000000000000000000000000))))

(declare-fun b!1398682 () Bool)

(assert (=> b!1398682 (= e!791859 (bvsge (x!126001 lt!615078) #b01111111111111111111111111111110))))

(declare-fun b!1398683 () Bool)

(assert (=> b!1398683 (= e!791858 (Intermediate!10496 false lt!615038 #b00000000000000000000000000000000))))

(declare-fun b!1398684 () Bool)

(assert (=> b!1398684 (= e!791859 e!791857)))

(declare-fun res!937685 () Bool)

(assert (=> b!1398684 (= res!937685 (and ((_ is Intermediate!10496) lt!615078) (not (undefined!11308 lt!615078)) (bvslt (x!126001 lt!615078) #b01111111111111111111111111111110) (bvsge (x!126001 lt!615078) #b00000000000000000000000000000000) (bvsge (x!126001 lt!615078) #b00000000000000000000000000000000)))))

(assert (=> b!1398684 (=> (not res!937685) (not e!791857))))

(declare-fun b!1398685 () Bool)

(assert (=> b!1398685 (= e!791854 e!791858)))

(declare-fun c!129959 () Bool)

(assert (=> b!1398685 (= c!129959 (or (= lt!615079 (select (arr!46157 a!2901) j!112)) (= (bvadd lt!615079 lt!615079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150877 c!129958) b!1398681))

(assert (= (and d!150877 (not c!129958)) b!1398685))

(assert (= (and b!1398685 c!129959) b!1398683))

(assert (= (and b!1398685 (not c!129959)) b!1398678))

(assert (= (and d!150877 c!129957) b!1398682))

(assert (= (and d!150877 (not c!129957)) b!1398684))

(assert (= (and b!1398684 res!937685) b!1398680))

(assert (= (and b!1398680 (not res!937681)) b!1398677))

(assert (= (and b!1398677 (not res!937682)) b!1398679))

(declare-fun m!1285989 () Bool)

(assert (=> b!1398680 m!1285989))

(declare-fun m!1285991 () Bool)

(assert (=> b!1398678 m!1285991))

(assert (=> b!1398678 m!1285991))

(assert (=> b!1398678 m!1285905))

(declare-fun m!1285993 () Bool)

(assert (=> b!1398678 m!1285993))

(declare-fun m!1285995 () Bool)

(assert (=> d!150877 m!1285995))

(assert (=> d!150877 m!1285931))

(assert (=> b!1398679 m!1285989))

(assert (=> b!1398677 m!1285989))

(assert (=> b!1398616 d!150877))

(declare-fun d!150891 () Bool)

(declare-fun lt!615098 () (_ BitVec 32))

(declare-fun lt!615097 () (_ BitVec 32))

(assert (=> d!150891 (= lt!615098 (bvmul (bvxor lt!615097 (bvlshr lt!615097 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150891 (= lt!615097 ((_ extract 31 0) (bvand (bvxor (select (arr!46157 a!2901) j!112) (bvlshr (select (arr!46157 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150891 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!937688 (let ((h!34096 ((_ extract 31 0) (bvand (bvxor (select (arr!46157 a!2901) j!112) (bvlshr (select (arr!46157 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126005 (bvmul (bvxor h!34096 (bvlshr h!34096 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126005 (bvlshr x!126005 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!937688 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!937688 #b00000000000000000000000000000000))))))

(assert (=> d!150891 (= (toIndex!0 (select (arr!46157 a!2901) j!112) mask!2840) (bvand (bvxor lt!615098 (bvlshr lt!615098 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1398616 d!150891))

(declare-fun d!150899 () Bool)

(declare-fun lt!615125 () SeekEntryResult!10496)

(assert (=> d!150899 (and (or ((_ is Undefined!10496) lt!615125) (not ((_ is Found!10496) lt!615125)) (and (bvsge (index!44355 lt!615125) #b00000000000000000000000000000000) (bvslt (index!44355 lt!615125) (size!46708 a!2901)))) (or ((_ is Undefined!10496) lt!615125) ((_ is Found!10496) lt!615125) (not ((_ is MissingZero!10496) lt!615125)) (and (bvsge (index!44354 lt!615125) #b00000000000000000000000000000000) (bvslt (index!44354 lt!615125) (size!46708 a!2901)))) (or ((_ is Undefined!10496) lt!615125) ((_ is Found!10496) lt!615125) ((_ is MissingZero!10496) lt!615125) (not ((_ is MissingVacant!10496) lt!615125)) (and (bvsge (index!44357 lt!615125) #b00000000000000000000000000000000) (bvslt (index!44357 lt!615125) (size!46708 a!2901)))) (or ((_ is Undefined!10496) lt!615125) (ite ((_ is Found!10496) lt!615125) (= (select (arr!46157 a!2901) (index!44355 lt!615125)) (select (arr!46157 a!2901) j!112)) (ite ((_ is MissingZero!10496) lt!615125) (= (select (arr!46157 a!2901) (index!44354 lt!615125)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10496) lt!615125) (= (select (arr!46157 a!2901) (index!44357 lt!615125)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!791900 () SeekEntryResult!10496)

(assert (=> d!150899 (= lt!615125 e!791900)))

(declare-fun c!129989 () Bool)

(declare-fun lt!615126 () SeekEntryResult!10496)

(assert (=> d!150899 (= c!129989 (and ((_ is Intermediate!10496) lt!615126) (undefined!11308 lt!615126)))))

(assert (=> d!150899 (= lt!615126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46157 a!2901) j!112) mask!2840) (select (arr!46157 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150899 (validMask!0 mask!2840)))

(assert (=> d!150899 (= (seekEntryOrOpen!0 (select (arr!46157 a!2901) j!112) a!2901 mask!2840) lt!615125)))

(declare-fun b!1398755 () Bool)

(declare-fun e!791899 () SeekEntryResult!10496)

(assert (=> b!1398755 (= e!791899 (MissingZero!10496 (index!44356 lt!615126)))))

(declare-fun b!1398756 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95615 (_ BitVec 32)) SeekEntryResult!10496)

(assert (=> b!1398756 (= e!791899 (seekKeyOrZeroReturnVacant!0 (x!126001 lt!615126) (index!44356 lt!615126) (index!44356 lt!615126) (select (arr!46157 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1398757 () Bool)

(assert (=> b!1398757 (= e!791900 Undefined!10496)))

(declare-fun b!1398758 () Bool)

(declare-fun e!791898 () SeekEntryResult!10496)

(assert (=> b!1398758 (= e!791900 e!791898)))

(declare-fun lt!615127 () (_ BitVec 64))

(assert (=> b!1398758 (= lt!615127 (select (arr!46157 a!2901) (index!44356 lt!615126)))))

(declare-fun c!129988 () Bool)

(assert (=> b!1398758 (= c!129988 (= lt!615127 (select (arr!46157 a!2901) j!112)))))

(declare-fun b!1398759 () Bool)

(assert (=> b!1398759 (= e!791898 (Found!10496 (index!44356 lt!615126)))))

(declare-fun b!1398760 () Bool)

(declare-fun c!129987 () Bool)

(assert (=> b!1398760 (= c!129987 (= lt!615127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1398760 (= e!791898 e!791899)))

(assert (= (and d!150899 c!129989) b!1398757))

(assert (= (and d!150899 (not c!129989)) b!1398758))

(assert (= (and b!1398758 c!129988) b!1398759))

(assert (= (and b!1398758 (not c!129988)) b!1398760))

(assert (= (and b!1398760 c!129987) b!1398755))

(assert (= (and b!1398760 (not c!129987)) b!1398756))

(declare-fun m!1286031 () Bool)

(assert (=> d!150899 m!1286031))

(declare-fun m!1286033 () Bool)

(assert (=> d!150899 m!1286033))

(assert (=> d!150899 m!1285913))

(assert (=> d!150899 m!1285905))

(declare-fun m!1286035 () Bool)

(assert (=> d!150899 m!1286035))

(assert (=> d!150899 m!1285931))

(declare-fun m!1286037 () Bool)

(assert (=> d!150899 m!1286037))

(assert (=> d!150899 m!1285905))

(assert (=> d!150899 m!1285913))

(assert (=> b!1398756 m!1285905))

(declare-fun m!1286039 () Bool)

(assert (=> b!1398756 m!1286039))

(declare-fun m!1286041 () Bool)

(assert (=> b!1398758 m!1286041))

(assert (=> b!1398611 d!150899))

(declare-fun d!150915 () Bool)

(assert (=> d!150915 (= (validKeyInArray!0 (select (arr!46157 a!2901) j!112)) (and (not (= (select (arr!46157 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46157 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398617 d!150915))

(declare-fun d!150917 () Bool)

(assert (=> d!150917 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120168 d!150917))

(declare-fun d!150925 () Bool)

(assert (=> d!150925 (= (array_inv!35102 a!2901) (bvsge (size!46708 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120168 d!150925))

(declare-fun d!150929 () Bool)

(assert (=> d!150929 (and (not (undefined!11308 lt!615039)) (= (index!44356 lt!615039) i!1037) (bvslt (x!126001 lt!615039) (x!126001 lt!615035)))))

(declare-fun lt!615155 () Unit!46946)

(declare-fun choose!62 (array!95615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46946)

(assert (=> d!150929 (= lt!615155 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615038 (x!126001 lt!615035) (index!44356 lt!615035) (x!126001 lt!615039) (index!44356 lt!615039) (undefined!11308 lt!615039) mask!2840))))

(assert (=> d!150929 (validMask!0 mask!2840)))

(assert (=> d!150929 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615038 (x!126001 lt!615035) (index!44356 lt!615035) (x!126001 lt!615039) (index!44356 lt!615039) (undefined!11308 lt!615039) mask!2840) lt!615155)))

(declare-fun bs!40719 () Bool)

(assert (= bs!40719 d!150929))

(declare-fun m!1286083 () Bool)

(assert (=> bs!40719 m!1286083))

(assert (=> bs!40719 m!1285931))

(assert (=> b!1398612 d!150929))

(declare-fun d!150935 () Bool)

(assert (=> d!150935 (= (validKeyInArray!0 (select (arr!46157 a!2901) i!1037)) (and (not (= (select (arr!46157 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46157 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398618 d!150935))

(declare-fun d!150937 () Bool)

(declare-fun e!791948 () Bool)

(assert (=> d!150937 e!791948))

(declare-fun c!130009 () Bool)

(declare-fun lt!615156 () SeekEntryResult!10496)

(assert (=> d!150937 (= c!130009 (and ((_ is Intermediate!10496) lt!615156) (undefined!11308 lt!615156)))))

(declare-fun e!791945 () SeekEntryResult!10496)

(assert (=> d!150937 (= lt!615156 e!791945)))

(declare-fun c!130010 () Bool)

(assert (=> d!150937 (= c!130010 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615157 () (_ BitVec 64))

(assert (=> d!150937 (= lt!615157 (select (arr!46157 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901))) (toIndex!0 lt!615036 mask!2840)))))

(assert (=> d!150937 (validMask!0 mask!2840)))

(assert (=> d!150937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615036 mask!2840) lt!615036 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)) mask!2840) lt!615156)))

(declare-fun b!1398828 () Bool)

(assert (=> b!1398828 (and (bvsge (index!44356 lt!615156) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615156) (size!46708 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)))))))

(declare-fun res!937732 () Bool)

(assert (=> b!1398828 (= res!937732 (= (select (arr!46157 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901))) (index!44356 lt!615156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!791949 () Bool)

(assert (=> b!1398828 (=> res!937732 e!791949)))

(declare-fun e!791947 () SeekEntryResult!10496)

(declare-fun b!1398829 () Bool)

(assert (=> b!1398829 (= e!791947 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615036 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615036 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)) mask!2840))))

(declare-fun b!1398830 () Bool)

(assert (=> b!1398830 (and (bvsge (index!44356 lt!615156) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615156) (size!46708 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)))))))

(assert (=> b!1398830 (= e!791949 (= (select (arr!46157 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901))) (index!44356 lt!615156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1398831 () Bool)

(assert (=> b!1398831 (and (bvsge (index!44356 lt!615156) #b00000000000000000000000000000000) (bvslt (index!44356 lt!615156) (size!46708 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901)))))))

(declare-fun res!937731 () Bool)

(assert (=> b!1398831 (= res!937731 (= (select (arr!46157 (array!95616 (store (arr!46157 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46708 a!2901))) (index!44356 lt!615156)) lt!615036))))

(assert (=> b!1398831 (=> res!937731 e!791949)))

(declare-fun e!791946 () Bool)

(assert (=> b!1398831 (= e!791946 e!791949)))

(declare-fun b!1398832 () Bool)

(assert (=> b!1398832 (= e!791945 (Intermediate!10496 true (toIndex!0 lt!615036 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1398833 () Bool)

(assert (=> b!1398833 (= e!791948 (bvsge (x!126001 lt!615156) #b01111111111111111111111111111110))))

(declare-fun b!1398834 () Bool)

(assert (=> b!1398834 (= e!791947 (Intermediate!10496 false (toIndex!0 lt!615036 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1398835 () Bool)

(assert (=> b!1398835 (= e!791948 e!791946)))

(declare-fun res!937733 () Bool)

(assert (=> b!1398835 (= res!937733 (and ((_ is Intermediate!10496) lt!615156) (not (undefined!11308 lt!615156)) (bvslt (x!126001 lt!615156) #b01111111111111111111111111111110) (bvsge (x!126001 lt!615156) #b00000000000000000000000000000000) (bvsge (x!126001 lt!615156) #b00000000000000000000000000000000)))))

(assert (=> b!1398835 (=> (not res!937733) (not e!791946))))

(declare-fun b!1398836 () Bool)

(assert (=> b!1398836 (= e!791945 e!791947)))

(declare-fun c!130011 () Bool)

(assert (=> b!1398836 (= c!130011 (or (= lt!615157 lt!615036) (= (bvadd lt!615157 lt!615157) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150937 c!130010) b!1398832))

(assert (= (and d!150937 (not c!130010)) b!1398836))

(assert (= (and b!1398836 c!130011) b!1398834))

(assert (= (and b!1398836 (not c!130011)) b!1398829))

(assert (= (and d!150937 c!130009) b!1398833))

(assert (= (and d!150937 (not c!130009)) b!1398835))

(assert (= (and b!1398835 res!937733) b!1398831))

(assert (= (and b!1398831 (not res!937731)) b!1398828))

(assert (= (and b!1398828 (not res!937732)) b!1398830))

(declare-fun m!1286085 () Bool)

(assert (=> b!1398831 m!1286085))

(assert (=> b!1398829 m!1285935))

(declare-fun m!1286087 () Bool)

(assert (=> b!1398829 m!1286087))

(assert (=> b!1398829 m!1286087))

(declare-fun m!1286089 () Bool)

(assert (=> b!1398829 m!1286089))

(assert (=> d!150937 m!1285935))

(declare-fun m!1286091 () Bool)

(assert (=> d!150937 m!1286091))

(assert (=> d!150937 m!1285931))

(assert (=> b!1398830 m!1286085))

(assert (=> b!1398828 m!1286085))

(assert (=> b!1398613 d!150937))

(declare-fun d!150939 () Bool)

(declare-fun lt!615159 () (_ BitVec 32))

(declare-fun lt!615158 () (_ BitVec 32))

(assert (=> d!150939 (= lt!615159 (bvmul (bvxor lt!615158 (bvlshr lt!615158 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150939 (= lt!615158 ((_ extract 31 0) (bvand (bvxor lt!615036 (bvlshr lt!615036 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150939 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!937688 (let ((h!34096 ((_ extract 31 0) (bvand (bvxor lt!615036 (bvlshr lt!615036 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126005 (bvmul (bvxor h!34096 (bvlshr h!34096 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126005 (bvlshr x!126005 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!937688 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!937688 #b00000000000000000000000000000000))))))

(assert (=> d!150939 (= (toIndex!0 lt!615036 mask!2840) (bvand (bvxor lt!615159 (bvlshr lt!615159 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1398613 d!150939))

(declare-fun bm!66879 () Bool)

(declare-fun call!66882 () Bool)

(declare-fun c!130016 () Bool)

(assert (=> bm!66879 (= call!66882 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130016 (Cons!32852 (select (arr!46157 a!2901) #b00000000000000000000000000000000) Nil!32853) Nil!32853)))))

(declare-fun b!1398857 () Bool)

(declare-fun e!791967 () Bool)

(assert (=> b!1398857 (= e!791967 call!66882)))

(declare-fun b!1398858 () Bool)

(assert (=> b!1398858 (= e!791967 call!66882)))

(declare-fun b!1398859 () Bool)

(declare-fun e!791968 () Bool)

(declare-fun e!791966 () Bool)

(assert (=> b!1398859 (= e!791968 e!791966)))

(declare-fun res!937747 () Bool)

(assert (=> b!1398859 (=> (not res!937747) (not e!791966))))

(declare-fun e!791969 () Bool)

(assert (=> b!1398859 (= res!937747 (not e!791969))))

(declare-fun res!937748 () Bool)

(assert (=> b!1398859 (=> (not res!937748) (not e!791969))))

(assert (=> b!1398859 (= res!937748 (validKeyInArray!0 (select (arr!46157 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398860 () Bool)

(assert (=> b!1398860 (= e!791966 e!791967)))

(assert (=> b!1398860 (= c!130016 (validKeyInArray!0 (select (arr!46157 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150941 () Bool)

(declare-fun res!937746 () Bool)

(assert (=> d!150941 (=> res!937746 e!791968)))

(assert (=> d!150941 (= res!937746 (bvsge #b00000000000000000000000000000000 (size!46708 a!2901)))))

(assert (=> d!150941 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32853) e!791968)))

(declare-fun b!1398861 () Bool)

(declare-fun contains!9797 (List!32856 (_ BitVec 64)) Bool)

(assert (=> b!1398861 (= e!791969 (contains!9797 Nil!32853 (select (arr!46157 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150941 (not res!937746)) b!1398859))

(assert (= (and b!1398859 res!937748) b!1398861))

(assert (= (and b!1398859 res!937747) b!1398860))

(assert (= (and b!1398860 c!130016) b!1398857))

(assert (= (and b!1398860 (not c!130016)) b!1398858))

(assert (= (or b!1398857 b!1398858) bm!66879))

(declare-fun m!1286093 () Bool)

(assert (=> bm!66879 m!1286093))

(declare-fun m!1286095 () Bool)

(assert (=> bm!66879 m!1286095))

(assert (=> b!1398859 m!1286093))

(assert (=> b!1398859 m!1286093))

(declare-fun m!1286097 () Bool)

(assert (=> b!1398859 m!1286097))

(assert (=> b!1398860 m!1286093))

(assert (=> b!1398860 m!1286093))

(assert (=> b!1398860 m!1286097))

(assert (=> b!1398861 m!1286093))

(assert (=> b!1398861 m!1286093))

(declare-fun m!1286099 () Bool)

(assert (=> b!1398861 m!1286099))

(assert (=> b!1398619 d!150941))

(declare-fun b!1398862 () Bool)

(declare-fun e!791971 () Bool)

(declare-fun call!66883 () Bool)

(assert (=> b!1398862 (= e!791971 call!66883)))

(declare-fun d!150945 () Bool)

(declare-fun res!937750 () Bool)

(declare-fun e!791970 () Bool)

(assert (=> d!150945 (=> res!937750 e!791970)))

(assert (=> d!150945 (= res!937750 (bvsge #b00000000000000000000000000000000 (size!46708 a!2901)))))

(assert (=> d!150945 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!791970)))

(declare-fun b!1398863 () Bool)

(assert (=> b!1398863 (= e!791970 e!791971)))

(declare-fun c!130017 () Bool)

(assert (=> b!1398863 (= c!130017 (validKeyInArray!0 (select (arr!46157 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66880 () Bool)

(assert (=> bm!66880 (= call!66883 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1398864 () Bool)

(declare-fun e!791972 () Bool)

(assert (=> b!1398864 (= e!791971 e!791972)))

(declare-fun lt!615166 () (_ BitVec 64))

(assert (=> b!1398864 (= lt!615166 (select (arr!46157 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615167 () Unit!46946)

(assert (=> b!1398864 (= lt!615167 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615166 #b00000000000000000000000000000000))))

(assert (=> b!1398864 (arrayContainsKey!0 a!2901 lt!615166 #b00000000000000000000000000000000)))

(declare-fun lt!615168 () Unit!46946)

(assert (=> b!1398864 (= lt!615168 lt!615167)))

(declare-fun res!937749 () Bool)

(assert (=> b!1398864 (= res!937749 (= (seekEntryOrOpen!0 (select (arr!46157 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10496 #b00000000000000000000000000000000)))))

(assert (=> b!1398864 (=> (not res!937749) (not e!791972))))

(declare-fun b!1398865 () Bool)

(assert (=> b!1398865 (= e!791972 call!66883)))

(assert (= (and d!150945 (not res!937750)) b!1398863))

(assert (= (and b!1398863 c!130017) b!1398864))

(assert (= (and b!1398863 (not c!130017)) b!1398862))

(assert (= (and b!1398864 res!937749) b!1398865))

(assert (= (or b!1398865 b!1398862) bm!66880))

(assert (=> b!1398863 m!1286093))

(assert (=> b!1398863 m!1286093))

(assert (=> b!1398863 m!1286097))

(declare-fun m!1286101 () Bool)

(assert (=> bm!66880 m!1286101))

(assert (=> b!1398864 m!1286093))

(declare-fun m!1286103 () Bool)

(assert (=> b!1398864 m!1286103))

(declare-fun m!1286105 () Bool)

(assert (=> b!1398864 m!1286105))

(assert (=> b!1398864 m!1286093))

(declare-fun m!1286107 () Bool)

(assert (=> b!1398864 m!1286107))

(assert (=> b!1398614 d!150945))

(check-sat (not b!1398863) (not b!1398829) (not d!150877) (not b!1398859) (not b!1398656) (not bm!66880) (not d!150899) (not d!150875) (not b!1398657) (not bm!66879) (not b!1398756) (not b!1398678) (not bm!66864) (not b!1398860) (not b!1398864) (not d!150929) (not d!150937) (not b!1398861))
(check-sat)
