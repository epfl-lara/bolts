; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118984 () Bool)

(assert start!118984)

(declare-fun b!1388679 () Bool)

(declare-fun res!929039 () Bool)

(declare-fun e!786683 () Bool)

(assert (=> b!1388679 (=> (not res!929039) (not e!786683))))

(declare-datatypes ((List!32531 0))(
  ( (Nil!32528) (Cons!32527 (h!33742 (_ BitVec 64)) (t!47232 List!32531)) )
))
(declare-fun noDuplicate!2636 (List!32531) Bool)

(assert (=> b!1388679 (= res!929039 (noDuplicate!2636 Nil!32528))))

(declare-fun b!1388680 () Bool)

(declare-fun e!786681 () Bool)

(assert (=> b!1388680 (= e!786683 e!786681)))

(declare-fun res!929038 () Bool)

(assert (=> b!1388680 (=> res!929038 e!786681)))

(declare-fun contains!9765 (List!32531 (_ BitVec 64)) Bool)

(assert (=> b!1388680 (= res!929038 (contains!9765 Nil!32528 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388681 () Bool)

(declare-fun res!929043 () Bool)

(assert (=> b!1388681 (=> (not res!929043) (not e!786683))))

(declare-datatypes ((array!94932 0))(
  ( (array!94933 (arr!45832 (Array (_ BitVec 32) (_ BitVec 64))) (size!46383 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94932)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388681 (= res!929043 (validKeyInArray!0 (select (arr!45832 a!2901) i!1037)))))

(declare-fun b!1388682 () Bool)

(declare-fun res!929040 () Bool)

(assert (=> b!1388682 (=> (not res!929040) (not e!786683))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388682 (= res!929040 (validKeyInArray!0 (select (arr!45832 a!2901) j!112)))))

(declare-fun b!1388683 () Bool)

(declare-fun res!929041 () Bool)

(assert (=> b!1388683 (=> (not res!929041) (not e!786683))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1388683 (= res!929041 (and (= (size!46383 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46383 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46383 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388684 () Bool)

(declare-fun res!929036 () Bool)

(assert (=> b!1388684 (=> (not res!929036) (not e!786683))))

(assert (=> b!1388684 (= res!929036 (and (bvsle #b00000000000000000000000000000000 (size!46383 a!2901)) (bvslt (size!46383 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388686 () Bool)

(declare-fun res!929042 () Bool)

(assert (=> b!1388686 (=> (not res!929042) (not e!786683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94932 (_ BitVec 32)) Bool)

(assert (=> b!1388686 (= res!929042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929037 () Bool)

(assert (=> start!118984 (=> (not res!929037) (not e!786683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118984 (= res!929037 (validMask!0 mask!2840))))

(assert (=> start!118984 e!786683))

(assert (=> start!118984 true))

(declare-fun array_inv!34777 (array!94932) Bool)

(assert (=> start!118984 (array_inv!34777 a!2901)))

(declare-fun b!1388685 () Bool)

(assert (=> b!1388685 (= e!786681 (contains!9765 Nil!32528 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!118984 res!929037) b!1388683))

(assert (= (and b!1388683 res!929041) b!1388681))

(assert (= (and b!1388681 res!929043) b!1388682))

(assert (= (and b!1388682 res!929040) b!1388686))

(assert (= (and b!1388686 res!929042) b!1388684))

(assert (= (and b!1388684 res!929036) b!1388679))

(assert (= (and b!1388679 res!929039) b!1388680))

(assert (= (and b!1388680 (not res!929038)) b!1388685))

(declare-fun m!1274465 () Bool)

(assert (=> start!118984 m!1274465))

(declare-fun m!1274467 () Bool)

(assert (=> start!118984 m!1274467))

(declare-fun m!1274469 () Bool)

(assert (=> b!1388682 m!1274469))

(assert (=> b!1388682 m!1274469))

(declare-fun m!1274471 () Bool)

(assert (=> b!1388682 m!1274471))

(declare-fun m!1274473 () Bool)

(assert (=> b!1388680 m!1274473))

(declare-fun m!1274475 () Bool)

(assert (=> b!1388685 m!1274475))

(declare-fun m!1274477 () Bool)

(assert (=> b!1388681 m!1274477))

(assert (=> b!1388681 m!1274477))

(declare-fun m!1274479 () Bool)

(assert (=> b!1388681 m!1274479))

(declare-fun m!1274481 () Bool)

(assert (=> b!1388686 m!1274481))

(declare-fun m!1274483 () Bool)

(assert (=> b!1388679 m!1274483))

(push 1)

(assert (not b!1388679))

(assert (not b!1388685))

(assert (not b!1388682))

(assert (not b!1388686))

(assert (not start!118984))

(assert (not b!1388681))

(assert (not b!1388680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149957 () Bool)

(declare-fun res!929104 () Bool)

(declare-fun e!786714 () Bool)

(assert (=> d!149957 (=> res!929104 e!786714)))

(assert (=> d!149957 (= res!929104 (is-Nil!32528 Nil!32528))))

(assert (=> d!149957 (= (noDuplicate!2636 Nil!32528) e!786714)))

(declare-fun b!1388747 () Bool)

(declare-fun e!786715 () Bool)

(assert (=> b!1388747 (= e!786714 e!786715)))

(declare-fun res!929105 () Bool)

(assert (=> b!1388747 (=> (not res!929105) (not e!786715))))

(assert (=> b!1388747 (= res!929105 (not (contains!9765 (t!47232 Nil!32528) (h!33742 Nil!32528))))))

(declare-fun b!1388748 () Bool)

(assert (=> b!1388748 (= e!786715 (noDuplicate!2636 (t!47232 Nil!32528)))))

(assert (= (and d!149957 (not res!929104)) b!1388747))

(assert (= (and b!1388747 res!929105) b!1388748))

(declare-fun m!1274535 () Bool)

(assert (=> b!1388747 m!1274535))

(declare-fun m!1274537 () Bool)

(assert (=> b!1388748 m!1274537))

(assert (=> b!1388679 d!149957))

(declare-fun d!149963 () Bool)

(assert (=> d!149963 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118984 d!149963))

(declare-fun d!149977 () Bool)

(assert (=> d!149977 (= (array_inv!34777 a!2901) (bvsge (size!46383 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118984 d!149977))

(declare-fun d!149979 () Bool)

(assert (=> d!149979 (= (validKeyInArray!0 (select (arr!45832 a!2901) j!112)) (and (not (= (select (arr!45832 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45832 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388682 d!149979))

(declare-fun d!149981 () Bool)

(assert (=> d!149981 (= (validKeyInArray!0 (select (arr!45832 a!2901) i!1037)) (and (not (= (select (arr!45832 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45832 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388681 d!149981))

(declare-fun b!1388797 () Bool)

(declare-fun e!786757 () Bool)

(declare-fun e!786759 () Bool)

(assert (=> b!1388797 (= e!786757 e!786759)))

(declare-fun lt!610378 () (_ BitVec 64))

(assert (=> b!1388797 (= lt!610378 (select (arr!45832 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46366 0))(
  ( (Unit!46367) )
))
(declare-fun lt!610380 () Unit!46366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94932 (_ BitVec 64) (_ BitVec 32)) Unit!46366)

(assert (=> b!1388797 (= lt!610380 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610378 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388797 (arrayContainsKey!0 a!2901 lt!610378 #b00000000000000000000000000000000)))

(declare-fun lt!610379 () Unit!46366)

(assert (=> b!1388797 (= lt!610379 lt!610380)))

(declare-fun res!929141 () Bool)

(declare-datatypes ((SeekEntryResult!10191 0))(
  ( (MissingZero!10191 (index!43134 (_ BitVec 32))) (Found!10191 (index!43135 (_ BitVec 32))) (Intermediate!10191 (undefined!11003 Bool) (index!43136 (_ BitVec 32)) (x!124781 (_ BitVec 32))) (Undefined!10191) (MissingVacant!10191 (index!43137 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94932 (_ BitVec 32)) SeekEntryResult!10191)

(assert (=> b!1388797 (= res!929141 (= (seekEntryOrOpen!0 (select (arr!45832 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10191 #b00000000000000000000000000000000)))))

(assert (=> b!1388797 (=> (not res!929141) (not e!786759))))

(declare-fun bm!66656 () Bool)

(declare-fun call!66659 () Bool)

(assert (=> bm!66656 (= call!66659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1388798 () Bool)

(declare-fun e!786758 () Bool)

(assert (=> b!1388798 (= e!786758 e!786757)))

(declare-fun c!129274 () Bool)

(assert (=> b!1388798 (= c!129274 (validKeyInArray!0 (select (arr!45832 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388799 () Bool)

(assert (=> b!1388799 (= e!786759 call!66659)))

(declare-fun d!149983 () Bool)

(declare-fun res!929140 () Bool)

(assert (=> d!149983 (=> res!929140 e!786758)))

(assert (=> d!149983 (= res!929140 (bvsge #b00000000000000000000000000000000 (size!46383 a!2901)))))

(assert (=> d!149983 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786758)))

(declare-fun b!1388800 () Bool)

(assert (=> b!1388800 (= e!786757 call!66659)))

(assert (= (and d!149983 (not res!929140)) b!1388798))

(assert (= (and b!1388798 c!129274) b!1388797))

(assert (= (and b!1388798 (not c!129274)) b!1388800))

(assert (= (and b!1388797 res!929141) b!1388799))

(assert (= (or b!1388799 b!1388800) bm!66656))

(declare-fun m!1274569 () Bool)

(assert (=> b!1388797 m!1274569))

(declare-fun m!1274571 () Bool)

(assert (=> b!1388797 m!1274571))

(declare-fun m!1274573 () Bool)

(assert (=> b!1388797 m!1274573))

(assert (=> b!1388797 m!1274569))

(declare-fun m!1274575 () Bool)

(assert (=> b!1388797 m!1274575))

(declare-fun m!1274577 () Bool)

(assert (=> bm!66656 m!1274577))

(assert (=> b!1388798 m!1274569))

(assert (=> b!1388798 m!1274569))

(declare-fun m!1274579 () Bool)

(assert (=> b!1388798 m!1274579))

(assert (=> b!1388686 d!149983))

(declare-fun d!149993 () Bool)

(declare-fun lt!610386 () Bool)

(declare-fun content!772 (List!32531) (Set (_ BitVec 64)))

(assert (=> d!149993 (= lt!610386 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!772 Nil!32528)))))

(declare-fun e!786768 () Bool)

(assert (=> d!149993 (= lt!610386 e!786768)))

(declare-fun res!929148 () Bool)

(assert (=> d!149993 (=> (not res!929148) (not e!786768))))

(assert (=> d!149993 (= res!929148 (is-Cons!32527 Nil!32528))))

(assert (=> d!149993 (= (contains!9765 Nil!32528 #b1000000000000000000000000000000000000000000000000000000000000000) lt!610386)))

(declare-fun b!1388809 () Bool)

(declare-fun e!786767 () Bool)

(assert (=> b!1388809 (= e!786768 e!786767)))

(declare-fun res!929149 () Bool)

(assert (=> b!1388809 (=> res!929149 e!786767)))

(assert (=> b!1388809 (= res!929149 (= (h!33742 Nil!32528) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388810 () Bool)

(assert (=> b!1388810 (= e!786767 (contains!9765 (t!47232 Nil!32528) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149993 res!929148) b!1388809))

(assert (= (and b!1388809 (not res!929149)) b!1388810))

(declare-fun m!1274593 () Bool)

(assert (=> d!149993 m!1274593))

(declare-fun m!1274595 () Bool)

(assert (=> d!149993 m!1274595))

(declare-fun m!1274597 () Bool)

(assert (=> b!1388810 m!1274597))

(assert (=> b!1388685 d!149993))

(declare-fun d!149995 () Bool)

(declare-fun lt!610387 () Bool)

(assert (=> d!149995 (= lt!610387 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!772 Nil!32528)))))

(declare-fun e!786770 () Bool)

(assert (=> d!149995 (= lt!610387 e!786770)))

(declare-fun res!929150 () Bool)

(assert (=> d!149995 (=> (not res!929150) (not e!786770))))

(assert (=> d!149995 (= res!929150 (is-Cons!32527 Nil!32528))))

(assert (=> d!149995 (= (contains!9765 Nil!32528 #b0000000000000000000000000000000000000000000000000000000000000000) lt!610387)))

(declare-fun b!1388811 () Bool)

(declare-fun e!786769 () Bool)

(assert (=> b!1388811 (= e!786770 e!786769)))

(declare-fun res!929151 () Bool)

