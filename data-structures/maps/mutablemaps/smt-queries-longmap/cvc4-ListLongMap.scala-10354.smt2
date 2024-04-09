; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121916 () Bool)

(assert start!121916)

(declare-datatypes ((array!96583 0))(
  ( (array!96584 (arr!46620 (Array (_ BitVec 32) (_ BitVec 64))) (size!47171 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96583)

(declare-datatypes ((SeekEntryResult!10953 0))(
  ( (MissingZero!10953 (index!46200 (_ BitVec 32))) (Found!10953 (index!46201 (_ BitVec 32))) (Intermediate!10953 (undefined!11765 Bool) (index!46202 (_ BitVec 32)) (x!127807 (_ BitVec 32))) (Undefined!10953) (MissingVacant!10953 (index!46203 (_ BitVec 32))) )
))
(declare-fun lt!623683 () SeekEntryResult!10953)

(declare-fun b!1414681 () Bool)

(declare-fun lt!623688 () (_ BitVec 32))

(declare-fun lt!623686 () SeekEntryResult!10953)

(declare-fun e!800678 () Bool)

(assert (=> b!1414681 (= e!800678 (or (bvslt (x!127807 lt!623686) #b00000000000000000000000000000000) (bvsgt (x!127807 lt!623686) #b01111111111111111111111111111110) (bvslt (x!127807 lt!623683) #b00000000000000000000000000000000) (bvsgt (x!127807 lt!623683) #b01111111111111111111111111111110) (bvslt lt!623688 #b00000000000000000000000000000000) (bvsge lt!623688 (size!47171 a!2901)) (and (bvsge (index!46202 lt!623686) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623686) (size!47171 a!2901)))))))

(declare-fun e!800676 () Bool)

(assert (=> b!1414681 e!800676))

(declare-fun res!951078 () Bool)

(assert (=> b!1414681 (=> (not res!951078) (not e!800676))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1414681 (= res!951078 (and (not (undefined!11765 lt!623683)) (= (index!46202 lt!623683) i!1037) (bvslt (x!127807 lt!623683) (x!127807 lt!623686)) (= (select (store (arr!46620 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46202 lt!623683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47830 0))(
  ( (Unit!47831) )
))
(declare-fun lt!623684 () Unit!47830)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47830)

(assert (=> b!1414681 (= lt!623684 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623688 (x!127807 lt!623686) (index!46202 lt!623686) (x!127807 lt!623683) (index!46202 lt!623683) (undefined!11765 lt!623683) mask!2840))))

(declare-fun b!1414682 () Bool)

(declare-fun e!800679 () Bool)

(assert (=> b!1414682 (= e!800679 e!800678)))

(declare-fun res!951076 () Bool)

(assert (=> b!1414682 (=> res!951076 e!800678)))

(assert (=> b!1414682 (= res!951076 (or (= lt!623686 lt!623683) (not (is-Intermediate!10953 lt!623683))))))

(declare-fun lt!623687 () array!96583)

(declare-fun lt!623685 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96583 (_ BitVec 32)) SeekEntryResult!10953)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414682 (= lt!623683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623685 mask!2840) lt!623685 lt!623687 mask!2840))))

(assert (=> b!1414682 (= lt!623685 (select (store (arr!46620 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414682 (= lt!623687 (array!96584 (store (arr!46620 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47171 a!2901)))))

(declare-fun b!1414683 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96583 (_ BitVec 32)) SeekEntryResult!10953)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96583 (_ BitVec 32)) SeekEntryResult!10953)

(assert (=> b!1414683 (= e!800676 (= (seekEntryOrOpen!0 lt!623685 lt!623687 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127807 lt!623683) (index!46202 lt!623683) (index!46202 lt!623683) (select (arr!46620 a!2901) j!112) lt!623687 mask!2840)))))

(declare-fun res!951075 () Bool)

(declare-fun e!800680 () Bool)

(assert (=> start!121916 (=> (not res!951075) (not e!800680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121916 (= res!951075 (validMask!0 mask!2840))))

(assert (=> start!121916 e!800680))

(assert (=> start!121916 true))

(declare-fun array_inv!35565 (array!96583) Bool)

(assert (=> start!121916 (array_inv!35565 a!2901)))

(declare-fun b!1414684 () Bool)

(assert (=> b!1414684 (= e!800680 (not e!800679))))

(declare-fun res!951072 () Bool)

(assert (=> b!1414684 (=> res!951072 e!800679)))

(assert (=> b!1414684 (= res!951072 (or (not (is-Intermediate!10953 lt!623686)) (undefined!11765 lt!623686)))))

(declare-fun e!800681 () Bool)

(assert (=> b!1414684 e!800681))

(declare-fun res!951077 () Bool)

(assert (=> b!1414684 (=> (not res!951077) (not e!800681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96583 (_ BitVec 32)) Bool)

(assert (=> b!1414684 (= res!951077 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623689 () Unit!47830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47830)

(assert (=> b!1414684 (= lt!623689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1414684 (= lt!623686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623688 (select (arr!46620 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1414684 (= lt!623688 (toIndex!0 (select (arr!46620 a!2901) j!112) mask!2840))))

(declare-fun b!1414685 () Bool)

(declare-fun res!951071 () Bool)

(assert (=> b!1414685 (=> (not res!951071) (not e!800680))))

(declare-datatypes ((List!33319 0))(
  ( (Nil!33316) (Cons!33315 (h!34599 (_ BitVec 64)) (t!48020 List!33319)) )
))
(declare-fun arrayNoDuplicates!0 (array!96583 (_ BitVec 32) List!33319) Bool)

(assert (=> b!1414685 (= res!951071 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33316))))

(declare-fun b!1414686 () Bool)

(declare-fun res!951070 () Bool)

(assert (=> b!1414686 (=> (not res!951070) (not e!800680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414686 (= res!951070 (validKeyInArray!0 (select (arr!46620 a!2901) j!112)))))

(declare-fun b!1414687 () Bool)

(declare-fun res!951069 () Bool)

(assert (=> b!1414687 (=> (not res!951069) (not e!800680))))

(assert (=> b!1414687 (= res!951069 (and (= (size!47171 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47171 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47171 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1414688 () Bool)

(declare-fun res!951073 () Bool)

(assert (=> b!1414688 (=> (not res!951073) (not e!800680))))

(assert (=> b!1414688 (= res!951073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1414689 () Bool)

(declare-fun res!951074 () Bool)

(assert (=> b!1414689 (=> (not res!951074) (not e!800680))))

(assert (=> b!1414689 (= res!951074 (validKeyInArray!0 (select (arr!46620 a!2901) i!1037)))))

(declare-fun b!1414690 () Bool)

(assert (=> b!1414690 (= e!800681 (= (seekEntryOrOpen!0 (select (arr!46620 a!2901) j!112) a!2901 mask!2840) (Found!10953 j!112)))))

(assert (= (and start!121916 res!951075) b!1414687))

(assert (= (and b!1414687 res!951069) b!1414689))

(assert (= (and b!1414689 res!951074) b!1414686))

(assert (= (and b!1414686 res!951070) b!1414688))

(assert (= (and b!1414688 res!951073) b!1414685))

(assert (= (and b!1414685 res!951071) b!1414684))

(assert (= (and b!1414684 res!951077) b!1414690))

(assert (= (and b!1414684 (not res!951072)) b!1414682))

(assert (= (and b!1414682 (not res!951076)) b!1414681))

(assert (= (and b!1414681 res!951078) b!1414683))

(declare-fun m!1304987 () Bool)

(assert (=> b!1414682 m!1304987))

(assert (=> b!1414682 m!1304987))

(declare-fun m!1304989 () Bool)

(assert (=> b!1414682 m!1304989))

(declare-fun m!1304991 () Bool)

(assert (=> b!1414682 m!1304991))

(declare-fun m!1304993 () Bool)

(assert (=> b!1414682 m!1304993))

(declare-fun m!1304995 () Bool)

(assert (=> start!121916 m!1304995))

(declare-fun m!1304997 () Bool)

(assert (=> start!121916 m!1304997))

(declare-fun m!1304999 () Bool)

(assert (=> b!1414688 m!1304999))

(declare-fun m!1305001 () Bool)

(assert (=> b!1414683 m!1305001))

(declare-fun m!1305003 () Bool)

(assert (=> b!1414683 m!1305003))

(assert (=> b!1414683 m!1305003))

(declare-fun m!1305005 () Bool)

(assert (=> b!1414683 m!1305005))

(declare-fun m!1305007 () Bool)

(assert (=> b!1414685 m!1305007))

(declare-fun m!1305009 () Bool)

(assert (=> b!1414689 m!1305009))

(assert (=> b!1414689 m!1305009))

(declare-fun m!1305011 () Bool)

(assert (=> b!1414689 m!1305011))

(assert (=> b!1414690 m!1305003))

(assert (=> b!1414690 m!1305003))

(declare-fun m!1305013 () Bool)

(assert (=> b!1414690 m!1305013))

(assert (=> b!1414684 m!1305003))

(declare-fun m!1305015 () Bool)

(assert (=> b!1414684 m!1305015))

(assert (=> b!1414684 m!1305003))

(declare-fun m!1305017 () Bool)

(assert (=> b!1414684 m!1305017))

(declare-fun m!1305019 () Bool)

(assert (=> b!1414684 m!1305019))

(assert (=> b!1414684 m!1305003))

(declare-fun m!1305021 () Bool)

(assert (=> b!1414684 m!1305021))

(assert (=> b!1414681 m!1304991))

(declare-fun m!1305023 () Bool)

(assert (=> b!1414681 m!1305023))

(declare-fun m!1305025 () Bool)

(assert (=> b!1414681 m!1305025))

(assert (=> b!1414686 m!1305003))

(assert (=> b!1414686 m!1305003))

(declare-fun m!1305027 () Bool)

(assert (=> b!1414686 m!1305027))

(push 1)

(assert (not b!1414686))

(assert (not b!1414683))

(assert (not b!1414689))

(assert (not start!121916))

(assert (not b!1414681))

(assert (not b!1414684))

(assert (not b!1414690))

(assert (not b!1414682))

(assert (not b!1414688))

(assert (not b!1414685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152353 () Bool)

(assert (=> d!152353 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121916 d!152353))

(declare-fun d!152361 () Bool)

(assert (=> d!152361 (= (array_inv!35565 a!2901) (bvsge (size!47171 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121916 d!152361))

(declare-fun d!152363 () Bool)

(declare-fun e!800753 () Bool)

(assert (=> d!152363 e!800753))

(declare-fun c!131334 () Bool)

(declare-fun lt!623745 () SeekEntryResult!10953)

(assert (=> d!152363 (= c!131334 (and (is-Intermediate!10953 lt!623745) (undefined!11765 lt!623745)))))

(declare-fun e!800756 () SeekEntryResult!10953)

(assert (=> d!152363 (= lt!623745 e!800756)))

(declare-fun c!131336 () Bool)

(assert (=> d!152363 (= c!131336 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623742 () (_ BitVec 64))

(assert (=> d!152363 (= lt!623742 (select (arr!46620 lt!623687) (toIndex!0 lt!623685 mask!2840)))))

(assert (=> d!152363 (validMask!0 mask!2840)))

(assert (=> d!152363 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623685 mask!2840) lt!623685 lt!623687 mask!2840) lt!623745)))

(declare-fun b!1414817 () Bool)

(assert (=> b!1414817 (and (bvsge (index!46202 lt!623745) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623745) (size!47171 lt!623687)))))

(declare-fun e!800754 () Bool)

(assert (=> b!1414817 (= e!800754 (= (select (arr!46620 lt!623687) (index!46202 lt!623745)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414818 () Bool)

(declare-fun e!800755 () Bool)

(assert (=> b!1414818 (= e!800753 e!800755)))

(declare-fun res!951112 () Bool)

(assert (=> b!1414818 (= res!951112 (and (is-Intermediate!10953 lt!623745) (not (undefined!11765 lt!623745)) (bvslt (x!127807 lt!623745) #b01111111111111111111111111111110) (bvsge (x!127807 lt!623745) #b00000000000000000000000000000000) (bvsge (x!127807 lt!623745) #b00000000000000000000000000000000)))))

(assert (=> b!1414818 (=> (not res!951112) (not e!800755))))

(declare-fun b!1414819 () Bool)

(assert (=> b!1414819 (= e!800753 (bvsge (x!127807 lt!623745) #b01111111111111111111111111111110))))

(declare-fun b!1414820 () Bool)

(assert (=> b!1414820 (= e!800756 (Intermediate!10953 true (toIndex!0 lt!623685 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414821 () Bool)

(assert (=> b!1414821 (and (bvsge (index!46202 lt!623745) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623745) (size!47171 lt!623687)))))

(declare-fun res!951113 () Bool)

(assert (=> b!1414821 (= res!951113 (= (select (arr!46620 lt!623687) (index!46202 lt!623745)) lt!623685))))

(assert (=> b!1414821 (=> res!951113 e!800754)))

(assert (=> b!1414821 (= e!800755 e!800754)))

(declare-fun b!1414822 () Bool)

(declare-fun e!800752 () SeekEntryResult!10953)

(assert (=> b!1414822 (= e!800756 e!800752)))

(declare-fun c!131335 () Bool)

(assert (=> b!1414822 (= c!131335 (or (= lt!623742 lt!623685) (= (bvadd lt!623742 lt!623742) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414823 () Bool)

(assert (=> b!1414823 (and (bvsge (index!46202 lt!623745) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623745) (size!47171 lt!623687)))))

(declare-fun res!951111 () Bool)

(assert (=> b!1414823 (= res!951111 (= (select (arr!46620 lt!623687) (index!46202 lt!623745)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414823 (=> res!951111 e!800754)))

(declare-fun b!1414824 () Bool)

(assert (=> b!1414824 (= e!800752 (Intermediate!10953 false (toIndex!0 lt!623685 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414825 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414825 (= e!800752 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623685 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623685 lt!623687 mask!2840))))

(assert (= (and d!152363 c!131336) b!1414820))

(assert (= (and d!152363 (not c!131336)) b!1414822))

(assert (= (and b!1414822 c!131335) b!1414824))

(assert (= (and b!1414822 (not c!131335)) b!1414825))

(assert (= (and d!152363 c!131334) b!1414819))

(assert (= (and d!152363 (not c!131334)) b!1414818))

(assert (= (and b!1414818 res!951112) b!1414821))

(assert (= (and b!1414821 (not res!951113)) b!1414823))

(assert (= (and b!1414823 (not res!951111)) b!1414817))

(assert (=> d!152363 m!1304987))

(declare-fun m!1305085 () Bool)

(assert (=> d!152363 m!1305085))

(assert (=> d!152363 m!1304995))

(assert (=> b!1414825 m!1304987))

(declare-fun m!1305087 () Bool)

(assert (=> b!1414825 m!1305087))

(assert (=> b!1414825 m!1305087))

(declare-fun m!1305089 () Bool)

(assert (=> b!1414825 m!1305089))

(declare-fun m!1305091 () Bool)

(assert (=> b!1414817 m!1305091))

(assert (=> b!1414821 m!1305091))

(assert (=> b!1414823 m!1305091))

(assert (=> b!1414682 d!152363))

(declare-fun d!152371 () Bool)

(declare-fun lt!623761 () (_ BitVec 32))

(declare-fun lt!623760 () (_ BitVec 32))

(assert (=> d!152371 (= lt!623761 (bvmul (bvxor lt!623760 (bvlshr lt!623760 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152371 (= lt!623760 ((_ extract 31 0) (bvand (bvxor lt!623685 (bvlshr lt!623685 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152371 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951114 (let ((h!34602 ((_ extract 31 0) (bvand (bvxor lt!623685 (bvlshr lt!623685 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127814 (bvmul (bvxor h!34602 (bvlshr h!34602 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127814 (bvlshr x!127814 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951114 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951114 #b00000000000000000000000000000000))))))

(assert (=> d!152371 (= (toIndex!0 lt!623685 mask!2840) (bvand (bvxor lt!623761 (bvlshr lt!623761 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414682 d!152371))

(declare-fun d!152377 () Bool)

(assert (=> d!152377 (and (not (undefined!11765 lt!623683)) (= (index!46202 lt!623683) i!1037) (bvslt (x!127807 lt!623683) (x!127807 lt!623686)))))

(declare-fun lt!623767 () Unit!47830)

(declare-fun choose!62 (array!96583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47830)

(assert (=> d!152377 (= lt!623767 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623688 (x!127807 lt!623686) (index!46202 lt!623686) (x!127807 lt!623683) (index!46202 lt!623683) (undefined!11765 lt!623683) mask!2840))))

(assert (=> d!152377 (validMask!0 mask!2840)))

(assert (=> d!152377 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623688 (x!127807 lt!623686) (index!46202 lt!623686) (x!127807 lt!623683) (index!46202 lt!623683) (undefined!11765 lt!623683) mask!2840) lt!623767)))

(declare-fun bs!41238 () Bool)

(assert (= bs!41238 d!152377))

(declare-fun m!1305107 () Bool)

(assert (=> bs!41238 m!1305107))

(assert (=> bs!41238 m!1304995))

(assert (=> b!1414681 d!152377))

(declare-fun d!152384 () Bool)

(assert (=> d!152384 (= (validKeyInArray!0 (select (arr!46620 a!2901) j!112)) (and (not (= (select (arr!46620 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46620 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414686 d!152384))

(declare-fun b!1414872 () Bool)

(declare-fun e!800791 () Bool)

(declare-fun call!67170 () Bool)

(assert (=> b!1414872 (= e!800791 call!67170)))

(declare-fun b!1414873 () Bool)

(assert (=> b!1414873 (= e!800791 call!67170)))

(declare-fun bm!67167 () Bool)

(declare-fun c!131348 () Bool)

(assert (=> bm!67167 (= call!67170 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131348 (Cons!33315 (select (arr!46620 a!2901) #b00000000000000000000000000000000) Nil!33316) Nil!33316)))))

(declare-fun b!1414874 () Bool)

(declare-fun e!800793 () Bool)

(assert (=> b!1414874 (= e!800793 e!800791)))

(assert (=> b!1414874 (= c!131348 (validKeyInArray!0 (select (arr!46620 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152387 () Bool)

(declare-fun res!951141 () Bool)

(declare-fun e!800792 () Bool)

(assert (=> d!152387 (=> res!951141 e!800792)))

(assert (=> d!152387 (= res!951141 (bvsge #b00000000000000000000000000000000 (size!47171 a!2901)))))

(assert (=> d!152387 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33316) e!800792)))

(declare-fun b!1414875 () Bool)

(assert (=> b!1414875 (= e!800792 e!800793)))

(declare-fun res!951140 () Bool)

(assert (=> b!1414875 (=> (not res!951140) (not e!800793))))

(declare-fun e!800794 () Bool)

(assert (=> b!1414875 (= res!951140 (not e!800794))))

(declare-fun res!951139 () Bool)

(assert (=> b!1414875 (=> (not res!951139) (not e!800794))))

(assert (=> b!1414875 (= res!951139 (validKeyInArray!0 (select (arr!46620 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414876 () Bool)

(declare-fun contains!9837 (List!33319 (_ BitVec 64)) Bool)

(assert (=> b!1414876 (= e!800794 (contains!9837 Nil!33316 (select (arr!46620 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152387 (not res!951141)) b!1414875))

(assert (= (and b!1414875 res!951139) b!1414876))

(assert (= (and b!1414875 res!951140) b!1414874))

(assert (= (and b!1414874 c!131348) b!1414873))

(assert (= (and b!1414874 (not c!131348)) b!1414872))

(assert (= (or b!1414873 b!1414872) bm!67167))

(declare-fun m!1305119 () Bool)

(assert (=> bm!67167 m!1305119))

(declare-fun m!1305121 () Bool)

(assert (=> bm!67167 m!1305121))

(assert (=> b!1414874 m!1305119))

(assert (=> b!1414874 m!1305119))

(declare-fun m!1305123 () Bool)

(assert (=> b!1414874 m!1305123))

(assert (=> b!1414875 m!1305119))

(assert (=> b!1414875 m!1305119))

(assert (=> b!1414875 m!1305123))

(assert (=> b!1414876 m!1305119))

(assert (=> b!1414876 m!1305119))

(declare-fun m!1305125 () Bool)

(assert (=> b!1414876 m!1305125))

(assert (=> b!1414685 d!152387))

(declare-fun b!1414926 () Bool)

(declare-fun e!800825 () SeekEntryResult!10953)

(declare-fun lt!623797 () SeekEntryResult!10953)

(assert (=> b!1414926 (= e!800825 (MissingZero!10953 (index!46202 lt!623797)))))

(declare-fun b!1414927 () Bool)

(declare-fun e!800826 () SeekEntryResult!10953)

(assert (=> b!1414927 (= e!800826 (Found!10953 (index!46202 lt!623797)))))

(declare-fun b!1414928 () Bool)

(assert (=> b!1414928 (= e!800825 (seekKeyOrZeroReturnVacant!0 (x!127807 lt!623797) (index!46202 lt!623797) (index!46202 lt!623797) (select (arr!46620 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414929 () Bool)

(declare-fun c!131369 () Bool)

(declare-fun lt!623796 () (_ BitVec 64))

(assert (=> b!1414929 (= c!131369 (= lt!623796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414929 (= e!800826 e!800825)))

(declare-fun d!152395 () Bool)

(declare-fun lt!623798 () SeekEntryResult!10953)

(assert (=> d!152395 (and (or (is-Undefined!10953 lt!623798) (not (is-Found!10953 lt!623798)) (and (bvsge (index!46201 lt!623798) #b00000000000000000000000000000000) (bvslt (index!46201 lt!623798) (size!47171 a!2901)))) (or (is-Undefined!10953 lt!623798) (is-Found!10953 lt!623798) (not (is-MissingZero!10953 lt!623798)) (and (bvsge (index!46200 lt!623798) #b00000000000000000000000000000000) (bvslt (index!46200 lt!623798) (size!47171 a!2901)))) (or (is-Undefined!10953 lt!623798) (is-Found!10953 lt!623798) (is-MissingZero!10953 lt!623798) (not (is-MissingVacant!10953 lt!623798)) (and (bvsge (index!46203 lt!623798) #b00000000000000000000000000000000) (bvslt (index!46203 lt!623798) (size!47171 a!2901)))) (or (is-Undefined!10953 lt!623798) (ite (is-Found!10953 lt!623798) (= (select (arr!46620 a!2901) (index!46201 lt!623798)) (select (arr!46620 a!2901) j!112)) (ite (is-MissingZero!10953 lt!623798) (= (select (arr!46620 a!2901) (index!46200 lt!623798)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10953 lt!623798) (= (select (arr!46620 a!2901) (index!46203 lt!623798)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800827 () SeekEntryResult!10953)

(assert (=> d!152395 (= lt!623798 e!800827)))

(declare-fun c!131368 () Bool)

(assert (=> d!152395 (= c!131368 (and (is-Intermediate!10953 lt!623797) (undefined!11765 lt!623797)))))

(assert (=> d!152395 (= lt!623797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46620 a!2901) j!112) mask!2840) (select (arr!46620 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152395 (validMask!0 mask!2840)))

(assert (=> d!152395 (= (seekEntryOrOpen!0 (select (arr!46620 a!2901) j!112) a!2901 mask!2840) lt!623798)))

(declare-fun b!1414930 () Bool)

(assert (=> b!1414930 (= e!800827 Undefined!10953)))

(declare-fun b!1414931 () Bool)

(assert (=> b!1414931 (= e!800827 e!800826)))

(assert (=> b!1414931 (= lt!623796 (select (arr!46620 a!2901) (index!46202 lt!623797)))))

(declare-fun c!131370 () Bool)

(assert (=> b!1414931 (= c!131370 (= lt!623796 (select (arr!46620 a!2901) j!112)))))

(assert (= (and d!152395 c!131368) b!1414930))

(assert (= (and d!152395 (not c!131368)) b!1414931))

(assert (= (and b!1414931 c!131370) b!1414927))

(assert (= (and b!1414931 (not c!131370)) b!1414929))

(assert (= (and b!1414929 c!131369) b!1414926))

(assert (= (and b!1414929 (not c!131369)) b!1414928))

(assert (=> b!1414928 m!1305003))

(declare-fun m!1305157 () Bool)

(assert (=> b!1414928 m!1305157))

(assert (=> d!152395 m!1304995))

(declare-fun m!1305159 () Bool)

(assert (=> d!152395 m!1305159))

(assert (=> d!152395 m!1305003))

(assert (=> d!152395 m!1305015))

(declare-fun m!1305161 () Bool)

(assert (=> d!152395 m!1305161))

(declare-fun m!1305163 () Bool)

(assert (=> d!152395 m!1305163))

(assert (=> d!152395 m!1305015))

(assert (=> d!152395 m!1305003))

(declare-fun m!1305165 () Bool)

(assert (=> d!152395 m!1305165))

(declare-fun m!1305167 () Bool)

(assert (=> b!1414931 m!1305167))

(assert (=> b!1414690 d!152395))

(declare-fun d!152411 () Bool)

(assert (=> d!152411 (= (validKeyInArray!0 (select (arr!46620 a!2901) i!1037)) (and (not (= (select (arr!46620 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46620 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414689 d!152411))

(declare-fun b!1414955 () Bool)

(declare-fun e!800842 () Bool)

(declare-fun call!67177 () Bool)

(assert (=> b!1414955 (= e!800842 call!67177)))

(declare-fun bm!67174 () Bool)

(assert (=> bm!67174 (= call!67177 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414956 () Bool)

(declare-fun e!800843 () Bool)

(declare-fun e!800844 () Bool)

(assert (=> b!1414956 (= e!800843 e!800844)))

(declare-fun c!131379 () Bool)

(assert (=> b!1414956 (= c!131379 (validKeyInArray!0 (select (arr!46620 a!2901) j!112)))))

(declare-fun d!152413 () Bool)

(declare-fun res!951160 () Bool)

(assert (=> d!152413 (=> res!951160 e!800843)))

(assert (=> d!152413 (= res!951160 (bvsge j!112 (size!47171 a!2901)))))

(assert (=> d!152413 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800843)))

(declare-fun b!1414957 () Bool)

(assert (=> b!1414957 (= e!800844 e!800842)))

(declare-fun lt!623815 () (_ BitVec 64))

(assert (=> b!1414957 (= lt!623815 (select (arr!46620 a!2901) j!112))))

(declare-fun lt!623817 () Unit!47830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96583 (_ BitVec 64) (_ BitVec 32)) Unit!47830)

(assert (=> b!1414957 (= lt!623817 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623815 j!112))))

(declare-fun arrayContainsKey!0 (array!96583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414957 (arrayContainsKey!0 a!2901 lt!623815 #b00000000000000000000000000000000)))

(declare-fun lt!623816 () Unit!47830)

(assert (=> b!1414957 (= lt!623816 lt!623817)))

(declare-fun res!951161 () Bool)

(assert (=> b!1414957 (= res!951161 (= (seekEntryOrOpen!0 (select (arr!46620 a!2901) j!112) a!2901 mask!2840) (Found!10953 j!112)))))

(assert (=> b!1414957 (=> (not res!951161) (not e!800842))))

(declare-fun b!1414958 () Bool)

(assert (=> b!1414958 (= e!800844 call!67177)))

(assert (= (and d!152413 (not res!951160)) b!1414956))

(assert (= (and b!1414956 c!131379) b!1414957))

(assert (= (and b!1414956 (not c!131379)) b!1414958))

(assert (= (and b!1414957 res!951161) b!1414955))

(assert (= (or b!1414955 b!1414958) bm!67174))

(declare-fun m!1305189 () Bool)

(assert (=> bm!67174 m!1305189))

(assert (=> b!1414956 m!1305003))

(assert (=> b!1414956 m!1305003))

(assert (=> b!1414956 m!1305027))

(assert (=> b!1414957 m!1305003))

(declare-fun m!1305191 () Bool)

(assert (=> b!1414957 m!1305191))

(declare-fun m!1305193 () Bool)

(assert (=> b!1414957 m!1305193))

(assert (=> b!1414957 m!1305003))

(assert (=> b!1414957 m!1305013))

(assert (=> b!1414684 d!152413))

(declare-fun d!152427 () Bool)

(assert (=> d!152427 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623820 () Unit!47830)

(declare-fun choose!38 (array!96583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47830)

(assert (=> d!152427 (= lt!623820 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152427 (validMask!0 mask!2840)))

(assert (=> d!152427 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623820)))

(declare-fun bs!41242 () Bool)

(assert (= bs!41242 d!152427))

(assert (=> bs!41242 m!1305019))

(declare-fun m!1305195 () Bool)

(assert (=> bs!41242 m!1305195))

(assert (=> bs!41242 m!1304995))

(assert (=> b!1414684 d!152427))

(declare-fun d!152429 () Bool)

(declare-fun e!800846 () Bool)

(assert (=> d!152429 e!800846))

(declare-fun c!131380 () Bool)

(declare-fun lt!623822 () SeekEntryResult!10953)

(assert (=> d!152429 (= c!131380 (and (is-Intermediate!10953 lt!623822) (undefined!11765 lt!623822)))))

(declare-fun e!800849 () SeekEntryResult!10953)

(assert (=> d!152429 (= lt!623822 e!800849)))

(declare-fun c!131382 () Bool)

(assert (=> d!152429 (= c!131382 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623821 () (_ BitVec 64))

(assert (=> d!152429 (= lt!623821 (select (arr!46620 a!2901) lt!623688))))

(assert (=> d!152429 (validMask!0 mask!2840)))

(assert (=> d!152429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623688 (select (arr!46620 a!2901) j!112) a!2901 mask!2840) lt!623822)))

(declare-fun b!1414959 () Bool)

(assert (=> b!1414959 (and (bvsge (index!46202 lt!623822) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623822) (size!47171 a!2901)))))

(declare-fun e!800847 () Bool)

(assert (=> b!1414959 (= e!800847 (= (select (arr!46620 a!2901) (index!46202 lt!623822)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414960 () Bool)

(declare-fun e!800848 () Bool)

(assert (=> b!1414960 (= e!800846 e!800848)))

(declare-fun res!951163 () Bool)

(assert (=> b!1414960 (= res!951163 (and (is-Intermediate!10953 lt!623822) (not (undefined!11765 lt!623822)) (bvslt (x!127807 lt!623822) #b01111111111111111111111111111110) (bvsge (x!127807 lt!623822) #b00000000000000000000000000000000) (bvsge (x!127807 lt!623822) #b00000000000000000000000000000000)))))

(assert (=> b!1414960 (=> (not res!951163) (not e!800848))))

(declare-fun b!1414961 () Bool)

(assert (=> b!1414961 (= e!800846 (bvsge (x!127807 lt!623822) #b01111111111111111111111111111110))))

(declare-fun b!1414962 () Bool)

(assert (=> b!1414962 (= e!800849 (Intermediate!10953 true lt!623688 #b00000000000000000000000000000000))))

(declare-fun b!1414963 () Bool)

(assert (=> b!1414963 (and (bvsge (index!46202 lt!623822) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623822) (size!47171 a!2901)))))

(declare-fun res!951164 () Bool)

(assert (=> b!1414963 (= res!951164 (= (select (arr!46620 a!2901) (index!46202 lt!623822)) (select (arr!46620 a!2901) j!112)))))

(assert (=> b!1414963 (=> res!951164 e!800847)))

(assert (=> b!1414963 (= e!800848 e!800847)))

(declare-fun b!1414964 () Bool)

(declare-fun e!800845 () SeekEntryResult!10953)

(assert (=> b!1414964 (= e!800849 e!800845)))

(declare-fun c!131381 () Bool)

(assert (=> b!1414964 (= c!131381 (or (= lt!623821 (select (arr!46620 a!2901) j!112)) (= (bvadd lt!623821 lt!623821) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414965 () Bool)

(assert (=> b!1414965 (and (bvsge (index!46202 lt!623822) #b00000000000000000000000000000000) (bvslt (index!46202 lt!623822) (size!47171 a!2901)))))

(declare-fun res!951162 () Bool)

(assert (=> b!1414965 (= res!951162 (= (select (arr!46620 a!2901) (index!46202 lt!623822)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414965 (=> res!951162 e!800847)))

(declare-fun b!1414966 () Bool)

(assert (=> b!1414966 (= e!800845 (Intermediate!10953 false lt!623688 #b00000000000000000000000000000000))))

(declare-fun b!1414967 () Bool)

(assert (=> b!1414967 (= e!800845 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623688 #b00000000000000000000000000000000 mask!2840) (select (arr!46620 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!152429 c!131382) b!1414962))

(assert (= (and d!152429 (not c!131382)) b!1414964))

(assert (= (and b!1414964 c!131381) b!1414966))

(assert (= (and b!1414964 (not c!131381)) b!1414967))

(assert (= (and d!152429 c!131380) b!1414961))

(assert (= (and d!152429 (not c!131380)) b!1414960))

(assert (= (and b!1414960 res!951163) b!1414963))

(assert (= (and b!1414963 (not res!951164)) b!1414965))

(assert (= (and b!1414965 (not res!951162)) b!1414959))

(declare-fun m!1305197 () Bool)

(assert (=> d!152429 m!1305197))

(assert (=> d!152429 m!1304995))

(declare-fun m!1305199 () Bool)

(assert (=> b!1414967 m!1305199))

(assert (=> b!1414967 m!1305199))

(assert (=> b!1414967 m!1305003))

(declare-fun m!1305201 () Bool)

(assert (=> b!1414967 m!1305201))

(declare-fun m!1305203 () Bool)

(assert (=> b!1414959 m!1305203))

(assert (=> b!1414963 m!1305203))

(assert (=> b!1414965 m!1305203))

(assert (=> b!1414684 d!152429))

(declare-fun d!152431 () Bool)

(declare-fun lt!623824 () (_ BitVec 32))

(declare-fun lt!623823 () (_ BitVec 32))

(assert (=> d!152431 (= lt!623824 (bvmul (bvxor lt!623823 (bvlshr lt!623823 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152431 (= lt!623823 ((_ extract 31 0) (bvand (bvxor (select (arr!46620 a!2901) j!112) (bvlshr (select (arr!46620 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152431 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951114 (let ((h!34602 ((_ extract 31 0) (bvand (bvxor (select (arr!46620 a!2901) j!112) (bvlshr (select (arr!46620 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127814 (bvmul (bvxor h!34602 (bvlshr h!34602 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127814 (bvlshr x!127814 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951114 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951114 #b00000000000000000000000000000000))))))

(assert (=> d!152431 (= (toIndex!0 (select (arr!46620 a!2901) j!112) mask!2840) (bvand (bvxor lt!623824 (bvlshr lt!623824 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414684 d!152431))

(declare-fun b!1414968 () Bool)

(declare-fun e!800850 () SeekEntryResult!10953)

(declare-fun lt!623826 () SeekEntryResult!10953)

(assert (=> b!1414968 (= e!800850 (MissingZero!10953 (index!46202 lt!623826)))))

(declare-fun b!1414969 () Bool)

(declare-fun e!800851 () SeekEntryResult!10953)

(assert (=> b!1414969 (= e!800851 (Found!10953 (index!46202 lt!623826)))))

(declare-fun b!1414970 () Bool)

(assert (=> b!1414970 (= e!800850 (seekKeyOrZeroReturnVacant!0 (x!127807 lt!623826) (index!46202 lt!623826) (index!46202 lt!623826) lt!623685 lt!623687 mask!2840))))

(declare-fun b!1414971 () Bool)

(declare-fun c!131384 () Bool)

(declare-fun lt!623825 () (_ BitVec 64))

(assert (=> b!1414971 (= c!131384 (= lt!623825 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414971 (= e!800851 e!800850)))

(declare-fun d!152433 () Bool)

(declare-fun lt!623829 () SeekEntryResult!10953)

(assert (=> d!152433 (and (or (is-Undefined!10953 lt!623829) (not (is-Found!10953 lt!623829)) (and (bvsge (index!46201 lt!623829) #b00000000000000000000000000000000) (bvslt (index!46201 lt!623829) (size!47171 lt!623687)))) (or (is-Undefined!10953 lt!623829) (is-Found!10953 lt!623829) (not (is-MissingZero!10953 lt!623829)) (and (bvsge (index!46200 lt!623829) #b00000000000000000000000000000000) (bvslt (index!46200 lt!623829) (size!47171 lt!623687)))) (or (is-Undefined!10953 lt!623829) (is-Found!10953 lt!623829) (is-MissingZero!10953 lt!623829) (not (is-MissingVacant!10953 lt!623829)) (and (bvsge (index!46203 lt!623829) #b00000000000000000000000000000000) (bvslt (index!46203 lt!623829) (size!47171 lt!623687)))) (or (is-Undefined!10953 lt!623829) (ite (is-Found!10953 lt!623829) (= (select (arr!46620 lt!623687) (index!46201 lt!623829)) lt!623685) (ite (is-MissingZero!10953 lt!623829) (= (select (arr!46620 lt!623687) (index!46200 lt!623829)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10953 lt!623829) (= (select (arr!46620 lt!623687) (index!46203 lt!623829)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800852 () SeekEntryResult!10953)

(assert (=> d!152433 (= lt!623829 e!800852)))

(declare-fun c!131383 () Bool)

(assert (=> d!152433 (= c!131383 (and (is-Intermediate!10953 lt!623826) (undefined!11765 lt!623826)))))

(assert (=> d!152433 (= lt!623826 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623685 mask!2840) lt!623685 lt!623687 mask!2840))))

(assert (=> d!152433 (validMask!0 mask!2840)))

(assert (=> d!152433 (= (seekEntryOrOpen!0 lt!623685 lt!623687 mask!2840) lt!623829)))

(declare-fun b!1414972 () Bool)

(assert (=> b!1414972 (= e!800852 Undefined!10953)))

(declare-fun b!1414973 () Bool)

(assert (=> b!1414973 (= e!800852 e!800851)))

(assert (=> b!1414973 (= lt!623825 (select (arr!46620 lt!623687) (index!46202 lt!623826)))))

(declare-fun c!131385 () Bool)

(assert (=> b!1414973 (= c!131385 (= lt!623825 lt!623685))))

(assert (= (and d!152433 c!131383) b!1414972))

(assert (= (and d!152433 (not c!131383)) b!1414973))

(assert (= (and b!1414973 c!131385) b!1414969))

(assert (= (and b!1414973 (not c!131385)) b!1414971))

(assert (= (and b!1414971 c!131384) b!1414968))

(assert (= (and b!1414971 (not c!131384)) b!1414970))

(declare-fun m!1305205 () Bool)

(assert (=> b!1414970 m!1305205))

(assert (=> d!152433 m!1304995))

(declare-fun m!1305207 () Bool)

(assert (=> d!152433 m!1305207))

(assert (=> d!152433 m!1304987))

(declare-fun m!1305209 () Bool)

(assert (=> d!152433 m!1305209))

(declare-fun m!1305211 () Bool)

(assert (=> d!152433 m!1305211))

(assert (=> d!152433 m!1304987))

(assert (=> d!152433 m!1304989))

(declare-fun m!1305213 () Bool)

(assert (=> b!1414973 m!1305213))

(assert (=> b!1414683 d!152433))

(declare-fun b!1415008 () Bool)

(declare-fun e!800872 () SeekEntryResult!10953)

(assert (=> b!1415008 (= e!800872 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127807 lt!623683) #b00000000000000000000000000000001) (nextIndex!0 (index!46202 lt!623683) (x!127807 lt!623683) mask!2840) (index!46202 lt!623683) (select (arr!46620 a!2901) j!112) lt!623687 mask!2840))))

(declare-fun b!1415009 () Bool)

(declare-fun e!800873 () SeekEntryResult!10953)

(declare-fun e!800871 () SeekEntryResult!10953)

(assert (=> b!1415009 (= e!800873 e!800871)))

(declare-fun c!131404 () Bool)

(declare-fun lt!623842 () (_ BitVec 64))

(assert (=> b!1415009 (= c!131404 (= lt!623842 (select (arr!46620 a!2901) j!112)))))

(declare-fun b!1415010 () Bool)

(assert (=> b!1415010 (= e!800871 (Found!10953 (index!46202 lt!623683)))))

(declare-fun b!1415011 () Bool)

(declare-fun c!131402 () Bool)

(assert (=> b!1415011 (= c!131402 (= lt!623842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1415011 (= e!800871 e!800872)))

(declare-fun lt!623841 () SeekEntryResult!10953)

(declare-fun d!152435 () Bool)

(assert (=> d!152435 (and (or (is-Undefined!10953 lt!623841) (not (is-Found!10953 lt!623841)) (and (bvsge (index!46201 lt!623841) #b00000000000000000000000000000000) (bvslt (index!46201 lt!623841) (size!47171 lt!623687)))) (or (is-Undefined!10953 lt!623841) (is-Found!10953 lt!623841) (not (is-MissingVacant!10953 lt!623841)) (not (= (index!46203 lt!623841) (index!46202 lt!623683))) (and (bvsge (index!46203 lt!623841) #b00000000000000000000000000000000) (bvslt (index!46203 lt!623841) (size!47171 lt!623687)))) (or (is-Undefined!10953 lt!623841) (ite (is-Found!10953 lt!623841) (= (select (arr!46620 lt!623687) (index!46201 lt!623841)) (select (arr!46620 a!2901) j!112)) (and (is-MissingVacant!10953 lt!623841) (= (index!46203 lt!623841) (index!46202 lt!623683)) (= (select (arr!46620 lt!623687) (index!46203 lt!623841)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152435 (= lt!623841 e!800873)))

(declare-fun c!131403 () Bool)

(assert (=> d!152435 (= c!131403 (bvsge (x!127807 lt!623683) #b01111111111111111111111111111110))))

(assert (=> d!152435 (= lt!623842 (select (arr!46620 lt!623687) (index!46202 lt!623683)))))

(assert (=> d!152435 (validMask!0 mask!2840)))

(assert (=> d!152435 (= (seekKeyOrZeroReturnVacant!0 (x!127807 lt!623683) (index!46202 lt!623683) (index!46202 lt!623683) (select (arr!46620 a!2901) j!112) lt!623687 mask!2840) lt!623841)))

(declare-fun b!1415012 () Bool)

(assert (=> b!1415012 (= e!800872 (MissingVacant!10953 (index!46202 lt!623683)))))

(declare-fun b!1415013 () Bool)

(assert (=> b!1415013 (= e!800873 Undefined!10953)))

(assert (= (and d!152435 c!131403) b!1415013))

(assert (= (and d!152435 (not c!131403)) b!1415009))

(assert (= (and b!1415009 c!131404) b!1415010))

(assert (= (and b!1415009 (not c!131404)) b!1415011))

(assert (= (and b!1415011 c!131402) b!1415012))

(assert (= (and b!1415011 (not c!131402)) b!1415008))

(declare-fun m!1305233 () Bool)

(assert (=> b!1415008 m!1305233))

(assert (=> b!1415008 m!1305233))

(assert (=> b!1415008 m!1305003))

(declare-fun m!1305235 () Bool)

(assert (=> b!1415008 m!1305235))

(declare-fun m!1305237 () Bool)

(assert (=> d!152435 m!1305237))

(declare-fun m!1305239 () Bool)

(assert (=> d!152435 m!1305239))

(declare-fun m!1305241 () Bool)

(assert (=> d!152435 m!1305241))

(assert (=> d!152435 m!1304995))

(assert (=> b!1414683 d!152435))

(declare-fun b!1415014 () Bool)

(declare-fun e!800874 () Bool)

(declare-fun call!67179 () Bool)

(assert (=> b!1415014 (= e!800874 call!67179)))

(declare-fun bm!67176 () Bool)

(assert (=> bm!67176 (= call!67179 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1415015 () Bool)

(declare-fun e!800875 () Bool)

(declare-fun e!800876 () Bool)

(assert (=> b!1415015 (= e!800875 e!800876)))

(declare-fun c!131405 () Bool)

(assert (=> b!1415015 (= c!131405 (validKeyInArray!0 (select (arr!46620 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152439 () Bool)

(declare-fun res!951167 () Bool)

(assert (=> d!152439 (=> res!951167 e!800875)))

(assert (=> d!152439 (= res!951167 (bvsge #b00000000000000000000000000000000 (size!47171 a!2901)))))

(assert (=> d!152439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800875)))

(declare-fun b!1415016 () Bool)

(assert (=> b!1415016 (= e!800876 e!800874)))

(declare-fun lt!623843 () (_ BitVec 64))

(assert (=> b!1415016 (= lt!623843 (select (arr!46620 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623845 () Unit!47830)

(assert (=> b!1415016 (= lt!623845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623843 #b00000000000000000000000000000000))))

(assert (=> b!1415016 (arrayContainsKey!0 a!2901 lt!623843 #b00000000000000000000000000000000)))

(declare-fun lt!623844 () Unit!47830)

(assert (=> b!1415016 (= lt!623844 lt!623845)))

(declare-fun res!951168 () Bool)

(assert (=> b!1415016 (= res!951168 (= (seekEntryOrOpen!0 (select (arr!46620 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10953 #b00000000000000000000000000000000)))))

(assert (=> b!1415016 (=> (not res!951168) (not e!800874))))

(declare-fun b!1415017 () Bool)

(assert (=> b!1415017 (= e!800876 call!67179)))

(assert (= (and d!152439 (not res!951167)) b!1415015))

(assert (= (and b!1415015 c!131405) b!1415016))

(assert (= (and b!1415015 (not c!131405)) b!1415017))

(assert (= (and b!1415016 res!951168) b!1415014))

(assert (= (or b!1415014 b!1415017) bm!67176))

(declare-fun m!1305243 () Bool)

(assert (=> bm!67176 m!1305243))

(assert (=> b!1415015 m!1305119))

(assert (=> b!1415015 m!1305119))

(assert (=> b!1415015 m!1305123))

(assert (=> b!1415016 m!1305119))

(declare-fun m!1305245 () Bool)

(assert (=> b!1415016 m!1305245))

(declare-fun m!1305247 () Bool)

(assert (=> b!1415016 m!1305247))

(assert (=> b!1415016 m!1305119))

(declare-fun m!1305249 () Bool)

(assert (=> b!1415016 m!1305249))

(assert (=> b!1414688 d!152439))

(push 1)

(assert (not bm!67174))

(assert (not bm!67167))

(assert (not d!152433))

(assert (not d!152435))

(assert (not d!152395))

(assert (not b!1415008))

(assert (not b!1414874))

(assert (not b!1414970))

(assert (not b!1414875))

(assert (not b!1414876))

(assert (not b!1414957))

(assert (not d!152377))

(assert (not b!1414967))

(assert (not b!1415016))

(assert (not b!1415015))

(assert (not b!1414928))

(assert (not d!152427))

(assert (not d!152363))

(assert (not d!152429))

(assert (not b!1414956))

(assert (not b!1414825))

(assert (not bm!67176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

