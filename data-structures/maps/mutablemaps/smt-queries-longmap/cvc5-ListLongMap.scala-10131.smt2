; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119482 () Bool)

(assert start!119482)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95184 0))(
  ( (array!95185 (arr!45949 (Array (_ BitVec 32) (_ BitVec 64))) (size!46500 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95184)

(declare-fun e!788239 () Bool)

(declare-fun b!1391943 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10288 0))(
  ( (MissingZero!10288 (index!43522 (_ BitVec 32))) (Found!10288 (index!43523 (_ BitVec 32))) (Intermediate!10288 (undefined!11100 Bool) (index!43524 (_ BitVec 32)) (x!125211 (_ BitVec 32))) (Undefined!10288) (MissingVacant!10288 (index!43525 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95184 (_ BitVec 32)) SeekEntryResult!10288)

(assert (=> b!1391943 (= e!788239 (= (seekEntryOrOpen!0 (select (arr!45949 a!2901) j!112) a!2901 mask!2840) (Found!10288 j!112)))))

(declare-fun b!1391944 () Bool)

(declare-fun e!788240 () Bool)

(declare-fun e!788238 () Bool)

(assert (=> b!1391944 (= e!788240 (not e!788238))))

(declare-fun res!931779 () Bool)

(assert (=> b!1391944 (=> res!931779 e!788238)))

(declare-fun lt!611376 () SeekEntryResult!10288)

(assert (=> b!1391944 (= res!931779 (or (not (is-Intermediate!10288 lt!611376)) (undefined!11100 lt!611376)))))

(assert (=> b!1391944 e!788239))

(declare-fun res!931776 () Bool)

(assert (=> b!1391944 (=> (not res!931776) (not e!788239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95184 (_ BitVec 32)) Bool)

(assert (=> b!1391944 (= res!931776 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46530 0))(
  ( (Unit!46531) )
))
(declare-fun lt!611377 () Unit!46530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46530)

(assert (=> b!1391944 (= lt!611377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95184 (_ BitVec 32)) SeekEntryResult!10288)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391944 (= lt!611376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) (select (arr!45949 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391945 () Bool)

(declare-fun res!931775 () Bool)

(assert (=> b!1391945 (=> (not res!931775) (not e!788240))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391945 (= res!931775 (and (= (size!46500 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46500 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46500 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391946 () Bool)

(declare-fun res!931772 () Bool)

(assert (=> b!1391946 (=> (not res!931772) (not e!788240))))

(assert (=> b!1391946 (= res!931772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391947 () Bool)

(declare-fun res!931773 () Bool)

(assert (=> b!1391947 (=> (not res!931773) (not e!788240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391947 (= res!931773 (validKeyInArray!0 (select (arr!45949 a!2901) j!112)))))

(declare-fun b!1391948 () Bool)

(declare-fun res!931774 () Bool)

(assert (=> b!1391948 (=> (not res!931774) (not e!788240))))

(declare-datatypes ((List!32648 0))(
  ( (Nil!32645) (Cons!32644 (h!33871 (_ BitVec 64)) (t!47349 List!32648)) )
))
(declare-fun arrayNoDuplicates!0 (array!95184 (_ BitVec 32) List!32648) Bool)

(assert (=> b!1391948 (= res!931774 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32645))))

(declare-fun res!931777 () Bool)

(assert (=> start!119482 (=> (not res!931777) (not e!788240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119482 (= res!931777 (validMask!0 mask!2840))))

(assert (=> start!119482 e!788240))

(assert (=> start!119482 true))

(declare-fun array_inv!34894 (array!95184) Bool)

(assert (=> start!119482 (array_inv!34894 a!2901)))

(declare-fun b!1391949 () Bool)

(declare-fun lt!611375 () (_ BitVec 32))

(assert (=> b!1391949 (= e!788238 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge lt!611375 #b00000000000000000000000000000000) (bvslt lt!611375 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(assert (=> b!1391949 (= lt!611375 (toIndex!0 (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391950 () Bool)

(declare-fun res!931778 () Bool)

(assert (=> b!1391950 (=> (not res!931778) (not e!788240))))

(assert (=> b!1391950 (= res!931778 (validKeyInArray!0 (select (arr!45949 a!2901) i!1037)))))

(assert (= (and start!119482 res!931777) b!1391945))

(assert (= (and b!1391945 res!931775) b!1391950))

(assert (= (and b!1391950 res!931778) b!1391947))

(assert (= (and b!1391947 res!931773) b!1391946))

(assert (= (and b!1391946 res!931772) b!1391948))

(assert (= (and b!1391948 res!931774) b!1391944))

(assert (= (and b!1391944 res!931776) b!1391943))

(assert (= (and b!1391944 (not res!931779)) b!1391949))

(declare-fun m!1277783 () Bool)

(assert (=> b!1391944 m!1277783))

(declare-fun m!1277785 () Bool)

(assert (=> b!1391944 m!1277785))

(assert (=> b!1391944 m!1277783))

(declare-fun m!1277787 () Bool)

(assert (=> b!1391944 m!1277787))

(assert (=> b!1391944 m!1277785))

(assert (=> b!1391944 m!1277783))

(declare-fun m!1277789 () Bool)

(assert (=> b!1391944 m!1277789))

(declare-fun m!1277791 () Bool)

(assert (=> b!1391944 m!1277791))

(declare-fun m!1277793 () Bool)

(assert (=> b!1391950 m!1277793))

(assert (=> b!1391950 m!1277793))

(declare-fun m!1277795 () Bool)

(assert (=> b!1391950 m!1277795))

(declare-fun m!1277797 () Bool)

(assert (=> start!119482 m!1277797))

(declare-fun m!1277799 () Bool)

(assert (=> start!119482 m!1277799))

(declare-fun m!1277801 () Bool)

(assert (=> b!1391949 m!1277801))

(declare-fun m!1277803 () Bool)

(assert (=> b!1391949 m!1277803))

(assert (=> b!1391949 m!1277803))

(declare-fun m!1277805 () Bool)

(assert (=> b!1391949 m!1277805))

(assert (=> b!1391943 m!1277783))

(assert (=> b!1391943 m!1277783))

(declare-fun m!1277807 () Bool)

(assert (=> b!1391943 m!1277807))

(declare-fun m!1277809 () Bool)

(assert (=> b!1391946 m!1277809))

(declare-fun m!1277811 () Bool)

(assert (=> b!1391948 m!1277811))

(assert (=> b!1391947 m!1277783))

(assert (=> b!1391947 m!1277783))

(declare-fun m!1277813 () Bool)

(assert (=> b!1391947 m!1277813))

(push 1)

(assert (not b!1391947))

(assert (not b!1391946))

(assert (not b!1391943))

(assert (not b!1391949))

(assert (not start!119482))

(assert (not b!1391944))

(assert (not b!1391948))

(assert (not b!1391950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150355 () Bool)

(declare-fun lt!611401 () (_ BitVec 32))

(declare-fun lt!611400 () (_ BitVec 32))

(assert (=> d!150355 (= lt!611401 (bvmul (bvxor lt!611400 (bvlshr lt!611400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150355 (= lt!611400 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150355 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931837 (let ((h!33874 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125214 (bvmul (bvxor h!33874 (bvlshr h!33874 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125214 (bvlshr x!125214 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931837 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931837 #b00000000000000000000000000000000))))))

(assert (=> d!150355 (= (toIndex!0 (select (store (arr!45949 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611401 (bvlshr lt!611401 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391949 d!150355))

(declare-fun b!1392034 () Bool)

(declare-fun e!788293 () Bool)

(declare-fun e!788292 () Bool)

(assert (=> b!1392034 (= e!788293 e!788292)))

(declare-fun lt!611419 () (_ BitVec 64))

(assert (=> b!1392034 (= lt!611419 (select (arr!45949 a!2901) j!112))))

(declare-fun lt!611418 () Unit!46530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95184 (_ BitVec 64) (_ BitVec 32)) Unit!46530)

(assert (=> b!1392034 (= lt!611418 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611419 j!112))))

(declare-fun arrayContainsKey!0 (array!95184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392034 (arrayContainsKey!0 a!2901 lt!611419 #b00000000000000000000000000000000)))

(declare-fun lt!611417 () Unit!46530)

(assert (=> b!1392034 (= lt!611417 lt!611418)))

(declare-fun res!931848 () Bool)

(assert (=> b!1392034 (= res!931848 (= (seekEntryOrOpen!0 (select (arr!45949 a!2901) j!112) a!2901 mask!2840) (Found!10288 j!112)))))

(assert (=> b!1392034 (=> (not res!931848) (not e!788292))))

(declare-fun b!1392035 () Bool)

(declare-fun call!66768 () Bool)

(assert (=> b!1392035 (= e!788292 call!66768)))

(declare-fun d!150363 () Bool)

(declare-fun res!931849 () Bool)

(declare-fun e!788294 () Bool)

(assert (=> d!150363 (=> res!931849 e!788294)))

(assert (=> d!150363 (= res!931849 (bvsge j!112 (size!46500 a!2901)))))

(assert (=> d!150363 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788294)))

(declare-fun b!1392036 () Bool)

(assert (=> b!1392036 (= e!788293 call!66768)))

(declare-fun b!1392037 () Bool)

(assert (=> b!1392037 (= e!788294 e!788293)))

(declare-fun c!129545 () Bool)

(assert (=> b!1392037 (= c!129545 (validKeyInArray!0 (select (arr!45949 a!2901) j!112)))))

(declare-fun bm!66765 () Bool)

(assert (=> bm!66765 (= call!66768 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150363 (not res!931849)) b!1392037))

(assert (= (and b!1392037 c!129545) b!1392034))

(assert (= (and b!1392037 (not c!129545)) b!1392036))

(assert (= (and b!1392034 res!931848) b!1392035))

(assert (= (or b!1392035 b!1392036) bm!66765))

(assert (=> b!1392034 m!1277783))

(declare-fun m!1277893 () Bool)

(assert (=> b!1392034 m!1277893))

(declare-fun m!1277895 () Bool)

(assert (=> b!1392034 m!1277895))

(assert (=> b!1392034 m!1277783))

(assert (=> b!1392034 m!1277807))

(assert (=> b!1392037 m!1277783))

(assert (=> b!1392037 m!1277783))

(assert (=> b!1392037 m!1277813))

(declare-fun m!1277897 () Bool)

(assert (=> bm!66765 m!1277897))

(assert (=> b!1391944 d!150363))

(declare-fun d!150367 () Bool)

(assert (=> d!150367 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611425 () Unit!46530)

(declare-fun choose!38 (array!95184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46530)

(assert (=> d!150367 (= lt!611425 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150367 (validMask!0 mask!2840)))

(assert (=> d!150367 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611425)))

(declare-fun bs!40494 () Bool)

(assert (= bs!40494 d!150367))

(assert (=> bs!40494 m!1277791))

(declare-fun m!1277901 () Bool)

(assert (=> bs!40494 m!1277901))

(assert (=> bs!40494 m!1277797))

(assert (=> b!1391944 d!150367))

(declare-fun b!1392101 () Bool)

(declare-fun e!788330 () SeekEntryResult!10288)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392101 (= e!788330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45949 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392102 () Bool)

(declare-fun e!788332 () SeekEntryResult!10288)

(assert (=> b!1392102 (= e!788332 e!788330)))

(declare-fun lt!611446 () (_ BitVec 64))

(declare-fun c!129571 () Bool)

(assert (=> b!1392102 (= c!129571 (or (= lt!611446 (select (arr!45949 a!2901) j!112)) (= (bvadd lt!611446 lt!611446) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!150371 () Bool)

(declare-fun e!788333 () Bool)

(assert (=> d!150371 e!788333))

(declare-fun c!129570 () Bool)

(declare-fun lt!611445 () SeekEntryResult!10288)

(assert (=> d!150371 (= c!129570 (and (is-Intermediate!10288 lt!611445) (undefined!11100 lt!611445)))))

(assert (=> d!150371 (= lt!611445 e!788332)))

(declare-fun c!129572 () Bool)

(assert (=> d!150371 (= c!129572 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150371 (= lt!611446 (select (arr!45949 a!2901) (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840)))))

(assert (=> d!150371 (validMask!0 mask!2840)))

(assert (=> d!150371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) (select (arr!45949 a!2901) j!112) a!2901 mask!2840) lt!611445)))

(declare-fun b!1392103 () Bool)

(assert (=> b!1392103 (and (bvsge (index!43524 lt!611445) #b00000000000000000000000000000000) (bvslt (index!43524 lt!611445) (size!46500 a!2901)))))

(declare-fun res!931866 () Bool)

(assert (=> b!1392103 (= res!931866 (= (select (arr!45949 a!2901) (index!43524 lt!611445)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788331 () Bool)

(assert (=> b!1392103 (=> res!931866 e!788331)))

(declare-fun b!1392104 () Bool)

(assert (=> b!1392104 (and (bvsge (index!43524 lt!611445) #b00000000000000000000000000000000) (bvslt (index!43524 lt!611445) (size!46500 a!2901)))))

(declare-fun res!931865 () Bool)

(assert (=> b!1392104 (= res!931865 (= (select (arr!45949 a!2901) (index!43524 lt!611445)) (select (arr!45949 a!2901) j!112)))))

(assert (=> b!1392104 (=> res!931865 e!788331)))

(declare-fun e!788329 () Bool)

(assert (=> b!1392104 (= e!788329 e!788331)))

(declare-fun b!1392105 () Bool)

(assert (=> b!1392105 (= e!788333 (bvsge (x!125211 lt!611445) #b01111111111111111111111111111110))))

(declare-fun b!1392106 () Bool)

(assert (=> b!1392106 (and (bvsge (index!43524 lt!611445) #b00000000000000000000000000000000) (bvslt (index!43524 lt!611445) (size!46500 a!2901)))))

(assert (=> b!1392106 (= e!788331 (= (select (arr!45949 a!2901) (index!43524 lt!611445)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392107 () Bool)

(assert (=> b!1392107 (= e!788332 (Intermediate!10288 true (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392108 () Bool)

(assert (=> b!1392108 (= e!788330 (Intermediate!10288 false (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392109 () Bool)

(assert (=> b!1392109 (= e!788333 e!788329)))

(declare-fun res!931867 () Bool)

(assert (=> b!1392109 (= res!931867 (and (is-Intermediate!10288 lt!611445) (not (undefined!11100 lt!611445)) (bvslt (x!125211 lt!611445) #b01111111111111111111111111111110) (bvsge (x!125211 lt!611445) #b00000000000000000000000000000000) (bvsge (x!125211 lt!611445) #b00000000000000000000000000000000)))))

(assert (=> b!1392109 (=> (not res!931867) (not e!788329))))

(assert (= (and d!150371 c!129572) b!1392107))

(assert (= (and d!150371 (not c!129572)) b!1392102))

(assert (= (and b!1392102 c!129571) b!1392108))

(assert (= (and b!1392102 (not c!129571)) b!1392101))

(assert (= (and d!150371 c!129570) b!1392105))

(assert (= (and d!150371 (not c!129570)) b!1392109))

(assert (= (and b!1392109 res!931867) b!1392104))

(assert (= (and b!1392104 (not res!931865)) b!1392103))

(assert (= (and b!1392103 (not res!931866)) b!1392106))

(declare-fun m!1277921 () Bool)

(assert (=> b!1392103 m!1277921))

(assert (=> d!150371 m!1277785))

(declare-fun m!1277923 () Bool)

(assert (=> d!150371 m!1277923))

(assert (=> d!150371 m!1277797))

(assert (=> b!1392104 m!1277921))

(assert (=> b!1392101 m!1277785))

(declare-fun m!1277925 () Bool)

(assert (=> b!1392101 m!1277925))

(assert (=> b!1392101 m!1277925))

(assert (=> b!1392101 m!1277783))

(declare-fun m!1277927 () Bool)

(assert (=> b!1392101 m!1277927))

(assert (=> b!1392106 m!1277921))

(assert (=> b!1391944 d!150371))

(declare-fun d!150383 () Bool)

(declare-fun lt!611448 () (_ BitVec 32))

(declare-fun lt!611447 () (_ BitVec 32))

(assert (=> d!150383 (= lt!611448 (bvmul (bvxor lt!611447 (bvlshr lt!611447 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150383 (= lt!611447 ((_ extract 31 0) (bvand (bvxor (select (arr!45949 a!2901) j!112) (bvlshr (select (arr!45949 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150383 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!931837 (let ((h!33874 ((_ extract 31 0) (bvand (bvxor (select (arr!45949 a!2901) j!112) (bvlshr (select (arr!45949 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125214 (bvmul (bvxor h!33874 (bvlshr h!33874 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125214 (bvlshr x!125214 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!931837 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!931837 #b00000000000000000000000000000000))))))

(assert (=> d!150383 (= (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) (bvand (bvxor lt!611448 (bvlshr lt!611448 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1391944 d!150383))

(declare-fun b!1392142 () Bool)

(declare-fun c!129587 () Bool)

(declare-fun lt!611488 () (_ BitVec 64))

(assert (=> b!1392142 (= c!129587 (= lt!611488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788355 () SeekEntryResult!10288)

(declare-fun e!788354 () SeekEntryResult!10288)

(assert (=> b!1392142 (= e!788355 e!788354)))

(declare-fun b!1392143 () Bool)

(declare-fun e!788356 () SeekEntryResult!10288)

(assert (=> b!1392143 (= e!788356 e!788355)))

(declare-fun lt!611486 () SeekEntryResult!10288)

(assert (=> b!1392143 (= lt!611488 (select (arr!45949 a!2901) (index!43524 lt!611486)))))

(declare-fun c!129586 () Bool)

(assert (=> b!1392143 (= c!129586 (= lt!611488 (select (arr!45949 a!2901) j!112)))))

(declare-fun b!1392144 () Bool)

(assert (=> b!1392144 (= e!788356 Undefined!10288)))

(declare-fun b!1392145 () Bool)

(assert (=> b!1392145 (= e!788354 (MissingZero!10288 (index!43524 lt!611486)))))

(declare-fun b!1392147 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95184 (_ BitVec 32)) SeekEntryResult!10288)

(assert (=> b!1392147 (= e!788354 (seekKeyOrZeroReturnVacant!0 (x!125211 lt!611486) (index!43524 lt!611486) (index!43524 lt!611486) (select (arr!45949 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150385 () Bool)

(declare-fun lt!611487 () SeekEntryResult!10288)

(assert (=> d!150385 (and (or (is-Undefined!10288 lt!611487) (not (is-Found!10288 lt!611487)) (and (bvsge (index!43523 lt!611487) #b00000000000000000000000000000000) (bvslt (index!43523 lt!611487) (size!46500 a!2901)))) (or (is-Undefined!10288 lt!611487) (is-Found!10288 lt!611487) (not (is-MissingZero!10288 lt!611487)) (and (bvsge (index!43522 lt!611487) #b00000000000000000000000000000000) (bvslt (index!43522 lt!611487) (size!46500 a!2901)))) (or (is-Undefined!10288 lt!611487) (is-Found!10288 lt!611487) (is-MissingZero!10288 lt!611487) (not (is-MissingVacant!10288 lt!611487)) (and (bvsge (index!43525 lt!611487) #b00000000000000000000000000000000) (bvslt (index!43525 lt!611487) (size!46500 a!2901)))) (or (is-Undefined!10288 lt!611487) (ite (is-Found!10288 lt!611487) (= (select (arr!45949 a!2901) (index!43523 lt!611487)) (select (arr!45949 a!2901) j!112)) (ite (is-MissingZero!10288 lt!611487) (= (select (arr!45949 a!2901) (index!43522 lt!611487)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10288 lt!611487) (= (select (arr!45949 a!2901) (index!43525 lt!611487)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150385 (= lt!611487 e!788356)))

(declare-fun c!129585 () Bool)

(assert (=> d!150385 (= c!129585 (and (is-Intermediate!10288 lt!611486) (undefined!11100 lt!611486)))))

(assert (=> d!150385 (= lt!611486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45949 a!2901) j!112) mask!2840) (select (arr!45949 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150385 (validMask!0 mask!2840)))

(assert (=> d!150385 (= (seekEntryOrOpen!0 (select (arr!45949 a!2901) j!112) a!2901 mask!2840) lt!611487)))

(declare-fun b!1392146 () Bool)

(assert (=> b!1392146 (= e!788355 (Found!10288 (index!43524 lt!611486)))))

(assert (= (and d!150385 c!129585) b!1392144))

(assert (= (and d!150385 (not c!129585)) b!1392143))

(assert (= (and b!1392143 c!129586) b!1392146))

(assert (= (and b!1392143 (not c!129586)) b!1392142))

(assert (= (and b!1392142 c!129587) b!1392145))

(assert (= (and b!1392142 (not c!129587)) b!1392147))

(declare-fun m!1277949 () Bool)

(assert (=> b!1392143 m!1277949))

(assert (=> b!1392147 m!1277783))

(declare-fun m!1277951 () Bool)

(assert (=> b!1392147 m!1277951))

(declare-fun m!1277953 () Bool)

(assert (=> d!150385 m!1277953))

(assert (=> d!150385 m!1277797))

(assert (=> d!150385 m!1277783))

(assert (=> d!150385 m!1277785))

(declare-fun m!1277955 () Bool)

(assert (=> d!150385 m!1277955))

(declare-fun m!1277957 () Bool)

(assert (=> d!150385 m!1277957))

(assert (=> d!150385 m!1277785))

(assert (=> d!150385 m!1277783))

(assert (=> d!150385 m!1277789))

(assert (=> b!1391943 d!150385))

(declare-fun d!150401 () Bool)

(assert (=> d!150401 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119482 d!150401))

(declare-fun d!150407 () Bool)

(assert (=> d!150407 (= (array_inv!34894 a!2901) (bvsge (size!46500 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119482 d!150407))

(declare-fun d!150409 () Bool)

(assert (=> d!150409 (= (validKeyInArray!0 (select (arr!45949 a!2901) i!1037)) (and (not (= (select (arr!45949 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45949 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391950 d!150409))

(declare-fun b!1392180 () Bool)

(declare-fun e!788376 () Bool)

(declare-fun e!788375 () Bool)

(assert (=> b!1392180 (= e!788376 e!788375)))

(declare-fun lt!611505 () (_ BitVec 64))

(assert (=> b!1392180 (= lt!611505 (select (arr!45949 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611504 () Unit!46530)

(assert (=> b!1392180 (= lt!611504 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611505 #b00000000000000000000000000000000))))

(assert (=> b!1392180 (arrayContainsKey!0 a!2901 lt!611505 #b00000000000000000000000000000000)))

(declare-fun lt!611503 () Unit!46530)

(assert (=> b!1392180 (= lt!611503 lt!611504)))

(declare-fun res!931882 () Bool)

(assert (=> b!1392180 (= res!931882 (= (seekEntryOrOpen!0 (select (arr!45949 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10288 #b00000000000000000000000000000000)))))

(assert (=> b!1392180 (=> (not res!931882) (not e!788375))))

(declare-fun b!1392181 () Bool)

(declare-fun call!66774 () Bool)

(assert (=> b!1392181 (= e!788375 call!66774)))

(declare-fun d!150411 () Bool)

(declare-fun res!931883 () Bool)

(declare-fun e!788377 () Bool)

(assert (=> d!150411 (=> res!931883 e!788377)))

(assert (=> d!150411 (= res!931883 (bvsge #b00000000000000000000000000000000 (size!46500 a!2901)))))

(assert (=> d!150411 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788377)))

(declare-fun b!1392182 () Bool)

(assert (=> b!1392182 (= e!788376 call!66774)))

(declare-fun b!1392183 () Bool)

(assert (=> b!1392183 (= e!788377 e!788376)))

(declare-fun c!129602 () Bool)

(assert (=> b!1392183 (= c!129602 (validKeyInArray!0 (select (arr!45949 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66771 () Bool)

(assert (=> bm!66771 (= call!66774 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150411 (not res!931883)) b!1392183))

(assert (= (and b!1392183 c!129602) b!1392180))

(assert (= (and b!1392183 (not c!129602)) b!1392182))

(assert (= (and b!1392180 res!931882) b!1392181))

(assert (= (or b!1392181 b!1392182) bm!66771))

(declare-fun m!1277977 () Bool)

(assert (=> b!1392180 m!1277977))

(declare-fun m!1277979 () Bool)

(assert (=> b!1392180 m!1277979))

(declare-fun m!1277981 () Bool)

(assert (=> b!1392180 m!1277981))

(assert (=> b!1392180 m!1277977))

(declare-fun m!1277983 () Bool)

(assert (=> b!1392180 m!1277983))

(assert (=> b!1392183 m!1277977))

(assert (=> b!1392183 m!1277977))

(declare-fun m!1277985 () Bool)

(assert (=> b!1392183 m!1277985))

(declare-fun m!1277987 () Bool)

(assert (=> bm!66771 m!1277987))

(assert (=> b!1391946 d!150411))

(declare-fun b!1392207 () Bool)

(declare-fun e!788396 () Bool)

(declare-fun e!788393 () Bool)

(assert (=> b!1392207 (= e!788396 e!788393)))

(declare-fun res!931897 () Bool)

(assert (=> b!1392207 (=> (not res!931897) (not e!788393))))

(declare-fun e!788394 () Bool)

(assert (=> b!1392207 (= res!931897 (not e!788394))))

(declare-fun res!931899 () Bool)

(assert (=> b!1392207 (=> (not res!931899) (not e!788394))))

(assert (=> b!1392207 (= res!931899 (validKeyInArray!0 (select (arr!45949 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392208 () Bool)

(declare-fun e!788395 () Bool)

(assert (=> b!1392208 (= e!788393 e!788395)))

(declare-fun c!129608 () Bool)

(assert (=> b!1392208 (= c!129608 (validKeyInArray!0 (select (arr!45949 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392209 () Bool)

(declare-fun contains!9782 (List!32648 (_ BitVec 64)) Bool)

(assert (=> b!1392209 (= e!788394 (contains!9782 Nil!32645 (select (arr!45949 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150413 () Bool)

(declare-fun res!931898 () Bool)

(assert (=> d!150413 (=> res!931898 e!788396)))

(assert (=> d!150413 (= res!931898 (bvsge #b00000000000000000000000000000000 (size!46500 a!2901)))))

(assert (=> d!150413 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32645) e!788396)))

(declare-fun bm!66774 () Bool)

(declare-fun call!66777 () Bool)

(assert (=> bm!66774 (= call!66777 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129608 (Cons!32644 (select (arr!45949 a!2901) #b00000000000000000000000000000000) Nil!32645) Nil!32645)))))

(declare-fun b!1392210 () Bool)

(assert (=> b!1392210 (= e!788395 call!66777)))

(declare-fun b!1392211 () Bool)

(assert (=> b!1392211 (= e!788395 call!66777)))

(assert (= (and d!150413 (not res!931898)) b!1392207))

(assert (= (and b!1392207 res!931899) b!1392209))

(assert (= (and b!1392207 res!931897) b!1392208))

(assert (= (and b!1392208 c!129608) b!1392210))

(assert (= (and b!1392208 (not c!129608)) b!1392211))

(assert (= (or b!1392210 b!1392211) bm!66774))

(assert (=> b!1392207 m!1277977))

(assert (=> b!1392207 m!1277977))

(assert (=> b!1392207 m!1277985))

(assert (=> b!1392208 m!1277977))

(assert (=> b!1392208 m!1277977))

(assert (=> b!1392208 m!1277985))

(assert (=> b!1392209 m!1277977))

(assert (=> b!1392209 m!1277977))

(declare-fun m!1277997 () Bool)

(assert (=> b!1392209 m!1277997))

(assert (=> bm!66774 m!1277977))

(declare-fun m!1277999 () Bool)

(assert (=> bm!66774 m!1277999))

(assert (=> b!1391948 d!150413))

(declare-fun d!150419 () Bool)

(assert (=> d!150419 (= (validKeyInArray!0 (select (arr!45949 a!2901) j!112)) (and (not (= (select (arr!45949 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45949 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391947 d!150419))

(push 1)

(assert (not d!150385))

(assert (not b!1392209))

(assert (not bm!66774))

(assert (not b!1392101))

(assert (not bm!66771))

(assert (not d!150367))

(assert (not b!1392034))

(assert (not b!1392180))

(assert (not b!1392207))

(assert (not b!1392208))

(assert (not bm!66765))

(assert (not d!150371))

(assert (not b!1392183))

(assert (not b!1392147))

(assert (not b!1392037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

