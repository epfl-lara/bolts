; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104382 () Bool)

(assert start!104382)

(declare-fun b!1245868 () Bool)

(declare-fun res!831400 () Bool)

(declare-fun e!706555 () Bool)

(assert (=> b!1245868 (=> (not res!831400) (not e!706555))))

(declare-datatypes ((array!80191 0))(
  ( (array!80192 (arr!38671 (Array (_ BitVec 32) (_ BitVec 64))) (size!39208 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80191)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245868 (= res!831400 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39208 a!3892)) (not (= newFrom!287 (size!39208 a!3892)))))))

(declare-fun b!1245869 () Bool)

(declare-fun e!706554 () Bool)

(assert (=> b!1245869 (= e!706555 e!706554)))

(declare-fun res!831396 () Bool)

(assert (=> b!1245869 (=> (not res!831396) (not e!706554))))

(assert (=> b!1245869 (= res!831396 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27652 0))(
  ( (Nil!27649) (Cons!27648 (h!28857 (_ BitVec 64)) (t!41128 List!27652)) )
))
(declare-fun lt!562934 () List!27652)

(assert (=> b!1245869 (= lt!562934 (Cons!27648 (select (arr!38671 a!3892) from!3270) Nil!27649))))

(declare-fun res!831397 () Bool)

(assert (=> start!104382 (=> (not res!831397) (not e!706555))))

(assert (=> start!104382 (= res!831397 (and (bvslt (size!39208 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39208 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39208 a!3892))))))

(assert (=> start!104382 e!706555))

(declare-fun array_inv!29447 (array!80191) Bool)

(assert (=> start!104382 (array_inv!29447 a!3892)))

(assert (=> start!104382 true))

(declare-fun b!1245870 () Bool)

(declare-fun res!831403 () Bool)

(assert (=> b!1245870 (=> (not res!831403) (not e!706554))))

(declare-fun noDuplicate!2060 (List!27652) Bool)

(assert (=> b!1245870 (= res!831403 (noDuplicate!2060 lt!562934))))

(declare-fun b!1245871 () Bool)

(declare-fun res!831402 () Bool)

(assert (=> b!1245871 (=> (not res!831402) (not e!706554))))

(declare-fun contains!7470 (List!27652 (_ BitVec 64)) Bool)

(assert (=> b!1245871 (= res!831402 (not (contains!7470 Nil!27649 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245872 () Bool)

(declare-fun res!831394 () Bool)

(assert (=> b!1245872 (=> (not res!831394) (not e!706555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245872 (= res!831394 (validKeyInArray!0 (select (arr!38671 a!3892) from!3270)))))

(declare-fun b!1245873 () Bool)

(declare-fun res!831395 () Bool)

(assert (=> b!1245873 (=> (not res!831395) (not e!706554))))

(assert (=> b!1245873 (= res!831395 (not (contains!7470 lt!562934 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245874 () Bool)

(declare-fun res!831401 () Bool)

(assert (=> b!1245874 (=> (not res!831401) (not e!706555))))

(declare-fun arrayNoDuplicates!0 (array!80191 (_ BitVec 32) List!27652) Bool)

(assert (=> b!1245874 (= res!831401 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27649))))

(declare-fun b!1245875 () Bool)

(declare-fun subseq!654 (List!27652 List!27652) Bool)

(assert (=> b!1245875 (= e!706554 (not (subseq!654 Nil!27649 lt!562934)))))

(declare-fun b!1245876 () Bool)

(declare-fun res!831398 () Bool)

(assert (=> b!1245876 (=> (not res!831398) (not e!706554))))

(assert (=> b!1245876 (= res!831398 (not (contains!7470 lt!562934 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245877 () Bool)

(declare-fun res!831399 () Bool)

(assert (=> b!1245877 (=> (not res!831399) (not e!706554))))

(assert (=> b!1245877 (= res!831399 (not (contains!7470 Nil!27649 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!104382 res!831397) b!1245874))

(assert (= (and b!1245874 res!831401) b!1245868))

(assert (= (and b!1245868 res!831400) b!1245872))

(assert (= (and b!1245872 res!831394) b!1245869))

(assert (= (and b!1245869 res!831396) b!1245870))

(assert (= (and b!1245870 res!831403) b!1245873))

(assert (= (and b!1245873 res!831395) b!1245876))

(assert (= (and b!1245876 res!831398) b!1245871))

(assert (= (and b!1245871 res!831402) b!1245877))

(assert (= (and b!1245877 res!831399) b!1245875))

(declare-fun m!1147855 () Bool)

(assert (=> b!1245877 m!1147855))

(declare-fun m!1147857 () Bool)

(assert (=> b!1245875 m!1147857))

(declare-fun m!1147859 () Bool)

(assert (=> b!1245873 m!1147859))

(declare-fun m!1147861 () Bool)

(assert (=> b!1245872 m!1147861))

(assert (=> b!1245872 m!1147861))

(declare-fun m!1147863 () Bool)

(assert (=> b!1245872 m!1147863))

(declare-fun m!1147865 () Bool)

(assert (=> b!1245876 m!1147865))

(declare-fun m!1147867 () Bool)

(assert (=> b!1245871 m!1147867))

(declare-fun m!1147869 () Bool)

(assert (=> start!104382 m!1147869))

(declare-fun m!1147871 () Bool)

(assert (=> b!1245870 m!1147871))

(declare-fun m!1147873 () Bool)

(assert (=> b!1245874 m!1147873))

(assert (=> b!1245869 m!1147861))

(check-sat (not b!1245876) (not b!1245877) (not start!104382) (not b!1245873) (not b!1245874) (not b!1245875) (not b!1245872) (not b!1245870) (not b!1245871))
(check-sat)
(get-model)

(declare-fun d!137441 () Bool)

(assert (=> d!137441 (= (array_inv!29447 a!3892) (bvsge (size!39208 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104382 d!137441))

(declare-fun b!1245934 () Bool)

(declare-fun e!706590 () Bool)

(declare-fun call!61505 () Bool)

(assert (=> b!1245934 (= e!706590 call!61505)))

(declare-fun b!1245935 () Bool)

(declare-fun e!706592 () Bool)

(assert (=> b!1245935 (= e!706592 (contains!7470 Nil!27649 (select (arr!38671 a!3892) from!3270)))))

(declare-fun b!1245936 () Bool)

(declare-fun e!706589 () Bool)

(assert (=> b!1245936 (= e!706589 e!706590)))

(declare-fun c!121926 () Bool)

(assert (=> b!1245936 (= c!121926 (validKeyInArray!0 (select (arr!38671 a!3892) from!3270)))))

(declare-fun d!137443 () Bool)

(declare-fun res!831457 () Bool)

(declare-fun e!706591 () Bool)

(assert (=> d!137443 (=> res!831457 e!706591)))

(assert (=> d!137443 (= res!831457 (bvsge from!3270 (size!39208 a!3892)))))

(assert (=> d!137443 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27649) e!706591)))

(declare-fun b!1245937 () Bool)

(assert (=> b!1245937 (= e!706590 call!61505)))

(declare-fun bm!61502 () Bool)

(assert (=> bm!61502 (= call!61505 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121926 (Cons!27648 (select (arr!38671 a!3892) from!3270) Nil!27649) Nil!27649)))))

(declare-fun b!1245938 () Bool)

(assert (=> b!1245938 (= e!706591 e!706589)))

(declare-fun res!831456 () Bool)

(assert (=> b!1245938 (=> (not res!831456) (not e!706589))))

(assert (=> b!1245938 (= res!831456 (not e!706592))))

(declare-fun res!831458 () Bool)

(assert (=> b!1245938 (=> (not res!831458) (not e!706592))))

(assert (=> b!1245938 (= res!831458 (validKeyInArray!0 (select (arr!38671 a!3892) from!3270)))))

(assert (= (and d!137443 (not res!831457)) b!1245938))

(assert (= (and b!1245938 res!831458) b!1245935))

(assert (= (and b!1245938 res!831456) b!1245936))

(assert (= (and b!1245936 c!121926) b!1245934))

(assert (= (and b!1245936 (not c!121926)) b!1245937))

(assert (= (or b!1245934 b!1245937) bm!61502))

(assert (=> b!1245935 m!1147861))

(assert (=> b!1245935 m!1147861))

(declare-fun m!1147915 () Bool)

(assert (=> b!1245935 m!1147915))

(assert (=> b!1245936 m!1147861))

(assert (=> b!1245936 m!1147861))

(assert (=> b!1245936 m!1147863))

(assert (=> bm!61502 m!1147861))

(declare-fun m!1147917 () Bool)

(assert (=> bm!61502 m!1147917))

(assert (=> b!1245938 m!1147861))

(assert (=> b!1245938 m!1147861))

(assert (=> b!1245938 m!1147863))

(assert (=> b!1245874 d!137443))

(declare-fun d!137459 () Bool)

(declare-fun lt!562950 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!635 (List!27652) (InoxSet (_ BitVec 64)))

(assert (=> d!137459 (= lt!562950 (select (content!635 lt!562934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706620 () Bool)

(assert (=> d!137459 (= lt!562950 e!706620)))

(declare-fun res!831485 () Bool)

(assert (=> d!137459 (=> (not res!831485) (not e!706620))))

(get-info :version)

(assert (=> d!137459 (= res!831485 ((_ is Cons!27648) lt!562934))))

(assert (=> d!137459 (= (contains!7470 lt!562934 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562950)))

(declare-fun b!1245965 () Bool)

(declare-fun e!706619 () Bool)

(assert (=> b!1245965 (= e!706620 e!706619)))

(declare-fun res!831486 () Bool)

(assert (=> b!1245965 (=> res!831486 e!706619)))

(assert (=> b!1245965 (= res!831486 (= (h!28857 lt!562934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245966 () Bool)

(assert (=> b!1245966 (= e!706619 (contains!7470 (t!41128 lt!562934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137459 res!831485) b!1245965))

(assert (= (and b!1245965 (not res!831486)) b!1245966))

(declare-fun m!1147939 () Bool)

(assert (=> d!137459 m!1147939))

(declare-fun m!1147941 () Bool)

(assert (=> d!137459 m!1147941))

(declare-fun m!1147943 () Bool)

(assert (=> b!1245966 m!1147943))

(assert (=> b!1245876 d!137459))

(declare-fun b!1246007 () Bool)

(declare-fun e!706657 () Bool)

(assert (=> b!1246007 (= e!706657 (subseq!654 Nil!27649 (t!41128 lt!562934)))))

(declare-fun d!137471 () Bool)

(declare-fun res!831521 () Bool)

(declare-fun e!706658 () Bool)

(assert (=> d!137471 (=> res!831521 e!706658)))

(assert (=> d!137471 (= res!831521 ((_ is Nil!27649) Nil!27649))))

(assert (=> d!137471 (= (subseq!654 Nil!27649 lt!562934) e!706658)))

(declare-fun b!1246005 () Bool)

(declare-fun e!706655 () Bool)

(assert (=> b!1246005 (= e!706655 e!706657)))

(declare-fun res!831520 () Bool)

(assert (=> b!1246005 (=> res!831520 e!706657)))

(declare-fun e!706656 () Bool)

(assert (=> b!1246005 (= res!831520 e!706656)))

(declare-fun res!831519 () Bool)

(assert (=> b!1246005 (=> (not res!831519) (not e!706656))))

(assert (=> b!1246005 (= res!831519 (= (h!28857 Nil!27649) (h!28857 lt!562934)))))

(declare-fun b!1246004 () Bool)

(assert (=> b!1246004 (= e!706658 e!706655)))

(declare-fun res!831518 () Bool)

(assert (=> b!1246004 (=> (not res!831518) (not e!706655))))

(assert (=> b!1246004 (= res!831518 ((_ is Cons!27648) lt!562934))))

(declare-fun b!1246006 () Bool)

(assert (=> b!1246006 (= e!706656 (subseq!654 (t!41128 Nil!27649) (t!41128 lt!562934)))))

(assert (= (and d!137471 (not res!831521)) b!1246004))

(assert (= (and b!1246004 res!831518) b!1246005))

(assert (= (and b!1246005 res!831519) b!1246006))

(assert (= (and b!1246005 (not res!831520)) b!1246007))

(declare-fun m!1147957 () Bool)

(assert (=> b!1246007 m!1147957))

(declare-fun m!1147959 () Bool)

(assert (=> b!1246006 m!1147959))

(assert (=> b!1245875 d!137471))

(declare-fun d!137477 () Bool)

(declare-fun res!831532 () Bool)

(declare-fun e!706669 () Bool)

(assert (=> d!137477 (=> res!831532 e!706669)))

(assert (=> d!137477 (= res!831532 ((_ is Nil!27649) lt!562934))))

(assert (=> d!137477 (= (noDuplicate!2060 lt!562934) e!706669)))

(declare-fun b!1246018 () Bool)

(declare-fun e!706670 () Bool)

(assert (=> b!1246018 (= e!706669 e!706670)))

(declare-fun res!831533 () Bool)

(assert (=> b!1246018 (=> (not res!831533) (not e!706670))))

(assert (=> b!1246018 (= res!831533 (not (contains!7470 (t!41128 lt!562934) (h!28857 lt!562934))))))

(declare-fun b!1246019 () Bool)

(assert (=> b!1246019 (= e!706670 (noDuplicate!2060 (t!41128 lt!562934)))))

(assert (= (and d!137477 (not res!831532)) b!1246018))

(assert (= (and b!1246018 res!831533) b!1246019))

(declare-fun m!1147965 () Bool)

(assert (=> b!1246018 m!1147965))

(declare-fun m!1147967 () Bool)

(assert (=> b!1246019 m!1147967))

(assert (=> b!1245870 d!137477))

(declare-fun d!137481 () Bool)

(declare-fun lt!562952 () Bool)

(assert (=> d!137481 (= lt!562952 (select (content!635 Nil!27649) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706672 () Bool)

(assert (=> d!137481 (= lt!562952 e!706672)))

(declare-fun res!831534 () Bool)

(assert (=> d!137481 (=> (not res!831534) (not e!706672))))

(assert (=> d!137481 (= res!831534 ((_ is Cons!27648) Nil!27649))))

(assert (=> d!137481 (= (contains!7470 Nil!27649 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562952)))

(declare-fun b!1246020 () Bool)

(declare-fun e!706671 () Bool)

(assert (=> b!1246020 (= e!706672 e!706671)))

(declare-fun res!831535 () Bool)

(assert (=> b!1246020 (=> res!831535 e!706671)))

(assert (=> b!1246020 (= res!831535 (= (h!28857 Nil!27649) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246021 () Bool)

(assert (=> b!1246021 (= e!706671 (contains!7470 (t!41128 Nil!27649) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137481 res!831534) b!1246020))

(assert (= (and b!1246020 (not res!831535)) b!1246021))

(declare-fun m!1147969 () Bool)

(assert (=> d!137481 m!1147969))

(declare-fun m!1147971 () Bool)

(assert (=> d!137481 m!1147971))

(declare-fun m!1147973 () Bool)

(assert (=> b!1246021 m!1147973))

(assert (=> b!1245877 d!137481))

(declare-fun d!137483 () Bool)

(assert (=> d!137483 (= (validKeyInArray!0 (select (arr!38671 a!3892) from!3270)) (and (not (= (select (arr!38671 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38671 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245872 d!137483))

(declare-fun d!137485 () Bool)

(declare-fun lt!562953 () Bool)

(assert (=> d!137485 (= lt!562953 (select (content!635 Nil!27649) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706674 () Bool)

(assert (=> d!137485 (= lt!562953 e!706674)))

(declare-fun res!831536 () Bool)

(assert (=> d!137485 (=> (not res!831536) (not e!706674))))

(assert (=> d!137485 (= res!831536 ((_ is Cons!27648) Nil!27649))))

(assert (=> d!137485 (= (contains!7470 Nil!27649 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562953)))

(declare-fun b!1246022 () Bool)

(declare-fun e!706673 () Bool)

(assert (=> b!1246022 (= e!706674 e!706673)))

(declare-fun res!831537 () Bool)

(assert (=> b!1246022 (=> res!831537 e!706673)))

(assert (=> b!1246022 (= res!831537 (= (h!28857 Nil!27649) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246023 () Bool)

(assert (=> b!1246023 (= e!706673 (contains!7470 (t!41128 Nil!27649) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137485 res!831536) b!1246022))

(assert (= (and b!1246022 (not res!831537)) b!1246023))

(assert (=> d!137485 m!1147969))

(declare-fun m!1147975 () Bool)

(assert (=> d!137485 m!1147975))

(declare-fun m!1147977 () Bool)

(assert (=> b!1246023 m!1147977))

(assert (=> b!1245871 d!137485))

(declare-fun d!137487 () Bool)

(declare-fun lt!562954 () Bool)

(assert (=> d!137487 (= lt!562954 (select (content!635 lt!562934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706678 () Bool)

(assert (=> d!137487 (= lt!562954 e!706678)))

(declare-fun res!831540 () Bool)

(assert (=> d!137487 (=> (not res!831540) (not e!706678))))

(assert (=> d!137487 (= res!831540 ((_ is Cons!27648) lt!562934))))

(assert (=> d!137487 (= (contains!7470 lt!562934 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562954)))

(declare-fun b!1246024 () Bool)

(declare-fun e!706677 () Bool)

(assert (=> b!1246024 (= e!706678 e!706677)))

(declare-fun res!831541 () Bool)

(assert (=> b!1246024 (=> res!831541 e!706677)))

(assert (=> b!1246024 (= res!831541 (= (h!28857 lt!562934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246025 () Bool)

(assert (=> b!1246025 (= e!706677 (contains!7470 (t!41128 lt!562934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137487 res!831540) b!1246024))

(assert (= (and b!1246024 (not res!831541)) b!1246025))

(assert (=> d!137487 m!1147939))

(declare-fun m!1147979 () Bool)

(assert (=> d!137487 m!1147979))

(declare-fun m!1147981 () Bool)

(assert (=> b!1246025 m!1147981))

(assert (=> b!1245873 d!137487))

(check-sat (not b!1245936) (not b!1246006) (not b!1246021) (not b!1245966) (not b!1246023) (not b!1246018) (not bm!61502) (not d!137459) (not b!1246019) (not d!137485) (not b!1245935) (not b!1245938) (not b!1246007) (not d!137481) (not d!137487) (not b!1246025))
(check-sat)
