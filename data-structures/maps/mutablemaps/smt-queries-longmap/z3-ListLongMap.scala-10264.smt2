; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120732 () Bool)

(assert start!120732)

(declare-fun b!1404676 () Bool)

(declare-fun res!943153 () Bool)

(declare-fun e!795201 () Bool)

(assert (=> b!1404676 (=> (not res!943153) (not e!795201))))

(declare-datatypes ((array!96008 0))(
  ( (array!96009 (arr!46349 (Array (_ BitVec 32) (_ BitVec 64))) (size!46900 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96008)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404676 (= res!943153 (validKeyInArray!0 (select (arr!46349 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1404677 () Bool)

(declare-fun e!795203 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10682 0))(
  ( (MissingZero!10682 (index!45104 (_ BitVec 32))) (Found!10682 (index!45105 (_ BitVec 32))) (Intermediate!10682 (undefined!11494 Bool) (index!45106 (_ BitVec 32)) (x!126726 (_ BitVec 32))) (Undefined!10682) (MissingVacant!10682 (index!45107 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96008 (_ BitVec 32)) SeekEntryResult!10682)

(assert (=> b!1404677 (= e!795203 (= (seekEntryOrOpen!0 (select (arr!46349 a!2901) j!112) a!2901 mask!2840) (Found!10682 j!112)))))

(declare-fun b!1404678 () Bool)

(declare-fun res!943154 () Bool)

(assert (=> b!1404678 (=> (not res!943154) (not e!795201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96008 (_ BitVec 32)) Bool)

(assert (=> b!1404678 (= res!943154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404679 () Bool)

(declare-fun res!943151 () Bool)

(assert (=> b!1404679 (=> (not res!943151) (not e!795201))))

(declare-datatypes ((List!33048 0))(
  ( (Nil!33045) (Cons!33044 (h!34295 (_ BitVec 64)) (t!47749 List!33048)) )
))
(declare-fun arrayNoDuplicates!0 (array!96008 (_ BitVec 32) List!33048) Bool)

(assert (=> b!1404679 (= res!943151 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33045))))

(declare-fun b!1404680 () Bool)

(declare-fun res!943152 () Bool)

(assert (=> b!1404680 (=> (not res!943152) (not e!795201))))

(assert (=> b!1404680 (= res!943152 (validKeyInArray!0 (select (arr!46349 a!2901) j!112)))))

(declare-fun b!1404681 () Bool)

(declare-fun res!943150 () Bool)

(assert (=> b!1404681 (=> (not res!943150) (not e!795201))))

(assert (=> b!1404681 (= res!943150 (and (= (size!46900 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46900 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46900 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943155 () Bool)

(assert (=> start!120732 (=> (not res!943155) (not e!795201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120732 (= res!943155 (validMask!0 mask!2840))))

(assert (=> start!120732 e!795201))

(assert (=> start!120732 true))

(declare-fun array_inv!35294 (array!96008) Bool)

(assert (=> start!120732 (array_inv!35294 a!2901)))

(declare-fun b!1404682 () Bool)

(declare-fun lt!618729 () SeekEntryResult!10682)

(get-info :version)

(assert (=> b!1404682 (= e!795201 (not (or (not ((_ is Intermediate!10682) lt!618729)) (not (undefined!11494 lt!618729)))))))

(assert (=> b!1404682 e!795203))

(declare-fun res!943149 () Bool)

(assert (=> b!1404682 (=> (not res!943149) (not e!795203))))

(assert (=> b!1404682 (= res!943149 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47288 0))(
  ( (Unit!47289) )
))
(declare-fun lt!618730 () Unit!47288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96008 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47288)

(assert (=> b!1404682 (= lt!618730 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96008 (_ BitVec 32)) SeekEntryResult!10682)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404682 (= lt!618729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) (select (arr!46349 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120732 res!943155) b!1404681))

(assert (= (and b!1404681 res!943150) b!1404676))

(assert (= (and b!1404676 res!943153) b!1404680))

(assert (= (and b!1404680 res!943152) b!1404678))

(assert (= (and b!1404678 res!943154) b!1404679))

(assert (= (and b!1404679 res!943151) b!1404682))

(assert (= (and b!1404682 res!943149) b!1404677))

(declare-fun m!1293511 () Bool)

(assert (=> b!1404682 m!1293511))

(declare-fun m!1293513 () Bool)

(assert (=> b!1404682 m!1293513))

(assert (=> b!1404682 m!1293511))

(declare-fun m!1293515 () Bool)

(assert (=> b!1404682 m!1293515))

(assert (=> b!1404682 m!1293513))

(assert (=> b!1404682 m!1293511))

(declare-fun m!1293517 () Bool)

(assert (=> b!1404682 m!1293517))

(declare-fun m!1293519 () Bool)

(assert (=> b!1404682 m!1293519))

(declare-fun m!1293521 () Bool)

(assert (=> b!1404676 m!1293521))

(assert (=> b!1404676 m!1293521))

(declare-fun m!1293523 () Bool)

(assert (=> b!1404676 m!1293523))

(assert (=> b!1404680 m!1293511))

(assert (=> b!1404680 m!1293511))

(declare-fun m!1293525 () Bool)

(assert (=> b!1404680 m!1293525))

(declare-fun m!1293527 () Bool)

(assert (=> start!120732 m!1293527))

(declare-fun m!1293529 () Bool)

(assert (=> start!120732 m!1293529))

(declare-fun m!1293531 () Bool)

(assert (=> b!1404678 m!1293531))

(assert (=> b!1404677 m!1293511))

(assert (=> b!1404677 m!1293511))

(declare-fun m!1293533 () Bool)

(assert (=> b!1404677 m!1293533))

(declare-fun m!1293535 () Bool)

(assert (=> b!1404679 m!1293535))

(check-sat (not start!120732) (not b!1404680) (not b!1404678) (not b!1404679) (not b!1404677) (not b!1404676) (not b!1404682))
(check-sat)
(get-model)

(declare-fun d!151247 () Bool)

(assert (=> d!151247 (= (validKeyInArray!0 (select (arr!46349 a!2901) i!1037)) (and (not (= (select (arr!46349 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46349 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404676 d!151247))

(declare-fun b!1404722 () Bool)

(declare-fun e!795229 () Bool)

(declare-fun call!66932 () Bool)

(assert (=> b!1404722 (= e!795229 call!66932)))

(declare-fun b!1404723 () Bool)

(declare-fun e!795227 () Bool)

(assert (=> b!1404723 (= e!795229 e!795227)))

(declare-fun lt!618744 () (_ BitVec 64))

(assert (=> b!1404723 (= lt!618744 (select (arr!46349 a!2901) j!112))))

(declare-fun lt!618745 () Unit!47288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96008 (_ BitVec 64) (_ BitVec 32)) Unit!47288)

(assert (=> b!1404723 (= lt!618745 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618744 j!112))))

(declare-fun arrayContainsKey!0 (array!96008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404723 (arrayContainsKey!0 a!2901 lt!618744 #b00000000000000000000000000000000)))

(declare-fun lt!618743 () Unit!47288)

(assert (=> b!1404723 (= lt!618743 lt!618745)))

(declare-fun res!943188 () Bool)

(assert (=> b!1404723 (= res!943188 (= (seekEntryOrOpen!0 (select (arr!46349 a!2901) j!112) a!2901 mask!2840) (Found!10682 j!112)))))

(assert (=> b!1404723 (=> (not res!943188) (not e!795227))))

(declare-fun d!151249 () Bool)

(declare-fun res!943187 () Bool)

(declare-fun e!795228 () Bool)

(assert (=> d!151249 (=> res!943187 e!795228)))

(assert (=> d!151249 (= res!943187 (bvsge j!112 (size!46900 a!2901)))))

(assert (=> d!151249 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!795228)))

(declare-fun bm!66929 () Bool)

(assert (=> bm!66929 (= call!66932 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404724 () Bool)

(assert (=> b!1404724 (= e!795228 e!795229)))

(declare-fun c!130231 () Bool)

(assert (=> b!1404724 (= c!130231 (validKeyInArray!0 (select (arr!46349 a!2901) j!112)))))

(declare-fun b!1404725 () Bool)

(assert (=> b!1404725 (= e!795227 call!66932)))

(assert (= (and d!151249 (not res!943187)) b!1404724))

(assert (= (and b!1404724 c!130231) b!1404723))

(assert (= (and b!1404724 (not c!130231)) b!1404722))

(assert (= (and b!1404723 res!943188) b!1404725))

(assert (= (or b!1404725 b!1404722) bm!66929))

(assert (=> b!1404723 m!1293511))

(declare-fun m!1293563 () Bool)

(assert (=> b!1404723 m!1293563))

(declare-fun m!1293565 () Bool)

(assert (=> b!1404723 m!1293565))

(assert (=> b!1404723 m!1293511))

(assert (=> b!1404723 m!1293533))

(declare-fun m!1293567 () Bool)

(assert (=> bm!66929 m!1293567))

(assert (=> b!1404724 m!1293511))

(assert (=> b!1404724 m!1293511))

(assert (=> b!1404724 m!1293525))

(assert (=> b!1404682 d!151249))

(declare-fun d!151257 () Bool)

(assert (=> d!151257 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618748 () Unit!47288)

(declare-fun choose!38 (array!96008 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47288)

(assert (=> d!151257 (= lt!618748 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151257 (validMask!0 mask!2840)))

(assert (=> d!151257 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618748)))

(declare-fun bs!40922 () Bool)

(assert (= bs!40922 d!151257))

(assert (=> bs!40922 m!1293519))

(declare-fun m!1293577 () Bool)

(assert (=> bs!40922 m!1293577))

(assert (=> bs!40922 m!1293527))

(assert (=> b!1404682 d!151257))

(declare-fun b!1404794 () Bool)

(declare-fun e!795274 () SeekEntryResult!10682)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404794 (= e!795274 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46349 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404795 () Bool)

(declare-fun lt!618772 () SeekEntryResult!10682)

(assert (=> b!1404795 (and (bvsge (index!45106 lt!618772) #b00000000000000000000000000000000) (bvslt (index!45106 lt!618772) (size!46900 a!2901)))))

(declare-fun res!943214 () Bool)

(assert (=> b!1404795 (= res!943214 (= (select (arr!46349 a!2901) (index!45106 lt!618772)) (select (arr!46349 a!2901) j!112)))))

(declare-fun e!795276 () Bool)

(assert (=> b!1404795 (=> res!943214 e!795276)))

(declare-fun e!795278 () Bool)

(assert (=> b!1404795 (= e!795278 e!795276)))

(declare-fun b!1404796 () Bool)

(declare-fun e!795275 () SeekEntryResult!10682)

(assert (=> b!1404796 (= e!795275 e!795274)))

(declare-fun c!130254 () Bool)

(declare-fun lt!618771 () (_ BitVec 64))

(assert (=> b!1404796 (= c!130254 (or (= lt!618771 (select (arr!46349 a!2901) j!112)) (= (bvadd lt!618771 lt!618771) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1404797 () Bool)

(assert (=> b!1404797 (= e!795274 (Intermediate!10682 false (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404799 () Bool)

(assert (=> b!1404799 (and (bvsge (index!45106 lt!618772) #b00000000000000000000000000000000) (bvslt (index!45106 lt!618772) (size!46900 a!2901)))))

(declare-fun res!943215 () Bool)

(assert (=> b!1404799 (= res!943215 (= (select (arr!46349 a!2901) (index!45106 lt!618772)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404799 (=> res!943215 e!795276)))

(declare-fun b!1404800 () Bool)

(assert (=> b!1404800 (= e!795275 (Intermediate!10682 true (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404801 () Bool)

(assert (=> b!1404801 (and (bvsge (index!45106 lt!618772) #b00000000000000000000000000000000) (bvslt (index!45106 lt!618772) (size!46900 a!2901)))))

(assert (=> b!1404801 (= e!795276 (= (select (arr!46349 a!2901) (index!45106 lt!618772)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1404802 () Bool)

(declare-fun e!795277 () Bool)

(assert (=> b!1404802 (= e!795277 e!795278)))

(declare-fun res!943213 () Bool)

(assert (=> b!1404802 (= res!943213 (and ((_ is Intermediate!10682) lt!618772) (not (undefined!11494 lt!618772)) (bvslt (x!126726 lt!618772) #b01111111111111111111111111111110) (bvsge (x!126726 lt!618772) #b00000000000000000000000000000000) (bvsge (x!126726 lt!618772) #b00000000000000000000000000000000)))))

(assert (=> b!1404802 (=> (not res!943213) (not e!795278))))

(declare-fun d!151261 () Bool)

(assert (=> d!151261 e!795277))

(declare-fun c!130255 () Bool)

(assert (=> d!151261 (= c!130255 (and ((_ is Intermediate!10682) lt!618772) (undefined!11494 lt!618772)))))

(assert (=> d!151261 (= lt!618772 e!795275)))

(declare-fun c!130256 () Bool)

(assert (=> d!151261 (= c!130256 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151261 (= lt!618771 (select (arr!46349 a!2901) (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840)))))

(assert (=> d!151261 (validMask!0 mask!2840)))

(assert (=> d!151261 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) (select (arr!46349 a!2901) j!112) a!2901 mask!2840) lt!618772)))

(declare-fun b!1404798 () Bool)

(assert (=> b!1404798 (= e!795277 (bvsge (x!126726 lt!618772) #b01111111111111111111111111111110))))

(assert (= (and d!151261 c!130256) b!1404800))

(assert (= (and d!151261 (not c!130256)) b!1404796))

(assert (= (and b!1404796 c!130254) b!1404797))

(assert (= (and b!1404796 (not c!130254)) b!1404794))

(assert (= (and d!151261 c!130255) b!1404798))

(assert (= (and d!151261 (not c!130255)) b!1404802))

(assert (= (and b!1404802 res!943213) b!1404795))

(assert (= (and b!1404795 (not res!943214)) b!1404799))

(assert (= (and b!1404799 (not res!943215)) b!1404801))

(declare-fun m!1293605 () Bool)

(assert (=> b!1404801 m!1293605))

(assert (=> b!1404795 m!1293605))

(assert (=> b!1404794 m!1293513))

(declare-fun m!1293607 () Bool)

(assert (=> b!1404794 m!1293607))

(assert (=> b!1404794 m!1293607))

(assert (=> b!1404794 m!1293511))

(declare-fun m!1293609 () Bool)

(assert (=> b!1404794 m!1293609))

(assert (=> d!151261 m!1293513))

(declare-fun m!1293611 () Bool)

(assert (=> d!151261 m!1293611))

(assert (=> d!151261 m!1293527))

(assert (=> b!1404799 m!1293605))

(assert (=> b!1404682 d!151261))

(declare-fun d!151273 () Bool)

(declare-fun lt!618784 () (_ BitVec 32))

(declare-fun lt!618783 () (_ BitVec 32))

(assert (=> d!151273 (= lt!618784 (bvmul (bvxor lt!618783 (bvlshr lt!618783 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151273 (= lt!618783 ((_ extract 31 0) (bvand (bvxor (select (arr!46349 a!2901) j!112) (bvlshr (select (arr!46349 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151273 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943216 (let ((h!34297 ((_ extract 31 0) (bvand (bvxor (select (arr!46349 a!2901) j!112) (bvlshr (select (arr!46349 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126729 (bvmul (bvxor h!34297 (bvlshr h!34297 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126729 (bvlshr x!126729 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943216 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943216 #b00000000000000000000000000000000))))))

(assert (=> d!151273 (= (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) (bvand (bvxor lt!618784 (bvlshr lt!618784 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1404682 d!151273))

(declare-fun b!1404849 () Bool)

(declare-fun e!795307 () SeekEntryResult!10682)

(declare-fun lt!618812 () SeekEntryResult!10682)

(assert (=> b!1404849 (= e!795307 (MissingZero!10682 (index!45106 lt!618812)))))

(declare-fun b!1404850 () Bool)

(declare-fun e!795308 () SeekEntryResult!10682)

(declare-fun e!795306 () SeekEntryResult!10682)

(assert (=> b!1404850 (= e!795308 e!795306)))

(declare-fun lt!618813 () (_ BitVec 64))

(assert (=> b!1404850 (= lt!618813 (select (arr!46349 a!2901) (index!45106 lt!618812)))))

(declare-fun c!130277 () Bool)

(assert (=> b!1404850 (= c!130277 (= lt!618813 (select (arr!46349 a!2901) j!112)))))

(declare-fun d!151275 () Bool)

(declare-fun lt!618814 () SeekEntryResult!10682)

(assert (=> d!151275 (and (or ((_ is Undefined!10682) lt!618814) (not ((_ is Found!10682) lt!618814)) (and (bvsge (index!45105 lt!618814) #b00000000000000000000000000000000) (bvslt (index!45105 lt!618814) (size!46900 a!2901)))) (or ((_ is Undefined!10682) lt!618814) ((_ is Found!10682) lt!618814) (not ((_ is MissingZero!10682) lt!618814)) (and (bvsge (index!45104 lt!618814) #b00000000000000000000000000000000) (bvslt (index!45104 lt!618814) (size!46900 a!2901)))) (or ((_ is Undefined!10682) lt!618814) ((_ is Found!10682) lt!618814) ((_ is MissingZero!10682) lt!618814) (not ((_ is MissingVacant!10682) lt!618814)) (and (bvsge (index!45107 lt!618814) #b00000000000000000000000000000000) (bvslt (index!45107 lt!618814) (size!46900 a!2901)))) (or ((_ is Undefined!10682) lt!618814) (ite ((_ is Found!10682) lt!618814) (= (select (arr!46349 a!2901) (index!45105 lt!618814)) (select (arr!46349 a!2901) j!112)) (ite ((_ is MissingZero!10682) lt!618814) (= (select (arr!46349 a!2901) (index!45104 lt!618814)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10682) lt!618814) (= (select (arr!46349 a!2901) (index!45107 lt!618814)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151275 (= lt!618814 e!795308)))

(declare-fun c!130276 () Bool)

(assert (=> d!151275 (= c!130276 (and ((_ is Intermediate!10682) lt!618812) (undefined!11494 lt!618812)))))

(assert (=> d!151275 (= lt!618812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46349 a!2901) j!112) mask!2840) (select (arr!46349 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151275 (validMask!0 mask!2840)))

(assert (=> d!151275 (= (seekEntryOrOpen!0 (select (arr!46349 a!2901) j!112) a!2901 mask!2840) lt!618814)))

(declare-fun b!1404851 () Bool)

(assert (=> b!1404851 (= e!795308 Undefined!10682)))

(declare-fun b!1404852 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96008 (_ BitVec 32)) SeekEntryResult!10682)

(assert (=> b!1404852 (= e!795307 (seekKeyOrZeroReturnVacant!0 (x!126726 lt!618812) (index!45106 lt!618812) (index!45106 lt!618812) (select (arr!46349 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404853 () Bool)

(declare-fun c!130278 () Bool)

(assert (=> b!1404853 (= c!130278 (= lt!618813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404853 (= e!795306 e!795307)))

(declare-fun b!1404854 () Bool)

(assert (=> b!1404854 (= e!795306 (Found!10682 (index!45106 lt!618812)))))

(assert (= (and d!151275 c!130276) b!1404851))

(assert (= (and d!151275 (not c!130276)) b!1404850))

(assert (= (and b!1404850 c!130277) b!1404854))

(assert (= (and b!1404850 (not c!130277)) b!1404853))

(assert (= (and b!1404853 c!130278) b!1404849))

(assert (= (and b!1404853 (not c!130278)) b!1404852))

(declare-fun m!1293639 () Bool)

(assert (=> b!1404850 m!1293639))

(assert (=> d!151275 m!1293527))

(declare-fun m!1293641 () Bool)

(assert (=> d!151275 m!1293641))

(assert (=> d!151275 m!1293513))

(assert (=> d!151275 m!1293511))

(assert (=> d!151275 m!1293517))

(assert (=> d!151275 m!1293511))

(assert (=> d!151275 m!1293513))

(declare-fun m!1293643 () Bool)

(assert (=> d!151275 m!1293643))

(declare-fun m!1293645 () Bool)

(assert (=> d!151275 m!1293645))

(assert (=> b!1404852 m!1293511))

(declare-fun m!1293647 () Bool)

(assert (=> b!1404852 m!1293647))

(assert (=> b!1404677 d!151275))

(declare-fun b!1404855 () Bool)

(declare-fun e!795311 () Bool)

(declare-fun call!66944 () Bool)

(assert (=> b!1404855 (= e!795311 call!66944)))

(declare-fun b!1404856 () Bool)

(declare-fun e!795309 () Bool)

(assert (=> b!1404856 (= e!795311 e!795309)))

(declare-fun lt!618816 () (_ BitVec 64))

(assert (=> b!1404856 (= lt!618816 (select (arr!46349 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618817 () Unit!47288)

(assert (=> b!1404856 (= lt!618817 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618816 #b00000000000000000000000000000000))))

(assert (=> b!1404856 (arrayContainsKey!0 a!2901 lt!618816 #b00000000000000000000000000000000)))

(declare-fun lt!618815 () Unit!47288)

(assert (=> b!1404856 (= lt!618815 lt!618817)))

(declare-fun res!943226 () Bool)

(assert (=> b!1404856 (= res!943226 (= (seekEntryOrOpen!0 (select (arr!46349 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10682 #b00000000000000000000000000000000)))))

(assert (=> b!1404856 (=> (not res!943226) (not e!795309))))

(declare-fun d!151291 () Bool)

(declare-fun res!943225 () Bool)

(declare-fun e!795310 () Bool)

(assert (=> d!151291 (=> res!943225 e!795310)))

(assert (=> d!151291 (= res!943225 (bvsge #b00000000000000000000000000000000 (size!46900 a!2901)))))

(assert (=> d!151291 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795310)))

(declare-fun bm!66941 () Bool)

(assert (=> bm!66941 (= call!66944 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404857 () Bool)

(assert (=> b!1404857 (= e!795310 e!795311)))

(declare-fun c!130279 () Bool)

(assert (=> b!1404857 (= c!130279 (validKeyInArray!0 (select (arr!46349 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404858 () Bool)

(assert (=> b!1404858 (= e!795309 call!66944)))

(assert (= (and d!151291 (not res!943225)) b!1404857))

(assert (= (and b!1404857 c!130279) b!1404856))

(assert (= (and b!1404857 (not c!130279)) b!1404855))

(assert (= (and b!1404856 res!943226) b!1404858))

(assert (= (or b!1404858 b!1404855) bm!66941))

(declare-fun m!1293649 () Bool)

(assert (=> b!1404856 m!1293649))

(declare-fun m!1293651 () Bool)

(assert (=> b!1404856 m!1293651))

(declare-fun m!1293653 () Bool)

(assert (=> b!1404856 m!1293653))

(assert (=> b!1404856 m!1293649))

(declare-fun m!1293655 () Bool)

(assert (=> b!1404856 m!1293655))

(declare-fun m!1293657 () Bool)

(assert (=> bm!66941 m!1293657))

(assert (=> b!1404857 m!1293649))

(assert (=> b!1404857 m!1293649))

(declare-fun m!1293659 () Bool)

(assert (=> b!1404857 m!1293659))

(assert (=> b!1404678 d!151291))

(declare-fun d!151293 () Bool)

(assert (=> d!151293 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120732 d!151293))

(declare-fun d!151297 () Bool)

(assert (=> d!151297 (= (array_inv!35294 a!2901) (bvsge (size!46900 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120732 d!151297))

(declare-fun bm!66945 () Bool)

(declare-fun call!66948 () Bool)

(declare-fun c!130301 () Bool)

(assert (=> bm!66945 (= call!66948 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130301 (Cons!33044 (select (arr!46349 a!2901) #b00000000000000000000000000000000) Nil!33045) Nil!33045)))))

(declare-fun b!1404927 () Bool)

(declare-fun e!795353 () Bool)

(assert (=> b!1404927 (= e!795353 call!66948)))

(declare-fun b!1404928 () Bool)

(declare-fun e!795356 () Bool)

(declare-fun contains!9807 (List!33048 (_ BitVec 64)) Bool)

(assert (=> b!1404928 (= e!795356 (contains!9807 Nil!33045 (select (arr!46349 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151299 () Bool)

(declare-fun res!943254 () Bool)

(declare-fun e!795355 () Bool)

(assert (=> d!151299 (=> res!943254 e!795355)))

(assert (=> d!151299 (= res!943254 (bvsge #b00000000000000000000000000000000 (size!46900 a!2901)))))

(assert (=> d!151299 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33045) e!795355)))

(declare-fun b!1404929 () Bool)

(assert (=> b!1404929 (= e!795353 call!66948)))

(declare-fun b!1404930 () Bool)

(declare-fun e!795354 () Bool)

(assert (=> b!1404930 (= e!795355 e!795354)))

(declare-fun res!943255 () Bool)

(assert (=> b!1404930 (=> (not res!943255) (not e!795354))))

(assert (=> b!1404930 (= res!943255 (not e!795356))))

(declare-fun res!943256 () Bool)

(assert (=> b!1404930 (=> (not res!943256) (not e!795356))))

(assert (=> b!1404930 (= res!943256 (validKeyInArray!0 (select (arr!46349 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404931 () Bool)

(assert (=> b!1404931 (= e!795354 e!795353)))

(assert (=> b!1404931 (= c!130301 (validKeyInArray!0 (select (arr!46349 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151299 (not res!943254)) b!1404930))

(assert (= (and b!1404930 res!943256) b!1404928))

(assert (= (and b!1404930 res!943255) b!1404931))

(assert (= (and b!1404931 c!130301) b!1404927))

(assert (= (and b!1404931 (not c!130301)) b!1404929))

(assert (= (or b!1404927 b!1404929) bm!66945))

(assert (=> bm!66945 m!1293649))

(declare-fun m!1293677 () Bool)

(assert (=> bm!66945 m!1293677))

(assert (=> b!1404928 m!1293649))

(assert (=> b!1404928 m!1293649))

(declare-fun m!1293681 () Bool)

(assert (=> b!1404928 m!1293681))

(assert (=> b!1404930 m!1293649))

(assert (=> b!1404930 m!1293649))

(assert (=> b!1404930 m!1293659))

(assert (=> b!1404931 m!1293649))

(assert (=> b!1404931 m!1293649))

(assert (=> b!1404931 m!1293659))

(assert (=> b!1404679 d!151299))

(declare-fun d!151305 () Bool)

(assert (=> d!151305 (= (validKeyInArray!0 (select (arr!46349 a!2901) j!112)) (and (not (= (select (arr!46349 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46349 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404680 d!151305))

(check-sat (not d!151257) (not bm!66929) (not bm!66941) (not b!1404856) (not b!1404723) (not bm!66945) (not b!1404794) (not d!151275) (not b!1404928) (not b!1404857) (not b!1404852) (not b!1404931) (not b!1404724) (not d!151261) (not b!1404930))
(check-sat)
