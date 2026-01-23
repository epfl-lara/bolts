; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89208 () Bool)

(assert start!89208)

(declare-fun b!1024702 () Bool)

(assert (=> b!1024702 true))

(assert (=> b!1024702 true))

(declare-fun lambda!36536 () Int)

(declare-fun lambda!36535 () Int)

(assert (=> b!1024702 (not (= lambda!36536 lambda!36535))))

(assert (=> b!1024702 true))

(assert (=> b!1024702 true))

(declare-fun b!1024696 () Bool)

(declare-fun e!653934 () Bool)

(declare-fun tp_is_empty!5307 () Bool)

(assert (=> b!1024696 (= e!653934 tp_is_empty!5307)))

(declare-fun res!460392 () Bool)

(declare-fun e!653931 () Bool)

(assert (=> start!89208 (=> (not res!460392) (not e!653931))))

(declare-datatypes ((C!6234 0))(
  ( (C!6235 (val!3365 Int)) )
))
(declare-datatypes ((Regex!2832 0))(
  ( (ElementMatch!2832 (c!169897 C!6234)) (Concat!4665 (regOne!6176 Regex!2832) (regTwo!6176 Regex!2832)) (EmptyExpr!2832) (Star!2832 (reg!3161 Regex!2832)) (EmptyLang!2832) (Union!2832 (regOne!6177 Regex!2832) (regTwo!6177 Regex!2832)) )
))
(declare-fun r!15766 () Regex!2832)

(declare-fun validRegex!1301 (Regex!2832) Bool)

(assert (=> start!89208 (= res!460392 (validRegex!1301 r!15766))))

(assert (=> start!89208 e!653931))

(assert (=> start!89208 e!653934))

(declare-fun e!653932 () Bool)

(assert (=> start!89208 e!653932))

(declare-fun b!1024697 () Bool)

(declare-fun tp!310996 () Bool)

(assert (=> b!1024697 (= e!653934 tp!310996)))

(declare-fun b!1024698 () Bool)

(declare-fun e!653935 () Bool)

(declare-datatypes ((List!10062 0))(
  ( (Nil!10046) (Cons!10046 (h!15447 C!6234) (t!101108 List!10062)) )
))
(declare-fun s!10566 () List!10062)

(declare-fun matchR!1368 (Regex!2832 List!10062) Bool)

(declare-fun removeUselessConcat!401 (Regex!2832) Regex!2832)

(assert (=> b!1024698 (= e!653935 (not (matchR!1368 (removeUselessConcat!401 r!15766) s!10566)))))

(declare-fun b!1024699 () Bool)

(declare-fun tp!310993 () Bool)

(assert (=> b!1024699 (= e!653932 (and tp_is_empty!5307 tp!310993))))

(declare-fun b!1024700 () Bool)

(declare-fun tp!310994 () Bool)

(declare-fun tp!310998 () Bool)

(assert (=> b!1024700 (= e!653934 (and tp!310994 tp!310998))))

(declare-fun b!1024701 () Bool)

(declare-fun tp!310995 () Bool)

(declare-fun tp!310997 () Bool)

(assert (=> b!1024701 (= e!653934 (and tp!310995 tp!310997))))

(declare-fun e!653933 () Bool)

(declare-fun e!653930 () Bool)

(assert (=> b!1024702 (= e!653933 e!653930)))

(declare-fun res!460394 () Bool)

(assert (=> b!1024702 (=> res!460394 e!653930)))

(declare-fun isEmpty!6411 (List!10062) Bool)

(assert (=> b!1024702 (= res!460394 (isEmpty!6411 s!10566))))

(declare-fun Exists!561 (Int) Bool)

(assert (=> b!1024702 (= (Exists!561 lambda!36535) (Exists!561 lambda!36536))))

(declare-datatypes ((Unit!15339 0))(
  ( (Unit!15340) )
))
(declare-fun lt!354998 () Unit!15339)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!263 (Regex!2832 Regex!2832 List!10062) Unit!15339)

(assert (=> b!1024702 (= lt!354998 (lemmaExistCutMatchRandMatchRSpecEquivalent!263 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566))))

(declare-datatypes ((tuple2!11446 0))(
  ( (tuple2!11447 (_1!6549 List!10062) (_2!6549 List!10062)) )
))
(declare-datatypes ((Option!2365 0))(
  ( (None!2364) (Some!2364 (v!19781 tuple2!11446)) )
))
(declare-fun lt!354992 () Option!2365)

(declare-fun isDefined!2007 (Option!2365) Bool)

(assert (=> b!1024702 (= (isDefined!2007 lt!354992) (Exists!561 lambda!36535))))

(declare-fun findConcatSeparation!471 (Regex!2832 Regex!2832 List!10062 List!10062 List!10062) Option!2365)

(assert (=> b!1024702 (= lt!354992 (findConcatSeparation!471 EmptyExpr!2832 (regTwo!6176 r!15766) Nil!10046 s!10566 s!10566))))

(declare-fun lt!354990 () Unit!15339)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!471 (Regex!2832 Regex!2832 List!10062) Unit!15339)

(assert (=> b!1024702 (= lt!354990 (lemmaFindConcatSeparationEquivalentToExists!471 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566))))

(declare-fun b!1024703 () Bool)

(declare-fun res!460393 () Bool)

(assert (=> b!1024703 (=> res!460393 e!653930)))

(declare-fun isEmpty!6412 (Option!2365) Bool)

(assert (=> b!1024703 (= res!460393 (not (isEmpty!6412 lt!354992)))))

(declare-fun b!1024704 () Bool)

(assert (=> b!1024704 (= e!653930 e!653935)))

(declare-fun res!460391 () Bool)

(assert (=> b!1024704 (=> res!460391 e!653935)))

(declare-fun lt!354997 () Bool)

(assert (=> b!1024704 (= res!460391 lt!354997)))

(declare-fun lt!354994 () Bool)

(assert (=> b!1024704 (= lt!354994 lt!354997)))

(declare-fun lt!354995 () Regex!2832)

(assert (=> b!1024704 (= lt!354997 (matchR!1368 lt!354995 s!10566))))

(assert (=> b!1024704 (= lt!354994 (matchR!1368 (regTwo!6176 r!15766) s!10566))))

(assert (=> b!1024704 (= lt!354995 (removeUselessConcat!401 (regTwo!6176 r!15766)))))

(declare-fun lt!354993 () Unit!15339)

(declare-fun lemmaRemoveUselessConcatSound!241 (Regex!2832 List!10062) Unit!15339)

(assert (=> b!1024704 (= lt!354993 (lemmaRemoveUselessConcatSound!241 (regTwo!6176 r!15766) s!10566))))

(declare-fun b!1024705 () Bool)

(assert (=> b!1024705 (= e!653931 (not e!653933))))

(declare-fun res!460395 () Bool)

(assert (=> b!1024705 (=> res!460395 e!653933)))

(declare-fun lt!354991 () Bool)

(assert (=> b!1024705 (= res!460395 (or lt!354991 (not (is-Concat!4665 r!15766)) (not (is-EmptyExpr!2832 (regOne!6176 r!15766)))))))

(declare-fun matchRSpec!631 (Regex!2832 List!10062) Bool)

(assert (=> b!1024705 (= lt!354991 (matchRSpec!631 r!15766 s!10566))))

(assert (=> b!1024705 (= lt!354991 (matchR!1368 r!15766 s!10566))))

(declare-fun lt!354996 () Unit!15339)

(declare-fun mainMatchTheorem!631 (Regex!2832 List!10062) Unit!15339)

(assert (=> b!1024705 (= lt!354996 (mainMatchTheorem!631 r!15766 s!10566))))

(assert (= (and start!89208 res!460392) b!1024705))

(assert (= (and b!1024705 (not res!460395)) b!1024702))

(assert (= (and b!1024702 (not res!460394)) b!1024703))

(assert (= (and b!1024703 (not res!460393)) b!1024704))

(assert (= (and b!1024704 (not res!460391)) b!1024698))

(assert (= (and start!89208 (is-ElementMatch!2832 r!15766)) b!1024696))

(assert (= (and start!89208 (is-Concat!4665 r!15766)) b!1024701))

(assert (= (and start!89208 (is-Star!2832 r!15766)) b!1024697))

(assert (= (and start!89208 (is-Union!2832 r!15766)) b!1024700))

(assert (= (and start!89208 (is-Cons!10046 s!10566)) b!1024699))

(declare-fun m!1201881 () Bool)

(assert (=> b!1024702 m!1201881))

(declare-fun m!1201883 () Bool)

(assert (=> b!1024702 m!1201883))

(declare-fun m!1201885 () Bool)

(assert (=> b!1024702 m!1201885))

(declare-fun m!1201887 () Bool)

(assert (=> b!1024702 m!1201887))

(declare-fun m!1201889 () Bool)

(assert (=> b!1024702 m!1201889))

(declare-fun m!1201891 () Bool)

(assert (=> b!1024702 m!1201891))

(declare-fun m!1201893 () Bool)

(assert (=> b!1024702 m!1201893))

(assert (=> b!1024702 m!1201885))

(declare-fun m!1201895 () Bool)

(assert (=> b!1024705 m!1201895))

(declare-fun m!1201897 () Bool)

(assert (=> b!1024705 m!1201897))

(declare-fun m!1201899 () Bool)

(assert (=> b!1024705 m!1201899))

(declare-fun m!1201901 () Bool)

(assert (=> start!89208 m!1201901))

(declare-fun m!1201903 () Bool)

(assert (=> b!1024703 m!1201903))

(declare-fun m!1201905 () Bool)

(assert (=> b!1024704 m!1201905))

(declare-fun m!1201907 () Bool)

(assert (=> b!1024704 m!1201907))

(declare-fun m!1201909 () Bool)

(assert (=> b!1024704 m!1201909))

(declare-fun m!1201911 () Bool)

(assert (=> b!1024704 m!1201911))

(declare-fun m!1201913 () Bool)

(assert (=> b!1024698 m!1201913))

(assert (=> b!1024698 m!1201913))

(declare-fun m!1201915 () Bool)

(assert (=> b!1024698 m!1201915))

(push 1)

(assert (not b!1024698))

(assert tp_is_empty!5307)

(assert (not b!1024704))

(assert (not b!1024705))

(assert (not start!89208))

(assert (not b!1024700))

(assert (not b!1024702))

(assert (not b!1024701))

(assert (not b!1024703))

(assert (not b!1024697))

(assert (not b!1024699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!70335 () Bool)

(declare-fun call!70342 () Bool)

(declare-fun call!70340 () Bool)

(assert (=> bm!70335 (= call!70342 call!70340)))

(declare-fun bm!70336 () Bool)

(declare-fun call!70341 () Bool)

(declare-fun c!169903 () Bool)

(assert (=> bm!70336 (= call!70341 (validRegex!1301 (ite c!169903 (regOne!6177 r!15766) (regOne!6176 r!15766))))))

(declare-fun b!1024774 () Bool)

(declare-fun e!653977 () Bool)

(assert (=> b!1024774 (= e!653977 call!70340)))

(declare-fun b!1024775 () Bool)

(declare-fun e!653975 () Bool)

(declare-fun e!653978 () Bool)

(assert (=> b!1024775 (= e!653975 e!653978)))

(declare-fun res!460437 () Bool)

(assert (=> b!1024775 (=> (not res!460437) (not e!653978))))

(assert (=> b!1024775 (= res!460437 call!70341)))

(declare-fun b!1024776 () Bool)

(assert (=> b!1024776 (= e!653978 call!70342)))

(declare-fun b!1024777 () Bool)

(declare-fun e!653980 () Bool)

(declare-fun e!653979 () Bool)

(assert (=> b!1024777 (= e!653980 e!653979)))

(declare-fun c!169904 () Bool)

(assert (=> b!1024777 (= c!169904 (is-Star!2832 r!15766))))

(declare-fun b!1024778 () Bool)

(declare-fun res!460433 () Bool)

(assert (=> b!1024778 (=> res!460433 e!653975)))

(assert (=> b!1024778 (= res!460433 (not (is-Concat!4665 r!15766)))))

(declare-fun e!653974 () Bool)

(assert (=> b!1024778 (= e!653974 e!653975)))

(declare-fun b!1024779 () Bool)

(assert (=> b!1024779 (= e!653979 e!653977)))

(declare-fun res!460434 () Bool)

(declare-fun nullable!933 (Regex!2832) Bool)

(assert (=> b!1024779 (= res!460434 (not (nullable!933 (reg!3161 r!15766))))))

(assert (=> b!1024779 (=> (not res!460434) (not e!653977))))

(declare-fun b!1024780 () Bool)

(declare-fun e!653976 () Bool)

(assert (=> b!1024780 (= e!653976 call!70342)))

(declare-fun b!1024781 () Bool)

(assert (=> b!1024781 (= e!653979 e!653974)))

(assert (=> b!1024781 (= c!169903 (is-Union!2832 r!15766))))

(declare-fun b!1024782 () Bool)

(declare-fun res!460436 () Bool)

(assert (=> b!1024782 (=> (not res!460436) (not e!653976))))

(assert (=> b!1024782 (= res!460436 call!70341)))

(assert (=> b!1024782 (= e!653974 e!653976)))

(declare-fun d!294968 () Bool)

(declare-fun res!460435 () Bool)

(assert (=> d!294968 (=> res!460435 e!653980)))

(assert (=> d!294968 (= res!460435 (is-ElementMatch!2832 r!15766))))

(assert (=> d!294968 (= (validRegex!1301 r!15766) e!653980)))

(declare-fun bm!70337 () Bool)

(assert (=> bm!70337 (= call!70340 (validRegex!1301 (ite c!169904 (reg!3161 r!15766) (ite c!169903 (regTwo!6177 r!15766) (regTwo!6176 r!15766)))))))

(assert (= (and d!294968 (not res!460435)) b!1024777))

(assert (= (and b!1024777 c!169904) b!1024779))

(assert (= (and b!1024777 (not c!169904)) b!1024781))

(assert (= (and b!1024779 res!460434) b!1024774))

(assert (= (and b!1024781 c!169903) b!1024782))

(assert (= (and b!1024781 (not c!169903)) b!1024778))

(assert (= (and b!1024782 res!460436) b!1024780))

(assert (= (and b!1024778 (not res!460433)) b!1024775))

(assert (= (and b!1024775 res!460437) b!1024776))

(assert (= (or b!1024780 b!1024776) bm!70335))

(assert (= (or b!1024782 b!1024775) bm!70336))

(assert (= (or b!1024774 bm!70335) bm!70337))

(declare-fun m!1201953 () Bool)

(assert (=> bm!70336 m!1201953))

(declare-fun m!1201955 () Bool)

(assert (=> b!1024779 m!1201955))

(declare-fun m!1201957 () Bool)

(assert (=> bm!70337 m!1201957))

(assert (=> start!89208 d!294968))

(declare-fun bs!246964 () Bool)

(declare-fun b!1024821 () Bool)

(assert (= bs!246964 (and b!1024821 b!1024702)))

(declare-fun lambda!36549 () Int)

(assert (=> bs!246964 (not (= lambda!36549 lambda!36535))))

(assert (=> bs!246964 (not (= lambda!36549 lambda!36536))))

(assert (=> b!1024821 true))

(assert (=> b!1024821 true))

(declare-fun bs!246965 () Bool)

(declare-fun b!1024816 () Bool)

(assert (= bs!246965 (and b!1024816 b!1024702)))

(declare-fun lambda!36550 () Int)

(assert (=> bs!246965 (not (= lambda!36550 lambda!36535))))

(assert (=> bs!246965 (= (= (regOne!6176 r!15766) EmptyExpr!2832) (= lambda!36550 lambda!36536))))

(declare-fun bs!246966 () Bool)

(assert (= bs!246966 (and b!1024816 b!1024821)))

(assert (=> bs!246966 (not (= lambda!36550 lambda!36549))))

(assert (=> b!1024816 true))

(assert (=> b!1024816 true))

(declare-fun b!1024815 () Bool)

(declare-fun e!653999 () Bool)

(assert (=> b!1024815 (= e!653999 (matchRSpec!631 (regTwo!6177 r!15766) s!10566))))

(declare-fun d!294970 () Bool)

(declare-fun c!169913 () Bool)

(assert (=> d!294970 (= c!169913 (is-EmptyExpr!2832 r!15766))))

(declare-fun e!654001 () Bool)

(assert (=> d!294970 (= (matchRSpec!631 r!15766 s!10566) e!654001)))

(declare-fun e!654005 () Bool)

(declare-fun call!70347 () Bool)

(assert (=> b!1024816 (= e!654005 call!70347)))

(declare-fun b!1024817 () Bool)

(declare-fun res!460456 () Bool)

(declare-fun e!654004 () Bool)

(assert (=> b!1024817 (=> res!460456 e!654004)))

(declare-fun call!70348 () Bool)

(assert (=> b!1024817 (= res!460456 call!70348)))

(assert (=> b!1024817 (= e!654005 e!654004)))

(declare-fun bm!70342 () Bool)

(assert (=> bm!70342 (= call!70348 (isEmpty!6411 s!10566))))

(declare-fun b!1024818 () Bool)

(declare-fun c!169914 () Bool)

(assert (=> b!1024818 (= c!169914 (is-ElementMatch!2832 r!15766))))

(declare-fun e!654003 () Bool)

(declare-fun e!654000 () Bool)

(assert (=> b!1024818 (= e!654003 e!654000)))

(declare-fun bm!70343 () Bool)

(declare-fun c!169915 () Bool)

(assert (=> bm!70343 (= call!70347 (Exists!561 (ite c!169915 lambda!36549 lambda!36550)))))

(declare-fun b!1024819 () Bool)

(declare-fun e!654002 () Bool)

(assert (=> b!1024819 (= e!654002 e!653999)))

(declare-fun res!460455 () Bool)

(assert (=> b!1024819 (= res!460455 (matchRSpec!631 (regOne!6177 r!15766) s!10566))))

(assert (=> b!1024819 (=> res!460455 e!653999)))

(declare-fun b!1024820 () Bool)

(assert (=> b!1024820 (= e!654001 call!70348)))

(assert (=> b!1024821 (= e!654004 call!70347)))

(declare-fun b!1024822 () Bool)

(assert (=> b!1024822 (= e!654000 (= s!10566 (Cons!10046 (c!169897 r!15766) Nil!10046)))))

(declare-fun b!1024823 () Bool)

(assert (=> b!1024823 (= e!654001 e!654003)))

(declare-fun res!460454 () Bool)

(assert (=> b!1024823 (= res!460454 (not (is-EmptyLang!2832 r!15766)))))

(assert (=> b!1024823 (=> (not res!460454) (not e!654003))))

(declare-fun b!1024824 () Bool)

(assert (=> b!1024824 (= e!654002 e!654005)))

(assert (=> b!1024824 (= c!169915 (is-Star!2832 r!15766))))

(declare-fun b!1024825 () Bool)

(declare-fun c!169916 () Bool)

(assert (=> b!1024825 (= c!169916 (is-Union!2832 r!15766))))

(assert (=> b!1024825 (= e!654000 e!654002)))

(assert (= (and d!294970 c!169913) b!1024820))

(assert (= (and d!294970 (not c!169913)) b!1024823))

(assert (= (and b!1024823 res!460454) b!1024818))

(assert (= (and b!1024818 c!169914) b!1024822))

(assert (= (and b!1024818 (not c!169914)) b!1024825))

(assert (= (and b!1024825 c!169916) b!1024819))

(assert (= (and b!1024825 (not c!169916)) b!1024824))

(assert (= (and b!1024819 (not res!460455)) b!1024815))

(assert (= (and b!1024824 c!169915) b!1024817))

(assert (= (and b!1024824 (not c!169915)) b!1024816))

(assert (= (and b!1024817 (not res!460456)) b!1024821))

(assert (= (or b!1024821 b!1024816) bm!70343))

(assert (= (or b!1024820 b!1024817) bm!70342))

(declare-fun m!1201959 () Bool)

(assert (=> b!1024815 m!1201959))

(assert (=> bm!70342 m!1201889))

(declare-fun m!1201961 () Bool)

(assert (=> bm!70343 m!1201961))

(declare-fun m!1201963 () Bool)

(assert (=> b!1024819 m!1201963))

(assert (=> b!1024705 d!294970))

(declare-fun b!1024854 () Bool)

(declare-fun res!460479 () Bool)

(declare-fun e!654023 () Bool)

(assert (=> b!1024854 (=> res!460479 e!654023)))

(declare-fun e!654022 () Bool)

(assert (=> b!1024854 (= res!460479 e!654022)))

(declare-fun res!460478 () Bool)

(assert (=> b!1024854 (=> (not res!460478) (not e!654022))))

(declare-fun lt!355028 () Bool)

(assert (=> b!1024854 (= res!460478 lt!355028)))

(declare-fun b!1024855 () Bool)

(declare-fun head!1889 (List!10062) C!6234)

(assert (=> b!1024855 (= e!654022 (= (head!1889 s!10566) (c!169897 r!15766)))))

(declare-fun b!1024856 () Bool)

(declare-fun e!654021 () Bool)

(assert (=> b!1024856 (= e!654021 (not (= (head!1889 s!10566) (c!169897 r!15766))))))

(declare-fun d!294974 () Bool)

(declare-fun e!654025 () Bool)

(assert (=> d!294974 e!654025))

(declare-fun c!169923 () Bool)

(assert (=> d!294974 (= c!169923 (is-EmptyExpr!2832 r!15766))))

(declare-fun e!654020 () Bool)

(assert (=> d!294974 (= lt!355028 e!654020)))

(declare-fun c!169924 () Bool)

(assert (=> d!294974 (= c!169924 (isEmpty!6411 s!10566))))

(assert (=> d!294974 (validRegex!1301 r!15766)))

(assert (=> d!294974 (= (matchR!1368 r!15766 s!10566) lt!355028)))

(declare-fun b!1024857 () Bool)

(declare-fun e!654026 () Bool)

(assert (=> b!1024857 (= e!654026 e!654021)))

(declare-fun res!460473 () Bool)

(assert (=> b!1024857 (=> res!460473 e!654021)))

(declare-fun call!70351 () Bool)

(assert (=> b!1024857 (= res!460473 call!70351)))

(declare-fun b!1024858 () Bool)

(declare-fun res!460475 () Bool)

(assert (=> b!1024858 (=> res!460475 e!654021)))

(declare-fun tail!1451 (List!10062) List!10062)

(assert (=> b!1024858 (= res!460475 (not (isEmpty!6411 (tail!1451 s!10566))))))

(declare-fun b!1024859 () Bool)

(assert (=> b!1024859 (= e!654023 e!654026)))

(declare-fun res!460476 () Bool)

(assert (=> b!1024859 (=> (not res!460476) (not e!654026))))

(assert (=> b!1024859 (= res!460476 (not lt!355028))))

(declare-fun b!1024860 () Bool)

(declare-fun e!654024 () Bool)

(assert (=> b!1024860 (= e!654024 (not lt!355028))))

(declare-fun bm!70346 () Bool)

(assert (=> bm!70346 (= call!70351 (isEmpty!6411 s!10566))))

(declare-fun b!1024861 () Bool)

(assert (=> b!1024861 (= e!654025 (= lt!355028 call!70351))))

(declare-fun b!1024862 () Bool)

(assert (=> b!1024862 (= e!654025 e!654024)))

(declare-fun c!169925 () Bool)

(assert (=> b!1024862 (= c!169925 (is-EmptyLang!2832 r!15766))))

(declare-fun b!1024863 () Bool)

(declare-fun res!460474 () Bool)

(assert (=> b!1024863 (=> (not res!460474) (not e!654022))))

(assert (=> b!1024863 (= res!460474 (isEmpty!6411 (tail!1451 s!10566)))))

(declare-fun b!1024864 () Bool)

(assert (=> b!1024864 (= e!654020 (nullable!933 r!15766))))

(declare-fun b!1024865 () Bool)

(declare-fun derivativeStep!735 (Regex!2832 C!6234) Regex!2832)

(assert (=> b!1024865 (= e!654020 (matchR!1368 (derivativeStep!735 r!15766 (head!1889 s!10566)) (tail!1451 s!10566)))))

(declare-fun b!1024866 () Bool)

(declare-fun res!460480 () Bool)

(assert (=> b!1024866 (=> res!460480 e!654023)))

(assert (=> b!1024866 (= res!460480 (not (is-ElementMatch!2832 r!15766)))))

(assert (=> b!1024866 (= e!654024 e!654023)))

(declare-fun b!1024867 () Bool)

(declare-fun res!460477 () Bool)

(assert (=> b!1024867 (=> (not res!460477) (not e!654022))))

(assert (=> b!1024867 (= res!460477 (not call!70351))))

(assert (= (and d!294974 c!169924) b!1024864))

(assert (= (and d!294974 (not c!169924)) b!1024865))

(assert (= (and d!294974 c!169923) b!1024861))

(assert (= (and d!294974 (not c!169923)) b!1024862))

(assert (= (and b!1024862 c!169925) b!1024860))

(assert (= (and b!1024862 (not c!169925)) b!1024866))

(assert (= (and b!1024866 (not res!460480)) b!1024854))

(assert (= (and b!1024854 res!460478) b!1024867))

(assert (= (and b!1024867 res!460477) b!1024863))

(assert (= (and b!1024863 res!460474) b!1024855))

(assert (= (and b!1024854 (not res!460479)) b!1024859))

(assert (= (and b!1024859 res!460476) b!1024857))

(assert (= (and b!1024857 (not res!460473)) b!1024858))

(assert (= (and b!1024858 (not res!460475)) b!1024856))

(assert (= (or b!1024861 b!1024857 b!1024867) bm!70346))

(assert (=> d!294974 m!1201889))

(assert (=> d!294974 m!1201901))

(declare-fun m!1201967 () Bool)

(assert (=> b!1024865 m!1201967))

(assert (=> b!1024865 m!1201967))

(declare-fun m!1201969 () Bool)

(assert (=> b!1024865 m!1201969))

(declare-fun m!1201971 () Bool)

(assert (=> b!1024865 m!1201971))

(assert (=> b!1024865 m!1201969))

(assert (=> b!1024865 m!1201971))

(declare-fun m!1201973 () Bool)

(assert (=> b!1024865 m!1201973))

(assert (=> b!1024863 m!1201971))

(assert (=> b!1024863 m!1201971))

(declare-fun m!1201975 () Bool)

(assert (=> b!1024863 m!1201975))

(assert (=> bm!70346 m!1201889))

(assert (=> b!1024855 m!1201967))

(assert (=> b!1024856 m!1201967))

(declare-fun m!1201977 () Bool)

(assert (=> b!1024864 m!1201977))

(assert (=> b!1024858 m!1201971))

(assert (=> b!1024858 m!1201971))

(assert (=> b!1024858 m!1201975))

(assert (=> b!1024705 d!294974))

(declare-fun d!294980 () Bool)

(assert (=> d!294980 (= (matchR!1368 r!15766 s!10566) (matchRSpec!631 r!15766 s!10566))))

(declare-fun lt!355031 () Unit!15339)

(declare-fun choose!6499 (Regex!2832 List!10062) Unit!15339)

(assert (=> d!294980 (= lt!355031 (choose!6499 r!15766 s!10566))))

(assert (=> d!294980 (validRegex!1301 r!15766)))

(assert (=> d!294980 (= (mainMatchTheorem!631 r!15766 s!10566) lt!355031)))

(declare-fun bs!246968 () Bool)

(assert (= bs!246968 d!294980))

(assert (=> bs!246968 m!1201897))

(assert (=> bs!246968 m!1201895))

(declare-fun m!1201979 () Bool)

(assert (=> bs!246968 m!1201979))

(assert (=> bs!246968 m!1201901))

(assert (=> b!1024705 d!294980))

(declare-fun b!1024868 () Bool)

(declare-fun res!460487 () Bool)

(declare-fun e!654030 () Bool)

(assert (=> b!1024868 (=> res!460487 e!654030)))

(declare-fun e!654029 () Bool)

(assert (=> b!1024868 (= res!460487 e!654029)))

(declare-fun res!460486 () Bool)

(assert (=> b!1024868 (=> (not res!460486) (not e!654029))))

(declare-fun lt!355032 () Bool)

(assert (=> b!1024868 (= res!460486 lt!355032)))

(declare-fun b!1024869 () Bool)

(assert (=> b!1024869 (= e!654029 (= (head!1889 s!10566) (c!169897 lt!354995)))))

(declare-fun b!1024870 () Bool)

(declare-fun e!654028 () Bool)

(assert (=> b!1024870 (= e!654028 (not (= (head!1889 s!10566) (c!169897 lt!354995))))))

(declare-fun d!294982 () Bool)

(declare-fun e!654032 () Bool)

(assert (=> d!294982 e!654032))

(declare-fun c!169926 () Bool)

(assert (=> d!294982 (= c!169926 (is-EmptyExpr!2832 lt!354995))))

(declare-fun e!654027 () Bool)

(assert (=> d!294982 (= lt!355032 e!654027)))

(declare-fun c!169927 () Bool)

(assert (=> d!294982 (= c!169927 (isEmpty!6411 s!10566))))

(assert (=> d!294982 (validRegex!1301 lt!354995)))

(assert (=> d!294982 (= (matchR!1368 lt!354995 s!10566) lt!355032)))

(declare-fun b!1024871 () Bool)

(declare-fun e!654033 () Bool)

(assert (=> b!1024871 (= e!654033 e!654028)))

(declare-fun res!460481 () Bool)

(assert (=> b!1024871 (=> res!460481 e!654028)))

(declare-fun call!70352 () Bool)

(assert (=> b!1024871 (= res!460481 call!70352)))

(declare-fun b!1024872 () Bool)

(declare-fun res!460483 () Bool)

(assert (=> b!1024872 (=> res!460483 e!654028)))

(assert (=> b!1024872 (= res!460483 (not (isEmpty!6411 (tail!1451 s!10566))))))

(declare-fun b!1024873 () Bool)

(assert (=> b!1024873 (= e!654030 e!654033)))

(declare-fun res!460484 () Bool)

(assert (=> b!1024873 (=> (not res!460484) (not e!654033))))

(assert (=> b!1024873 (= res!460484 (not lt!355032))))

(declare-fun b!1024874 () Bool)

(declare-fun e!654031 () Bool)

(assert (=> b!1024874 (= e!654031 (not lt!355032))))

(declare-fun bm!70347 () Bool)

(assert (=> bm!70347 (= call!70352 (isEmpty!6411 s!10566))))

(declare-fun b!1024875 () Bool)

(assert (=> b!1024875 (= e!654032 (= lt!355032 call!70352))))

(declare-fun b!1024876 () Bool)

(assert (=> b!1024876 (= e!654032 e!654031)))

(declare-fun c!169928 () Bool)

(assert (=> b!1024876 (= c!169928 (is-EmptyLang!2832 lt!354995))))

(declare-fun b!1024877 () Bool)

(declare-fun res!460482 () Bool)

(assert (=> b!1024877 (=> (not res!460482) (not e!654029))))

(assert (=> b!1024877 (= res!460482 (isEmpty!6411 (tail!1451 s!10566)))))

(declare-fun b!1024878 () Bool)

(assert (=> b!1024878 (= e!654027 (nullable!933 lt!354995))))

(declare-fun b!1024879 () Bool)

(assert (=> b!1024879 (= e!654027 (matchR!1368 (derivativeStep!735 lt!354995 (head!1889 s!10566)) (tail!1451 s!10566)))))

(declare-fun b!1024880 () Bool)

(declare-fun res!460488 () Bool)

(assert (=> b!1024880 (=> res!460488 e!654030)))

(assert (=> b!1024880 (= res!460488 (not (is-ElementMatch!2832 lt!354995)))))

(assert (=> b!1024880 (= e!654031 e!654030)))

(declare-fun b!1024881 () Bool)

(declare-fun res!460485 () Bool)

(assert (=> b!1024881 (=> (not res!460485) (not e!654029))))

(assert (=> b!1024881 (= res!460485 (not call!70352))))

(assert (= (and d!294982 c!169927) b!1024878))

(assert (= (and d!294982 (not c!169927)) b!1024879))

(assert (= (and d!294982 c!169926) b!1024875))

(assert (= (and d!294982 (not c!169926)) b!1024876))

(assert (= (and b!1024876 c!169928) b!1024874))

(assert (= (and b!1024876 (not c!169928)) b!1024880))

(assert (= (and b!1024880 (not res!460488)) b!1024868))

(assert (= (and b!1024868 res!460486) b!1024881))

(assert (= (and b!1024881 res!460485) b!1024877))

(assert (= (and b!1024877 res!460482) b!1024869))

(assert (= (and b!1024868 (not res!460487)) b!1024873))

(assert (= (and b!1024873 res!460484) b!1024871))

(assert (= (and b!1024871 (not res!460481)) b!1024872))

(assert (= (and b!1024872 (not res!460483)) b!1024870))

(assert (= (or b!1024875 b!1024871 b!1024881) bm!70347))

(assert (=> d!294982 m!1201889))

(declare-fun m!1201981 () Bool)

(assert (=> d!294982 m!1201981))

(assert (=> b!1024879 m!1201967))

(assert (=> b!1024879 m!1201967))

(declare-fun m!1201983 () Bool)

(assert (=> b!1024879 m!1201983))

(assert (=> b!1024879 m!1201971))

(assert (=> b!1024879 m!1201983))

(assert (=> b!1024879 m!1201971))

(declare-fun m!1201985 () Bool)

(assert (=> b!1024879 m!1201985))

(assert (=> b!1024877 m!1201971))

(assert (=> b!1024877 m!1201971))

(assert (=> b!1024877 m!1201975))

(assert (=> bm!70347 m!1201889))

(assert (=> b!1024869 m!1201967))

(assert (=> b!1024870 m!1201967))

(declare-fun m!1201987 () Bool)

(assert (=> b!1024878 m!1201987))

(assert (=> b!1024872 m!1201971))

(assert (=> b!1024872 m!1201971))

(assert (=> b!1024872 m!1201975))

(assert (=> b!1024704 d!294982))

(declare-fun b!1024882 () Bool)

(declare-fun res!460495 () Bool)

(declare-fun e!654037 () Bool)

(assert (=> b!1024882 (=> res!460495 e!654037)))

(declare-fun e!654036 () Bool)

(assert (=> b!1024882 (= res!460495 e!654036)))

(declare-fun res!460494 () Bool)

(assert (=> b!1024882 (=> (not res!460494) (not e!654036))))

(declare-fun lt!355033 () Bool)

(assert (=> b!1024882 (= res!460494 lt!355033)))

(declare-fun b!1024883 () Bool)

(assert (=> b!1024883 (= e!654036 (= (head!1889 s!10566) (c!169897 (regTwo!6176 r!15766))))))

(declare-fun b!1024884 () Bool)

(declare-fun e!654035 () Bool)

(assert (=> b!1024884 (= e!654035 (not (= (head!1889 s!10566) (c!169897 (regTwo!6176 r!15766)))))))

(declare-fun d!294984 () Bool)

(declare-fun e!654039 () Bool)

(assert (=> d!294984 e!654039))

(declare-fun c!169929 () Bool)

(assert (=> d!294984 (= c!169929 (is-EmptyExpr!2832 (regTwo!6176 r!15766)))))

(declare-fun e!654034 () Bool)

(assert (=> d!294984 (= lt!355033 e!654034)))

(declare-fun c!169930 () Bool)

(assert (=> d!294984 (= c!169930 (isEmpty!6411 s!10566))))

(assert (=> d!294984 (validRegex!1301 (regTwo!6176 r!15766))))

(assert (=> d!294984 (= (matchR!1368 (regTwo!6176 r!15766) s!10566) lt!355033)))

(declare-fun b!1024885 () Bool)

(declare-fun e!654040 () Bool)

(assert (=> b!1024885 (= e!654040 e!654035)))

(declare-fun res!460489 () Bool)

(assert (=> b!1024885 (=> res!460489 e!654035)))

(declare-fun call!70353 () Bool)

(assert (=> b!1024885 (= res!460489 call!70353)))

(declare-fun b!1024886 () Bool)

(declare-fun res!460491 () Bool)

(assert (=> b!1024886 (=> res!460491 e!654035)))

(assert (=> b!1024886 (= res!460491 (not (isEmpty!6411 (tail!1451 s!10566))))))

(declare-fun b!1024887 () Bool)

(assert (=> b!1024887 (= e!654037 e!654040)))

(declare-fun res!460492 () Bool)

(assert (=> b!1024887 (=> (not res!460492) (not e!654040))))

(assert (=> b!1024887 (= res!460492 (not lt!355033))))

(declare-fun b!1024888 () Bool)

(declare-fun e!654038 () Bool)

(assert (=> b!1024888 (= e!654038 (not lt!355033))))

(declare-fun bm!70348 () Bool)

(assert (=> bm!70348 (= call!70353 (isEmpty!6411 s!10566))))

(declare-fun b!1024889 () Bool)

(assert (=> b!1024889 (= e!654039 (= lt!355033 call!70353))))

(declare-fun b!1024890 () Bool)

(assert (=> b!1024890 (= e!654039 e!654038)))

(declare-fun c!169931 () Bool)

(assert (=> b!1024890 (= c!169931 (is-EmptyLang!2832 (regTwo!6176 r!15766)))))

(declare-fun b!1024891 () Bool)

(declare-fun res!460490 () Bool)

(assert (=> b!1024891 (=> (not res!460490) (not e!654036))))

(assert (=> b!1024891 (= res!460490 (isEmpty!6411 (tail!1451 s!10566)))))

(declare-fun b!1024892 () Bool)

(assert (=> b!1024892 (= e!654034 (nullable!933 (regTwo!6176 r!15766)))))

(declare-fun b!1024893 () Bool)

(assert (=> b!1024893 (= e!654034 (matchR!1368 (derivativeStep!735 (regTwo!6176 r!15766) (head!1889 s!10566)) (tail!1451 s!10566)))))

(declare-fun b!1024894 () Bool)

(declare-fun res!460496 () Bool)

(assert (=> b!1024894 (=> res!460496 e!654037)))

(assert (=> b!1024894 (= res!460496 (not (is-ElementMatch!2832 (regTwo!6176 r!15766))))))

(assert (=> b!1024894 (= e!654038 e!654037)))

(declare-fun b!1024895 () Bool)

(declare-fun res!460493 () Bool)

(assert (=> b!1024895 (=> (not res!460493) (not e!654036))))

(assert (=> b!1024895 (= res!460493 (not call!70353))))

(assert (= (and d!294984 c!169930) b!1024892))

(assert (= (and d!294984 (not c!169930)) b!1024893))

(assert (= (and d!294984 c!169929) b!1024889))

(assert (= (and d!294984 (not c!169929)) b!1024890))

(assert (= (and b!1024890 c!169931) b!1024888))

(assert (= (and b!1024890 (not c!169931)) b!1024894))

(assert (= (and b!1024894 (not res!460496)) b!1024882))

(assert (= (and b!1024882 res!460494) b!1024895))

(assert (= (and b!1024895 res!460493) b!1024891))

(assert (= (and b!1024891 res!460490) b!1024883))

(assert (= (and b!1024882 (not res!460495)) b!1024887))

(assert (= (and b!1024887 res!460492) b!1024885))

(assert (= (and b!1024885 (not res!460489)) b!1024886))

(assert (= (and b!1024886 (not res!460491)) b!1024884))

(assert (= (or b!1024889 b!1024885 b!1024895) bm!70348))

(assert (=> d!294984 m!1201889))

(declare-fun m!1201989 () Bool)

(assert (=> d!294984 m!1201989))

(assert (=> b!1024893 m!1201967))

(assert (=> b!1024893 m!1201967))

(declare-fun m!1201991 () Bool)

(assert (=> b!1024893 m!1201991))

(assert (=> b!1024893 m!1201971))

(assert (=> b!1024893 m!1201991))

(assert (=> b!1024893 m!1201971))

(declare-fun m!1201993 () Bool)

(assert (=> b!1024893 m!1201993))

(assert (=> b!1024891 m!1201971))

(assert (=> b!1024891 m!1201971))

(assert (=> b!1024891 m!1201975))

(assert (=> bm!70348 m!1201889))

(assert (=> b!1024883 m!1201967))

(assert (=> b!1024884 m!1201967))

(declare-fun m!1201995 () Bool)

(assert (=> b!1024892 m!1201995))

(assert (=> b!1024886 m!1201971))

(assert (=> b!1024886 m!1201971))

(assert (=> b!1024886 m!1201975))

(assert (=> b!1024704 d!294984))

(declare-fun c!169947 () Bool)

(declare-fun call!70365 () Regex!2832)

(declare-fun c!169946 () Bool)

(declare-fun bm!70359 () Bool)

(assert (=> bm!70359 (= call!70365 (removeUselessConcat!401 (ite c!169947 (regTwo!6176 (regTwo!6176 r!15766)) (ite c!169946 (regOne!6176 (regTwo!6176 r!15766)) (regOne!6177 (regTwo!6176 r!15766))))))))

(declare-fun b!1024922 () Bool)

(declare-fun e!654059 () Regex!2832)

(declare-fun e!654056 () Regex!2832)

(assert (=> b!1024922 (= e!654059 e!654056)))

(declare-fun c!169948 () Bool)

(assert (=> b!1024922 (= c!169948 (and (is-Concat!4665 (regTwo!6176 r!15766)) (is-EmptyExpr!2832 (regTwo!6176 (regTwo!6176 r!15766)))))))

(declare-fun b!1024923 () Bool)

(declare-fun e!654053 () Regex!2832)

(declare-fun call!70366 () Regex!2832)

(assert (=> b!1024923 (= e!654053 (Star!2832 call!70366))))

(declare-fun bm!70360 () Bool)

(declare-fun call!70364 () Regex!2832)

(declare-fun call!70368 () Regex!2832)

(assert (=> bm!70360 (= call!70364 call!70368)))

(declare-fun b!1024924 () Bool)

(declare-fun e!654060 () Regex!2832)

(declare-fun e!654057 () Regex!2832)

(assert (=> b!1024924 (= e!654060 e!654057)))

(declare-fun c!169944 () Bool)

(assert (=> b!1024924 (= c!169944 (is-Union!2832 (regTwo!6176 r!15766)))))

(declare-fun bm!70361 () Bool)

(assert (=> bm!70361 (= call!70366 call!70364)))

(declare-fun bm!70362 () Bool)

(assert (=> bm!70362 (= call!70368 (removeUselessConcat!401 (ite c!169948 (regOne!6176 (regTwo!6176 r!15766)) (ite c!169946 (regTwo!6176 (regTwo!6176 r!15766)) (ite c!169944 (regTwo!6177 (regTwo!6176 r!15766)) (reg!3161 (regTwo!6176 r!15766)))))))))

(declare-fun b!1024925 () Bool)

(assert (=> b!1024925 (= e!654056 call!70368)))

(declare-fun b!1024926 () Bool)

(declare-fun call!70367 () Regex!2832)

(assert (=> b!1024926 (= e!654057 (Union!2832 call!70367 call!70366))))

(declare-fun d!294986 () Bool)

(declare-fun e!654054 () Bool)

(assert (=> d!294986 e!654054))

(declare-fun res!460499 () Bool)

(assert (=> d!294986 (=> (not res!460499) (not e!654054))))

(declare-fun lt!355038 () Regex!2832)

(assert (=> d!294986 (= res!460499 (validRegex!1301 lt!355038))))

(assert (=> d!294986 (= lt!355038 e!654059)))

(assert (=> d!294986 (= c!169947 (and (is-Concat!4665 (regTwo!6176 r!15766)) (is-EmptyExpr!2832 (regOne!6176 (regTwo!6176 r!15766)))))))

(assert (=> d!294986 (validRegex!1301 (regTwo!6176 r!15766))))

(assert (=> d!294986 (= (removeUselessConcat!401 (regTwo!6176 r!15766)) lt!355038)))

(declare-fun b!1024927 () Bool)

(assert (=> b!1024927 (= e!654053 (regTwo!6176 r!15766))))

(declare-fun b!1024928 () Bool)

(assert (=> b!1024928 (= c!169946 (is-Concat!4665 (regTwo!6176 r!15766)))))

(assert (=> b!1024928 (= e!654056 e!654060)))

(declare-fun b!1024929 () Bool)

(assert (=> b!1024929 (= e!654060 (Concat!4665 call!70367 call!70364))))

(declare-fun b!1024930 () Bool)

(declare-fun c!169945 () Bool)

(assert (=> b!1024930 (= c!169945 (is-Star!2832 (regTwo!6176 r!15766)))))

(assert (=> b!1024930 (= e!654057 e!654053)))

(declare-fun b!1024931 () Bool)

(assert (=> b!1024931 (= e!654059 call!70365)))

(declare-fun b!1024932 () Bool)

(assert (=> b!1024932 (= e!654054 (= (nullable!933 lt!355038) (nullable!933 (regTwo!6176 r!15766))))))

(declare-fun bm!70363 () Bool)

(assert (=> bm!70363 (= call!70367 call!70365)))

(assert (= (and d!294986 c!169947) b!1024931))

(assert (= (and d!294986 (not c!169947)) b!1024922))

(assert (= (and b!1024922 c!169948) b!1024925))

(assert (= (and b!1024922 (not c!169948)) b!1024928))

(assert (= (and b!1024928 c!169946) b!1024929))

(assert (= (and b!1024928 (not c!169946)) b!1024924))

(assert (= (and b!1024924 c!169944) b!1024926))

(assert (= (and b!1024924 (not c!169944)) b!1024930))

(assert (= (and b!1024930 c!169945) b!1024923))

(assert (= (and b!1024930 (not c!169945)) b!1024927))

(assert (= (or b!1024926 b!1024923) bm!70361))

(assert (= (or b!1024929 bm!70361) bm!70360))

(assert (= (or b!1024929 b!1024926) bm!70363))

(assert (= (or b!1024925 bm!70360) bm!70362))

(assert (= (or b!1024931 bm!70363) bm!70359))

(assert (= (and d!294986 res!460499) b!1024932))

(declare-fun m!1201997 () Bool)

(assert (=> bm!70359 m!1201997))

(declare-fun m!1201999 () Bool)

(assert (=> bm!70362 m!1201999))

(declare-fun m!1202001 () Bool)

(assert (=> d!294986 m!1202001))

(assert (=> d!294986 m!1201989))

(declare-fun m!1202003 () Bool)

(assert (=> b!1024932 m!1202003))

(assert (=> b!1024932 m!1201995))

(assert (=> b!1024704 d!294986))

(declare-fun d!294988 () Bool)

(assert (=> d!294988 (= (matchR!1368 (regTwo!6176 r!15766) s!10566) (matchR!1368 (removeUselessConcat!401 (regTwo!6176 r!15766)) s!10566))))

(declare-fun lt!355045 () Unit!15339)

(declare-fun choose!6500 (Regex!2832 List!10062) Unit!15339)

(assert (=> d!294988 (= lt!355045 (choose!6500 (regTwo!6176 r!15766) s!10566))))

(assert (=> d!294988 (validRegex!1301 (regTwo!6176 r!15766))))

(assert (=> d!294988 (= (lemmaRemoveUselessConcatSound!241 (regTwo!6176 r!15766) s!10566) lt!355045)))

(declare-fun bs!246969 () Bool)

(assert (= bs!246969 d!294988))

(assert (=> bs!246969 m!1201909))

(declare-fun m!1202005 () Bool)

(assert (=> bs!246969 m!1202005))

(assert (=> bs!246969 m!1201907))

(assert (=> bs!246969 m!1201989))

(assert (=> bs!246969 m!1201909))

(declare-fun m!1202007 () Bool)

(assert (=> bs!246969 m!1202007))

(assert (=> b!1024704 d!294988))

(declare-fun b!1024947 () Bool)

(declare-fun res!460516 () Bool)

(declare-fun e!654072 () Bool)

(assert (=> b!1024947 (=> res!460516 e!654072)))

(declare-fun e!654071 () Bool)

(assert (=> b!1024947 (= res!460516 e!654071)))

(declare-fun res!460515 () Bool)

(assert (=> b!1024947 (=> (not res!460515) (not e!654071))))

(declare-fun lt!355046 () Bool)

(assert (=> b!1024947 (= res!460515 lt!355046)))

(declare-fun b!1024948 () Bool)

(assert (=> b!1024948 (= e!654071 (= (head!1889 s!10566) (c!169897 (removeUselessConcat!401 r!15766))))))

(declare-fun b!1024949 () Bool)

(declare-fun e!654070 () Bool)

(assert (=> b!1024949 (= e!654070 (not (= (head!1889 s!10566) (c!169897 (removeUselessConcat!401 r!15766)))))))

(declare-fun d!294990 () Bool)

(declare-fun e!654074 () Bool)

(assert (=> d!294990 e!654074))

(declare-fun c!169951 () Bool)

(assert (=> d!294990 (= c!169951 (is-EmptyExpr!2832 (removeUselessConcat!401 r!15766)))))

(declare-fun e!654069 () Bool)

(assert (=> d!294990 (= lt!355046 e!654069)))

(declare-fun c!169952 () Bool)

(assert (=> d!294990 (= c!169952 (isEmpty!6411 s!10566))))

(assert (=> d!294990 (validRegex!1301 (removeUselessConcat!401 r!15766))))

(assert (=> d!294990 (= (matchR!1368 (removeUselessConcat!401 r!15766) s!10566) lt!355046)))

(declare-fun b!1024950 () Bool)

(declare-fun e!654075 () Bool)

(assert (=> b!1024950 (= e!654075 e!654070)))

(declare-fun res!460510 () Bool)

(assert (=> b!1024950 (=> res!460510 e!654070)))

(declare-fun call!70369 () Bool)

(assert (=> b!1024950 (= res!460510 call!70369)))

(declare-fun b!1024951 () Bool)

(declare-fun res!460512 () Bool)

(assert (=> b!1024951 (=> res!460512 e!654070)))

(assert (=> b!1024951 (= res!460512 (not (isEmpty!6411 (tail!1451 s!10566))))))

(declare-fun b!1024952 () Bool)

(assert (=> b!1024952 (= e!654072 e!654075)))

(declare-fun res!460513 () Bool)

(assert (=> b!1024952 (=> (not res!460513) (not e!654075))))

(assert (=> b!1024952 (= res!460513 (not lt!355046))))

(declare-fun b!1024953 () Bool)

(declare-fun e!654073 () Bool)

(assert (=> b!1024953 (= e!654073 (not lt!355046))))

(declare-fun bm!70364 () Bool)

(assert (=> bm!70364 (= call!70369 (isEmpty!6411 s!10566))))

(declare-fun b!1024954 () Bool)

(assert (=> b!1024954 (= e!654074 (= lt!355046 call!70369))))

(declare-fun b!1024955 () Bool)

(assert (=> b!1024955 (= e!654074 e!654073)))

(declare-fun c!169953 () Bool)

(assert (=> b!1024955 (= c!169953 (is-EmptyLang!2832 (removeUselessConcat!401 r!15766)))))

(declare-fun b!1024956 () Bool)

(declare-fun res!460511 () Bool)

(assert (=> b!1024956 (=> (not res!460511) (not e!654071))))

(assert (=> b!1024956 (= res!460511 (isEmpty!6411 (tail!1451 s!10566)))))

(declare-fun b!1024957 () Bool)

(assert (=> b!1024957 (= e!654069 (nullable!933 (removeUselessConcat!401 r!15766)))))

(declare-fun b!1024958 () Bool)

(assert (=> b!1024958 (= e!654069 (matchR!1368 (derivativeStep!735 (removeUselessConcat!401 r!15766) (head!1889 s!10566)) (tail!1451 s!10566)))))

(declare-fun b!1024959 () Bool)

(declare-fun res!460517 () Bool)

(assert (=> b!1024959 (=> res!460517 e!654072)))

(assert (=> b!1024959 (= res!460517 (not (is-ElementMatch!2832 (removeUselessConcat!401 r!15766))))))

(assert (=> b!1024959 (= e!654073 e!654072)))

(declare-fun b!1024960 () Bool)

(declare-fun res!460514 () Bool)

(assert (=> b!1024960 (=> (not res!460514) (not e!654071))))

(assert (=> b!1024960 (= res!460514 (not call!70369))))

(assert (= (and d!294990 c!169952) b!1024957))

(assert (= (and d!294990 (not c!169952)) b!1024958))

(assert (= (and d!294990 c!169951) b!1024954))

(assert (= (and d!294990 (not c!169951)) b!1024955))

(assert (= (and b!1024955 c!169953) b!1024953))

(assert (= (and b!1024955 (not c!169953)) b!1024959))

(assert (= (and b!1024959 (not res!460517)) b!1024947))

(assert (= (and b!1024947 res!460515) b!1024960))

(assert (= (and b!1024960 res!460514) b!1024956))

(assert (= (and b!1024956 res!460511) b!1024948))

(assert (= (and b!1024947 (not res!460516)) b!1024952))

(assert (= (and b!1024952 res!460513) b!1024950))

(assert (= (and b!1024950 (not res!460510)) b!1024951))

(assert (= (and b!1024951 (not res!460512)) b!1024949))

(assert (= (or b!1024954 b!1024950 b!1024960) bm!70364))

(assert (=> d!294990 m!1201889))

(assert (=> d!294990 m!1201913))

(declare-fun m!1202009 () Bool)

(assert (=> d!294990 m!1202009))

(assert (=> b!1024958 m!1201967))

(assert (=> b!1024958 m!1201913))

(assert (=> b!1024958 m!1201967))

(declare-fun m!1202011 () Bool)

(assert (=> b!1024958 m!1202011))

(assert (=> b!1024958 m!1201971))

(assert (=> b!1024958 m!1202011))

(assert (=> b!1024958 m!1201971))

(declare-fun m!1202013 () Bool)

(assert (=> b!1024958 m!1202013))

(assert (=> b!1024956 m!1201971))

(assert (=> b!1024956 m!1201971))

(assert (=> b!1024956 m!1201975))

(assert (=> bm!70364 m!1201889))

(assert (=> b!1024948 m!1201967))

(assert (=> b!1024949 m!1201967))

(assert (=> b!1024957 m!1201913))

(declare-fun m!1202015 () Bool)

(assert (=> b!1024957 m!1202015))

(assert (=> b!1024951 m!1201971))

(assert (=> b!1024951 m!1201971))

(assert (=> b!1024951 m!1201975))

(assert (=> b!1024698 d!294990))

(declare-fun c!169956 () Bool)

(declare-fun bm!70365 () Bool)

(declare-fun c!169957 () Bool)

(declare-fun call!70371 () Regex!2832)

(assert (=> bm!70365 (= call!70371 (removeUselessConcat!401 (ite c!169957 (regTwo!6176 r!15766) (ite c!169956 (regOne!6176 r!15766) (regOne!6177 r!15766)))))))

(declare-fun b!1024961 () Bool)

(declare-fun e!654080 () Regex!2832)

(declare-fun e!654078 () Regex!2832)

(assert (=> b!1024961 (= e!654080 e!654078)))

(declare-fun c!169958 () Bool)

(assert (=> b!1024961 (= c!169958 (and (is-Concat!4665 r!15766) (is-EmptyExpr!2832 (regTwo!6176 r!15766))))))

(declare-fun b!1024962 () Bool)

(declare-fun e!654076 () Regex!2832)

(declare-fun call!70372 () Regex!2832)

(assert (=> b!1024962 (= e!654076 (Star!2832 call!70372))))

(declare-fun bm!70366 () Bool)

(declare-fun call!70370 () Regex!2832)

(declare-fun call!70374 () Regex!2832)

(assert (=> bm!70366 (= call!70370 call!70374)))

(declare-fun b!1024963 () Bool)

(declare-fun e!654081 () Regex!2832)

(declare-fun e!654079 () Regex!2832)

(assert (=> b!1024963 (= e!654081 e!654079)))

(declare-fun c!169954 () Bool)

(assert (=> b!1024963 (= c!169954 (is-Union!2832 r!15766))))

(declare-fun bm!70367 () Bool)

(assert (=> bm!70367 (= call!70372 call!70370)))

(declare-fun bm!70368 () Bool)

(assert (=> bm!70368 (= call!70374 (removeUselessConcat!401 (ite c!169958 (regOne!6176 r!15766) (ite c!169956 (regTwo!6176 r!15766) (ite c!169954 (regTwo!6177 r!15766) (reg!3161 r!15766))))))))

(declare-fun b!1024964 () Bool)

(assert (=> b!1024964 (= e!654078 call!70374)))

(declare-fun b!1024965 () Bool)

(declare-fun call!70373 () Regex!2832)

(assert (=> b!1024965 (= e!654079 (Union!2832 call!70373 call!70372))))

(declare-fun d!294992 () Bool)

(declare-fun e!654077 () Bool)

(assert (=> d!294992 e!654077))

(declare-fun res!460518 () Bool)

(assert (=> d!294992 (=> (not res!460518) (not e!654077))))

(declare-fun lt!355047 () Regex!2832)

(assert (=> d!294992 (= res!460518 (validRegex!1301 lt!355047))))

(assert (=> d!294992 (= lt!355047 e!654080)))

(assert (=> d!294992 (= c!169957 (and (is-Concat!4665 r!15766) (is-EmptyExpr!2832 (regOne!6176 r!15766))))))

(assert (=> d!294992 (validRegex!1301 r!15766)))

(assert (=> d!294992 (= (removeUselessConcat!401 r!15766) lt!355047)))

(declare-fun b!1024966 () Bool)

(assert (=> b!1024966 (= e!654076 r!15766)))

(declare-fun b!1024967 () Bool)

(assert (=> b!1024967 (= c!169956 (is-Concat!4665 r!15766))))

(assert (=> b!1024967 (= e!654078 e!654081)))

(declare-fun b!1024968 () Bool)

(assert (=> b!1024968 (= e!654081 (Concat!4665 call!70373 call!70370))))

(declare-fun b!1024969 () Bool)

(declare-fun c!169955 () Bool)

(assert (=> b!1024969 (= c!169955 (is-Star!2832 r!15766))))

(assert (=> b!1024969 (= e!654079 e!654076)))

(declare-fun b!1024970 () Bool)

(assert (=> b!1024970 (= e!654080 call!70371)))

(declare-fun b!1024971 () Bool)

(assert (=> b!1024971 (= e!654077 (= (nullable!933 lt!355047) (nullable!933 r!15766)))))

(declare-fun bm!70369 () Bool)

(assert (=> bm!70369 (= call!70373 call!70371)))

(assert (= (and d!294992 c!169957) b!1024970))

(assert (= (and d!294992 (not c!169957)) b!1024961))

(assert (= (and b!1024961 c!169958) b!1024964))

(assert (= (and b!1024961 (not c!169958)) b!1024967))

(assert (= (and b!1024967 c!169956) b!1024968))

(assert (= (and b!1024967 (not c!169956)) b!1024963))

(assert (= (and b!1024963 c!169954) b!1024965))

(assert (= (and b!1024963 (not c!169954)) b!1024969))

(assert (= (and b!1024969 c!169955) b!1024962))

(assert (= (and b!1024969 (not c!169955)) b!1024966))

(assert (= (or b!1024965 b!1024962) bm!70367))

(assert (= (or b!1024968 bm!70367) bm!70366))

(assert (= (or b!1024968 b!1024965) bm!70369))

(assert (= (or b!1024964 bm!70366) bm!70368))

(assert (= (or b!1024970 bm!70369) bm!70365))

(assert (= (and d!294992 res!460518) b!1024971))

(declare-fun m!1202017 () Bool)

(assert (=> bm!70365 m!1202017))

(declare-fun m!1202019 () Bool)

(assert (=> bm!70368 m!1202019))

(declare-fun m!1202021 () Bool)

(assert (=> d!294992 m!1202021))

(assert (=> d!294992 m!1201901))

(declare-fun m!1202023 () Bool)

(assert (=> b!1024971 m!1202023))

(assert (=> b!1024971 m!1201977))

(assert (=> b!1024698 d!294992))

(declare-fun d!294994 () Bool)

(assert (=> d!294994 (= (isEmpty!6412 lt!354992) (not (is-Some!2364 lt!354992)))))

(assert (=> b!1024703 d!294994))

(declare-fun d!294996 () Bool)

(declare-fun choose!6501 (Int) Bool)

(assert (=> d!294996 (= (Exists!561 lambda!36535) (choose!6501 lambda!36535))))

(declare-fun bs!246970 () Bool)

(assert (= bs!246970 d!294996))

(declare-fun m!1202025 () Bool)

(assert (=> bs!246970 m!1202025))

(assert (=> b!1024702 d!294996))

(declare-fun d!294998 () Bool)

(assert (=> d!294998 (= (isEmpty!6411 s!10566) (is-Nil!10046 s!10566))))

(assert (=> b!1024702 d!294998))

(declare-fun b!1024999 () Bool)

(declare-fun e!654100 () Option!2365)

(declare-fun e!654099 () Option!2365)

(assert (=> b!1024999 (= e!654100 e!654099)))

(declare-fun c!169965 () Bool)

(assert (=> b!1024999 (= c!169965 (is-Nil!10046 s!10566))))

(declare-fun b!1025000 () Bool)

(assert (=> b!1025000 (= e!654100 (Some!2364 (tuple2!11447 Nil!10046 s!10566)))))

(declare-fun b!1025001 () Bool)

(assert (=> b!1025001 (= e!654099 None!2364)))

(declare-fun b!1025002 () Bool)

(declare-fun lt!355058 () Unit!15339)

(declare-fun lt!355057 () Unit!15339)

(assert (=> b!1025002 (= lt!355058 lt!355057)))

(declare-fun ++!2750 (List!10062 List!10062) List!10062)

(assert (=> b!1025002 (= (++!2750 (++!2750 Nil!10046 (Cons!10046 (h!15447 s!10566) Nil!10046)) (t!101108 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!347 (List!10062 C!6234 List!10062 List!10062) Unit!15339)

(assert (=> b!1025002 (= lt!355057 (lemmaMoveElementToOtherListKeepsConcatEq!347 Nil!10046 (h!15447 s!10566) (t!101108 s!10566) s!10566))))

(assert (=> b!1025002 (= e!654099 (findConcatSeparation!471 EmptyExpr!2832 (regTwo!6176 r!15766) (++!2750 Nil!10046 (Cons!10046 (h!15447 s!10566) Nil!10046)) (t!101108 s!10566) s!10566))))

(declare-fun b!1025004 () Bool)

(declare-fun e!654101 () Bool)

(declare-fun lt!355059 () Option!2365)

(assert (=> b!1025004 (= e!654101 (not (isDefined!2007 lt!355059)))))

(declare-fun b!1025005 () Bool)

(declare-fun e!654097 () Bool)

(assert (=> b!1025005 (= e!654097 (matchR!1368 (regTwo!6176 r!15766) s!10566))))

(declare-fun b!1025006 () Bool)

(declare-fun res!460537 () Bool)

(declare-fun e!654098 () Bool)

(assert (=> b!1025006 (=> (not res!460537) (not e!654098))))

(declare-fun get!3548 (Option!2365) tuple2!11446)

(assert (=> b!1025006 (= res!460537 (matchR!1368 EmptyExpr!2832 (_1!6549 (get!3548 lt!355059))))))

(declare-fun b!1025007 () Bool)

(declare-fun res!460536 () Bool)

(assert (=> b!1025007 (=> (not res!460536) (not e!654098))))

(assert (=> b!1025007 (= res!460536 (matchR!1368 (regTwo!6176 r!15766) (_2!6549 (get!3548 lt!355059))))))

(declare-fun b!1025003 () Bool)

(assert (=> b!1025003 (= e!654098 (= (++!2750 (_1!6549 (get!3548 lt!355059)) (_2!6549 (get!3548 lt!355059))) s!10566))))

(declare-fun d!295000 () Bool)

(assert (=> d!295000 e!654101))

(declare-fun res!460538 () Bool)

(assert (=> d!295000 (=> res!460538 e!654101)))

(assert (=> d!295000 (= res!460538 e!654098)))

(declare-fun res!460534 () Bool)

(assert (=> d!295000 (=> (not res!460534) (not e!654098))))

(assert (=> d!295000 (= res!460534 (isDefined!2007 lt!355059))))

(assert (=> d!295000 (= lt!355059 e!654100)))

(declare-fun c!169966 () Bool)

(assert (=> d!295000 (= c!169966 e!654097)))

(declare-fun res!460535 () Bool)

(assert (=> d!295000 (=> (not res!460535) (not e!654097))))

(assert (=> d!295000 (= res!460535 (matchR!1368 EmptyExpr!2832 Nil!10046))))

(assert (=> d!295000 (validRegex!1301 EmptyExpr!2832)))

(assert (=> d!295000 (= (findConcatSeparation!471 EmptyExpr!2832 (regTwo!6176 r!15766) Nil!10046 s!10566 s!10566) lt!355059)))

(assert (= (and d!295000 res!460535) b!1025005))

(assert (= (and d!295000 c!169966) b!1025000))

(assert (= (and d!295000 (not c!169966)) b!1024999))

(assert (= (and b!1024999 c!169965) b!1025001))

(assert (= (and b!1024999 (not c!169965)) b!1025002))

(assert (= (and d!295000 res!460534) b!1025006))

(assert (= (and b!1025006 res!460537) b!1025007))

(assert (= (and b!1025007 res!460536) b!1025003))

(assert (= (and d!295000 (not res!460538)) b!1025004))

(declare-fun m!1202049 () Bool)

(assert (=> b!1025006 m!1202049))

(declare-fun m!1202051 () Bool)

(assert (=> b!1025006 m!1202051))

(declare-fun m!1202053 () Bool)

(assert (=> d!295000 m!1202053))

(declare-fun m!1202055 () Bool)

(assert (=> d!295000 m!1202055))

(declare-fun m!1202057 () Bool)

(assert (=> d!295000 m!1202057))

(assert (=> b!1025004 m!1202053))

(declare-fun m!1202059 () Bool)

(assert (=> b!1025002 m!1202059))

(assert (=> b!1025002 m!1202059))

(declare-fun m!1202061 () Bool)

(assert (=> b!1025002 m!1202061))

(declare-fun m!1202063 () Bool)

(assert (=> b!1025002 m!1202063))

(assert (=> b!1025002 m!1202059))

(declare-fun m!1202065 () Bool)

(assert (=> b!1025002 m!1202065))

(assert (=> b!1025005 m!1201907))

(assert (=> b!1025003 m!1202049))

(declare-fun m!1202067 () Bool)

(assert (=> b!1025003 m!1202067))

(assert (=> b!1025007 m!1202049))

(declare-fun m!1202069 () Bool)

(assert (=> b!1025007 m!1202069))

(assert (=> b!1024702 d!295000))

(declare-fun bs!246972 () Bool)

(declare-fun d!295006 () Bool)

(assert (= bs!246972 (and d!295006 b!1024702)))

(declare-fun lambda!36554 () Int)

(assert (=> bs!246972 (= lambda!36554 lambda!36535)))

(assert (=> bs!246972 (not (= lambda!36554 lambda!36536))))

(declare-fun bs!246973 () Bool)

(assert (= bs!246973 (and d!295006 b!1024821)))

(assert (=> bs!246973 (not (= lambda!36554 lambda!36549))))

(declare-fun bs!246974 () Bool)

(assert (= bs!246974 (and d!295006 b!1024816)))

(assert (=> bs!246974 (not (= lambda!36554 lambda!36550))))

(assert (=> d!295006 true))

(assert (=> d!295006 true))

(assert (=> d!295006 true))

(assert (=> d!295006 (= (isDefined!2007 (findConcatSeparation!471 EmptyExpr!2832 (regTwo!6176 r!15766) Nil!10046 s!10566 s!10566)) (Exists!561 lambda!36554))))

(declare-fun lt!355064 () Unit!15339)

(declare-fun choose!6502 (Regex!2832 Regex!2832 List!10062) Unit!15339)

(assert (=> d!295006 (= lt!355064 (choose!6502 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566))))

(assert (=> d!295006 (validRegex!1301 EmptyExpr!2832)))

(assert (=> d!295006 (= (lemmaFindConcatSeparationEquivalentToExists!471 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566) lt!355064)))

(declare-fun bs!246975 () Bool)

(assert (= bs!246975 d!295006))

(assert (=> bs!246975 m!1201891))

(assert (=> bs!246975 m!1201891))

(declare-fun m!1202071 () Bool)

(assert (=> bs!246975 m!1202071))

(declare-fun m!1202073 () Bool)

(assert (=> bs!246975 m!1202073))

(assert (=> bs!246975 m!1202057))

(declare-fun m!1202075 () Bool)

(assert (=> bs!246975 m!1202075))

(assert (=> b!1024702 d!295006))

(declare-fun bs!246978 () Bool)

(declare-fun d!295008 () Bool)

(assert (= bs!246978 (and d!295008 b!1024702)))

(declare-fun lambda!36561 () Int)

(assert (=> bs!246978 (= lambda!36561 lambda!36535)))

(declare-fun bs!246979 () Bool)

(assert (= bs!246979 (and d!295008 b!1024816)))

(assert (=> bs!246979 (not (= lambda!36561 lambda!36550))))

(declare-fun bs!246980 () Bool)

(assert (= bs!246980 (and d!295008 b!1024821)))

(assert (=> bs!246980 (not (= lambda!36561 lambda!36549))))

(declare-fun bs!246981 () Bool)

(assert (= bs!246981 (and d!295008 d!295006)))

(assert (=> bs!246981 (= lambda!36561 lambda!36554)))

(assert (=> bs!246978 (not (= lambda!36561 lambda!36536))))

(assert (=> d!295008 true))

(assert (=> d!295008 true))

(assert (=> d!295008 true))

(declare-fun lambda!36562 () Int)

(assert (=> bs!246978 (not (= lambda!36562 lambda!36535))))

(assert (=> bs!246979 (= (= EmptyExpr!2832 (regOne!6176 r!15766)) (= lambda!36562 lambda!36550))))

(assert (=> bs!246980 (not (= lambda!36562 lambda!36549))))

(declare-fun bs!246982 () Bool)

(assert (= bs!246982 d!295008))

(assert (=> bs!246982 (not (= lambda!36562 lambda!36561))))

(assert (=> bs!246981 (not (= lambda!36562 lambda!36554))))

(assert (=> bs!246978 (= lambda!36562 lambda!36536)))

(assert (=> d!295008 true))

(assert (=> d!295008 true))

(assert (=> d!295008 true))

(assert (=> d!295008 (= (Exists!561 lambda!36561) (Exists!561 lambda!36562))))

(declare-fun lt!355068 () Unit!15339)

(declare-fun choose!6504 (Regex!2832 Regex!2832 List!10062) Unit!15339)

(assert (=> d!295008 (= lt!355068 (choose!6504 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566))))

(assert (=> d!295008 (validRegex!1301 EmptyExpr!2832)))

(assert (=> d!295008 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!263 EmptyExpr!2832 (regTwo!6176 r!15766) s!10566) lt!355068)))

(declare-fun m!1202083 () Bool)

(assert (=> bs!246982 m!1202083))

(declare-fun m!1202085 () Bool)

(assert (=> bs!246982 m!1202085))

(declare-fun m!1202087 () Bool)

(assert (=> bs!246982 m!1202087))

(assert (=> bs!246982 m!1202057))

(assert (=> b!1024702 d!295008))

(declare-fun d!295012 () Bool)

(assert (=> d!295012 (= (isDefined!2007 lt!354992) (not (isEmpty!6412 lt!354992)))))

(declare-fun bs!246983 () Bool)

(assert (= bs!246983 d!295012))

(assert (=> bs!246983 m!1201903))

(assert (=> b!1024702 d!295012))

(declare-fun d!295014 () Bool)

(assert (=> d!295014 (= (Exists!561 lambda!36536) (choose!6501 lambda!36536))))

(declare-fun bs!246984 () Bool)

(assert (= bs!246984 d!295014))

(declare-fun m!1202089 () Bool)

(assert (=> bs!246984 m!1202089))

(assert (=> b!1024702 d!295014))

(declare-fun b!1025034 () Bool)

(declare-fun e!654112 () Bool)

(assert (=> b!1025034 (= e!654112 tp_is_empty!5307)))

(declare-fun b!1025035 () Bool)

(declare-fun tp!311029 () Bool)

(declare-fun tp!311031 () Bool)

(assert (=> b!1025035 (= e!654112 (and tp!311029 tp!311031))))

(assert (=> b!1024701 (= tp!310995 e!654112)))

(declare-fun b!1025036 () Bool)

(declare-fun tp!311028 () Bool)

(assert (=> b!1025036 (= e!654112 tp!311028)))

(declare-fun b!1025037 () Bool)

(declare-fun tp!311027 () Bool)

(declare-fun tp!311030 () Bool)

(assert (=> b!1025037 (= e!654112 (and tp!311027 tp!311030))))

(assert (= (and b!1024701 (is-ElementMatch!2832 (regOne!6176 r!15766))) b!1025034))

(assert (= (and b!1024701 (is-Concat!4665 (regOne!6176 r!15766))) b!1025035))

(assert (= (and b!1024701 (is-Star!2832 (regOne!6176 r!15766))) b!1025036))

(assert (= (and b!1024701 (is-Union!2832 (regOne!6176 r!15766))) b!1025037))

(declare-fun b!1025038 () Bool)

(declare-fun e!654113 () Bool)

(assert (=> b!1025038 (= e!654113 tp_is_empty!5307)))

(declare-fun b!1025039 () Bool)

(declare-fun tp!311034 () Bool)

(declare-fun tp!311036 () Bool)

(assert (=> b!1025039 (= e!654113 (and tp!311034 tp!311036))))

(assert (=> b!1024701 (= tp!310997 e!654113)))

(declare-fun b!1025040 () Bool)

(declare-fun tp!311033 () Bool)

(assert (=> b!1025040 (= e!654113 tp!311033)))

(declare-fun b!1025041 () Bool)

(declare-fun tp!311032 () Bool)

(declare-fun tp!311035 () Bool)

(assert (=> b!1025041 (= e!654113 (and tp!311032 tp!311035))))

(assert (= (and b!1024701 (is-ElementMatch!2832 (regTwo!6176 r!15766))) b!1025038))

(assert (= (and b!1024701 (is-Concat!4665 (regTwo!6176 r!15766))) b!1025039))

(assert (= (and b!1024701 (is-Star!2832 (regTwo!6176 r!15766))) b!1025040))

(assert (= (and b!1024701 (is-Union!2832 (regTwo!6176 r!15766))) b!1025041))

(declare-fun b!1025042 () Bool)

(declare-fun e!654114 () Bool)

(assert (=> b!1025042 (= e!654114 tp_is_empty!5307)))

(declare-fun b!1025043 () Bool)

(declare-fun tp!311039 () Bool)

(declare-fun tp!311041 () Bool)

(assert (=> b!1025043 (= e!654114 (and tp!311039 tp!311041))))

(assert (=> b!1024700 (= tp!310994 e!654114)))

(declare-fun b!1025044 () Bool)

(declare-fun tp!311038 () Bool)

(assert (=> b!1025044 (= e!654114 tp!311038)))

(declare-fun b!1025045 () Bool)

(declare-fun tp!311037 () Bool)

(declare-fun tp!311040 () Bool)

(assert (=> b!1025045 (= e!654114 (and tp!311037 tp!311040))))

(assert (= (and b!1024700 (is-ElementMatch!2832 (regOne!6177 r!15766))) b!1025042))

(assert (= (and b!1024700 (is-Concat!4665 (regOne!6177 r!15766))) b!1025043))

(assert (= (and b!1024700 (is-Star!2832 (regOne!6177 r!15766))) b!1025044))

(assert (= (and b!1024700 (is-Union!2832 (regOne!6177 r!15766))) b!1025045))

(declare-fun b!1025046 () Bool)

(declare-fun e!654115 () Bool)

(assert (=> b!1025046 (= e!654115 tp_is_empty!5307)))

(declare-fun b!1025047 () Bool)

(declare-fun tp!311044 () Bool)

(declare-fun tp!311046 () Bool)

(assert (=> b!1025047 (= e!654115 (and tp!311044 tp!311046))))

(assert (=> b!1024700 (= tp!310998 e!654115)))

(declare-fun b!1025048 () Bool)

(declare-fun tp!311043 () Bool)

(assert (=> b!1025048 (= e!654115 tp!311043)))

(declare-fun b!1025049 () Bool)

(declare-fun tp!311042 () Bool)

(declare-fun tp!311045 () Bool)

(assert (=> b!1025049 (= e!654115 (and tp!311042 tp!311045))))

(assert (= (and b!1024700 (is-ElementMatch!2832 (regTwo!6177 r!15766))) b!1025046))

(assert (= (and b!1024700 (is-Concat!4665 (regTwo!6177 r!15766))) b!1025047))

(assert (= (and b!1024700 (is-Star!2832 (regTwo!6177 r!15766))) b!1025048))

(assert (= (and b!1024700 (is-Union!2832 (regTwo!6177 r!15766))) b!1025049))

(declare-fun b!1025054 () Bool)

(declare-fun e!654118 () Bool)

(declare-fun tp!311049 () Bool)

(assert (=> b!1025054 (= e!654118 (and tp_is_empty!5307 tp!311049))))

(assert (=> b!1024699 (= tp!310993 e!654118)))

(assert (= (and b!1024699 (is-Cons!10046 (t!101108 s!10566))) b!1025054))

(declare-fun b!1025055 () Bool)

(declare-fun e!654119 () Bool)

(assert (=> b!1025055 (= e!654119 tp_is_empty!5307)))

(declare-fun b!1025056 () Bool)

(declare-fun tp!311052 () Bool)

(declare-fun tp!311054 () Bool)

(assert (=> b!1025056 (= e!654119 (and tp!311052 tp!311054))))

(assert (=> b!1024697 (= tp!310996 e!654119)))

(declare-fun b!1025057 () Bool)

(declare-fun tp!311051 () Bool)

(assert (=> b!1025057 (= e!654119 tp!311051)))

(declare-fun b!1025058 () Bool)

(declare-fun tp!311050 () Bool)

(declare-fun tp!311053 () Bool)

(assert (=> b!1025058 (= e!654119 (and tp!311050 tp!311053))))

(assert (= (and b!1024697 (is-ElementMatch!2832 (reg!3161 r!15766))) b!1025055))

(assert (= (and b!1024697 (is-Concat!4665 (reg!3161 r!15766))) b!1025056))

(assert (= (and b!1024697 (is-Star!2832 (reg!3161 r!15766))) b!1025057))

(assert (= (and b!1024697 (is-Union!2832 (reg!3161 r!15766))) b!1025058))

(push 1)

(assert (not b!1024815))

(assert (not b!1024779))

(assert (not b!1025045))

(assert (not bm!70362))

(assert (not b!1024883))

(assert (not b!1024892))

(assert (not b!1024949))

(assert (not d!294996))

(assert (not b!1025056))

(assert (not b!1024891))

(assert (not b!1024864))

(assert (not b!1025048))

(assert (not d!294992))

(assert (not b!1024855))

(assert (not b!1024886))

(assert (not b!1024951))

(assert (not b!1025035))

(assert (not b!1024932))

(assert (not bm!70348))

(assert (not d!294984))

(assert (not b!1025039))

(assert (not bm!70364))

(assert (not b!1025047))

(assert (not d!294986))

(assert (not bm!70336))

(assert (not b!1025058))

(assert (not d!295006))

(assert (not b!1024872))

(assert (not b!1025037))

(assert (not bm!70346))

(assert (not b!1024870))

(assert (not b!1024877))

(assert tp_is_empty!5307)

(assert (not b!1024893))

(assert (not b!1024884))

(assert (not b!1024957))

(assert (not bm!70342))

(assert (not b!1024865))

(assert (not b!1025054))

(assert (not b!1025057))

(assert (not bm!70337))

(assert (not b!1025005))

(assert (not b!1024869))

(assert (not b!1025004))

(assert (not bm!70368))

(assert (not d!294974))

(assert (not d!294990))

(assert (not b!1025049))

(assert (not b!1025040))

(assert (not d!294982))

(assert (not b!1025044))

(assert (not bm!70347))

(assert (not b!1024858))

(assert (not d!295012))

(assert (not b!1024879))

(assert (not b!1025043))

(assert (not b!1024948))

(assert (not d!294980))

(assert (not b!1024819))

(assert (not d!295014))

(assert (not d!295008))

(assert (not b!1024956))

(assert (not b!1024958))

(assert (not b!1024856))

(assert (not d!295000))

(assert (not b!1025041))

(assert (not bm!70343))

(assert (not b!1025006))

(assert (not b!1025007))

(assert (not b!1025003))

(assert (not d!294988))

(assert (not b!1024971))

(assert (not bm!70359))

(assert (not b!1025002))

(assert (not b!1024878))

(assert (not b!1025036))

(assert (not b!1024863))

(assert (not bm!70365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

