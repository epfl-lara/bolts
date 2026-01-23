; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282726 () Bool)

(assert start!282726)

(declare-fun res!1199982 () Bool)

(declare-fun e!1834140 () Bool)

(assert (=> start!282726 (=> (not res!1199982) (not e!1834140))))

(declare-datatypes ((C!17960 0))(
  ( (C!17961 (val!11014 Int)) )
))
(declare-datatypes ((Regex!8889 0))(
  ( (ElementMatch!8889 (c!473436 C!17960)) (Concat!14210 (regOne!18290 Regex!8889) (regTwo!18290 Regex!8889)) (EmptyExpr!8889) (Star!8889 (reg!9218 Regex!8889)) (EmptyLang!8889) (Union!8889 (regOne!18291 Regex!8889) (regTwo!18291 Regex!8889)) )
))
(declare-fun r!19097 () Regex!8889)

(declare-fun validRegex!3662 (Regex!8889) Bool)

(assert (=> start!282726 (= res!1199982 (validRegex!3662 r!19097))))

(assert (=> start!282726 e!1834140))

(declare-fun e!1834141 () Bool)

(assert (=> start!282726 e!1834141))

(declare-fun e!1834143 () Bool)

(assert (=> start!282726 e!1834143))

(declare-fun e!1834142 () Bool)

(assert (=> start!282726 e!1834142))

(declare-fun b!2905358 () Bool)

(declare-fun e!1834139 () Bool)

(declare-datatypes ((List!34690 0))(
  ( (Nil!34566) (Cons!34566 (h!39986 C!17960) (t!233733 List!34690)) )
))
(declare-fun prefix!1456 () List!34690)

(declare-fun size!26370 (List!34690) Int)

(assert (=> b!2905358 (= e!1834139 (>= (size!26370 (t!233733 prefix!1456)) (size!26370 prefix!1456)))))

(declare-fun b!2905359 () Bool)

(declare-fun tp!933082 () Bool)

(declare-fun tp!933080 () Bool)

(assert (=> b!2905359 (= e!1834141 (and tp!933082 tp!933080))))

(declare-fun b!2905360 () Bool)

(declare-fun tp!933079 () Bool)

(assert (=> b!2905360 (= e!1834141 tp!933079)))

(declare-fun b!2905361 () Bool)

(assert (=> b!2905361 (= e!1834140 e!1834139)))

(declare-fun res!1199983 () Bool)

(assert (=> b!2905361 (=> (not res!1199983) (not e!1834139))))

(declare-fun lt!1022482 () Regex!8889)

(assert (=> b!2905361 (= res!1199983 (validRegex!3662 lt!1022482))))

(declare-fun derivativeStep!2396 (Regex!8889 C!17960) Regex!8889)

(assert (=> b!2905361 (= lt!1022482 (derivativeStep!2396 r!19097 (h!39986 prefix!1456)))))

(declare-fun b!2905362 () Bool)

(declare-fun tp_is_empty!15365 () Bool)

(declare-fun tp!933081 () Bool)

(assert (=> b!2905362 (= e!1834143 (and tp_is_empty!15365 tp!933081))))

(declare-fun b!2905363 () Bool)

(declare-fun res!1199978 () Bool)

(assert (=> b!2905363 (=> (not res!1199978) (not e!1834140))))

(get-info :version)

(assert (=> b!2905363 (= res!1199978 (not ((_ is Nil!34566) prefix!1456)))))

(declare-fun b!2905364 () Bool)

(declare-fun tp!933078 () Bool)

(declare-fun tp!933077 () Bool)

(assert (=> b!2905364 (= e!1834141 (and tp!933078 tp!933077))))

(declare-fun b!2905365 () Bool)

(declare-fun res!1199979 () Bool)

(assert (=> b!2905365 (=> (not res!1199979) (not e!1834140))))

(declare-fun prefixMatch!947 (Regex!8889 List!34690) Bool)

(assert (=> b!2905365 (= res!1199979 (not (prefixMatch!947 r!19097 prefix!1456)))))

(declare-fun b!2905366 () Bool)

(assert (=> b!2905366 (= e!1834141 tp_is_empty!15365)))

(declare-fun b!2905367 () Bool)

(declare-fun tp!933083 () Bool)

(assert (=> b!2905367 (= e!1834142 (and tp_is_empty!15365 tp!933083))))

(declare-fun b!2905368 () Bool)

(declare-fun res!1199980 () Bool)

(assert (=> b!2905368 (=> (not res!1199980) (not e!1834139))))

(declare-fun s!13418 () List!34690)

(declare-fun isPrefix!2726 (List!34690 List!34690) Bool)

(declare-fun tail!4650 (List!34690) List!34690)

(assert (=> b!2905368 (= res!1199980 (isPrefix!2726 (t!233733 prefix!1456) (tail!4650 s!13418)))))

(declare-fun b!2905369 () Bool)

(declare-fun res!1199981 () Bool)

(assert (=> b!2905369 (=> (not res!1199981) (not e!1834139))))

(assert (=> b!2905369 (= res!1199981 (not (prefixMatch!947 lt!1022482 (t!233733 prefix!1456))))))

(declare-fun b!2905370 () Bool)

(declare-fun res!1199977 () Bool)

(assert (=> b!2905370 (=> (not res!1199977) (not e!1834140))))

(assert (=> b!2905370 (= res!1199977 (isPrefix!2726 prefix!1456 s!13418))))

(assert (= (and start!282726 res!1199982) b!2905370))

(assert (= (and b!2905370 res!1199977) b!2905365))

(assert (= (and b!2905365 res!1199979) b!2905363))

(assert (= (and b!2905363 res!1199978) b!2905361))

(assert (= (and b!2905361 res!1199983) b!2905368))

(assert (= (and b!2905368 res!1199980) b!2905369))

(assert (= (and b!2905369 res!1199981) b!2905358))

(assert (= (and start!282726 ((_ is ElementMatch!8889) r!19097)) b!2905366))

(assert (= (and start!282726 ((_ is Concat!14210) r!19097)) b!2905359))

(assert (= (and start!282726 ((_ is Star!8889) r!19097)) b!2905360))

(assert (= (and start!282726 ((_ is Union!8889) r!19097)) b!2905364))

(assert (= (and start!282726 ((_ is Cons!34566) prefix!1456)) b!2905362))

(assert (= (and start!282726 ((_ is Cons!34566) s!13418)) b!2905367))

(declare-fun m!3307859 () Bool)

(assert (=> b!2905368 m!3307859))

(assert (=> b!2905368 m!3307859))

(declare-fun m!3307861 () Bool)

(assert (=> b!2905368 m!3307861))

(declare-fun m!3307863 () Bool)

(assert (=> start!282726 m!3307863))

(declare-fun m!3307865 () Bool)

(assert (=> b!2905358 m!3307865))

(declare-fun m!3307867 () Bool)

(assert (=> b!2905358 m!3307867))

(declare-fun m!3307869 () Bool)

(assert (=> b!2905361 m!3307869))

(declare-fun m!3307871 () Bool)

(assert (=> b!2905361 m!3307871))

(declare-fun m!3307873 () Bool)

(assert (=> b!2905369 m!3307873))

(declare-fun m!3307875 () Bool)

(assert (=> b!2905370 m!3307875))

(declare-fun m!3307877 () Bool)

(assert (=> b!2905365 m!3307877))

(check-sat (not b!2905368) tp_is_empty!15365 (not b!2905369) (not b!2905370) (not b!2905365) (not b!2905361) (not b!2905358) (not b!2905362) (not b!2905364) (not b!2905359) (not b!2905360) (not start!282726) (not b!2905367))
(check-sat)
(get-model)

(declare-fun d!835994 () Bool)

(declare-fun c!473443 () Bool)

(declare-fun isEmpty!18877 (List!34690) Bool)

(assert (=> d!835994 (= c!473443 (isEmpty!18877 (t!233733 prefix!1456)))))

(declare-fun e!1834160 () Bool)

(assert (=> d!835994 (= (prefixMatch!947 lt!1022482 (t!233733 prefix!1456)) e!1834160)))

(declare-fun b!2905393 () Bool)

(declare-fun lostCause!867 (Regex!8889) Bool)

(assert (=> b!2905393 (= e!1834160 (not (lostCause!867 lt!1022482)))))

(declare-fun b!2905394 () Bool)

(declare-fun head!6420 (List!34690) C!17960)

(assert (=> b!2905394 (= e!1834160 (prefixMatch!947 (derivativeStep!2396 lt!1022482 (head!6420 (t!233733 prefix!1456))) (tail!4650 (t!233733 prefix!1456))))))

(assert (= (and d!835994 c!473443) b!2905393))

(assert (= (and d!835994 (not c!473443)) b!2905394))

(declare-fun m!3307879 () Bool)

(assert (=> d!835994 m!3307879))

(declare-fun m!3307881 () Bool)

(assert (=> b!2905393 m!3307881))

(declare-fun m!3307883 () Bool)

(assert (=> b!2905394 m!3307883))

(assert (=> b!2905394 m!3307883))

(declare-fun m!3307885 () Bool)

(assert (=> b!2905394 m!3307885))

(declare-fun m!3307887 () Bool)

(assert (=> b!2905394 m!3307887))

(assert (=> b!2905394 m!3307885))

(assert (=> b!2905394 m!3307887))

(declare-fun m!3307889 () Bool)

(assert (=> b!2905394 m!3307889))

(assert (=> b!2905369 d!835994))

(declare-fun b!2905412 () Bool)

(declare-fun e!1834175 () Bool)

(declare-fun e!1834176 () Bool)

(assert (=> b!2905412 (= e!1834175 e!1834176)))

(declare-fun res!1200007 () Bool)

(assert (=> b!2905412 (=> (not res!1200007) (not e!1834176))))

(assert (=> b!2905412 (= res!1200007 (not ((_ is Nil!34566) s!13418)))))

(declare-fun b!2905413 () Bool)

(declare-fun res!1200008 () Bool)

(assert (=> b!2905413 (=> (not res!1200008) (not e!1834176))))

(assert (=> b!2905413 (= res!1200008 (= (head!6420 prefix!1456) (head!6420 s!13418)))))

(declare-fun d!835996 () Bool)

(declare-fun e!1834174 () Bool)

(assert (=> d!835996 e!1834174))

(declare-fun res!1200010 () Bool)

(assert (=> d!835996 (=> res!1200010 e!1834174)))

(declare-fun lt!1022485 () Bool)

(assert (=> d!835996 (= res!1200010 (not lt!1022485))))

(assert (=> d!835996 (= lt!1022485 e!1834175)))

(declare-fun res!1200009 () Bool)

(assert (=> d!835996 (=> res!1200009 e!1834175)))

(assert (=> d!835996 (= res!1200009 ((_ is Nil!34566) prefix!1456))))

(assert (=> d!835996 (= (isPrefix!2726 prefix!1456 s!13418) lt!1022485)))

(declare-fun b!2905414 () Bool)

(assert (=> b!2905414 (= e!1834176 (isPrefix!2726 (tail!4650 prefix!1456) (tail!4650 s!13418)))))

(declare-fun b!2905415 () Bool)

(assert (=> b!2905415 (= e!1834174 (>= (size!26370 s!13418) (size!26370 prefix!1456)))))

(assert (= (and d!835996 (not res!1200009)) b!2905412))

(assert (= (and b!2905412 res!1200007) b!2905413))

(assert (= (and b!2905413 res!1200008) b!2905414))

(assert (= (and d!835996 (not res!1200010)) b!2905415))

(declare-fun m!3307897 () Bool)

(assert (=> b!2905413 m!3307897))

(declare-fun m!3307899 () Bool)

(assert (=> b!2905413 m!3307899))

(declare-fun m!3307901 () Bool)

(assert (=> b!2905414 m!3307901))

(assert (=> b!2905414 m!3307859))

(assert (=> b!2905414 m!3307901))

(assert (=> b!2905414 m!3307859))

(declare-fun m!3307903 () Bool)

(assert (=> b!2905414 m!3307903))

(declare-fun m!3307905 () Bool)

(assert (=> b!2905415 m!3307905))

(assert (=> b!2905415 m!3307867))

(assert (=> b!2905370 d!835996))

(declare-fun b!2905416 () Bool)

(declare-fun e!1834178 () Bool)

(declare-fun e!1834179 () Bool)

(assert (=> b!2905416 (= e!1834178 e!1834179)))

(declare-fun res!1200011 () Bool)

(assert (=> b!2905416 (=> (not res!1200011) (not e!1834179))))

(assert (=> b!2905416 (= res!1200011 (not ((_ is Nil!34566) (tail!4650 s!13418))))))

(declare-fun b!2905417 () Bool)

(declare-fun res!1200012 () Bool)

(assert (=> b!2905417 (=> (not res!1200012) (not e!1834179))))

(assert (=> b!2905417 (= res!1200012 (= (head!6420 (t!233733 prefix!1456)) (head!6420 (tail!4650 s!13418))))))

(declare-fun d!836000 () Bool)

(declare-fun e!1834177 () Bool)

(assert (=> d!836000 e!1834177))

(declare-fun res!1200014 () Bool)

(assert (=> d!836000 (=> res!1200014 e!1834177)))

(declare-fun lt!1022486 () Bool)

(assert (=> d!836000 (= res!1200014 (not lt!1022486))))

(assert (=> d!836000 (= lt!1022486 e!1834178)))

(declare-fun res!1200013 () Bool)

(assert (=> d!836000 (=> res!1200013 e!1834178)))

(assert (=> d!836000 (= res!1200013 ((_ is Nil!34566) (t!233733 prefix!1456)))))

(assert (=> d!836000 (= (isPrefix!2726 (t!233733 prefix!1456) (tail!4650 s!13418)) lt!1022486)))

(declare-fun b!2905418 () Bool)

(assert (=> b!2905418 (= e!1834179 (isPrefix!2726 (tail!4650 (t!233733 prefix!1456)) (tail!4650 (tail!4650 s!13418))))))

(declare-fun b!2905419 () Bool)

(assert (=> b!2905419 (= e!1834177 (>= (size!26370 (tail!4650 s!13418)) (size!26370 (t!233733 prefix!1456))))))

(assert (= (and d!836000 (not res!1200013)) b!2905416))

(assert (= (and b!2905416 res!1200011) b!2905417))

(assert (= (and b!2905417 res!1200012) b!2905418))

(assert (= (and d!836000 (not res!1200014)) b!2905419))

(assert (=> b!2905417 m!3307883))

(assert (=> b!2905417 m!3307859))

(declare-fun m!3307907 () Bool)

(assert (=> b!2905417 m!3307907))

(assert (=> b!2905418 m!3307887))

(assert (=> b!2905418 m!3307859))

(declare-fun m!3307909 () Bool)

(assert (=> b!2905418 m!3307909))

(assert (=> b!2905418 m!3307887))

(assert (=> b!2905418 m!3307909))

(declare-fun m!3307911 () Bool)

(assert (=> b!2905418 m!3307911))

(assert (=> b!2905419 m!3307859))

(declare-fun m!3307913 () Bool)

(assert (=> b!2905419 m!3307913))

(assert (=> b!2905419 m!3307865))

(assert (=> b!2905368 d!836000))

(declare-fun d!836002 () Bool)

(assert (=> d!836002 (= (tail!4650 s!13418) (t!233733 s!13418))))

(assert (=> b!2905368 d!836002))

(declare-fun d!836004 () Bool)

(declare-fun lt!1022491 () Int)

(assert (=> d!836004 (>= lt!1022491 0)))

(declare-fun e!1834192 () Int)

(assert (=> d!836004 (= lt!1022491 e!1834192)))

(declare-fun c!473458 () Bool)

(assert (=> d!836004 (= c!473458 ((_ is Nil!34566) (t!233733 prefix!1456)))))

(assert (=> d!836004 (= (size!26370 (t!233733 prefix!1456)) lt!1022491)))

(declare-fun b!2905444 () Bool)

(assert (=> b!2905444 (= e!1834192 0)))

(declare-fun b!2905445 () Bool)

(assert (=> b!2905445 (= e!1834192 (+ 1 (size!26370 (t!233733 (t!233733 prefix!1456)))))))

(assert (= (and d!836004 c!473458) b!2905444))

(assert (= (and d!836004 (not c!473458)) b!2905445))

(declare-fun m!3307915 () Bool)

(assert (=> b!2905445 m!3307915))

(assert (=> b!2905358 d!836004))

(declare-fun d!836006 () Bool)

(declare-fun lt!1022492 () Int)

(assert (=> d!836006 (>= lt!1022492 0)))

(declare-fun e!1834193 () Int)

(assert (=> d!836006 (= lt!1022492 e!1834193)))

(declare-fun c!473459 () Bool)

(assert (=> d!836006 (= c!473459 ((_ is Nil!34566) prefix!1456))))

(assert (=> d!836006 (= (size!26370 prefix!1456) lt!1022492)))

(declare-fun b!2905446 () Bool)

(assert (=> b!2905446 (= e!1834193 0)))

(declare-fun b!2905447 () Bool)

(assert (=> b!2905447 (= e!1834193 (+ 1 (size!26370 (t!233733 prefix!1456))))))

(assert (= (and d!836006 c!473459) b!2905446))

(assert (= (and d!836006 (not c!473459)) b!2905447))

(assert (=> b!2905447 m!3307865))

(assert (=> b!2905358 d!836006))

(declare-fun bm!189547 () Bool)

(declare-fun call!189553 () Bool)

(declare-fun c!473470 () Bool)

(assert (=> bm!189547 (= call!189553 (validRegex!3662 (ite c!473470 (regTwo!18291 lt!1022482) (regTwo!18290 lt!1022482))))))

(declare-fun bm!189548 () Bool)

(declare-fun call!189552 () Bool)

(declare-fun call!189554 () Bool)

(assert (=> bm!189548 (= call!189552 call!189554)))

(declare-fun b!2905476 () Bool)

(declare-fun e!1834216 () Bool)

(declare-fun e!1834214 () Bool)

(assert (=> b!2905476 (= e!1834216 e!1834214)))

(declare-fun res!1200028 () Bool)

(assert (=> b!2905476 (=> (not res!1200028) (not e!1834214))))

(assert (=> b!2905476 (= res!1200028 call!189552)))

(declare-fun d!836008 () Bool)

(declare-fun res!1200026 () Bool)

(declare-fun e!1834213 () Bool)

(assert (=> d!836008 (=> res!1200026 e!1834213)))

(assert (=> d!836008 (= res!1200026 ((_ is ElementMatch!8889) lt!1022482))))

(assert (=> d!836008 (= (validRegex!3662 lt!1022482) e!1834213)))

(declare-fun b!2905477 () Bool)

(declare-fun res!1200029 () Bool)

(assert (=> b!2905477 (=> res!1200029 e!1834216)))

(assert (=> b!2905477 (= res!1200029 (not ((_ is Concat!14210) lt!1022482)))))

(declare-fun e!1834217 () Bool)

(assert (=> b!2905477 (= e!1834217 e!1834216)))

(declare-fun b!2905478 () Bool)

(assert (=> b!2905478 (= e!1834214 call!189553)))

(declare-fun b!2905479 () Bool)

(declare-fun e!1834219 () Bool)

(assert (=> b!2905479 (= e!1834219 call!189553)))

(declare-fun c!473469 () Bool)

(declare-fun bm!189549 () Bool)

(assert (=> bm!189549 (= call!189554 (validRegex!3662 (ite c!473469 (reg!9218 lt!1022482) (ite c!473470 (regOne!18291 lt!1022482) (regOne!18290 lt!1022482)))))))

(declare-fun b!2905480 () Bool)

(declare-fun e!1834215 () Bool)

(assert (=> b!2905480 (= e!1834215 e!1834217)))

(assert (=> b!2905480 (= c!473470 ((_ is Union!8889) lt!1022482))))

(declare-fun b!2905481 () Bool)

(assert (=> b!2905481 (= e!1834213 e!1834215)))

(assert (=> b!2905481 (= c!473469 ((_ is Star!8889) lt!1022482))))

(declare-fun b!2905482 () Bool)

(declare-fun e!1834218 () Bool)

(assert (=> b!2905482 (= e!1834215 e!1834218)))

(declare-fun res!1200025 () Bool)

(declare-fun nullable!2779 (Regex!8889) Bool)

(assert (=> b!2905482 (= res!1200025 (not (nullable!2779 (reg!9218 lt!1022482))))))

(assert (=> b!2905482 (=> (not res!1200025) (not e!1834218))))

(declare-fun b!2905483 () Bool)

(declare-fun res!1200027 () Bool)

(assert (=> b!2905483 (=> (not res!1200027) (not e!1834219))))

(assert (=> b!2905483 (= res!1200027 call!189552)))

(assert (=> b!2905483 (= e!1834217 e!1834219)))

(declare-fun b!2905484 () Bool)

(assert (=> b!2905484 (= e!1834218 call!189554)))

(assert (= (and d!836008 (not res!1200026)) b!2905481))

(assert (= (and b!2905481 c!473469) b!2905482))

(assert (= (and b!2905481 (not c!473469)) b!2905480))

(assert (= (and b!2905482 res!1200025) b!2905484))

(assert (= (and b!2905480 c!473470) b!2905483))

(assert (= (and b!2905480 (not c!473470)) b!2905477))

(assert (= (and b!2905483 res!1200027) b!2905479))

(assert (= (and b!2905477 (not res!1200029)) b!2905476))

(assert (= (and b!2905476 res!1200028) b!2905478))

(assert (= (or b!2905483 b!2905476) bm!189548))

(assert (= (or b!2905479 b!2905478) bm!189547))

(assert (= (or b!2905484 bm!189548) bm!189549))

(declare-fun m!3307925 () Bool)

(assert (=> bm!189547 m!3307925))

(declare-fun m!3307927 () Bool)

(assert (=> bm!189549 m!3307927))

(declare-fun m!3307929 () Bool)

(assert (=> b!2905482 m!3307929))

(assert (=> b!2905361 d!836008))

(declare-fun b!2905544 () Bool)

(declare-fun e!1834258 () Regex!8889)

(declare-fun e!1834260 () Regex!8889)

(assert (=> b!2905544 (= e!1834258 e!1834260)))

(declare-fun c!473490 () Bool)

(assert (=> b!2905544 (= c!473490 ((_ is ElementMatch!8889) r!19097))))

(declare-fun b!2905545 () Bool)

(declare-fun e!1834259 () Regex!8889)

(declare-fun call!189566 () Regex!8889)

(assert (=> b!2905545 (= e!1834259 (Union!8889 (Concat!14210 call!189566 (regTwo!18290 r!19097)) EmptyLang!8889))))

(declare-fun bm!189561 () Bool)

(declare-fun c!473491 () Bool)

(declare-fun call!189569 () Regex!8889)

(declare-fun c!473492 () Bool)

(assert (=> bm!189561 (= call!189569 (derivativeStep!2396 (ite c!473492 (regOne!18291 r!19097) (ite c!473491 (reg!9218 r!19097) (regOne!18290 r!19097))) (h!39986 prefix!1456)))))

(declare-fun b!2905546 () Bool)

(declare-fun e!1834257 () Regex!8889)

(declare-fun call!189568 () Regex!8889)

(assert (=> b!2905546 (= e!1834257 (Union!8889 call!189569 call!189568))))

(declare-fun b!2905547 () Bool)

(declare-fun e!1834256 () Regex!8889)

(declare-fun call!189567 () Regex!8889)

(assert (=> b!2905547 (= e!1834256 (Concat!14210 call!189567 r!19097))))

(declare-fun bm!189562 () Bool)

(assert (=> bm!189562 (= call!189566 call!189567)))

(declare-fun b!2905549 () Bool)

(assert (=> b!2905549 (= e!1834258 EmptyLang!8889)))

(declare-fun bm!189563 () Bool)

(assert (=> bm!189563 (= call!189567 call!189569)))

(declare-fun b!2905548 () Bool)

(assert (=> b!2905548 (= e!1834260 (ite (= (h!39986 prefix!1456) (c!473436 r!19097)) EmptyExpr!8889 EmptyLang!8889))))

(declare-fun d!836012 () Bool)

(declare-fun lt!1022503 () Regex!8889)

(assert (=> d!836012 (validRegex!3662 lt!1022503)))

(assert (=> d!836012 (= lt!1022503 e!1834258)))

(declare-fun c!473493 () Bool)

(assert (=> d!836012 (= c!473493 (or ((_ is EmptyExpr!8889) r!19097) ((_ is EmptyLang!8889) r!19097)))))

(assert (=> d!836012 (validRegex!3662 r!19097)))

(assert (=> d!836012 (= (derivativeStep!2396 r!19097 (h!39986 prefix!1456)) lt!1022503)))

(declare-fun b!2905550 () Bool)

(assert (=> b!2905550 (= e!1834259 (Union!8889 (Concat!14210 call!189566 (regTwo!18290 r!19097)) call!189568))))

(declare-fun bm!189564 () Bool)

(assert (=> bm!189564 (= call!189568 (derivativeStep!2396 (ite c!473492 (regTwo!18291 r!19097) (regTwo!18290 r!19097)) (h!39986 prefix!1456)))))

(declare-fun b!2905551 () Bool)

(declare-fun c!473494 () Bool)

(assert (=> b!2905551 (= c!473494 (nullable!2779 (regOne!18290 r!19097)))))

(assert (=> b!2905551 (= e!1834256 e!1834259)))

(declare-fun b!2905552 () Bool)

(assert (=> b!2905552 (= c!473492 ((_ is Union!8889) r!19097))))

(assert (=> b!2905552 (= e!1834260 e!1834257)))

(declare-fun b!2905553 () Bool)

(assert (=> b!2905553 (= e!1834257 e!1834256)))

(assert (=> b!2905553 (= c!473491 ((_ is Star!8889) r!19097))))

(assert (= (and d!836012 c!473493) b!2905549))

(assert (= (and d!836012 (not c!473493)) b!2905544))

(assert (= (and b!2905544 c!473490) b!2905548))

(assert (= (and b!2905544 (not c!473490)) b!2905552))

(assert (= (and b!2905552 c!473492) b!2905546))

(assert (= (and b!2905552 (not c!473492)) b!2905553))

(assert (= (and b!2905553 c!473491) b!2905547))

(assert (= (and b!2905553 (not c!473491)) b!2905551))

(assert (= (and b!2905551 c!473494) b!2905550))

(assert (= (and b!2905551 (not c!473494)) b!2905545))

(assert (= (or b!2905550 b!2905545) bm!189562))

(assert (= (or b!2905547 bm!189562) bm!189563))

(assert (= (or b!2905546 bm!189563) bm!189561))

(assert (= (or b!2905546 b!2905550) bm!189564))

(declare-fun m!3307977 () Bool)

(assert (=> bm!189561 m!3307977))

(declare-fun m!3307979 () Bool)

(assert (=> d!836012 m!3307979))

(assert (=> d!836012 m!3307863))

(declare-fun m!3307981 () Bool)

(assert (=> bm!189564 m!3307981))

(declare-fun m!3307983 () Bool)

(assert (=> b!2905551 m!3307983))

(assert (=> b!2905361 d!836012))

(declare-fun bm!189565 () Bool)

(declare-fun call!189571 () Bool)

(declare-fun c!473497 () Bool)

(assert (=> bm!189565 (= call!189571 (validRegex!3662 (ite c!473497 (regTwo!18291 r!19097) (regTwo!18290 r!19097))))))

(declare-fun bm!189566 () Bool)

(declare-fun call!189570 () Bool)

(declare-fun call!189572 () Bool)

(assert (=> bm!189566 (= call!189570 call!189572)))

(declare-fun b!2905571 () Bool)

(declare-fun e!1834270 () Bool)

(declare-fun e!1834268 () Bool)

(assert (=> b!2905571 (= e!1834270 e!1834268)))

(declare-fun res!1200054 () Bool)

(assert (=> b!2905571 (=> (not res!1200054) (not e!1834268))))

(assert (=> b!2905571 (= res!1200054 call!189570)))

(declare-fun d!836028 () Bool)

(declare-fun res!1200052 () Bool)

(declare-fun e!1834267 () Bool)

(assert (=> d!836028 (=> res!1200052 e!1834267)))

(assert (=> d!836028 (= res!1200052 ((_ is ElementMatch!8889) r!19097))))

(assert (=> d!836028 (= (validRegex!3662 r!19097) e!1834267)))

(declare-fun b!2905572 () Bool)

(declare-fun res!1200055 () Bool)

(assert (=> b!2905572 (=> res!1200055 e!1834270)))

(assert (=> b!2905572 (= res!1200055 (not ((_ is Concat!14210) r!19097)))))

(declare-fun e!1834271 () Bool)

(assert (=> b!2905572 (= e!1834271 e!1834270)))

(declare-fun b!2905573 () Bool)

(assert (=> b!2905573 (= e!1834268 call!189571)))

(declare-fun b!2905574 () Bool)

(declare-fun e!1834273 () Bool)

(assert (=> b!2905574 (= e!1834273 call!189571)))

(declare-fun c!473496 () Bool)

(declare-fun bm!189567 () Bool)

(assert (=> bm!189567 (= call!189572 (validRegex!3662 (ite c!473496 (reg!9218 r!19097) (ite c!473497 (regOne!18291 r!19097) (regOne!18290 r!19097)))))))

(declare-fun b!2905575 () Bool)

(declare-fun e!1834269 () Bool)

(assert (=> b!2905575 (= e!1834269 e!1834271)))

(assert (=> b!2905575 (= c!473497 ((_ is Union!8889) r!19097))))

(declare-fun b!2905576 () Bool)

(assert (=> b!2905576 (= e!1834267 e!1834269)))

(assert (=> b!2905576 (= c!473496 ((_ is Star!8889) r!19097))))

(declare-fun b!2905577 () Bool)

(declare-fun e!1834272 () Bool)

(assert (=> b!2905577 (= e!1834269 e!1834272)))

(declare-fun res!1200051 () Bool)

(assert (=> b!2905577 (= res!1200051 (not (nullable!2779 (reg!9218 r!19097))))))

(assert (=> b!2905577 (=> (not res!1200051) (not e!1834272))))

(declare-fun b!2905578 () Bool)

(declare-fun res!1200053 () Bool)

(assert (=> b!2905578 (=> (not res!1200053) (not e!1834273))))

(assert (=> b!2905578 (= res!1200053 call!189570)))

(assert (=> b!2905578 (= e!1834271 e!1834273)))

(declare-fun b!2905579 () Bool)

(assert (=> b!2905579 (= e!1834272 call!189572)))

(assert (= (and d!836028 (not res!1200052)) b!2905576))

(assert (= (and b!2905576 c!473496) b!2905577))

(assert (= (and b!2905576 (not c!473496)) b!2905575))

(assert (= (and b!2905577 res!1200051) b!2905579))

(assert (= (and b!2905575 c!473497) b!2905578))

(assert (= (and b!2905575 (not c!473497)) b!2905572))

(assert (= (and b!2905578 res!1200053) b!2905574))

(assert (= (and b!2905572 (not res!1200055)) b!2905571))

(assert (= (and b!2905571 res!1200054) b!2905573))

(assert (= (or b!2905578 b!2905571) bm!189566))

(assert (= (or b!2905574 b!2905573) bm!189565))

(assert (= (or b!2905579 bm!189566) bm!189567))

(declare-fun m!3307985 () Bool)

(assert (=> bm!189565 m!3307985))

(declare-fun m!3307987 () Bool)

(assert (=> bm!189567 m!3307987))

(declare-fun m!3307989 () Bool)

(assert (=> b!2905577 m!3307989))

(assert (=> start!282726 d!836028))

(declare-fun d!836030 () Bool)

(declare-fun c!473498 () Bool)

(assert (=> d!836030 (= c!473498 (isEmpty!18877 prefix!1456))))

(declare-fun e!1834276 () Bool)

(assert (=> d!836030 (= (prefixMatch!947 r!19097 prefix!1456) e!1834276)))

(declare-fun b!2905588 () Bool)

(assert (=> b!2905588 (= e!1834276 (not (lostCause!867 r!19097)))))

(declare-fun b!2905589 () Bool)

(assert (=> b!2905589 (= e!1834276 (prefixMatch!947 (derivativeStep!2396 r!19097 (head!6420 prefix!1456)) (tail!4650 prefix!1456)))))

(assert (= (and d!836030 c!473498) b!2905588))

(assert (= (and d!836030 (not c!473498)) b!2905589))

(declare-fun m!3307991 () Bool)

(assert (=> d!836030 m!3307991))

(declare-fun m!3307993 () Bool)

(assert (=> b!2905588 m!3307993))

(assert (=> b!2905589 m!3307897))

(assert (=> b!2905589 m!3307897))

(declare-fun m!3307995 () Bool)

(assert (=> b!2905589 m!3307995))

(assert (=> b!2905589 m!3307901))

(assert (=> b!2905589 m!3307995))

(assert (=> b!2905589 m!3307901))

(declare-fun m!3307997 () Bool)

(assert (=> b!2905589 m!3307997))

(assert (=> b!2905365 d!836030))

(declare-fun b!2905613 () Bool)

(declare-fun e!1834283 () Bool)

(assert (=> b!2905613 (= e!1834283 tp_is_empty!15365)))

(declare-fun b!2905616 () Bool)

(declare-fun tp!933137 () Bool)

(declare-fun tp!933133 () Bool)

(assert (=> b!2905616 (= e!1834283 (and tp!933137 tp!933133))))

(assert (=> b!2905364 (= tp!933078 e!1834283)))

(declare-fun b!2905614 () Bool)

(declare-fun tp!933134 () Bool)

(declare-fun tp!933136 () Bool)

(assert (=> b!2905614 (= e!1834283 (and tp!933134 tp!933136))))

(declare-fun b!2905615 () Bool)

(declare-fun tp!933135 () Bool)

(assert (=> b!2905615 (= e!1834283 tp!933135)))

(assert (= (and b!2905364 ((_ is ElementMatch!8889) (regOne!18291 r!19097))) b!2905613))

(assert (= (and b!2905364 ((_ is Concat!14210) (regOne!18291 r!19097))) b!2905614))

(assert (= (and b!2905364 ((_ is Star!8889) (regOne!18291 r!19097))) b!2905615))

(assert (= (and b!2905364 ((_ is Union!8889) (regOne!18291 r!19097))) b!2905616))

(declare-fun b!2905617 () Bool)

(declare-fun e!1834284 () Bool)

(assert (=> b!2905617 (= e!1834284 tp_is_empty!15365)))

(declare-fun b!2905620 () Bool)

(declare-fun tp!933142 () Bool)

(declare-fun tp!933138 () Bool)

(assert (=> b!2905620 (= e!1834284 (and tp!933142 tp!933138))))

(assert (=> b!2905364 (= tp!933077 e!1834284)))

(declare-fun b!2905618 () Bool)

(declare-fun tp!933139 () Bool)

(declare-fun tp!933141 () Bool)

(assert (=> b!2905618 (= e!1834284 (and tp!933139 tp!933141))))

(declare-fun b!2905619 () Bool)

(declare-fun tp!933140 () Bool)

(assert (=> b!2905619 (= e!1834284 tp!933140)))

(assert (= (and b!2905364 ((_ is ElementMatch!8889) (regTwo!18291 r!19097))) b!2905617))

(assert (= (and b!2905364 ((_ is Concat!14210) (regTwo!18291 r!19097))) b!2905618))

(assert (= (and b!2905364 ((_ is Star!8889) (regTwo!18291 r!19097))) b!2905619))

(assert (= (and b!2905364 ((_ is Union!8889) (regTwo!18291 r!19097))) b!2905620))

(declare-fun b!2905621 () Bool)

(declare-fun e!1834285 () Bool)

(assert (=> b!2905621 (= e!1834285 tp_is_empty!15365)))

(declare-fun b!2905624 () Bool)

(declare-fun tp!933147 () Bool)

(declare-fun tp!933143 () Bool)

(assert (=> b!2905624 (= e!1834285 (and tp!933147 tp!933143))))

(assert (=> b!2905359 (= tp!933082 e!1834285)))

(declare-fun b!2905622 () Bool)

(declare-fun tp!933144 () Bool)

(declare-fun tp!933146 () Bool)

(assert (=> b!2905622 (= e!1834285 (and tp!933144 tp!933146))))

(declare-fun b!2905623 () Bool)

(declare-fun tp!933145 () Bool)

(assert (=> b!2905623 (= e!1834285 tp!933145)))

(assert (= (and b!2905359 ((_ is ElementMatch!8889) (regOne!18290 r!19097))) b!2905621))

(assert (= (and b!2905359 ((_ is Concat!14210) (regOne!18290 r!19097))) b!2905622))

(assert (= (and b!2905359 ((_ is Star!8889) (regOne!18290 r!19097))) b!2905623))

(assert (= (and b!2905359 ((_ is Union!8889) (regOne!18290 r!19097))) b!2905624))

(declare-fun b!2905625 () Bool)

(declare-fun e!1834286 () Bool)

(assert (=> b!2905625 (= e!1834286 tp_is_empty!15365)))

(declare-fun b!2905628 () Bool)

(declare-fun tp!933152 () Bool)

(declare-fun tp!933148 () Bool)

(assert (=> b!2905628 (= e!1834286 (and tp!933152 tp!933148))))

(assert (=> b!2905359 (= tp!933080 e!1834286)))

(declare-fun b!2905626 () Bool)

(declare-fun tp!933149 () Bool)

(declare-fun tp!933151 () Bool)

(assert (=> b!2905626 (= e!1834286 (and tp!933149 tp!933151))))

(declare-fun b!2905627 () Bool)

(declare-fun tp!933150 () Bool)

(assert (=> b!2905627 (= e!1834286 tp!933150)))

(assert (= (and b!2905359 ((_ is ElementMatch!8889) (regTwo!18290 r!19097))) b!2905625))

(assert (= (and b!2905359 ((_ is Concat!14210) (regTwo!18290 r!19097))) b!2905626))

(assert (= (and b!2905359 ((_ is Star!8889) (regTwo!18290 r!19097))) b!2905627))

(assert (= (and b!2905359 ((_ is Union!8889) (regTwo!18290 r!19097))) b!2905628))

(declare-fun b!2905633 () Bool)

(declare-fun e!1834289 () Bool)

(declare-fun tp!933155 () Bool)

(assert (=> b!2905633 (= e!1834289 (and tp_is_empty!15365 tp!933155))))

(assert (=> b!2905362 (= tp!933081 e!1834289)))

(assert (= (and b!2905362 ((_ is Cons!34566) (t!233733 prefix!1456))) b!2905633))

(declare-fun b!2905634 () Bool)

(declare-fun e!1834290 () Bool)

(declare-fun tp!933156 () Bool)

(assert (=> b!2905634 (= e!1834290 (and tp_is_empty!15365 tp!933156))))

(assert (=> b!2905367 (= tp!933083 e!1834290)))

(assert (= (and b!2905367 ((_ is Cons!34566) (t!233733 s!13418))) b!2905634))

(declare-fun b!2905635 () Bool)

(declare-fun e!1834291 () Bool)

(assert (=> b!2905635 (= e!1834291 tp_is_empty!15365)))

(declare-fun b!2905638 () Bool)

(declare-fun tp!933161 () Bool)

(declare-fun tp!933157 () Bool)

(assert (=> b!2905638 (= e!1834291 (and tp!933161 tp!933157))))

(assert (=> b!2905360 (= tp!933079 e!1834291)))

(declare-fun b!2905636 () Bool)

(declare-fun tp!933158 () Bool)

(declare-fun tp!933160 () Bool)

(assert (=> b!2905636 (= e!1834291 (and tp!933158 tp!933160))))

(declare-fun b!2905637 () Bool)

(declare-fun tp!933159 () Bool)

(assert (=> b!2905637 (= e!1834291 tp!933159)))

(assert (= (and b!2905360 ((_ is ElementMatch!8889) (reg!9218 r!19097))) b!2905635))

(assert (= (and b!2905360 ((_ is Concat!14210) (reg!9218 r!19097))) b!2905636))

(assert (= (and b!2905360 ((_ is Star!8889) (reg!9218 r!19097))) b!2905637))

(assert (= (and b!2905360 ((_ is Union!8889) (reg!9218 r!19097))) b!2905638))

(check-sat (not b!2905634) (not b!2905614) (not bm!189564) (not b!2905623) (not d!835994) (not bm!189549) (not b!2905633) (not d!836012) (not b!2905482) (not b!2905447) (not b!2905445) (not b!2905627) (not bm!189565) (not b!2905577) (not b!2905415) (not b!2905419) (not b!2905620) (not b!2905413) (not b!2905393) (not d!836030) (not b!2905615) tp_is_empty!15365 (not b!2905589) (not b!2905414) (not b!2905551) (not b!2905622) (not b!2905626) (not b!2905394) (not b!2905619) (not bm!189547) (not b!2905588) (not b!2905618) (not b!2905624) (not b!2905636) (not bm!189567) (not b!2905616) (not b!2905418) (not b!2905638) (not b!2905417) (not b!2905628) (not b!2905637) (not bm!189561))
(check-sat)
