; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666818 () Bool)

(assert start!666818)

(declare-fun b!6945883 () Bool)

(declare-fun res!2833567 () Bool)

(declare-fun e!4177967 () Bool)

(assert (=> b!6945883 (=> (not res!2833567) (not e!4177967))))

(declare-datatypes ((C!34232 0))(
  ( (C!34233 (val!26818 Int)) )
))
(declare-datatypes ((Regex!16981 0))(
  ( (ElementMatch!16981 (c!1288679 C!34232)) (Concat!25826 (regOne!34474 Regex!16981) (regTwo!34474 Regex!16981)) (EmptyExpr!16981) (Star!16981 (reg!17310 Regex!16981)) (EmptyLang!16981) (Union!16981 (regOne!34475 Regex!16981) (regTwo!34475 Regex!16981)) )
))
(declare-fun rInner!765 () Regex!16981)

(declare-datatypes ((List!66734 0))(
  ( (Nil!66610) (Cons!66610 (h!73058 C!34232) (t!380477 List!66734)) )
))
(declare-datatypes ((tuple2!67676 0))(
  ( (tuple2!67677 (_1!37141 List!66734) (_2!37141 List!66734)) )
))
(declare-fun cut!43 () tuple2!67676)

(declare-fun matchR!9118 (Regex!16981 List!66734) Bool)

(assert (=> b!6945883 (= res!2833567 (matchR!9118 rInner!765 (_1!37141 cut!43)))))

(declare-fun b!6945884 () Bool)

(declare-fun e!4177966 () Bool)

(declare-fun tp_is_empty!43187 () Bool)

(declare-fun tp!1914552 () Bool)

(assert (=> b!6945884 (= e!4177966 (and tp_is_empty!43187 tp!1914552))))

(declare-fun b!6945885 () Bool)

(declare-fun res!2833566 () Bool)

(assert (=> b!6945885 (=> (not res!2833566) (not e!4177967))))

(declare-fun nullable!6794 (Regex!16981) Bool)

(assert (=> b!6945885 (= res!2833566 (not (nullable!6794 rInner!765)))))

(declare-fun res!2833568 () Bool)

(assert (=> start!666818 (=> (not res!2833568) (not e!4177967))))

(declare-fun validRegex!8687 (Regex!16981) Bool)

(assert (=> start!666818 (= res!2833568 (validRegex!8687 rInner!765))))

(assert (=> start!666818 e!4177967))

(declare-fun e!4177968 () Bool)

(assert (=> start!666818 e!4177968))

(declare-fun e!4177970 () Bool)

(assert (=> start!666818 (and e!4177970 e!4177966)))

(declare-fun e!4177969 () Bool)

(assert (=> start!666818 e!4177969))

(declare-fun b!6945886 () Bool)

(declare-fun tp!1914550 () Bool)

(assert (=> b!6945886 (= e!4177969 (and tp_is_empty!43187 tp!1914550))))

(declare-fun b!6945887 () Bool)

(declare-fun res!2833565 () Bool)

(assert (=> b!6945887 (=> (not res!2833565) (not e!4177967))))

(declare-fun s!10388 () List!66734)

(declare-fun ++!15020 (List!66734 List!66734) List!66734)

(assert (=> b!6945887 (= res!2833565 (= (++!15020 (_1!37141 cut!43) (_2!37141 cut!43)) s!10388))))

(declare-fun b!6945888 () Bool)

(declare-fun tp!1914555 () Bool)

(declare-fun tp!1914553 () Bool)

(assert (=> b!6945888 (= e!4177968 (and tp!1914555 tp!1914553))))

(declare-fun b!6945889 () Bool)

(assert (=> b!6945889 (= e!4177968 tp_is_empty!43187)))

(declare-fun b!6945890 () Bool)

(assert (=> b!6945890 (= e!4177967 (not (validRegex!8687 (Star!16981 rInner!765))))))

(declare-fun b!6945891 () Bool)

(declare-fun tp!1914557 () Bool)

(assert (=> b!6945891 (= e!4177970 (and tp_is_empty!43187 tp!1914557))))

(declare-fun b!6945892 () Bool)

(declare-fun tp!1914551 () Bool)

(declare-fun tp!1914556 () Bool)

(assert (=> b!6945892 (= e!4177968 (and tp!1914551 tp!1914556))))

(declare-fun b!6945893 () Bool)

(declare-fun tp!1914554 () Bool)

(assert (=> b!6945893 (= e!4177968 tp!1914554)))

(assert (= (and start!666818 res!2833568) b!6945885))

(assert (= (and b!6945885 res!2833566) b!6945887))

(assert (= (and b!6945887 res!2833565) b!6945883))

(assert (= (and b!6945883 res!2833567) b!6945890))

(get-info :version)

(assert (= (and start!666818 ((_ is ElementMatch!16981) rInner!765)) b!6945889))

(assert (= (and start!666818 ((_ is Concat!25826) rInner!765)) b!6945892))

(assert (= (and start!666818 ((_ is Star!16981) rInner!765)) b!6945893))

(assert (= (and start!666818 ((_ is Union!16981) rInner!765)) b!6945888))

(assert (= (and start!666818 ((_ is Cons!66610) (_1!37141 cut!43))) b!6945891))

(assert (= (and start!666818 ((_ is Cons!66610) (_2!37141 cut!43))) b!6945884))

(assert (= (and start!666818 ((_ is Cons!66610) s!10388)) b!6945886))

(declare-fun m!7650310 () Bool)

(assert (=> b!6945885 m!7650310))

(declare-fun m!7650312 () Bool)

(assert (=> b!6945887 m!7650312))

(declare-fun m!7650314 () Bool)

(assert (=> start!666818 m!7650314))

(declare-fun m!7650316 () Bool)

(assert (=> b!6945883 m!7650316))

(declare-fun m!7650318 () Bool)

(assert (=> b!6945890 m!7650318))

(check-sat (not start!666818) tp_is_empty!43187 (not b!6945887) (not b!6945891) (not b!6945888) (not b!6945885) (not b!6945890) (not b!6945884) (not b!6945886) (not b!6945893) (not b!6945883) (not b!6945892))
(check-sat)
(get-model)

(declare-fun b!6945940 () Bool)

(declare-fun e!4178004 () Bool)

(declare-fun derivativeStep!5466 (Regex!16981 C!34232) Regex!16981)

(declare-fun head!13919 (List!66734) C!34232)

(declare-fun tail!12971 (List!66734) List!66734)

(assert (=> b!6945940 (= e!4178004 (matchR!9118 (derivativeStep!5466 rInner!765 (head!13919 (_1!37141 cut!43))) (tail!12971 (_1!37141 cut!43))))))

(declare-fun b!6945941 () Bool)

(declare-fun e!4178000 () Bool)

(declare-fun e!4178001 () Bool)

(assert (=> b!6945941 (= e!4178000 e!4178001)))

(declare-fun res!2833595 () Bool)

(assert (=> b!6945941 (=> res!2833595 e!4178001)))

(declare-fun call!630934 () Bool)

(assert (=> b!6945941 (= res!2833595 call!630934)))

(declare-fun b!6945942 () Bool)

(declare-fun e!4177999 () Bool)

(assert (=> b!6945942 (= e!4177999 e!4178000)))

(declare-fun res!2833598 () Bool)

(assert (=> b!6945942 (=> (not res!2833598) (not e!4178000))))

(declare-fun lt!2477344 () Bool)

(assert (=> b!6945942 (= res!2833598 (not lt!2477344))))

(declare-fun b!6945944 () Bool)

(declare-fun e!4178005 () Bool)

(assert (=> b!6945944 (= e!4178005 (= lt!2477344 call!630934))))

(declare-fun bm!630929 () Bool)

(declare-fun isEmpty!38884 (List!66734) Bool)

(assert (=> bm!630929 (= call!630934 (isEmpty!38884 (_1!37141 cut!43)))))

(declare-fun b!6945945 () Bool)

(declare-fun e!4178002 () Bool)

(assert (=> b!6945945 (= e!4178002 (= (head!13919 (_1!37141 cut!43)) (c!1288679 rInner!765)))))

(declare-fun b!6945946 () Bool)

(declare-fun res!2833602 () Bool)

(assert (=> b!6945946 (=> res!2833602 e!4178001)))

(assert (=> b!6945946 (= res!2833602 (not (isEmpty!38884 (tail!12971 (_1!37141 cut!43)))))))

(declare-fun b!6945947 () Bool)

(declare-fun res!2833601 () Bool)

(assert (=> b!6945947 (=> (not res!2833601) (not e!4178002))))

(assert (=> b!6945947 (= res!2833601 (not call!630934))))

(declare-fun b!6945948 () Bool)

(assert (=> b!6945948 (= e!4178001 (not (= (head!13919 (_1!37141 cut!43)) (c!1288679 rInner!765))))))

(declare-fun b!6945949 () Bool)

(declare-fun e!4178003 () Bool)

(assert (=> b!6945949 (= e!4178005 e!4178003)))

(declare-fun c!1288691 () Bool)

(assert (=> b!6945949 (= c!1288691 ((_ is EmptyLang!16981) rInner!765))))

(declare-fun b!6945950 () Bool)

(assert (=> b!6945950 (= e!4178003 (not lt!2477344))))

(declare-fun b!6945951 () Bool)

(assert (=> b!6945951 (= e!4178004 (nullable!6794 rInner!765))))

(declare-fun b!6945943 () Bool)

(declare-fun res!2833596 () Bool)

(assert (=> b!6945943 (=> res!2833596 e!4177999)))

(assert (=> b!6945943 (= res!2833596 (not ((_ is ElementMatch!16981) rInner!765)))))

(assert (=> b!6945943 (= e!4178003 e!4177999)))

(declare-fun d!2168666 () Bool)

(assert (=> d!2168666 e!4178005))

(declare-fun c!1288690 () Bool)

(assert (=> d!2168666 (= c!1288690 ((_ is EmptyExpr!16981) rInner!765))))

(assert (=> d!2168666 (= lt!2477344 e!4178004)))

(declare-fun c!1288692 () Bool)

(assert (=> d!2168666 (= c!1288692 (isEmpty!38884 (_1!37141 cut!43)))))

(assert (=> d!2168666 (validRegex!8687 rInner!765)))

(assert (=> d!2168666 (= (matchR!9118 rInner!765 (_1!37141 cut!43)) lt!2477344)))

(declare-fun b!6945952 () Bool)

(declare-fun res!2833597 () Bool)

(assert (=> b!6945952 (=> (not res!2833597) (not e!4178002))))

(assert (=> b!6945952 (= res!2833597 (isEmpty!38884 (tail!12971 (_1!37141 cut!43))))))

(declare-fun b!6945953 () Bool)

(declare-fun res!2833600 () Bool)

(assert (=> b!6945953 (=> res!2833600 e!4177999)))

(assert (=> b!6945953 (= res!2833600 e!4178002)))

(declare-fun res!2833599 () Bool)

(assert (=> b!6945953 (=> (not res!2833599) (not e!4178002))))

(assert (=> b!6945953 (= res!2833599 lt!2477344)))

(assert (= (and d!2168666 c!1288692) b!6945951))

(assert (= (and d!2168666 (not c!1288692)) b!6945940))

(assert (= (and d!2168666 c!1288690) b!6945944))

(assert (= (and d!2168666 (not c!1288690)) b!6945949))

(assert (= (and b!6945949 c!1288691) b!6945950))

(assert (= (and b!6945949 (not c!1288691)) b!6945943))

(assert (= (and b!6945943 (not res!2833596)) b!6945953))

(assert (= (and b!6945953 res!2833599) b!6945947))

(assert (= (and b!6945947 res!2833601) b!6945952))

(assert (= (and b!6945952 res!2833597) b!6945945))

(assert (= (and b!6945953 (not res!2833600)) b!6945942))

(assert (= (and b!6945942 res!2833598) b!6945941))

(assert (= (and b!6945941 (not res!2833595)) b!6945946))

(assert (= (and b!6945946 (not res!2833602)) b!6945948))

(assert (= (or b!6945944 b!6945941 b!6945947) bm!630929))

(declare-fun m!7650320 () Bool)

(assert (=> b!6945946 m!7650320))

(assert (=> b!6945946 m!7650320))

(declare-fun m!7650322 () Bool)

(assert (=> b!6945946 m!7650322))

(assert (=> b!6945952 m!7650320))

(assert (=> b!6945952 m!7650320))

(assert (=> b!6945952 m!7650322))

(declare-fun m!7650324 () Bool)

(assert (=> b!6945940 m!7650324))

(assert (=> b!6945940 m!7650324))

(declare-fun m!7650326 () Bool)

(assert (=> b!6945940 m!7650326))

(assert (=> b!6945940 m!7650320))

(assert (=> b!6945940 m!7650326))

(assert (=> b!6945940 m!7650320))

(declare-fun m!7650328 () Bool)

(assert (=> b!6945940 m!7650328))

(declare-fun m!7650330 () Bool)

(assert (=> bm!630929 m!7650330))

(assert (=> d!2168666 m!7650330))

(assert (=> d!2168666 m!7650314))

(assert (=> b!6945945 m!7650324))

(assert (=> b!6945948 m!7650324))

(assert (=> b!6945951 m!7650310))

(assert (=> b!6945883 d!2168666))

(declare-fun d!2168670 () Bool)

(declare-fun nullableFct!2540 (Regex!16981) Bool)

(assert (=> d!2168670 (= (nullable!6794 rInner!765) (nullableFct!2540 rInner!765))))

(declare-fun bs!1857388 () Bool)

(assert (= bs!1857388 d!2168670))

(declare-fun m!7650332 () Bool)

(assert (=> bs!1857388 m!7650332))

(assert (=> b!6945885 d!2168670))

(declare-fun c!1288701 () Bool)

(declare-fun c!1288702 () Bool)

(declare-fun call!630949 () Bool)

(declare-fun bm!630942 () Bool)

(assert (=> bm!630942 (= call!630949 (validRegex!8687 (ite c!1288701 (reg!17310 (Star!16981 rInner!765)) (ite c!1288702 (regOne!34475 (Star!16981 rInner!765)) (regTwo!34474 (Star!16981 rInner!765))))))))

(declare-fun b!6945990 () Bool)

(declare-fun e!4178036 () Bool)

(declare-fun e!4178034 () Bool)

(assert (=> b!6945990 (= e!4178036 e!4178034)))

(assert (=> b!6945990 (= c!1288702 ((_ is Union!16981) (Star!16981 rInner!765)))))

(declare-fun b!6945991 () Bool)

(declare-fun e!4178038 () Bool)

(assert (=> b!6945991 (= e!4178036 e!4178038)))

(declare-fun res!2833625 () Bool)

(assert (=> b!6945991 (= res!2833625 (not (nullable!6794 (reg!17310 (Star!16981 rInner!765)))))))

(assert (=> b!6945991 (=> (not res!2833625) (not e!4178038))))

(declare-fun b!6945992 () Bool)

(declare-fun res!2833627 () Bool)

(declare-fun e!4178037 () Bool)

(assert (=> b!6945992 (=> (not res!2833627) (not e!4178037))))

(declare-fun call!630948 () Bool)

(assert (=> b!6945992 (= res!2833627 call!630948)))

(assert (=> b!6945992 (= e!4178034 e!4178037)))

(declare-fun b!6945993 () Bool)

(declare-fun e!4178039 () Bool)

(assert (=> b!6945993 (= e!4178039 call!630948)))

(declare-fun d!2168672 () Bool)

(declare-fun res!2833624 () Bool)

(declare-fun e!4178035 () Bool)

(assert (=> d!2168672 (=> res!2833624 e!4178035)))

(assert (=> d!2168672 (= res!2833624 ((_ is ElementMatch!16981) (Star!16981 rInner!765)))))

(assert (=> d!2168672 (= (validRegex!8687 (Star!16981 rInner!765)) e!4178035)))

(declare-fun b!6945994 () Bool)

(assert (=> b!6945994 (= e!4178035 e!4178036)))

(assert (=> b!6945994 (= c!1288701 ((_ is Star!16981) (Star!16981 rInner!765)))))

(declare-fun bm!630943 () Bool)

(assert (=> bm!630943 (= call!630948 call!630949)))

(declare-fun b!6945995 () Bool)

(declare-fun res!2833623 () Bool)

(declare-fun e!4178040 () Bool)

(assert (=> b!6945995 (=> res!2833623 e!4178040)))

(assert (=> b!6945995 (= res!2833623 (not ((_ is Concat!25826) (Star!16981 rInner!765))))))

(assert (=> b!6945995 (= e!4178034 e!4178040)))

(declare-fun bm!630944 () Bool)

(declare-fun call!630947 () Bool)

(assert (=> bm!630944 (= call!630947 (validRegex!8687 (ite c!1288702 (regTwo!34475 (Star!16981 rInner!765)) (regOne!34474 (Star!16981 rInner!765)))))))

(declare-fun b!6945996 () Bool)

(assert (=> b!6945996 (= e!4178037 call!630947)))

(declare-fun b!6945997 () Bool)

(assert (=> b!6945997 (= e!4178038 call!630949)))

(declare-fun b!6945998 () Bool)

(assert (=> b!6945998 (= e!4178040 e!4178039)))

(declare-fun res!2833626 () Bool)

(assert (=> b!6945998 (=> (not res!2833626) (not e!4178039))))

(assert (=> b!6945998 (= res!2833626 call!630947)))

(assert (= (and d!2168672 (not res!2833624)) b!6945994))

(assert (= (and b!6945994 c!1288701) b!6945991))

(assert (= (and b!6945994 (not c!1288701)) b!6945990))

(assert (= (and b!6945991 res!2833625) b!6945997))

(assert (= (and b!6945990 c!1288702) b!6945992))

(assert (= (and b!6945990 (not c!1288702)) b!6945995))

(assert (= (and b!6945992 res!2833627) b!6945996))

(assert (= (and b!6945995 (not res!2833623)) b!6945998))

(assert (= (and b!6945998 res!2833626) b!6945993))

(assert (= (or b!6945992 b!6945993) bm!630943))

(assert (= (or b!6945996 b!6945998) bm!630944))

(assert (= (or b!6945997 bm!630943) bm!630942))

(declare-fun m!7650348 () Bool)

(assert (=> bm!630942 m!7650348))

(declare-fun m!7650350 () Bool)

(assert (=> b!6945991 m!7650350))

(declare-fun m!7650352 () Bool)

(assert (=> bm!630944 m!7650352))

(assert (=> b!6945890 d!2168672))

(declare-fun call!630952 () Bool)

(declare-fun bm!630945 () Bool)

(declare-fun c!1288704 () Bool)

(declare-fun c!1288703 () Bool)

(assert (=> bm!630945 (= call!630952 (validRegex!8687 (ite c!1288703 (reg!17310 rInner!765) (ite c!1288704 (regOne!34475 rInner!765) (regTwo!34474 rInner!765)))))))

(declare-fun b!6945999 () Bool)

(declare-fun e!4178043 () Bool)

(declare-fun e!4178041 () Bool)

(assert (=> b!6945999 (= e!4178043 e!4178041)))

(assert (=> b!6945999 (= c!1288704 ((_ is Union!16981) rInner!765))))

(declare-fun b!6946000 () Bool)

(declare-fun e!4178045 () Bool)

(assert (=> b!6946000 (= e!4178043 e!4178045)))

(declare-fun res!2833630 () Bool)

(assert (=> b!6946000 (= res!2833630 (not (nullable!6794 (reg!17310 rInner!765))))))

(assert (=> b!6946000 (=> (not res!2833630) (not e!4178045))))

(declare-fun b!6946001 () Bool)

(declare-fun res!2833632 () Bool)

(declare-fun e!4178044 () Bool)

(assert (=> b!6946001 (=> (not res!2833632) (not e!4178044))))

(declare-fun call!630951 () Bool)

(assert (=> b!6946001 (= res!2833632 call!630951)))

(assert (=> b!6946001 (= e!4178041 e!4178044)))

(declare-fun b!6946002 () Bool)

(declare-fun e!4178046 () Bool)

(assert (=> b!6946002 (= e!4178046 call!630951)))

(declare-fun d!2168680 () Bool)

(declare-fun res!2833629 () Bool)

(declare-fun e!4178042 () Bool)

(assert (=> d!2168680 (=> res!2833629 e!4178042)))

(assert (=> d!2168680 (= res!2833629 ((_ is ElementMatch!16981) rInner!765))))

(assert (=> d!2168680 (= (validRegex!8687 rInner!765) e!4178042)))

(declare-fun b!6946003 () Bool)

(assert (=> b!6946003 (= e!4178042 e!4178043)))

(assert (=> b!6946003 (= c!1288703 ((_ is Star!16981) rInner!765))))

(declare-fun bm!630946 () Bool)

(assert (=> bm!630946 (= call!630951 call!630952)))

(declare-fun b!6946004 () Bool)

(declare-fun res!2833628 () Bool)

(declare-fun e!4178047 () Bool)

(assert (=> b!6946004 (=> res!2833628 e!4178047)))

(assert (=> b!6946004 (= res!2833628 (not ((_ is Concat!25826) rInner!765)))))

(assert (=> b!6946004 (= e!4178041 e!4178047)))

(declare-fun bm!630947 () Bool)

(declare-fun call!630950 () Bool)

(assert (=> bm!630947 (= call!630950 (validRegex!8687 (ite c!1288704 (regTwo!34475 rInner!765) (regOne!34474 rInner!765))))))

(declare-fun b!6946005 () Bool)

(assert (=> b!6946005 (= e!4178044 call!630950)))

(declare-fun b!6946006 () Bool)

(assert (=> b!6946006 (= e!4178045 call!630952)))

(declare-fun b!6946007 () Bool)

(assert (=> b!6946007 (= e!4178047 e!4178046)))

(declare-fun res!2833631 () Bool)

(assert (=> b!6946007 (=> (not res!2833631) (not e!4178046))))

(assert (=> b!6946007 (= res!2833631 call!630950)))

(assert (= (and d!2168680 (not res!2833629)) b!6946003))

(assert (= (and b!6946003 c!1288703) b!6946000))

(assert (= (and b!6946003 (not c!1288703)) b!6945999))

(assert (= (and b!6946000 res!2833630) b!6946006))

(assert (= (and b!6945999 c!1288704) b!6946001))

(assert (= (and b!6945999 (not c!1288704)) b!6946004))

(assert (= (and b!6946001 res!2833632) b!6946005))

(assert (= (and b!6946004 (not res!2833628)) b!6946007))

(assert (= (and b!6946007 res!2833631) b!6946002))

(assert (= (or b!6946001 b!6946002) bm!630946))

(assert (= (or b!6946005 b!6946007) bm!630947))

(assert (= (or b!6946006 bm!630946) bm!630945))

(declare-fun m!7650354 () Bool)

(assert (=> bm!630945 m!7650354))

(declare-fun m!7650356 () Bool)

(assert (=> b!6946000 m!7650356))

(declare-fun m!7650358 () Bool)

(assert (=> bm!630947 m!7650358))

(assert (=> start!666818 d!2168680))

(declare-fun b!6946023 () Bool)

(declare-fun e!4178055 () Bool)

(declare-fun lt!2477349 () List!66734)

(assert (=> b!6946023 (= e!4178055 (or (not (= (_2!37141 cut!43) Nil!66610)) (= lt!2477349 (_1!37141 cut!43))))))

(declare-fun b!6946021 () Bool)

(declare-fun e!4178054 () List!66734)

(assert (=> b!6946021 (= e!4178054 (Cons!66610 (h!73058 (_1!37141 cut!43)) (++!15020 (t!380477 (_1!37141 cut!43)) (_2!37141 cut!43))))))

(declare-fun b!6946020 () Bool)

(assert (=> b!6946020 (= e!4178054 (_2!37141 cut!43))))

(declare-fun d!2168682 () Bool)

(assert (=> d!2168682 e!4178055))

(declare-fun res!2833637 () Bool)

(assert (=> d!2168682 (=> (not res!2833637) (not e!4178055))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13113 (List!66734) (InoxSet C!34232))

(assert (=> d!2168682 (= res!2833637 (= (content!13113 lt!2477349) ((_ map or) (content!13113 (_1!37141 cut!43)) (content!13113 (_2!37141 cut!43)))))))

(assert (=> d!2168682 (= lt!2477349 e!4178054)))

(declare-fun c!1288709 () Bool)

(assert (=> d!2168682 (= c!1288709 ((_ is Nil!66610) (_1!37141 cut!43)))))

(assert (=> d!2168682 (= (++!15020 (_1!37141 cut!43) (_2!37141 cut!43)) lt!2477349)))

(declare-fun b!6946022 () Bool)

(declare-fun res!2833638 () Bool)

(assert (=> b!6946022 (=> (not res!2833638) (not e!4178055))))

(declare-fun size!40810 (List!66734) Int)

(assert (=> b!6946022 (= res!2833638 (= (size!40810 lt!2477349) (+ (size!40810 (_1!37141 cut!43)) (size!40810 (_2!37141 cut!43)))))))

(assert (= (and d!2168682 c!1288709) b!6946020))

(assert (= (and d!2168682 (not c!1288709)) b!6946021))

(assert (= (and d!2168682 res!2833637) b!6946022))

(assert (= (and b!6946022 res!2833638) b!6946023))

(declare-fun m!7650360 () Bool)

(assert (=> b!6946021 m!7650360))

(declare-fun m!7650362 () Bool)

(assert (=> d!2168682 m!7650362))

(declare-fun m!7650364 () Bool)

(assert (=> d!2168682 m!7650364))

(declare-fun m!7650366 () Bool)

(assert (=> d!2168682 m!7650366))

(declare-fun m!7650368 () Bool)

(assert (=> b!6946022 m!7650368))

(declare-fun m!7650370 () Bool)

(assert (=> b!6946022 m!7650370))

(declare-fun m!7650372 () Bool)

(assert (=> b!6946022 m!7650372))

(assert (=> b!6945887 d!2168682))

(declare-fun b!6946039 () Bool)

(declare-fun e!4178060 () Bool)

(declare-fun tp!1914568 () Bool)

(declare-fun tp!1914571 () Bool)

(assert (=> b!6946039 (= e!4178060 (and tp!1914568 tp!1914571))))

(assert (=> b!6945888 (= tp!1914555 e!4178060)))

(declare-fun b!6946040 () Bool)

(declare-fun tp!1914570 () Bool)

(assert (=> b!6946040 (= e!4178060 tp!1914570)))

(declare-fun b!6946041 () Bool)

(declare-fun tp!1914569 () Bool)

(declare-fun tp!1914572 () Bool)

(assert (=> b!6946041 (= e!4178060 (and tp!1914569 tp!1914572))))

(declare-fun b!6946038 () Bool)

(assert (=> b!6946038 (= e!4178060 tp_is_empty!43187)))

(assert (= (and b!6945888 ((_ is ElementMatch!16981) (regOne!34475 rInner!765))) b!6946038))

(assert (= (and b!6945888 ((_ is Concat!25826) (regOne!34475 rInner!765))) b!6946039))

(assert (= (and b!6945888 ((_ is Star!16981) (regOne!34475 rInner!765))) b!6946040))

(assert (= (and b!6945888 ((_ is Union!16981) (regOne!34475 rInner!765))) b!6946041))

(declare-fun b!6946043 () Bool)

(declare-fun e!4178061 () Bool)

(declare-fun tp!1914573 () Bool)

(declare-fun tp!1914576 () Bool)

(assert (=> b!6946043 (= e!4178061 (and tp!1914573 tp!1914576))))

(assert (=> b!6945888 (= tp!1914553 e!4178061)))

(declare-fun b!6946044 () Bool)

(declare-fun tp!1914575 () Bool)

(assert (=> b!6946044 (= e!4178061 tp!1914575)))

(declare-fun b!6946045 () Bool)

(declare-fun tp!1914574 () Bool)

(declare-fun tp!1914577 () Bool)

(assert (=> b!6946045 (= e!4178061 (and tp!1914574 tp!1914577))))

(declare-fun b!6946042 () Bool)

(assert (=> b!6946042 (= e!4178061 tp_is_empty!43187)))

(assert (= (and b!6945888 ((_ is ElementMatch!16981) (regTwo!34475 rInner!765))) b!6946042))

(assert (= (and b!6945888 ((_ is Concat!25826) (regTwo!34475 rInner!765))) b!6946043))

(assert (= (and b!6945888 ((_ is Star!16981) (regTwo!34475 rInner!765))) b!6946044))

(assert (= (and b!6945888 ((_ is Union!16981) (regTwo!34475 rInner!765))) b!6946045))

(declare-fun b!6946047 () Bool)

(declare-fun e!4178062 () Bool)

(declare-fun tp!1914578 () Bool)

(declare-fun tp!1914581 () Bool)

(assert (=> b!6946047 (= e!4178062 (and tp!1914578 tp!1914581))))

(assert (=> b!6945893 (= tp!1914554 e!4178062)))

(declare-fun b!6946048 () Bool)

(declare-fun tp!1914580 () Bool)

(assert (=> b!6946048 (= e!4178062 tp!1914580)))

(declare-fun b!6946049 () Bool)

(declare-fun tp!1914579 () Bool)

(declare-fun tp!1914582 () Bool)

(assert (=> b!6946049 (= e!4178062 (and tp!1914579 tp!1914582))))

(declare-fun b!6946046 () Bool)

(assert (=> b!6946046 (= e!4178062 tp_is_empty!43187)))

(assert (= (and b!6945893 ((_ is ElementMatch!16981) (reg!17310 rInner!765))) b!6946046))

(assert (= (and b!6945893 ((_ is Concat!25826) (reg!17310 rInner!765))) b!6946047))

(assert (= (and b!6945893 ((_ is Star!16981) (reg!17310 rInner!765))) b!6946048))

(assert (= (and b!6945893 ((_ is Union!16981) (reg!17310 rInner!765))) b!6946049))

(declare-fun b!6946054 () Bool)

(declare-fun e!4178065 () Bool)

(declare-fun tp!1914585 () Bool)

(assert (=> b!6946054 (= e!4178065 (and tp_is_empty!43187 tp!1914585))))

(assert (=> b!6945884 (= tp!1914552 e!4178065)))

(assert (= (and b!6945884 ((_ is Cons!66610) (t!380477 (_2!37141 cut!43)))) b!6946054))

(declare-fun b!6946055 () Bool)

(declare-fun e!4178066 () Bool)

(declare-fun tp!1914586 () Bool)

(assert (=> b!6946055 (= e!4178066 (and tp_is_empty!43187 tp!1914586))))

(assert (=> b!6945891 (= tp!1914557 e!4178066)))

(assert (= (and b!6945891 ((_ is Cons!66610) (t!380477 (_1!37141 cut!43)))) b!6946055))

(declare-fun b!6946057 () Bool)

(declare-fun e!4178067 () Bool)

(declare-fun tp!1914587 () Bool)

(declare-fun tp!1914590 () Bool)

(assert (=> b!6946057 (= e!4178067 (and tp!1914587 tp!1914590))))

(assert (=> b!6945892 (= tp!1914551 e!4178067)))

(declare-fun b!6946058 () Bool)

(declare-fun tp!1914589 () Bool)

(assert (=> b!6946058 (= e!4178067 tp!1914589)))

(declare-fun b!6946059 () Bool)

(declare-fun tp!1914588 () Bool)

(declare-fun tp!1914591 () Bool)

(assert (=> b!6946059 (= e!4178067 (and tp!1914588 tp!1914591))))

(declare-fun b!6946056 () Bool)

(assert (=> b!6946056 (= e!4178067 tp_is_empty!43187)))

(assert (= (and b!6945892 ((_ is ElementMatch!16981) (regOne!34474 rInner!765))) b!6946056))

(assert (= (and b!6945892 ((_ is Concat!25826) (regOne!34474 rInner!765))) b!6946057))

(assert (= (and b!6945892 ((_ is Star!16981) (regOne!34474 rInner!765))) b!6946058))

(assert (= (and b!6945892 ((_ is Union!16981) (regOne!34474 rInner!765))) b!6946059))

(declare-fun b!6946061 () Bool)

(declare-fun e!4178068 () Bool)

(declare-fun tp!1914592 () Bool)

(declare-fun tp!1914595 () Bool)

(assert (=> b!6946061 (= e!4178068 (and tp!1914592 tp!1914595))))

(assert (=> b!6945892 (= tp!1914556 e!4178068)))

(declare-fun b!6946062 () Bool)

(declare-fun tp!1914594 () Bool)

(assert (=> b!6946062 (= e!4178068 tp!1914594)))

(declare-fun b!6946063 () Bool)

(declare-fun tp!1914593 () Bool)

(declare-fun tp!1914596 () Bool)

(assert (=> b!6946063 (= e!4178068 (and tp!1914593 tp!1914596))))

(declare-fun b!6946060 () Bool)

(assert (=> b!6946060 (= e!4178068 tp_is_empty!43187)))

(assert (= (and b!6945892 ((_ is ElementMatch!16981) (regTwo!34474 rInner!765))) b!6946060))

(assert (= (and b!6945892 ((_ is Concat!25826) (regTwo!34474 rInner!765))) b!6946061))

(assert (= (and b!6945892 ((_ is Star!16981) (regTwo!34474 rInner!765))) b!6946062))

(assert (= (and b!6945892 ((_ is Union!16981) (regTwo!34474 rInner!765))) b!6946063))

(declare-fun b!6946064 () Bool)

(declare-fun e!4178069 () Bool)

(declare-fun tp!1914597 () Bool)

(assert (=> b!6946064 (= e!4178069 (and tp_is_empty!43187 tp!1914597))))

(assert (=> b!6945886 (= tp!1914550 e!4178069)))

(assert (= (and b!6945886 ((_ is Cons!66610) (t!380477 s!10388))) b!6946064))

(check-sat (not d!2168666) (not b!6946044) (not b!6946039) (not bm!630942) (not b!6946022) (not b!6946043) (not b!6946061) (not b!6945952) (not b!6946049) (not b!6946048) (not b!6946045) (not b!6946054) (not bm!630945) (not b!6945991) (not d!2168670) (not b!6946057) (not b!6946055) (not b!6945946) (not d!2168682) (not b!6946041) (not bm!630947) (not b!6946063) (not b!6946062) tp_is_empty!43187 (not b!6946059) (not b!6946047) (not bm!630944) (not b!6945948) (not b!6946064) (not b!6946058) (not b!6945940) (not b!6946000) (not b!6946040) (not bm!630929) (not b!6946021) (not b!6945951) (not b!6945945))
(check-sat)
