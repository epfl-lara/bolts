; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294484 () Bool)

(assert start!294484)

(declare-fun b!3105917 () Bool)

(declare-fun e!1940570 () Bool)

(declare-datatypes ((C!19340 0))(
  ( (C!19341 (val!11706 Int)) )
))
(declare-datatypes ((Regex!9577 0))(
  ( (ElementMatch!9577 (c!519421 C!19340)) (Concat!14898 (regOne!19666 Regex!9577) (regTwo!19666 Regex!9577)) (EmptyExpr!9577) (Star!9577 (reg!9906 Regex!9577)) (EmptyLang!9577) (Union!9577 (regOne!19667 Regex!9577) (regTwo!19667 Regex!9577)) )
))
(declare-fun r!17423 () Regex!9577)

(declare-fun validRegex!4310 (Regex!9577) Bool)

(assert (=> b!3105917 (= e!1940570 (validRegex!4310 (regTwo!19667 r!17423)))))

(declare-fun b!3105918 () Bool)

(declare-fun e!1940571 () Bool)

(declare-fun tp_is_empty!16717 () Bool)

(declare-fun tp!975553 () Bool)

(assert (=> b!3105918 (= e!1940571 (and tp_is_empty!16717 tp!975553))))

(declare-fun b!3105919 () Bool)

(declare-fun e!1940569 () Bool)

(declare-fun tp!975552 () Bool)

(declare-fun tp!975551 () Bool)

(assert (=> b!3105919 (= e!1940569 (and tp!975552 tp!975551))))

(declare-fun b!3105920 () Bool)

(declare-fun e!1940567 () Bool)

(declare-fun e!1940572 () Bool)

(assert (=> b!3105920 (= e!1940567 e!1940572)))

(declare-fun res!1271866 () Bool)

(assert (=> b!3105920 (=> res!1271866 e!1940572)))

(declare-fun lt!1056600 () Bool)

(assert (=> b!3105920 (= res!1271866 (not lt!1056600))))

(declare-fun lt!1056599 () Regex!9577)

(declare-datatypes ((List!35442 0))(
  ( (Nil!35318) (Cons!35318 (h!40738 C!19340) (t!234507 List!35442)) )
))
(declare-fun s!11993 () List!35442)

(declare-fun matchR!4459 (Regex!9577 List!35442) Bool)

(assert (=> b!3105920 (= lt!1056600 (matchR!4459 lt!1056599 s!11993))))

(assert (=> b!3105920 (= lt!1056600 (matchR!4459 (regOne!19667 r!17423) s!11993))))

(declare-datatypes ((Unit!49593 0))(
  ( (Unit!49594) )
))
(declare-fun lt!1056601 () Unit!49593)

(declare-fun lemmaSimplifySound!336 (Regex!9577 List!35442) Unit!49593)

(assert (=> b!3105920 (= lt!1056601 (lemmaSimplifySound!336 (regOne!19667 r!17423) s!11993))))

(declare-fun b!3105921 () Bool)

(assert (=> b!3105921 (= e!1940569 tp_is_empty!16717)))

(declare-fun b!3105922 () Bool)

(declare-fun e!1940573 () Bool)

(declare-fun e!1940568 () Bool)

(assert (=> b!3105922 (= e!1940573 (not e!1940568))))

(declare-fun res!1271865 () Bool)

(assert (=> b!3105922 (=> res!1271865 e!1940568)))

(declare-fun lt!1056602 () Bool)

(get-info :version)

(assert (=> b!3105922 (= res!1271865 (or lt!1056602 ((_ is Concat!14898) r!17423) (not ((_ is Union!9577) r!17423))))))

(declare-fun matchRSpec!1714 (Regex!9577 List!35442) Bool)

(assert (=> b!3105922 (= lt!1056602 (matchRSpec!1714 r!17423 s!11993))))

(assert (=> b!3105922 (= lt!1056602 (matchR!4459 r!17423 s!11993))))

(declare-fun lt!1056603 () Unit!49593)

(declare-fun mainMatchTheorem!1714 (Regex!9577 List!35442) Unit!49593)

(assert (=> b!3105922 (= lt!1056603 (mainMatchTheorem!1714 r!17423 s!11993))))

(declare-fun b!3105923 () Bool)

(declare-fun tp!975549 () Bool)

(declare-fun tp!975550 () Bool)

(assert (=> b!3105923 (= e!1940569 (and tp!975549 tp!975550))))

(declare-fun b!3105924 () Bool)

(assert (=> b!3105924 (= e!1940568 e!1940567)))

(declare-fun res!1271864 () Bool)

(assert (=> b!3105924 (=> res!1271864 e!1940567)))

(declare-fun isEmptyLang!628 (Regex!9577) Bool)

(assert (=> b!3105924 (= res!1271864 (isEmptyLang!628 lt!1056599))))

(declare-fun lt!1056604 () Regex!9577)

(declare-fun simplify!532 (Regex!9577) Regex!9577)

(assert (=> b!3105924 (= lt!1056604 (simplify!532 (regTwo!19667 r!17423)))))

(assert (=> b!3105924 (= lt!1056599 (simplify!532 (regOne!19667 r!17423)))))

(declare-fun b!3105926 () Bool)

(declare-fun tp!975548 () Bool)

(assert (=> b!3105926 (= e!1940569 tp!975548)))

(declare-fun b!3105927 () Bool)

(assert (=> b!3105927 (= e!1940572 e!1940570)))

(declare-fun res!1271863 () Bool)

(assert (=> b!3105927 (=> (not res!1271863) (not e!1940570))))

(assert (=> b!3105927 (= res!1271863 (validRegex!4310 (regOne!19667 r!17423)))))

(declare-fun res!1271862 () Bool)

(assert (=> start!294484 (=> (not res!1271862) (not e!1940573))))

(assert (=> start!294484 (= res!1271862 (validRegex!4310 r!17423))))

(assert (=> start!294484 e!1940573))

(assert (=> start!294484 e!1940569))

(assert (=> start!294484 e!1940571))

(declare-fun b!3105925 () Bool)

(declare-fun res!1271861 () Bool)

(assert (=> b!3105925 (=> res!1271861 e!1940567)))

(assert (=> b!3105925 (= res!1271861 (not (isEmptyLang!628 lt!1056604)))))

(assert (= (and start!294484 res!1271862) b!3105922))

(assert (= (and b!3105922 (not res!1271865)) b!3105924))

(assert (= (and b!3105924 (not res!1271864)) b!3105925))

(assert (= (and b!3105925 (not res!1271861)) b!3105920))

(assert (= (and b!3105920 (not res!1271866)) b!3105927))

(assert (= (and b!3105927 res!1271863) b!3105917))

(assert (= (and start!294484 ((_ is ElementMatch!9577) r!17423)) b!3105921))

(assert (= (and start!294484 ((_ is Concat!14898) r!17423)) b!3105919))

(assert (= (and start!294484 ((_ is Star!9577) r!17423)) b!3105926))

(assert (= (and start!294484 ((_ is Union!9577) r!17423)) b!3105923))

(assert (= (and start!294484 ((_ is Cons!35318) s!11993)) b!3105918))

(declare-fun m!3402807 () Bool)

(assert (=> b!3105924 m!3402807))

(declare-fun m!3402809 () Bool)

(assert (=> b!3105924 m!3402809))

(declare-fun m!3402811 () Bool)

(assert (=> b!3105924 m!3402811))

(declare-fun m!3402813 () Bool)

(assert (=> b!3105922 m!3402813))

(declare-fun m!3402815 () Bool)

(assert (=> b!3105922 m!3402815))

(declare-fun m!3402817 () Bool)

(assert (=> b!3105922 m!3402817))

(declare-fun m!3402819 () Bool)

(assert (=> b!3105927 m!3402819))

(declare-fun m!3402821 () Bool)

(assert (=> b!3105920 m!3402821))

(declare-fun m!3402823 () Bool)

(assert (=> b!3105920 m!3402823))

(declare-fun m!3402825 () Bool)

(assert (=> b!3105920 m!3402825))

(declare-fun m!3402827 () Bool)

(assert (=> b!3105917 m!3402827))

(declare-fun m!3402829 () Bool)

(assert (=> start!294484 m!3402829))

(declare-fun m!3402831 () Bool)

(assert (=> b!3105925 m!3402831))

(check-sat (not b!3105919) (not b!3105924) (not b!3105926) (not b!3105917) (not b!3105927) (not b!3105920) (not b!3105925) (not b!3105922) (not start!294484) (not b!3105918) tp_is_empty!16717 (not b!3105923))
(check-sat)
(get-model)

(declare-fun d!861372 () Bool)

(assert (=> d!861372 (= (isEmptyLang!628 lt!1056599) ((_ is EmptyLang!9577) lt!1056599))))

(assert (=> b!3105924 d!861372))

(declare-fun b!3106034 () Bool)

(declare-fun c!519465 () Bool)

(declare-fun call!219452 () Bool)

(assert (=> b!3106034 (= c!519465 call!219452)))

(declare-fun e!1940634 () Regex!9577)

(declare-fun e!1940635 () Regex!9577)

(assert (=> b!3106034 (= e!1940634 e!1940635)))

(declare-fun b!3106035 () Bool)

(declare-fun e!1940640 () Regex!9577)

(declare-fun lt!1056625 () Regex!9577)

(assert (=> b!3106035 (= e!1940640 lt!1056625)))

(declare-fun b!3106036 () Bool)

(declare-fun e!1940633 () Regex!9577)

(assert (=> b!3106036 (= e!1940633 (regTwo!19667 r!17423))))

(declare-fun b!3106037 () Bool)

(declare-fun e!1940632 () Bool)

(declare-fun lt!1056627 () Regex!9577)

(declare-fun nullable!3221 (Regex!9577) Bool)

(assert (=> b!3106037 (= e!1940632 (= (nullable!3221 lt!1056627) (nullable!3221 (regTwo!19667 r!17423))))))

(declare-fun b!3106038 () Bool)

(declare-fun e!1940643 () Regex!9577)

(assert (=> b!3106038 (= e!1940643 e!1940634)))

(declare-fun lt!1056628 () Regex!9577)

(declare-fun call!219454 () Regex!9577)

(assert (=> b!3106038 (= lt!1056628 call!219454)))

(declare-fun lt!1056629 () Regex!9577)

(declare-fun call!219453 () Regex!9577)

(assert (=> b!3106038 (= lt!1056629 call!219453)))

(declare-fun c!519458 () Bool)

(declare-fun call!219455 () Bool)

(assert (=> b!3106038 (= c!519458 call!219455)))

(declare-fun b!3106039 () Bool)

(declare-fun e!1940636 () Bool)

(assert (=> b!3106039 (= e!1940636 call!219452)))

(declare-fun b!3106040 () Bool)

(assert (=> b!3106040 (= e!1940634 lt!1056629)))

(declare-fun bm!219446 () Bool)

(declare-fun call!219456 () Bool)

(declare-fun c!519461 () Bool)

(declare-fun lt!1056626 () Regex!9577)

(declare-fun c!519456 () Bool)

(declare-fun lt!1056624 () Regex!9577)

(assert (=> bm!219446 (= call!219456 (isEmptyLang!628 (ite c!519456 lt!1056626 (ite c!519461 lt!1056629 lt!1056624))))))

(declare-fun bm!219447 () Bool)

(assert (=> bm!219447 (= call!219455 (isEmptyLang!628 (ite c!519461 lt!1056628 lt!1056625)))))

(declare-fun bm!219448 () Bool)

(declare-fun call!219451 () Regex!9577)

(assert (=> bm!219448 (= call!219451 (simplify!532 (ite c!519456 (reg!9906 (regTwo!19667 r!17423)) (ite c!519461 (regTwo!19667 (regTwo!19667 r!17423)) (regOne!19666 (regTwo!19667 r!17423))))))))

(declare-fun b!3106041 () Bool)

(assert (=> b!3106041 (= e!1940635 lt!1056628)))

(declare-fun b!3106042 () Bool)

(assert (=> b!3106042 (= c!519461 ((_ is Union!9577) (regTwo!19667 r!17423)))))

(declare-fun e!1940641 () Regex!9577)

(assert (=> b!3106042 (= e!1940641 e!1940643)))

(declare-fun b!3106043 () Bool)

(declare-fun c!519464 () Bool)

(declare-fun e!1940637 () Bool)

(assert (=> b!3106043 (= c!519464 e!1940637)))

(declare-fun res!1271906 () Bool)

(assert (=> b!3106043 (=> res!1271906 e!1940637)))

(assert (=> b!3106043 (= res!1271906 call!219456)))

(assert (=> b!3106043 (= lt!1056626 call!219451)))

(declare-fun e!1940631 () Regex!9577)

(assert (=> b!3106043 (= e!1940641 e!1940631)))

(declare-fun b!3106044 () Bool)

(declare-fun e!1940638 () Regex!9577)

(assert (=> b!3106044 (= e!1940638 lt!1056624)))

(declare-fun bm!219449 () Bool)

(assert (=> bm!219449 (= call!219453 call!219451)))

(declare-fun bm!219450 () Bool)

(assert (=> bm!219450 (= call!219452 call!219456)))

(declare-fun b!3106045 () Bool)

(declare-fun e!1940642 () Regex!9577)

(assert (=> b!3106045 (= e!1940642 e!1940641)))

(assert (=> b!3106045 (= c!519456 ((_ is Star!9577) (regTwo!19667 r!17423)))))

(declare-fun b!3106046 () Bool)

(assert (=> b!3106046 (= e!1940635 (Union!9577 lt!1056628 lt!1056629))))

(declare-fun b!3106047 () Bool)

(declare-fun call!219457 () Bool)

(assert (=> b!3106047 (= e!1940637 call!219457)))

(declare-fun b!3106048 () Bool)

(declare-fun c!519462 () Bool)

(assert (=> b!3106048 (= c!519462 ((_ is EmptyExpr!9577) (regTwo!19667 r!17423)))))

(assert (=> b!3106048 (= e!1940633 e!1940642)))

(declare-fun b!3106049 () Bool)

(assert (=> b!3106049 (= e!1940642 EmptyExpr!9577)))

(declare-fun b!3106050 () Bool)

(assert (=> b!3106050 (= e!1940638 e!1940640)))

(declare-fun c!519466 () Bool)

(assert (=> b!3106050 (= c!519466 call!219457)))

(declare-fun b!3106051 () Bool)

(assert (=> b!3106051 (= e!1940631 EmptyExpr!9577)))

(declare-fun b!3106052 () Bool)

(declare-fun e!1940639 () Regex!9577)

(assert (=> b!3106052 (= e!1940639 EmptyLang!9577)))

(declare-fun bm!219451 () Bool)

(declare-fun isEmptyExpr!631 (Regex!9577) Bool)

(assert (=> bm!219451 (= call!219457 (isEmptyExpr!631 (ite c!519456 lt!1056626 lt!1056624)))))

(declare-fun b!3106053 () Bool)

(assert (=> b!3106053 (= e!1940631 (Star!9577 lt!1056626))))

(declare-fun b!3106054 () Bool)

(declare-fun c!519463 () Bool)

(assert (=> b!3106054 (= c!519463 (isEmptyExpr!631 lt!1056625))))

(assert (=> b!3106054 (= e!1940639 e!1940638)))

(declare-fun b!3106055 () Bool)

(declare-fun e!1940630 () Regex!9577)

(assert (=> b!3106055 (= e!1940630 e!1940633)))

(declare-fun c!519459 () Bool)

(assert (=> b!3106055 (= c!519459 ((_ is ElementMatch!9577) (regTwo!19667 r!17423)))))

(declare-fun b!3106056 () Bool)

(assert (=> b!3106056 (= e!1940630 EmptyLang!9577)))

(declare-fun b!3106057 () Bool)

(assert (=> b!3106057 (= e!1940640 (Concat!14898 lt!1056625 lt!1056624))))

(declare-fun d!861374 () Bool)

(assert (=> d!861374 e!1940632))

(declare-fun res!1271905 () Bool)

(assert (=> d!861374 (=> (not res!1271905) (not e!1940632))))

(assert (=> d!861374 (= res!1271905 (validRegex!4310 lt!1056627))))

(assert (=> d!861374 (= lt!1056627 e!1940630)))

(declare-fun c!519460 () Bool)

(assert (=> d!861374 (= c!519460 ((_ is EmptyLang!9577) (regTwo!19667 r!17423)))))

(assert (=> d!861374 (validRegex!4310 (regTwo!19667 r!17423))))

(assert (=> d!861374 (= (simplify!532 (regTwo!19667 r!17423)) lt!1056627)))

(declare-fun b!3106058 () Bool)

(assert (=> b!3106058 (= e!1940643 e!1940639)))

(assert (=> b!3106058 (= lt!1056625 call!219453)))

(assert (=> b!3106058 (= lt!1056624 call!219454)))

(declare-fun res!1271907 () Bool)

(assert (=> b!3106058 (= res!1271907 call!219455)))

(assert (=> b!3106058 (=> res!1271907 e!1940636)))

(declare-fun c!519457 () Bool)

(assert (=> b!3106058 (= c!519457 e!1940636)))

(declare-fun bm!219452 () Bool)

(assert (=> bm!219452 (= call!219454 (simplify!532 (ite c!519461 (regOne!19667 (regTwo!19667 r!17423)) (regTwo!19666 (regTwo!19667 r!17423)))))))

(assert (= (and d!861374 c!519460) b!3106056))

(assert (= (and d!861374 (not c!519460)) b!3106055))

(assert (= (and b!3106055 c!519459) b!3106036))

(assert (= (and b!3106055 (not c!519459)) b!3106048))

(assert (= (and b!3106048 c!519462) b!3106049))

(assert (= (and b!3106048 (not c!519462)) b!3106045))

(assert (= (and b!3106045 c!519456) b!3106043))

(assert (= (and b!3106045 (not c!519456)) b!3106042))

(assert (= (and b!3106043 (not res!1271906)) b!3106047))

(assert (= (and b!3106043 c!519464) b!3106051))

(assert (= (and b!3106043 (not c!519464)) b!3106053))

(assert (= (and b!3106042 c!519461) b!3106038))

(assert (= (and b!3106042 (not c!519461)) b!3106058))

(assert (= (and b!3106038 c!519458) b!3106040))

(assert (= (and b!3106038 (not c!519458)) b!3106034))

(assert (= (and b!3106034 c!519465) b!3106041))

(assert (= (and b!3106034 (not c!519465)) b!3106046))

(assert (= (and b!3106058 (not res!1271907)) b!3106039))

(assert (= (and b!3106058 c!519457) b!3106052))

(assert (= (and b!3106058 (not c!519457)) b!3106054))

(assert (= (and b!3106054 c!519463) b!3106044))

(assert (= (and b!3106054 (not c!519463)) b!3106050))

(assert (= (and b!3106050 c!519466) b!3106035))

(assert (= (and b!3106050 (not c!519466)) b!3106057))

(assert (= (or b!3106038 b!3106058) bm!219452))

(assert (= (or b!3106038 b!3106058) bm!219449))

(assert (= (or b!3106034 b!3106039) bm!219450))

(assert (= (or b!3106038 b!3106058) bm!219447))

(assert (= (or b!3106047 b!3106050) bm!219451))

(assert (= (or b!3106043 bm!219449) bm!219448))

(assert (= (or b!3106043 bm!219450) bm!219446))

(assert (= (and d!861374 res!1271905) b!3106037))

(declare-fun m!3402859 () Bool)

(assert (=> bm!219447 m!3402859))

(declare-fun m!3402861 () Bool)

(assert (=> b!3106037 m!3402861))

(declare-fun m!3402863 () Bool)

(assert (=> b!3106037 m!3402863))

(declare-fun m!3402865 () Bool)

(assert (=> b!3106054 m!3402865))

(declare-fun m!3402867 () Bool)

(assert (=> bm!219452 m!3402867))

(declare-fun m!3402869 () Bool)

(assert (=> bm!219448 m!3402869))

(declare-fun m!3402871 () Bool)

(assert (=> bm!219446 m!3402871))

(declare-fun m!3402873 () Bool)

(assert (=> bm!219451 m!3402873))

(declare-fun m!3402875 () Bool)

(assert (=> d!861374 m!3402875))

(assert (=> d!861374 m!3402827))

(assert (=> b!3105924 d!861374))

(declare-fun b!3106079 () Bool)

(declare-fun c!519484 () Bool)

(declare-fun call!219459 () Bool)

(assert (=> b!3106079 (= c!519484 call!219459)))

(declare-fun e!1940658 () Regex!9577)

(declare-fun e!1940661 () Regex!9577)

(assert (=> b!3106079 (= e!1940658 e!1940661)))

(declare-fun b!3106080 () Bool)

(declare-fun e!1940666 () Regex!9577)

(declare-fun lt!1056631 () Regex!9577)

(assert (=> b!3106080 (= e!1940666 lt!1056631)))

(declare-fun b!3106081 () Bool)

(declare-fun e!1940657 () Regex!9577)

(assert (=> b!3106081 (= e!1940657 (regOne!19667 r!17423))))

(declare-fun b!3106082 () Bool)

(declare-fun e!1940656 () Bool)

(declare-fun lt!1056633 () Regex!9577)

(assert (=> b!3106082 (= e!1940656 (= (nullable!3221 lt!1056633) (nullable!3221 (regOne!19667 r!17423))))))

(declare-fun b!3106083 () Bool)

(declare-fun e!1940669 () Regex!9577)

(assert (=> b!3106083 (= e!1940669 e!1940658)))

(declare-fun lt!1056634 () Regex!9577)

(declare-fun call!219461 () Regex!9577)

(assert (=> b!3106083 (= lt!1056634 call!219461)))

(declare-fun lt!1056635 () Regex!9577)

(declare-fun call!219460 () Regex!9577)

(assert (=> b!3106083 (= lt!1056635 call!219460)))

(declare-fun c!519477 () Bool)

(declare-fun call!219462 () Bool)

(assert (=> b!3106083 (= c!519477 call!219462)))

(declare-fun b!3106084 () Bool)

(declare-fun e!1940662 () Bool)

(assert (=> b!3106084 (= e!1940662 call!219459)))

(declare-fun b!3106086 () Bool)

(assert (=> b!3106086 (= e!1940658 lt!1056635)))

(declare-fun c!519473 () Bool)

(declare-fun lt!1056632 () Regex!9577)

(declare-fun call!219463 () Bool)

(declare-fun lt!1056630 () Regex!9577)

(declare-fun bm!219453 () Bool)

(declare-fun c!519480 () Bool)

(assert (=> bm!219453 (= call!219463 (isEmptyLang!628 (ite c!519473 lt!1056632 (ite c!519480 lt!1056635 lt!1056630))))))

(declare-fun bm!219454 () Bool)

(assert (=> bm!219454 (= call!219462 (isEmptyLang!628 (ite c!519480 lt!1056634 lt!1056631)))))

(declare-fun bm!219455 () Bool)

(declare-fun call!219458 () Regex!9577)

(assert (=> bm!219455 (= call!219458 (simplify!532 (ite c!519473 (reg!9906 (regOne!19667 r!17423)) (ite c!519480 (regTwo!19667 (regOne!19667 r!17423)) (regOne!19666 (regOne!19667 r!17423))))))))

(declare-fun b!3106088 () Bool)

(assert (=> b!3106088 (= e!1940661 lt!1056634)))

(declare-fun b!3106089 () Bool)

(assert (=> b!3106089 (= c!519480 ((_ is Union!9577) (regOne!19667 r!17423)))))

(declare-fun e!1940667 () Regex!9577)

(assert (=> b!3106089 (= e!1940667 e!1940669)))

(declare-fun b!3106090 () Bool)

(declare-fun c!519483 () Bool)

(declare-fun e!1940663 () Bool)

(assert (=> b!3106090 (= c!519483 e!1940663)))

(declare-fun res!1271913 () Bool)

(assert (=> b!3106090 (=> res!1271913 e!1940663)))

(assert (=> b!3106090 (= res!1271913 call!219463)))

(assert (=> b!3106090 (= lt!1056632 call!219458)))

(declare-fun e!1940655 () Regex!9577)

(assert (=> b!3106090 (= e!1940667 e!1940655)))

(declare-fun b!3106091 () Bool)

(declare-fun e!1940664 () Regex!9577)

(assert (=> b!3106091 (= e!1940664 lt!1056630)))

(declare-fun bm!219456 () Bool)

(assert (=> bm!219456 (= call!219460 call!219458)))

(declare-fun bm!219457 () Bool)

(assert (=> bm!219457 (= call!219459 call!219463)))

(declare-fun b!3106092 () Bool)

(declare-fun e!1940668 () Regex!9577)

(assert (=> b!3106092 (= e!1940668 e!1940667)))

(assert (=> b!3106092 (= c!519473 ((_ is Star!9577) (regOne!19667 r!17423)))))

(declare-fun b!3106093 () Bool)

(assert (=> b!3106093 (= e!1940661 (Union!9577 lt!1056634 lt!1056635))))

(declare-fun b!3106094 () Bool)

(declare-fun call!219464 () Bool)

(assert (=> b!3106094 (= e!1940663 call!219464)))

(declare-fun b!3106095 () Bool)

(declare-fun c!519481 () Bool)

(assert (=> b!3106095 (= c!519481 ((_ is EmptyExpr!9577) (regOne!19667 r!17423)))))

(assert (=> b!3106095 (= e!1940657 e!1940668)))

(declare-fun b!3106096 () Bool)

(assert (=> b!3106096 (= e!1940668 EmptyExpr!9577)))

(declare-fun b!3106097 () Bool)

(assert (=> b!3106097 (= e!1940664 e!1940666)))

(declare-fun c!519485 () Bool)

(assert (=> b!3106097 (= c!519485 call!219464)))

(declare-fun b!3106098 () Bool)

(assert (=> b!3106098 (= e!1940655 EmptyExpr!9577)))

(declare-fun b!3106099 () Bool)

(declare-fun e!1940665 () Regex!9577)

(assert (=> b!3106099 (= e!1940665 EmptyLang!9577)))

(declare-fun bm!219458 () Bool)

(assert (=> bm!219458 (= call!219464 (isEmptyExpr!631 (ite c!519473 lt!1056632 lt!1056630)))))

(declare-fun b!3106100 () Bool)

(assert (=> b!3106100 (= e!1940655 (Star!9577 lt!1056632))))

(declare-fun b!3106101 () Bool)

(declare-fun c!519482 () Bool)

(assert (=> b!3106101 (= c!519482 (isEmptyExpr!631 lt!1056631))))

(assert (=> b!3106101 (= e!1940665 e!1940664)))

(declare-fun b!3106102 () Bool)

(declare-fun e!1940654 () Regex!9577)

(assert (=> b!3106102 (= e!1940654 e!1940657)))

(declare-fun c!519478 () Bool)

(assert (=> b!3106102 (= c!519478 ((_ is ElementMatch!9577) (regOne!19667 r!17423)))))

(declare-fun b!3106103 () Bool)

(assert (=> b!3106103 (= e!1940654 EmptyLang!9577)))

(declare-fun b!3106104 () Bool)

(assert (=> b!3106104 (= e!1940666 (Concat!14898 lt!1056631 lt!1056630))))

(declare-fun d!861384 () Bool)

(assert (=> d!861384 e!1940656))

(declare-fun res!1271912 () Bool)

(assert (=> d!861384 (=> (not res!1271912) (not e!1940656))))

(assert (=> d!861384 (= res!1271912 (validRegex!4310 lt!1056633))))

(assert (=> d!861384 (= lt!1056633 e!1940654)))

(declare-fun c!519479 () Bool)

(assert (=> d!861384 (= c!519479 ((_ is EmptyLang!9577) (regOne!19667 r!17423)))))

(assert (=> d!861384 (validRegex!4310 (regOne!19667 r!17423))))

(assert (=> d!861384 (= (simplify!532 (regOne!19667 r!17423)) lt!1056633)))

(declare-fun b!3106105 () Bool)

(assert (=> b!3106105 (= e!1940669 e!1940665)))

(assert (=> b!3106105 (= lt!1056631 call!219460)))

(assert (=> b!3106105 (= lt!1056630 call!219461)))

(declare-fun res!1271914 () Bool)

(assert (=> b!3106105 (= res!1271914 call!219462)))

(assert (=> b!3106105 (=> res!1271914 e!1940662)))

(declare-fun c!519475 () Bool)

(assert (=> b!3106105 (= c!519475 e!1940662)))

(declare-fun bm!219459 () Bool)

(assert (=> bm!219459 (= call!219461 (simplify!532 (ite c!519480 (regOne!19667 (regOne!19667 r!17423)) (regTwo!19666 (regOne!19667 r!17423)))))))

(assert (= (and d!861384 c!519479) b!3106103))

(assert (= (and d!861384 (not c!519479)) b!3106102))

(assert (= (and b!3106102 c!519478) b!3106081))

(assert (= (and b!3106102 (not c!519478)) b!3106095))

(assert (= (and b!3106095 c!519481) b!3106096))

(assert (= (and b!3106095 (not c!519481)) b!3106092))

(assert (= (and b!3106092 c!519473) b!3106090))

(assert (= (and b!3106092 (not c!519473)) b!3106089))

(assert (= (and b!3106090 (not res!1271913)) b!3106094))

(assert (= (and b!3106090 c!519483) b!3106098))

(assert (= (and b!3106090 (not c!519483)) b!3106100))

(assert (= (and b!3106089 c!519480) b!3106083))

(assert (= (and b!3106089 (not c!519480)) b!3106105))

(assert (= (and b!3106083 c!519477) b!3106086))

(assert (= (and b!3106083 (not c!519477)) b!3106079))

(assert (= (and b!3106079 c!519484) b!3106088))

(assert (= (and b!3106079 (not c!519484)) b!3106093))

(assert (= (and b!3106105 (not res!1271914)) b!3106084))

(assert (= (and b!3106105 c!519475) b!3106099))

(assert (= (and b!3106105 (not c!519475)) b!3106101))

(assert (= (and b!3106101 c!519482) b!3106091))

(assert (= (and b!3106101 (not c!519482)) b!3106097))

(assert (= (and b!3106097 c!519485) b!3106080))

(assert (= (and b!3106097 (not c!519485)) b!3106104))

(assert (= (or b!3106083 b!3106105) bm!219459))

(assert (= (or b!3106083 b!3106105) bm!219456))

(assert (= (or b!3106079 b!3106084) bm!219457))

(assert (= (or b!3106083 b!3106105) bm!219454))

(assert (= (or b!3106094 b!3106097) bm!219458))

(assert (= (or b!3106090 bm!219456) bm!219455))

(assert (= (or b!3106090 bm!219457) bm!219453))

(assert (= (and d!861384 res!1271912) b!3106082))

(declare-fun m!3402877 () Bool)

(assert (=> bm!219454 m!3402877))

(declare-fun m!3402879 () Bool)

(assert (=> b!3106082 m!3402879))

(declare-fun m!3402881 () Bool)

(assert (=> b!3106082 m!3402881))

(declare-fun m!3402883 () Bool)

(assert (=> b!3106101 m!3402883))

(declare-fun m!3402885 () Bool)

(assert (=> bm!219459 m!3402885))

(declare-fun m!3402887 () Bool)

(assert (=> bm!219455 m!3402887))

(declare-fun m!3402889 () Bool)

(assert (=> bm!219453 m!3402889))

(declare-fun m!3402891 () Bool)

(assert (=> bm!219458 m!3402891))

(declare-fun m!3402893 () Bool)

(assert (=> d!861384 m!3402893))

(assert (=> d!861384 m!3402819))

(assert (=> b!3105924 d!861384))

(declare-fun b!3106134 () Bool)

(declare-fun res!1271938 () Bool)

(declare-fun e!1940688 () Bool)

(assert (=> b!3106134 (=> (not res!1271938) (not e!1940688))))

(declare-fun isEmpty!19667 (List!35442) Bool)

(declare-fun tail!5101 (List!35442) List!35442)

(assert (=> b!3106134 (= res!1271938 (isEmpty!19667 (tail!5101 s!11993)))))

(declare-fun b!3106135 () Bool)

(declare-fun e!1940690 () Bool)

(declare-fun lt!1056638 () Bool)

(assert (=> b!3106135 (= e!1940690 (not lt!1056638))))

(declare-fun b!3106136 () Bool)

(declare-fun res!1271933 () Bool)

(assert (=> b!3106136 (=> (not res!1271933) (not e!1940688))))

(declare-fun call!219467 () Bool)

(assert (=> b!3106136 (= res!1271933 (not call!219467))))

(declare-fun d!861386 () Bool)

(declare-fun e!1940691 () Bool)

(assert (=> d!861386 e!1940691))

(declare-fun c!519492 () Bool)

(assert (=> d!861386 (= c!519492 ((_ is EmptyExpr!9577) lt!1056599))))

(declare-fun e!1940692 () Bool)

(assert (=> d!861386 (= lt!1056638 e!1940692)))

(declare-fun c!519494 () Bool)

(assert (=> d!861386 (= c!519494 (isEmpty!19667 s!11993))))

(assert (=> d!861386 (validRegex!4310 lt!1056599)))

(assert (=> d!861386 (= (matchR!4459 lt!1056599 s!11993) lt!1056638)))

(declare-fun b!3106137 () Bool)

(declare-fun res!1271936 () Bool)

(declare-fun e!1940687 () Bool)

(assert (=> b!3106137 (=> res!1271936 e!1940687)))

(assert (=> b!3106137 (= res!1271936 (not ((_ is ElementMatch!9577) lt!1056599)))))

(assert (=> b!3106137 (= e!1940690 e!1940687)))

(declare-fun b!3106138 () Bool)

(declare-fun head!6875 (List!35442) C!19340)

(assert (=> b!3106138 (= e!1940688 (= (head!6875 s!11993) (c!519421 lt!1056599)))))

(declare-fun b!3106139 () Bool)

(assert (=> b!3106139 (= e!1940691 e!1940690)))

(declare-fun c!519493 () Bool)

(assert (=> b!3106139 (= c!519493 ((_ is EmptyLang!9577) lt!1056599))))

(declare-fun b!3106140 () Bool)

(declare-fun derivativeStep!2816 (Regex!9577 C!19340) Regex!9577)

(assert (=> b!3106140 (= e!1940692 (matchR!4459 (derivativeStep!2816 lt!1056599 (head!6875 s!11993)) (tail!5101 s!11993)))))

(declare-fun b!3106141 () Bool)

(declare-fun e!1940689 () Bool)

(declare-fun e!1940686 () Bool)

(assert (=> b!3106141 (= e!1940689 e!1940686)))

(declare-fun res!1271939 () Bool)

(assert (=> b!3106141 (=> res!1271939 e!1940686)))

(assert (=> b!3106141 (= res!1271939 call!219467)))

(declare-fun b!3106142 () Bool)

(assert (=> b!3106142 (= e!1940686 (not (= (head!6875 s!11993) (c!519421 lt!1056599))))))

(declare-fun b!3106143 () Bool)

(assert (=> b!3106143 (= e!1940687 e!1940689)))

(declare-fun res!1271937 () Bool)

(assert (=> b!3106143 (=> (not res!1271937) (not e!1940689))))

(assert (=> b!3106143 (= res!1271937 (not lt!1056638))))

(declare-fun b!3106144 () Bool)

(assert (=> b!3106144 (= e!1940691 (= lt!1056638 call!219467))))

(declare-fun b!3106145 () Bool)

(declare-fun res!1271940 () Bool)

(assert (=> b!3106145 (=> res!1271940 e!1940687)))

(assert (=> b!3106145 (= res!1271940 e!1940688)))

(declare-fun res!1271934 () Bool)

(assert (=> b!3106145 (=> (not res!1271934) (not e!1940688))))

(assert (=> b!3106145 (= res!1271934 lt!1056638)))

(declare-fun b!3106146 () Bool)

(assert (=> b!3106146 (= e!1940692 (nullable!3221 lt!1056599))))

(declare-fun bm!219462 () Bool)

(assert (=> bm!219462 (= call!219467 (isEmpty!19667 s!11993))))

(declare-fun b!3106147 () Bool)

(declare-fun res!1271935 () Bool)

(assert (=> b!3106147 (=> res!1271935 e!1940686)))

(assert (=> b!3106147 (= res!1271935 (not (isEmpty!19667 (tail!5101 s!11993))))))

(assert (= (and d!861386 c!519494) b!3106146))

(assert (= (and d!861386 (not c!519494)) b!3106140))

(assert (= (and d!861386 c!519492) b!3106144))

(assert (= (and d!861386 (not c!519492)) b!3106139))

(assert (= (and b!3106139 c!519493) b!3106135))

(assert (= (and b!3106139 (not c!519493)) b!3106137))

(assert (= (and b!3106137 (not res!1271936)) b!3106145))

(assert (= (and b!3106145 res!1271934) b!3106136))

(assert (= (and b!3106136 res!1271933) b!3106134))

(assert (= (and b!3106134 res!1271938) b!3106138))

(assert (= (and b!3106145 (not res!1271940)) b!3106143))

(assert (= (and b!3106143 res!1271937) b!3106141))

(assert (= (and b!3106141 (not res!1271939)) b!3106147))

(assert (= (and b!3106147 (not res!1271935)) b!3106142))

(assert (= (or b!3106144 b!3106136 b!3106141) bm!219462))

(declare-fun m!3402895 () Bool)

(assert (=> b!3106134 m!3402895))

(assert (=> b!3106134 m!3402895))

(declare-fun m!3402897 () Bool)

(assert (=> b!3106134 m!3402897))

(declare-fun m!3402899 () Bool)

(assert (=> b!3106146 m!3402899))

(declare-fun m!3402901 () Bool)

(assert (=> b!3106140 m!3402901))

(assert (=> b!3106140 m!3402901))

(declare-fun m!3402903 () Bool)

(assert (=> b!3106140 m!3402903))

(assert (=> b!3106140 m!3402895))

(assert (=> b!3106140 m!3402903))

(assert (=> b!3106140 m!3402895))

(declare-fun m!3402905 () Bool)

(assert (=> b!3106140 m!3402905))

(declare-fun m!3402907 () Bool)

(assert (=> bm!219462 m!3402907))

(assert (=> b!3106147 m!3402895))

(assert (=> b!3106147 m!3402895))

(assert (=> b!3106147 m!3402897))

(assert (=> b!3106138 m!3402901))

(assert (=> d!861386 m!3402907))

(declare-fun m!3402909 () Bool)

(assert (=> d!861386 m!3402909))

(assert (=> b!3106142 m!3402901))

(assert (=> b!3105920 d!861386))

(declare-fun b!3106148 () Bool)

(declare-fun res!1271946 () Bool)

(declare-fun e!1940695 () Bool)

(assert (=> b!3106148 (=> (not res!1271946) (not e!1940695))))

(assert (=> b!3106148 (= res!1271946 (isEmpty!19667 (tail!5101 s!11993)))))

(declare-fun b!3106149 () Bool)

(declare-fun e!1940697 () Bool)

(declare-fun lt!1056639 () Bool)

(assert (=> b!3106149 (= e!1940697 (not lt!1056639))))

(declare-fun b!3106150 () Bool)

(declare-fun res!1271941 () Bool)

(assert (=> b!3106150 (=> (not res!1271941) (not e!1940695))))

(declare-fun call!219468 () Bool)

(assert (=> b!3106150 (= res!1271941 (not call!219468))))

(declare-fun d!861388 () Bool)

(declare-fun e!1940698 () Bool)

(assert (=> d!861388 e!1940698))

(declare-fun c!519495 () Bool)

(assert (=> d!861388 (= c!519495 ((_ is EmptyExpr!9577) (regOne!19667 r!17423)))))

(declare-fun e!1940699 () Bool)

(assert (=> d!861388 (= lt!1056639 e!1940699)))

(declare-fun c!519497 () Bool)

(assert (=> d!861388 (= c!519497 (isEmpty!19667 s!11993))))

(assert (=> d!861388 (validRegex!4310 (regOne!19667 r!17423))))

(assert (=> d!861388 (= (matchR!4459 (regOne!19667 r!17423) s!11993) lt!1056639)))

(declare-fun b!3106151 () Bool)

(declare-fun res!1271944 () Bool)

(declare-fun e!1940694 () Bool)

(assert (=> b!3106151 (=> res!1271944 e!1940694)))

(assert (=> b!3106151 (= res!1271944 (not ((_ is ElementMatch!9577) (regOne!19667 r!17423))))))

(assert (=> b!3106151 (= e!1940697 e!1940694)))

(declare-fun b!3106152 () Bool)

(assert (=> b!3106152 (= e!1940695 (= (head!6875 s!11993) (c!519421 (regOne!19667 r!17423))))))

(declare-fun b!3106153 () Bool)

(assert (=> b!3106153 (= e!1940698 e!1940697)))

(declare-fun c!519496 () Bool)

(assert (=> b!3106153 (= c!519496 ((_ is EmptyLang!9577) (regOne!19667 r!17423)))))

(declare-fun b!3106154 () Bool)

(assert (=> b!3106154 (= e!1940699 (matchR!4459 (derivativeStep!2816 (regOne!19667 r!17423) (head!6875 s!11993)) (tail!5101 s!11993)))))

(declare-fun b!3106155 () Bool)

(declare-fun e!1940696 () Bool)

(declare-fun e!1940693 () Bool)

(assert (=> b!3106155 (= e!1940696 e!1940693)))

(declare-fun res!1271947 () Bool)

(assert (=> b!3106155 (=> res!1271947 e!1940693)))

(assert (=> b!3106155 (= res!1271947 call!219468)))

(declare-fun b!3106156 () Bool)

(assert (=> b!3106156 (= e!1940693 (not (= (head!6875 s!11993) (c!519421 (regOne!19667 r!17423)))))))

(declare-fun b!3106157 () Bool)

(assert (=> b!3106157 (= e!1940694 e!1940696)))

(declare-fun res!1271945 () Bool)

(assert (=> b!3106157 (=> (not res!1271945) (not e!1940696))))

(assert (=> b!3106157 (= res!1271945 (not lt!1056639))))

(declare-fun b!3106158 () Bool)

(assert (=> b!3106158 (= e!1940698 (= lt!1056639 call!219468))))

(declare-fun b!3106159 () Bool)

(declare-fun res!1271948 () Bool)

(assert (=> b!3106159 (=> res!1271948 e!1940694)))

(assert (=> b!3106159 (= res!1271948 e!1940695)))

(declare-fun res!1271942 () Bool)

(assert (=> b!3106159 (=> (not res!1271942) (not e!1940695))))

(assert (=> b!3106159 (= res!1271942 lt!1056639)))

(declare-fun b!3106160 () Bool)

(assert (=> b!3106160 (= e!1940699 (nullable!3221 (regOne!19667 r!17423)))))

(declare-fun bm!219463 () Bool)

(assert (=> bm!219463 (= call!219468 (isEmpty!19667 s!11993))))

(declare-fun b!3106161 () Bool)

(declare-fun res!1271943 () Bool)

(assert (=> b!3106161 (=> res!1271943 e!1940693)))

(assert (=> b!3106161 (= res!1271943 (not (isEmpty!19667 (tail!5101 s!11993))))))

(assert (= (and d!861388 c!519497) b!3106160))

(assert (= (and d!861388 (not c!519497)) b!3106154))

(assert (= (and d!861388 c!519495) b!3106158))

(assert (= (and d!861388 (not c!519495)) b!3106153))

(assert (= (and b!3106153 c!519496) b!3106149))

(assert (= (and b!3106153 (not c!519496)) b!3106151))

(assert (= (and b!3106151 (not res!1271944)) b!3106159))

(assert (= (and b!3106159 res!1271942) b!3106150))

(assert (= (and b!3106150 res!1271941) b!3106148))

(assert (= (and b!3106148 res!1271946) b!3106152))

(assert (= (and b!3106159 (not res!1271948)) b!3106157))

(assert (= (and b!3106157 res!1271945) b!3106155))

(assert (= (and b!3106155 (not res!1271947)) b!3106161))

(assert (= (and b!3106161 (not res!1271943)) b!3106156))

(assert (= (or b!3106158 b!3106150 b!3106155) bm!219463))

(assert (=> b!3106148 m!3402895))

(assert (=> b!3106148 m!3402895))

(assert (=> b!3106148 m!3402897))

(assert (=> b!3106160 m!3402881))

(assert (=> b!3106154 m!3402901))

(assert (=> b!3106154 m!3402901))

(declare-fun m!3402911 () Bool)

(assert (=> b!3106154 m!3402911))

(assert (=> b!3106154 m!3402895))

(assert (=> b!3106154 m!3402911))

(assert (=> b!3106154 m!3402895))

(declare-fun m!3402913 () Bool)

(assert (=> b!3106154 m!3402913))

(assert (=> bm!219463 m!3402907))

(assert (=> b!3106161 m!3402895))

(assert (=> b!3106161 m!3402895))

(assert (=> b!3106161 m!3402897))

(assert (=> b!3106152 m!3402901))

(assert (=> d!861388 m!3402907))

(assert (=> d!861388 m!3402819))

(assert (=> b!3106156 m!3402901))

(assert (=> b!3105920 d!861388))

(declare-fun d!861390 () Bool)

(assert (=> d!861390 (= (matchR!4459 (regOne!19667 r!17423) s!11993) (matchR!4459 (simplify!532 (regOne!19667 r!17423)) s!11993))))

(declare-fun lt!1056642 () Unit!49593)

(declare-fun choose!18374 (Regex!9577 List!35442) Unit!49593)

(assert (=> d!861390 (= lt!1056642 (choose!18374 (regOne!19667 r!17423) s!11993))))

(assert (=> d!861390 (validRegex!4310 (regOne!19667 r!17423))))

(assert (=> d!861390 (= (lemmaSimplifySound!336 (regOne!19667 r!17423) s!11993) lt!1056642)))

(declare-fun bs!535741 () Bool)

(assert (= bs!535741 d!861390))

(declare-fun m!3402915 () Bool)

(assert (=> bs!535741 m!3402915))

(assert (=> bs!535741 m!3402811))

(declare-fun m!3402917 () Bool)

(assert (=> bs!535741 m!3402917))

(assert (=> bs!535741 m!3402811))

(assert (=> bs!535741 m!3402823))

(assert (=> bs!535741 m!3402819))

(assert (=> b!3105920 d!861390))

(declare-fun d!861392 () Bool)

(assert (=> d!861392 (= (isEmptyLang!628 lt!1056604) ((_ is EmptyLang!9577) lt!1056604))))

(assert (=> b!3105925 d!861392))

(declare-fun b!3106180 () Bool)

(declare-fun e!1940715 () Bool)

(declare-fun call!219477 () Bool)

(assert (=> b!3106180 (= e!1940715 call!219477)))

(declare-fun d!861394 () Bool)

(declare-fun res!1271959 () Bool)

(declare-fun e!1940714 () Bool)

(assert (=> d!861394 (=> res!1271959 e!1940714)))

(assert (=> d!861394 (= res!1271959 ((_ is ElementMatch!9577) r!17423))))

(assert (=> d!861394 (= (validRegex!4310 r!17423) e!1940714)))

(declare-fun b!3106181 () Bool)

(declare-fun res!1271963 () Bool)

(declare-fun e!1940717 () Bool)

(assert (=> b!3106181 (=> res!1271963 e!1940717)))

(assert (=> b!3106181 (= res!1271963 (not ((_ is Concat!14898) r!17423)))))

(declare-fun e!1940718 () Bool)

(assert (=> b!3106181 (= e!1940718 e!1940717)))

(declare-fun b!3106182 () Bool)

(declare-fun e!1940719 () Bool)

(assert (=> b!3106182 (= e!1940719 e!1940718)))

(declare-fun c!519503 () Bool)

(assert (=> b!3106182 (= c!519503 ((_ is Union!9577) r!17423))))

(declare-fun bm!219470 () Bool)

(declare-fun call!219475 () Bool)

(assert (=> bm!219470 (= call!219475 (validRegex!4310 (ite c!519503 (regOne!19667 r!17423) (regTwo!19666 r!17423))))))

(declare-fun bm!219471 () Bool)

(declare-fun call!219476 () Bool)

(assert (=> bm!219471 (= call!219477 call!219476)))

(declare-fun c!519502 () Bool)

(declare-fun bm!219472 () Bool)

(assert (=> bm!219472 (= call!219476 (validRegex!4310 (ite c!519502 (reg!9906 r!17423) (ite c!519503 (regTwo!19667 r!17423) (regOne!19666 r!17423)))))))

(declare-fun b!3106183 () Bool)

(declare-fun res!1271960 () Bool)

(assert (=> b!3106183 (=> (not res!1271960) (not e!1940715))))

(assert (=> b!3106183 (= res!1271960 call!219475)))

(assert (=> b!3106183 (= e!1940718 e!1940715)))

(declare-fun b!3106184 () Bool)

(declare-fun e!1940716 () Bool)

(assert (=> b!3106184 (= e!1940717 e!1940716)))

(declare-fun res!1271961 () Bool)

(assert (=> b!3106184 (=> (not res!1271961) (not e!1940716))))

(assert (=> b!3106184 (= res!1271961 call!219477)))

(declare-fun b!3106185 () Bool)

(assert (=> b!3106185 (= e!1940716 call!219475)))

(declare-fun b!3106186 () Bool)

(declare-fun e!1940720 () Bool)

(assert (=> b!3106186 (= e!1940720 call!219476)))

(declare-fun b!3106187 () Bool)

(assert (=> b!3106187 (= e!1940714 e!1940719)))

(assert (=> b!3106187 (= c!519502 ((_ is Star!9577) r!17423))))

(declare-fun b!3106188 () Bool)

(assert (=> b!3106188 (= e!1940719 e!1940720)))

(declare-fun res!1271962 () Bool)

(assert (=> b!3106188 (= res!1271962 (not (nullable!3221 (reg!9906 r!17423))))))

(assert (=> b!3106188 (=> (not res!1271962) (not e!1940720))))

(assert (= (and d!861394 (not res!1271959)) b!3106187))

(assert (= (and b!3106187 c!519502) b!3106188))

(assert (= (and b!3106187 (not c!519502)) b!3106182))

(assert (= (and b!3106188 res!1271962) b!3106186))

(assert (= (and b!3106182 c!519503) b!3106183))

(assert (= (and b!3106182 (not c!519503)) b!3106181))

(assert (= (and b!3106183 res!1271960) b!3106180))

(assert (= (and b!3106181 (not res!1271963)) b!3106184))

(assert (= (and b!3106184 res!1271961) b!3106185))

(assert (= (or b!3106183 b!3106185) bm!219470))

(assert (= (or b!3106180 b!3106184) bm!219471))

(assert (= (or b!3106186 bm!219471) bm!219472))

(declare-fun m!3402919 () Bool)

(assert (=> bm!219470 m!3402919))

(declare-fun m!3402921 () Bool)

(assert (=> bm!219472 m!3402921))

(declare-fun m!3402923 () Bool)

(assert (=> b!3106188 m!3402923))

(assert (=> start!294484 d!861394))

(declare-fun b!3106189 () Bool)

(declare-fun e!1940722 () Bool)

(declare-fun call!219480 () Bool)

(assert (=> b!3106189 (= e!1940722 call!219480)))

(declare-fun d!861396 () Bool)

(declare-fun res!1271964 () Bool)

(declare-fun e!1940721 () Bool)

(assert (=> d!861396 (=> res!1271964 e!1940721)))

(assert (=> d!861396 (= res!1271964 ((_ is ElementMatch!9577) (regTwo!19667 r!17423)))))

(assert (=> d!861396 (= (validRegex!4310 (regTwo!19667 r!17423)) e!1940721)))

(declare-fun b!3106190 () Bool)

(declare-fun res!1271968 () Bool)

(declare-fun e!1940724 () Bool)

(assert (=> b!3106190 (=> res!1271968 e!1940724)))

(assert (=> b!3106190 (= res!1271968 (not ((_ is Concat!14898) (regTwo!19667 r!17423))))))

(declare-fun e!1940725 () Bool)

(assert (=> b!3106190 (= e!1940725 e!1940724)))

(declare-fun b!3106191 () Bool)

(declare-fun e!1940726 () Bool)

(assert (=> b!3106191 (= e!1940726 e!1940725)))

(declare-fun c!519505 () Bool)

(assert (=> b!3106191 (= c!519505 ((_ is Union!9577) (regTwo!19667 r!17423)))))

(declare-fun bm!219473 () Bool)

(declare-fun call!219478 () Bool)

(assert (=> bm!219473 (= call!219478 (validRegex!4310 (ite c!519505 (regOne!19667 (regTwo!19667 r!17423)) (regTwo!19666 (regTwo!19667 r!17423)))))))

(declare-fun bm!219474 () Bool)

(declare-fun call!219479 () Bool)

(assert (=> bm!219474 (= call!219480 call!219479)))

(declare-fun bm!219475 () Bool)

(declare-fun c!519504 () Bool)

(assert (=> bm!219475 (= call!219479 (validRegex!4310 (ite c!519504 (reg!9906 (regTwo!19667 r!17423)) (ite c!519505 (regTwo!19667 (regTwo!19667 r!17423)) (regOne!19666 (regTwo!19667 r!17423))))))))

(declare-fun b!3106192 () Bool)

(declare-fun res!1271965 () Bool)

(assert (=> b!3106192 (=> (not res!1271965) (not e!1940722))))

(assert (=> b!3106192 (= res!1271965 call!219478)))

(assert (=> b!3106192 (= e!1940725 e!1940722)))

(declare-fun b!3106193 () Bool)

(declare-fun e!1940723 () Bool)

(assert (=> b!3106193 (= e!1940724 e!1940723)))

(declare-fun res!1271966 () Bool)

(assert (=> b!3106193 (=> (not res!1271966) (not e!1940723))))

(assert (=> b!3106193 (= res!1271966 call!219480)))

(declare-fun b!3106194 () Bool)

(assert (=> b!3106194 (= e!1940723 call!219478)))

(declare-fun b!3106195 () Bool)

(declare-fun e!1940727 () Bool)

(assert (=> b!3106195 (= e!1940727 call!219479)))

(declare-fun b!3106196 () Bool)

(assert (=> b!3106196 (= e!1940721 e!1940726)))

(assert (=> b!3106196 (= c!519504 ((_ is Star!9577) (regTwo!19667 r!17423)))))

(declare-fun b!3106197 () Bool)

(assert (=> b!3106197 (= e!1940726 e!1940727)))

(declare-fun res!1271967 () Bool)

(assert (=> b!3106197 (= res!1271967 (not (nullable!3221 (reg!9906 (regTwo!19667 r!17423)))))))

(assert (=> b!3106197 (=> (not res!1271967) (not e!1940727))))

(assert (= (and d!861396 (not res!1271964)) b!3106196))

(assert (= (and b!3106196 c!519504) b!3106197))

(assert (= (and b!3106196 (not c!519504)) b!3106191))

(assert (= (and b!3106197 res!1271967) b!3106195))

(assert (= (and b!3106191 c!519505) b!3106192))

(assert (= (and b!3106191 (not c!519505)) b!3106190))

(assert (= (and b!3106192 res!1271965) b!3106189))

(assert (= (and b!3106190 (not res!1271968)) b!3106193))

(assert (= (and b!3106193 res!1271966) b!3106194))

(assert (= (or b!3106192 b!3106194) bm!219473))

(assert (= (or b!3106189 b!3106193) bm!219474))

(assert (= (or b!3106195 bm!219474) bm!219475))

(declare-fun m!3402925 () Bool)

(assert (=> bm!219473 m!3402925))

(declare-fun m!3402927 () Bool)

(assert (=> bm!219475 m!3402927))

(declare-fun m!3402929 () Bool)

(assert (=> b!3106197 m!3402929))

(assert (=> b!3105917 d!861396))

(declare-fun b!3106459 () Bool)

(assert (=> b!3106459 true))

(assert (=> b!3106459 true))

(declare-fun bs!535744 () Bool)

(declare-fun b!3106449 () Bool)

(assert (= bs!535744 (and b!3106449 b!3106459)))

(declare-fun lambda!114976 () Int)

(declare-fun lambda!114975 () Int)

(assert (=> bs!535744 (not (= lambda!114976 lambda!114975))))

(assert (=> b!3106449 true))

(assert (=> b!3106449 true))

(declare-fun d!861398 () Bool)

(declare-fun c!519577 () Bool)

(assert (=> d!861398 (= c!519577 ((_ is EmptyExpr!9577) r!17423))))

(declare-fun e!1940870 () Bool)

(assert (=> d!861398 (= (matchRSpec!1714 r!17423 s!11993) e!1940870)))

(declare-fun call!219535 () Bool)

(declare-fun bm!219530 () Bool)

(declare-fun c!519575 () Bool)

(declare-fun Exists!1838 (Int) Bool)

(assert (=> bm!219530 (= call!219535 (Exists!1838 (ite c!519575 lambda!114975 lambda!114976)))))

(declare-fun e!1940866 () Bool)

(assert (=> b!3106449 (= e!1940866 call!219535)))

(declare-fun b!3106450 () Bool)

(declare-fun c!519576 () Bool)

(assert (=> b!3106450 (= c!519576 ((_ is ElementMatch!9577) r!17423))))

(declare-fun e!1940868 () Bool)

(declare-fun e!1940869 () Bool)

(assert (=> b!3106450 (= e!1940868 e!1940869)))

(declare-fun b!3106451 () Bool)

(declare-fun call!219536 () Bool)

(assert (=> b!3106451 (= e!1940870 call!219536)))

(declare-fun b!3106452 () Bool)

(declare-fun e!1940867 () Bool)

(assert (=> b!3106452 (= e!1940867 (matchRSpec!1714 (regTwo!19667 r!17423) s!11993))))

(declare-fun b!3106453 () Bool)

(assert (=> b!3106453 (= e!1940870 e!1940868)))

(declare-fun res!1272045 () Bool)

(assert (=> b!3106453 (= res!1272045 (not ((_ is EmptyLang!9577) r!17423)))))

(assert (=> b!3106453 (=> (not res!1272045) (not e!1940868))))

(declare-fun b!3106454 () Bool)

(declare-fun e!1940871 () Bool)

(assert (=> b!3106454 (= e!1940871 e!1940867)))

(declare-fun res!1272043 () Bool)

(assert (=> b!3106454 (= res!1272043 (matchRSpec!1714 (regOne!19667 r!17423) s!11993))))

(assert (=> b!3106454 (=> res!1272043 e!1940867)))

(declare-fun b!3106455 () Bool)

(assert (=> b!3106455 (= e!1940869 (= s!11993 (Cons!35318 (c!519421 r!17423) Nil!35318)))))

(declare-fun b!3106456 () Bool)

(declare-fun res!1272044 () Bool)

(declare-fun e!1940865 () Bool)

(assert (=> b!3106456 (=> res!1272044 e!1940865)))

(assert (=> b!3106456 (= res!1272044 call!219536)))

(assert (=> b!3106456 (= e!1940866 e!1940865)))

(declare-fun b!3106457 () Bool)

(assert (=> b!3106457 (= e!1940871 e!1940866)))

(assert (=> b!3106457 (= c!519575 ((_ is Star!9577) r!17423))))

(declare-fun b!3106458 () Bool)

(declare-fun c!519578 () Bool)

(assert (=> b!3106458 (= c!519578 ((_ is Union!9577) r!17423))))

(assert (=> b!3106458 (= e!1940869 e!1940871)))

(assert (=> b!3106459 (= e!1940865 call!219535)))

(declare-fun bm!219531 () Bool)

(assert (=> bm!219531 (= call!219536 (isEmpty!19667 s!11993))))

(assert (= (and d!861398 c!519577) b!3106451))

(assert (= (and d!861398 (not c!519577)) b!3106453))

(assert (= (and b!3106453 res!1272045) b!3106450))

(assert (= (and b!3106450 c!519576) b!3106455))

(assert (= (and b!3106450 (not c!519576)) b!3106458))

(assert (= (and b!3106458 c!519578) b!3106454))

(assert (= (and b!3106458 (not c!519578)) b!3106457))

(assert (= (and b!3106454 (not res!1272043)) b!3106452))

(assert (= (and b!3106457 c!519575) b!3106456))

(assert (= (and b!3106457 (not c!519575)) b!3106449))

(assert (= (and b!3106456 (not res!1272044)) b!3106459))

(assert (= (or b!3106459 b!3106449) bm!219530))

(assert (= (or b!3106451 b!3106456) bm!219531))

(declare-fun m!3402997 () Bool)

(assert (=> bm!219530 m!3402997))

(declare-fun m!3402999 () Bool)

(assert (=> b!3106452 m!3402999))

(declare-fun m!3403001 () Bool)

(assert (=> b!3106454 m!3403001))

(assert (=> bm!219531 m!3402907))

(assert (=> b!3105922 d!861398))

(declare-fun b!3106464 () Bool)

(declare-fun res!1272051 () Bool)

(declare-fun e!1940874 () Bool)

(assert (=> b!3106464 (=> (not res!1272051) (not e!1940874))))

(assert (=> b!3106464 (= res!1272051 (isEmpty!19667 (tail!5101 s!11993)))))

(declare-fun b!3106465 () Bool)

(declare-fun e!1940876 () Bool)

(declare-fun lt!1056671 () Bool)

(assert (=> b!3106465 (= e!1940876 (not lt!1056671))))

(declare-fun b!3106466 () Bool)

(declare-fun res!1272046 () Bool)

(assert (=> b!3106466 (=> (not res!1272046) (not e!1940874))))

(declare-fun call!219537 () Bool)

(assert (=> b!3106466 (= res!1272046 (not call!219537))))

(declare-fun d!861418 () Bool)

(declare-fun e!1940877 () Bool)

(assert (=> d!861418 e!1940877))

(declare-fun c!519579 () Bool)

(assert (=> d!861418 (= c!519579 ((_ is EmptyExpr!9577) r!17423))))

(declare-fun e!1940878 () Bool)

(assert (=> d!861418 (= lt!1056671 e!1940878)))

(declare-fun c!519581 () Bool)

(assert (=> d!861418 (= c!519581 (isEmpty!19667 s!11993))))

(assert (=> d!861418 (validRegex!4310 r!17423)))

(assert (=> d!861418 (= (matchR!4459 r!17423 s!11993) lt!1056671)))

(declare-fun b!3106467 () Bool)

(declare-fun res!1272049 () Bool)

(declare-fun e!1940873 () Bool)

(assert (=> b!3106467 (=> res!1272049 e!1940873)))

(assert (=> b!3106467 (= res!1272049 (not ((_ is ElementMatch!9577) r!17423)))))

(assert (=> b!3106467 (= e!1940876 e!1940873)))

(declare-fun b!3106468 () Bool)

(assert (=> b!3106468 (= e!1940874 (= (head!6875 s!11993) (c!519421 r!17423)))))

(declare-fun b!3106469 () Bool)

(assert (=> b!3106469 (= e!1940877 e!1940876)))

(declare-fun c!519580 () Bool)

(assert (=> b!3106469 (= c!519580 ((_ is EmptyLang!9577) r!17423))))

(declare-fun b!3106470 () Bool)

(assert (=> b!3106470 (= e!1940878 (matchR!4459 (derivativeStep!2816 r!17423 (head!6875 s!11993)) (tail!5101 s!11993)))))

(declare-fun b!3106471 () Bool)

(declare-fun e!1940875 () Bool)

(declare-fun e!1940872 () Bool)

(assert (=> b!3106471 (= e!1940875 e!1940872)))

(declare-fun res!1272052 () Bool)

(assert (=> b!3106471 (=> res!1272052 e!1940872)))

(assert (=> b!3106471 (= res!1272052 call!219537)))

(declare-fun b!3106472 () Bool)

(assert (=> b!3106472 (= e!1940872 (not (= (head!6875 s!11993) (c!519421 r!17423))))))

(declare-fun b!3106473 () Bool)

(assert (=> b!3106473 (= e!1940873 e!1940875)))

(declare-fun res!1272050 () Bool)

(assert (=> b!3106473 (=> (not res!1272050) (not e!1940875))))

(assert (=> b!3106473 (= res!1272050 (not lt!1056671))))

(declare-fun b!3106474 () Bool)

(assert (=> b!3106474 (= e!1940877 (= lt!1056671 call!219537))))

(declare-fun b!3106475 () Bool)

(declare-fun res!1272053 () Bool)

(assert (=> b!3106475 (=> res!1272053 e!1940873)))

(assert (=> b!3106475 (= res!1272053 e!1940874)))

(declare-fun res!1272047 () Bool)

(assert (=> b!3106475 (=> (not res!1272047) (not e!1940874))))

(assert (=> b!3106475 (= res!1272047 lt!1056671)))

(declare-fun b!3106476 () Bool)

(assert (=> b!3106476 (= e!1940878 (nullable!3221 r!17423))))

(declare-fun bm!219532 () Bool)

(assert (=> bm!219532 (= call!219537 (isEmpty!19667 s!11993))))

(declare-fun b!3106477 () Bool)

(declare-fun res!1272048 () Bool)

(assert (=> b!3106477 (=> res!1272048 e!1940872)))

(assert (=> b!3106477 (= res!1272048 (not (isEmpty!19667 (tail!5101 s!11993))))))

(assert (= (and d!861418 c!519581) b!3106476))

(assert (= (and d!861418 (not c!519581)) b!3106470))

(assert (= (and d!861418 c!519579) b!3106474))

(assert (= (and d!861418 (not c!519579)) b!3106469))

(assert (= (and b!3106469 c!519580) b!3106465))

(assert (= (and b!3106469 (not c!519580)) b!3106467))

(assert (= (and b!3106467 (not res!1272049)) b!3106475))

(assert (= (and b!3106475 res!1272047) b!3106466))

(assert (= (and b!3106466 res!1272046) b!3106464))

(assert (= (and b!3106464 res!1272051) b!3106468))

(assert (= (and b!3106475 (not res!1272053)) b!3106473))

(assert (= (and b!3106473 res!1272050) b!3106471))

(assert (= (and b!3106471 (not res!1272052)) b!3106477))

(assert (= (and b!3106477 (not res!1272048)) b!3106472))

(assert (= (or b!3106474 b!3106466 b!3106471) bm!219532))

(assert (=> b!3106464 m!3402895))

(assert (=> b!3106464 m!3402895))

(assert (=> b!3106464 m!3402897))

(declare-fun m!3403003 () Bool)

(assert (=> b!3106476 m!3403003))

(assert (=> b!3106470 m!3402901))

(assert (=> b!3106470 m!3402901))

(declare-fun m!3403005 () Bool)

(assert (=> b!3106470 m!3403005))

(assert (=> b!3106470 m!3402895))

(assert (=> b!3106470 m!3403005))

(assert (=> b!3106470 m!3402895))

(declare-fun m!3403007 () Bool)

(assert (=> b!3106470 m!3403007))

(assert (=> bm!219532 m!3402907))

(assert (=> b!3106477 m!3402895))

(assert (=> b!3106477 m!3402895))

(assert (=> b!3106477 m!3402897))

(assert (=> b!3106468 m!3402901))

(assert (=> d!861418 m!3402907))

(assert (=> d!861418 m!3402829))

(assert (=> b!3106472 m!3402901))

(assert (=> b!3105922 d!861418))

(declare-fun d!861420 () Bool)

(assert (=> d!861420 (= (matchR!4459 r!17423 s!11993) (matchRSpec!1714 r!17423 s!11993))))

(declare-fun lt!1056674 () Unit!49593)

(declare-fun choose!18375 (Regex!9577 List!35442) Unit!49593)

(assert (=> d!861420 (= lt!1056674 (choose!18375 r!17423 s!11993))))

(assert (=> d!861420 (validRegex!4310 r!17423)))

(assert (=> d!861420 (= (mainMatchTheorem!1714 r!17423 s!11993) lt!1056674)))

(declare-fun bs!535745 () Bool)

(assert (= bs!535745 d!861420))

(assert (=> bs!535745 m!3402815))

(assert (=> bs!535745 m!3402813))

(declare-fun m!3403009 () Bool)

(assert (=> bs!535745 m!3403009))

(assert (=> bs!535745 m!3402829))

(assert (=> b!3105922 d!861420))

(declare-fun b!3106478 () Bool)

(declare-fun e!1940880 () Bool)

(declare-fun call!219540 () Bool)

(assert (=> b!3106478 (= e!1940880 call!219540)))

(declare-fun d!861422 () Bool)

(declare-fun res!1272054 () Bool)

(declare-fun e!1940879 () Bool)

(assert (=> d!861422 (=> res!1272054 e!1940879)))

(assert (=> d!861422 (= res!1272054 ((_ is ElementMatch!9577) (regOne!19667 r!17423)))))

(assert (=> d!861422 (= (validRegex!4310 (regOne!19667 r!17423)) e!1940879)))

(declare-fun b!3106479 () Bool)

(declare-fun res!1272058 () Bool)

(declare-fun e!1940882 () Bool)

(assert (=> b!3106479 (=> res!1272058 e!1940882)))

(assert (=> b!3106479 (= res!1272058 (not ((_ is Concat!14898) (regOne!19667 r!17423))))))

(declare-fun e!1940883 () Bool)

(assert (=> b!3106479 (= e!1940883 e!1940882)))

(declare-fun b!3106480 () Bool)

(declare-fun e!1940884 () Bool)

(assert (=> b!3106480 (= e!1940884 e!1940883)))

(declare-fun c!519583 () Bool)

(assert (=> b!3106480 (= c!519583 ((_ is Union!9577) (regOne!19667 r!17423)))))

(declare-fun bm!219533 () Bool)

(declare-fun call!219538 () Bool)

(assert (=> bm!219533 (= call!219538 (validRegex!4310 (ite c!519583 (regOne!19667 (regOne!19667 r!17423)) (regTwo!19666 (regOne!19667 r!17423)))))))

(declare-fun bm!219534 () Bool)

(declare-fun call!219539 () Bool)

(assert (=> bm!219534 (= call!219540 call!219539)))

(declare-fun c!519582 () Bool)

(declare-fun bm!219535 () Bool)

(assert (=> bm!219535 (= call!219539 (validRegex!4310 (ite c!519582 (reg!9906 (regOne!19667 r!17423)) (ite c!519583 (regTwo!19667 (regOne!19667 r!17423)) (regOne!19666 (regOne!19667 r!17423))))))))

(declare-fun b!3106481 () Bool)

(declare-fun res!1272055 () Bool)

(assert (=> b!3106481 (=> (not res!1272055) (not e!1940880))))

(assert (=> b!3106481 (= res!1272055 call!219538)))

(assert (=> b!3106481 (= e!1940883 e!1940880)))

(declare-fun b!3106482 () Bool)

(declare-fun e!1940881 () Bool)

(assert (=> b!3106482 (= e!1940882 e!1940881)))

(declare-fun res!1272056 () Bool)

(assert (=> b!3106482 (=> (not res!1272056) (not e!1940881))))

(assert (=> b!3106482 (= res!1272056 call!219540)))

(declare-fun b!3106483 () Bool)

(assert (=> b!3106483 (= e!1940881 call!219538)))

(declare-fun b!3106484 () Bool)

(declare-fun e!1940885 () Bool)

(assert (=> b!3106484 (= e!1940885 call!219539)))

(declare-fun b!3106485 () Bool)

(assert (=> b!3106485 (= e!1940879 e!1940884)))

(assert (=> b!3106485 (= c!519582 ((_ is Star!9577) (regOne!19667 r!17423)))))

(declare-fun b!3106486 () Bool)

(assert (=> b!3106486 (= e!1940884 e!1940885)))

(declare-fun res!1272057 () Bool)

(assert (=> b!3106486 (= res!1272057 (not (nullable!3221 (reg!9906 (regOne!19667 r!17423)))))))

(assert (=> b!3106486 (=> (not res!1272057) (not e!1940885))))

(assert (= (and d!861422 (not res!1272054)) b!3106485))

(assert (= (and b!3106485 c!519582) b!3106486))

(assert (= (and b!3106485 (not c!519582)) b!3106480))

(assert (= (and b!3106486 res!1272057) b!3106484))

(assert (= (and b!3106480 c!519583) b!3106481))

(assert (= (and b!3106480 (not c!519583)) b!3106479))

(assert (= (and b!3106481 res!1272055) b!3106478))

(assert (= (and b!3106479 (not res!1272058)) b!3106482))

(assert (= (and b!3106482 res!1272056) b!3106483))

(assert (= (or b!3106481 b!3106483) bm!219533))

(assert (= (or b!3106478 b!3106482) bm!219534))

(assert (= (or b!3106484 bm!219534) bm!219535))

(declare-fun m!3403011 () Bool)

(assert (=> bm!219533 m!3403011))

(declare-fun m!3403013 () Bool)

(assert (=> bm!219535 m!3403013))

(declare-fun m!3403015 () Bool)

(assert (=> b!3106486 m!3403015))

(assert (=> b!3105927 d!861422))

(declare-fun b!3106491 () Bool)

(declare-fun e!1940888 () Bool)

(declare-fun tp!975594 () Bool)

(assert (=> b!3106491 (= e!1940888 (and tp_is_empty!16717 tp!975594))))

(assert (=> b!3105918 (= tp!975553 e!1940888)))

(assert (= (and b!3105918 ((_ is Cons!35318) (t!234507 s!11993))) b!3106491))

(declare-fun b!3106502 () Bool)

(declare-fun e!1940891 () Bool)

(assert (=> b!3106502 (= e!1940891 tp_is_empty!16717)))

(declare-fun b!3106505 () Bool)

(declare-fun tp!975606 () Bool)

(declare-fun tp!975609 () Bool)

(assert (=> b!3106505 (= e!1940891 (and tp!975606 tp!975609))))

(declare-fun b!3106503 () Bool)

(declare-fun tp!975607 () Bool)

(declare-fun tp!975605 () Bool)

(assert (=> b!3106503 (= e!1940891 (and tp!975607 tp!975605))))

(assert (=> b!3105923 (= tp!975549 e!1940891)))

(declare-fun b!3106504 () Bool)

(declare-fun tp!975608 () Bool)

(assert (=> b!3106504 (= e!1940891 tp!975608)))

(assert (= (and b!3105923 ((_ is ElementMatch!9577) (regOne!19667 r!17423))) b!3106502))

(assert (= (and b!3105923 ((_ is Concat!14898) (regOne!19667 r!17423))) b!3106503))

(assert (= (and b!3105923 ((_ is Star!9577) (regOne!19667 r!17423))) b!3106504))

(assert (= (and b!3105923 ((_ is Union!9577) (regOne!19667 r!17423))) b!3106505))

(declare-fun b!3106506 () Bool)

(declare-fun e!1940892 () Bool)

(assert (=> b!3106506 (= e!1940892 tp_is_empty!16717)))

(declare-fun b!3106509 () Bool)

(declare-fun tp!975611 () Bool)

(declare-fun tp!975614 () Bool)

(assert (=> b!3106509 (= e!1940892 (and tp!975611 tp!975614))))

(declare-fun b!3106507 () Bool)

(declare-fun tp!975612 () Bool)

(declare-fun tp!975610 () Bool)

(assert (=> b!3106507 (= e!1940892 (and tp!975612 tp!975610))))

(assert (=> b!3105923 (= tp!975550 e!1940892)))

(declare-fun b!3106508 () Bool)

(declare-fun tp!975613 () Bool)

(assert (=> b!3106508 (= e!1940892 tp!975613)))

(assert (= (and b!3105923 ((_ is ElementMatch!9577) (regTwo!19667 r!17423))) b!3106506))

(assert (= (and b!3105923 ((_ is Concat!14898) (regTwo!19667 r!17423))) b!3106507))

(assert (= (and b!3105923 ((_ is Star!9577) (regTwo!19667 r!17423))) b!3106508))

(assert (= (and b!3105923 ((_ is Union!9577) (regTwo!19667 r!17423))) b!3106509))

(declare-fun b!3106510 () Bool)

(declare-fun e!1940893 () Bool)

(assert (=> b!3106510 (= e!1940893 tp_is_empty!16717)))

(declare-fun b!3106513 () Bool)

(declare-fun tp!975616 () Bool)

(declare-fun tp!975619 () Bool)

(assert (=> b!3106513 (= e!1940893 (and tp!975616 tp!975619))))

(declare-fun b!3106511 () Bool)

(declare-fun tp!975617 () Bool)

(declare-fun tp!975615 () Bool)

(assert (=> b!3106511 (= e!1940893 (and tp!975617 tp!975615))))

(assert (=> b!3105919 (= tp!975552 e!1940893)))

(declare-fun b!3106512 () Bool)

(declare-fun tp!975618 () Bool)

(assert (=> b!3106512 (= e!1940893 tp!975618)))

(assert (= (and b!3105919 ((_ is ElementMatch!9577) (regOne!19666 r!17423))) b!3106510))

(assert (= (and b!3105919 ((_ is Concat!14898) (regOne!19666 r!17423))) b!3106511))

(assert (= (and b!3105919 ((_ is Star!9577) (regOne!19666 r!17423))) b!3106512))

(assert (= (and b!3105919 ((_ is Union!9577) (regOne!19666 r!17423))) b!3106513))

(declare-fun b!3106514 () Bool)

(declare-fun e!1940894 () Bool)

(assert (=> b!3106514 (= e!1940894 tp_is_empty!16717)))

(declare-fun b!3106517 () Bool)

(declare-fun tp!975621 () Bool)

(declare-fun tp!975624 () Bool)

(assert (=> b!3106517 (= e!1940894 (and tp!975621 tp!975624))))

(declare-fun b!3106515 () Bool)

(declare-fun tp!975622 () Bool)

(declare-fun tp!975620 () Bool)

(assert (=> b!3106515 (= e!1940894 (and tp!975622 tp!975620))))

(assert (=> b!3105919 (= tp!975551 e!1940894)))

(declare-fun b!3106516 () Bool)

(declare-fun tp!975623 () Bool)

(assert (=> b!3106516 (= e!1940894 tp!975623)))

(assert (= (and b!3105919 ((_ is ElementMatch!9577) (regTwo!19666 r!17423))) b!3106514))

(assert (= (and b!3105919 ((_ is Concat!14898) (regTwo!19666 r!17423))) b!3106515))

(assert (= (and b!3105919 ((_ is Star!9577) (regTwo!19666 r!17423))) b!3106516))

(assert (= (and b!3105919 ((_ is Union!9577) (regTwo!19666 r!17423))) b!3106517))

(declare-fun b!3106518 () Bool)

(declare-fun e!1940895 () Bool)

(assert (=> b!3106518 (= e!1940895 tp_is_empty!16717)))

(declare-fun b!3106521 () Bool)

(declare-fun tp!975626 () Bool)

(declare-fun tp!975629 () Bool)

(assert (=> b!3106521 (= e!1940895 (and tp!975626 tp!975629))))

(declare-fun b!3106519 () Bool)

(declare-fun tp!975627 () Bool)

(declare-fun tp!975625 () Bool)

(assert (=> b!3106519 (= e!1940895 (and tp!975627 tp!975625))))

(assert (=> b!3105926 (= tp!975548 e!1940895)))

(declare-fun b!3106520 () Bool)

(declare-fun tp!975628 () Bool)

(assert (=> b!3106520 (= e!1940895 tp!975628)))

(assert (= (and b!3105926 ((_ is ElementMatch!9577) (reg!9906 r!17423))) b!3106518))

(assert (= (and b!3105926 ((_ is Concat!14898) (reg!9906 r!17423))) b!3106519))

(assert (= (and b!3105926 ((_ is Star!9577) (reg!9906 r!17423))) b!3106520))

(assert (= (and b!3105926 ((_ is Union!9577) (reg!9906 r!17423))) b!3106521))

(check-sat (not b!3106138) (not b!3106134) (not bm!219472) (not bm!219453) (not b!3106188) (not b!3106464) (not bm!219448) (not d!861374) (not d!861420) (not b!3106142) (not b!3106468) (not bm!219463) (not b!3106477) (not b!3106516) (not bm!219531) (not b!3106197) (not bm!219459) (not b!3106161) (not b!3106519) (not b!3106470) (not bm!219462) (not bm!219473) (not b!3106505) tp_is_empty!16717 (not b!3106504) (not b!3106147) (not bm!219446) (not b!3106521) (not d!861384) (not b!3106140) (not bm!219535) (not bm!219451) (not b!3106509) (not bm!219532) (not bm!219533) (not b!3106082) (not b!3106508) (not b!3106148) (not b!3106486) (not bm!219458) (not bm!219475) (not d!861418) (not b!3106517) (not b!3106515) (not b!3106454) (not b!3106146) (not b!3106152) (not b!3106101) (not bm!219530) (not b!3106507) (not b!3106513) (not b!3106160) (not d!861390) (not b!3106503) (not b!3106491) (not b!3106476) (not bm!219454) (not b!3106452) (not bm!219452) (not b!3106512) (not b!3106037) (not b!3106472) (not b!3106520) (not d!861386) (not b!3106511) (not b!3106054) (not b!3106154) (not bm!219455) (not b!3106156) (not bm!219447) (not d!861388) (not bm!219470))
(check-sat)
