; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119032 () Bool)

(assert start!119032)

(declare-fun b!1388879 () Bool)

(declare-fun e!786793 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1388879 (= e!786793 (and (bvsge mask!2840 #b00000000000000000000000000000000) (bvsgt mask!2840 #b00111111111111111111111111111111)))))

(declare-fun res!929220 () Bool)

(assert (=> start!119032 (=> (not res!929220) (not e!786793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119032 (= res!929220 (validMask!0 mask!2840))))

(assert (=> start!119032 e!786793))

(assert (=> start!119032 true))

(declare-datatypes ((array!94947 0))(
  ( (array!94948 (arr!45838 (Array (_ BitVec 32) (_ BitVec 64))) (size!46389 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94947)

(declare-fun array_inv!34783 (array!94947) Bool)

(assert (=> start!119032 (array_inv!34783 a!2901)))

(declare-fun b!1388880 () Bool)

(declare-fun res!929222 () Bool)

(assert (=> b!1388880 (=> (not res!929222) (not e!786793))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388880 (= res!929222 (validKeyInArray!0 (select (arr!45838 a!2901) i!1037)))))

(declare-fun b!1388881 () Bool)

(declare-fun res!929219 () Bool)

(assert (=> b!1388881 (=> (not res!929219) (not e!786793))))

(declare-datatypes ((List!32537 0))(
  ( (Nil!32534) (Cons!32533 (h!33748 (_ BitVec 64)) (t!47238 List!32537)) )
))
(declare-fun arrayNoDuplicates!0 (array!94947 (_ BitVec 32) List!32537) Bool)

(assert (=> b!1388881 (= res!929219 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32534))))

(declare-fun b!1388882 () Bool)

(declare-fun res!929218 () Bool)

(assert (=> b!1388882 (=> (not res!929218) (not e!786793))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388882 (= res!929218 (validKeyInArray!0 (select (arr!45838 a!2901) j!112)))))

(declare-fun b!1388883 () Bool)

(declare-fun res!929221 () Bool)

(assert (=> b!1388883 (=> (not res!929221) (not e!786793))))

(assert (=> b!1388883 (= res!929221 (and (= (size!46389 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46389 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46389 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388884 () Bool)

(declare-fun res!929223 () Bool)

(assert (=> b!1388884 (=> (not res!929223) (not e!786793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94947 (_ BitVec 32)) Bool)

(assert (=> b!1388884 (= res!929223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119032 res!929220) b!1388883))

(assert (= (and b!1388883 res!929221) b!1388880))

(assert (= (and b!1388880 res!929222) b!1388882))

(assert (= (and b!1388882 res!929218) b!1388884))

(assert (= (and b!1388884 res!929223) b!1388881))

(assert (= (and b!1388881 res!929219) b!1388879))

(declare-fun m!1274651 () Bool)

(assert (=> b!1388882 m!1274651))

(assert (=> b!1388882 m!1274651))

(declare-fun m!1274653 () Bool)

(assert (=> b!1388882 m!1274653))

(declare-fun m!1274655 () Bool)

(assert (=> b!1388881 m!1274655))

(declare-fun m!1274657 () Bool)

(assert (=> b!1388884 m!1274657))

(declare-fun m!1274659 () Bool)

(assert (=> start!119032 m!1274659))

(declare-fun m!1274661 () Bool)

(assert (=> start!119032 m!1274661))

(declare-fun m!1274663 () Bool)

(assert (=> b!1388880 m!1274663))

(assert (=> b!1388880 m!1274663))

(declare-fun m!1274665 () Bool)

(assert (=> b!1388880 m!1274665))

(push 1)

(assert (not b!1388882))

(assert (not b!1388881))

(assert (not start!119032))

(assert (not b!1388884))

(assert (not b!1388880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1388966 () Bool)

(declare-fun e!786844 () Bool)

(declare-fun e!786842 () Bool)

(assert (=> b!1388966 (= e!786844 e!786842)))

(declare-fun c!129286 () Bool)

(assert (=> b!1388966 (= c!129286 (validKeyInArray!0 (select (arr!45838 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388967 () Bool)

(declare-fun e!786843 () Bool)

(declare-fun call!66671 () Bool)

(assert (=> b!1388967 (= e!786843 call!66671)))

(declare-fun b!1388968 () Bool)

(assert (=> b!1388968 (= e!786842 e!786843)))

(declare-fun lt!610405 () (_ BitVec 64))

(assert (=> b!1388968 (= lt!610405 (select (arr!45838 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46372 0))(
  ( (Unit!46373) )
))
(declare-fun lt!610403 () Unit!46372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94947 (_ BitVec 64) (_ BitVec 32)) Unit!46372)

(assert (=> b!1388968 (= lt!610403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610405 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388968 (arrayContainsKey!0 a!2901 lt!610405 #b00000000000000000000000000000000)))

(declare-fun lt!610404 () Unit!46372)

(assert (=> b!1388968 (= lt!610404 lt!610403)))

(declare-fun res!929285 () Bool)

(declare-datatypes ((SeekEntryResult!10194 0))(
  ( (MissingZero!10194 (index!43146 (_ BitVec 32))) (Found!10194 (index!43147 (_ BitVec 32))) (Intermediate!10194 (undefined!11006 Bool) (index!43148 (_ BitVec 32)) (x!124800 (_ BitVec 32))) (Undefined!10194) (MissingVacant!10194 (index!43149 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94947 (_ BitVec 32)) SeekEntryResult!10194)

(assert (=> b!1388968 (= res!929285 (= (seekEntryOrOpen!0 (select (arr!45838 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10194 #b00000000000000000000000000000000)))))

(assert (=> b!1388968 (=> (not res!929285) (not e!786843))))

(declare-fun b!1388969 () Bool)

(assert (=> b!1388969 (= e!786842 call!66671)))

(declare-fun bm!66668 () Bool)

(assert (=> bm!66668 (= call!66671 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!150005 () Bool)

(declare-fun res!929286 () Bool)

(assert (=> d!150005 (=> res!929286 e!786844)))

(assert (=> d!150005 (= res!929286 (bvsge #b00000000000000000000000000000000 (size!46389 a!2901)))))

(assert (=> d!150005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786844)))

(assert (= (and d!150005 (not res!929286)) b!1388966))

(assert (= (and b!1388966 c!129286) b!1388968))

(assert (= (and b!1388966 (not c!129286)) b!1388969))

(assert (= (and b!1388968 res!929285) b!1388967))

(assert (= (or b!1388967 b!1388969) bm!66668))

(declare-fun m!1274719 () Bool)

(assert (=> b!1388966 m!1274719))

(assert (=> b!1388966 m!1274719))

(declare-fun m!1274721 () Bool)

(assert (=> b!1388966 m!1274721))

(assert (=> b!1388968 m!1274719))

(declare-fun m!1274723 () Bool)

(assert (=> b!1388968 m!1274723))

(declare-fun m!1274725 () Bool)

(assert (=> b!1388968 m!1274725))

(assert (=> b!1388968 m!1274719))

(declare-fun m!1274727 () Bool)

(assert (=> b!1388968 m!1274727))

(declare-fun m!1274729 () Bool)

(assert (=> bm!66668 m!1274729))

(assert (=> b!1388884 d!150005))

(declare-fun d!150017 () Bool)

(assert (=> d!150017 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119032 d!150017))

(declare-fun d!150025 () Bool)

(assert (=> d!150025 (= (array_inv!34783 a!2901) (bvsge (size!46389 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119032 d!150025))

(declare-fun d!150027 () Bool)

