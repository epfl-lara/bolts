; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121340 () Bool)

(assert start!121340)

(declare-fun b!1409967 () Bool)

(declare-fun res!947635 () Bool)

(declare-fun e!797915 () Bool)

(assert (=> b!1409967 (=> (not res!947635) (not e!797915))))

(declare-datatypes ((array!96361 0))(
  ( (array!96362 (arr!46518 (Array (_ BitVec 32) (_ BitVec 64))) (size!47069 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96361)

(declare-datatypes ((List!33217 0))(
  ( (Nil!33214) (Cons!33213 (h!34479 (_ BitVec 64)) (t!47918 List!33217)) )
))
(declare-fun arrayNoDuplicates!0 (array!96361 (_ BitVec 32) List!33217) Bool)

(assert (=> b!1409967 (= res!947635 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33214))))

(declare-fun res!947640 () Bool)

(assert (=> start!121340 (=> (not res!947640) (not e!797915))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121340 (= res!947640 (validMask!0 mask!2840))))

(assert (=> start!121340 e!797915))

(assert (=> start!121340 true))

(declare-fun array_inv!35463 (array!96361) Bool)

(assert (=> start!121340 (array_inv!35463 a!2901)))

(declare-fun b!1409968 () Bool)

(declare-fun e!797918 () Bool)

(assert (=> b!1409968 (= e!797915 (not e!797918))))

(declare-fun res!947633 () Bool)

(assert (=> b!1409968 (=> res!947633 e!797918)))

(declare-datatypes ((SeekEntryResult!10851 0))(
  ( (MissingZero!10851 (index!45780 (_ BitVec 32))) (Found!10851 (index!45781 (_ BitVec 32))) (Intermediate!10851 (undefined!11663 Bool) (index!45782 (_ BitVec 32)) (x!127373 (_ BitVec 32))) (Undefined!10851) (MissingVacant!10851 (index!45783 (_ BitVec 32))) )
))
(declare-fun lt!620925 () SeekEntryResult!10851)

(assert (=> b!1409968 (= res!947633 (or (not (is-Intermediate!10851 lt!620925)) (undefined!11663 lt!620925)))))

(declare-fun e!797917 () Bool)

(assert (=> b!1409968 e!797917))

(declare-fun res!947636 () Bool)

(assert (=> b!1409968 (=> (not res!947636) (not e!797917))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96361 (_ BitVec 32)) Bool)

(assert (=> b!1409968 (= res!947636 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47626 0))(
  ( (Unit!47627) )
))
(declare-fun lt!620924 () Unit!47626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47626)

(assert (=> b!1409968 (= lt!620924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620926 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96361 (_ BitVec 32)) SeekEntryResult!10851)

(assert (=> b!1409968 (= lt!620925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620926 (select (arr!46518 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409968 (= lt!620926 (toIndex!0 (select (arr!46518 a!2901) j!112) mask!2840))))

(declare-fun b!1409969 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96361 (_ BitVec 32)) SeekEntryResult!10851)

(assert (=> b!1409969 (= e!797917 (= (seekEntryOrOpen!0 (select (arr!46518 a!2901) j!112) a!2901 mask!2840) (Found!10851 j!112)))))

(declare-fun b!1409970 () Bool)

(declare-fun res!947638 () Bool)

(assert (=> b!1409970 (=> (not res!947638) (not e!797915))))

(assert (=> b!1409970 (= res!947638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409971 () Bool)

(declare-fun res!947639 () Bool)

(assert (=> b!1409971 (=> (not res!947639) (not e!797915))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409971 (= res!947639 (and (= (size!47069 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47069 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47069 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409972 () Bool)

(declare-fun res!947637 () Bool)

(assert (=> b!1409972 (=> (not res!947637) (not e!797915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409972 (= res!947637 (validKeyInArray!0 (select (arr!46518 a!2901) j!112)))))

(declare-fun b!1409973 () Bool)

(declare-fun res!947634 () Bool)

(assert (=> b!1409973 (=> (not res!947634) (not e!797915))))

(assert (=> b!1409973 (= res!947634 (validKeyInArray!0 (select (arr!46518 a!2901) i!1037)))))

(declare-fun b!1409974 () Bool)

(declare-fun lt!620923 () SeekEntryResult!10851)

(assert (=> b!1409974 (= e!797918 (or (= lt!620925 lt!620923) (not (is-Intermediate!10851 lt!620923)) (bvslt (x!127373 lt!620925) #b00000000000000000000000000000000) (bvsgt (x!127373 lt!620925) #b01111111111111111111111111111110) (and (bvsge lt!620926 #b00000000000000000000000000000000) (bvslt lt!620926 (size!47069 a!2901)))))))

(assert (=> b!1409974 (= lt!620923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)) mask!2840))))

(assert (= (and start!121340 res!947640) b!1409971))

(assert (= (and b!1409971 res!947639) b!1409973))

(assert (= (and b!1409973 res!947634) b!1409972))

(assert (= (and b!1409972 res!947637) b!1409970))

(assert (= (and b!1409970 res!947638) b!1409967))

(assert (= (and b!1409967 res!947635) b!1409968))

(assert (= (and b!1409968 res!947636) b!1409969))

(assert (= (and b!1409968 (not res!947633)) b!1409974))

(declare-fun m!1299787 () Bool)

(assert (=> b!1409968 m!1299787))

(declare-fun m!1299789 () Bool)

(assert (=> b!1409968 m!1299789))

(assert (=> b!1409968 m!1299787))

(declare-fun m!1299791 () Bool)

(assert (=> b!1409968 m!1299791))

(assert (=> b!1409968 m!1299787))

(declare-fun m!1299793 () Bool)

(assert (=> b!1409968 m!1299793))

(declare-fun m!1299795 () Bool)

(assert (=> b!1409968 m!1299795))

(assert (=> b!1409969 m!1299787))

(assert (=> b!1409969 m!1299787))

(declare-fun m!1299797 () Bool)

(assert (=> b!1409969 m!1299797))

(declare-fun m!1299799 () Bool)

(assert (=> b!1409970 m!1299799))

(declare-fun m!1299801 () Bool)

(assert (=> b!1409974 m!1299801))

(declare-fun m!1299803 () Bool)

(assert (=> b!1409974 m!1299803))

(assert (=> b!1409974 m!1299803))

(declare-fun m!1299805 () Bool)

(assert (=> b!1409974 m!1299805))

(assert (=> b!1409974 m!1299805))

(assert (=> b!1409974 m!1299803))

(declare-fun m!1299807 () Bool)

(assert (=> b!1409974 m!1299807))

(declare-fun m!1299809 () Bool)

(assert (=> start!121340 m!1299809))

(declare-fun m!1299811 () Bool)

(assert (=> start!121340 m!1299811))

(declare-fun m!1299813 () Bool)

(assert (=> b!1409973 m!1299813))

(assert (=> b!1409973 m!1299813))

(declare-fun m!1299815 () Bool)

(assert (=> b!1409973 m!1299815))

(declare-fun m!1299817 () Bool)

(assert (=> b!1409967 m!1299817))

(assert (=> b!1409972 m!1299787))

(assert (=> b!1409972 m!1299787))

(declare-fun m!1299819 () Bool)

(assert (=> b!1409972 m!1299819))

(push 1)

(assert (not b!1409969))

(assert (not b!1409970))

(assert (not b!1409968))

(assert (not b!1409974))

(assert (not b!1409967))

(assert (not start!121340))

(assert (not b!1409973))

(assert (not b!1409972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1410013 () Bool)

(declare-fun e!797945 () Bool)

(declare-fun e!797946 () Bool)

(assert (=> b!1410013 (= e!797945 e!797946)))

(declare-fun lt!620946 () (_ BitVec 64))

(assert (=> b!1410013 (= lt!620946 (select (arr!46518 a!2901) j!112))))

(declare-fun lt!620947 () Unit!47626)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96361 (_ BitVec 64) (_ BitVec 32)) Unit!47626)

(assert (=> b!1410013 (= lt!620947 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620946 j!112))))

(declare-fun arrayContainsKey!0 (array!96361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1410013 (arrayContainsKey!0 a!2901 lt!620946 #b00000000000000000000000000000000)))

(declare-fun lt!620948 () Unit!47626)

(assert (=> b!1410013 (= lt!620948 lt!620947)))

(declare-fun res!947658 () Bool)

(assert (=> b!1410013 (= res!947658 (= (seekEntryOrOpen!0 (select (arr!46518 a!2901) j!112) a!2901 mask!2840) (Found!10851 j!112)))))

(assert (=> b!1410013 (=> (not res!947658) (not e!797946))))

(declare-fun b!1410014 () Bool)

(declare-fun call!67038 () Bool)

(assert (=> b!1410014 (= e!797946 call!67038)))

(declare-fun d!151741 () Bool)

(declare-fun res!947657 () Bool)

(declare-fun e!797944 () Bool)

(assert (=> d!151741 (=> res!947657 e!797944)))

(assert (=> d!151741 (= res!947657 (bvsge j!112 (size!47069 a!2901)))))

(assert (=> d!151741 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!797944)))

(declare-fun b!1410015 () Bool)

(assert (=> b!1410015 (= e!797945 call!67038)))

(declare-fun b!1410016 () Bool)

(assert (=> b!1410016 (= e!797944 e!797945)))

(declare-fun c!130649 () Bool)

(assert (=> b!1410016 (= c!130649 (validKeyInArray!0 (select (arr!46518 a!2901) j!112)))))

(declare-fun bm!67035 () Bool)

(assert (=> bm!67035 (= call!67038 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151741 (not res!947657)) b!1410016))

(assert (= (and b!1410016 c!130649) b!1410013))

(assert (= (and b!1410016 (not c!130649)) b!1410015))

(assert (= (and b!1410013 res!947658) b!1410014))

(assert (= (or b!1410014 b!1410015) bm!67035))

(assert (=> b!1410013 m!1299787))

(declare-fun m!1299833 () Bool)

(assert (=> b!1410013 m!1299833))

(declare-fun m!1299835 () Bool)

(assert (=> b!1410013 m!1299835))

(assert (=> b!1410013 m!1299787))

(assert (=> b!1410013 m!1299797))

(assert (=> b!1410016 m!1299787))

(assert (=> b!1410016 m!1299787))

(assert (=> b!1410016 m!1299819))

(declare-fun m!1299837 () Bool)

(assert (=> bm!67035 m!1299837))

(assert (=> b!1409968 d!151741))

(declare-fun d!151745 () Bool)

(assert (=> d!151745 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620953 () Unit!47626)

(declare-fun choose!38 (array!96361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47626)

(assert (=> d!151745 (= lt!620953 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151745 (validMask!0 mask!2840)))

(assert (=> d!151745 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!620953)))

(declare-fun bs!41105 () Bool)

(assert (= bs!41105 d!151745))

(assert (=> bs!41105 m!1299795))

(declare-fun m!1299847 () Bool)

(assert (=> bs!41105 m!1299847))

(assert (=> bs!41105 m!1299809))

(assert (=> b!1409968 d!151745))

(declare-fun b!1410083 () Bool)

(declare-fun e!797984 () SeekEntryResult!10851)

(assert (=> b!1410083 (= e!797984 (Intermediate!10851 true lt!620926 #b00000000000000000000000000000000))))

(declare-fun b!1410084 () Bool)

(declare-fun lt!620982 () SeekEntryResult!10851)

(assert (=> b!1410084 (and (bvsge (index!45782 lt!620982) #b00000000000000000000000000000000) (bvslt (index!45782 lt!620982) (size!47069 a!2901)))))

(declare-fun res!947681 () Bool)

(assert (=> b!1410084 (= res!947681 (= (select (arr!46518 a!2901) (index!45782 lt!620982)) (select (arr!46518 a!2901) j!112)))))

(declare-fun e!797987 () Bool)

(assert (=> b!1410084 (=> res!947681 e!797987)))

(declare-fun e!797986 () Bool)

(assert (=> b!1410084 (= e!797986 e!797987)))

(declare-fun e!797985 () SeekEntryResult!10851)

(declare-fun b!1410085 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410085 (= e!797985 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!620926 #b00000000000000000000000000000000 mask!2840) (select (arr!46518 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410086 () Bool)

(assert (=> b!1410086 (= e!797984 e!797985)))

(declare-fun c!130675 () Bool)

(declare-fun lt!620983 () (_ BitVec 64))

(assert (=> b!1410086 (= c!130675 (or (= lt!620983 (select (arr!46518 a!2901) j!112)) (= (bvadd lt!620983 lt!620983) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410087 () Bool)

(assert (=> b!1410087 (and (bvsge (index!45782 lt!620982) #b00000000000000000000000000000000) (bvslt (index!45782 lt!620982) (size!47069 a!2901)))))

(declare-fun res!947679 () Bool)

(assert (=> b!1410087 (= res!947679 (= (select (arr!46518 a!2901) (index!45782 lt!620982)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410087 (=> res!947679 e!797987)))

(declare-fun b!1410088 () Bool)

(declare-fun e!797983 () Bool)

(assert (=> b!1410088 (= e!797983 (bvsge (x!127373 lt!620982) #b01111111111111111111111111111110))))

(declare-fun b!1410089 () Bool)

(assert (=> b!1410089 (= e!797983 e!797986)))

(declare-fun res!947680 () Bool)

(assert (=> b!1410089 (= res!947680 (and (is-Intermediate!10851 lt!620982) (not (undefined!11663 lt!620982)) (bvslt (x!127373 lt!620982) #b01111111111111111111111111111110) (bvsge (x!127373 lt!620982) #b00000000000000000000000000000000) (bvsge (x!127373 lt!620982) #b00000000000000000000000000000000)))))

(assert (=> b!1410089 (=> (not res!947680) (not e!797986))))

(declare-fun b!1410090 () Bool)

(assert (=> b!1410090 (and (bvsge (index!45782 lt!620982) #b00000000000000000000000000000000) (bvslt (index!45782 lt!620982) (size!47069 a!2901)))))

(assert (=> b!1410090 (= e!797987 (= (select (arr!46518 a!2901) (index!45782 lt!620982)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!151749 () Bool)

(assert (=> d!151749 e!797983))

(declare-fun c!130674 () Bool)

(assert (=> d!151749 (= c!130674 (and (is-Intermediate!10851 lt!620982) (undefined!11663 lt!620982)))))

(assert (=> d!151749 (= lt!620982 e!797984)))

(declare-fun c!130676 () Bool)

(assert (=> d!151749 (= c!130676 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151749 (= lt!620983 (select (arr!46518 a!2901) lt!620926))))

(assert (=> d!151749 (validMask!0 mask!2840)))

(assert (=> d!151749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620926 (select (arr!46518 a!2901) j!112) a!2901 mask!2840) lt!620982)))

(declare-fun b!1410091 () Bool)

(assert (=> b!1410091 (= e!797985 (Intermediate!10851 false lt!620926 #b00000000000000000000000000000000))))

(assert (= (and d!151749 c!130676) b!1410083))

(assert (= (and d!151749 (not c!130676)) b!1410086))

(assert (= (and b!1410086 c!130675) b!1410091))

(assert (= (and b!1410086 (not c!130675)) b!1410085))

(assert (= (and d!151749 c!130674) b!1410088))

(assert (= (and d!151749 (not c!130674)) b!1410089))

(assert (= (and b!1410089 res!947680) b!1410084))

(assert (= (and b!1410084 (not res!947681)) b!1410087))

(assert (= (and b!1410087 (not res!947679)) b!1410090))

(declare-fun m!1299857 () Bool)

(assert (=> b!1410087 m!1299857))

(assert (=> b!1410090 m!1299857))

(assert (=> b!1410084 m!1299857))

(declare-fun m!1299859 () Bool)

(assert (=> b!1410085 m!1299859))

(assert (=> b!1410085 m!1299859))

(assert (=> b!1410085 m!1299787))

(declare-fun m!1299861 () Bool)

(assert (=> b!1410085 m!1299861))

(declare-fun m!1299863 () Bool)

(assert (=> d!151749 m!1299863))

(assert (=> d!151749 m!1299809))

(assert (=> b!1409968 d!151749))

(declare-fun d!151757 () Bool)

(declare-fun lt!620995 () (_ BitVec 32))

(declare-fun lt!620994 () (_ BitVec 32))

(assert (=> d!151757 (= lt!620995 (bvmul (bvxor lt!620994 (bvlshr lt!620994 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151757 (= lt!620994 ((_ extract 31 0) (bvand (bvxor (select (arr!46518 a!2901) j!112) (bvlshr (select (arr!46518 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151757 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947682 (let ((h!34482 ((_ extract 31 0) (bvand (bvxor (select (arr!46518 a!2901) j!112) (bvlshr (select (arr!46518 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127379 (bvmul (bvxor h!34482 (bvlshr h!34482 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127379 (bvlshr x!127379 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947682 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947682 #b00000000000000000000000000000000))))))

(assert (=> d!151757 (= (toIndex!0 (select (arr!46518 a!2901) j!112) mask!2840) (bvand (bvxor lt!620995 (bvlshr lt!620995 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409968 d!151757))

(declare-fun b!1410174 () Bool)

(declare-fun c!130704 () Bool)

(declare-fun lt!621027 () (_ BitVec 64))

(assert (=> b!1410174 (= c!130704 (= lt!621027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798045 () SeekEntryResult!10851)

(declare-fun e!798043 () SeekEntryResult!10851)

(assert (=> b!1410174 (= e!798045 e!798043)))

(declare-fun b!1410175 () Bool)

(declare-fun e!798044 () SeekEntryResult!10851)

(assert (=> b!1410175 (= e!798044 e!798045)))

(declare-fun lt!621026 () SeekEntryResult!10851)

(assert (=> b!1410175 (= lt!621027 (select (arr!46518 a!2901) (index!45782 lt!621026)))))

(declare-fun c!130702 () Bool)

(assert (=> b!1410175 (= c!130702 (= lt!621027 (select (arr!46518 a!2901) j!112)))))

(declare-fun b!1410176 () Bool)

(assert (=> b!1410176 (= e!798044 Undefined!10851)))

(declare-fun b!1410178 () Bool)

(assert (=> b!1410178 (= e!798043 (MissingZero!10851 (index!45782 lt!621026)))))

(declare-fun b!1410179 () Bool)

(assert (=> b!1410179 (= e!798045 (Found!10851 (index!45782 lt!621026)))))

(declare-fun d!151771 () Bool)

(declare-fun lt!621025 () SeekEntryResult!10851)

(assert (=> d!151771 (and (or (is-Undefined!10851 lt!621025) (not (is-Found!10851 lt!621025)) (and (bvsge (index!45781 lt!621025) #b00000000000000000000000000000000) (bvslt (index!45781 lt!621025) (size!47069 a!2901)))) (or (is-Undefined!10851 lt!621025) (is-Found!10851 lt!621025) (not (is-MissingZero!10851 lt!621025)) (and (bvsge (index!45780 lt!621025) #b00000000000000000000000000000000) (bvslt (index!45780 lt!621025) (size!47069 a!2901)))) (or (is-Undefined!10851 lt!621025) (is-Found!10851 lt!621025) (is-MissingZero!10851 lt!621025) (not (is-MissingVacant!10851 lt!621025)) (and (bvsge (index!45783 lt!621025) #b00000000000000000000000000000000) (bvslt (index!45783 lt!621025) (size!47069 a!2901)))) (or (is-Undefined!10851 lt!621025) (ite (is-Found!10851 lt!621025) (= (select (arr!46518 a!2901) (index!45781 lt!621025)) (select (arr!46518 a!2901) j!112)) (ite (is-MissingZero!10851 lt!621025) (= (select (arr!46518 a!2901) (index!45780 lt!621025)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10851 lt!621025) (= (select (arr!46518 a!2901) (index!45783 lt!621025)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151771 (= lt!621025 e!798044)))

(declare-fun c!130703 () Bool)

(assert (=> d!151771 (= c!130703 (and (is-Intermediate!10851 lt!621026) (undefined!11663 lt!621026)))))

(assert (=> d!151771 (= lt!621026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46518 a!2901) j!112) mask!2840) (select (arr!46518 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151771 (validMask!0 mask!2840)))

(assert (=> d!151771 (= (seekEntryOrOpen!0 (select (arr!46518 a!2901) j!112) a!2901 mask!2840) lt!621025)))

(declare-fun b!1410177 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96361 (_ BitVec 32)) SeekEntryResult!10851)

(assert (=> b!1410177 (= e!798043 (seekKeyOrZeroReturnVacant!0 (x!127373 lt!621026) (index!45782 lt!621026) (index!45782 lt!621026) (select (arr!46518 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151771 c!130703) b!1410176))

(assert (= (and d!151771 (not c!130703)) b!1410175))

(assert (= (and b!1410175 c!130702) b!1410179))

(assert (= (and b!1410175 (not c!130702)) b!1410174))

(assert (= (and b!1410174 c!130704) b!1410178))

(assert (= (and b!1410174 (not c!130704)) b!1410177))

(declare-fun m!1299921 () Bool)

(assert (=> b!1410175 m!1299921))

(declare-fun m!1299923 () Bool)

(assert (=> d!151771 m!1299923))

(assert (=> d!151771 m!1299809))

(declare-fun m!1299925 () Bool)

(assert (=> d!151771 m!1299925))

(assert (=> d!151771 m!1299787))

(assert (=> d!151771 m!1299791))

(declare-fun m!1299927 () Bool)

(assert (=> d!151771 m!1299927))

(assert (=> d!151771 m!1299791))

(assert (=> d!151771 m!1299787))

(declare-fun m!1299929 () Bool)

(assert (=> d!151771 m!1299929))

(assert (=> b!1410177 m!1299787))

(declare-fun m!1299931 () Bool)

(assert (=> b!1410177 m!1299931))

(assert (=> b!1409969 d!151771))

(declare-fun e!798050 () SeekEntryResult!10851)

(declare-fun b!1410184 () Bool)

(assert (=> b!1410184 (= e!798050 (Intermediate!10851 true (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410185 () Bool)

(declare-fun lt!621031 () SeekEntryResult!10851)

(assert (=> b!1410185 (and (bvsge (index!45782 lt!621031) #b00000000000000000000000000000000) (bvslt (index!45782 lt!621031) (size!47069 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)))))))

(declare-fun res!947719 () Bool)

(assert (=> b!1410185 (= res!947719 (= (select (arr!46518 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901))) (index!45782 lt!621031)) (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!798053 () Bool)

(assert (=> b!1410185 (=> res!947719 e!798053)))

(declare-fun e!798052 () Bool)

(assert (=> b!1410185 (= e!798052 e!798053)))

(declare-fun e!798051 () SeekEntryResult!10851)

(declare-fun b!1410186 () Bool)

(assert (=> b!1410186 (= e!798051 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)) mask!2840))))

(declare-fun b!1410187 () Bool)

(assert (=> b!1410187 (= e!798050 e!798051)))

(declare-fun lt!621032 () (_ BitVec 64))

(declare-fun c!130707 () Bool)

(assert (=> b!1410187 (= c!130707 (or (= lt!621032 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!621032 lt!621032) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410188 () Bool)

(assert (=> b!1410188 (and (bvsge (index!45782 lt!621031) #b00000000000000000000000000000000) (bvslt (index!45782 lt!621031) (size!47069 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)))))))

(declare-fun res!947717 () Bool)

(assert (=> b!1410188 (= res!947717 (= (select (arr!46518 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901))) (index!45782 lt!621031)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410188 (=> res!947717 e!798053)))

(declare-fun b!1410189 () Bool)

(declare-fun e!798049 () Bool)

(assert (=> b!1410189 (= e!798049 (bvsge (x!127373 lt!621031) #b01111111111111111111111111111110))))

(declare-fun b!1410190 () Bool)

(assert (=> b!1410190 (= e!798049 e!798052)))

(declare-fun res!947718 () Bool)

(assert (=> b!1410190 (= res!947718 (and (is-Intermediate!10851 lt!621031) (not (undefined!11663 lt!621031)) (bvslt (x!127373 lt!621031) #b01111111111111111111111111111110) (bvsge (x!127373 lt!621031) #b00000000000000000000000000000000) (bvsge (x!127373 lt!621031) #b00000000000000000000000000000000)))))

(assert (=> b!1410190 (=> (not res!947718) (not e!798052))))

(declare-fun b!1410191 () Bool)

(assert (=> b!1410191 (and (bvsge (index!45782 lt!621031) #b00000000000000000000000000000000) (bvslt (index!45782 lt!621031) (size!47069 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)))))))

(assert (=> b!1410191 (= e!798053 (= (select (arr!46518 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901))) (index!45782 lt!621031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!151793 () Bool)

(assert (=> d!151793 e!798049))

(declare-fun c!130706 () Bool)

(assert (=> d!151793 (= c!130706 (and (is-Intermediate!10851 lt!621031) (undefined!11663 lt!621031)))))

(assert (=> d!151793 (= lt!621031 e!798050)))

(declare-fun c!130708 () Bool)

(assert (=> d!151793 (= c!130708 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151793 (= lt!621032 (select (arr!46518 (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901))) (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151793 (validMask!0 mask!2840)))

(assert (=> d!151793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96362 (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47069 a!2901)) mask!2840) lt!621031)))

(declare-fun b!1410192 () Bool)

(assert (=> b!1410192 (= e!798051 (Intermediate!10851 false (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151793 c!130708) b!1410184))

(assert (= (and d!151793 (not c!130708)) b!1410187))

(assert (= (and b!1410187 c!130707) b!1410192))

(assert (= (and b!1410187 (not c!130707)) b!1410186))

(assert (= (and d!151793 c!130706) b!1410189))

(assert (= (and d!151793 (not c!130706)) b!1410190))

(assert (= (and b!1410190 res!947718) b!1410185))

(assert (= (and b!1410185 (not res!947719)) b!1410188))

(assert (= (and b!1410188 (not res!947717)) b!1410191))

(declare-fun m!1299941 () Bool)

(assert (=> b!1410188 m!1299941))

(assert (=> b!1410191 m!1299941))

(assert (=> b!1410185 m!1299941))

(assert (=> b!1410186 m!1299805))

(declare-fun m!1299943 () Bool)

(assert (=> b!1410186 m!1299943))

(assert (=> b!1410186 m!1299943))

(assert (=> b!1410186 m!1299803))

(declare-fun m!1299945 () Bool)

(assert (=> b!1410186 m!1299945))

(assert (=> d!151793 m!1299805))

(declare-fun m!1299947 () Bool)

(assert (=> d!151793 m!1299947))

(assert (=> d!151793 m!1299809))

(assert (=> b!1409974 d!151793))

(declare-fun d!151801 () Bool)

(declare-fun lt!621034 () (_ BitVec 32))

(declare-fun lt!621033 () (_ BitVec 32))

(assert (=> d!151801 (= lt!621034 (bvmul (bvxor lt!621033 (bvlshr lt!621033 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151801 (= lt!621033 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151801 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947682 (let ((h!34482 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127379 (bvmul (bvxor h!34482 (bvlshr h!34482 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127379 (bvlshr x!127379 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947682 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947682 #b00000000000000000000000000000000))))))

(assert (=> d!151801 (= (toIndex!0 (select (store (arr!46518 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!621034 (bvlshr lt!621034 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409974 d!151801))

(declare-fun b!1410193 () Bool)

(declare-fun e!798055 () Bool)

(declare-fun e!798056 () Bool)

(assert (=> b!1410193 (= e!798055 e!798056)))

(declare-fun lt!621035 () (_ BitVec 64))

(assert (=> b!1410193 (= lt!621035 (select (arr!46518 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!621036 () Unit!47626)

(assert (=> b!1410193 (= lt!621036 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621035 #b00000000000000000000000000000000))))

(assert (=> b!1410193 (arrayContainsKey!0 a!2901 lt!621035 #b00000000000000000000000000000000)))

(declare-fun lt!621037 () Unit!47626)

(assert (=> b!1410193 (= lt!621037 lt!621036)))

(declare-fun res!947721 () Bool)

(assert (=> b!1410193 (= res!947721 (= (seekEntryOrOpen!0 (select (arr!46518 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10851 #b00000000000000000000000000000000)))))

(assert (=> b!1410193 (=> (not res!947721) (not e!798056))))

(declare-fun b!1410194 () Bool)

(declare-fun call!67050 () Bool)

(assert (=> b!1410194 (= e!798056 call!67050)))

(declare-fun d!151803 () Bool)

(declare-fun res!947720 () Bool)

(declare-fun e!798054 () Bool)

(assert (=> d!151803 (=> res!947720 e!798054)))

(assert (=> d!151803 (= res!947720 (bvsge #b00000000000000000000000000000000 (size!47069 a!2901)))))

(assert (=> d!151803 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798054)))

(declare-fun b!1410195 () Bool)

(assert (=> b!1410195 (= e!798055 call!67050)))

(declare-fun b!1410196 () Bool)

(assert (=> b!1410196 (= e!798054 e!798055)))

(declare-fun c!130709 () Bool)

(assert (=> b!1410196 (= c!130709 (validKeyInArray!0 (select (arr!46518 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67047 () Bool)

(assert (=> bm!67047 (= call!67050 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151803 (not res!947720)) b!1410196))

(assert (= (and b!1410196 c!130709) b!1410193))

(assert (= (and b!1410196 (not c!130709)) b!1410195))

(assert (= (and b!1410193 res!947721) b!1410194))

(assert (= (or b!1410194 b!1410195) bm!67047))

(declare-fun m!1299949 () Bool)

(assert (=> b!1410193 m!1299949))

(declare-fun m!1299951 () Bool)

(assert (=> b!1410193 m!1299951))

(declare-fun m!1299953 () Bool)

(assert (=> b!1410193 m!1299953))

(assert (=> b!1410193 m!1299949))

(declare-fun m!1299955 () Bool)

(assert (=> b!1410193 m!1299955))

(assert (=> b!1410196 m!1299949))

(assert (=> b!1410196 m!1299949))

(declare-fun m!1299957 () Bool)

(assert (=> b!1410196 m!1299957))

(declare-fun m!1299959 () Bool)

(assert (=> bm!67047 m!1299959))

(assert (=> b!1409970 d!151803))

(declare-fun d!151805 () Bool)

(assert (=> d!151805 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121340 d!151805))

(declare-fun d!151807 () Bool)

(assert (=> d!151807 (= (array_inv!35463 a!2901) (bvsge (size!47069 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121340 d!151807))

(declare-fun b!1410219 () Bool)

(declare-fun e!798072 () Bool)

(declare-fun call!67053 () Bool)

(assert (=> b!1410219 (= e!798072 call!67053)))

(declare-fun b!1410220 () Bool)

(assert (=> b!1410220 (= e!798072 call!67053)))

(declare-fun d!151809 () Bool)

(declare-fun res!947730 () Bool)

(declare-fun e!798073 () Bool)

(assert (=> d!151809 (=> res!947730 e!798073)))

(assert (=> d!151809 (= res!947730 (bvsge #b00000000000000000000000000000000 (size!47069 a!2901)))))

(assert (=> d!151809 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33214) e!798073)))

(declare-fun b!1410221 () Bool)

(declare-fun e!798074 () Bool)

(assert (=> b!1410221 (= e!798073 e!798074)))

(declare-fun res!947729 () Bool)

(assert (=> b!1410221 (=> (not res!947729) (not e!798074))))

(declare-fun e!798071 () Bool)

(assert (=> b!1410221 (= res!947729 (not e!798071))))

(declare-fun res!947728 () Bool)

(assert (=> b!1410221 (=> (not res!947728) (not e!798071))))

(assert (=> b!1410221 (= res!947728 (validKeyInArray!0 (select (arr!46518 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410222 () Bool)

(declare-fun contains!9822 (List!33217 (_ BitVec 64)) Bool)

(assert (=> b!1410222 (= e!798071 (contains!9822 Nil!33214 (select (arr!46518 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410223 () Bool)

(assert (=> b!1410223 (= e!798074 e!798072)))

(declare-fun c!130718 () Bool)

(assert (=> b!1410223 (= c!130718 (validKeyInArray!0 (select (arr!46518 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67050 () Bool)

(assert (=> bm!67050 (= call!67053 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130718 (Cons!33213 (select (arr!46518 a!2901) #b00000000000000000000000000000000) Nil!33214) Nil!33214)))))

(assert (= (and d!151809 (not res!947730)) b!1410221))

(assert (= (and b!1410221 res!947728) b!1410222))

(assert (= (and b!1410221 res!947729) b!1410223))

(assert (= (and b!1410223 c!130718) b!1410220))

(assert (= (and b!1410223 (not c!130718)) b!1410219))

(assert (= (or b!1410220 b!1410219) bm!67050))

(assert (=> b!1410221 m!1299949))

(assert (=> b!1410221 m!1299949))

(assert (=> b!1410221 m!1299957))

(assert (=> b!1410222 m!1299949))

(assert (=> b!1410222 m!1299949))

(declare-fun m!1299961 () Bool)

(assert (=> b!1410222 m!1299961))

(assert (=> b!1410223 m!1299949))

(assert (=> b!1410223 m!1299949))

(assert (=> b!1410223 m!1299957))

(assert (=> bm!67050 m!1299949))

(declare-fun m!1299963 () Bool)

(assert (=> bm!67050 m!1299963))

(assert (=> b!1409967 d!151809))

(declare-fun d!151811 () Bool)

(assert (=> d!151811 (= (validKeyInArray!0 (select (arr!46518 a!2901) j!112)) (and (not (= (select (arr!46518 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46518 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409972 d!151811))

(declare-fun d!151813 () Bool)

(assert (=> d!151813 (= (validKeyInArray!0 (select (arr!46518 a!2901) i!1037)) (and (not (= (select (arr!46518 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46518 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409973 d!151813))

(push 1)

