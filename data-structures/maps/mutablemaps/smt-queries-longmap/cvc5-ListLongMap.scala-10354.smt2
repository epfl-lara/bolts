; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121912 () Bool)

(assert start!121912)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96579 0))(
  ( (array!96580 (arr!46618 (Array (_ BitVec 32) (_ BitVec 64))) (size!47169 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96579)

(declare-datatypes ((SeekEntryResult!10951 0))(
  ( (MissingZero!10951 (index!46192 (_ BitVec 32))) (Found!10951 (index!46193 (_ BitVec 32))) (Intermediate!10951 (undefined!11763 Bool) (index!46194 (_ BitVec 32)) (x!127805 (_ BitVec 32))) (Undefined!10951) (MissingVacant!10951 (index!46195 (_ BitVec 32))) )
))
(declare-fun lt!623646 () SeekEntryResult!10951)

(declare-fun lt!623643 () (_ BitVec 64))

(declare-fun lt!623645 () array!96579)

(declare-fun b!1414621 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!800642 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96579 (_ BitVec 32)) SeekEntryResult!10951)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96579 (_ BitVec 32)) SeekEntryResult!10951)

(assert (=> b!1414621 (= e!800642 (= (seekEntryOrOpen!0 lt!623643 lt!623645 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127805 lt!623646) (index!46194 lt!623646) (index!46194 lt!623646) (select (arr!46618 a!2901) j!112) lt!623645 mask!2840)))))

(declare-fun lt!623647 () SeekEntryResult!10951)

(declare-fun lt!623641 () (_ BitVec 32))

(declare-fun b!1414622 () Bool)

(declare-fun e!800643 () Bool)

(assert (=> b!1414622 (= e!800643 (or (bvslt (x!127805 lt!623647) #b00000000000000000000000000000000) (bvsgt (x!127805 lt!623647) #b01111111111111111111111111111110) (bvslt (x!127805 lt!623646) #b00000000000000000000000000000000) (bvsgt (x!127805 lt!623646) #b01111111111111111111111111111110) (bvslt lt!623641 #b00000000000000000000000000000000) (bvsge lt!623641 (size!47169 a!2901)) (and (bvsge (index!46194 lt!623647) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623647) (size!47169 a!2901)))))))

(assert (=> b!1414622 e!800642))

(declare-fun res!951018 () Bool)

(assert (=> b!1414622 (=> (not res!951018) (not e!800642))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1414622 (= res!951018 (and (not (undefined!11763 lt!623646)) (= (index!46194 lt!623646) i!1037) (bvslt (x!127805 lt!623646) (x!127805 lt!623647)) (= (select (store (arr!46618 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46194 lt!623646)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47826 0))(
  ( (Unit!47827) )
))
(declare-fun lt!623644 () Unit!47826)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47826)

(assert (=> b!1414622 (= lt!623644 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623641 (x!127805 lt!623647) (index!46194 lt!623647) (x!127805 lt!623646) (index!46194 lt!623646) (undefined!11763 lt!623646) mask!2840))))

(declare-fun b!1414623 () Bool)

(declare-fun res!951016 () Bool)

(declare-fun e!800641 () Bool)

(assert (=> b!1414623 (=> (not res!951016) (not e!800641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414623 (= res!951016 (validKeyInArray!0 (select (arr!46618 a!2901) i!1037)))))

(declare-fun b!1414624 () Bool)

(declare-fun res!951013 () Bool)

(assert (=> b!1414624 (=> (not res!951013) (not e!800641))))

(declare-datatypes ((List!33317 0))(
  ( (Nil!33314) (Cons!33313 (h!34597 (_ BitVec 64)) (t!48018 List!33317)) )
))
(declare-fun arrayNoDuplicates!0 (array!96579 (_ BitVec 32) List!33317) Bool)

(assert (=> b!1414624 (= res!951013 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33314))))

(declare-fun b!1414625 () Bool)

(declare-fun e!800640 () Bool)

(assert (=> b!1414625 (= e!800641 (not e!800640))))

(declare-fun res!951009 () Bool)

(assert (=> b!1414625 (=> res!951009 e!800640)))

(assert (=> b!1414625 (= res!951009 (or (not (is-Intermediate!10951 lt!623647)) (undefined!11763 lt!623647)))))

(declare-fun e!800645 () Bool)

(assert (=> b!1414625 e!800645))

(declare-fun res!951012 () Bool)

(assert (=> b!1414625 (=> (not res!951012) (not e!800645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96579 (_ BitVec 32)) Bool)

(assert (=> b!1414625 (= res!951012 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623642 () Unit!47826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47826)

(assert (=> b!1414625 (= lt!623642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96579 (_ BitVec 32)) SeekEntryResult!10951)

(assert (=> b!1414625 (= lt!623647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623641 (select (arr!46618 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414625 (= lt!623641 (toIndex!0 (select (arr!46618 a!2901) j!112) mask!2840))))

(declare-fun b!1414626 () Bool)

(declare-fun res!951010 () Bool)

(assert (=> b!1414626 (=> (not res!951010) (not e!800641))))

(assert (=> b!1414626 (= res!951010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1414627 () Bool)

(assert (=> b!1414627 (= e!800640 e!800643)))

(declare-fun res!951011 () Bool)

(assert (=> b!1414627 (=> res!951011 e!800643)))

(assert (=> b!1414627 (= res!951011 (or (= lt!623647 lt!623646) (not (is-Intermediate!10951 lt!623646))))))

(assert (=> b!1414627 (= lt!623646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623643 mask!2840) lt!623643 lt!623645 mask!2840))))

(assert (=> b!1414627 (= lt!623643 (select (store (arr!46618 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414627 (= lt!623645 (array!96580 (store (arr!46618 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47169 a!2901)))))

(declare-fun b!1414628 () Bool)

(assert (=> b!1414628 (= e!800645 (= (seekEntryOrOpen!0 (select (arr!46618 a!2901) j!112) a!2901 mask!2840) (Found!10951 j!112)))))

(declare-fun b!1414629 () Bool)

(declare-fun res!951014 () Bool)

(assert (=> b!1414629 (=> (not res!951014) (not e!800641))))

(assert (=> b!1414629 (= res!951014 (and (= (size!47169 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47169 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47169 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!951017 () Bool)

(assert (=> start!121912 (=> (not res!951017) (not e!800641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121912 (= res!951017 (validMask!0 mask!2840))))

(assert (=> start!121912 e!800641))

(assert (=> start!121912 true))

(declare-fun array_inv!35563 (array!96579) Bool)

(assert (=> start!121912 (array_inv!35563 a!2901)))

(declare-fun b!1414630 () Bool)

(declare-fun res!951015 () Bool)

(assert (=> b!1414630 (=> (not res!951015) (not e!800641))))

(assert (=> b!1414630 (= res!951015 (validKeyInArray!0 (select (arr!46618 a!2901) j!112)))))

(assert (= (and start!121912 res!951017) b!1414629))

(assert (= (and b!1414629 res!951014) b!1414623))

(assert (= (and b!1414623 res!951016) b!1414630))

(assert (= (and b!1414630 res!951015) b!1414626))

(assert (= (and b!1414626 res!951010) b!1414624))

(assert (= (and b!1414624 res!951013) b!1414625))

(assert (= (and b!1414625 res!951012) b!1414628))

(assert (= (and b!1414625 (not res!951009)) b!1414627))

(assert (= (and b!1414627 (not res!951011)) b!1414622))

(assert (= (and b!1414622 res!951018) b!1414621))

(declare-fun m!1304903 () Bool)

(assert (=> b!1414621 m!1304903))

(declare-fun m!1304905 () Bool)

(assert (=> b!1414621 m!1304905))

(assert (=> b!1414621 m!1304905))

(declare-fun m!1304907 () Bool)

(assert (=> b!1414621 m!1304907))

(assert (=> b!1414628 m!1304905))

(assert (=> b!1414628 m!1304905))

(declare-fun m!1304909 () Bool)

(assert (=> b!1414628 m!1304909))

(declare-fun m!1304911 () Bool)

(assert (=> b!1414622 m!1304911))

(declare-fun m!1304913 () Bool)

(assert (=> b!1414622 m!1304913))

(declare-fun m!1304915 () Bool)

(assert (=> b!1414622 m!1304915))

(declare-fun m!1304917 () Bool)

(assert (=> b!1414623 m!1304917))

(assert (=> b!1414623 m!1304917))

(declare-fun m!1304919 () Bool)

(assert (=> b!1414623 m!1304919))

(assert (=> b!1414630 m!1304905))

(assert (=> b!1414630 m!1304905))

(declare-fun m!1304921 () Bool)

(assert (=> b!1414630 m!1304921))

(declare-fun m!1304923 () Bool)

(assert (=> start!121912 m!1304923))

(declare-fun m!1304925 () Bool)

(assert (=> start!121912 m!1304925))

(declare-fun m!1304927 () Bool)

(assert (=> b!1414624 m!1304927))

(declare-fun m!1304929 () Bool)

(assert (=> b!1414626 m!1304929))

(assert (=> b!1414625 m!1304905))

(declare-fun m!1304931 () Bool)

(assert (=> b!1414625 m!1304931))

(assert (=> b!1414625 m!1304905))

(assert (=> b!1414625 m!1304905))

(declare-fun m!1304933 () Bool)

(assert (=> b!1414625 m!1304933))

(declare-fun m!1304935 () Bool)

(assert (=> b!1414625 m!1304935))

(declare-fun m!1304937 () Bool)

(assert (=> b!1414625 m!1304937))

(declare-fun m!1304939 () Bool)

(assert (=> b!1414627 m!1304939))

(assert (=> b!1414627 m!1304939))

(declare-fun m!1304941 () Bool)

(assert (=> b!1414627 m!1304941))

(assert (=> b!1414627 m!1304911))

(declare-fun m!1304943 () Bool)

(assert (=> b!1414627 m!1304943))

(push 1)

(assert (not b!1414627))

(assert (not b!1414626))

(assert (not b!1414622))

(assert (not b!1414623))

(assert (not b!1414630))

(assert (not b!1414621))

(assert (not start!121912))

(assert (not b!1414624))

(assert (not b!1414628))

(assert (not b!1414625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1414735 () Bool)

(declare-fun e!800706 () Bool)

(declare-fun call!67161 () Bool)

(assert (=> b!1414735 (= e!800706 call!67161)))

(declare-fun b!1414737 () Bool)

(declare-fun e!800707 () Bool)

(declare-fun e!800708 () Bool)

(assert (=> b!1414737 (= e!800707 e!800708)))

(declare-fun c!131306 () Bool)

(assert (=> b!1414737 (= c!131306 (validKeyInArray!0 (select (arr!46618 a!2901) j!112)))))

(declare-fun bm!67158 () Bool)

(assert (=> bm!67158 (= call!67161 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414738 () Bool)

(assert (=> b!1414738 (= e!800708 call!67161)))

(declare-fun d!152351 () Bool)

(declare-fun res!951084 () Bool)

(assert (=> d!152351 (=> res!951084 e!800707)))

(assert (=> d!152351 (= res!951084 (bvsge j!112 (size!47169 a!2901)))))

(assert (=> d!152351 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800707)))

(declare-fun b!1414736 () Bool)

(assert (=> b!1414736 (= e!800708 e!800706)))

(declare-fun lt!623713 () (_ BitVec 64))

(assert (=> b!1414736 (= lt!623713 (select (arr!46618 a!2901) j!112))))

(declare-fun lt!623712 () Unit!47826)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96579 (_ BitVec 64) (_ BitVec 32)) Unit!47826)

(assert (=> b!1414736 (= lt!623712 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623713 j!112))))

(declare-fun arrayContainsKey!0 (array!96579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414736 (arrayContainsKey!0 a!2901 lt!623713 #b00000000000000000000000000000000)))

(declare-fun lt!623714 () Unit!47826)

(assert (=> b!1414736 (= lt!623714 lt!623712)))

(declare-fun res!951083 () Bool)

(assert (=> b!1414736 (= res!951083 (= (seekEntryOrOpen!0 (select (arr!46618 a!2901) j!112) a!2901 mask!2840) (Found!10951 j!112)))))

(assert (=> b!1414736 (=> (not res!951083) (not e!800706))))

(assert (= (and d!152351 (not res!951084)) b!1414737))

(assert (= (and b!1414737 c!131306) b!1414736))

(assert (= (and b!1414737 (not c!131306)) b!1414738))

(assert (= (and b!1414736 res!951083) b!1414735))

(assert (= (or b!1414735 b!1414738) bm!67158))

(assert (=> b!1414737 m!1304905))

(assert (=> b!1414737 m!1304905))

(assert (=> b!1414737 m!1304921))

(declare-fun m!1305051 () Bool)

(assert (=> bm!67158 m!1305051))

(assert (=> b!1414736 m!1304905))

(declare-fun m!1305053 () Bool)

(assert (=> b!1414736 m!1305053))

(declare-fun m!1305055 () Bool)

(assert (=> b!1414736 m!1305055))

(assert (=> b!1414736 m!1304905))

(assert (=> b!1414736 m!1304909))

(assert (=> b!1414625 d!152351))

(declare-fun d!152355 () Bool)

(assert (=> d!152355 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623719 () Unit!47826)

(declare-fun choose!38 (array!96579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47826)

(assert (=> d!152355 (= lt!623719 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152355 (validMask!0 mask!2840)))

(assert (=> d!152355 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623719)))

(declare-fun bs!41237 () Bool)

(assert (= bs!41237 d!152355))

(assert (=> bs!41237 m!1304937))

(declare-fun m!1305067 () Bool)

(assert (=> bs!41237 m!1305067))

(assert (=> bs!41237 m!1304923))

(assert (=> b!1414625 d!152355))

(declare-fun b!1414798 () Bool)

(declare-fun e!800742 () Bool)

(declare-fun lt!623735 () SeekEntryResult!10951)

(assert (=> b!1414798 (= e!800742 (bvsge (x!127805 lt!623735) #b01111111111111111111111111111110))))

(declare-fun b!1414799 () Bool)

(assert (=> b!1414799 (and (bvsge (index!46194 lt!623735) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623735) (size!47169 a!2901)))))

(declare-fun res!951101 () Bool)

(assert (=> b!1414799 (= res!951101 (= (select (arr!46618 a!2901) (index!46194 lt!623735)) (select (arr!46618 a!2901) j!112)))))

(declare-fun e!800744 () Bool)

(assert (=> b!1414799 (=> res!951101 e!800744)))

(declare-fun e!800741 () Bool)

(assert (=> b!1414799 (= e!800741 e!800744)))

(declare-fun b!1414800 () Bool)

(assert (=> b!1414800 (= e!800742 e!800741)))

(declare-fun res!951103 () Bool)

(assert (=> b!1414800 (= res!951103 (and (is-Intermediate!10951 lt!623735) (not (undefined!11763 lt!623735)) (bvslt (x!127805 lt!623735) #b01111111111111111111111111111110) (bvsge (x!127805 lt!623735) #b00000000000000000000000000000000) (bvsge (x!127805 lt!623735) #b00000000000000000000000000000000)))))

(assert (=> b!1414800 (=> (not res!951103) (not e!800741))))

(declare-fun b!1414801 () Bool)

(assert (=> b!1414801 (and (bvsge (index!46194 lt!623735) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623735) (size!47169 a!2901)))))

(assert (=> b!1414801 (= e!800744 (= (select (arr!46618 a!2901) (index!46194 lt!623735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414802 () Bool)

(declare-fun e!800743 () SeekEntryResult!10951)

(declare-fun e!800745 () SeekEntryResult!10951)

(assert (=> b!1414802 (= e!800743 e!800745)))

(declare-fun c!131329 () Bool)

(declare-fun lt!623734 () (_ BitVec 64))

(assert (=> b!1414802 (= c!131329 (or (= lt!623734 (select (arr!46618 a!2901) j!112)) (= (bvadd lt!623734 lt!623734) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414803 () Bool)

(assert (=> b!1414803 (= e!800743 (Intermediate!10951 true lt!623641 #b00000000000000000000000000000000))))

(declare-fun b!1414804 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414804 (= e!800745 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623641 #b00000000000000000000000000000000 mask!2840) (select (arr!46618 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152359 () Bool)

(assert (=> d!152359 e!800742))

(declare-fun c!131331 () Bool)

(assert (=> d!152359 (= c!131331 (and (is-Intermediate!10951 lt!623735) (undefined!11763 lt!623735)))))

(assert (=> d!152359 (= lt!623735 e!800743)))

(declare-fun c!131330 () Bool)

(assert (=> d!152359 (= c!131330 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152359 (= lt!623734 (select (arr!46618 a!2901) lt!623641))))

(assert (=> d!152359 (validMask!0 mask!2840)))

(assert (=> d!152359 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623641 (select (arr!46618 a!2901) j!112) a!2901 mask!2840) lt!623735)))

(declare-fun b!1414805 () Bool)

(assert (=> b!1414805 (= e!800745 (Intermediate!10951 false lt!623641 #b00000000000000000000000000000000))))

(declare-fun b!1414806 () Bool)

(assert (=> b!1414806 (and (bvsge (index!46194 lt!623735) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623735) (size!47169 a!2901)))))

(declare-fun res!951102 () Bool)

(assert (=> b!1414806 (= res!951102 (= (select (arr!46618 a!2901) (index!46194 lt!623735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414806 (=> res!951102 e!800744)))

(assert (= (and d!152359 c!131330) b!1414803))

(assert (= (and d!152359 (not c!131330)) b!1414802))

(assert (= (and b!1414802 c!131329) b!1414805))

(assert (= (and b!1414802 (not c!131329)) b!1414804))

(assert (= (and d!152359 c!131331) b!1414798))

(assert (= (and d!152359 (not c!131331)) b!1414800))

(assert (= (and b!1414800 res!951103) b!1414799))

(assert (= (and b!1414799 (not res!951101)) b!1414806))

(assert (= (and b!1414806 (not res!951102)) b!1414801))

(declare-fun m!1305077 () Bool)

(assert (=> d!152359 m!1305077))

(assert (=> d!152359 m!1304923))

(declare-fun m!1305079 () Bool)

(assert (=> b!1414799 m!1305079))

(declare-fun m!1305081 () Bool)

(assert (=> b!1414804 m!1305081))

(assert (=> b!1414804 m!1305081))

(assert (=> b!1414804 m!1304905))

(declare-fun m!1305083 () Bool)

(assert (=> b!1414804 m!1305083))

(assert (=> b!1414806 m!1305079))

(assert (=> b!1414801 m!1305079))

(assert (=> b!1414625 d!152359))

(declare-fun d!152367 () Bool)

(declare-fun lt!623749 () (_ BitVec 32))

(declare-fun lt!623748 () (_ BitVec 32))

(assert (=> d!152367 (= lt!623749 (bvmul (bvxor lt!623748 (bvlshr lt!623748 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152367 (= lt!623748 ((_ extract 31 0) (bvand (bvxor (select (arr!46618 a!2901) j!112) (bvlshr (select (arr!46618 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152367 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951110 (let ((h!34601 ((_ extract 31 0) (bvand (bvxor (select (arr!46618 a!2901) j!112) (bvlshr (select (arr!46618 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127813 (bvmul (bvxor h!34601 (bvlshr h!34601 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127813 (bvlshr x!127813 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951110 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951110 #b00000000000000000000000000000000))))))

(assert (=> d!152367 (= (toIndex!0 (select (arr!46618 a!2901) j!112) mask!2840) (bvand (bvxor lt!623749 (bvlshr lt!623749 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414625 d!152367))

(declare-fun d!152373 () Bool)

(assert (=> d!152373 (= (validKeyInArray!0 (select (arr!46618 a!2901) j!112)) (and (not (= (select (arr!46618 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46618 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414630 d!152373))

(declare-fun b!1414848 () Bool)

(declare-fun e!800776 () Bool)

(declare-fun e!800774 () Bool)

(assert (=> b!1414848 (= e!800776 e!800774)))

(declare-fun c!131342 () Bool)

(assert (=> b!1414848 (= c!131342 (validKeyInArray!0 (select (arr!46618 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152375 () Bool)

(declare-fun res!951129 () Bool)

(declare-fun e!800775 () Bool)

(assert (=> d!152375 (=> res!951129 e!800775)))

(assert (=> d!152375 (= res!951129 (bvsge #b00000000000000000000000000000000 (size!47169 a!2901)))))

(assert (=> d!152375 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33314) e!800775)))

(declare-fun b!1414849 () Bool)

(assert (=> b!1414849 (= e!800775 e!800776)))

(declare-fun res!951128 () Bool)

(assert (=> b!1414849 (=> (not res!951128) (not e!800776))))

(declare-fun e!800777 () Bool)

(assert (=> b!1414849 (= res!951128 (not e!800777))))

(declare-fun res!951127 () Bool)

(assert (=> b!1414849 (=> (not res!951127) (not e!800777))))

(assert (=> b!1414849 (= res!951127 (validKeyInArray!0 (select (arr!46618 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414850 () Bool)

(declare-fun contains!9836 (List!33317 (_ BitVec 64)) Bool)

(assert (=> b!1414850 (= e!800777 (contains!9836 Nil!33314 (select (arr!46618 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414851 () Bool)

(declare-fun call!67167 () Bool)

(assert (=> b!1414851 (= e!800774 call!67167)))

(declare-fun b!1414852 () Bool)

(assert (=> b!1414852 (= e!800774 call!67167)))

(declare-fun bm!67164 () Bool)

(assert (=> bm!67164 (= call!67167 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131342 (Cons!33313 (select (arr!46618 a!2901) #b00000000000000000000000000000000) Nil!33314) Nil!33314)))))

(assert (= (and d!152375 (not res!951129)) b!1414849))

(assert (= (and b!1414849 res!951127) b!1414850))

(assert (= (and b!1414849 res!951128) b!1414848))

(assert (= (and b!1414848 c!131342) b!1414851))

(assert (= (and b!1414848 (not c!131342)) b!1414852))

(assert (= (or b!1414851 b!1414852) bm!67164))

(declare-fun m!1305099 () Bool)

(assert (=> b!1414848 m!1305099))

(assert (=> b!1414848 m!1305099))

(declare-fun m!1305101 () Bool)

(assert (=> b!1414848 m!1305101))

(assert (=> b!1414849 m!1305099))

(assert (=> b!1414849 m!1305099))

(assert (=> b!1414849 m!1305101))

(assert (=> b!1414850 m!1305099))

(assert (=> b!1414850 m!1305099))

(declare-fun m!1305103 () Bool)

(assert (=> b!1414850 m!1305103))

(assert (=> bm!67164 m!1305099))

(declare-fun m!1305105 () Bool)

(assert (=> bm!67164 m!1305105))

(assert (=> b!1414624 d!152375))

(declare-fun d!152381 () Bool)

(assert (=> d!152381 (= (validKeyInArray!0 (select (arr!46618 a!2901) i!1037)) (and (not (= (select (arr!46618 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46618 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414623 d!152381))

(declare-fun b!1414893 () Bool)

(declare-fun e!800804 () SeekEntryResult!10951)

(assert (=> b!1414893 (= e!800804 Undefined!10951)))

(declare-fun b!1414894 () Bool)

(declare-fun e!800805 () SeekEntryResult!10951)

(declare-fun lt!623789 () SeekEntryResult!10951)

(assert (=> b!1414894 (= e!800805 (MissingZero!10951 (index!46194 lt!623789)))))

(declare-fun b!1414895 () Bool)

(assert (=> b!1414895 (= e!800805 (seekKeyOrZeroReturnVacant!0 (x!127805 lt!623789) (index!46194 lt!623789) (index!46194 lt!623789) (select (arr!46618 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152385 () Bool)

(declare-fun lt!623787 () SeekEntryResult!10951)

(assert (=> d!152385 (and (or (is-Undefined!10951 lt!623787) (not (is-Found!10951 lt!623787)) (and (bvsge (index!46193 lt!623787) #b00000000000000000000000000000000) (bvslt (index!46193 lt!623787) (size!47169 a!2901)))) (or (is-Undefined!10951 lt!623787) (is-Found!10951 lt!623787) (not (is-MissingZero!10951 lt!623787)) (and (bvsge (index!46192 lt!623787) #b00000000000000000000000000000000) (bvslt (index!46192 lt!623787) (size!47169 a!2901)))) (or (is-Undefined!10951 lt!623787) (is-Found!10951 lt!623787) (is-MissingZero!10951 lt!623787) (not (is-MissingVacant!10951 lt!623787)) (and (bvsge (index!46195 lt!623787) #b00000000000000000000000000000000) (bvslt (index!46195 lt!623787) (size!47169 a!2901)))) (or (is-Undefined!10951 lt!623787) (ite (is-Found!10951 lt!623787) (= (select (arr!46618 a!2901) (index!46193 lt!623787)) (select (arr!46618 a!2901) j!112)) (ite (is-MissingZero!10951 lt!623787) (= (select (arr!46618 a!2901) (index!46192 lt!623787)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10951 lt!623787) (= (select (arr!46618 a!2901) (index!46195 lt!623787)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152385 (= lt!623787 e!800804)))

(declare-fun c!131356 () Bool)

(assert (=> d!152385 (= c!131356 (and (is-Intermediate!10951 lt!623789) (undefined!11763 lt!623789)))))

(assert (=> d!152385 (= lt!623789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46618 a!2901) j!112) mask!2840) (select (arr!46618 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152385 (validMask!0 mask!2840)))

(assert (=> d!152385 (= (seekEntryOrOpen!0 (select (arr!46618 a!2901) j!112) a!2901 mask!2840) lt!623787)))

(declare-fun b!1414896 () Bool)

(declare-fun c!131358 () Bool)

(declare-fun lt!623788 () (_ BitVec 64))

(assert (=> b!1414896 (= c!131358 (= lt!623788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800806 () SeekEntryResult!10951)

(assert (=> b!1414896 (= e!800806 e!800805)))

(declare-fun b!1414897 () Bool)

(assert (=> b!1414897 (= e!800806 (Found!10951 (index!46194 lt!623789)))))

(declare-fun b!1414898 () Bool)

(assert (=> b!1414898 (= e!800804 e!800806)))

(assert (=> b!1414898 (= lt!623788 (select (arr!46618 a!2901) (index!46194 lt!623789)))))

(declare-fun c!131357 () Bool)

(assert (=> b!1414898 (= c!131357 (= lt!623788 (select (arr!46618 a!2901) j!112)))))

(assert (= (and d!152385 c!131356) b!1414893))

(assert (= (and d!152385 (not c!131356)) b!1414898))

(assert (= (and b!1414898 c!131357) b!1414897))

(assert (= (and b!1414898 (not c!131357)) b!1414896))

(assert (= (and b!1414896 c!131358) b!1414894))

(assert (= (and b!1414896 (not c!131358)) b!1414895))

(assert (=> b!1414895 m!1304905))

(declare-fun m!1305141 () Bool)

(assert (=> b!1414895 m!1305141))

(declare-fun m!1305143 () Bool)

(assert (=> d!152385 m!1305143))

(assert (=> d!152385 m!1304905))

(assert (=> d!152385 m!1304931))

(assert (=> d!152385 m!1304931))

(assert (=> d!152385 m!1304905))

(declare-fun m!1305145 () Bool)

(assert (=> d!152385 m!1305145))

(assert (=> d!152385 m!1304923))

(declare-fun m!1305147 () Bool)

(assert (=> d!152385 m!1305147))

(declare-fun m!1305149 () Bool)

(assert (=> d!152385 m!1305149))

(declare-fun m!1305151 () Bool)

(assert (=> b!1414898 m!1305151))

(assert (=> b!1414628 d!152385))

(declare-fun d!152407 () Bool)

(assert (=> d!152407 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121912 d!152407))

(declare-fun d!152415 () Bool)

(assert (=> d!152415 (= (array_inv!35563 a!2901) (bvsge (size!47169 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121912 d!152415))

(declare-fun b!1414932 () Bool)

(declare-fun e!800829 () Bool)

(declare-fun lt!623800 () SeekEntryResult!10951)

(assert (=> b!1414932 (= e!800829 (bvsge (x!127805 lt!623800) #b01111111111111111111111111111110))))

(declare-fun b!1414933 () Bool)

(assert (=> b!1414933 (and (bvsge (index!46194 lt!623800) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623800) (size!47169 lt!623645)))))

(declare-fun res!951153 () Bool)

(assert (=> b!1414933 (= res!951153 (= (select (arr!46618 lt!623645) (index!46194 lt!623800)) lt!623643))))

(declare-fun e!800831 () Bool)

(assert (=> b!1414933 (=> res!951153 e!800831)))

(declare-fun e!800828 () Bool)

(assert (=> b!1414933 (= e!800828 e!800831)))

(declare-fun b!1414934 () Bool)

(assert (=> b!1414934 (= e!800829 e!800828)))

(declare-fun res!951155 () Bool)

(assert (=> b!1414934 (= res!951155 (and (is-Intermediate!10951 lt!623800) (not (undefined!11763 lt!623800)) (bvslt (x!127805 lt!623800) #b01111111111111111111111111111110) (bvsge (x!127805 lt!623800) #b00000000000000000000000000000000) (bvsge (x!127805 lt!623800) #b00000000000000000000000000000000)))))

(assert (=> b!1414934 (=> (not res!951155) (not e!800828))))

(declare-fun b!1414935 () Bool)

(assert (=> b!1414935 (and (bvsge (index!46194 lt!623800) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623800) (size!47169 lt!623645)))))

(assert (=> b!1414935 (= e!800831 (= (select (arr!46618 lt!623645) (index!46194 lt!623800)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414936 () Bool)

(declare-fun e!800830 () SeekEntryResult!10951)

(declare-fun e!800832 () SeekEntryResult!10951)

(assert (=> b!1414936 (= e!800830 e!800832)))

(declare-fun c!131371 () Bool)

(declare-fun lt!623799 () (_ BitVec 64))

(assert (=> b!1414936 (= c!131371 (or (= lt!623799 lt!623643) (= (bvadd lt!623799 lt!623799) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414937 () Bool)

(assert (=> b!1414937 (= e!800830 (Intermediate!10951 true (toIndex!0 lt!623643 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414938 () Bool)

(assert (=> b!1414938 (= e!800832 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623643 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623643 lt!623645 mask!2840))))

(declare-fun d!152417 () Bool)

(assert (=> d!152417 e!800829))

(declare-fun c!131373 () Bool)

(assert (=> d!152417 (= c!131373 (and (is-Intermediate!10951 lt!623800) (undefined!11763 lt!623800)))))

(assert (=> d!152417 (= lt!623800 e!800830)))

(declare-fun c!131372 () Bool)

(assert (=> d!152417 (= c!131372 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152417 (= lt!623799 (select (arr!46618 lt!623645) (toIndex!0 lt!623643 mask!2840)))))

(assert (=> d!152417 (validMask!0 mask!2840)))

(assert (=> d!152417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623643 mask!2840) lt!623643 lt!623645 mask!2840) lt!623800)))

(declare-fun b!1414939 () Bool)

(assert (=> b!1414939 (= e!800832 (Intermediate!10951 false (toIndex!0 lt!623643 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414940 () Bool)

(assert (=> b!1414940 (and (bvsge (index!46194 lt!623800) #b00000000000000000000000000000000) (bvslt (index!46194 lt!623800) (size!47169 lt!623645)))))

(declare-fun res!951154 () Bool)

(assert (=> b!1414940 (= res!951154 (= (select (arr!46618 lt!623645) (index!46194 lt!623800)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414940 (=> res!951154 e!800831)))

(assert (= (and d!152417 c!131372) b!1414937))

(assert (= (and d!152417 (not c!131372)) b!1414936))

(assert (= (and b!1414936 c!131371) b!1414939))

(assert (= (and b!1414936 (not c!131371)) b!1414938))

(assert (= (and d!152417 c!131373) b!1414932))

(assert (= (and d!152417 (not c!131373)) b!1414934))

(assert (= (and b!1414934 res!951155) b!1414933))

(assert (= (and b!1414933 (not res!951153)) b!1414940))

(assert (= (and b!1414940 (not res!951154)) b!1414935))

(assert (=> d!152417 m!1304939))

(declare-fun m!1305169 () Bool)

(assert (=> d!152417 m!1305169))

(assert (=> d!152417 m!1304923))

(declare-fun m!1305171 () Bool)

(assert (=> b!1414933 m!1305171))

(assert (=> b!1414938 m!1304939))

(declare-fun m!1305173 () Bool)

(assert (=> b!1414938 m!1305173))

(assert (=> b!1414938 m!1305173))

(declare-fun m!1305175 () Bool)

(assert (=> b!1414938 m!1305175))

(assert (=> b!1414940 m!1305171))

(assert (=> b!1414935 m!1305171))

(assert (=> b!1414627 d!152417))

(declare-fun d!152419 () Bool)

(declare-fun lt!623802 () (_ BitVec 32))

(declare-fun lt!623801 () (_ BitVec 32))

(assert (=> d!152419 (= lt!623802 (bvmul (bvxor lt!623801 (bvlshr lt!623801 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152419 (= lt!623801 ((_ extract 31 0) (bvand (bvxor lt!623643 (bvlshr lt!623643 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152419 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951110 (let ((h!34601 ((_ extract 31 0) (bvand (bvxor lt!623643 (bvlshr lt!623643 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127813 (bvmul (bvxor h!34601 (bvlshr h!34601 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127813 (bvlshr x!127813 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951110 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951110 #b00000000000000000000000000000000))))))

(assert (=> d!152419 (= (toIndex!0 lt!623643 mask!2840) (bvand (bvxor lt!623802 (bvlshr lt!623802 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414627 d!152419))

(declare-fun d!152421 () Bool)

(assert (=> d!152421 (and (not (undefined!11763 lt!623646)) (= (index!46194 lt!623646) i!1037) (bvslt (x!127805 lt!623646) (x!127805 lt!623647)))))

(declare-fun lt!623805 () Unit!47826)

(declare-fun choose!62 (array!96579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47826)

(assert (=> d!152421 (= lt!623805 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623641 (x!127805 lt!623647) (index!46194 lt!623647) (x!127805 lt!623646) (index!46194 lt!623646) (undefined!11763 lt!623646) mask!2840))))

(assert (=> d!152421 (validMask!0 mask!2840)))

(assert (=> d!152421 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623641 (x!127805 lt!623647) (index!46194 lt!623647) (x!127805 lt!623646) (index!46194 lt!623646) (undefined!11763 lt!623646) mask!2840) lt!623805)))

(declare-fun bs!41241 () Bool)

(assert (= bs!41241 d!152421))

(declare-fun m!1305177 () Bool)

(assert (=> bs!41241 m!1305177))

(assert (=> bs!41241 m!1304923))

(assert (=> b!1414622 d!152421))

(declare-fun b!1414947 () Bool)

(declare-fun e!800837 () SeekEntryResult!10951)

(assert (=> b!1414947 (= e!800837 Undefined!10951)))

(declare-fun b!1414948 () Bool)

(declare-fun e!800838 () SeekEntryResult!10951)

(declare-fun lt!623814 () SeekEntryResult!10951)

(assert (=> b!1414948 (= e!800838 (MissingZero!10951 (index!46194 lt!623814)))))

(declare-fun b!1414949 () Bool)

(assert (=> b!1414949 (= e!800838 (seekKeyOrZeroReturnVacant!0 (x!127805 lt!623814) (index!46194 lt!623814) (index!46194 lt!623814) lt!623643 lt!623645 mask!2840))))

(declare-fun d!152423 () Bool)

(declare-fun lt!623812 () SeekEntryResult!10951)

(assert (=> d!152423 (and (or (is-Undefined!10951 lt!623812) (not (is-Found!10951 lt!623812)) (and (bvsge (index!46193 lt!623812) #b00000000000000000000000000000000) (bvslt (index!46193 lt!623812) (size!47169 lt!623645)))) (or (is-Undefined!10951 lt!623812) (is-Found!10951 lt!623812) (not (is-MissingZero!10951 lt!623812)) (and (bvsge (index!46192 lt!623812) #b00000000000000000000000000000000) (bvslt (index!46192 lt!623812) (size!47169 lt!623645)))) (or (is-Undefined!10951 lt!623812) (is-Found!10951 lt!623812) (is-MissingZero!10951 lt!623812) (not (is-MissingVacant!10951 lt!623812)) (and (bvsge (index!46195 lt!623812) #b00000000000000000000000000000000) (bvslt (index!46195 lt!623812) (size!47169 lt!623645)))) (or (is-Undefined!10951 lt!623812) (ite (is-Found!10951 lt!623812) (= (select (arr!46618 lt!623645) (index!46193 lt!623812)) lt!623643) (ite (is-MissingZero!10951 lt!623812) (= (select (arr!46618 lt!623645) (index!46192 lt!623812)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10951 lt!623812) (= (select (arr!46618 lt!623645) (index!46195 lt!623812)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152423 (= lt!623812 e!800837)))

(declare-fun c!131376 () Bool)

(assert (=> d!152423 (= c!131376 (and (is-Intermediate!10951 lt!623814) (undefined!11763 lt!623814)))))

(assert (=> d!152423 (= lt!623814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623643 mask!2840) lt!623643 lt!623645 mask!2840))))

(assert (=> d!152423 (validMask!0 mask!2840)))

(assert (=> d!152423 (= (seekEntryOrOpen!0 lt!623643 lt!623645 mask!2840) lt!623812)))

(declare-fun b!1414950 () Bool)

(declare-fun c!131378 () Bool)

(declare-fun lt!623813 () (_ BitVec 64))

(assert (=> b!1414950 (= c!131378 (= lt!623813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800839 () SeekEntryResult!10951)

(assert (=> b!1414950 (= e!800839 e!800838)))

(declare-fun b!1414951 () Bool)

(assert (=> b!1414951 (= e!800839 (Found!10951 (index!46194 lt!623814)))))

(declare-fun b!1414952 () Bool)

(assert (=> b!1414952 (= e!800837 e!800839)))

(assert (=> b!1414952 (= lt!623813 (select (arr!46618 lt!623645) (index!46194 lt!623814)))))

(declare-fun c!131377 () Bool)

(assert (=> b!1414952 (= c!131377 (= lt!623813 lt!623643))))

(assert (= (and d!152423 c!131376) b!1414947))

(assert (= (and d!152423 (not c!131376)) b!1414952))

(assert (= (and b!1414952 c!131377) b!1414951))

(assert (= (and b!1414952 (not c!131377)) b!1414950))

(assert (= (and b!1414950 c!131378) b!1414948))

(assert (= (and b!1414950 (not c!131378)) b!1414949))

(declare-fun m!1305179 () Bool)

(assert (=> b!1414949 m!1305179))

(declare-fun m!1305181 () Bool)

(assert (=> d!152423 m!1305181))

(assert (=> d!152423 m!1304939))

(assert (=> d!152423 m!1304939))

(assert (=> d!152423 m!1304941))

(assert (=> d!152423 m!1304923))

(declare-fun m!1305183 () Bool)

(assert (=> d!152423 m!1305183))

(declare-fun m!1305185 () Bool)

(assert (=> d!152423 m!1305185))

(declare-fun m!1305187 () Bool)

(assert (=> b!1414952 m!1305187))

(assert (=> b!1414621 d!152423))

(declare-fun b!1414986 () Bool)

(declare-fun e!800860 () SeekEntryResult!10951)

(assert (=> b!1414986 (= e!800860 (MissingVacant!10951 (index!46194 lt!623646)))))

(declare-fun b!1414987 () Bool)

(declare-fun e!800861 () SeekEntryResult!10951)

(declare-fun e!800859 () SeekEntryResult!10951)

(assert (=> b!1414987 (= e!800861 e!800859)))

(declare-fun c!131393 () Bool)

(declare-fun lt!623833 () (_ BitVec 64))

(assert (=> b!1414987 (= c!131393 (= lt!623833 (select (arr!46618 a!2901) j!112)))))

(declare-fun lt!623832 () SeekEntryResult!10951)

(declare-fun d!152425 () Bool)

(assert (=> d!152425 (and (or (is-Undefined!10951 lt!623832) (not (is-Found!10951 lt!623832)) (and (bvsge (index!46193 lt!623832) #b00000000000000000000000000000000) (bvslt (index!46193 lt!623832) (size!47169 lt!623645)))) (or (is-Undefined!10951 lt!623832) (is-Found!10951 lt!623832) (not (is-MissingVacant!10951 lt!623832)) (not (= (index!46195 lt!623832) (index!46194 lt!623646))) (and (bvsge (index!46195 lt!623832) #b00000000000000000000000000000000) (bvslt (index!46195 lt!623832) (size!47169 lt!623645)))) (or (is-Undefined!10951 lt!623832) (ite (is-Found!10951 lt!623832) (= (select (arr!46618 lt!623645) (index!46193 lt!623832)) (select (arr!46618 a!2901) j!112)) (and (is-MissingVacant!10951 lt!623832) (= (index!46195 lt!623832) (index!46194 lt!623646)) (= (select (arr!46618 lt!623645) (index!46195 lt!623832)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152425 (= lt!623832 e!800861)))

(declare-fun c!131394 () Bool)

(assert (=> d!152425 (= c!131394 (bvsge (x!127805 lt!623646) #b01111111111111111111111111111110))))

(assert (=> d!152425 (= lt!623833 (select (arr!46618 lt!623645) (index!46194 lt!623646)))))

(assert (=> d!152425 (validMask!0 mask!2840)))

(assert (=> d!152425 (= (seekKeyOrZeroReturnVacant!0 (x!127805 lt!623646) (index!46194 lt!623646) (index!46194 lt!623646) (select (arr!46618 a!2901) j!112) lt!623645 mask!2840) lt!623832)))

(declare-fun b!1414988 () Bool)

(declare-fun c!131392 () Bool)

(assert (=> b!1414988 (= c!131392 (= lt!623833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414988 (= e!800859 e!800860)))

(declare-fun b!1414989 () Bool)

(assert (=> b!1414989 (= e!800861 Undefined!10951)))

(declare-fun b!1414990 () Bool)

(assert (=> b!1414990 (= e!800859 (Found!10951 (index!46194 lt!623646)))))

(declare-fun b!1414991 () Bool)

(assert (=> b!1414991 (= e!800860 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127805 lt!623646) #b00000000000000000000000000000001) (nextIndex!0 (index!46194 lt!623646) (x!127805 lt!623646) mask!2840) (index!46194 lt!623646) (select (arr!46618 a!2901) j!112) lt!623645 mask!2840))))

(assert (= (and d!152425 c!131394) b!1414989))

(assert (= (and d!152425 (not c!131394)) b!1414987))

(assert (= (and b!1414987 c!131393) b!1414990))

(assert (= (and b!1414987 (not c!131393)) b!1414988))

(assert (= (and b!1414988 c!131392) b!1414986))

(assert (= (and b!1414988 (not c!131392)) b!1414991))

(declare-fun m!1305215 () Bool)

(assert (=> d!152425 m!1305215))

(declare-fun m!1305217 () Bool)

(assert (=> d!152425 m!1305217))

(declare-fun m!1305219 () Bool)

(assert (=> d!152425 m!1305219))

(assert (=> d!152425 m!1304923))

(declare-fun m!1305221 () Bool)

(assert (=> b!1414991 m!1305221))

(assert (=> b!1414991 m!1305221))

(assert (=> b!1414991 m!1304905))

(declare-fun m!1305223 () Bool)

(assert (=> b!1414991 m!1305223))

(assert (=> b!1414621 d!152425))

(declare-fun b!1414992 () Bool)

(declare-fun e!800862 () Bool)

(declare-fun call!67178 () Bool)

(assert (=> b!1414992 (= e!800862 call!67178)))

(declare-fun b!1414994 () Bool)

(declare-fun e!800863 () Bool)

(declare-fun e!800864 () Bool)

(assert (=> b!1414994 (= e!800863 e!800864)))

(declare-fun c!131395 () Bool)

(assert (=> b!1414994 (= c!131395 (validKeyInArray!0 (select (arr!46618 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67175 () Bool)

(assert (=> bm!67175 (= call!67178 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414995 () Bool)

(assert (=> b!1414995 (= e!800864 call!67178)))

(declare-fun d!152437 () Bool)

(declare-fun res!951166 () Bool)

(assert (=> d!152437 (=> res!951166 e!800863)))

(assert (=> d!152437 (= res!951166 (bvsge #b00000000000000000000000000000000 (size!47169 a!2901)))))

(assert (=> d!152437 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800863)))

(declare-fun b!1414993 () Bool)

(assert (=> b!1414993 (= e!800864 e!800862)))

(declare-fun lt!623835 () (_ BitVec 64))

(assert (=> b!1414993 (= lt!623835 (select (arr!46618 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623834 () Unit!47826)

(assert (=> b!1414993 (= lt!623834 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623835 #b00000000000000000000000000000000))))

(assert (=> b!1414993 (arrayContainsKey!0 a!2901 lt!623835 #b00000000000000000000000000000000)))

(declare-fun lt!623836 () Unit!47826)

(assert (=> b!1414993 (= lt!623836 lt!623834)))

(declare-fun res!951165 () Bool)

(assert (=> b!1414993 (= res!951165 (= (seekEntryOrOpen!0 (select (arr!46618 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10951 #b00000000000000000000000000000000)))))

(assert (=> b!1414993 (=> (not res!951165) (not e!800862))))

(assert (= (and d!152437 (not res!951166)) b!1414994))

(assert (= (and b!1414994 c!131395) b!1414993))

(assert (= (and b!1414994 (not c!131395)) b!1414995))

(assert (= (and b!1414993 res!951165) b!1414992))

(assert (= (or b!1414992 b!1414995) bm!67175))

(assert (=> b!1414994 m!1305099))

(assert (=> b!1414994 m!1305099))

(assert (=> b!1414994 m!1305101))

(declare-fun m!1305225 () Bool)

(assert (=> bm!67175 m!1305225))

(assert (=> b!1414993 m!1305099))

(declare-fun m!1305227 () Bool)

(assert (=> b!1414993 m!1305227))

(declare-fun m!1305229 () Bool)

(assert (=> b!1414993 m!1305229))

(assert (=> b!1414993 m!1305099))

(declare-fun m!1305231 () Bool)

(assert (=> b!1414993 m!1305231))

(assert (=> b!1414626 d!152437))

(push 1)

(assert (not b!1414991))

(assert (not bm!67158))

(assert (not bm!67164))

(assert (not b!1414938))

(assert (not b!1414850))

(assert (not b!1414993))

(assert (not b!1414994))

(assert (not d!152421))

(assert (not d!152423))

(assert (not b!1414848))

(assert (not d!152417))

(assert (not d!152359))

(assert (not b!1414737))

(assert (not d!152385))

(assert (not b!1414736))

(assert (not b!1414895))

(assert (not b!1414804))

(assert (not d!152355))

(assert (not d!152425))

(assert (not b!1414949))

(assert (not b!1414849))

(assert (not bm!67175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

