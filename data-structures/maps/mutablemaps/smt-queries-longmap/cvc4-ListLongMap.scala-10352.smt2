; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121772 () Bool)

(assert start!121772)

(declare-fun b!1413847 () Bool)

(declare-fun res!950717 () Bool)

(declare-fun e!800179 () Bool)

(assert (=> b!1413847 (=> (not res!950717) (not e!800179))))

(declare-datatypes ((array!96565 0))(
  ( (array!96566 (arr!46614 (Array (_ BitVec 32) (_ BitVec 64))) (size!47165 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96565)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96565 (_ BitVec 32)) Bool)

(assert (=> b!1413847 (= res!950717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413848 () Bool)

(declare-fun e!800180 () Bool)

(declare-fun e!800182 () Bool)

(assert (=> b!1413848 (= e!800180 e!800182)))

(declare-fun res!950716 () Bool)

(assert (=> b!1413848 (=> res!950716 e!800182)))

(declare-datatypes ((SeekEntryResult!10947 0))(
  ( (MissingZero!10947 (index!46170 (_ BitVec 32))) (Found!10947 (index!46171 (_ BitVec 32))) (Intermediate!10947 (undefined!11759 Bool) (index!46172 (_ BitVec 32)) (x!127761 (_ BitVec 32))) (Undefined!10947) (MissingVacant!10947 (index!46173 (_ BitVec 32))) )
))
(declare-fun lt!623250 () SeekEntryResult!10947)

(declare-fun lt!623247 () SeekEntryResult!10947)

(assert (=> b!1413848 (= res!950716 (or (= lt!623250 lt!623247) (not (is-Intermediate!10947 lt!623247))))))

(declare-fun lt!623245 () array!96565)

(declare-fun lt!623251 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96565 (_ BitVec 32)) SeekEntryResult!10947)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413848 (= lt!623247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623251 mask!2840) lt!623251 lt!623245 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1413848 (= lt!623251 (select (store (arr!46614 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413848 (= lt!623245 (array!96566 (store (arr!46614 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47165 a!2901)))))

(declare-fun b!1413849 () Bool)

(declare-fun e!800183 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96565 (_ BitVec 32)) SeekEntryResult!10947)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96565 (_ BitVec 32)) SeekEntryResult!10947)

(assert (=> b!1413849 (= e!800183 (= (seekEntryOrOpen!0 lt!623251 lt!623245 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127761 lt!623247) (index!46172 lt!623247) (index!46172 lt!623247) (select (arr!46614 a!2901) j!112) lt!623245 mask!2840)))))

(declare-fun b!1413850 () Bool)

(declare-fun res!950709 () Bool)

(assert (=> b!1413850 (=> (not res!950709) (not e!800179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413850 (= res!950709 (validKeyInArray!0 (select (arr!46614 a!2901) i!1037)))))

(declare-fun e!800178 () Bool)

(declare-fun b!1413851 () Bool)

(assert (=> b!1413851 (= e!800178 (= (seekEntryOrOpen!0 (select (arr!46614 a!2901) j!112) a!2901 mask!2840) (Found!10947 j!112)))))

(declare-fun b!1413852 () Bool)

(declare-fun res!950710 () Bool)

(assert (=> b!1413852 (=> (not res!950710) (not e!800179))))

(assert (=> b!1413852 (= res!950710 (and (= (size!47165 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47165 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47165 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413854 () Bool)

(declare-fun res!950711 () Bool)

(assert (=> b!1413854 (=> (not res!950711) (not e!800179))))

(assert (=> b!1413854 (= res!950711 (validKeyInArray!0 (select (arr!46614 a!2901) j!112)))))

(declare-fun b!1413855 () Bool)

(declare-fun res!950718 () Bool)

(assert (=> b!1413855 (=> (not res!950718) (not e!800179))))

(declare-datatypes ((List!33313 0))(
  ( (Nil!33310) (Cons!33309 (h!34587 (_ BitVec 64)) (t!48014 List!33313)) )
))
(declare-fun arrayNoDuplicates!0 (array!96565 (_ BitVec 32) List!33313) Bool)

(assert (=> b!1413855 (= res!950718 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33310))))

(declare-fun b!1413856 () Bool)

(assert (=> b!1413856 (= e!800182 (or (bvslt (x!127761 lt!623250) #b00000000000000000000000000000000) (bvsgt (x!127761 lt!623250) #b01111111111111111111111111111110) (and (bvsge (x!127761 lt!623247) #b00000000000000000000000000000000) (bvsle (x!127761 lt!623247) #b01111111111111111111111111111110))))))

(assert (=> b!1413856 e!800183))

(declare-fun res!950714 () Bool)

(assert (=> b!1413856 (=> (not res!950714) (not e!800183))))

(assert (=> b!1413856 (= res!950714 (and (not (undefined!11759 lt!623247)) (= (index!46172 lt!623247) i!1037) (bvslt (x!127761 lt!623247) (x!127761 lt!623250)) (= (select (store (arr!46614 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46172 lt!623247)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47818 0))(
  ( (Unit!47819) )
))
(declare-fun lt!623249 () Unit!47818)

(declare-fun lt!623246 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47818)

(assert (=> b!1413856 (= lt!623249 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623246 (x!127761 lt!623250) (index!46172 lt!623250) (x!127761 lt!623247) (index!46172 lt!623247) (undefined!11759 lt!623247) mask!2840))))

(declare-fun b!1413853 () Bool)

(assert (=> b!1413853 (= e!800179 (not e!800180))))

(declare-fun res!950712 () Bool)

(assert (=> b!1413853 (=> res!950712 e!800180)))

(assert (=> b!1413853 (= res!950712 (or (not (is-Intermediate!10947 lt!623250)) (undefined!11759 lt!623250)))))

(assert (=> b!1413853 e!800178))

(declare-fun res!950713 () Bool)

(assert (=> b!1413853 (=> (not res!950713) (not e!800178))))

(assert (=> b!1413853 (= res!950713 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623248 () Unit!47818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47818)

(assert (=> b!1413853 (= lt!623248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1413853 (= lt!623250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623246 (select (arr!46614 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413853 (= lt!623246 (toIndex!0 (select (arr!46614 a!2901) j!112) mask!2840))))

(declare-fun res!950715 () Bool)

(assert (=> start!121772 (=> (not res!950715) (not e!800179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121772 (= res!950715 (validMask!0 mask!2840))))

(assert (=> start!121772 e!800179))

(assert (=> start!121772 true))

(declare-fun array_inv!35559 (array!96565) Bool)

(assert (=> start!121772 (array_inv!35559 a!2901)))

(assert (= (and start!121772 res!950715) b!1413852))

(assert (= (and b!1413852 res!950710) b!1413850))

(assert (= (and b!1413850 res!950709) b!1413854))

(assert (= (and b!1413854 res!950711) b!1413847))

(assert (= (and b!1413847 res!950717) b!1413855))

(assert (= (and b!1413855 res!950718) b!1413853))

(assert (= (and b!1413853 res!950713) b!1413851))

(assert (= (and b!1413853 (not res!950712)) b!1413848))

(assert (= (and b!1413848 (not res!950716)) b!1413856))

(assert (= (and b!1413856 res!950714) b!1413849))

(declare-fun m!1304291 () Bool)

(assert (=> b!1413848 m!1304291))

(assert (=> b!1413848 m!1304291))

(declare-fun m!1304293 () Bool)

(assert (=> b!1413848 m!1304293))

(declare-fun m!1304295 () Bool)

(assert (=> b!1413848 m!1304295))

(declare-fun m!1304297 () Bool)

(assert (=> b!1413848 m!1304297))

(declare-fun m!1304299 () Bool)

(assert (=> b!1413850 m!1304299))

(assert (=> b!1413850 m!1304299))

(declare-fun m!1304301 () Bool)

(assert (=> b!1413850 m!1304301))

(declare-fun m!1304303 () Bool)

(assert (=> b!1413849 m!1304303))

(declare-fun m!1304305 () Bool)

(assert (=> b!1413849 m!1304305))

(assert (=> b!1413849 m!1304305))

(declare-fun m!1304307 () Bool)

(assert (=> b!1413849 m!1304307))

(assert (=> b!1413856 m!1304295))

(declare-fun m!1304309 () Bool)

(assert (=> b!1413856 m!1304309))

(declare-fun m!1304311 () Bool)

(assert (=> b!1413856 m!1304311))

(declare-fun m!1304313 () Bool)

(assert (=> start!121772 m!1304313))

(declare-fun m!1304315 () Bool)

(assert (=> start!121772 m!1304315))

(assert (=> b!1413851 m!1304305))

(assert (=> b!1413851 m!1304305))

(declare-fun m!1304317 () Bool)

(assert (=> b!1413851 m!1304317))

(assert (=> b!1413854 m!1304305))

(assert (=> b!1413854 m!1304305))

(declare-fun m!1304319 () Bool)

(assert (=> b!1413854 m!1304319))

(assert (=> b!1413853 m!1304305))

(declare-fun m!1304321 () Bool)

(assert (=> b!1413853 m!1304321))

(assert (=> b!1413853 m!1304305))

(declare-fun m!1304323 () Bool)

(assert (=> b!1413853 m!1304323))

(assert (=> b!1413853 m!1304305))

(declare-fun m!1304325 () Bool)

(assert (=> b!1413853 m!1304325))

(declare-fun m!1304327 () Bool)

(assert (=> b!1413853 m!1304327))

(declare-fun m!1304329 () Bool)

(assert (=> b!1413855 m!1304329))

(declare-fun m!1304331 () Bool)

(assert (=> b!1413847 m!1304331))

(push 1)

(assert (not b!1413851))

(assert (not b!1413850))

(assert (not b!1413847))

(assert (not b!1413855))

(assert (not b!1413856))

(assert (not b!1413849))

(assert (not start!121772))

(assert (not b!1413853))

(assert (not b!1413854))

(assert (not b!1413848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152161 () Bool)

(assert (=> d!152161 (= (validKeyInArray!0 (select (arr!46614 a!2901) i!1037)) (and (not (= (select (arr!46614 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46614 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413850 d!152161))

(declare-fun d!152163 () Bool)

(declare-fun res!950725 () Bool)

(declare-fun e!800202 () Bool)

(assert (=> d!152163 (=> res!950725 e!800202)))

(assert (=> d!152163 (= res!950725 (bvsge #b00000000000000000000000000000000 (size!47165 a!2901)))))

(assert (=> d!152163 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33310) e!800202)))

(declare-fun b!1413885 () Bool)

(declare-fun e!800203 () Bool)

(declare-fun call!67119 () Bool)

(assert (=> b!1413885 (= e!800203 call!67119)))

(declare-fun b!1413886 () Bool)

(declare-fun e!800204 () Bool)

(declare-fun contains!9830 (List!33313 (_ BitVec 64)) Bool)

(assert (=> b!1413886 (= e!800204 (contains!9830 Nil!33310 (select (arr!46614 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67116 () Bool)

(declare-fun c!131057 () Bool)

(assert (=> bm!67116 (= call!67119 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131057 (Cons!33309 (select (arr!46614 a!2901) #b00000000000000000000000000000000) Nil!33310) Nil!33310)))))

(declare-fun b!1413887 () Bool)

(assert (=> b!1413887 (= e!800203 call!67119)))

(declare-fun b!1413888 () Bool)

(declare-fun e!800201 () Bool)

(assert (=> b!1413888 (= e!800201 e!800203)))

(assert (=> b!1413888 (= c!131057 (validKeyInArray!0 (select (arr!46614 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413889 () Bool)

(assert (=> b!1413889 (= e!800202 e!800201)))

(declare-fun res!950726 () Bool)

(assert (=> b!1413889 (=> (not res!950726) (not e!800201))))

(assert (=> b!1413889 (= res!950726 (not e!800204))))

(declare-fun res!950727 () Bool)

(assert (=> b!1413889 (=> (not res!950727) (not e!800204))))

(assert (=> b!1413889 (= res!950727 (validKeyInArray!0 (select (arr!46614 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152163 (not res!950725)) b!1413889))

(assert (= (and b!1413889 res!950727) b!1413886))

(assert (= (and b!1413889 res!950726) b!1413888))

(assert (= (and b!1413888 c!131057) b!1413887))

(assert (= (and b!1413888 (not c!131057)) b!1413885))

(assert (= (or b!1413887 b!1413885) bm!67116))

(declare-fun m!1304347 () Bool)

(assert (=> b!1413886 m!1304347))

(assert (=> b!1413886 m!1304347))

(declare-fun m!1304349 () Bool)

(assert (=> b!1413886 m!1304349))

(assert (=> bm!67116 m!1304347))

(declare-fun m!1304351 () Bool)

(assert (=> bm!67116 m!1304351))

(assert (=> b!1413888 m!1304347))

(assert (=> b!1413888 m!1304347))

(declare-fun m!1304353 () Bool)

(assert (=> b!1413888 m!1304353))

(assert (=> b!1413889 m!1304347))

(assert (=> b!1413889 m!1304347))

(assert (=> b!1413889 m!1304353))

(assert (=> b!1413855 d!152163))

(declare-fun d!152167 () Bool)

(assert (=> d!152167 (and (not (undefined!11759 lt!623247)) (= (index!46172 lt!623247) i!1037) (bvslt (x!127761 lt!623247) (x!127761 lt!623250)))))

(declare-fun lt!623276 () Unit!47818)

(declare-fun choose!62 (array!96565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47818)

(assert (=> d!152167 (= lt!623276 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623246 (x!127761 lt!623250) (index!46172 lt!623250) (x!127761 lt!623247) (index!46172 lt!623247) (undefined!11759 lt!623247) mask!2840))))

(assert (=> d!152167 (validMask!0 mask!2840)))

(assert (=> d!152167 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623246 (x!127761 lt!623250) (index!46172 lt!623250) (x!127761 lt!623247) (index!46172 lt!623247) (undefined!11759 lt!623247) mask!2840) lt!623276)))

(declare-fun bs!41220 () Bool)

(assert (= bs!41220 d!152167))

(declare-fun m!1304355 () Bool)

(assert (=> bs!41220 m!1304355))

(assert (=> bs!41220 m!1304313))

(assert (=> b!1413856 d!152167))

(declare-fun b!1413941 () Bool)

(declare-fun e!800237 () SeekEntryResult!10947)

(declare-fun e!800236 () SeekEntryResult!10947)

(assert (=> b!1413941 (= e!800237 e!800236)))

(declare-fun lt!623299 () (_ BitVec 64))

(declare-fun lt!623298 () SeekEntryResult!10947)

(assert (=> b!1413941 (= lt!623299 (select (arr!46614 a!2901) (index!46172 lt!623298)))))

(declare-fun c!131078 () Bool)

(assert (=> b!1413941 (= c!131078 (= lt!623299 (select (arr!46614 a!2901) j!112)))))

(declare-fun b!1413942 () Bool)

(assert (=> b!1413942 (= e!800236 (Found!10947 (index!46172 lt!623298)))))

(declare-fun b!1413943 () Bool)

(declare-fun e!800235 () SeekEntryResult!10947)

(assert (=> b!1413943 (= e!800235 (MissingZero!10947 (index!46172 lt!623298)))))

(declare-fun b!1413944 () Bool)

(declare-fun c!131077 () Bool)

(assert (=> b!1413944 (= c!131077 (= lt!623299 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413944 (= e!800236 e!800235)))

(declare-fun b!1413945 () Bool)

(assert (=> b!1413945 (= e!800235 (seekKeyOrZeroReturnVacant!0 (x!127761 lt!623298) (index!46172 lt!623298) (index!46172 lt!623298) (select (arr!46614 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152169 () Bool)

(declare-fun lt!623297 () SeekEntryResult!10947)

(assert (=> d!152169 (and (or (is-Undefined!10947 lt!623297) (not (is-Found!10947 lt!623297)) (and (bvsge (index!46171 lt!623297) #b00000000000000000000000000000000) (bvslt (index!46171 lt!623297) (size!47165 a!2901)))) (or (is-Undefined!10947 lt!623297) (is-Found!10947 lt!623297) (not (is-MissingZero!10947 lt!623297)) (and (bvsge (index!46170 lt!623297) #b00000000000000000000000000000000) (bvslt (index!46170 lt!623297) (size!47165 a!2901)))) (or (is-Undefined!10947 lt!623297) (is-Found!10947 lt!623297) (is-MissingZero!10947 lt!623297) (not (is-MissingVacant!10947 lt!623297)) (and (bvsge (index!46173 lt!623297) #b00000000000000000000000000000000) (bvslt (index!46173 lt!623297) (size!47165 a!2901)))) (or (is-Undefined!10947 lt!623297) (ite (is-Found!10947 lt!623297) (= (select (arr!46614 a!2901) (index!46171 lt!623297)) (select (arr!46614 a!2901) j!112)) (ite (is-MissingZero!10947 lt!623297) (= (select (arr!46614 a!2901) (index!46170 lt!623297)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10947 lt!623297) (= (select (arr!46614 a!2901) (index!46173 lt!623297)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152169 (= lt!623297 e!800237)))

(declare-fun c!131076 () Bool)

(assert (=> d!152169 (= c!131076 (and (is-Intermediate!10947 lt!623298) (undefined!11759 lt!623298)))))

(assert (=> d!152169 (= lt!623298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46614 a!2901) j!112) mask!2840) (select (arr!46614 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152169 (validMask!0 mask!2840)))

(assert (=> d!152169 (= (seekEntryOrOpen!0 (select (arr!46614 a!2901) j!112) a!2901 mask!2840) lt!623297)))

(declare-fun b!1413946 () Bool)

(assert (=> b!1413946 (= e!800237 Undefined!10947)))

(assert (= (and d!152169 c!131076) b!1413946))

(assert (= (and d!152169 (not c!131076)) b!1413941))

(assert (= (and b!1413941 c!131078) b!1413942))

(assert (= (and b!1413941 (not c!131078)) b!1413944))

(assert (= (and b!1413944 c!131077) b!1413943))

(assert (= (and b!1413944 (not c!131077)) b!1413945))

(declare-fun m!1304373 () Bool)

(assert (=> b!1413941 m!1304373))

(assert (=> b!1413945 m!1304305))

(declare-fun m!1304375 () Bool)

(assert (=> b!1413945 m!1304375))

(declare-fun m!1304377 () Bool)

(assert (=> d!152169 m!1304377))

(assert (=> d!152169 m!1304313))

(assert (=> d!152169 m!1304305))

(assert (=> d!152169 m!1304321))

(assert (=> d!152169 m!1304321))

(assert (=> d!152169 m!1304305))

(declare-fun m!1304379 () Bool)

(assert (=> d!152169 m!1304379))

(declare-fun m!1304381 () Bool)

(assert (=> d!152169 m!1304381))

(declare-fun m!1304383 () Bool)

(assert (=> d!152169 m!1304383))

(assert (=> b!1413851 d!152169))

(declare-fun d!152185 () Bool)

(assert (=> d!152185 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121772 d!152185))

(declare-fun d!152191 () Bool)

(assert (=> d!152191 (= (array_inv!35559 a!2901) (bvsge (size!47165 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121772 d!152191))

(declare-fun b!1414016 () Bool)

(declare-fun e!800282 () Bool)

(declare-fun call!67129 () Bool)

(assert (=> b!1414016 (= e!800282 call!67129)))

(declare-fun d!152193 () Bool)

(declare-fun res!950772 () Bool)

(declare-fun e!800283 () Bool)

(assert (=> d!152193 (=> res!950772 e!800283)))

(assert (=> d!152193 (= res!950772 (bvsge j!112 (size!47165 a!2901)))))

(assert (=> d!152193 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800283)))

(declare-fun b!1414017 () Bool)

(declare-fun e!800284 () Bool)

(assert (=> b!1414017 (= e!800282 e!800284)))

(declare-fun lt!623329 () (_ BitVec 64))

(assert (=> b!1414017 (= lt!623329 (select (arr!46614 a!2901) j!112))))

(declare-fun lt!623330 () Unit!47818)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96565 (_ BitVec 64) (_ BitVec 32)) Unit!47818)

(assert (=> b!1414017 (= lt!623330 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623329 j!112))))

(declare-fun arrayContainsKey!0 (array!96565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414017 (arrayContainsKey!0 a!2901 lt!623329 #b00000000000000000000000000000000)))

(declare-fun lt!623328 () Unit!47818)

(assert (=> b!1414017 (= lt!623328 lt!623330)))

(declare-fun res!950773 () Bool)

(assert (=> b!1414017 (= res!950773 (= (seekEntryOrOpen!0 (select (arr!46614 a!2901) j!112) a!2901 mask!2840) (Found!10947 j!112)))))

(assert (=> b!1414017 (=> (not res!950773) (not e!800284))))

(declare-fun b!1414018 () Bool)

(assert (=> b!1414018 (= e!800283 e!800282)))

(declare-fun c!131100 () Bool)

(assert (=> b!1414018 (= c!131100 (validKeyInArray!0 (select (arr!46614 a!2901) j!112)))))

(declare-fun b!1414019 () Bool)

(assert (=> b!1414019 (= e!800284 call!67129)))

(declare-fun bm!67126 () Bool)

(assert (=> bm!67126 (= call!67129 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!152193 (not res!950772)) b!1414018))

(assert (= (and b!1414018 c!131100) b!1414017))

(assert (= (and b!1414018 (not c!131100)) b!1414016))

(assert (= (and b!1414017 res!950773) b!1414019))

(assert (= (or b!1414019 b!1414016) bm!67126))

(assert (=> b!1414017 m!1304305))

(declare-fun m!1304431 () Bool)

(assert (=> b!1414017 m!1304431))

(declare-fun m!1304433 () Bool)

(assert (=> b!1414017 m!1304433))

(assert (=> b!1414017 m!1304305))

(assert (=> b!1414017 m!1304317))

(assert (=> b!1414018 m!1304305))

(assert (=> b!1414018 m!1304305))

(assert (=> b!1414018 m!1304319))

(declare-fun m!1304435 () Bool)

(assert (=> bm!67126 m!1304435))

(assert (=> b!1413853 d!152193))

(declare-fun d!152205 () Bool)

(assert (=> d!152205 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623339 () Unit!47818)

(declare-fun choose!38 (array!96565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47818)

(assert (=> d!152205 (= lt!623339 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152205 (validMask!0 mask!2840)))

(assert (=> d!152205 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623339)))

(declare-fun bs!41222 () Bool)

(assert (= bs!41222 d!152205))

(assert (=> bs!41222 m!1304327))

(declare-fun m!1304437 () Bool)

(assert (=> bs!41222 m!1304437))

(assert (=> bs!41222 m!1304313))

(assert (=> b!1413853 d!152205))

(declare-fun b!1414116 () Bool)

(declare-fun e!800345 () SeekEntryResult!10947)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414116 (= e!800345 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623246 #b00000000000000000000000000000000 mask!2840) (select (arr!46614 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414117 () Bool)

(declare-fun lt!623373 () SeekEntryResult!10947)

(assert (=> b!1414117 (and (bvsge (index!46172 lt!623373) #b00000000000000000000000000000000) (bvslt (index!46172 lt!623373) (size!47165 a!2901)))))

(declare-fun e!800344 () Bool)

(assert (=> b!1414117 (= e!800344 (= (select (arr!46614 a!2901) (index!46172 lt!623373)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414118 () Bool)

(declare-fun e!800342 () Bool)

(declare-fun e!800343 () Bool)

(assert (=> b!1414118 (= e!800342 e!800343)))

(declare-fun res!950800 () Bool)

(assert (=> b!1414118 (= res!950800 (and (is-Intermediate!10947 lt!623373) (not (undefined!11759 lt!623373)) (bvslt (x!127761 lt!623373) #b01111111111111111111111111111110) (bvsge (x!127761 lt!623373) #b00000000000000000000000000000000) (bvsge (x!127761 lt!623373) #b00000000000000000000000000000000)))))

(assert (=> b!1414118 (=> (not res!950800) (not e!800343))))

(declare-fun d!152207 () Bool)

(assert (=> d!152207 e!800342))

(declare-fun c!131137 () Bool)

(assert (=> d!152207 (= c!131137 (and (is-Intermediate!10947 lt!623373) (undefined!11759 lt!623373)))))

(declare-fun e!800346 () SeekEntryResult!10947)

(assert (=> d!152207 (= lt!623373 e!800346)))

(declare-fun c!131138 () Bool)

(assert (=> d!152207 (= c!131138 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623372 () (_ BitVec 64))

(assert (=> d!152207 (= lt!623372 (select (arr!46614 a!2901) lt!623246))))

(assert (=> d!152207 (validMask!0 mask!2840)))

(assert (=> d!152207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623246 (select (arr!46614 a!2901) j!112) a!2901 mask!2840) lt!623373)))

(declare-fun b!1414119 () Bool)

(assert (=> b!1414119 (= e!800346 e!800345)))

(declare-fun c!131139 () Bool)

(assert (=> b!1414119 (= c!131139 (or (= lt!623372 (select (arr!46614 a!2901) j!112)) (= (bvadd lt!623372 lt!623372) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414120 () Bool)

(assert (=> b!1414120 (and (bvsge (index!46172 lt!623373) #b00000000000000000000000000000000) (bvslt (index!46172 lt!623373) (size!47165 a!2901)))))

(declare-fun res!950799 () Bool)

(assert (=> b!1414120 (= res!950799 (= (select (arr!46614 a!2901) (index!46172 lt!623373)) (select (arr!46614 a!2901) j!112)))))

(assert (=> b!1414120 (=> res!950799 e!800344)))

(assert (=> b!1414120 (= e!800343 e!800344)))

(declare-fun b!1414121 () Bool)

(assert (=> b!1414121 (= e!800342 (bvsge (x!127761 lt!623373) #b01111111111111111111111111111110))))

(declare-fun b!1414122 () Bool)

(assert (=> b!1414122 (= e!800345 (Intermediate!10947 false lt!623246 #b00000000000000000000000000000000))))

(declare-fun b!1414123 () Bool)

(assert (=> b!1414123 (and (bvsge (index!46172 lt!623373) #b00000000000000000000000000000000) (bvslt (index!46172 lt!623373) (size!47165 a!2901)))))

(declare-fun res!950798 () Bool)

(assert (=> b!1414123 (= res!950798 (= (select (arr!46614 a!2901) (index!46172 lt!623373)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414123 (=> res!950798 e!800344)))

(declare-fun b!1414124 () Bool)

(assert (=> b!1414124 (= e!800346 (Intermediate!10947 true lt!623246 #b00000000000000000000000000000000))))

(assert (= (and d!152207 c!131138) b!1414124))

(assert (= (and d!152207 (not c!131138)) b!1414119))

(assert (= (and b!1414119 c!131139) b!1414122))

(assert (= (and b!1414119 (not c!131139)) b!1414116))

(assert (= (and d!152207 c!131137) b!1414121))

(assert (= (and d!152207 (not c!131137)) b!1414118))

(assert (= (and b!1414118 res!950800) b!1414120))

(assert (= (and b!1414120 (not res!950799)) b!1414123))

(assert (= (and b!1414123 (not res!950798)) b!1414117))

(declare-fun m!1304491 () Bool)

(assert (=> b!1414120 m!1304491))

(declare-fun m!1304493 () Bool)

(assert (=> d!152207 m!1304493))

(assert (=> d!152207 m!1304313))

(assert (=> b!1414123 m!1304491))

(declare-fun m!1304495 () Bool)

(assert (=> b!1414116 m!1304495))

(assert (=> b!1414116 m!1304495))

(assert (=> b!1414116 m!1304305))

(declare-fun m!1304497 () Bool)

(assert (=> b!1414116 m!1304497))

(assert (=> b!1414117 m!1304491))

(assert (=> b!1413853 d!152207))

(declare-fun d!152225 () Bool)

(declare-fun lt!623379 () (_ BitVec 32))

(declare-fun lt!623378 () (_ BitVec 32))

(assert (=> d!152225 (= lt!623379 (bvmul (bvxor lt!623378 (bvlshr lt!623378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152225 (= lt!623378 ((_ extract 31 0) (bvand (bvxor (select (arr!46614 a!2901) j!112) (bvlshr (select (arr!46614 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152225 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950801 (let ((h!34590 ((_ extract 31 0) (bvand (bvxor (select (arr!46614 a!2901) j!112) (bvlshr (select (arr!46614 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127770 (bvmul (bvxor h!34590 (bvlshr h!34590 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127770 (bvlshr x!127770 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950801 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950801 #b00000000000000000000000000000000))))))

(assert (=> d!152225 (= (toIndex!0 (select (arr!46614 a!2901) j!112) mask!2840) (bvand (bvxor lt!623379 (bvlshr lt!623379 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413853 d!152225))

(declare-fun b!1414125 () Bool)

(declare-fun e!800347 () Bool)

(declare-fun call!67136 () Bool)

(assert (=> b!1414125 (= e!800347 call!67136)))

(declare-fun d!152227 () Bool)

(declare-fun res!950802 () Bool)

(declare-fun e!800348 () Bool)

(assert (=> d!152227 (=> res!950802 e!800348)))

(assert (=> d!152227 (= res!950802 (bvsge #b00000000000000000000000000000000 (size!47165 a!2901)))))

(assert (=> d!152227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800348)))

(declare-fun b!1414126 () Bool)

(declare-fun e!800349 () Bool)

(assert (=> b!1414126 (= e!800347 e!800349)))

(declare-fun lt!623381 () (_ BitVec 64))

(assert (=> b!1414126 (= lt!623381 (select (arr!46614 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623382 () Unit!47818)

(assert (=> b!1414126 (= lt!623382 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623381 #b00000000000000000000000000000000))))

(assert (=> b!1414126 (arrayContainsKey!0 a!2901 lt!623381 #b00000000000000000000000000000000)))

(declare-fun lt!623380 () Unit!47818)

(assert (=> b!1414126 (= lt!623380 lt!623382)))

(declare-fun res!950803 () Bool)

(assert (=> b!1414126 (= res!950803 (= (seekEntryOrOpen!0 (select (arr!46614 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10947 #b00000000000000000000000000000000)))))

(assert (=> b!1414126 (=> (not res!950803) (not e!800349))))

(declare-fun b!1414127 () Bool)

(assert (=> b!1414127 (= e!800348 e!800347)))

(declare-fun c!131140 () Bool)

(assert (=> b!1414127 (= c!131140 (validKeyInArray!0 (select (arr!46614 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414128 () Bool)

(assert (=> b!1414128 (= e!800349 call!67136)))

(declare-fun bm!67133 () Bool)

(assert (=> bm!67133 (= call!67136 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!152227 (not res!950802)) b!1414127))

(assert (= (and b!1414127 c!131140) b!1414126))

(assert (= (and b!1414127 (not c!131140)) b!1414125))

(assert (= (and b!1414126 res!950803) b!1414128))

(assert (= (or b!1414128 b!1414125) bm!67133))

(assert (=> b!1414126 m!1304347))

(declare-fun m!1304499 () Bool)

(assert (=> b!1414126 m!1304499))

(declare-fun m!1304501 () Bool)

(assert (=> b!1414126 m!1304501))

(assert (=> b!1414126 m!1304347))

(declare-fun m!1304503 () Bool)

(assert (=> b!1414126 m!1304503))

(assert (=> b!1414127 m!1304347))

(assert (=> b!1414127 m!1304347))

(assert (=> b!1414127 m!1304353))

(declare-fun m!1304505 () Bool)

(assert (=> bm!67133 m!1304505))

(assert (=> b!1413847 d!152227))

(declare-fun d!152229 () Bool)

(assert (=> d!152229 (= (validKeyInArray!0 (select (arr!46614 a!2901) j!112)) (and (not (= (select (arr!46614 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46614 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413854 d!152229))

(declare-fun b!1414129 () Bool)

(declare-fun e!800352 () SeekEntryResult!10947)

(declare-fun e!800351 () SeekEntryResult!10947)

(assert (=> b!1414129 (= e!800352 e!800351)))

(declare-fun lt!623385 () (_ BitVec 64))

(declare-fun lt!623384 () SeekEntryResult!10947)

(assert (=> b!1414129 (= lt!623385 (select (arr!46614 lt!623245) (index!46172 lt!623384)))))

(declare-fun c!131143 () Bool)

(assert (=> b!1414129 (= c!131143 (= lt!623385 lt!623251))))

(declare-fun b!1414130 () Bool)

(assert (=> b!1414130 (= e!800351 (Found!10947 (index!46172 lt!623384)))))

(declare-fun b!1414131 () Bool)

(declare-fun e!800350 () SeekEntryResult!10947)

(assert (=> b!1414131 (= e!800350 (MissingZero!10947 (index!46172 lt!623384)))))

(declare-fun b!1414132 () Bool)

(declare-fun c!131142 () Bool)

(assert (=> b!1414132 (= c!131142 (= lt!623385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414132 (= e!800351 e!800350)))

(declare-fun b!1414133 () Bool)

(assert (=> b!1414133 (= e!800350 (seekKeyOrZeroReturnVacant!0 (x!127761 lt!623384) (index!46172 lt!623384) (index!46172 lt!623384) lt!623251 lt!623245 mask!2840))))

(declare-fun d!152231 () Bool)

(declare-fun lt!623383 () SeekEntryResult!10947)

(assert (=> d!152231 (and (or (is-Undefined!10947 lt!623383) (not (is-Found!10947 lt!623383)) (and (bvsge (index!46171 lt!623383) #b00000000000000000000000000000000) (bvslt (index!46171 lt!623383) (size!47165 lt!623245)))) (or (is-Undefined!10947 lt!623383) (is-Found!10947 lt!623383) (not (is-MissingZero!10947 lt!623383)) (and (bvsge (index!46170 lt!623383) #b00000000000000000000000000000000) (bvslt (index!46170 lt!623383) (size!47165 lt!623245)))) (or (is-Undefined!10947 lt!623383) (is-Found!10947 lt!623383) (is-MissingZero!10947 lt!623383) (not (is-MissingVacant!10947 lt!623383)) (and (bvsge (index!46173 lt!623383) #b00000000000000000000000000000000) (bvslt (index!46173 lt!623383) (size!47165 lt!623245)))) (or (is-Undefined!10947 lt!623383) (ite (is-Found!10947 lt!623383) (= (select (arr!46614 lt!623245) (index!46171 lt!623383)) lt!623251) (ite (is-MissingZero!10947 lt!623383) (= (select (arr!46614 lt!623245) (index!46170 lt!623383)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10947 lt!623383) (= (select (arr!46614 lt!623245) (index!46173 lt!623383)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152231 (= lt!623383 e!800352)))

(declare-fun c!131141 () Bool)

(assert (=> d!152231 (= c!131141 (and (is-Intermediate!10947 lt!623384) (undefined!11759 lt!623384)))))

(assert (=> d!152231 (= lt!623384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623251 mask!2840) lt!623251 lt!623245 mask!2840))))

(assert (=> d!152231 (validMask!0 mask!2840)))

(assert (=> d!152231 (= (seekEntryOrOpen!0 lt!623251 lt!623245 mask!2840) lt!623383)))

(declare-fun b!1414134 () Bool)

(assert (=> b!1414134 (= e!800352 Undefined!10947)))

(assert (= (and d!152231 c!131141) b!1414134))

(assert (= (and d!152231 (not c!131141)) b!1414129))

(assert (= (and b!1414129 c!131143) b!1414130))

(assert (= (and b!1414129 (not c!131143)) b!1414132))

(assert (= (and b!1414132 c!131142) b!1414131))

(assert (= (and b!1414132 (not c!131142)) b!1414133))

(declare-fun m!1304507 () Bool)

(assert (=> b!1414129 m!1304507))

