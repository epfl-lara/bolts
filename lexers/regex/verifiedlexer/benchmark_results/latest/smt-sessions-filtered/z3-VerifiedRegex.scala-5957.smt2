; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291752 () Bool)

(assert start!291752)

(declare-fun b!3053632 () Bool)

(declare-fun res!1254292 () Bool)

(declare-fun e!1912816 () Bool)

(assert (=> b!3053632 (=> res!1254292 e!1912816)))

(declare-datatypes ((C!19116 0))(
  ( (C!19117 (val!11594 Int)) )
))
(declare-datatypes ((List!35330 0))(
  ( (Nil!35206) (Cons!35206 (h!40626 C!19116) (t!234395 List!35330)) )
))
(declare-fun s!11993 () List!35330)

(declare-fun isEmpty!19521 (List!35330) Bool)

(assert (=> b!3053632 (= res!1254292 (not (isEmpty!19521 s!11993)))))

(declare-fun b!3053633 () Bool)

(declare-fun e!1912817 () Bool)

(declare-fun tp!966092 () Bool)

(declare-fun tp!966095 () Bool)

(assert (=> b!3053633 (= e!1912817 (and tp!966092 tp!966095))))

(declare-fun res!1254294 () Bool)

(declare-fun e!1912818 () Bool)

(assert (=> start!291752 (=> (not res!1254294) (not e!1912818))))

(declare-datatypes ((Regex!9465 0))(
  ( (ElementMatch!9465 (c!506225 C!19116)) (Concat!14786 (regOne!19442 Regex!9465) (regTwo!19442 Regex!9465)) (EmptyExpr!9465) (Star!9465 (reg!9794 Regex!9465)) (EmptyLang!9465) (Union!9465 (regOne!19443 Regex!9465) (regTwo!19443 Regex!9465)) )
))
(declare-fun r!17423 () Regex!9465)

(declare-fun validRegex!4198 (Regex!9465) Bool)

(assert (=> start!291752 (= res!1254294 (validRegex!4198 r!17423))))

(assert (=> start!291752 e!1912818))

(assert (=> start!291752 e!1912817))

(declare-fun e!1912819 () Bool)

(assert (=> start!291752 e!1912819))

(declare-fun b!3053634 () Bool)

(declare-fun tp!966093 () Bool)

(assert (=> b!3053634 (= e!1912817 tp!966093)))

(declare-fun b!3053635 () Bool)

(declare-fun tp_is_empty!16493 () Bool)

(assert (=> b!3053635 (= e!1912817 tp_is_empty!16493)))

(declare-fun b!3053636 () Bool)

(declare-fun tp!966094 () Bool)

(assert (=> b!3053636 (= e!1912819 (and tp_is_empty!16493 tp!966094))))

(declare-fun b!3053637 () Bool)

(declare-fun matchR!4347 (Regex!9465 List!35330) Bool)

(declare-fun simplify!420 (Regex!9465) Regex!9465)

(assert (=> b!3053637 (= e!1912816 (not (matchR!4347 (simplify!420 r!17423) s!11993)))))

(declare-fun b!3053638 () Bool)

(declare-fun tp!966097 () Bool)

(declare-fun tp!966096 () Bool)

(assert (=> b!3053638 (= e!1912817 (and tp!966097 tp!966096))))

(declare-fun b!3053639 () Bool)

(assert (=> b!3053639 (= e!1912818 (not e!1912816))))

(declare-fun res!1254293 () Bool)

(assert (=> b!3053639 (=> res!1254293 e!1912816)))

(declare-fun lt!1048732 () Bool)

(get-info :version)

(assert (=> b!3053639 (= res!1254293 (or lt!1048732 (not ((_ is Concat!14786) r!17423))))))

(declare-fun matchRSpec!1602 (Regex!9465 List!35330) Bool)

(assert (=> b!3053639 (= lt!1048732 (matchRSpec!1602 r!17423 s!11993))))

(assert (=> b!3053639 (= lt!1048732 (matchR!4347 r!17423 s!11993))))

(declare-datatypes ((Unit!49369 0))(
  ( (Unit!49370) )
))
(declare-fun lt!1048731 () Unit!49369)

(declare-fun mainMatchTheorem!1602 (Regex!9465 List!35330) Unit!49369)

(assert (=> b!3053639 (= lt!1048731 (mainMatchTheorem!1602 r!17423 s!11993))))

(assert (= (and start!291752 res!1254294) b!3053639))

(assert (= (and b!3053639 (not res!1254293)) b!3053632))

(assert (= (and b!3053632 (not res!1254292)) b!3053637))

(assert (= (and start!291752 ((_ is ElementMatch!9465) r!17423)) b!3053635))

(assert (= (and start!291752 ((_ is Concat!14786) r!17423)) b!3053633))

(assert (= (and start!291752 ((_ is Star!9465) r!17423)) b!3053634))

(assert (= (and start!291752 ((_ is Union!9465) r!17423)) b!3053638))

(assert (= (and start!291752 ((_ is Cons!35206) s!11993)) b!3053636))

(declare-fun m!3379091 () Bool)

(assert (=> b!3053632 m!3379091))

(declare-fun m!3379093 () Bool)

(assert (=> start!291752 m!3379093))

(declare-fun m!3379095 () Bool)

(assert (=> b!3053637 m!3379095))

(assert (=> b!3053637 m!3379095))

(declare-fun m!3379097 () Bool)

(assert (=> b!3053637 m!3379097))

(declare-fun m!3379099 () Bool)

(assert (=> b!3053639 m!3379099))

(declare-fun m!3379101 () Bool)

(assert (=> b!3053639 m!3379101))

(declare-fun m!3379103 () Bool)

(assert (=> b!3053639 m!3379103))

(check-sat (not b!3053634) (not b!3053636) (not start!291752) (not b!3053632) tp_is_empty!16493 (not b!3053633) (not b!3053638) (not b!3053639) (not b!3053637))
(check-sat)
(get-model)

(declare-fun b!3053824 () Bool)

(assert (=> b!3053824 true))

(assert (=> b!3053824 true))

(declare-fun bs!532378 () Bool)

(declare-fun b!3053826 () Bool)

(assert (= bs!532378 (and b!3053826 b!3053824)))

(declare-fun lambda!113754 () Int)

(declare-fun lambda!113753 () Int)

(assert (=> bs!532378 (not (= lambda!113754 lambda!113753))))

(assert (=> b!3053826 true))

(assert (=> b!3053826 true))

(declare-fun b!3053823 () Bool)

(declare-fun e!1912917 () Bool)

(assert (=> b!3053823 (= e!1912917 (= s!11993 (Cons!35206 (c!506225 r!17423) Nil!35206)))))

(declare-fun e!1912923 () Bool)

(declare-fun call!210461 () Bool)

(assert (=> b!3053824 (= e!1912923 call!210461)))

(declare-fun b!3053825 () Bool)

(declare-fun res!1254366 () Bool)

(assert (=> b!3053825 (=> res!1254366 e!1912923)))

(declare-fun call!210462 () Bool)

(assert (=> b!3053825 (= res!1254366 call!210462)))

(declare-fun e!1912921 () Bool)

(assert (=> b!3053825 (= e!1912921 e!1912923)))

(declare-fun d!854676 () Bool)

(declare-fun c!506280 () Bool)

(assert (=> d!854676 (= c!506280 ((_ is EmptyExpr!9465) r!17423))))

(declare-fun e!1912922 () Bool)

(assert (=> d!854676 (= (matchRSpec!1602 r!17423 s!11993) e!1912922)))

(assert (=> b!3053826 (= e!1912921 call!210461)))

(declare-fun b!3053827 () Bool)

(declare-fun c!506281 () Bool)

(assert (=> b!3053827 (= c!506281 ((_ is ElementMatch!9465) r!17423))))

(declare-fun e!1912919 () Bool)

(assert (=> b!3053827 (= e!1912919 e!1912917)))

(declare-fun b!3053828 () Bool)

(declare-fun e!1912918 () Bool)

(assert (=> b!3053828 (= e!1912918 e!1912921)))

(declare-fun c!506282 () Bool)

(assert (=> b!3053828 (= c!506282 ((_ is Star!9465) r!17423))))

(declare-fun b!3053829 () Bool)

(declare-fun e!1912920 () Bool)

(assert (=> b!3053829 (= e!1912920 (matchRSpec!1602 (regTwo!19443 r!17423) s!11993))))

(declare-fun bm!210456 () Bool)

(assert (=> bm!210456 (= call!210462 (isEmpty!19521 s!11993))))

(declare-fun b!3053830 () Bool)

(assert (=> b!3053830 (= e!1912922 e!1912919)))

(declare-fun res!1254368 () Bool)

(assert (=> b!3053830 (= res!1254368 (not ((_ is EmptyLang!9465) r!17423)))))

(assert (=> b!3053830 (=> (not res!1254368) (not e!1912919))))

(declare-fun b!3053831 () Bool)

(declare-fun c!506283 () Bool)

(assert (=> b!3053831 (= c!506283 ((_ is Union!9465) r!17423))))

(assert (=> b!3053831 (= e!1912917 e!1912918)))

(declare-fun bm!210457 () Bool)

(declare-fun Exists!1729 (Int) Bool)

(assert (=> bm!210457 (= call!210461 (Exists!1729 (ite c!506282 lambda!113753 lambda!113754)))))

(declare-fun b!3053832 () Bool)

(assert (=> b!3053832 (= e!1912922 call!210462)))

(declare-fun b!3053833 () Bool)

(assert (=> b!3053833 (= e!1912918 e!1912920)))

(declare-fun res!1254367 () Bool)

(assert (=> b!3053833 (= res!1254367 (matchRSpec!1602 (regOne!19443 r!17423) s!11993))))

(assert (=> b!3053833 (=> res!1254367 e!1912920)))

(assert (= (and d!854676 c!506280) b!3053832))

(assert (= (and d!854676 (not c!506280)) b!3053830))

(assert (= (and b!3053830 res!1254368) b!3053827))

(assert (= (and b!3053827 c!506281) b!3053823))

(assert (= (and b!3053827 (not c!506281)) b!3053831))

(assert (= (and b!3053831 c!506283) b!3053833))

(assert (= (and b!3053831 (not c!506283)) b!3053828))

(assert (= (and b!3053833 (not res!1254367)) b!3053829))

(assert (= (and b!3053828 c!506282) b!3053825))

(assert (= (and b!3053828 (not c!506282)) b!3053826))

(assert (= (and b!3053825 (not res!1254366)) b!3053824))

(assert (= (or b!3053824 b!3053826) bm!210457))

(assert (= (or b!3053832 b!3053825) bm!210456))

(declare-fun m!3379133 () Bool)

(assert (=> b!3053829 m!3379133))

(assert (=> bm!210456 m!3379091))

(declare-fun m!3379135 () Bool)

(assert (=> bm!210457 m!3379135))

(declare-fun m!3379137 () Bool)

(assert (=> b!3053833 m!3379137))

(assert (=> b!3053639 d!854676))

(declare-fun b!3053911 () Bool)

(declare-fun e!1912971 () Bool)

(declare-fun head!6767 (List!35330) C!19116)

(assert (=> b!3053911 (= e!1912971 (= (head!6767 s!11993) (c!506225 r!17423)))))

(declare-fun b!3053912 () Bool)

(declare-fun e!1912974 () Bool)

(declare-fun lt!1048760 () Bool)

(declare-fun call!210478 () Bool)

(assert (=> b!3053912 (= e!1912974 (= lt!1048760 call!210478))))

(declare-fun b!3053913 () Bool)

(declare-fun res!1254407 () Bool)

(declare-fun e!1912973 () Bool)

(assert (=> b!3053913 (=> res!1254407 e!1912973)))

(assert (=> b!3053913 (= res!1254407 e!1912971)))

(declare-fun res!1254401 () Bool)

(assert (=> b!3053913 (=> (not res!1254401) (not e!1912971))))

(assert (=> b!3053913 (= res!1254401 lt!1048760)))

(declare-fun b!3053914 () Bool)

(declare-fun e!1912968 () Bool)

(declare-fun derivativeStep!2708 (Regex!9465 C!19116) Regex!9465)

(declare-fun tail!4993 (List!35330) List!35330)

(assert (=> b!3053914 (= e!1912968 (matchR!4347 (derivativeStep!2708 r!17423 (head!6767 s!11993)) (tail!4993 s!11993)))))

(declare-fun b!3053916 () Bool)

(declare-fun e!1912970 () Bool)

(assert (=> b!3053916 (= e!1912973 e!1912970)))

(declare-fun res!1254402 () Bool)

(assert (=> b!3053916 (=> (not res!1254402) (not e!1912970))))

(assert (=> b!3053916 (= res!1254402 (not lt!1048760))))

(declare-fun b!3053917 () Bool)

(declare-fun res!1254405 () Bool)

(assert (=> b!3053917 (=> res!1254405 e!1912973)))

(assert (=> b!3053917 (= res!1254405 (not ((_ is ElementMatch!9465) r!17423)))))

(declare-fun e!1912969 () Bool)

(assert (=> b!3053917 (= e!1912969 e!1912973)))

(declare-fun b!3053918 () Bool)

(declare-fun e!1912972 () Bool)

(assert (=> b!3053918 (= e!1912972 (not (= (head!6767 s!11993) (c!506225 r!17423))))))

(declare-fun b!3053919 () Bool)

(assert (=> b!3053919 (= e!1912969 (not lt!1048760))))

(declare-fun bm!210473 () Bool)

(assert (=> bm!210473 (= call!210478 (isEmpty!19521 s!11993))))

(declare-fun b!3053920 () Bool)

(declare-fun nullable!3111 (Regex!9465) Bool)

(assert (=> b!3053920 (= e!1912968 (nullable!3111 r!17423))))

(declare-fun b!3053921 () Bool)

(assert (=> b!3053921 (= e!1912970 e!1912972)))

(declare-fun res!1254400 () Bool)

(assert (=> b!3053921 (=> res!1254400 e!1912972)))

(assert (=> b!3053921 (= res!1254400 call!210478)))

(declare-fun b!3053922 () Bool)

(declare-fun res!1254406 () Bool)

(assert (=> b!3053922 (=> (not res!1254406) (not e!1912971))))

(assert (=> b!3053922 (= res!1254406 (isEmpty!19521 (tail!4993 s!11993)))))

(declare-fun d!854688 () Bool)

(assert (=> d!854688 e!1912974))

(declare-fun c!506307 () Bool)

(assert (=> d!854688 (= c!506307 ((_ is EmptyExpr!9465) r!17423))))

(assert (=> d!854688 (= lt!1048760 e!1912968)))

(declare-fun c!506306 () Bool)

(assert (=> d!854688 (= c!506306 (isEmpty!19521 s!11993))))

(assert (=> d!854688 (validRegex!4198 r!17423)))

(assert (=> d!854688 (= (matchR!4347 r!17423 s!11993) lt!1048760)))

(declare-fun b!3053915 () Bool)

(declare-fun res!1254404 () Bool)

(assert (=> b!3053915 (=> (not res!1254404) (not e!1912971))))

(assert (=> b!3053915 (= res!1254404 (not call!210478))))

(declare-fun b!3053923 () Bool)

(declare-fun res!1254403 () Bool)

(assert (=> b!3053923 (=> res!1254403 e!1912972)))

(assert (=> b!3053923 (= res!1254403 (not (isEmpty!19521 (tail!4993 s!11993))))))

(declare-fun b!3053924 () Bool)

(assert (=> b!3053924 (= e!1912974 e!1912969)))

(declare-fun c!506305 () Bool)

(assert (=> b!3053924 (= c!506305 ((_ is EmptyLang!9465) r!17423))))

(assert (= (and d!854688 c!506306) b!3053920))

(assert (= (and d!854688 (not c!506306)) b!3053914))

(assert (= (and d!854688 c!506307) b!3053912))

(assert (= (and d!854688 (not c!506307)) b!3053924))

(assert (= (and b!3053924 c!506305) b!3053919))

(assert (= (and b!3053924 (not c!506305)) b!3053917))

(assert (= (and b!3053917 (not res!1254405)) b!3053913))

(assert (= (and b!3053913 res!1254401) b!3053915))

(assert (= (and b!3053915 res!1254404) b!3053922))

(assert (= (and b!3053922 res!1254406) b!3053911))

(assert (= (and b!3053913 (not res!1254407)) b!3053916))

(assert (= (and b!3053916 res!1254402) b!3053921))

(assert (= (and b!3053921 (not res!1254400)) b!3053923))

(assert (= (and b!3053923 (not res!1254403)) b!3053918))

(assert (= (or b!3053912 b!3053915 b!3053921) bm!210473))

(declare-fun m!3379155 () Bool)

(assert (=> b!3053922 m!3379155))

(assert (=> b!3053922 m!3379155))

(declare-fun m!3379157 () Bool)

(assert (=> b!3053922 m!3379157))

(assert (=> b!3053923 m!3379155))

(assert (=> b!3053923 m!3379155))

(assert (=> b!3053923 m!3379157))

(assert (=> d!854688 m!3379091))

(assert (=> d!854688 m!3379093))

(declare-fun m!3379159 () Bool)

(assert (=> b!3053920 m!3379159))

(declare-fun m!3379161 () Bool)

(assert (=> b!3053918 m!3379161))

(assert (=> b!3053911 m!3379161))

(assert (=> b!3053914 m!3379161))

(assert (=> b!3053914 m!3379161))

(declare-fun m!3379163 () Bool)

(assert (=> b!3053914 m!3379163))

(assert (=> b!3053914 m!3379155))

(assert (=> b!3053914 m!3379163))

(assert (=> b!3053914 m!3379155))

(declare-fun m!3379165 () Bool)

(assert (=> b!3053914 m!3379165))

(assert (=> bm!210473 m!3379091))

(assert (=> b!3053639 d!854688))

(declare-fun d!854692 () Bool)

(assert (=> d!854692 (= (matchR!4347 r!17423 s!11993) (matchRSpec!1602 r!17423 s!11993))))

(declare-fun lt!1048763 () Unit!49369)

(declare-fun choose!18096 (Regex!9465 List!35330) Unit!49369)

(assert (=> d!854692 (= lt!1048763 (choose!18096 r!17423 s!11993))))

(assert (=> d!854692 (validRegex!4198 r!17423)))

(assert (=> d!854692 (= (mainMatchTheorem!1602 r!17423 s!11993) lt!1048763)))

(declare-fun bs!532379 () Bool)

(assert (= bs!532379 d!854692))

(assert (=> bs!532379 m!3379101))

(assert (=> bs!532379 m!3379099))

(declare-fun m!3379173 () Bool)

(assert (=> bs!532379 m!3379173))

(assert (=> bs!532379 m!3379093))

(assert (=> b!3053639 d!854692))

(declare-fun b!3053969 () Bool)

(declare-fun e!1912995 () Bool)

(assert (=> b!3053969 (= e!1912995 (= (head!6767 s!11993) (c!506225 (simplify!420 r!17423))))))

(declare-fun b!3053970 () Bool)

(declare-fun e!1912998 () Bool)

(declare-fun lt!1048764 () Bool)

(declare-fun call!210482 () Bool)

(assert (=> b!3053970 (= e!1912998 (= lt!1048764 call!210482))))

(declare-fun b!3053971 () Bool)

(declare-fun res!1254420 () Bool)

(declare-fun e!1912997 () Bool)

(assert (=> b!3053971 (=> res!1254420 e!1912997)))

(assert (=> b!3053971 (= res!1254420 e!1912995)))

(declare-fun res!1254414 () Bool)

(assert (=> b!3053971 (=> (not res!1254414) (not e!1912995))))

(assert (=> b!3053971 (= res!1254414 lt!1048764)))

(declare-fun b!3053972 () Bool)

(declare-fun e!1912992 () Bool)

(assert (=> b!3053972 (= e!1912992 (matchR!4347 (derivativeStep!2708 (simplify!420 r!17423) (head!6767 s!11993)) (tail!4993 s!11993)))))

(declare-fun b!3053974 () Bool)

(declare-fun e!1912994 () Bool)

(assert (=> b!3053974 (= e!1912997 e!1912994)))

(declare-fun res!1254415 () Bool)

(assert (=> b!3053974 (=> (not res!1254415) (not e!1912994))))

(assert (=> b!3053974 (= res!1254415 (not lt!1048764))))

(declare-fun b!3053975 () Bool)

(declare-fun res!1254418 () Bool)

(assert (=> b!3053975 (=> res!1254418 e!1912997)))

(assert (=> b!3053975 (= res!1254418 (not ((_ is ElementMatch!9465) (simplify!420 r!17423))))))

(declare-fun e!1912993 () Bool)

(assert (=> b!3053975 (= e!1912993 e!1912997)))

(declare-fun b!3053976 () Bool)

(declare-fun e!1912996 () Bool)

(assert (=> b!3053976 (= e!1912996 (not (= (head!6767 s!11993) (c!506225 (simplify!420 r!17423)))))))

(declare-fun b!3053977 () Bool)

(assert (=> b!3053977 (= e!1912993 (not lt!1048764))))

(declare-fun bm!210477 () Bool)

(assert (=> bm!210477 (= call!210482 (isEmpty!19521 s!11993))))

(declare-fun b!3053978 () Bool)

(assert (=> b!3053978 (= e!1912992 (nullable!3111 (simplify!420 r!17423)))))

(declare-fun b!3053979 () Bool)

(assert (=> b!3053979 (= e!1912994 e!1912996)))

(declare-fun res!1254413 () Bool)

(assert (=> b!3053979 (=> res!1254413 e!1912996)))

(assert (=> b!3053979 (= res!1254413 call!210482)))

(declare-fun b!3053980 () Bool)

(declare-fun res!1254419 () Bool)

(assert (=> b!3053980 (=> (not res!1254419) (not e!1912995))))

(assert (=> b!3053980 (= res!1254419 (isEmpty!19521 (tail!4993 s!11993)))))

(declare-fun d!854696 () Bool)

(assert (=> d!854696 e!1912998))

(declare-fun c!506312 () Bool)

(assert (=> d!854696 (= c!506312 ((_ is EmptyExpr!9465) (simplify!420 r!17423)))))

(assert (=> d!854696 (= lt!1048764 e!1912992)))

(declare-fun c!506311 () Bool)

(assert (=> d!854696 (= c!506311 (isEmpty!19521 s!11993))))

(assert (=> d!854696 (validRegex!4198 (simplify!420 r!17423))))

(assert (=> d!854696 (= (matchR!4347 (simplify!420 r!17423) s!11993) lt!1048764)))

(declare-fun b!3053973 () Bool)

(declare-fun res!1254417 () Bool)

(assert (=> b!3053973 (=> (not res!1254417) (not e!1912995))))

(assert (=> b!3053973 (= res!1254417 (not call!210482))))

(declare-fun b!3053981 () Bool)

(declare-fun res!1254416 () Bool)

(assert (=> b!3053981 (=> res!1254416 e!1912996)))

(assert (=> b!3053981 (= res!1254416 (not (isEmpty!19521 (tail!4993 s!11993))))))

(declare-fun b!3053982 () Bool)

(assert (=> b!3053982 (= e!1912998 e!1912993)))

(declare-fun c!506310 () Bool)

(assert (=> b!3053982 (= c!506310 ((_ is EmptyLang!9465) (simplify!420 r!17423)))))

(assert (= (and d!854696 c!506311) b!3053978))

(assert (= (and d!854696 (not c!506311)) b!3053972))

(assert (= (and d!854696 c!506312) b!3053970))

(assert (= (and d!854696 (not c!506312)) b!3053982))

(assert (= (and b!3053982 c!506310) b!3053977))

(assert (= (and b!3053982 (not c!506310)) b!3053975))

(assert (= (and b!3053975 (not res!1254418)) b!3053971))

(assert (= (and b!3053971 res!1254414) b!3053973))

(assert (= (and b!3053973 res!1254417) b!3053980))

(assert (= (and b!3053980 res!1254419) b!3053969))

(assert (= (and b!3053971 (not res!1254420)) b!3053974))

(assert (= (and b!3053974 res!1254415) b!3053979))

(assert (= (and b!3053979 (not res!1254413)) b!3053981))

(assert (= (and b!3053981 (not res!1254416)) b!3053976))

(assert (= (or b!3053970 b!3053973 b!3053979) bm!210477))

(assert (=> b!3053980 m!3379155))

(assert (=> b!3053980 m!3379155))

(assert (=> b!3053980 m!3379157))

(assert (=> b!3053981 m!3379155))

(assert (=> b!3053981 m!3379155))

(assert (=> b!3053981 m!3379157))

(assert (=> d!854696 m!3379091))

(assert (=> d!854696 m!3379095))

(declare-fun m!3379175 () Bool)

(assert (=> d!854696 m!3379175))

(assert (=> b!3053978 m!3379095))

(declare-fun m!3379177 () Bool)

(assert (=> b!3053978 m!3379177))

(assert (=> b!3053976 m!3379161))

(assert (=> b!3053969 m!3379161))

(assert (=> b!3053972 m!3379161))

(assert (=> b!3053972 m!3379095))

(assert (=> b!3053972 m!3379161))

(declare-fun m!3379179 () Bool)

(assert (=> b!3053972 m!3379179))

(assert (=> b!3053972 m!3379155))

(assert (=> b!3053972 m!3379179))

(assert (=> b!3053972 m!3379155))

(declare-fun m!3379181 () Bool)

(assert (=> b!3053972 m!3379181))

(assert (=> bm!210477 m!3379091))

(assert (=> b!3053637 d!854696))

(declare-fun b!3054033 () Bool)

(declare-fun e!1913029 () Regex!9465)

(declare-fun lt!1048780 () Regex!9465)

(assert (=> b!3054033 (= e!1913029 (Star!9465 lt!1048780))))

(declare-fun b!3054034 () Bool)

(declare-fun e!1913038 () Regex!9465)

(assert (=> b!3054034 (= e!1913038 EmptyLang!9465)))

(declare-fun b!3054035 () Bool)

(declare-fun e!1913028 () Regex!9465)

(declare-fun lt!1048781 () Regex!9465)

(declare-fun lt!1048782 () Regex!9465)

(assert (=> b!3054035 (= e!1913028 (Concat!14786 lt!1048781 lt!1048782))))

(declare-fun b!3054036 () Bool)

(declare-fun e!1913030 () Regex!9465)

(declare-fun lt!1048779 () Regex!9465)

(assert (=> b!3054036 (= e!1913030 lt!1048779)))

(declare-fun b!3054037 () Bool)

(declare-fun e!1913037 () Bool)

(declare-fun call!210498 () Bool)

(assert (=> b!3054037 (= e!1913037 call!210498)))

(declare-fun b!3054038 () Bool)

(declare-fun lt!1048777 () Regex!9465)

(assert (=> b!3054038 (= e!1913030 (Union!9465 lt!1048779 lt!1048777))))

(declare-fun bm!210493 () Bool)

(declare-fun call!210503 () Regex!9465)

(declare-fun call!210500 () Regex!9465)

(assert (=> bm!210493 (= call!210503 call!210500)))

(declare-fun b!3054039 () Bool)

(declare-fun e!1913035 () Bool)

(declare-fun call!210499 () Bool)

(assert (=> b!3054039 (= e!1913035 call!210499)))

(declare-fun bm!210494 () Bool)

(declare-fun call!210497 () Bool)

(declare-fun call!210501 () Bool)

(assert (=> bm!210494 (= call!210497 call!210501)))

(declare-fun b!3054040 () Bool)

(declare-fun e!1913039 () Regex!9465)

(assert (=> b!3054040 (= e!1913039 EmptyExpr!9465)))

(declare-fun b!3054041 () Bool)

(declare-fun c!506337 () Bool)

(assert (=> b!3054041 (= c!506337 e!1913037)))

(declare-fun res!1254429 () Bool)

(assert (=> b!3054041 (=> res!1254429 e!1913037)))

(assert (=> b!3054041 (= res!1254429 call!210501)))

(assert (=> b!3054041 (= lt!1048780 call!210500)))

(declare-fun e!1913036 () Regex!9465)

(assert (=> b!3054041 (= e!1913036 e!1913029)))

(declare-fun b!3054042 () Bool)

(declare-fun c!506340 () Bool)

(assert (=> b!3054042 (= c!506340 ((_ is Union!9465) r!17423))))

(declare-fun e!1913040 () Regex!9465)

(assert (=> b!3054042 (= e!1913036 e!1913040)))

(declare-fun b!3054043 () Bool)

(declare-fun e!1913033 () Regex!9465)

(assert (=> b!3054043 (= e!1913033 EmptyLang!9465)))

(declare-fun b!3054044 () Bool)

(assert (=> b!3054044 (= e!1913039 e!1913036)))

(declare-fun c!506344 () Bool)

(assert (=> b!3054044 (= c!506344 ((_ is Star!9465) r!17423))))

(declare-fun b!3054045 () Bool)

(declare-fun e!1913031 () Regex!9465)

(assert (=> b!3054045 (= e!1913040 e!1913031)))

(declare-fun call!210502 () Regex!9465)

(assert (=> b!3054045 (= lt!1048779 call!210502)))

(assert (=> b!3054045 (= lt!1048777 call!210503)))

(declare-fun c!506335 () Bool)

(assert (=> b!3054045 (= c!506335 call!210499)))

(declare-fun b!3054046 () Bool)

(declare-fun c!506338 () Bool)

(declare-fun isEmptyExpr!522 (Regex!9465) Bool)

(assert (=> b!3054046 (= c!506338 (isEmptyExpr!522 lt!1048781))))

(declare-fun e!1913027 () Regex!9465)

(assert (=> b!3054046 (= e!1913038 e!1913027)))

(declare-fun b!3054047 () Bool)

(assert (=> b!3054047 (= e!1913027 lt!1048782)))

(declare-fun bm!210495 () Bool)

(declare-fun isEmptyLang!516 (Regex!9465) Bool)

(assert (=> bm!210495 (= call!210501 (isEmptyLang!516 (ite c!506344 lt!1048780 (ite c!506340 lt!1048777 lt!1048781))))))

(declare-fun b!3054048 () Bool)

(declare-fun e!1913034 () Bool)

(declare-fun lt!1048778 () Regex!9465)

(assert (=> b!3054048 (= e!1913034 (= (nullable!3111 lt!1048778) (nullable!3111 r!17423)))))

(declare-fun b!3054049 () Bool)

(declare-fun e!1913032 () Regex!9465)

(assert (=> b!3054049 (= e!1913032 r!17423)))

(declare-fun b!3054050 () Bool)

(assert (=> b!3054050 (= e!1913028 lt!1048781)))

(declare-fun b!3054051 () Bool)

(assert (=> b!3054051 (= e!1913040 e!1913038)))

(assert (=> b!3054051 (= lt!1048781 call!210503)))

(assert (=> b!3054051 (= lt!1048782 call!210502)))

(declare-fun res!1254428 () Bool)

(assert (=> b!3054051 (= res!1254428 call!210497)))

(assert (=> b!3054051 (=> res!1254428 e!1913035)))

(declare-fun c!506342 () Bool)

(assert (=> b!3054051 (= c!506342 e!1913035)))

(declare-fun b!3054052 () Bool)

(declare-fun c!506336 () Bool)

(assert (=> b!3054052 (= c!506336 call!210497)))

(assert (=> b!3054052 (= e!1913031 e!1913030)))

(declare-fun b!3054053 () Bool)

(assert (=> b!3054053 (= e!1913033 e!1913032)))

(declare-fun c!506345 () Bool)

(assert (=> b!3054053 (= c!506345 ((_ is ElementMatch!9465) r!17423))))

(declare-fun b!3054054 () Bool)

(assert (=> b!3054054 (= e!1913027 e!1913028)))

(declare-fun c!506341 () Bool)

(assert (=> b!3054054 (= c!506341 call!210498)))

(declare-fun b!3054055 () Bool)

(assert (=> b!3054055 (= e!1913029 EmptyExpr!9465)))

(declare-fun bm!210492 () Bool)

(assert (=> bm!210492 (= call!210500 (simplify!420 (ite c!506344 (reg!9794 r!17423) (ite c!506340 (regTwo!19443 r!17423) (regOne!19442 r!17423)))))))

(declare-fun d!854698 () Bool)

(assert (=> d!854698 e!1913034))

(declare-fun res!1254427 () Bool)

(assert (=> d!854698 (=> (not res!1254427) (not e!1913034))))

(assert (=> d!854698 (= res!1254427 (validRegex!4198 lt!1048778))))

(assert (=> d!854698 (= lt!1048778 e!1913033)))

(declare-fun c!506339 () Bool)

(assert (=> d!854698 (= c!506339 ((_ is EmptyLang!9465) r!17423))))

(assert (=> d!854698 (validRegex!4198 r!17423)))

(assert (=> d!854698 (= (simplify!420 r!17423) lt!1048778)))

(declare-fun bm!210496 () Bool)

(assert (=> bm!210496 (= call!210499 (isEmptyLang!516 (ite c!506340 lt!1048779 lt!1048782)))))

(declare-fun bm!210497 () Bool)

(assert (=> bm!210497 (= call!210498 (isEmptyExpr!522 (ite c!506344 lt!1048780 lt!1048782)))))

(declare-fun b!3054056 () Bool)

(declare-fun c!506343 () Bool)

(assert (=> b!3054056 (= c!506343 ((_ is EmptyExpr!9465) r!17423))))

(assert (=> b!3054056 (= e!1913032 e!1913039)))

(declare-fun b!3054057 () Bool)

(assert (=> b!3054057 (= e!1913031 lt!1048777)))

(declare-fun bm!210498 () Bool)

(assert (=> bm!210498 (= call!210502 (simplify!420 (ite c!506340 (regOne!19443 r!17423) (regTwo!19442 r!17423))))))

(assert (= (and d!854698 c!506339) b!3054043))

(assert (= (and d!854698 (not c!506339)) b!3054053))

(assert (= (and b!3054053 c!506345) b!3054049))

(assert (= (and b!3054053 (not c!506345)) b!3054056))

(assert (= (and b!3054056 c!506343) b!3054040))

(assert (= (and b!3054056 (not c!506343)) b!3054044))

(assert (= (and b!3054044 c!506344) b!3054041))

(assert (= (and b!3054044 (not c!506344)) b!3054042))

(assert (= (and b!3054041 (not res!1254429)) b!3054037))

(assert (= (and b!3054041 c!506337) b!3054055))

(assert (= (and b!3054041 (not c!506337)) b!3054033))

(assert (= (and b!3054042 c!506340) b!3054045))

(assert (= (and b!3054042 (not c!506340)) b!3054051))

(assert (= (and b!3054045 c!506335) b!3054057))

(assert (= (and b!3054045 (not c!506335)) b!3054052))

(assert (= (and b!3054052 c!506336) b!3054036))

(assert (= (and b!3054052 (not c!506336)) b!3054038))

(assert (= (and b!3054051 (not res!1254428)) b!3054039))

(assert (= (and b!3054051 c!506342) b!3054034))

(assert (= (and b!3054051 (not c!506342)) b!3054046))

(assert (= (and b!3054046 c!506338) b!3054047))

(assert (= (and b!3054046 (not c!506338)) b!3054054))

(assert (= (and b!3054054 c!506341) b!3054050))

(assert (= (and b!3054054 (not c!506341)) b!3054035))

(assert (= (or b!3054045 b!3054051) bm!210498))

(assert (= (or b!3054045 b!3054051) bm!210493))

(assert (= (or b!3054045 b!3054039) bm!210496))

(assert (= (or b!3054052 b!3054051) bm!210494))

(assert (= (or b!3054037 b!3054054) bm!210497))

(assert (= (or b!3054041 bm!210493) bm!210492))

(assert (= (or b!3054041 bm!210494) bm!210495))

(assert (= (and d!854698 res!1254427) b!3054048))

(declare-fun m!3379183 () Bool)

(assert (=> b!3054048 m!3379183))

(assert (=> b!3054048 m!3379159))

(declare-fun m!3379185 () Bool)

(assert (=> bm!210498 m!3379185))

(declare-fun m!3379187 () Bool)

(assert (=> b!3054046 m!3379187))

(declare-fun m!3379189 () Bool)

(assert (=> bm!210492 m!3379189))

(declare-fun m!3379191 () Bool)

(assert (=> bm!210497 m!3379191))

(declare-fun m!3379193 () Bool)

(assert (=> d!854698 m!3379193))

(assert (=> d!854698 m!3379093))

(declare-fun m!3379195 () Bool)

(assert (=> bm!210495 m!3379195))

(declare-fun m!3379197 () Bool)

(assert (=> bm!210496 m!3379197))

(assert (=> b!3053637 d!854698))

(declare-fun d!854700 () Bool)

(assert (=> d!854700 (= (isEmpty!19521 s!11993) ((_ is Nil!35206) s!11993))))

(assert (=> b!3053632 d!854700))

(declare-fun b!3054076 () Bool)

(declare-fun e!1913060 () Bool)

(declare-fun e!1913055 () Bool)

(assert (=> b!3054076 (= e!1913060 e!1913055)))

(declare-fun c!506351 () Bool)

(assert (=> b!3054076 (= c!506351 ((_ is Union!9465) r!17423))))

(declare-fun b!3054077 () Bool)

(declare-fun e!1913058 () Bool)

(declare-fun call!210510 () Bool)

(assert (=> b!3054077 (= e!1913058 call!210510)))

(declare-fun b!3054078 () Bool)

(assert (=> b!3054078 (= e!1913060 e!1913058)))

(declare-fun res!1254442 () Bool)

(assert (=> b!3054078 (= res!1254442 (not (nullable!3111 (reg!9794 r!17423))))))

(assert (=> b!3054078 (=> (not res!1254442) (not e!1913058))))

(declare-fun b!3054079 () Bool)

(declare-fun e!1913059 () Bool)

(declare-fun e!1913056 () Bool)

(assert (=> b!3054079 (= e!1913059 e!1913056)))

(declare-fun res!1254441 () Bool)

(assert (=> b!3054079 (=> (not res!1254441) (not e!1913056))))

(declare-fun call!210511 () Bool)

(assert (=> b!3054079 (= res!1254441 call!210511)))

(declare-fun b!3054080 () Bool)

(declare-fun e!1913061 () Bool)

(assert (=> b!3054080 (= e!1913061 e!1913060)))

(declare-fun c!506350 () Bool)

(assert (=> b!3054080 (= c!506350 ((_ is Star!9465) r!17423))))

(declare-fun bm!210506 () Bool)

(assert (=> bm!210506 (= call!210510 (validRegex!4198 (ite c!506350 (reg!9794 r!17423) (ite c!506351 (regTwo!19443 r!17423) (regOne!19442 r!17423)))))))

(declare-fun b!3054081 () Bool)

(declare-fun call!210512 () Bool)

(assert (=> b!3054081 (= e!1913056 call!210512)))

(declare-fun bm!210507 () Bool)

(assert (=> bm!210507 (= call!210512 (validRegex!4198 (ite c!506351 (regOne!19443 r!17423) (regTwo!19442 r!17423))))))

(declare-fun d!854702 () Bool)

(declare-fun res!1254444 () Bool)

(assert (=> d!854702 (=> res!1254444 e!1913061)))

(assert (=> d!854702 (= res!1254444 ((_ is ElementMatch!9465) r!17423))))

(assert (=> d!854702 (= (validRegex!4198 r!17423) e!1913061)))

(declare-fun bm!210505 () Bool)

(assert (=> bm!210505 (= call!210511 call!210510)))

(declare-fun b!3054082 () Bool)

(declare-fun res!1254440 () Bool)

(declare-fun e!1913057 () Bool)

(assert (=> b!3054082 (=> (not res!1254440) (not e!1913057))))

(assert (=> b!3054082 (= res!1254440 call!210512)))

(assert (=> b!3054082 (= e!1913055 e!1913057)))

(declare-fun b!3054083 () Bool)

(declare-fun res!1254443 () Bool)

(assert (=> b!3054083 (=> res!1254443 e!1913059)))

(assert (=> b!3054083 (= res!1254443 (not ((_ is Concat!14786) r!17423)))))

(assert (=> b!3054083 (= e!1913055 e!1913059)))

(declare-fun b!3054084 () Bool)

(assert (=> b!3054084 (= e!1913057 call!210511)))

(assert (= (and d!854702 (not res!1254444)) b!3054080))

(assert (= (and b!3054080 c!506350) b!3054078))

(assert (= (and b!3054080 (not c!506350)) b!3054076))

(assert (= (and b!3054078 res!1254442) b!3054077))

(assert (= (and b!3054076 c!506351) b!3054082))

(assert (= (and b!3054076 (not c!506351)) b!3054083))

(assert (= (and b!3054082 res!1254440) b!3054084))

(assert (= (and b!3054083 (not res!1254443)) b!3054079))

(assert (= (and b!3054079 res!1254441) b!3054081))

(assert (= (or b!3054082 b!3054081) bm!210507))

(assert (= (or b!3054084 b!3054079) bm!210505))

(assert (= (or b!3054077 bm!210505) bm!210506))

(declare-fun m!3379199 () Bool)

(assert (=> b!3054078 m!3379199))

(declare-fun m!3379201 () Bool)

(assert (=> bm!210506 m!3379201))

(declare-fun m!3379203 () Bool)

(assert (=> bm!210507 m!3379203))

(assert (=> start!291752 d!854702))

(declare-fun e!1913064 () Bool)

(assert (=> b!3053634 (= tp!966093 e!1913064)))

(declare-fun b!3054095 () Bool)

(assert (=> b!3054095 (= e!1913064 tp_is_empty!16493)))

(declare-fun b!3054096 () Bool)

(declare-fun tp!966150 () Bool)

(declare-fun tp!966148 () Bool)

(assert (=> b!3054096 (= e!1913064 (and tp!966150 tp!966148))))

(declare-fun b!3054097 () Bool)

(declare-fun tp!966146 () Bool)

(assert (=> b!3054097 (= e!1913064 tp!966146)))

(declare-fun b!3054098 () Bool)

(declare-fun tp!966147 () Bool)

(declare-fun tp!966149 () Bool)

(assert (=> b!3054098 (= e!1913064 (and tp!966147 tp!966149))))

(assert (= (and b!3053634 ((_ is ElementMatch!9465) (reg!9794 r!17423))) b!3054095))

(assert (= (and b!3053634 ((_ is Concat!14786) (reg!9794 r!17423))) b!3054096))

(assert (= (and b!3053634 ((_ is Star!9465) (reg!9794 r!17423))) b!3054097))

(assert (= (and b!3053634 ((_ is Union!9465) (reg!9794 r!17423))) b!3054098))

(declare-fun e!1913065 () Bool)

(assert (=> b!3053633 (= tp!966092 e!1913065)))

(declare-fun b!3054099 () Bool)

(assert (=> b!3054099 (= e!1913065 tp_is_empty!16493)))

(declare-fun b!3054100 () Bool)

(declare-fun tp!966155 () Bool)

(declare-fun tp!966153 () Bool)

(assert (=> b!3054100 (= e!1913065 (and tp!966155 tp!966153))))

(declare-fun b!3054101 () Bool)

(declare-fun tp!966151 () Bool)

(assert (=> b!3054101 (= e!1913065 tp!966151)))

(declare-fun b!3054102 () Bool)

(declare-fun tp!966152 () Bool)

(declare-fun tp!966154 () Bool)

(assert (=> b!3054102 (= e!1913065 (and tp!966152 tp!966154))))

(assert (= (and b!3053633 ((_ is ElementMatch!9465) (regOne!19442 r!17423))) b!3054099))

(assert (= (and b!3053633 ((_ is Concat!14786) (regOne!19442 r!17423))) b!3054100))

(assert (= (and b!3053633 ((_ is Star!9465) (regOne!19442 r!17423))) b!3054101))

(assert (= (and b!3053633 ((_ is Union!9465) (regOne!19442 r!17423))) b!3054102))

(declare-fun e!1913066 () Bool)

(assert (=> b!3053633 (= tp!966095 e!1913066)))

(declare-fun b!3054103 () Bool)

(assert (=> b!3054103 (= e!1913066 tp_is_empty!16493)))

(declare-fun b!3054104 () Bool)

(declare-fun tp!966160 () Bool)

(declare-fun tp!966158 () Bool)

(assert (=> b!3054104 (= e!1913066 (and tp!966160 tp!966158))))

(declare-fun b!3054105 () Bool)

(declare-fun tp!966156 () Bool)

(assert (=> b!3054105 (= e!1913066 tp!966156)))

(declare-fun b!3054106 () Bool)

(declare-fun tp!966157 () Bool)

(declare-fun tp!966159 () Bool)

(assert (=> b!3054106 (= e!1913066 (and tp!966157 tp!966159))))

(assert (= (and b!3053633 ((_ is ElementMatch!9465) (regTwo!19442 r!17423))) b!3054103))

(assert (= (and b!3053633 ((_ is Concat!14786) (regTwo!19442 r!17423))) b!3054104))

(assert (= (and b!3053633 ((_ is Star!9465) (regTwo!19442 r!17423))) b!3054105))

(assert (= (and b!3053633 ((_ is Union!9465) (regTwo!19442 r!17423))) b!3054106))

(declare-fun e!1913067 () Bool)

(assert (=> b!3053638 (= tp!966097 e!1913067)))

(declare-fun b!3054107 () Bool)

(assert (=> b!3054107 (= e!1913067 tp_is_empty!16493)))

(declare-fun b!3054108 () Bool)

(declare-fun tp!966165 () Bool)

(declare-fun tp!966163 () Bool)

(assert (=> b!3054108 (= e!1913067 (and tp!966165 tp!966163))))

(declare-fun b!3054109 () Bool)

(declare-fun tp!966161 () Bool)

(assert (=> b!3054109 (= e!1913067 tp!966161)))

(declare-fun b!3054110 () Bool)

(declare-fun tp!966162 () Bool)

(declare-fun tp!966164 () Bool)

(assert (=> b!3054110 (= e!1913067 (and tp!966162 tp!966164))))

(assert (= (and b!3053638 ((_ is ElementMatch!9465) (regOne!19443 r!17423))) b!3054107))

(assert (= (and b!3053638 ((_ is Concat!14786) (regOne!19443 r!17423))) b!3054108))

(assert (= (and b!3053638 ((_ is Star!9465) (regOne!19443 r!17423))) b!3054109))

(assert (= (and b!3053638 ((_ is Union!9465) (regOne!19443 r!17423))) b!3054110))

(declare-fun e!1913068 () Bool)

(assert (=> b!3053638 (= tp!966096 e!1913068)))

(declare-fun b!3054111 () Bool)

(assert (=> b!3054111 (= e!1913068 tp_is_empty!16493)))

(declare-fun b!3054112 () Bool)

(declare-fun tp!966170 () Bool)

(declare-fun tp!966168 () Bool)

(assert (=> b!3054112 (= e!1913068 (and tp!966170 tp!966168))))

(declare-fun b!3054113 () Bool)

(declare-fun tp!966166 () Bool)

(assert (=> b!3054113 (= e!1913068 tp!966166)))

(declare-fun b!3054114 () Bool)

(declare-fun tp!966167 () Bool)

(declare-fun tp!966169 () Bool)

(assert (=> b!3054114 (= e!1913068 (and tp!966167 tp!966169))))

(assert (= (and b!3053638 ((_ is ElementMatch!9465) (regTwo!19443 r!17423))) b!3054111))

(assert (= (and b!3053638 ((_ is Concat!14786) (regTwo!19443 r!17423))) b!3054112))

(assert (= (and b!3053638 ((_ is Star!9465) (regTwo!19443 r!17423))) b!3054113))

(assert (= (and b!3053638 ((_ is Union!9465) (regTwo!19443 r!17423))) b!3054114))

(declare-fun b!3054119 () Bool)

(declare-fun e!1913071 () Bool)

(declare-fun tp!966173 () Bool)

(assert (=> b!3054119 (= e!1913071 (and tp_is_empty!16493 tp!966173))))

(assert (=> b!3053636 (= tp!966094 e!1913071)))

(assert (= (and b!3053636 ((_ is Cons!35206) (t!234395 s!11993))) b!3054119))

(check-sat (not bm!210457) (not bm!210456) (not b!3053923) (not b!3053972) (not b!3053911) (not bm!210473) (not bm!210496) (not bm!210497) (not bm!210477) (not b!3054112) (not b!3053980) (not b!3053829) (not b!3053918) (not b!3054108) (not b!3053976) (not bm!210495) (not b!3054114) (not b!3054104) (not b!3054106) (not b!3054119) (not b!3054098) (not b!3054109) (not b!3054078) (not d!854698) (not b!3054097) (not b!3054101) (not b!3053914) (not d!854696) (not b!3054105) tp_is_empty!16493 (not b!3054096) (not b!3053922) (not b!3054100) (not b!3053833) (not bm!210507) (not b!3053920) (not bm!210506) (not b!3054048) (not bm!210492) (not bm!210498) (not b!3054102) (not b!3054046) (not b!3053969) (not b!3054110) (not d!854688) (not b!3053978) (not b!3053981) (not d!854692) (not b!3054113))
(check-sat)
