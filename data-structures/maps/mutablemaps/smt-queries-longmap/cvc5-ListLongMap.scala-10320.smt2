; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121336 () Bool)

(assert start!121336)

(declare-fun b!1409919 () Bool)

(declare-fun e!797891 () Bool)

(declare-fun e!797892 () Bool)

(assert (=> b!1409919 (= e!797891 (not e!797892))))

(declare-fun res!947591 () Bool)

(assert (=> b!1409919 (=> res!947591 e!797892)))

(declare-datatypes ((SeekEntryResult!10849 0))(
  ( (MissingZero!10849 (index!45772 (_ BitVec 32))) (Found!10849 (index!45773 (_ BitVec 32))) (Intermediate!10849 (undefined!11661 Bool) (index!45774 (_ BitVec 32)) (x!127371 (_ BitVec 32))) (Undefined!10849) (MissingVacant!10849 (index!45775 (_ BitVec 32))) )
))
(declare-fun lt!620899 () SeekEntryResult!10849)

(assert (=> b!1409919 (= res!947591 (or (not (is-Intermediate!10849 lt!620899)) (undefined!11661 lt!620899)))))

(declare-fun e!797894 () Bool)

(assert (=> b!1409919 e!797894))

(declare-fun res!947588 () Bool)

(assert (=> b!1409919 (=> (not res!947588) (not e!797894))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96357 0))(
  ( (array!96358 (arr!46516 (Array (_ BitVec 32) (_ BitVec 64))) (size!47067 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96357)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96357 (_ BitVec 32)) Bool)

(assert (=> b!1409919 (= res!947588 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47622 0))(
  ( (Unit!47623) )
))
(declare-fun lt!620902 () Unit!47622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47622)

(assert (=> b!1409919 (= lt!620902 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620901 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96357 (_ BitVec 32)) SeekEntryResult!10849)

(assert (=> b!1409919 (= lt!620899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620901 (select (arr!46516 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409919 (= lt!620901 (toIndex!0 (select (arr!46516 a!2901) j!112) mask!2840))))

(declare-fun b!1409920 () Bool)

(declare-fun res!947590 () Bool)

(assert (=> b!1409920 (=> (not res!947590) (not e!797891))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409920 (= res!947590 (validKeyInArray!0 (select (arr!46516 a!2901) i!1037)))))

(declare-fun b!1409921 () Bool)

(declare-fun res!947589 () Bool)

(assert (=> b!1409921 (=> (not res!947589) (not e!797891))))

(assert (=> b!1409921 (= res!947589 (validKeyInArray!0 (select (arr!46516 a!2901) j!112)))))

(declare-fun b!1409922 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96357 (_ BitVec 32)) SeekEntryResult!10849)

(assert (=> b!1409922 (= e!797894 (= (seekEntryOrOpen!0 (select (arr!46516 a!2901) j!112) a!2901 mask!2840) (Found!10849 j!112)))))

(declare-fun b!1409923 () Bool)

(declare-fun lt!620900 () SeekEntryResult!10849)

(assert (=> b!1409923 (= e!797892 (or (= lt!620899 lt!620900) (not (is-Intermediate!10849 lt!620900)) (bvslt (x!127371 lt!620899) #b00000000000000000000000000000000) (bvsgt (x!127371 lt!620899) #b01111111111111111111111111111110) (and (bvsge lt!620901 #b00000000000000000000000000000000) (bvslt lt!620901 (size!47067 a!2901)))))))

(assert (=> b!1409923 (= lt!620900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)) mask!2840))))

(declare-fun b!1409924 () Bool)

(declare-fun res!947585 () Bool)

(assert (=> b!1409924 (=> (not res!947585) (not e!797891))))

(assert (=> b!1409924 (= res!947585 (and (= (size!47067 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47067 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47067 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947592 () Bool)

(assert (=> start!121336 (=> (not res!947592) (not e!797891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121336 (= res!947592 (validMask!0 mask!2840))))

(assert (=> start!121336 e!797891))

(assert (=> start!121336 true))

(declare-fun array_inv!35461 (array!96357) Bool)

(assert (=> start!121336 (array_inv!35461 a!2901)))

(declare-fun b!1409925 () Bool)

(declare-fun res!947586 () Bool)

(assert (=> b!1409925 (=> (not res!947586) (not e!797891))))

(declare-datatypes ((List!33215 0))(
  ( (Nil!33212) (Cons!33211 (h!34477 (_ BitVec 64)) (t!47916 List!33215)) )
))
(declare-fun arrayNoDuplicates!0 (array!96357 (_ BitVec 32) List!33215) Bool)

(assert (=> b!1409925 (= res!947586 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33212))))

(declare-fun b!1409926 () Bool)

(declare-fun res!947587 () Bool)

(assert (=> b!1409926 (=> (not res!947587) (not e!797891))))

(assert (=> b!1409926 (= res!947587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121336 res!947592) b!1409924))

(assert (= (and b!1409924 res!947585) b!1409920))

(assert (= (and b!1409920 res!947590) b!1409921))

(assert (= (and b!1409921 res!947589) b!1409926))

(assert (= (and b!1409926 res!947587) b!1409925))

(assert (= (and b!1409925 res!947586) b!1409919))

(assert (= (and b!1409919 res!947588) b!1409922))

(assert (= (and b!1409919 (not res!947591)) b!1409923))

(declare-fun m!1299719 () Bool)

(assert (=> b!1409923 m!1299719))

(declare-fun m!1299721 () Bool)

(assert (=> b!1409923 m!1299721))

(assert (=> b!1409923 m!1299721))

(declare-fun m!1299723 () Bool)

(assert (=> b!1409923 m!1299723))

(assert (=> b!1409923 m!1299723))

(assert (=> b!1409923 m!1299721))

(declare-fun m!1299725 () Bool)

(assert (=> b!1409923 m!1299725))

(declare-fun m!1299727 () Bool)

(assert (=> start!121336 m!1299727))

(declare-fun m!1299729 () Bool)

(assert (=> start!121336 m!1299729))

(declare-fun m!1299731 () Bool)

(assert (=> b!1409921 m!1299731))

(assert (=> b!1409921 m!1299731))

(declare-fun m!1299733 () Bool)

(assert (=> b!1409921 m!1299733))

(assert (=> b!1409922 m!1299731))

(assert (=> b!1409922 m!1299731))

(declare-fun m!1299735 () Bool)

(assert (=> b!1409922 m!1299735))

(assert (=> b!1409919 m!1299731))

(declare-fun m!1299737 () Bool)

(assert (=> b!1409919 m!1299737))

(declare-fun m!1299739 () Bool)

(assert (=> b!1409919 m!1299739))

(assert (=> b!1409919 m!1299731))

(declare-fun m!1299741 () Bool)

(assert (=> b!1409919 m!1299741))

(assert (=> b!1409919 m!1299731))

(declare-fun m!1299743 () Bool)

(assert (=> b!1409919 m!1299743))

(declare-fun m!1299745 () Bool)

(assert (=> b!1409926 m!1299745))

(declare-fun m!1299747 () Bool)

(assert (=> b!1409925 m!1299747))

(declare-fun m!1299749 () Bool)

(assert (=> b!1409920 m!1299749))

(assert (=> b!1409920 m!1299749))

(declare-fun m!1299751 () Bool)

(assert (=> b!1409920 m!1299751))

(push 1)

(assert (not b!1409926))

(assert (not b!1409921))

(assert (not b!1409919))

(assert (not b!1409922))

(assert (not start!121336))

(assert (not b!1409925))

(assert (not b!1409920))

(assert (not b!1409923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1410044 () Bool)

(declare-fun e!797966 () Bool)

(declare-fun lt!620965 () SeekEntryResult!10849)

(assert (=> b!1410044 (= e!797966 (bvsge (x!127371 lt!620965) #b01111111111111111111111111111110))))

(declare-fun b!1410045 () Bool)

(declare-fun e!797964 () Bool)

(assert (=> b!1410045 (= e!797966 e!797964)))

(declare-fun res!947669 () Bool)

(assert (=> b!1410045 (= res!947669 (and (is-Intermediate!10849 lt!620965) (not (undefined!11661 lt!620965)) (bvslt (x!127371 lt!620965) #b01111111111111111111111111111110) (bvsge (x!127371 lt!620965) #b00000000000000000000000000000000) (bvsge (x!127371 lt!620965) #b00000000000000000000000000000000)))))

(assert (=> b!1410045 (=> (not res!947669) (not e!797964))))

(declare-fun e!797963 () SeekEntryResult!10849)

(declare-fun b!1410046 () Bool)

(assert (=> b!1410046 (= e!797963 (Intermediate!10849 true (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410047 () Bool)

(declare-fun e!797965 () SeekEntryResult!10849)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410047 (= e!797965 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)) mask!2840))))

(declare-fun d!151743 () Bool)

(assert (=> d!151743 e!797966))

(declare-fun c!130659 () Bool)

(assert (=> d!151743 (= c!130659 (and (is-Intermediate!10849 lt!620965) (undefined!11661 lt!620965)))))

(assert (=> d!151743 (= lt!620965 e!797963)))

(declare-fun c!130661 () Bool)

(assert (=> d!151743 (= c!130661 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620964 () (_ BitVec 64))

(assert (=> d!151743 (= lt!620964 (select (arr!46516 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901))) (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151743 (validMask!0 mask!2840)))

(assert (=> d!151743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)) mask!2840) lt!620965)))

(declare-fun b!1410048 () Bool)

(assert (=> b!1410048 (= e!797965 (Intermediate!10849 false (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1410049 () Bool)

(assert (=> b!1410049 (= e!797963 e!797965)))

(declare-fun c!130660 () Bool)

(assert (=> b!1410049 (= c!130660 (or (= lt!620964 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!620964 lt!620964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410050 () Bool)

(assert (=> b!1410050 (and (bvsge (index!45774 lt!620965) #b00000000000000000000000000000000) (bvslt (index!45774 lt!620965) (size!47067 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)))))))

(declare-fun e!797962 () Bool)

(assert (=> b!1410050 (= e!797962 (= (select (arr!46516 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901))) (index!45774 lt!620965)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410051 () Bool)

(assert (=> b!1410051 (and (bvsge (index!45774 lt!620965) #b00000000000000000000000000000000) (bvslt (index!45774 lt!620965) (size!47067 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)))))))

(declare-fun res!947671 () Bool)

(assert (=> b!1410051 (= res!947671 (= (select (arr!46516 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901))) (index!45774 lt!620965)) (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1410051 (=> res!947671 e!797962)))

(assert (=> b!1410051 (= e!797964 e!797962)))

(declare-fun b!1410052 () Bool)

(assert (=> b!1410052 (and (bvsge (index!45774 lt!620965) #b00000000000000000000000000000000) (bvslt (index!45774 lt!620965) (size!47067 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901)))))))

(declare-fun res!947670 () Bool)

(assert (=> b!1410052 (= res!947670 (= (select (arr!46516 (array!96358 (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47067 a!2901))) (index!45774 lt!620965)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410052 (=> res!947670 e!797962)))

(assert (= (and d!151743 c!130661) b!1410046))

(assert (= (and d!151743 (not c!130661)) b!1410049))

(assert (= (and b!1410049 c!130660) b!1410048))

(assert (= (and b!1410049 (not c!130660)) b!1410047))

(assert (= (and d!151743 c!130659) b!1410044))

(assert (= (and d!151743 (not c!130659)) b!1410045))

(assert (= (and b!1410045 res!947669) b!1410051))

(assert (= (and b!1410051 (not res!947671)) b!1410052))

(assert (= (and b!1410052 (not res!947670)) b!1410050))

(assert (=> b!1410047 m!1299723))

(declare-fun m!1299849 () Bool)

(assert (=> b!1410047 m!1299849))

(assert (=> b!1410047 m!1299849))

(assert (=> b!1410047 m!1299721))

(declare-fun m!1299851 () Bool)

(assert (=> b!1410047 m!1299851))

(declare-fun m!1299853 () Bool)

(assert (=> b!1410052 m!1299853))

(assert (=> d!151743 m!1299723))

(declare-fun m!1299855 () Bool)

(assert (=> d!151743 m!1299855))

(assert (=> d!151743 m!1299727))

(assert (=> b!1410051 m!1299853))

(assert (=> b!1410050 m!1299853))

(assert (=> b!1409923 d!151743))

(declare-fun d!151753 () Bool)

(declare-fun lt!620971 () (_ BitVec 32))

(declare-fun lt!620970 () (_ BitVec 32))

(assert (=> d!151753 (= lt!620971 (bvmul (bvxor lt!620970 (bvlshr lt!620970 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151753 (= lt!620970 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151753 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947672 (let ((h!34481 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127377 (bvmul (bvxor h!34481 (bvlshr h!34481 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127377 (bvlshr x!127377 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947672 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947672 #b00000000000000000000000000000000))))))

(assert (=> d!151753 (= (toIndex!0 (select (store (arr!46516 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!620971 (bvlshr lt!620971 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409923 d!151753))

(declare-fun d!151755 () Bool)

(assert (=> d!151755 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121336 d!151755))

(declare-fun d!151759 () Bool)

(assert (=> d!151759 (= (array_inv!35461 a!2901) (bvsge (size!47067 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121336 d!151759))

(declare-fun b!1410119 () Bool)

(declare-fun e!798007 () Bool)

(declare-fun e!798005 () Bool)

(assert (=> b!1410119 (= e!798007 e!798005)))

(declare-fun c!130686 () Bool)

(assert (=> b!1410119 (= c!130686 (validKeyInArray!0 (select (arr!46516 a!2901) j!112)))))

(declare-fun b!1410120 () Bool)

(declare-fun e!798006 () Bool)

(assert (=> b!1410120 (= e!798005 e!798006)))

(declare-fun lt!621011 () (_ BitVec 64))

(assert (=> b!1410120 (= lt!621011 (select (arr!46516 a!2901) j!112))))

(declare-fun lt!621009 () Unit!47622)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96357 (_ BitVec 64) (_ BitVec 32)) Unit!47622)

(assert (=> b!1410120 (= lt!621009 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621011 j!112))))

(declare-fun arrayContainsKey!0 (array!96357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1410120 (arrayContainsKey!0 a!2901 lt!621011 #b00000000000000000000000000000000)))

(declare-fun lt!621010 () Unit!47622)

(assert (=> b!1410120 (= lt!621010 lt!621009)))

(declare-fun res!947692 () Bool)

(assert (=> b!1410120 (= res!947692 (= (seekEntryOrOpen!0 (select (arr!46516 a!2901) j!112) a!2901 mask!2840) (Found!10849 j!112)))))

(assert (=> b!1410120 (=> (not res!947692) (not e!798006))))

(declare-fun d!151761 () Bool)

(declare-fun res!947693 () Bool)

(assert (=> d!151761 (=> res!947693 e!798007)))

(assert (=> d!151761 (= res!947693 (bvsge j!112 (size!47067 a!2901)))))

(assert (=> d!151761 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!798007)))

(declare-fun b!1410121 () Bool)

(declare-fun call!67042 () Bool)

(assert (=> b!1410121 (= e!798006 call!67042)))

(declare-fun b!1410122 () Bool)

(assert (=> b!1410122 (= e!798005 call!67042)))

(declare-fun bm!67039 () Bool)

(assert (=> bm!67039 (= call!67042 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151761 (not res!947693)) b!1410119))

(assert (= (and b!1410119 c!130686) b!1410120))

(assert (= (and b!1410119 (not c!130686)) b!1410122))

(assert (= (and b!1410120 res!947692) b!1410121))

(assert (= (or b!1410121 b!1410122) bm!67039))

(assert (=> b!1410119 m!1299731))

(assert (=> b!1410119 m!1299731))

(assert (=> b!1410119 m!1299733))

(assert (=> b!1410120 m!1299731))

(declare-fun m!1299893 () Bool)

(assert (=> b!1410120 m!1299893))

(declare-fun m!1299895 () Bool)

(assert (=> b!1410120 m!1299895))

(assert (=> b!1410120 m!1299731))

(assert (=> b!1410120 m!1299735))

(declare-fun m!1299897 () Bool)

(assert (=> bm!67039 m!1299897))

(assert (=> b!1409919 d!151761))

(declare-fun d!151779 () Bool)

(assert (=> d!151779 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!621014 () Unit!47622)

(declare-fun choose!38 (array!96357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47622)

(assert (=> d!151779 (= lt!621014 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151779 (validMask!0 mask!2840)))

(assert (=> d!151779 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!621014)))

(declare-fun bs!41107 () Bool)

(assert (= bs!41107 d!151779))

(assert (=> bs!41107 m!1299739))

(declare-fun m!1299899 () Bool)

(assert (=> bs!41107 m!1299899))

(assert (=> bs!41107 m!1299727))

(assert (=> b!1409919 d!151779))

(declare-fun b!1410138 () Bool)

(declare-fun e!798024 () Bool)

(declare-fun lt!621016 () SeekEntryResult!10849)

(assert (=> b!1410138 (= e!798024 (bvsge (x!127371 lt!621016) #b01111111111111111111111111111110))))

(declare-fun b!1410139 () Bool)

(declare-fun e!798022 () Bool)

(assert (=> b!1410139 (= e!798024 e!798022)))

(declare-fun res!947703 () Bool)

(assert (=> b!1410139 (= res!947703 (and (is-Intermediate!10849 lt!621016) (not (undefined!11661 lt!621016)) (bvslt (x!127371 lt!621016) #b01111111111111111111111111111110) (bvsge (x!127371 lt!621016) #b00000000000000000000000000000000) (bvsge (x!127371 lt!621016) #b00000000000000000000000000000000)))))

(assert (=> b!1410139 (=> (not res!947703) (not e!798022))))

(declare-fun b!1410140 () Bool)

(declare-fun e!798021 () SeekEntryResult!10849)

(assert (=> b!1410140 (= e!798021 (Intermediate!10849 true lt!620901 #b00000000000000000000000000000000))))

(declare-fun b!1410141 () Bool)

(declare-fun e!798023 () SeekEntryResult!10849)

(assert (=> b!1410141 (= e!798023 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!620901 #b00000000000000000000000000000000 mask!2840) (select (arr!46516 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151781 () Bool)

(assert (=> d!151781 e!798024))

(declare-fun c!130690 () Bool)

(assert (=> d!151781 (= c!130690 (and (is-Intermediate!10849 lt!621016) (undefined!11661 lt!621016)))))

(assert (=> d!151781 (= lt!621016 e!798021)))

(declare-fun c!130692 () Bool)

(assert (=> d!151781 (= c!130692 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!621015 () (_ BitVec 64))

(assert (=> d!151781 (= lt!621015 (select (arr!46516 a!2901) lt!620901))))

(assert (=> d!151781 (validMask!0 mask!2840)))

(assert (=> d!151781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620901 (select (arr!46516 a!2901) j!112) a!2901 mask!2840) lt!621016)))

(declare-fun b!1410142 () Bool)

(assert (=> b!1410142 (= e!798023 (Intermediate!10849 false lt!620901 #b00000000000000000000000000000000))))

(declare-fun b!1410143 () Bool)

(assert (=> b!1410143 (= e!798021 e!798023)))

(declare-fun c!130691 () Bool)

(assert (=> b!1410143 (= c!130691 (or (= lt!621015 (select (arr!46516 a!2901) j!112)) (= (bvadd lt!621015 lt!621015) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1410144 () Bool)

(assert (=> b!1410144 (and (bvsge (index!45774 lt!621016) #b00000000000000000000000000000000) (bvslt (index!45774 lt!621016) (size!47067 a!2901)))))

(declare-fun e!798020 () Bool)

(assert (=> b!1410144 (= e!798020 (= (select (arr!46516 a!2901) (index!45774 lt!621016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1410145 () Bool)

(assert (=> b!1410145 (and (bvsge (index!45774 lt!621016) #b00000000000000000000000000000000) (bvslt (index!45774 lt!621016) (size!47067 a!2901)))))

(declare-fun res!947705 () Bool)

(assert (=> b!1410145 (= res!947705 (= (select (arr!46516 a!2901) (index!45774 lt!621016)) (select (arr!46516 a!2901) j!112)))))

(assert (=> b!1410145 (=> res!947705 e!798020)))

(assert (=> b!1410145 (= e!798022 e!798020)))

(declare-fun b!1410146 () Bool)

(assert (=> b!1410146 (and (bvsge (index!45774 lt!621016) #b00000000000000000000000000000000) (bvslt (index!45774 lt!621016) (size!47067 a!2901)))))

(declare-fun res!947704 () Bool)

(assert (=> b!1410146 (= res!947704 (= (select (arr!46516 a!2901) (index!45774 lt!621016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1410146 (=> res!947704 e!798020)))

(assert (= (and d!151781 c!130692) b!1410140))

(assert (= (and d!151781 (not c!130692)) b!1410143))

(assert (= (and b!1410143 c!130691) b!1410142))

(assert (= (and b!1410143 (not c!130691)) b!1410141))

(assert (= (and d!151781 c!130690) b!1410138))

(assert (= (and d!151781 (not c!130690)) b!1410139))

(assert (= (and b!1410139 res!947703) b!1410145))

(assert (= (and b!1410145 (not res!947705)) b!1410146))

(assert (= (and b!1410146 (not res!947704)) b!1410144))

(declare-fun m!1299905 () Bool)

(assert (=> b!1410141 m!1299905))

(assert (=> b!1410141 m!1299905))

(assert (=> b!1410141 m!1299731))

(declare-fun m!1299907 () Bool)

(assert (=> b!1410141 m!1299907))

(declare-fun m!1299909 () Bool)

(assert (=> b!1410146 m!1299909))

(declare-fun m!1299911 () Bool)

(assert (=> d!151781 m!1299911))

(assert (=> d!151781 m!1299727))

(assert (=> b!1410145 m!1299909))

(assert (=> b!1410144 m!1299909))

(assert (=> b!1409919 d!151781))

(declare-fun d!151785 () Bool)

(declare-fun lt!621018 () (_ BitVec 32))

(declare-fun lt!621017 () (_ BitVec 32))

(assert (=> d!151785 (= lt!621018 (bvmul (bvxor lt!621017 (bvlshr lt!621017 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151785 (= lt!621017 ((_ extract 31 0) (bvand (bvxor (select (arr!46516 a!2901) j!112) (bvlshr (select (arr!46516 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151785 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947672 (let ((h!34481 ((_ extract 31 0) (bvand (bvxor (select (arr!46516 a!2901) j!112) (bvlshr (select (arr!46516 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127377 (bvmul (bvxor h!34481 (bvlshr h!34481 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127377 (bvlshr x!127377 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947672 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947672 #b00000000000000000000000000000000))))))

(assert (=> d!151785 (= (toIndex!0 (select (arr!46516 a!2901) j!112) mask!2840) (bvand (bvxor lt!621018 (bvlshr lt!621018 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409919 d!151785))

(declare-fun b!1410169 () Bool)

(declare-fun e!798041 () Bool)

(declare-fun e!798040 () Bool)

(assert (=> b!1410169 (= e!798041 e!798040)))

(declare-fun c!130701 () Bool)

(assert (=> b!1410169 (= c!130701 (validKeyInArray!0 (select (arr!46516 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410170 () Bool)

(declare-fun e!798039 () Bool)

(assert (=> b!1410170 (= e!798039 e!798041)))

(declare-fun res!947713 () Bool)

(assert (=> b!1410170 (=> (not res!947713) (not e!798041))))

(declare-fun e!798042 () Bool)

(assert (=> b!1410170 (= res!947713 (not e!798042))))

(declare-fun res!947714 () Bool)

(assert (=> b!1410170 (=> (not res!947714) (not e!798042))))

(assert (=> b!1410170 (= res!947714 (validKeyInArray!0 (select (arr!46516 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410171 () Bool)

(declare-fun call!67048 () Bool)

(assert (=> b!1410171 (= e!798040 call!67048)))

(declare-fun bm!67045 () Bool)

(assert (=> bm!67045 (= call!67048 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130701 (Cons!33211 (select (arr!46516 a!2901) #b00000000000000000000000000000000) Nil!33212) Nil!33212)))))

(declare-fun b!1410172 () Bool)

(assert (=> b!1410172 (= e!798040 call!67048)))

(declare-fun b!1410173 () Bool)

(declare-fun contains!9821 (List!33215 (_ BitVec 64)) Bool)

(assert (=> b!1410173 (= e!798042 (contains!9821 Nil!33212 (select (arr!46516 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151787 () Bool)

(declare-fun res!947712 () Bool)

(assert (=> d!151787 (=> res!947712 e!798039)))

(assert (=> d!151787 (= res!947712 (bvsge #b00000000000000000000000000000000 (size!47067 a!2901)))))

(assert (=> d!151787 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33212) e!798039)))

(assert (= (and d!151787 (not res!947712)) b!1410170))

(assert (= (and b!1410170 res!947714) b!1410173))

(assert (= (and b!1410170 res!947713) b!1410169))

(assert (= (and b!1410169 c!130701) b!1410172))

(assert (= (and b!1410169 (not c!130701)) b!1410171))

(assert (= (or b!1410172 b!1410171) bm!67045))

(declare-fun m!1299913 () Bool)

(assert (=> b!1410169 m!1299913))

(assert (=> b!1410169 m!1299913))

(declare-fun m!1299915 () Bool)

(assert (=> b!1410169 m!1299915))

(assert (=> b!1410170 m!1299913))

(assert (=> b!1410170 m!1299913))

(assert (=> b!1410170 m!1299915))

(assert (=> bm!67045 m!1299913))

(declare-fun m!1299917 () Bool)

(assert (=> bm!67045 m!1299917))

(assert (=> b!1410173 m!1299913))

(assert (=> b!1410173 m!1299913))

(declare-fun m!1299919 () Bool)

(assert (=> b!1410173 m!1299919))

(assert (=> b!1409925 d!151787))

(declare-fun d!151789 () Bool)

(assert (=> d!151789 (= (validKeyInArray!0 (select (arr!46516 a!2901) i!1037)) (and (not (= (select (arr!46516 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46516 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409920 d!151789))

(declare-fun d!151791 () Bool)

(assert (=> d!151791 (= (validKeyInArray!0 (select (arr!46516 a!2901) j!112)) (and (not (= (select (arr!46516 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46516 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409921 d!151791))

(declare-fun b!1410180 () Bool)

(declare-fun e!798048 () Bool)

(declare-fun e!798046 () Bool)

(assert (=> b!1410180 (= e!798048 e!798046)))

(declare-fun c!130705 () Bool)

(assert (=> b!1410180 (= c!130705 (validKeyInArray!0 (select (arr!46516 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1410181 () Bool)

(declare-fun e!798047 () Bool)

(assert (=> b!1410181 (= e!798046 e!798047)))

(declare-fun lt!621030 () (_ BitVec 64))

(assert (=> b!1410181 (= lt!621030 (select (arr!46516 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!621028 () Unit!47622)

(assert (=> b!1410181 (= lt!621028 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!621030 #b00000000000000000000000000000000))))

(assert (=> b!1410181 (arrayContainsKey!0 a!2901 lt!621030 #b00000000000000000000000000000000)))

(declare-fun lt!621029 () Unit!47622)

(assert (=> b!1410181 (= lt!621029 lt!621028)))

(declare-fun res!947715 () Bool)

(assert (=> b!1410181 (= res!947715 (= (seekEntryOrOpen!0 (select (arr!46516 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10849 #b00000000000000000000000000000000)))))

(assert (=> b!1410181 (=> (not res!947715) (not e!798047))))

(declare-fun d!151795 () Bool)

(declare-fun res!947716 () Bool)

(assert (=> d!151795 (=> res!947716 e!798048)))

(assert (=> d!151795 (= res!947716 (bvsge #b00000000000000000000000000000000 (size!47067 a!2901)))))

(assert (=> d!151795 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!798048)))

(declare-fun b!1410182 () Bool)

(declare-fun call!67049 () Bool)

(assert (=> b!1410182 (= e!798047 call!67049)))

(declare-fun b!1410183 () Bool)

(assert (=> b!1410183 (= e!798046 call!67049)))

(declare-fun bm!67046 () Bool)

(assert (=> bm!67046 (= call!67049 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151795 (not res!947716)) b!1410180))

(assert (= (and b!1410180 c!130705) b!1410181))

(assert (= (and b!1410180 (not c!130705)) b!1410183))

(assert (= (and b!1410181 res!947715) b!1410182))

(assert (= (or b!1410182 b!1410183) bm!67046))

(assert (=> b!1410180 m!1299913))

(assert (=> b!1410180 m!1299913))

(assert (=> b!1410180 m!1299915))

(assert (=> b!1410181 m!1299913))

(declare-fun m!1299933 () Bool)

(assert (=> b!1410181 m!1299933))

(declare-fun m!1299935 () Bool)

(assert (=> b!1410181 m!1299935))

(assert (=> b!1410181 m!1299913))

(declare-fun m!1299937 () Bool)

(assert (=> b!1410181 m!1299937))

(declare-fun m!1299939 () Bool)

(assert (=> bm!67046 m!1299939))

(assert (=> b!1409926 d!151795))

(declare-fun d!151797 () Bool)

(declare-fun lt!621046 () SeekEntryResult!10849)

(assert (=> d!151797 (and (or (is-Undefined!10849 lt!621046) (not (is-Found!10849 lt!621046)) (and (bvsge (index!45773 lt!621046) #b00000000000000000000000000000000) (bvslt (index!45773 lt!621046) (size!47067 a!2901)))) (or (is-Undefined!10849 lt!621046) (is-Found!10849 lt!621046) (not (is-MissingZero!10849 lt!621046)) (and (bvsge (index!45772 lt!621046) #b00000000000000000000000000000000) (bvslt (index!45772 lt!621046) (size!47067 a!2901)))) (or (is-Undefined!10849 lt!621046) (is-Found!10849 lt!621046) (is-MissingZero!10849 lt!621046) (not (is-MissingVacant!10849 lt!621046)) (and (bvsge (index!45775 lt!621046) #b00000000000000000000000000000000) (bvslt (index!45775 lt!621046) (size!47067 a!2901)))) (or (is-Undefined!10849 lt!621046) (ite (is-Found!10849 lt!621046) (= (select (arr!46516 a!2901) (index!45773 lt!621046)) (select (arr!46516 a!2901) j!112)) (ite (is-MissingZero!10849 lt!621046) (= (select (arr!46516 a!2901) (index!45772 lt!621046)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10849 lt!621046) (= (select (arr!46516 a!2901) (index!45775 lt!621046)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!798076 () SeekEntryResult!10849)

(assert (=> d!151797 (= lt!621046 e!798076)))

(declare-fun c!130721 () Bool)

(declare-fun lt!621044 () SeekEntryResult!10849)

(assert (=> d!151797 (= c!130721 (and (is-Intermediate!10849 lt!621044) (undefined!11661 lt!621044)))))

(assert (=> d!151797 (= lt!621044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46516 a!2901) j!112) mask!2840) (select (arr!46516 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151797 (validMask!0 mask!2840)))

(assert (=> d!151797 (= (seekEntryOrOpen!0 (select (arr!46516 a!2901) j!112) a!2901 mask!2840) lt!621046)))

(declare-fun b!1410224 () Bool)

(declare-fun c!130719 () Bool)

(declare-fun lt!621045 () (_ BitVec 64))

(assert (=> b!1410224 (= c!130719 (= lt!621045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!798077 () SeekEntryResult!10849)

(declare-fun e!798075 () SeekEntryResult!10849)

(assert (=> b!1410224 (= e!798077 e!798075)))

(declare-fun b!1410225 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96357 (_ BitVec 32)) SeekEntryResult!10849)

(assert (=> b!1410225 (= e!798075 (seekKeyOrZeroReturnVacant!0 (x!127371 lt!621044) (index!45774 lt!621044) (index!45774 lt!621044) (select (arr!46516 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410226 () Bool)

(assert (=> b!1410226 (= e!798075 (MissingZero!10849 (index!45774 lt!621044)))))

(declare-fun b!1410227 () Bool)

(assert (=> b!1410227 (= e!798076 Undefined!10849)))

(declare-fun b!1410228 () Bool)

(assert (=> b!1410228 (= e!798077 (Found!10849 (index!45774 lt!621044)))))

(declare-fun b!1410229 () Bool)

(assert (=> b!1410229 (= e!798076 e!798077)))

(assert (=> b!1410229 (= lt!621045 (select (arr!46516 a!2901) (index!45774 lt!621044)))))

(declare-fun c!130720 () Bool)

(assert (=> b!1410229 (= c!130720 (= lt!621045 (select (arr!46516 a!2901) j!112)))))

(assert (= (and d!151797 c!130721) b!1410227))

(assert (= (and d!151797 (not c!130721)) b!1410229))

(assert (= (and b!1410229 c!130720) b!1410228))

(assert (= (and b!1410229 (not c!130720)) b!1410224))

(assert (= (and b!1410224 c!130719) b!1410226))

(assert (= (and b!1410224 (not c!130719)) b!1410225))

(assert (=> d!151797 m!1299731))

(assert (=> d!151797 m!1299743))

(assert (=> d!151797 m!1299743))

(assert (=> d!151797 m!1299731))

(declare-fun m!1299965 () Bool)

(assert (=> d!151797 m!1299965))

(declare-fun m!1299967 () Bool)

(assert (=> d!151797 m!1299967))

(assert (=> d!151797 m!1299727))

(declare-fun m!1299969 () Bool)

(assert (=> d!151797 m!1299969))

(declare-fun m!1299971 () Bool)

(assert (=> d!151797 m!1299971))

(assert (=> b!1410225 m!1299731))

(declare-fun m!1299973 () Bool)

(assert (=> b!1410225 m!1299973))

(declare-fun m!1299975 () Bool)

(assert (=> b!1410229 m!1299975))

(assert (=> b!1409922 d!151797))

(push 1)

(assert (not d!151743))

(assert (not b!1410141))

(assert (not b!1410169))

(assert (not bm!67045))

(assert (not b!1410119))

(assert (not b!1410181))

(assert (not b!1410120))

(assert (not bm!67046))

(assert (not b!1410180))

(assert (not b!1410225))

(assert (not b!1410173))

(assert (not b!1410047))

(assert (not d!151779))

(assert (not d!151781))

(assert (not bm!67039))

(assert (not b!1410170))

(assert (not d!151797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

