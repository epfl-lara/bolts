; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248216 () Bool)

(assert start!248216)

(declare-fun b!2566977 () Bool)

(declare-fun e!1620529 () Bool)

(declare-fun tp!817069 () Bool)

(assert (=> b!2566977 (= e!1620529 tp!817069)))

(declare-fun res!1080092 () Bool)

(declare-fun e!1620530 () Bool)

(assert (=> start!248216 (=> (not res!1080092) (not e!1620530))))

(declare-datatypes ((C!15416 0))(
  ( (C!15417 (val!9360 Int)) )
))
(declare-datatypes ((Regex!7629 0))(
  ( (ElementMatch!7629 (c!412879 C!15416)) (Concat!12325 (regOne!15770 Regex!7629) (regTwo!15770 Regex!7629)) (EmptyExpr!7629) (Star!7629 (reg!7958 Regex!7629)) (EmptyLang!7629) (Union!7629 (regOne!15771 Regex!7629) (regTwo!15771 Regex!7629)) )
))
(declare-fun r!27340 () Regex!7629)

(declare-fun validRegex!3255 (Regex!7629) Bool)

(assert (=> start!248216 (= res!1080092 (validRegex!3255 r!27340))))

(assert (=> start!248216 e!1620530))

(assert (=> start!248216 e!1620529))

(declare-fun tp_is_empty!13113 () Bool)

(assert (=> start!248216 tp_is_empty!13113))

(declare-fun e!1620532 () Bool)

(assert (=> start!248216 e!1620532))

(declare-fun b!2566978 () Bool)

(declare-fun res!1080094 () Bool)

(assert (=> b!2566978 (=> (not res!1080094) (not e!1620530))))

(declare-fun nullable!2546 (Regex!7629) Bool)

(assert (=> b!2566978 (= res!1080094 (not (nullable!2546 (regOne!15770 r!27340))))))

(declare-fun b!2566979 () Bool)

(declare-fun res!1080091 () Bool)

(assert (=> b!2566979 (=> (not res!1080091) (not e!1620530))))

(declare-datatypes ((List!29694 0))(
  ( (Nil!29594) (Cons!29594 (h!35014 C!15416) (t!211393 List!29694)) )
))
(declare-fun tl!4068 () List!29694)

(declare-fun c!14016 () C!15416)

(declare-fun derivative!324 (Regex!7629 List!29694) Regex!7629)

(declare-fun derivativeStep!2198 (Regex!7629 C!15416) Regex!7629)

(assert (=> b!2566979 (= res!1080091 (nullable!2546 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))

(declare-fun b!2566980 () Bool)

(declare-fun tp!817065 () Bool)

(assert (=> b!2566980 (= e!1620532 (and tp_is_empty!13113 tp!817065))))

(declare-fun b!2566981 () Bool)

(declare-fun tp!817068 () Bool)

(declare-fun tp!817066 () Bool)

(assert (=> b!2566981 (= e!1620529 (and tp!817068 tp!817066))))

(declare-fun b!2566982 () Bool)

(declare-fun res!1080090 () Bool)

(assert (=> b!2566982 (=> (not res!1080090) (not e!1620530))))

(get-info :version)

(assert (=> b!2566982 (= res!1080090 (and (not ((_ is EmptyExpr!7629) r!27340)) (not ((_ is EmptyLang!7629) r!27340)) (not ((_ is ElementMatch!7629) r!27340)) (not ((_ is Union!7629) r!27340)) (not ((_ is Star!7629) r!27340))))))

(declare-fun b!2566983 () Bool)

(declare-fun e!1620531 () Bool)

(assert (=> b!2566983 (= e!1620530 (not e!1620531))))

(declare-fun res!1080093 () Bool)

(assert (=> b!2566983 (=> res!1080093 e!1620531)))

(declare-fun lt!905325 () Regex!7629)

(assert (=> b!2566983 (= res!1080093 (not (validRegex!3255 lt!905325)))))

(declare-fun lt!905323 () Bool)

(declare-fun lt!905324 () Regex!7629)

(declare-fun matchR!3572 (Regex!7629 List!29694) Bool)

(assert (=> b!2566983 (= lt!905323 (matchR!3572 lt!905324 Nil!29594))))

(declare-fun lt!905326 () Regex!7629)

(assert (=> b!2566983 (= lt!905323 (matchR!3572 lt!905326 tl!4068))))

(assert (=> b!2566983 (= lt!905324 (derivative!324 lt!905326 tl!4068))))

(declare-datatypes ((Unit!43439 0))(
  ( (Unit!43440) )
))
(declare-fun lt!905322 () Unit!43439)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!218 (Regex!7629 List!29694) Unit!43439)

(assert (=> b!2566983 (= lt!905322 (lemmaMatchRIsSameAsWholeDerivativeAndNil!218 lt!905326 tl!4068))))

(assert (=> b!2566983 (= lt!905326 (Union!7629 lt!905325 EmptyLang!7629))))

(assert (=> b!2566983 (= lt!905325 (Concat!12325 (derivativeStep!2198 (regOne!15770 r!27340) c!14016) (regTwo!15770 r!27340)))))

(declare-fun b!2566984 () Bool)

(assert (=> b!2566984 (= e!1620531 lt!905323)))

(declare-fun b!2566985 () Bool)

(assert (=> b!2566985 (= e!1620529 tp_is_empty!13113)))

(declare-fun b!2566986 () Bool)

(declare-fun tp!817070 () Bool)

(declare-fun tp!817067 () Bool)

(assert (=> b!2566986 (= e!1620529 (and tp!817070 tp!817067))))

(assert (= (and start!248216 res!1080092) b!2566979))

(assert (= (and b!2566979 res!1080091) b!2566982))

(assert (= (and b!2566982 res!1080090) b!2566978))

(assert (= (and b!2566978 res!1080094) b!2566983))

(assert (= (and b!2566983 (not res!1080093)) b!2566984))

(assert (= (and start!248216 ((_ is ElementMatch!7629) r!27340)) b!2566985))

(assert (= (and start!248216 ((_ is Concat!12325) r!27340)) b!2566981))

(assert (= (and start!248216 ((_ is Star!7629) r!27340)) b!2566977))

(assert (= (and start!248216 ((_ is Union!7629) r!27340)) b!2566986))

(assert (= (and start!248216 ((_ is Cons!29594) tl!4068)) b!2566980))

(declare-fun m!2904723 () Bool)

(assert (=> start!248216 m!2904723))

(declare-fun m!2904725 () Bool)

(assert (=> b!2566978 m!2904725))

(declare-fun m!2904727 () Bool)

(assert (=> b!2566979 m!2904727))

(assert (=> b!2566979 m!2904727))

(declare-fun m!2904729 () Bool)

(assert (=> b!2566979 m!2904729))

(assert (=> b!2566979 m!2904729))

(declare-fun m!2904731 () Bool)

(assert (=> b!2566979 m!2904731))

(declare-fun m!2904733 () Bool)

(assert (=> b!2566983 m!2904733))

(declare-fun m!2904735 () Bool)

(assert (=> b!2566983 m!2904735))

(declare-fun m!2904737 () Bool)

(assert (=> b!2566983 m!2904737))

(declare-fun m!2904739 () Bool)

(assert (=> b!2566983 m!2904739))

(declare-fun m!2904741 () Bool)

(assert (=> b!2566983 m!2904741))

(declare-fun m!2904743 () Bool)

(assert (=> b!2566983 m!2904743))

(check-sat (not b!2566977) (not b!2566979) (not start!248216) (not b!2566986) (not b!2566980) (not b!2566981) tp_is_empty!13113 (not b!2566978) (not b!2566983))
(check-sat)
(get-model)

(declare-fun d!726676 () Bool)

(declare-fun nullableFct!770 (Regex!7629) Bool)

(assert (=> d!726676 (= (nullable!2546 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)) (nullableFct!770 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469948 () Bool)

(assert (= bs!469948 d!726676))

(assert (=> bs!469948 m!2904729))

(declare-fun m!2904745 () Bool)

(assert (=> bs!469948 m!2904745))

(assert (=> b!2566979 d!726676))

(declare-fun d!726678 () Bool)

(declare-fun lt!905329 () Regex!7629)

(assert (=> d!726678 (validRegex!3255 lt!905329)))

(declare-fun e!1620535 () Regex!7629)

(assert (=> d!726678 (= lt!905329 e!1620535)))

(declare-fun c!412882 () Bool)

(assert (=> d!726678 (= c!412882 ((_ is Cons!29594) tl!4068))))

(assert (=> d!726678 (validRegex!3255 (derivativeStep!2198 r!27340 c!14016))))

(assert (=> d!726678 (= (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068) lt!905329)))

(declare-fun b!2566991 () Bool)

(assert (=> b!2566991 (= e!1620535 (derivative!324 (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)) (t!211393 tl!4068)))))

(declare-fun b!2566992 () Bool)

(assert (=> b!2566992 (= e!1620535 (derivativeStep!2198 r!27340 c!14016))))

(assert (= (and d!726678 c!412882) b!2566991))

(assert (= (and d!726678 (not c!412882)) b!2566992))

(declare-fun m!2904747 () Bool)

(assert (=> d!726678 m!2904747))

(assert (=> d!726678 m!2904727))

(declare-fun m!2904749 () Bool)

(assert (=> d!726678 m!2904749))

(assert (=> b!2566991 m!2904727))

(declare-fun m!2904751 () Bool)

(assert (=> b!2566991 m!2904751))

(assert (=> b!2566991 m!2904751))

(declare-fun m!2904753 () Bool)

(assert (=> b!2566991 m!2904753))

(assert (=> b!2566979 d!726678))

(declare-fun b!2567046 () Bool)

(declare-fun e!1620572 () Regex!7629)

(assert (=> b!2567046 (= e!1620572 (ite (= c!14016 (c!412879 r!27340)) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567047 () Bool)

(declare-fun c!412902 () Bool)

(assert (=> b!2567047 (= c!412902 (nullable!2546 (regOne!15770 r!27340)))))

(declare-fun e!1620571 () Regex!7629)

(declare-fun e!1620574 () Regex!7629)

(assert (=> b!2567047 (= e!1620571 e!1620574)))

(declare-fun call!165294 () Regex!7629)

(declare-fun b!2567048 () Bool)

(declare-fun call!165293 () Regex!7629)

(assert (=> b!2567048 (= e!1620574 (Union!7629 (Concat!12325 call!165293 (regTwo!15770 r!27340)) call!165294))))

(declare-fun b!2567049 () Bool)

(declare-fun e!1620570 () Regex!7629)

(assert (=> b!2567049 (= e!1620570 e!1620571)))

(declare-fun c!412904 () Bool)

(assert (=> b!2567049 (= c!412904 ((_ is Star!7629) r!27340))))

(declare-fun d!726682 () Bool)

(declare-fun lt!905335 () Regex!7629)

(assert (=> d!726682 (validRegex!3255 lt!905335)))

(declare-fun e!1620573 () Regex!7629)

(assert (=> d!726682 (= lt!905335 e!1620573)))

(declare-fun c!412903 () Bool)

(assert (=> d!726682 (= c!412903 (or ((_ is EmptyExpr!7629) r!27340) ((_ is EmptyLang!7629) r!27340)))))

(assert (=> d!726682 (validRegex!3255 r!27340)))

(assert (=> d!726682 (= (derivativeStep!2198 r!27340 c!14016) lt!905335)))

(declare-fun b!2567050 () Bool)

(assert (=> b!2567050 (= e!1620573 e!1620572)))

(declare-fun c!412906 () Bool)

(assert (=> b!2567050 (= c!412906 ((_ is ElementMatch!7629) r!27340))))

(declare-fun bm!165286 () Bool)

(declare-fun call!165291 () Regex!7629)

(declare-fun c!412905 () Bool)

(assert (=> bm!165286 (= call!165291 (derivativeStep!2198 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))) c!14016))))

(declare-fun b!2567051 () Bool)

(assert (=> b!2567051 (= c!412905 ((_ is Union!7629) r!27340))))

(assert (=> b!2567051 (= e!1620572 e!1620570)))

(declare-fun b!2567052 () Bool)

(assert (=> b!2567052 (= e!1620570 (Union!7629 call!165294 call!165291))))

(declare-fun b!2567053 () Bool)

(assert (=> b!2567053 (= e!1620574 (Union!7629 (Concat!12325 call!165293 (regTwo!15770 r!27340)) EmptyLang!7629))))

(declare-fun bm!165287 () Bool)

(declare-fun call!165292 () Regex!7629)

(assert (=> bm!165287 (= call!165292 call!165291)))

(declare-fun bm!165288 () Bool)

(assert (=> bm!165288 (= call!165294 (derivativeStep!2198 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)) c!14016))))

(declare-fun b!2567054 () Bool)

(assert (=> b!2567054 (= e!1620571 (Concat!12325 call!165292 r!27340))))

(declare-fun bm!165289 () Bool)

(assert (=> bm!165289 (= call!165293 call!165292)))

(declare-fun b!2567055 () Bool)

(assert (=> b!2567055 (= e!1620573 EmptyLang!7629)))

(assert (= (and d!726682 c!412903) b!2567055))

(assert (= (and d!726682 (not c!412903)) b!2567050))

(assert (= (and b!2567050 c!412906) b!2567046))

(assert (= (and b!2567050 (not c!412906)) b!2567051))

(assert (= (and b!2567051 c!412905) b!2567052))

(assert (= (and b!2567051 (not c!412905)) b!2567049))

(assert (= (and b!2567049 c!412904) b!2567054))

(assert (= (and b!2567049 (not c!412904)) b!2567047))

(assert (= (and b!2567047 c!412902) b!2567048))

(assert (= (and b!2567047 (not c!412902)) b!2567053))

(assert (= (or b!2567048 b!2567053) bm!165289))

(assert (= (or b!2567054 bm!165289) bm!165287))

(assert (= (or b!2567052 bm!165287) bm!165286))

(assert (= (or b!2567052 b!2567048) bm!165288))

(assert (=> b!2567047 m!2904725))

(declare-fun m!2904769 () Bool)

(assert (=> d!726682 m!2904769))

(assert (=> d!726682 m!2904723))

(declare-fun m!2904771 () Bool)

(assert (=> bm!165286 m!2904771))

(declare-fun m!2904773 () Bool)

(assert (=> bm!165288 m!2904773))

(assert (=> b!2566979 d!726682))

(declare-fun d!726688 () Bool)

(declare-fun res!1080137 () Bool)

(declare-fun e!1620604 () Bool)

(assert (=> d!726688 (=> res!1080137 e!1620604)))

(assert (=> d!726688 (= res!1080137 ((_ is ElementMatch!7629) r!27340))))

(assert (=> d!726688 (= (validRegex!3255 r!27340) e!1620604)))

(declare-fun b!2567102 () Bool)

(declare-fun res!1080136 () Bool)

(declare-fun e!1620603 () Bool)

(assert (=> b!2567102 (=> (not res!1080136) (not e!1620603))))

(declare-fun call!165305 () Bool)

(assert (=> b!2567102 (= res!1080136 call!165305)))

(declare-fun e!1620606 () Bool)

(assert (=> b!2567102 (= e!1620606 e!1620603)))

(declare-fun b!2567103 () Bool)

(declare-fun e!1620609 () Bool)

(declare-fun e!1620608 () Bool)

(assert (=> b!2567103 (= e!1620609 e!1620608)))

(declare-fun res!1080138 () Bool)

(assert (=> b!2567103 (=> (not res!1080138) (not e!1620608))))

(declare-fun call!165303 () Bool)

(assert (=> b!2567103 (= res!1080138 call!165303)))

(declare-fun bm!165298 () Bool)

(declare-fun call!165304 () Bool)

(assert (=> bm!165298 (= call!165305 call!165304)))

(declare-fun b!2567104 () Bool)

(declare-fun res!1080140 () Bool)

(assert (=> b!2567104 (=> res!1080140 e!1620609)))

(assert (=> b!2567104 (= res!1080140 (not ((_ is Concat!12325) r!27340)))))

(assert (=> b!2567104 (= e!1620606 e!1620609)))

(declare-fun b!2567105 () Bool)

(assert (=> b!2567105 (= e!1620608 call!165305)))

(declare-fun b!2567106 () Bool)

(declare-fun e!1620607 () Bool)

(assert (=> b!2567106 (= e!1620604 e!1620607)))

(declare-fun c!412917 () Bool)

(assert (=> b!2567106 (= c!412917 ((_ is Star!7629) r!27340))))

(declare-fun b!2567107 () Bool)

(assert (=> b!2567107 (= e!1620603 call!165303)))

(declare-fun c!412918 () Bool)

(declare-fun bm!165299 () Bool)

(assert (=> bm!165299 (= call!165304 (validRegex!3255 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(declare-fun b!2567108 () Bool)

(declare-fun e!1620605 () Bool)

(assert (=> b!2567108 (= e!1620605 call!165304)))

(declare-fun b!2567109 () Bool)

(assert (=> b!2567109 (= e!1620607 e!1620606)))

(assert (=> b!2567109 (= c!412918 ((_ is Union!7629) r!27340))))

(declare-fun bm!165300 () Bool)

(assert (=> bm!165300 (= call!165303 (validRegex!3255 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))

(declare-fun b!2567110 () Bool)

(assert (=> b!2567110 (= e!1620607 e!1620605)))

(declare-fun res!1080139 () Bool)

(assert (=> b!2567110 (= res!1080139 (not (nullable!2546 (reg!7958 r!27340))))))

(assert (=> b!2567110 (=> (not res!1080139) (not e!1620605))))

(assert (= (and d!726688 (not res!1080137)) b!2567106))

(assert (= (and b!2567106 c!412917) b!2567110))

(assert (= (and b!2567106 (not c!412917)) b!2567109))

(assert (= (and b!2567110 res!1080139) b!2567108))

(assert (= (and b!2567109 c!412918) b!2567102))

(assert (= (and b!2567109 (not c!412918)) b!2567104))

(assert (= (and b!2567102 res!1080136) b!2567107))

(assert (= (and b!2567104 (not res!1080140)) b!2567103))

(assert (= (and b!2567103 res!1080138) b!2567105))

(assert (= (or b!2567102 b!2567105) bm!165298))

(assert (= (or b!2567107 b!2567103) bm!165300))

(assert (= (or b!2567108 bm!165298) bm!165299))

(declare-fun m!2904775 () Bool)

(assert (=> bm!165299 m!2904775))

(declare-fun m!2904777 () Bool)

(assert (=> bm!165300 m!2904777))

(declare-fun m!2904779 () Bool)

(assert (=> b!2567110 m!2904779))

(assert (=> start!248216 d!726688))

(declare-fun d!726690 () Bool)

(declare-fun res!1080142 () Bool)

(declare-fun e!1620611 () Bool)

(assert (=> d!726690 (=> res!1080142 e!1620611)))

(assert (=> d!726690 (= res!1080142 ((_ is ElementMatch!7629) lt!905325))))

(assert (=> d!726690 (= (validRegex!3255 lt!905325) e!1620611)))

(declare-fun b!2567111 () Bool)

(declare-fun res!1080141 () Bool)

(declare-fun e!1620610 () Bool)

(assert (=> b!2567111 (=> (not res!1080141) (not e!1620610))))

(declare-fun call!165308 () Bool)

(assert (=> b!2567111 (= res!1080141 call!165308)))

(declare-fun e!1620613 () Bool)

(assert (=> b!2567111 (= e!1620613 e!1620610)))

(declare-fun b!2567112 () Bool)

(declare-fun e!1620616 () Bool)

(declare-fun e!1620615 () Bool)

(assert (=> b!2567112 (= e!1620616 e!1620615)))

(declare-fun res!1080143 () Bool)

(assert (=> b!2567112 (=> (not res!1080143) (not e!1620615))))

(declare-fun call!165306 () Bool)

(assert (=> b!2567112 (= res!1080143 call!165306)))

(declare-fun bm!165301 () Bool)

(declare-fun call!165307 () Bool)

(assert (=> bm!165301 (= call!165308 call!165307)))

(declare-fun b!2567113 () Bool)

(declare-fun res!1080145 () Bool)

(assert (=> b!2567113 (=> res!1080145 e!1620616)))

(assert (=> b!2567113 (= res!1080145 (not ((_ is Concat!12325) lt!905325)))))

(assert (=> b!2567113 (= e!1620613 e!1620616)))

(declare-fun b!2567114 () Bool)

(assert (=> b!2567114 (= e!1620615 call!165308)))

(declare-fun b!2567115 () Bool)

(declare-fun e!1620614 () Bool)

(assert (=> b!2567115 (= e!1620611 e!1620614)))

(declare-fun c!412919 () Bool)

(assert (=> b!2567115 (= c!412919 ((_ is Star!7629) lt!905325))))

(declare-fun b!2567116 () Bool)

(assert (=> b!2567116 (= e!1620610 call!165306)))

(declare-fun bm!165302 () Bool)

(declare-fun c!412920 () Bool)

(assert (=> bm!165302 (= call!165307 (validRegex!3255 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))

(declare-fun b!2567117 () Bool)

(declare-fun e!1620612 () Bool)

(assert (=> b!2567117 (= e!1620612 call!165307)))

(declare-fun b!2567118 () Bool)

(assert (=> b!2567118 (= e!1620614 e!1620613)))

(assert (=> b!2567118 (= c!412920 ((_ is Union!7629) lt!905325))))

(declare-fun bm!165303 () Bool)

(assert (=> bm!165303 (= call!165306 (validRegex!3255 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))

(declare-fun b!2567119 () Bool)

(assert (=> b!2567119 (= e!1620614 e!1620612)))

(declare-fun res!1080144 () Bool)

(assert (=> b!2567119 (= res!1080144 (not (nullable!2546 (reg!7958 lt!905325))))))

(assert (=> b!2567119 (=> (not res!1080144) (not e!1620612))))

(assert (= (and d!726690 (not res!1080142)) b!2567115))

(assert (= (and b!2567115 c!412919) b!2567119))

(assert (= (and b!2567115 (not c!412919)) b!2567118))

(assert (= (and b!2567119 res!1080144) b!2567117))

(assert (= (and b!2567118 c!412920) b!2567111))

(assert (= (and b!2567118 (not c!412920)) b!2567113))

(assert (= (and b!2567111 res!1080141) b!2567116))

(assert (= (and b!2567113 (not res!1080145)) b!2567112))

(assert (= (and b!2567112 res!1080143) b!2567114))

(assert (= (or b!2567111 b!2567114) bm!165301))

(assert (= (or b!2567116 b!2567112) bm!165303))

(assert (= (or b!2567117 bm!165301) bm!165302))

(declare-fun m!2904781 () Bool)

(assert (=> bm!165302 m!2904781))

(declare-fun m!2904783 () Bool)

(assert (=> bm!165303 m!2904783))

(declare-fun m!2904785 () Bool)

(assert (=> b!2567119 m!2904785))

(assert (=> b!2566983 d!726690))

(declare-fun b!2567120 () Bool)

(declare-fun e!1620619 () Regex!7629)

(assert (=> b!2567120 (= e!1620619 (ite (= c!14016 (c!412879 (regOne!15770 r!27340))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567121 () Bool)

(declare-fun c!412921 () Bool)

(assert (=> b!2567121 (= c!412921 (nullable!2546 (regOne!15770 (regOne!15770 r!27340))))))

(declare-fun e!1620618 () Regex!7629)

(declare-fun e!1620621 () Regex!7629)

(assert (=> b!2567121 (= e!1620618 e!1620621)))

(declare-fun call!165311 () Regex!7629)

(declare-fun call!165312 () Regex!7629)

(declare-fun b!2567122 () Bool)

(assert (=> b!2567122 (= e!1620621 (Union!7629 (Concat!12325 call!165311 (regTwo!15770 (regOne!15770 r!27340))) call!165312))))

(declare-fun b!2567123 () Bool)

(declare-fun e!1620617 () Regex!7629)

(assert (=> b!2567123 (= e!1620617 e!1620618)))

(declare-fun c!412923 () Bool)

(assert (=> b!2567123 (= c!412923 ((_ is Star!7629) (regOne!15770 r!27340)))))

(declare-fun d!726692 () Bool)

(declare-fun lt!905338 () Regex!7629)

(assert (=> d!726692 (validRegex!3255 lt!905338)))

(declare-fun e!1620620 () Regex!7629)

(assert (=> d!726692 (= lt!905338 e!1620620)))

(declare-fun c!412922 () Bool)

(assert (=> d!726692 (= c!412922 (or ((_ is EmptyExpr!7629) (regOne!15770 r!27340)) ((_ is EmptyLang!7629) (regOne!15770 r!27340))))))

(assert (=> d!726692 (validRegex!3255 (regOne!15770 r!27340))))

(assert (=> d!726692 (= (derivativeStep!2198 (regOne!15770 r!27340) c!14016) lt!905338)))

(declare-fun b!2567124 () Bool)

(assert (=> b!2567124 (= e!1620620 e!1620619)))

(declare-fun c!412925 () Bool)

(assert (=> b!2567124 (= c!412925 ((_ is ElementMatch!7629) (regOne!15770 r!27340)))))

(declare-fun bm!165304 () Bool)

(declare-fun c!412924 () Bool)

(declare-fun call!165309 () Regex!7629)

(assert (=> bm!165304 (= call!165309 (derivativeStep!2198 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))) c!14016))))

(declare-fun b!2567125 () Bool)

(assert (=> b!2567125 (= c!412924 ((_ is Union!7629) (regOne!15770 r!27340)))))

(assert (=> b!2567125 (= e!1620619 e!1620617)))

(declare-fun b!2567126 () Bool)

(assert (=> b!2567126 (= e!1620617 (Union!7629 call!165312 call!165309))))

(declare-fun b!2567127 () Bool)

(assert (=> b!2567127 (= e!1620621 (Union!7629 (Concat!12325 call!165311 (regTwo!15770 (regOne!15770 r!27340))) EmptyLang!7629))))

(declare-fun bm!165305 () Bool)

(declare-fun call!165310 () Regex!7629)

(assert (=> bm!165305 (= call!165310 call!165309)))

(declare-fun bm!165306 () Bool)

(assert (=> bm!165306 (= call!165312 (derivativeStep!2198 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))) c!14016))))

(declare-fun b!2567128 () Bool)

(assert (=> b!2567128 (= e!1620618 (Concat!12325 call!165310 (regOne!15770 r!27340)))))

(declare-fun bm!165307 () Bool)

(assert (=> bm!165307 (= call!165311 call!165310)))

(declare-fun b!2567129 () Bool)

(assert (=> b!2567129 (= e!1620620 EmptyLang!7629)))

(assert (= (and d!726692 c!412922) b!2567129))

(assert (= (and d!726692 (not c!412922)) b!2567124))

(assert (= (and b!2567124 c!412925) b!2567120))

(assert (= (and b!2567124 (not c!412925)) b!2567125))

(assert (= (and b!2567125 c!412924) b!2567126))

(assert (= (and b!2567125 (not c!412924)) b!2567123))

(assert (= (and b!2567123 c!412923) b!2567128))

(assert (= (and b!2567123 (not c!412923)) b!2567121))

(assert (= (and b!2567121 c!412921) b!2567122))

(assert (= (and b!2567121 (not c!412921)) b!2567127))

(assert (= (or b!2567122 b!2567127) bm!165307))

(assert (= (or b!2567128 bm!165307) bm!165305))

(assert (= (or b!2567126 bm!165305) bm!165304))

(assert (= (or b!2567126 b!2567122) bm!165306))

(declare-fun m!2904787 () Bool)

(assert (=> b!2567121 m!2904787))

(declare-fun m!2904789 () Bool)

(assert (=> d!726692 m!2904789))

(declare-fun m!2904791 () Bool)

(assert (=> d!726692 m!2904791))

(declare-fun m!2904793 () Bool)

(assert (=> bm!165304 m!2904793))

(declare-fun m!2904795 () Bool)

(assert (=> bm!165306 m!2904795))

(assert (=> b!2566983 d!726692))

(declare-fun d!726694 () Bool)

(assert (=> d!726694 (= (matchR!3572 lt!905326 tl!4068) (matchR!3572 (derivative!324 lt!905326 tl!4068) Nil!29594))))

(declare-fun lt!905343 () Unit!43439)

(declare-fun choose!15131 (Regex!7629 List!29694) Unit!43439)

(assert (=> d!726694 (= lt!905343 (choose!15131 lt!905326 tl!4068))))

(assert (=> d!726694 (validRegex!3255 lt!905326)))

(assert (=> d!726694 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!218 lt!905326 tl!4068) lt!905343)))

(declare-fun bs!469949 () Bool)

(assert (= bs!469949 d!726694))

(declare-fun m!2904827 () Bool)

(assert (=> bs!469949 m!2904827))

(declare-fun m!2904829 () Bool)

(assert (=> bs!469949 m!2904829))

(assert (=> bs!469949 m!2904743))

(declare-fun m!2904831 () Bool)

(assert (=> bs!469949 m!2904831))

(assert (=> bs!469949 m!2904743))

(assert (=> bs!469949 m!2904739))

(assert (=> b!2566983 d!726694))

(declare-fun b!2567206 () Bool)

(declare-fun e!1620664 () Bool)

(declare-fun lt!905351 () Bool)

(assert (=> b!2567206 (= e!1620664 (not lt!905351))))

(declare-fun b!2567207 () Bool)

(declare-fun e!1620666 () Bool)

(declare-fun head!5834 (List!29694) C!15416)

(assert (=> b!2567207 (= e!1620666 (= (head!5834 tl!4068) (c!412879 lt!905326)))))

(declare-fun b!2567208 () Bool)

(declare-fun res!1080179 () Bool)

(declare-fun e!1620660 () Bool)

(assert (=> b!2567208 (=> res!1080179 e!1620660)))

(assert (=> b!2567208 (= res!1080179 e!1620666)))

(declare-fun res!1080182 () Bool)

(assert (=> b!2567208 (=> (not res!1080182) (not e!1620666))))

(assert (=> b!2567208 (= res!1080182 lt!905351)))

(declare-fun b!2567209 () Bool)

(declare-fun e!1620661 () Bool)

(assert (=> b!2567209 (= e!1620661 (not (= (head!5834 tl!4068) (c!412879 lt!905326))))))

(declare-fun b!2567210 () Bool)

(declare-fun res!1080180 () Bool)

(assert (=> b!2567210 (=> (not res!1080180) (not e!1620666))))

(declare-fun isEmpty!17050 (List!29694) Bool)

(declare-fun tail!4109 (List!29694) List!29694)

(assert (=> b!2567210 (= res!1080180 (isEmpty!17050 (tail!4109 tl!4068)))))

(declare-fun b!2567211 () Bool)

(declare-fun e!1620663 () Bool)

(assert (=> b!2567211 (= e!1620663 e!1620661)))

(declare-fun res!1080178 () Bool)

(assert (=> b!2567211 (=> res!1080178 e!1620661)))

(declare-fun call!165325 () Bool)

(assert (=> b!2567211 (= res!1080178 call!165325)))

(declare-fun b!2567212 () Bool)

(assert (=> b!2567212 (= e!1620660 e!1620663)))

(declare-fun res!1080183 () Bool)

(assert (=> b!2567212 (=> (not res!1080183) (not e!1620663))))

(assert (=> b!2567212 (= res!1080183 (not lt!905351))))

(declare-fun b!2567213 () Bool)

(declare-fun res!1080181 () Bool)

(assert (=> b!2567213 (=> (not res!1080181) (not e!1620666))))

(assert (=> b!2567213 (= res!1080181 (not call!165325))))

(declare-fun bm!165320 () Bool)

(assert (=> bm!165320 (= call!165325 (isEmpty!17050 tl!4068))))

(declare-fun b!2567215 () Bool)

(declare-fun res!1080185 () Bool)

(assert (=> b!2567215 (=> res!1080185 e!1620660)))

(assert (=> b!2567215 (= res!1080185 (not ((_ is ElementMatch!7629) lt!905326)))))

(assert (=> b!2567215 (= e!1620664 e!1620660)))

(declare-fun b!2567216 () Bool)

(declare-fun e!1620665 () Bool)

(assert (=> b!2567216 (= e!1620665 (matchR!3572 (derivativeStep!2198 lt!905326 (head!5834 tl!4068)) (tail!4109 tl!4068)))))

(declare-fun b!2567217 () Bool)

(assert (=> b!2567217 (= e!1620665 (nullable!2546 lt!905326))))

(declare-fun b!2567218 () Bool)

(declare-fun res!1080184 () Bool)

(assert (=> b!2567218 (=> res!1080184 e!1620661)))

(assert (=> b!2567218 (= res!1080184 (not (isEmpty!17050 (tail!4109 tl!4068))))))

(declare-fun b!2567219 () Bool)

(declare-fun e!1620662 () Bool)

(assert (=> b!2567219 (= e!1620662 e!1620664)))

(declare-fun c!412950 () Bool)

(assert (=> b!2567219 (= c!412950 ((_ is EmptyLang!7629) lt!905326))))

(declare-fun d!726700 () Bool)

(assert (=> d!726700 e!1620662))

(declare-fun c!412948 () Bool)

(assert (=> d!726700 (= c!412948 ((_ is EmptyExpr!7629) lt!905326))))

(assert (=> d!726700 (= lt!905351 e!1620665)))

(declare-fun c!412949 () Bool)

(assert (=> d!726700 (= c!412949 (isEmpty!17050 tl!4068))))

(assert (=> d!726700 (validRegex!3255 lt!905326)))

(assert (=> d!726700 (= (matchR!3572 lt!905326 tl!4068) lt!905351)))

(declare-fun b!2567214 () Bool)

(assert (=> b!2567214 (= e!1620662 (= lt!905351 call!165325))))

(assert (= (and d!726700 c!412949) b!2567217))

(assert (= (and d!726700 (not c!412949)) b!2567216))

(assert (= (and d!726700 c!412948) b!2567214))

(assert (= (and d!726700 (not c!412948)) b!2567219))

(assert (= (and b!2567219 c!412950) b!2567206))

(assert (= (and b!2567219 (not c!412950)) b!2567215))

(assert (= (and b!2567215 (not res!1080185)) b!2567208))

(assert (= (and b!2567208 res!1080182) b!2567213))

(assert (= (and b!2567213 res!1080181) b!2567210))

(assert (= (and b!2567210 res!1080180) b!2567207))

(assert (= (and b!2567208 (not res!1080179)) b!2567212))

(assert (= (and b!2567212 res!1080183) b!2567211))

(assert (= (and b!2567211 (not res!1080178)) b!2567218))

(assert (= (and b!2567218 (not res!1080184)) b!2567209))

(assert (= (or b!2567214 b!2567211 b!2567213) bm!165320))

(declare-fun m!2904837 () Bool)

(assert (=> b!2567210 m!2904837))

(assert (=> b!2567210 m!2904837))

(declare-fun m!2904839 () Bool)

(assert (=> b!2567210 m!2904839))

(declare-fun m!2904841 () Bool)

(assert (=> b!2567209 m!2904841))

(declare-fun m!2904843 () Bool)

(assert (=> bm!165320 m!2904843))

(assert (=> d!726700 m!2904843))

(assert (=> d!726700 m!2904829))

(assert (=> b!2567218 m!2904837))

(assert (=> b!2567218 m!2904837))

(assert (=> b!2567218 m!2904839))

(assert (=> b!2567216 m!2904841))

(assert (=> b!2567216 m!2904841))

(declare-fun m!2904845 () Bool)

(assert (=> b!2567216 m!2904845))

(assert (=> b!2567216 m!2904837))

(assert (=> b!2567216 m!2904845))

(assert (=> b!2567216 m!2904837))

(declare-fun m!2904847 () Bool)

(assert (=> b!2567216 m!2904847))

(assert (=> b!2567207 m!2904841))

(declare-fun m!2904849 () Bool)

(assert (=> b!2567217 m!2904849))

(assert (=> b!2566983 d!726700))

(declare-fun b!2567230 () Bool)

(declare-fun e!1620676 () Bool)

(declare-fun lt!905353 () Bool)

(assert (=> b!2567230 (= e!1620676 (not lt!905353))))

(declare-fun b!2567231 () Bool)

(declare-fun e!1620678 () Bool)

(assert (=> b!2567231 (= e!1620678 (= (head!5834 Nil!29594) (c!412879 lt!905324)))))

(declare-fun b!2567232 () Bool)

(declare-fun res!1080187 () Bool)

(declare-fun e!1620672 () Bool)

(assert (=> b!2567232 (=> res!1080187 e!1620672)))

(assert (=> b!2567232 (= res!1080187 e!1620678)))

(declare-fun res!1080190 () Bool)

(assert (=> b!2567232 (=> (not res!1080190) (not e!1620678))))

(assert (=> b!2567232 (= res!1080190 lt!905353)))

(declare-fun b!2567233 () Bool)

(declare-fun e!1620673 () Bool)

(assert (=> b!2567233 (= e!1620673 (not (= (head!5834 Nil!29594) (c!412879 lt!905324))))))

(declare-fun b!2567234 () Bool)

(declare-fun res!1080188 () Bool)

(assert (=> b!2567234 (=> (not res!1080188) (not e!1620678))))

(assert (=> b!2567234 (= res!1080188 (isEmpty!17050 (tail!4109 Nil!29594)))))

(declare-fun b!2567235 () Bool)

(declare-fun e!1620675 () Bool)

(assert (=> b!2567235 (= e!1620675 e!1620673)))

(declare-fun res!1080186 () Bool)

(assert (=> b!2567235 (=> res!1080186 e!1620673)))

(declare-fun call!165330 () Bool)

(assert (=> b!2567235 (= res!1080186 call!165330)))

(declare-fun b!2567236 () Bool)

(assert (=> b!2567236 (= e!1620672 e!1620675)))

(declare-fun res!1080191 () Bool)

(assert (=> b!2567236 (=> (not res!1080191) (not e!1620675))))

(assert (=> b!2567236 (= res!1080191 (not lt!905353))))

(declare-fun b!2567237 () Bool)

(declare-fun res!1080189 () Bool)

(assert (=> b!2567237 (=> (not res!1080189) (not e!1620678))))

(assert (=> b!2567237 (= res!1080189 (not call!165330))))

(declare-fun bm!165325 () Bool)

(assert (=> bm!165325 (= call!165330 (isEmpty!17050 Nil!29594))))

(declare-fun b!2567239 () Bool)

(declare-fun res!1080193 () Bool)

(assert (=> b!2567239 (=> res!1080193 e!1620672)))

(assert (=> b!2567239 (= res!1080193 (not ((_ is ElementMatch!7629) lt!905324)))))

(assert (=> b!2567239 (= e!1620676 e!1620672)))

(declare-fun b!2567240 () Bool)

(declare-fun e!1620677 () Bool)

(assert (=> b!2567240 (= e!1620677 (matchR!3572 (derivativeStep!2198 lt!905324 (head!5834 Nil!29594)) (tail!4109 Nil!29594)))))

(declare-fun b!2567241 () Bool)

(assert (=> b!2567241 (= e!1620677 (nullable!2546 lt!905324))))

(declare-fun b!2567242 () Bool)

(declare-fun res!1080192 () Bool)

(assert (=> b!2567242 (=> res!1080192 e!1620673)))

(assert (=> b!2567242 (= res!1080192 (not (isEmpty!17050 (tail!4109 Nil!29594))))))

(declare-fun b!2567243 () Bool)

(declare-fun e!1620674 () Bool)

(assert (=> b!2567243 (= e!1620674 e!1620676)))

(declare-fun c!412958 () Bool)

(assert (=> b!2567243 (= c!412958 ((_ is EmptyLang!7629) lt!905324))))

(declare-fun d!726704 () Bool)

(assert (=> d!726704 e!1620674))

(declare-fun c!412956 () Bool)

(assert (=> d!726704 (= c!412956 ((_ is EmptyExpr!7629) lt!905324))))

(assert (=> d!726704 (= lt!905353 e!1620677)))

(declare-fun c!412957 () Bool)

(assert (=> d!726704 (= c!412957 (isEmpty!17050 Nil!29594))))

(assert (=> d!726704 (validRegex!3255 lt!905324)))

(assert (=> d!726704 (= (matchR!3572 lt!905324 Nil!29594) lt!905353)))

(declare-fun b!2567238 () Bool)

(assert (=> b!2567238 (= e!1620674 (= lt!905353 call!165330))))

(assert (= (and d!726704 c!412957) b!2567241))

(assert (= (and d!726704 (not c!412957)) b!2567240))

(assert (= (and d!726704 c!412956) b!2567238))

(assert (= (and d!726704 (not c!412956)) b!2567243))

(assert (= (and b!2567243 c!412958) b!2567230))

(assert (= (and b!2567243 (not c!412958)) b!2567239))

(assert (= (and b!2567239 (not res!1080193)) b!2567232))

(assert (= (and b!2567232 res!1080190) b!2567237))

(assert (= (and b!2567237 res!1080189) b!2567234))

(assert (= (and b!2567234 res!1080188) b!2567231))

(assert (= (and b!2567232 (not res!1080187)) b!2567236))

(assert (= (and b!2567236 res!1080191) b!2567235))

(assert (= (and b!2567235 (not res!1080186)) b!2567242))

(assert (= (and b!2567242 (not res!1080192)) b!2567233))

(assert (= (or b!2567238 b!2567235 b!2567237) bm!165325))

(declare-fun m!2904861 () Bool)

(assert (=> b!2567234 m!2904861))

(assert (=> b!2567234 m!2904861))

(declare-fun m!2904863 () Bool)

(assert (=> b!2567234 m!2904863))

(declare-fun m!2904865 () Bool)

(assert (=> b!2567233 m!2904865))

(declare-fun m!2904867 () Bool)

(assert (=> bm!165325 m!2904867))

(assert (=> d!726704 m!2904867))

(declare-fun m!2904869 () Bool)

(assert (=> d!726704 m!2904869))

(assert (=> b!2567242 m!2904861))

(assert (=> b!2567242 m!2904861))

(assert (=> b!2567242 m!2904863))

(assert (=> b!2567240 m!2904865))

(assert (=> b!2567240 m!2904865))

(declare-fun m!2904871 () Bool)

(assert (=> b!2567240 m!2904871))

(assert (=> b!2567240 m!2904861))

(assert (=> b!2567240 m!2904871))

(assert (=> b!2567240 m!2904861))

(declare-fun m!2904873 () Bool)

(assert (=> b!2567240 m!2904873))

(assert (=> b!2567231 m!2904865))

(declare-fun m!2904875 () Bool)

(assert (=> b!2567241 m!2904875))

(assert (=> b!2566983 d!726704))

(declare-fun d!726708 () Bool)

(declare-fun lt!905354 () Regex!7629)

(assert (=> d!726708 (validRegex!3255 lt!905354)))

(declare-fun e!1620679 () Regex!7629)

(assert (=> d!726708 (= lt!905354 e!1620679)))

(declare-fun c!412959 () Bool)

(assert (=> d!726708 (= c!412959 ((_ is Cons!29594) tl!4068))))

(assert (=> d!726708 (validRegex!3255 lt!905326)))

(assert (=> d!726708 (= (derivative!324 lt!905326 tl!4068) lt!905354)))

(declare-fun b!2567244 () Bool)

(assert (=> b!2567244 (= e!1620679 (derivative!324 (derivativeStep!2198 lt!905326 (h!35014 tl!4068)) (t!211393 tl!4068)))))

(declare-fun b!2567245 () Bool)

(assert (=> b!2567245 (= e!1620679 lt!905326)))

(assert (= (and d!726708 c!412959) b!2567244))

(assert (= (and d!726708 (not c!412959)) b!2567245))

(declare-fun m!2904881 () Bool)

(assert (=> d!726708 m!2904881))

(assert (=> d!726708 m!2904829))

(declare-fun m!2904885 () Bool)

(assert (=> b!2567244 m!2904885))

(assert (=> b!2567244 m!2904885))

(declare-fun m!2904889 () Bool)

(assert (=> b!2567244 m!2904889))

(assert (=> b!2566983 d!726708))

(declare-fun d!726714 () Bool)

(assert (=> d!726714 (= (nullable!2546 (regOne!15770 r!27340)) (nullableFct!770 (regOne!15770 r!27340)))))

(declare-fun bs!469952 () Bool)

(assert (= bs!469952 d!726714))

(declare-fun m!2904893 () Bool)

(assert (=> bs!469952 m!2904893))

(assert (=> b!2566978 d!726714))

(declare-fun b!2567262 () Bool)

(declare-fun e!1620688 () Bool)

(declare-fun tp!817073 () Bool)

(assert (=> b!2567262 (= e!1620688 (and tp_is_empty!13113 tp!817073))))

(assert (=> b!2566980 (= tp!817065 e!1620688)))

(assert (= (and b!2566980 ((_ is Cons!29594) (t!211393 tl!4068))) b!2567262))

(declare-fun b!2567294 () Bool)

(declare-fun e!1620700 () Bool)

(declare-fun tp!817093 () Bool)

(assert (=> b!2567294 (= e!1620700 tp!817093)))

(assert (=> b!2566981 (= tp!817068 e!1620700)))

(declare-fun b!2567295 () Bool)

(declare-fun tp!817090 () Bool)

(declare-fun tp!817091 () Bool)

(assert (=> b!2567295 (= e!1620700 (and tp!817090 tp!817091))))

(declare-fun b!2567292 () Bool)

(assert (=> b!2567292 (= e!1620700 tp_is_empty!13113)))

(declare-fun b!2567293 () Bool)

(declare-fun tp!817092 () Bool)

(declare-fun tp!817094 () Bool)

(assert (=> b!2567293 (= e!1620700 (and tp!817092 tp!817094))))

(assert (= (and b!2566981 ((_ is ElementMatch!7629) (regOne!15770 r!27340))) b!2567292))

(assert (= (and b!2566981 ((_ is Concat!12325) (regOne!15770 r!27340))) b!2567293))

(assert (= (and b!2566981 ((_ is Star!7629) (regOne!15770 r!27340))) b!2567294))

(assert (= (and b!2566981 ((_ is Union!7629) (regOne!15770 r!27340))) b!2567295))

(declare-fun b!2567298 () Bool)

(declare-fun e!1620701 () Bool)

(declare-fun tp!817102 () Bool)

(assert (=> b!2567298 (= e!1620701 tp!817102)))

(assert (=> b!2566981 (= tp!817066 e!1620701)))

(declare-fun b!2567299 () Bool)

(declare-fun tp!817099 () Bool)

(declare-fun tp!817100 () Bool)

(assert (=> b!2567299 (= e!1620701 (and tp!817099 tp!817100))))

(declare-fun b!2567296 () Bool)

(assert (=> b!2567296 (= e!1620701 tp_is_empty!13113)))

(declare-fun b!2567297 () Bool)

(declare-fun tp!817101 () Bool)

(declare-fun tp!817103 () Bool)

(assert (=> b!2567297 (= e!1620701 (and tp!817101 tp!817103))))

(assert (= (and b!2566981 ((_ is ElementMatch!7629) (regTwo!15770 r!27340))) b!2567296))

(assert (= (and b!2566981 ((_ is Concat!12325) (regTwo!15770 r!27340))) b!2567297))

(assert (= (and b!2566981 ((_ is Star!7629) (regTwo!15770 r!27340))) b!2567298))

(assert (= (and b!2566981 ((_ is Union!7629) (regTwo!15770 r!27340))) b!2567299))

(declare-fun b!2567302 () Bool)

(declare-fun e!1620702 () Bool)

(declare-fun tp!817107 () Bool)

(assert (=> b!2567302 (= e!1620702 tp!817107)))

(assert (=> b!2566986 (= tp!817070 e!1620702)))

(declare-fun b!2567303 () Bool)

(declare-fun tp!817104 () Bool)

(declare-fun tp!817105 () Bool)

(assert (=> b!2567303 (= e!1620702 (and tp!817104 tp!817105))))

(declare-fun b!2567300 () Bool)

(assert (=> b!2567300 (= e!1620702 tp_is_empty!13113)))

(declare-fun b!2567301 () Bool)

(declare-fun tp!817106 () Bool)

(declare-fun tp!817108 () Bool)

(assert (=> b!2567301 (= e!1620702 (and tp!817106 tp!817108))))

(assert (= (and b!2566986 ((_ is ElementMatch!7629) (regOne!15771 r!27340))) b!2567300))

(assert (= (and b!2566986 ((_ is Concat!12325) (regOne!15771 r!27340))) b!2567301))

(assert (= (and b!2566986 ((_ is Star!7629) (regOne!15771 r!27340))) b!2567302))

(assert (= (and b!2566986 ((_ is Union!7629) (regOne!15771 r!27340))) b!2567303))

(declare-fun b!2567310 () Bool)

(declare-fun e!1620704 () Bool)

(declare-fun tp!817117 () Bool)

(assert (=> b!2567310 (= e!1620704 tp!817117)))

(assert (=> b!2566986 (= tp!817067 e!1620704)))

(declare-fun b!2567311 () Bool)

(declare-fun tp!817114 () Bool)

(declare-fun tp!817115 () Bool)

(assert (=> b!2567311 (= e!1620704 (and tp!817114 tp!817115))))

(declare-fun b!2567308 () Bool)

(assert (=> b!2567308 (= e!1620704 tp_is_empty!13113)))

(declare-fun b!2567309 () Bool)

(declare-fun tp!817116 () Bool)

(declare-fun tp!817118 () Bool)

(assert (=> b!2567309 (= e!1620704 (and tp!817116 tp!817118))))

(assert (= (and b!2566986 ((_ is ElementMatch!7629) (regTwo!15771 r!27340))) b!2567308))

(assert (= (and b!2566986 ((_ is Concat!12325) (regTwo!15771 r!27340))) b!2567309))

(assert (= (and b!2566986 ((_ is Star!7629) (regTwo!15771 r!27340))) b!2567310))

(assert (= (and b!2566986 ((_ is Union!7629) (regTwo!15771 r!27340))) b!2567311))

(declare-fun b!2567318 () Bool)

(declare-fun e!1620706 () Bool)

(declare-fun tp!817127 () Bool)

(assert (=> b!2567318 (= e!1620706 tp!817127)))

(assert (=> b!2566977 (= tp!817069 e!1620706)))

(declare-fun b!2567319 () Bool)

(declare-fun tp!817121 () Bool)

(declare-fun tp!817123 () Bool)

(assert (=> b!2567319 (= e!1620706 (and tp!817121 tp!817123))))

(declare-fun b!2567314 () Bool)

(assert (=> b!2567314 (= e!1620706 tp_is_empty!13113)))

(declare-fun b!2567316 () Bool)

(declare-fun tp!817125 () Bool)

(declare-fun tp!817128 () Bool)

(assert (=> b!2567316 (= e!1620706 (and tp!817125 tp!817128))))

(assert (= (and b!2566977 ((_ is ElementMatch!7629) (reg!7958 r!27340))) b!2567314))

(assert (= (and b!2566977 ((_ is Concat!12325) (reg!7958 r!27340))) b!2567316))

(assert (= (and b!2566977 ((_ is Star!7629) (reg!7958 r!27340))) b!2567318))

(assert (= (and b!2566977 ((_ is Union!7629) (reg!7958 r!27340))) b!2567319))

(check-sat (not b!2567295) (not b!2567299) (not d!726700) (not b!2567209) (not b!2567310) (not b!2567240) (not b!2567244) (not b!2567217) (not b!2567119) (not b!2567262) (not b!2566991) (not b!2567231) (not b!2567316) (not d!726714) (not b!2567216) (not bm!165304) (not b!2567241) (not bm!165302) (not b!2567110) (not b!2567234) (not d!726694) (not bm!165288) (not b!2567311) (not b!2567233) (not bm!165300) (not b!2567242) (not b!2567294) (not b!2567293) (not b!2567319) (not d!726676) (not d!726704) (not b!2567207) (not bm!165286) (not b!2567309) (not b!2567047) (not b!2567301) tp_is_empty!13113 (not d!726682) (not b!2567218) (not b!2567210) (not b!2567121) (not b!2567302) (not b!2567318) (not b!2567298) (not d!726708) (not d!726678) (not bm!165303) (not bm!165306) (not b!2567297) (not bm!165320) (not bm!165299) (not bm!165325) (not d!726692) (not b!2567303))
(check-sat)
(get-model)

(assert (=> b!2567047 d!726714))

(declare-fun b!2567337 () Bool)

(declare-fun e!1620715 () Regex!7629)

(assert (=> b!2567337 (= e!1620715 (ite (= c!14016 (c!412879 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567338 () Bool)

(declare-fun c!412968 () Bool)

(assert (=> b!2567338 (= c!412968 (nullable!2546 (regOne!15770 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))))))

(declare-fun e!1620714 () Regex!7629)

(declare-fun e!1620717 () Regex!7629)

(assert (=> b!2567338 (= e!1620714 e!1620717)))

(declare-fun call!165341 () Regex!7629)

(declare-fun b!2567339 () Bool)

(declare-fun call!165340 () Regex!7629)

(assert (=> b!2567339 (= e!1620717 (Union!7629 (Concat!12325 call!165340 (regTwo!15770 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))) call!165341))))

(declare-fun b!2567340 () Bool)

(declare-fun e!1620713 () Regex!7629)

(assert (=> b!2567340 (= e!1620713 e!1620714)))

(declare-fun c!412970 () Bool)

(assert (=> b!2567340 (= c!412970 ((_ is Star!7629) (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))))

(declare-fun d!726720 () Bool)

(declare-fun lt!905357 () Regex!7629)

(assert (=> d!726720 (validRegex!3255 lt!905357)))

(declare-fun e!1620716 () Regex!7629)

(assert (=> d!726720 (= lt!905357 e!1620716)))

(declare-fun c!412969 () Bool)

(assert (=> d!726720 (= c!412969 (or ((_ is EmptyExpr!7629) (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))) ((_ is EmptyLang!7629) (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))))))

(assert (=> d!726720 (validRegex!3255 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))))

(assert (=> d!726720 (= (derivativeStep!2198 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))) c!14016) lt!905357)))

(declare-fun b!2567341 () Bool)

(assert (=> b!2567341 (= e!1620716 e!1620715)))

(declare-fun c!412972 () Bool)

(assert (=> b!2567341 (= c!412972 ((_ is ElementMatch!7629) (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))))

(declare-fun call!165338 () Regex!7629)

(declare-fun c!412971 () Bool)

(declare-fun bm!165333 () Bool)

(assert (=> bm!165333 (= call!165338 (derivativeStep!2198 (ite c!412971 (regTwo!15771 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))) (ite c!412970 (reg!7958 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))) (regOne!15770 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))) c!14016))))

(declare-fun b!2567342 () Bool)

(assert (=> b!2567342 (= c!412971 ((_ is Union!7629) (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))))

(assert (=> b!2567342 (= e!1620715 e!1620713)))

(declare-fun b!2567343 () Bool)

(assert (=> b!2567343 (= e!1620713 (Union!7629 call!165341 call!165338))))

(declare-fun b!2567344 () Bool)

(assert (=> b!2567344 (= e!1620717 (Union!7629 (Concat!12325 call!165340 (regTwo!15770 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))) EmptyLang!7629))))

(declare-fun bm!165334 () Bool)

(declare-fun call!165339 () Regex!7629)

(assert (=> bm!165334 (= call!165339 call!165338)))

(declare-fun bm!165335 () Bool)

(assert (=> bm!165335 (= call!165341 (derivativeStep!2198 (ite c!412971 (regOne!15771 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))) (regTwo!15770 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))) c!14016))))

(declare-fun b!2567345 () Bool)

(assert (=> b!2567345 (= e!1620714 (Concat!12325 call!165339 (ite c!412924 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))))

(declare-fun bm!165336 () Bool)

(assert (=> bm!165336 (= call!165340 call!165339)))

(declare-fun b!2567346 () Bool)

(assert (=> b!2567346 (= e!1620716 EmptyLang!7629)))

(assert (= (and d!726720 c!412969) b!2567346))

(assert (= (and d!726720 (not c!412969)) b!2567341))

(assert (= (and b!2567341 c!412972) b!2567337))

(assert (= (and b!2567341 (not c!412972)) b!2567342))

(assert (= (and b!2567342 c!412971) b!2567343))

(assert (= (and b!2567342 (not c!412971)) b!2567340))

(assert (= (and b!2567340 c!412970) b!2567345))

(assert (= (and b!2567340 (not c!412970)) b!2567338))

(assert (= (and b!2567338 c!412968) b!2567339))

(assert (= (and b!2567338 (not c!412968)) b!2567344))

(assert (= (or b!2567339 b!2567344) bm!165336))

(assert (= (or b!2567345 bm!165336) bm!165334))

(assert (= (or b!2567343 bm!165334) bm!165333))

(assert (= (or b!2567343 b!2567339) bm!165335))

(declare-fun m!2904909 () Bool)

(assert (=> b!2567338 m!2904909))

(declare-fun m!2904911 () Bool)

(assert (=> d!726720 m!2904911))

(declare-fun m!2904913 () Bool)

(assert (=> d!726720 m!2904913))

(declare-fun m!2904915 () Bool)

(assert (=> bm!165333 m!2904915))

(declare-fun m!2904917 () Bool)

(assert (=> bm!165335 m!2904917))

(assert (=> bm!165306 d!726720))

(declare-fun d!726722 () Bool)

(declare-fun res!1080200 () Bool)

(declare-fun e!1620719 () Bool)

(assert (=> d!726722 (=> res!1080200 e!1620719)))

(assert (=> d!726722 (= res!1080200 ((_ is ElementMatch!7629) (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))

(assert (=> d!726722 (= (validRegex!3255 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))) e!1620719)))

(declare-fun b!2567347 () Bool)

(declare-fun res!1080199 () Bool)

(declare-fun e!1620718 () Bool)

(assert (=> b!2567347 (=> (not res!1080199) (not e!1620718))))

(declare-fun call!165344 () Bool)

(assert (=> b!2567347 (= res!1080199 call!165344)))

(declare-fun e!1620721 () Bool)

(assert (=> b!2567347 (= e!1620721 e!1620718)))

(declare-fun b!2567348 () Bool)

(declare-fun e!1620724 () Bool)

(declare-fun e!1620723 () Bool)

(assert (=> b!2567348 (= e!1620724 e!1620723)))

(declare-fun res!1080201 () Bool)

(assert (=> b!2567348 (=> (not res!1080201) (not e!1620723))))

(declare-fun call!165342 () Bool)

(assert (=> b!2567348 (= res!1080201 call!165342)))

(declare-fun bm!165337 () Bool)

(declare-fun call!165343 () Bool)

(assert (=> bm!165337 (= call!165344 call!165343)))

(declare-fun b!2567349 () Bool)

(declare-fun res!1080203 () Bool)

(assert (=> b!2567349 (=> res!1080203 e!1620724)))

(assert (=> b!2567349 (= res!1080203 (not ((_ is Concat!12325) (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325))))))))

(assert (=> b!2567349 (= e!1620721 e!1620724)))

(declare-fun b!2567350 () Bool)

(assert (=> b!2567350 (= e!1620723 call!165344)))

(declare-fun b!2567351 () Bool)

(declare-fun e!1620722 () Bool)

(assert (=> b!2567351 (= e!1620719 e!1620722)))

(declare-fun c!412973 () Bool)

(assert (=> b!2567351 (= c!412973 ((_ is Star!7629) (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))

(declare-fun b!2567352 () Bool)

(assert (=> b!2567352 (= e!1620718 call!165342)))

(declare-fun bm!165338 () Bool)

(declare-fun c!412974 () Bool)

(assert (=> bm!165338 (= call!165343 (validRegex!3255 (ite c!412973 (reg!7958 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))) (ite c!412974 (regOne!15771 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))) (regTwo!15770 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325))))))))))

(declare-fun b!2567353 () Bool)

(declare-fun e!1620720 () Bool)

(assert (=> b!2567353 (= e!1620720 call!165343)))

(declare-fun b!2567354 () Bool)

(assert (=> b!2567354 (= e!1620722 e!1620721)))

(assert (=> b!2567354 (= c!412974 ((_ is Union!7629) (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))

(declare-fun bm!165339 () Bool)

(assert (=> bm!165339 (= call!165342 (validRegex!3255 (ite c!412974 (regTwo!15771 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))) (regOne!15770 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))))

(declare-fun b!2567355 () Bool)

(assert (=> b!2567355 (= e!1620722 e!1620720)))

(declare-fun res!1080202 () Bool)

(assert (=> b!2567355 (= res!1080202 (not (nullable!2546 (reg!7958 (ite c!412919 (reg!7958 lt!905325) (ite c!412920 (regOne!15771 lt!905325) (regTwo!15770 lt!905325)))))))))

(assert (=> b!2567355 (=> (not res!1080202) (not e!1620720))))

(assert (= (and d!726722 (not res!1080200)) b!2567351))

(assert (= (and b!2567351 c!412973) b!2567355))

(assert (= (and b!2567351 (not c!412973)) b!2567354))

(assert (= (and b!2567355 res!1080202) b!2567353))

(assert (= (and b!2567354 c!412974) b!2567347))

(assert (= (and b!2567354 (not c!412974)) b!2567349))

(assert (= (and b!2567347 res!1080199) b!2567352))

(assert (= (and b!2567349 (not res!1080203)) b!2567348))

(assert (= (and b!2567348 res!1080201) b!2567350))

(assert (= (or b!2567347 b!2567350) bm!165337))

(assert (= (or b!2567352 b!2567348) bm!165339))

(assert (= (or b!2567353 bm!165337) bm!165338))

(declare-fun m!2904919 () Bool)

(assert (=> bm!165338 m!2904919))

(declare-fun m!2904921 () Bool)

(assert (=> bm!165339 m!2904921))

(declare-fun m!2904923 () Bool)

(assert (=> b!2567355 m!2904923))

(assert (=> bm!165302 d!726722))

(declare-fun d!726724 () Bool)

(assert (=> d!726724 (= (isEmpty!17050 Nil!29594) true)))

(assert (=> d!726704 d!726724))

(declare-fun d!726726 () Bool)

(declare-fun res!1080205 () Bool)

(declare-fun e!1620726 () Bool)

(assert (=> d!726726 (=> res!1080205 e!1620726)))

(assert (=> d!726726 (= res!1080205 ((_ is ElementMatch!7629) lt!905324))))

(assert (=> d!726726 (= (validRegex!3255 lt!905324) e!1620726)))

(declare-fun b!2567356 () Bool)

(declare-fun res!1080204 () Bool)

(declare-fun e!1620725 () Bool)

(assert (=> b!2567356 (=> (not res!1080204) (not e!1620725))))

(declare-fun call!165347 () Bool)

(assert (=> b!2567356 (= res!1080204 call!165347)))

(declare-fun e!1620728 () Bool)

(assert (=> b!2567356 (= e!1620728 e!1620725)))

(declare-fun b!2567357 () Bool)

(declare-fun e!1620731 () Bool)

(declare-fun e!1620730 () Bool)

(assert (=> b!2567357 (= e!1620731 e!1620730)))

(declare-fun res!1080206 () Bool)

(assert (=> b!2567357 (=> (not res!1080206) (not e!1620730))))

(declare-fun call!165345 () Bool)

(assert (=> b!2567357 (= res!1080206 call!165345)))

(declare-fun bm!165340 () Bool)

(declare-fun call!165346 () Bool)

(assert (=> bm!165340 (= call!165347 call!165346)))

(declare-fun b!2567358 () Bool)

(declare-fun res!1080208 () Bool)

(assert (=> b!2567358 (=> res!1080208 e!1620731)))

(assert (=> b!2567358 (= res!1080208 (not ((_ is Concat!12325) lt!905324)))))

(assert (=> b!2567358 (= e!1620728 e!1620731)))

(declare-fun b!2567359 () Bool)

(assert (=> b!2567359 (= e!1620730 call!165347)))

(declare-fun b!2567360 () Bool)

(declare-fun e!1620729 () Bool)

(assert (=> b!2567360 (= e!1620726 e!1620729)))

(declare-fun c!412975 () Bool)

(assert (=> b!2567360 (= c!412975 ((_ is Star!7629) lt!905324))))

(declare-fun b!2567361 () Bool)

(assert (=> b!2567361 (= e!1620725 call!165345)))

(declare-fun c!412976 () Bool)

(declare-fun bm!165341 () Bool)

(assert (=> bm!165341 (= call!165346 (validRegex!3255 (ite c!412975 (reg!7958 lt!905324) (ite c!412976 (regOne!15771 lt!905324) (regTwo!15770 lt!905324)))))))

(declare-fun b!2567362 () Bool)

(declare-fun e!1620727 () Bool)

(assert (=> b!2567362 (= e!1620727 call!165346)))

(declare-fun b!2567363 () Bool)

(assert (=> b!2567363 (= e!1620729 e!1620728)))

(assert (=> b!2567363 (= c!412976 ((_ is Union!7629) lt!905324))))

(declare-fun bm!165342 () Bool)

(assert (=> bm!165342 (= call!165345 (validRegex!3255 (ite c!412976 (regTwo!15771 lt!905324) (regOne!15770 lt!905324))))))

(declare-fun b!2567364 () Bool)

(assert (=> b!2567364 (= e!1620729 e!1620727)))

(declare-fun res!1080207 () Bool)

(assert (=> b!2567364 (= res!1080207 (not (nullable!2546 (reg!7958 lt!905324))))))

(assert (=> b!2567364 (=> (not res!1080207) (not e!1620727))))

(assert (= (and d!726726 (not res!1080205)) b!2567360))

(assert (= (and b!2567360 c!412975) b!2567364))

(assert (= (and b!2567360 (not c!412975)) b!2567363))

(assert (= (and b!2567364 res!1080207) b!2567362))

(assert (= (and b!2567363 c!412976) b!2567356))

(assert (= (and b!2567363 (not c!412976)) b!2567358))

(assert (= (and b!2567356 res!1080204) b!2567361))

(assert (= (and b!2567358 (not res!1080208)) b!2567357))

(assert (= (and b!2567357 res!1080206) b!2567359))

(assert (= (or b!2567356 b!2567359) bm!165340))

(assert (= (or b!2567361 b!2567357) bm!165342))

(assert (= (or b!2567362 bm!165340) bm!165341))

(declare-fun m!2904925 () Bool)

(assert (=> bm!165341 m!2904925))

(declare-fun m!2904927 () Bool)

(assert (=> bm!165342 m!2904927))

(declare-fun m!2904929 () Bool)

(assert (=> b!2567364 m!2904929))

(assert (=> d!726704 d!726726))

(declare-fun d!726728 () Bool)

(assert (not d!726728))

(assert (=> b!2567231 d!726728))

(declare-fun bm!165347 () Bool)

(declare-fun call!165352 () Bool)

(declare-fun c!412979 () Bool)

(assert (=> bm!165347 (= call!165352 (nullable!2546 (ite c!412979 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340)))))))

(declare-fun b!2567379 () Bool)

(declare-fun e!1620747 () Bool)

(declare-fun e!1620749 () Bool)

(assert (=> b!2567379 (= e!1620747 e!1620749)))

(declare-fun res!1080221 () Bool)

(declare-fun call!165353 () Bool)

(assert (=> b!2567379 (= res!1080221 call!165353)))

(assert (=> b!2567379 (=> (not res!1080221) (not e!1620749))))

(declare-fun bm!165348 () Bool)

(assert (=> bm!165348 (= call!165353 (nullable!2546 (ite c!412979 (regTwo!15771 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))))

(declare-fun b!2567380 () Bool)

(declare-fun e!1620748 () Bool)

(declare-fun e!1620744 () Bool)

(assert (=> b!2567380 (= e!1620748 e!1620744)))

(declare-fun res!1080222 () Bool)

(assert (=> b!2567380 (=> (not res!1080222) (not e!1620744))))

(assert (=> b!2567380 (= res!1080222 (and (not ((_ is EmptyLang!7629) (regOne!15770 r!27340))) (not ((_ is ElementMatch!7629) (regOne!15770 r!27340)))))))

(declare-fun b!2567381 () Bool)

(assert (=> b!2567381 (= e!1620749 call!165352)))

(declare-fun d!726730 () Bool)

(declare-fun res!1080219 () Bool)

(assert (=> d!726730 (=> res!1080219 e!1620748)))

(assert (=> d!726730 (= res!1080219 ((_ is EmptyExpr!7629) (regOne!15770 r!27340)))))

(assert (=> d!726730 (= (nullableFct!770 (regOne!15770 r!27340)) e!1620748)))

(declare-fun b!2567382 () Bool)

(declare-fun e!1620746 () Bool)

(assert (=> b!2567382 (= e!1620747 e!1620746)))

(declare-fun res!1080220 () Bool)

(assert (=> b!2567382 (= res!1080220 call!165352)))

(assert (=> b!2567382 (=> res!1080220 e!1620746)))

(declare-fun b!2567383 () Bool)

(assert (=> b!2567383 (= e!1620746 call!165353)))

(declare-fun b!2567384 () Bool)

(declare-fun e!1620745 () Bool)

(assert (=> b!2567384 (= e!1620745 e!1620747)))

(assert (=> b!2567384 (= c!412979 ((_ is Union!7629) (regOne!15770 r!27340)))))

(declare-fun b!2567385 () Bool)

(assert (=> b!2567385 (= e!1620744 e!1620745)))

(declare-fun res!1080223 () Bool)

(assert (=> b!2567385 (=> res!1080223 e!1620745)))

(assert (=> b!2567385 (= res!1080223 ((_ is Star!7629) (regOne!15770 r!27340)))))

(assert (= (and d!726730 (not res!1080219)) b!2567380))

(assert (= (and b!2567380 res!1080222) b!2567385))

(assert (= (and b!2567385 (not res!1080223)) b!2567384))

(assert (= (and b!2567384 c!412979) b!2567382))

(assert (= (and b!2567384 (not c!412979)) b!2567379))

(assert (= (and b!2567382 (not res!1080220)) b!2567383))

(assert (= (and b!2567379 res!1080221) b!2567381))

(assert (= (or b!2567383 b!2567379) bm!165348))

(assert (= (or b!2567382 b!2567381) bm!165347))

(declare-fun m!2904931 () Bool)

(assert (=> bm!165347 m!2904931))

(declare-fun m!2904933 () Bool)

(assert (=> bm!165348 m!2904933))

(assert (=> d!726714 d!726730))

(declare-fun b!2567386 () Bool)

(declare-fun e!1620752 () Regex!7629)

(assert (=> b!2567386 (= e!1620752 (ite (= c!14016 (c!412879 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun c!412980 () Bool)

(declare-fun b!2567387 () Bool)

(assert (=> b!2567387 (= c!412980 (nullable!2546 (regOne!15770 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))))))

(declare-fun e!1620751 () Regex!7629)

(declare-fun e!1620754 () Regex!7629)

(assert (=> b!2567387 (= e!1620751 e!1620754)))

(declare-fun call!165357 () Regex!7629)

(declare-fun b!2567388 () Bool)

(declare-fun call!165356 () Regex!7629)

(assert (=> b!2567388 (= e!1620754 (Union!7629 (Concat!12325 call!165356 (regTwo!15770 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))) call!165357))))

(declare-fun b!2567389 () Bool)

(declare-fun e!1620750 () Regex!7629)

(assert (=> b!2567389 (= e!1620750 e!1620751)))

(declare-fun c!412982 () Bool)

(assert (=> b!2567389 (= c!412982 ((_ is Star!7629) (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))))))

(declare-fun d!726732 () Bool)

(declare-fun lt!905358 () Regex!7629)

(assert (=> d!726732 (validRegex!3255 lt!905358)))

(declare-fun e!1620753 () Regex!7629)

(assert (=> d!726732 (= lt!905358 e!1620753)))

(declare-fun c!412981 () Bool)

(assert (=> d!726732 (= c!412981 (or ((_ is EmptyExpr!7629) (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))) ((_ is EmptyLang!7629) (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))))))

(assert (=> d!726732 (validRegex!3255 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))))

(assert (=> d!726732 (= (derivativeStep!2198 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))) c!14016) lt!905358)))

(declare-fun b!2567390 () Bool)

(assert (=> b!2567390 (= e!1620753 e!1620752)))

(declare-fun c!412984 () Bool)

(assert (=> b!2567390 (= c!412984 ((_ is ElementMatch!7629) (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))))))

(declare-fun call!165354 () Regex!7629)

(declare-fun c!412983 () Bool)

(declare-fun bm!165349 () Bool)

(assert (=> bm!165349 (= call!165354 (derivativeStep!2198 (ite c!412983 (regTwo!15771 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))) (ite c!412982 (reg!7958 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))) (regOne!15770 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))))) c!14016))))

(declare-fun b!2567391 () Bool)

(assert (=> b!2567391 (= c!412983 ((_ is Union!7629) (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))))))

(assert (=> b!2567391 (= e!1620752 e!1620750)))

(declare-fun b!2567392 () Bool)

(assert (=> b!2567392 (= e!1620750 (Union!7629 call!165357 call!165354))))

(declare-fun b!2567393 () Bool)

(assert (=> b!2567393 (= e!1620754 (Union!7629 (Concat!12325 call!165356 (regTwo!15770 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))) EmptyLang!7629))))

(declare-fun bm!165350 () Bool)

(declare-fun call!165355 () Regex!7629)

(assert (=> bm!165350 (= call!165355 call!165354)))

(declare-fun bm!165351 () Bool)

(assert (=> bm!165351 (= call!165357 (derivativeStep!2198 (ite c!412983 (regOne!15771 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))) (regTwo!15770 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))) c!14016))))

(declare-fun b!2567394 () Bool)

(assert (=> b!2567394 (= e!1620751 (Concat!12325 call!165355 (ite c!412924 (regTwo!15771 (regOne!15770 r!27340)) (ite c!412923 (reg!7958 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340))))))))

(declare-fun bm!165352 () Bool)

(assert (=> bm!165352 (= call!165356 call!165355)))

(declare-fun b!2567395 () Bool)

(assert (=> b!2567395 (= e!1620753 EmptyLang!7629)))

(assert (= (and d!726732 c!412981) b!2567395))

(assert (= (and d!726732 (not c!412981)) b!2567390))

(assert (= (and b!2567390 c!412984) b!2567386))

(assert (= (and b!2567390 (not c!412984)) b!2567391))

(assert (= (and b!2567391 c!412983) b!2567392))

(assert (= (and b!2567391 (not c!412983)) b!2567389))

(assert (= (and b!2567389 c!412982) b!2567394))

(assert (= (and b!2567389 (not c!412982)) b!2567387))

(assert (= (and b!2567387 c!412980) b!2567388))

(assert (= (and b!2567387 (not c!412980)) b!2567393))

(assert (= (or b!2567388 b!2567393) bm!165352))

(assert (= (or b!2567394 bm!165352) bm!165350))

(assert (= (or b!2567392 bm!165350) bm!165349))

(assert (= (or b!2567392 b!2567388) bm!165351))

(declare-fun m!2904935 () Bool)

(assert (=> b!2567387 m!2904935))

(declare-fun m!2904937 () Bool)

(assert (=> d!726732 m!2904937))

(declare-fun m!2904939 () Bool)

(assert (=> d!726732 m!2904939))

(declare-fun m!2904941 () Bool)

(assert (=> bm!165349 m!2904941))

(declare-fun m!2904943 () Bool)

(assert (=> bm!165351 m!2904943))

(assert (=> bm!165304 d!726732))

(declare-fun d!726734 () Bool)

(declare-fun res!1080225 () Bool)

(declare-fun e!1620756 () Bool)

(assert (=> d!726734 (=> res!1080225 e!1620756)))

(assert (=> d!726734 (= res!1080225 ((_ is ElementMatch!7629) lt!905338))))

(assert (=> d!726734 (= (validRegex!3255 lt!905338) e!1620756)))

(declare-fun b!2567396 () Bool)

(declare-fun res!1080224 () Bool)

(declare-fun e!1620755 () Bool)

(assert (=> b!2567396 (=> (not res!1080224) (not e!1620755))))

(declare-fun call!165360 () Bool)

(assert (=> b!2567396 (= res!1080224 call!165360)))

(declare-fun e!1620758 () Bool)

(assert (=> b!2567396 (= e!1620758 e!1620755)))

(declare-fun b!2567397 () Bool)

(declare-fun e!1620761 () Bool)

(declare-fun e!1620760 () Bool)

(assert (=> b!2567397 (= e!1620761 e!1620760)))

(declare-fun res!1080226 () Bool)

(assert (=> b!2567397 (=> (not res!1080226) (not e!1620760))))

(declare-fun call!165358 () Bool)

(assert (=> b!2567397 (= res!1080226 call!165358)))

(declare-fun bm!165353 () Bool)

(declare-fun call!165359 () Bool)

(assert (=> bm!165353 (= call!165360 call!165359)))

(declare-fun b!2567398 () Bool)

(declare-fun res!1080228 () Bool)

(assert (=> b!2567398 (=> res!1080228 e!1620761)))

(assert (=> b!2567398 (= res!1080228 (not ((_ is Concat!12325) lt!905338)))))

(assert (=> b!2567398 (= e!1620758 e!1620761)))

(declare-fun b!2567399 () Bool)

(assert (=> b!2567399 (= e!1620760 call!165360)))

(declare-fun b!2567400 () Bool)

(declare-fun e!1620759 () Bool)

(assert (=> b!2567400 (= e!1620756 e!1620759)))

(declare-fun c!412985 () Bool)

(assert (=> b!2567400 (= c!412985 ((_ is Star!7629) lt!905338))))

(declare-fun b!2567401 () Bool)

(assert (=> b!2567401 (= e!1620755 call!165358)))

(declare-fun c!412986 () Bool)

(declare-fun bm!165354 () Bool)

(assert (=> bm!165354 (= call!165359 (validRegex!3255 (ite c!412985 (reg!7958 lt!905338) (ite c!412986 (regOne!15771 lt!905338) (regTwo!15770 lt!905338)))))))

(declare-fun b!2567402 () Bool)

(declare-fun e!1620757 () Bool)

(assert (=> b!2567402 (= e!1620757 call!165359)))

(declare-fun b!2567403 () Bool)

(assert (=> b!2567403 (= e!1620759 e!1620758)))

(assert (=> b!2567403 (= c!412986 ((_ is Union!7629) lt!905338))))

(declare-fun bm!165355 () Bool)

(assert (=> bm!165355 (= call!165358 (validRegex!3255 (ite c!412986 (regTwo!15771 lt!905338) (regOne!15770 lt!905338))))))

(declare-fun b!2567404 () Bool)

(assert (=> b!2567404 (= e!1620759 e!1620757)))

(declare-fun res!1080227 () Bool)

(assert (=> b!2567404 (= res!1080227 (not (nullable!2546 (reg!7958 lt!905338))))))

(assert (=> b!2567404 (=> (not res!1080227) (not e!1620757))))

(assert (= (and d!726734 (not res!1080225)) b!2567400))

(assert (= (and b!2567400 c!412985) b!2567404))

(assert (= (and b!2567400 (not c!412985)) b!2567403))

(assert (= (and b!2567404 res!1080227) b!2567402))

(assert (= (and b!2567403 c!412986) b!2567396))

(assert (= (and b!2567403 (not c!412986)) b!2567398))

(assert (= (and b!2567396 res!1080224) b!2567401))

(assert (= (and b!2567398 (not res!1080228)) b!2567397))

(assert (= (and b!2567397 res!1080226) b!2567399))

(assert (= (or b!2567396 b!2567399) bm!165353))

(assert (= (or b!2567401 b!2567397) bm!165355))

(assert (= (or b!2567402 bm!165353) bm!165354))

(declare-fun m!2904945 () Bool)

(assert (=> bm!165354 m!2904945))

(declare-fun m!2904947 () Bool)

(assert (=> bm!165355 m!2904947))

(declare-fun m!2904949 () Bool)

(assert (=> b!2567404 m!2904949))

(assert (=> d!726692 d!726734))

(declare-fun d!726736 () Bool)

(declare-fun res!1080230 () Bool)

(declare-fun e!1620763 () Bool)

(assert (=> d!726736 (=> res!1080230 e!1620763)))

(assert (=> d!726736 (= res!1080230 ((_ is ElementMatch!7629) (regOne!15770 r!27340)))))

(assert (=> d!726736 (= (validRegex!3255 (regOne!15770 r!27340)) e!1620763)))

(declare-fun b!2567405 () Bool)

(declare-fun res!1080229 () Bool)

(declare-fun e!1620762 () Bool)

(assert (=> b!2567405 (=> (not res!1080229) (not e!1620762))))

(declare-fun call!165363 () Bool)

(assert (=> b!2567405 (= res!1080229 call!165363)))

(declare-fun e!1620765 () Bool)

(assert (=> b!2567405 (= e!1620765 e!1620762)))

(declare-fun b!2567406 () Bool)

(declare-fun e!1620768 () Bool)

(declare-fun e!1620767 () Bool)

(assert (=> b!2567406 (= e!1620768 e!1620767)))

(declare-fun res!1080231 () Bool)

(assert (=> b!2567406 (=> (not res!1080231) (not e!1620767))))

(declare-fun call!165361 () Bool)

(assert (=> b!2567406 (= res!1080231 call!165361)))

(declare-fun bm!165356 () Bool)

(declare-fun call!165362 () Bool)

(assert (=> bm!165356 (= call!165363 call!165362)))

(declare-fun b!2567407 () Bool)

(declare-fun res!1080233 () Bool)

(assert (=> b!2567407 (=> res!1080233 e!1620768)))

(assert (=> b!2567407 (= res!1080233 (not ((_ is Concat!12325) (regOne!15770 r!27340))))))

(assert (=> b!2567407 (= e!1620765 e!1620768)))

(declare-fun b!2567408 () Bool)

(assert (=> b!2567408 (= e!1620767 call!165363)))

(declare-fun b!2567409 () Bool)

(declare-fun e!1620766 () Bool)

(assert (=> b!2567409 (= e!1620763 e!1620766)))

(declare-fun c!412987 () Bool)

(assert (=> b!2567409 (= c!412987 ((_ is Star!7629) (regOne!15770 r!27340)))))

(declare-fun b!2567410 () Bool)

(assert (=> b!2567410 (= e!1620762 call!165361)))

(declare-fun c!412988 () Bool)

(declare-fun bm!165357 () Bool)

(assert (=> bm!165357 (= call!165362 (validRegex!3255 (ite c!412987 (reg!7958 (regOne!15770 r!27340)) (ite c!412988 (regOne!15771 (regOne!15770 r!27340)) (regTwo!15770 (regOne!15770 r!27340))))))))

(declare-fun b!2567411 () Bool)

(declare-fun e!1620764 () Bool)

(assert (=> b!2567411 (= e!1620764 call!165362)))

(declare-fun b!2567412 () Bool)

(assert (=> b!2567412 (= e!1620766 e!1620765)))

(assert (=> b!2567412 (= c!412988 ((_ is Union!7629) (regOne!15770 r!27340)))))

(declare-fun bm!165358 () Bool)

(assert (=> bm!165358 (= call!165361 (validRegex!3255 (ite c!412988 (regTwo!15771 (regOne!15770 r!27340)) (regOne!15770 (regOne!15770 r!27340)))))))

(declare-fun b!2567413 () Bool)

(assert (=> b!2567413 (= e!1620766 e!1620764)))

(declare-fun res!1080232 () Bool)

(assert (=> b!2567413 (= res!1080232 (not (nullable!2546 (reg!7958 (regOne!15770 r!27340)))))))

(assert (=> b!2567413 (=> (not res!1080232) (not e!1620764))))

(assert (= (and d!726736 (not res!1080230)) b!2567409))

(assert (= (and b!2567409 c!412987) b!2567413))

(assert (= (and b!2567409 (not c!412987)) b!2567412))

(assert (= (and b!2567413 res!1080232) b!2567411))

(assert (= (and b!2567412 c!412988) b!2567405))

(assert (= (and b!2567412 (not c!412988)) b!2567407))

(assert (= (and b!2567405 res!1080229) b!2567410))

(assert (= (and b!2567407 (not res!1080233)) b!2567406))

(assert (= (and b!2567406 res!1080231) b!2567408))

(assert (= (or b!2567405 b!2567408) bm!165356))

(assert (= (or b!2567410 b!2567406) bm!165358))

(assert (= (or b!2567411 bm!165356) bm!165357))

(declare-fun m!2904951 () Bool)

(assert (=> bm!165357 m!2904951))

(declare-fun m!2904953 () Bool)

(assert (=> bm!165358 m!2904953))

(declare-fun m!2904955 () Bool)

(assert (=> b!2567413 m!2904955))

(assert (=> d!726692 d!726736))

(declare-fun d!726738 () Bool)

(declare-fun res!1080235 () Bool)

(declare-fun e!1620770 () Bool)

(assert (=> d!726738 (=> res!1080235 e!1620770)))

(assert (=> d!726738 (= res!1080235 ((_ is ElementMatch!7629) lt!905329))))

(assert (=> d!726738 (= (validRegex!3255 lt!905329) e!1620770)))

(declare-fun b!2567414 () Bool)

(declare-fun res!1080234 () Bool)

(declare-fun e!1620769 () Bool)

(assert (=> b!2567414 (=> (not res!1080234) (not e!1620769))))

(declare-fun call!165366 () Bool)

(assert (=> b!2567414 (= res!1080234 call!165366)))

(declare-fun e!1620772 () Bool)

(assert (=> b!2567414 (= e!1620772 e!1620769)))

(declare-fun b!2567415 () Bool)

(declare-fun e!1620775 () Bool)

(declare-fun e!1620774 () Bool)

(assert (=> b!2567415 (= e!1620775 e!1620774)))

(declare-fun res!1080236 () Bool)

(assert (=> b!2567415 (=> (not res!1080236) (not e!1620774))))

(declare-fun call!165364 () Bool)

(assert (=> b!2567415 (= res!1080236 call!165364)))

(declare-fun bm!165359 () Bool)

(declare-fun call!165365 () Bool)

(assert (=> bm!165359 (= call!165366 call!165365)))

(declare-fun b!2567416 () Bool)

(declare-fun res!1080238 () Bool)

(assert (=> b!2567416 (=> res!1080238 e!1620775)))

(assert (=> b!2567416 (= res!1080238 (not ((_ is Concat!12325) lt!905329)))))

(assert (=> b!2567416 (= e!1620772 e!1620775)))

(declare-fun b!2567417 () Bool)

(assert (=> b!2567417 (= e!1620774 call!165366)))

(declare-fun b!2567418 () Bool)

(declare-fun e!1620773 () Bool)

(assert (=> b!2567418 (= e!1620770 e!1620773)))

(declare-fun c!412989 () Bool)

(assert (=> b!2567418 (= c!412989 ((_ is Star!7629) lt!905329))))

(declare-fun b!2567419 () Bool)

(assert (=> b!2567419 (= e!1620769 call!165364)))

(declare-fun bm!165360 () Bool)

(declare-fun c!412990 () Bool)

(assert (=> bm!165360 (= call!165365 (validRegex!3255 (ite c!412989 (reg!7958 lt!905329) (ite c!412990 (regOne!15771 lt!905329) (regTwo!15770 lt!905329)))))))

(declare-fun b!2567420 () Bool)

(declare-fun e!1620771 () Bool)

(assert (=> b!2567420 (= e!1620771 call!165365)))

(declare-fun b!2567421 () Bool)

(assert (=> b!2567421 (= e!1620773 e!1620772)))

(assert (=> b!2567421 (= c!412990 ((_ is Union!7629) lt!905329))))

(declare-fun bm!165361 () Bool)

(assert (=> bm!165361 (= call!165364 (validRegex!3255 (ite c!412990 (regTwo!15771 lt!905329) (regOne!15770 lt!905329))))))

(declare-fun b!2567422 () Bool)

(assert (=> b!2567422 (= e!1620773 e!1620771)))

(declare-fun res!1080237 () Bool)

(assert (=> b!2567422 (= res!1080237 (not (nullable!2546 (reg!7958 lt!905329))))))

(assert (=> b!2567422 (=> (not res!1080237) (not e!1620771))))

(assert (= (and d!726738 (not res!1080235)) b!2567418))

(assert (= (and b!2567418 c!412989) b!2567422))

(assert (= (and b!2567418 (not c!412989)) b!2567421))

(assert (= (and b!2567422 res!1080237) b!2567420))

(assert (= (and b!2567421 c!412990) b!2567414))

(assert (= (and b!2567421 (not c!412990)) b!2567416))

(assert (= (and b!2567414 res!1080234) b!2567419))

(assert (= (and b!2567416 (not res!1080238)) b!2567415))

(assert (= (and b!2567415 res!1080236) b!2567417))

(assert (= (or b!2567414 b!2567417) bm!165359))

(assert (= (or b!2567419 b!2567415) bm!165361))

(assert (= (or b!2567420 bm!165359) bm!165360))

(declare-fun m!2904957 () Bool)

(assert (=> bm!165360 m!2904957))

(declare-fun m!2904959 () Bool)

(assert (=> bm!165361 m!2904959))

(declare-fun m!2904961 () Bool)

(assert (=> b!2567422 m!2904961))

(assert (=> d!726678 d!726738))

(declare-fun d!726740 () Bool)

(declare-fun res!1080240 () Bool)

(declare-fun e!1620777 () Bool)

(assert (=> d!726740 (=> res!1080240 e!1620777)))

(assert (=> d!726740 (= res!1080240 ((_ is ElementMatch!7629) (derivativeStep!2198 r!27340 c!14016)))))

(assert (=> d!726740 (= (validRegex!3255 (derivativeStep!2198 r!27340 c!14016)) e!1620777)))

(declare-fun b!2567423 () Bool)

(declare-fun res!1080239 () Bool)

(declare-fun e!1620776 () Bool)

(assert (=> b!2567423 (=> (not res!1080239) (not e!1620776))))

(declare-fun call!165369 () Bool)

(assert (=> b!2567423 (= res!1080239 call!165369)))

(declare-fun e!1620779 () Bool)

(assert (=> b!2567423 (= e!1620779 e!1620776)))

(declare-fun b!2567424 () Bool)

(declare-fun e!1620782 () Bool)

(declare-fun e!1620781 () Bool)

(assert (=> b!2567424 (= e!1620782 e!1620781)))

(declare-fun res!1080241 () Bool)

(assert (=> b!2567424 (=> (not res!1080241) (not e!1620781))))

(declare-fun call!165367 () Bool)

(assert (=> b!2567424 (= res!1080241 call!165367)))

(declare-fun bm!165362 () Bool)

(declare-fun call!165368 () Bool)

(assert (=> bm!165362 (= call!165369 call!165368)))

(declare-fun b!2567425 () Bool)

(declare-fun res!1080243 () Bool)

(assert (=> b!2567425 (=> res!1080243 e!1620782)))

(assert (=> b!2567425 (= res!1080243 (not ((_ is Concat!12325) (derivativeStep!2198 r!27340 c!14016))))))

(assert (=> b!2567425 (= e!1620779 e!1620782)))

(declare-fun b!2567426 () Bool)

(assert (=> b!2567426 (= e!1620781 call!165369)))

(declare-fun b!2567427 () Bool)

(declare-fun e!1620780 () Bool)

(assert (=> b!2567427 (= e!1620777 e!1620780)))

(declare-fun c!412991 () Bool)

(assert (=> b!2567427 (= c!412991 ((_ is Star!7629) (derivativeStep!2198 r!27340 c!14016)))))

(declare-fun b!2567428 () Bool)

(assert (=> b!2567428 (= e!1620776 call!165367)))

(declare-fun bm!165363 () Bool)

(declare-fun c!412992 () Bool)

(assert (=> bm!165363 (= call!165368 (validRegex!3255 (ite c!412991 (reg!7958 (derivativeStep!2198 r!27340 c!14016)) (ite c!412992 (regOne!15771 (derivativeStep!2198 r!27340 c!14016)) (regTwo!15770 (derivativeStep!2198 r!27340 c!14016))))))))

(declare-fun b!2567429 () Bool)

(declare-fun e!1620778 () Bool)

(assert (=> b!2567429 (= e!1620778 call!165368)))

(declare-fun b!2567430 () Bool)

(assert (=> b!2567430 (= e!1620780 e!1620779)))

(assert (=> b!2567430 (= c!412992 ((_ is Union!7629) (derivativeStep!2198 r!27340 c!14016)))))

(declare-fun bm!165364 () Bool)

(assert (=> bm!165364 (= call!165367 (validRegex!3255 (ite c!412992 (regTwo!15771 (derivativeStep!2198 r!27340 c!14016)) (regOne!15770 (derivativeStep!2198 r!27340 c!14016)))))))

(declare-fun b!2567431 () Bool)

(assert (=> b!2567431 (= e!1620780 e!1620778)))

(declare-fun res!1080242 () Bool)

(assert (=> b!2567431 (= res!1080242 (not (nullable!2546 (reg!7958 (derivativeStep!2198 r!27340 c!14016)))))))

(assert (=> b!2567431 (=> (not res!1080242) (not e!1620778))))

(assert (= (and d!726740 (not res!1080240)) b!2567427))

(assert (= (and b!2567427 c!412991) b!2567431))

(assert (= (and b!2567427 (not c!412991)) b!2567430))

(assert (= (and b!2567431 res!1080242) b!2567429))

(assert (= (and b!2567430 c!412992) b!2567423))

(assert (= (and b!2567430 (not c!412992)) b!2567425))

(assert (= (and b!2567423 res!1080239) b!2567428))

(assert (= (and b!2567425 (not res!1080243)) b!2567424))

(assert (= (and b!2567424 res!1080241) b!2567426))

(assert (= (or b!2567423 b!2567426) bm!165362))

(assert (= (or b!2567428 b!2567424) bm!165364))

(assert (= (or b!2567429 bm!165362) bm!165363))

(declare-fun m!2904963 () Bool)

(assert (=> bm!165363 m!2904963))

(declare-fun m!2904965 () Bool)

(assert (=> bm!165364 m!2904965))

(declare-fun m!2904967 () Bool)

(assert (=> b!2567431 m!2904967))

(assert (=> d!726678 d!726740))

(declare-fun d!726742 () Bool)

(assert (=> d!726742 (= (isEmpty!17050 (tail!4109 tl!4068)) ((_ is Nil!29594) (tail!4109 tl!4068)))))

(assert (=> b!2567218 d!726742))

(declare-fun d!726744 () Bool)

(assert (=> d!726744 (= (tail!4109 tl!4068) (t!211393 tl!4068))))

(assert (=> b!2567218 d!726744))

(declare-fun d!726746 () Bool)

(declare-fun lt!905359 () Regex!7629)

(assert (=> d!726746 (validRegex!3255 lt!905359)))

(declare-fun e!1620783 () Regex!7629)

(assert (=> d!726746 (= lt!905359 e!1620783)))

(declare-fun c!412993 () Bool)

(assert (=> d!726746 (= c!412993 ((_ is Cons!29594) (t!211393 tl!4068)))))

(assert (=> d!726746 (validRegex!3255 (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)))))

(assert (=> d!726746 (= (derivative!324 (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)) (t!211393 tl!4068)) lt!905359)))

(declare-fun b!2567432 () Bool)

(assert (=> b!2567432 (= e!1620783 (derivative!324 (derivativeStep!2198 (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)) (h!35014 (t!211393 tl!4068))) (t!211393 (t!211393 tl!4068))))))

(declare-fun b!2567433 () Bool)

(assert (=> b!2567433 (= e!1620783 (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)))))

(assert (= (and d!726746 c!412993) b!2567432))

(assert (= (and d!726746 (not c!412993)) b!2567433))

(declare-fun m!2904969 () Bool)

(assert (=> d!726746 m!2904969))

(assert (=> d!726746 m!2904751))

(declare-fun m!2904971 () Bool)

(assert (=> d!726746 m!2904971))

(assert (=> b!2567432 m!2904751))

(declare-fun m!2904973 () Bool)

(assert (=> b!2567432 m!2904973))

(assert (=> b!2567432 m!2904973))

(declare-fun m!2904975 () Bool)

(assert (=> b!2567432 m!2904975))

(assert (=> b!2566991 d!726746))

(declare-fun b!2567434 () Bool)

(declare-fun e!1620786 () Regex!7629)

(assert (=> b!2567434 (= e!1620786 (ite (= (h!35014 tl!4068) (c!412879 (derivativeStep!2198 r!27340 c!14016))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567435 () Bool)

(declare-fun c!412994 () Bool)

(assert (=> b!2567435 (= c!412994 (nullable!2546 (regOne!15770 (derivativeStep!2198 r!27340 c!14016))))))

(declare-fun e!1620785 () Regex!7629)

(declare-fun e!1620788 () Regex!7629)

(assert (=> b!2567435 (= e!1620785 e!1620788)))

(declare-fun call!165373 () Regex!7629)

(declare-fun call!165372 () Regex!7629)

(declare-fun b!2567436 () Bool)

(assert (=> b!2567436 (= e!1620788 (Union!7629 (Concat!12325 call!165372 (regTwo!15770 (derivativeStep!2198 r!27340 c!14016))) call!165373))))

(declare-fun b!2567437 () Bool)

(declare-fun e!1620784 () Regex!7629)

(assert (=> b!2567437 (= e!1620784 e!1620785)))

(declare-fun c!412996 () Bool)

(assert (=> b!2567437 (= c!412996 ((_ is Star!7629) (derivativeStep!2198 r!27340 c!14016)))))

(declare-fun d!726748 () Bool)

(declare-fun lt!905360 () Regex!7629)

(assert (=> d!726748 (validRegex!3255 lt!905360)))

(declare-fun e!1620787 () Regex!7629)

(assert (=> d!726748 (= lt!905360 e!1620787)))

(declare-fun c!412995 () Bool)

(assert (=> d!726748 (= c!412995 (or ((_ is EmptyExpr!7629) (derivativeStep!2198 r!27340 c!14016)) ((_ is EmptyLang!7629) (derivativeStep!2198 r!27340 c!14016))))))

(assert (=> d!726748 (validRegex!3255 (derivativeStep!2198 r!27340 c!14016))))

(assert (=> d!726748 (= (derivativeStep!2198 (derivativeStep!2198 r!27340 c!14016) (h!35014 tl!4068)) lt!905360)))

(declare-fun b!2567438 () Bool)

(assert (=> b!2567438 (= e!1620787 e!1620786)))

(declare-fun c!412998 () Bool)

(assert (=> b!2567438 (= c!412998 ((_ is ElementMatch!7629) (derivativeStep!2198 r!27340 c!14016)))))

(declare-fun c!412997 () Bool)

(declare-fun bm!165365 () Bool)

(declare-fun call!165370 () Regex!7629)

(assert (=> bm!165365 (= call!165370 (derivativeStep!2198 (ite c!412997 (regTwo!15771 (derivativeStep!2198 r!27340 c!14016)) (ite c!412996 (reg!7958 (derivativeStep!2198 r!27340 c!14016)) (regOne!15770 (derivativeStep!2198 r!27340 c!14016)))) (h!35014 tl!4068)))))

(declare-fun b!2567439 () Bool)

(assert (=> b!2567439 (= c!412997 ((_ is Union!7629) (derivativeStep!2198 r!27340 c!14016)))))

(assert (=> b!2567439 (= e!1620786 e!1620784)))

(declare-fun b!2567440 () Bool)

(assert (=> b!2567440 (= e!1620784 (Union!7629 call!165373 call!165370))))

(declare-fun b!2567441 () Bool)

(assert (=> b!2567441 (= e!1620788 (Union!7629 (Concat!12325 call!165372 (regTwo!15770 (derivativeStep!2198 r!27340 c!14016))) EmptyLang!7629))))

(declare-fun bm!165366 () Bool)

(declare-fun call!165371 () Regex!7629)

(assert (=> bm!165366 (= call!165371 call!165370)))

(declare-fun bm!165367 () Bool)

(assert (=> bm!165367 (= call!165373 (derivativeStep!2198 (ite c!412997 (regOne!15771 (derivativeStep!2198 r!27340 c!14016)) (regTwo!15770 (derivativeStep!2198 r!27340 c!14016))) (h!35014 tl!4068)))))

(declare-fun b!2567442 () Bool)

(assert (=> b!2567442 (= e!1620785 (Concat!12325 call!165371 (derivativeStep!2198 r!27340 c!14016)))))

(declare-fun bm!165368 () Bool)

(assert (=> bm!165368 (= call!165372 call!165371)))

(declare-fun b!2567443 () Bool)

(assert (=> b!2567443 (= e!1620787 EmptyLang!7629)))

(assert (= (and d!726748 c!412995) b!2567443))

(assert (= (and d!726748 (not c!412995)) b!2567438))

(assert (= (and b!2567438 c!412998) b!2567434))

(assert (= (and b!2567438 (not c!412998)) b!2567439))

(assert (= (and b!2567439 c!412997) b!2567440))

(assert (= (and b!2567439 (not c!412997)) b!2567437))

(assert (= (and b!2567437 c!412996) b!2567442))

(assert (= (and b!2567437 (not c!412996)) b!2567435))

(assert (= (and b!2567435 c!412994) b!2567436))

(assert (= (and b!2567435 (not c!412994)) b!2567441))

(assert (= (or b!2567436 b!2567441) bm!165368))

(assert (= (or b!2567442 bm!165368) bm!165366))

(assert (= (or b!2567440 bm!165366) bm!165365))

(assert (= (or b!2567440 b!2567436) bm!165367))

(declare-fun m!2904977 () Bool)

(assert (=> b!2567435 m!2904977))

(declare-fun m!2904979 () Bool)

(assert (=> d!726748 m!2904979))

(assert (=> d!726748 m!2904727))

(assert (=> d!726748 m!2904749))

(declare-fun m!2904981 () Bool)

(assert (=> bm!165365 m!2904981))

(declare-fun m!2904983 () Bool)

(assert (=> bm!165367 m!2904983))

(assert (=> b!2566991 d!726748))

(declare-fun b!2567444 () Bool)

(declare-fun e!1620793 () Bool)

(declare-fun lt!905361 () Bool)

(assert (=> b!2567444 (= e!1620793 (not lt!905361))))

(declare-fun b!2567445 () Bool)

(declare-fun e!1620795 () Bool)

(assert (=> b!2567445 (= e!1620795 (= (head!5834 (tail!4109 tl!4068)) (c!412879 (derivativeStep!2198 lt!905326 (head!5834 tl!4068)))))))

(declare-fun b!2567446 () Bool)

(declare-fun res!1080245 () Bool)

(declare-fun e!1620789 () Bool)

(assert (=> b!2567446 (=> res!1080245 e!1620789)))

(assert (=> b!2567446 (= res!1080245 e!1620795)))

(declare-fun res!1080248 () Bool)

(assert (=> b!2567446 (=> (not res!1080248) (not e!1620795))))

(assert (=> b!2567446 (= res!1080248 lt!905361)))

(declare-fun b!2567447 () Bool)

(declare-fun e!1620790 () Bool)

(assert (=> b!2567447 (= e!1620790 (not (= (head!5834 (tail!4109 tl!4068)) (c!412879 (derivativeStep!2198 lt!905326 (head!5834 tl!4068))))))))

(declare-fun b!2567448 () Bool)

(declare-fun res!1080246 () Bool)

(assert (=> b!2567448 (=> (not res!1080246) (not e!1620795))))

(assert (=> b!2567448 (= res!1080246 (isEmpty!17050 (tail!4109 (tail!4109 tl!4068))))))

(declare-fun b!2567449 () Bool)

(declare-fun e!1620792 () Bool)

(assert (=> b!2567449 (= e!1620792 e!1620790)))

(declare-fun res!1080244 () Bool)

(assert (=> b!2567449 (=> res!1080244 e!1620790)))

(declare-fun call!165374 () Bool)

(assert (=> b!2567449 (= res!1080244 call!165374)))

(declare-fun b!2567450 () Bool)

(assert (=> b!2567450 (= e!1620789 e!1620792)))

(declare-fun res!1080249 () Bool)

(assert (=> b!2567450 (=> (not res!1080249) (not e!1620792))))

(assert (=> b!2567450 (= res!1080249 (not lt!905361))))

(declare-fun b!2567451 () Bool)

(declare-fun res!1080247 () Bool)

(assert (=> b!2567451 (=> (not res!1080247) (not e!1620795))))

(assert (=> b!2567451 (= res!1080247 (not call!165374))))

(declare-fun bm!165369 () Bool)

(assert (=> bm!165369 (= call!165374 (isEmpty!17050 (tail!4109 tl!4068)))))

(declare-fun b!2567453 () Bool)

(declare-fun res!1080251 () Bool)

(assert (=> b!2567453 (=> res!1080251 e!1620789)))

(assert (=> b!2567453 (= res!1080251 (not ((_ is ElementMatch!7629) (derivativeStep!2198 lt!905326 (head!5834 tl!4068)))))))

(assert (=> b!2567453 (= e!1620793 e!1620789)))

(declare-fun b!2567454 () Bool)

(declare-fun e!1620794 () Bool)

(assert (=> b!2567454 (= e!1620794 (matchR!3572 (derivativeStep!2198 (derivativeStep!2198 lt!905326 (head!5834 tl!4068)) (head!5834 (tail!4109 tl!4068))) (tail!4109 (tail!4109 tl!4068))))))

(declare-fun b!2567455 () Bool)

(assert (=> b!2567455 (= e!1620794 (nullable!2546 (derivativeStep!2198 lt!905326 (head!5834 tl!4068))))))

(declare-fun b!2567456 () Bool)

(declare-fun res!1080250 () Bool)

(assert (=> b!2567456 (=> res!1080250 e!1620790)))

(assert (=> b!2567456 (= res!1080250 (not (isEmpty!17050 (tail!4109 (tail!4109 tl!4068)))))))

(declare-fun b!2567457 () Bool)

(declare-fun e!1620791 () Bool)

(assert (=> b!2567457 (= e!1620791 e!1620793)))

(declare-fun c!413001 () Bool)

(assert (=> b!2567457 (= c!413001 ((_ is EmptyLang!7629) (derivativeStep!2198 lt!905326 (head!5834 tl!4068))))))

(declare-fun d!726750 () Bool)

(assert (=> d!726750 e!1620791))

(declare-fun c!412999 () Bool)

(assert (=> d!726750 (= c!412999 ((_ is EmptyExpr!7629) (derivativeStep!2198 lt!905326 (head!5834 tl!4068))))))

(assert (=> d!726750 (= lt!905361 e!1620794)))

(declare-fun c!413000 () Bool)

(assert (=> d!726750 (= c!413000 (isEmpty!17050 (tail!4109 tl!4068)))))

(assert (=> d!726750 (validRegex!3255 (derivativeStep!2198 lt!905326 (head!5834 tl!4068)))))

(assert (=> d!726750 (= (matchR!3572 (derivativeStep!2198 lt!905326 (head!5834 tl!4068)) (tail!4109 tl!4068)) lt!905361)))

(declare-fun b!2567452 () Bool)

(assert (=> b!2567452 (= e!1620791 (= lt!905361 call!165374))))

(assert (= (and d!726750 c!413000) b!2567455))

(assert (= (and d!726750 (not c!413000)) b!2567454))

(assert (= (and d!726750 c!412999) b!2567452))

(assert (= (and d!726750 (not c!412999)) b!2567457))

(assert (= (and b!2567457 c!413001) b!2567444))

(assert (= (and b!2567457 (not c!413001)) b!2567453))

(assert (= (and b!2567453 (not res!1080251)) b!2567446))

(assert (= (and b!2567446 res!1080248) b!2567451))

(assert (= (and b!2567451 res!1080247) b!2567448))

(assert (= (and b!2567448 res!1080246) b!2567445))

(assert (= (and b!2567446 (not res!1080245)) b!2567450))

(assert (= (and b!2567450 res!1080249) b!2567449))

(assert (= (and b!2567449 (not res!1080244)) b!2567456))

(assert (= (and b!2567456 (not res!1080250)) b!2567447))

(assert (= (or b!2567452 b!2567449 b!2567451) bm!165369))

(assert (=> b!2567448 m!2904837))

(declare-fun m!2904985 () Bool)

(assert (=> b!2567448 m!2904985))

(assert (=> b!2567448 m!2904985))

(declare-fun m!2904987 () Bool)

(assert (=> b!2567448 m!2904987))

(assert (=> b!2567447 m!2904837))

(declare-fun m!2904989 () Bool)

(assert (=> b!2567447 m!2904989))

(assert (=> bm!165369 m!2904837))

(assert (=> bm!165369 m!2904839))

(assert (=> d!726750 m!2904837))

(assert (=> d!726750 m!2904839))

(assert (=> d!726750 m!2904845))

(declare-fun m!2904991 () Bool)

(assert (=> d!726750 m!2904991))

(assert (=> b!2567456 m!2904837))

(assert (=> b!2567456 m!2904985))

(assert (=> b!2567456 m!2904985))

(assert (=> b!2567456 m!2904987))

(assert (=> b!2567454 m!2904837))

(assert (=> b!2567454 m!2904989))

(assert (=> b!2567454 m!2904845))

(assert (=> b!2567454 m!2904989))

(declare-fun m!2904993 () Bool)

(assert (=> b!2567454 m!2904993))

(assert (=> b!2567454 m!2904837))

(assert (=> b!2567454 m!2904985))

(assert (=> b!2567454 m!2904993))

(assert (=> b!2567454 m!2904985))

(declare-fun m!2904995 () Bool)

(assert (=> b!2567454 m!2904995))

(assert (=> b!2567445 m!2904837))

(assert (=> b!2567445 m!2904989))

(assert (=> b!2567455 m!2904845))

(declare-fun m!2904997 () Bool)

(assert (=> b!2567455 m!2904997))

(assert (=> b!2567216 d!726750))

(declare-fun b!2567458 () Bool)

(declare-fun e!1620798 () Regex!7629)

(assert (=> b!2567458 (= e!1620798 (ite (= (head!5834 tl!4068) (c!412879 lt!905326)) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567459 () Bool)

(declare-fun c!413002 () Bool)

(assert (=> b!2567459 (= c!413002 (nullable!2546 (regOne!15770 lt!905326)))))

(declare-fun e!1620797 () Regex!7629)

(declare-fun e!1620800 () Regex!7629)

(assert (=> b!2567459 (= e!1620797 e!1620800)))

(declare-fun b!2567460 () Bool)

(declare-fun call!165377 () Regex!7629)

(declare-fun call!165378 () Regex!7629)

(assert (=> b!2567460 (= e!1620800 (Union!7629 (Concat!12325 call!165377 (regTwo!15770 lt!905326)) call!165378))))

(declare-fun b!2567461 () Bool)

(declare-fun e!1620796 () Regex!7629)

(assert (=> b!2567461 (= e!1620796 e!1620797)))

(declare-fun c!413004 () Bool)

(assert (=> b!2567461 (= c!413004 ((_ is Star!7629) lt!905326))))

(declare-fun d!726752 () Bool)

(declare-fun lt!905362 () Regex!7629)

(assert (=> d!726752 (validRegex!3255 lt!905362)))

(declare-fun e!1620799 () Regex!7629)

(assert (=> d!726752 (= lt!905362 e!1620799)))

(declare-fun c!413003 () Bool)

(assert (=> d!726752 (= c!413003 (or ((_ is EmptyExpr!7629) lt!905326) ((_ is EmptyLang!7629) lt!905326)))))

(assert (=> d!726752 (validRegex!3255 lt!905326)))

(assert (=> d!726752 (= (derivativeStep!2198 lt!905326 (head!5834 tl!4068)) lt!905362)))

(declare-fun b!2567462 () Bool)

(assert (=> b!2567462 (= e!1620799 e!1620798)))

(declare-fun c!413006 () Bool)

(assert (=> b!2567462 (= c!413006 ((_ is ElementMatch!7629) lt!905326))))

(declare-fun bm!165370 () Bool)

(declare-fun c!413005 () Bool)

(declare-fun call!165375 () Regex!7629)

(assert (=> bm!165370 (= call!165375 (derivativeStep!2198 (ite c!413005 (regTwo!15771 lt!905326) (ite c!413004 (reg!7958 lt!905326) (regOne!15770 lt!905326))) (head!5834 tl!4068)))))

(declare-fun b!2567463 () Bool)

(assert (=> b!2567463 (= c!413005 ((_ is Union!7629) lt!905326))))

(assert (=> b!2567463 (= e!1620798 e!1620796)))

(declare-fun b!2567464 () Bool)

(assert (=> b!2567464 (= e!1620796 (Union!7629 call!165378 call!165375))))

(declare-fun b!2567465 () Bool)

(assert (=> b!2567465 (= e!1620800 (Union!7629 (Concat!12325 call!165377 (regTwo!15770 lt!905326)) EmptyLang!7629))))

(declare-fun bm!165371 () Bool)

(declare-fun call!165376 () Regex!7629)

(assert (=> bm!165371 (= call!165376 call!165375)))

(declare-fun bm!165372 () Bool)

(assert (=> bm!165372 (= call!165378 (derivativeStep!2198 (ite c!413005 (regOne!15771 lt!905326) (regTwo!15770 lt!905326)) (head!5834 tl!4068)))))

(declare-fun b!2567466 () Bool)

(assert (=> b!2567466 (= e!1620797 (Concat!12325 call!165376 lt!905326))))

(declare-fun bm!165373 () Bool)

(assert (=> bm!165373 (= call!165377 call!165376)))

(declare-fun b!2567467 () Bool)

(assert (=> b!2567467 (= e!1620799 EmptyLang!7629)))

(assert (= (and d!726752 c!413003) b!2567467))

(assert (= (and d!726752 (not c!413003)) b!2567462))

(assert (= (and b!2567462 c!413006) b!2567458))

(assert (= (and b!2567462 (not c!413006)) b!2567463))

(assert (= (and b!2567463 c!413005) b!2567464))

(assert (= (and b!2567463 (not c!413005)) b!2567461))

(assert (= (and b!2567461 c!413004) b!2567466))

(assert (= (and b!2567461 (not c!413004)) b!2567459))

(assert (= (and b!2567459 c!413002) b!2567460))

(assert (= (and b!2567459 (not c!413002)) b!2567465))

(assert (= (or b!2567460 b!2567465) bm!165373))

(assert (= (or b!2567466 bm!165373) bm!165371))

(assert (= (or b!2567464 bm!165371) bm!165370))

(assert (= (or b!2567464 b!2567460) bm!165372))

(declare-fun m!2904999 () Bool)

(assert (=> b!2567459 m!2904999))

(declare-fun m!2905001 () Bool)

(assert (=> d!726752 m!2905001))

(assert (=> d!726752 m!2904829))

(assert (=> bm!165370 m!2904841))

(declare-fun m!2905003 () Bool)

(assert (=> bm!165370 m!2905003))

(assert (=> bm!165372 m!2904841))

(declare-fun m!2905005 () Bool)

(assert (=> bm!165372 m!2905005))

(assert (=> b!2567216 d!726752))

(declare-fun d!726754 () Bool)

(assert (=> d!726754 (= (head!5834 tl!4068) (h!35014 tl!4068))))

(assert (=> b!2567216 d!726754))

(assert (=> b!2567216 d!726744))

(declare-fun d!726756 () Bool)

(assert (=> d!726756 (= (nullable!2546 lt!905326) (nullableFct!770 lt!905326))))

(declare-fun bs!469954 () Bool)

(assert (= bs!469954 d!726756))

(declare-fun m!2905007 () Bool)

(assert (=> bs!469954 m!2905007))

(assert (=> b!2567217 d!726756))

(declare-fun c!413007 () Bool)

(declare-fun bm!165374 () Bool)

(declare-fun call!165379 () Bool)

(assert (=> bm!165374 (= call!165379 (nullable!2546 (ite c!413007 (regOne!15771 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)) (regTwo!15770 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2567468 () Bool)

(declare-fun e!1620804 () Bool)

(declare-fun e!1620806 () Bool)

(assert (=> b!2567468 (= e!1620804 e!1620806)))

(declare-fun res!1080254 () Bool)

(declare-fun call!165380 () Bool)

(assert (=> b!2567468 (= res!1080254 call!165380)))

(assert (=> b!2567468 (=> (not res!1080254) (not e!1620806))))

(declare-fun bm!165375 () Bool)

(assert (=> bm!165375 (= call!165380 (nullable!2546 (ite c!413007 (regTwo!15771 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)) (regOne!15770 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2567469 () Bool)

(declare-fun e!1620805 () Bool)

(declare-fun e!1620801 () Bool)

(assert (=> b!2567469 (= e!1620805 e!1620801)))

(declare-fun res!1080255 () Bool)

(assert (=> b!2567469 (=> (not res!1080255) (not e!1620801))))

(assert (=> b!2567469 (= res!1080255 (and (not ((_ is EmptyLang!7629) (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7629) (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2567470 () Bool)

(assert (=> b!2567470 (= e!1620806 call!165379)))

(declare-fun d!726758 () Bool)

(declare-fun res!1080252 () Bool)

(assert (=> d!726758 (=> res!1080252 e!1620805)))

(assert (=> d!726758 (= res!1080252 ((_ is EmptyExpr!7629) (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))

(assert (=> d!726758 (= (nullableFct!770 (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)) e!1620805)))

(declare-fun b!2567471 () Bool)

(declare-fun e!1620803 () Bool)

(assert (=> b!2567471 (= e!1620804 e!1620803)))

(declare-fun res!1080253 () Bool)

(assert (=> b!2567471 (= res!1080253 call!165379)))

(assert (=> b!2567471 (=> res!1080253 e!1620803)))

(declare-fun b!2567472 () Bool)

(assert (=> b!2567472 (= e!1620803 call!165380)))

(declare-fun b!2567473 () Bool)

(declare-fun e!1620802 () Bool)

(assert (=> b!2567473 (= e!1620802 e!1620804)))

(assert (=> b!2567473 (= c!413007 ((_ is Union!7629) (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))

(declare-fun b!2567474 () Bool)

(assert (=> b!2567474 (= e!1620801 e!1620802)))

(declare-fun res!1080256 () Bool)

(assert (=> b!2567474 (=> res!1080256 e!1620802)))

(assert (=> b!2567474 (= res!1080256 ((_ is Star!7629) (derivative!324 (derivativeStep!2198 r!27340 c!14016) tl!4068)))))

(assert (= (and d!726758 (not res!1080252)) b!2567469))

(assert (= (and b!2567469 res!1080255) b!2567474))

(assert (= (and b!2567474 (not res!1080256)) b!2567473))

(assert (= (and b!2567473 c!413007) b!2567471))

(assert (= (and b!2567473 (not c!413007)) b!2567468))

(assert (= (and b!2567471 (not res!1080253)) b!2567472))

(assert (= (and b!2567468 res!1080254) b!2567470))

(assert (= (or b!2567472 b!2567468) bm!165375))

(assert (= (or b!2567471 b!2567470) bm!165374))

(declare-fun m!2905009 () Bool)

(assert (=> bm!165374 m!2905009))

(declare-fun m!2905011 () Bool)

(assert (=> bm!165375 m!2905011))

(assert (=> d!726676 d!726758))

(declare-fun d!726760 () Bool)

(assert (=> d!726760 (= (nullable!2546 (regOne!15770 (regOne!15770 r!27340))) (nullableFct!770 (regOne!15770 (regOne!15770 r!27340))))))

(declare-fun bs!469955 () Bool)

(assert (= bs!469955 d!726760))

(declare-fun m!2905013 () Bool)

(assert (=> bs!469955 m!2905013))

(assert (=> b!2567121 d!726760))

(declare-fun d!726762 () Bool)

(declare-fun res!1080258 () Bool)

(declare-fun e!1620808 () Bool)

(assert (=> d!726762 (=> res!1080258 e!1620808)))

(assert (=> d!726762 (= res!1080258 ((_ is ElementMatch!7629) (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(assert (=> d!726762 (= (validRegex!3255 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) e!1620808)))

(declare-fun b!2567475 () Bool)

(declare-fun res!1080257 () Bool)

(declare-fun e!1620807 () Bool)

(assert (=> b!2567475 (=> (not res!1080257) (not e!1620807))))

(declare-fun call!165383 () Bool)

(assert (=> b!2567475 (= res!1080257 call!165383)))

(declare-fun e!1620810 () Bool)

(assert (=> b!2567475 (= e!1620810 e!1620807)))

(declare-fun b!2567476 () Bool)

(declare-fun e!1620813 () Bool)

(declare-fun e!1620812 () Bool)

(assert (=> b!2567476 (= e!1620813 e!1620812)))

(declare-fun res!1080259 () Bool)

(assert (=> b!2567476 (=> (not res!1080259) (not e!1620812))))

(declare-fun call!165381 () Bool)

(assert (=> b!2567476 (= res!1080259 call!165381)))

(declare-fun bm!165376 () Bool)

(declare-fun call!165382 () Bool)

(assert (=> bm!165376 (= call!165383 call!165382)))

(declare-fun b!2567477 () Bool)

(declare-fun res!1080261 () Bool)

(assert (=> b!2567477 (=> res!1080261 e!1620813)))

(assert (=> b!2567477 (= res!1080261 (not ((_ is Concat!12325) (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))))

(assert (=> b!2567477 (= e!1620810 e!1620813)))

(declare-fun b!2567478 () Bool)

(assert (=> b!2567478 (= e!1620812 call!165383)))

(declare-fun b!2567479 () Bool)

(declare-fun e!1620811 () Bool)

(assert (=> b!2567479 (= e!1620808 e!1620811)))

(declare-fun c!413008 () Bool)

(assert (=> b!2567479 (= c!413008 ((_ is Star!7629) (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(declare-fun b!2567480 () Bool)

(assert (=> b!2567480 (= e!1620807 call!165381)))

(declare-fun c!413009 () Bool)

(declare-fun bm!165377 () Bool)

(assert (=> bm!165377 (= call!165382 (validRegex!3255 (ite c!413008 (reg!7958 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) (ite c!413009 (regOne!15771 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) (regTwo!15770 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))))))

(declare-fun b!2567481 () Bool)

(declare-fun e!1620809 () Bool)

(assert (=> b!2567481 (= e!1620809 call!165382)))

(declare-fun b!2567482 () Bool)

(assert (=> b!2567482 (= e!1620811 e!1620810)))

(assert (=> b!2567482 (= c!413009 ((_ is Union!7629) (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(declare-fun bm!165378 () Bool)

(assert (=> bm!165378 (= call!165381 (validRegex!3255 (ite c!413009 (regTwo!15771 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) (regOne!15770 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))))

(declare-fun b!2567483 () Bool)

(assert (=> b!2567483 (= e!1620811 e!1620809)))

(declare-fun res!1080260 () Bool)

(assert (=> b!2567483 (= res!1080260 (not (nullable!2546 (reg!7958 (ite c!412917 (reg!7958 r!27340) (ite c!412918 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))))

(assert (=> b!2567483 (=> (not res!1080260) (not e!1620809))))

(assert (= (and d!726762 (not res!1080258)) b!2567479))

(assert (= (and b!2567479 c!413008) b!2567483))

(assert (= (and b!2567479 (not c!413008)) b!2567482))

(assert (= (and b!2567483 res!1080260) b!2567481))

(assert (= (and b!2567482 c!413009) b!2567475))

(assert (= (and b!2567482 (not c!413009)) b!2567477))

(assert (= (and b!2567475 res!1080257) b!2567480))

(assert (= (and b!2567477 (not res!1080261)) b!2567476))

(assert (= (and b!2567476 res!1080259) b!2567478))

(assert (= (or b!2567475 b!2567478) bm!165376))

(assert (= (or b!2567480 b!2567476) bm!165378))

(assert (= (or b!2567481 bm!165376) bm!165377))

(declare-fun m!2905015 () Bool)

(assert (=> bm!165377 m!2905015))

(declare-fun m!2905017 () Bool)

(assert (=> bm!165378 m!2905017))

(declare-fun m!2905019 () Bool)

(assert (=> b!2567483 m!2905019))

(assert (=> bm!165299 d!726762))

(assert (=> b!2567209 d!726754))

(assert (=> b!2567210 d!726742))

(assert (=> b!2567210 d!726744))

(declare-fun d!726764 () Bool)

(assert (=> d!726764 (= (nullable!2546 (reg!7958 r!27340)) (nullableFct!770 (reg!7958 r!27340)))))

(declare-fun bs!469956 () Bool)

(assert (= bs!469956 d!726764))

(declare-fun m!2905021 () Bool)

(assert (=> bs!469956 m!2905021))

(assert (=> b!2567110 d!726764))

(declare-fun d!726766 () Bool)

(declare-fun res!1080263 () Bool)

(declare-fun e!1620815 () Bool)

(assert (=> d!726766 (=> res!1080263 e!1620815)))

(assert (=> d!726766 (= res!1080263 ((_ is ElementMatch!7629) lt!905326))))

(assert (=> d!726766 (= (validRegex!3255 lt!905326) e!1620815)))

(declare-fun b!2567484 () Bool)

(declare-fun res!1080262 () Bool)

(declare-fun e!1620814 () Bool)

(assert (=> b!2567484 (=> (not res!1080262) (not e!1620814))))

(declare-fun call!165386 () Bool)

(assert (=> b!2567484 (= res!1080262 call!165386)))

(declare-fun e!1620817 () Bool)

(assert (=> b!2567484 (= e!1620817 e!1620814)))

(declare-fun b!2567485 () Bool)

(declare-fun e!1620820 () Bool)

(declare-fun e!1620819 () Bool)

(assert (=> b!2567485 (= e!1620820 e!1620819)))

(declare-fun res!1080264 () Bool)

(assert (=> b!2567485 (=> (not res!1080264) (not e!1620819))))

(declare-fun call!165384 () Bool)

(assert (=> b!2567485 (= res!1080264 call!165384)))

(declare-fun bm!165379 () Bool)

(declare-fun call!165385 () Bool)

(assert (=> bm!165379 (= call!165386 call!165385)))

(declare-fun b!2567486 () Bool)

(declare-fun res!1080266 () Bool)

(assert (=> b!2567486 (=> res!1080266 e!1620820)))

(assert (=> b!2567486 (= res!1080266 (not ((_ is Concat!12325) lt!905326)))))

(assert (=> b!2567486 (= e!1620817 e!1620820)))

(declare-fun b!2567487 () Bool)

(assert (=> b!2567487 (= e!1620819 call!165386)))

(declare-fun b!2567488 () Bool)

(declare-fun e!1620818 () Bool)

(assert (=> b!2567488 (= e!1620815 e!1620818)))

(declare-fun c!413010 () Bool)

(assert (=> b!2567488 (= c!413010 ((_ is Star!7629) lt!905326))))

(declare-fun b!2567489 () Bool)

(assert (=> b!2567489 (= e!1620814 call!165384)))

(declare-fun bm!165380 () Bool)

(declare-fun c!413011 () Bool)

(assert (=> bm!165380 (= call!165385 (validRegex!3255 (ite c!413010 (reg!7958 lt!905326) (ite c!413011 (regOne!15771 lt!905326) (regTwo!15770 lt!905326)))))))

(declare-fun b!2567490 () Bool)

(declare-fun e!1620816 () Bool)

(assert (=> b!2567490 (= e!1620816 call!165385)))

(declare-fun b!2567491 () Bool)

(assert (=> b!2567491 (= e!1620818 e!1620817)))

(assert (=> b!2567491 (= c!413011 ((_ is Union!7629) lt!905326))))

(declare-fun bm!165381 () Bool)

(assert (=> bm!165381 (= call!165384 (validRegex!3255 (ite c!413011 (regTwo!15771 lt!905326) (regOne!15770 lt!905326))))))

(declare-fun b!2567492 () Bool)

(assert (=> b!2567492 (= e!1620818 e!1620816)))

(declare-fun res!1080265 () Bool)

(assert (=> b!2567492 (= res!1080265 (not (nullable!2546 (reg!7958 lt!905326))))))

(assert (=> b!2567492 (=> (not res!1080265) (not e!1620816))))

(assert (= (and d!726766 (not res!1080263)) b!2567488))

(assert (= (and b!2567488 c!413010) b!2567492))

(assert (= (and b!2567488 (not c!413010)) b!2567491))

(assert (= (and b!2567492 res!1080265) b!2567490))

(assert (= (and b!2567491 c!413011) b!2567484))

(assert (= (and b!2567491 (not c!413011)) b!2567486))

(assert (= (and b!2567484 res!1080262) b!2567489))

(assert (= (and b!2567486 (not res!1080266)) b!2567485))

(assert (= (and b!2567485 res!1080264) b!2567487))

(assert (= (or b!2567484 b!2567487) bm!165379))

(assert (= (or b!2567489 b!2567485) bm!165381))

(assert (= (or b!2567490 bm!165379) bm!165380))

(declare-fun m!2905023 () Bool)

(assert (=> bm!165380 m!2905023))

(declare-fun m!2905025 () Bool)

(assert (=> bm!165381 m!2905025))

(declare-fun m!2905027 () Bool)

(assert (=> b!2567492 m!2905027))

(assert (=> d!726694 d!726766))

(assert (=> d!726694 d!726700))

(declare-fun d!726768 () Bool)

(assert (=> d!726768 (= (matchR!3572 lt!905326 tl!4068) (matchR!3572 (derivative!324 lt!905326 tl!4068) Nil!29594))))

(assert (=> d!726768 true))

(declare-fun _$108!396 () Unit!43439)

(assert (=> d!726768 (= (choose!15131 lt!905326 tl!4068) _$108!396)))

(declare-fun bs!469957 () Bool)

(assert (= bs!469957 d!726768))

(assert (=> bs!469957 m!2904739))

(assert (=> bs!469957 m!2904743))

(assert (=> bs!469957 m!2904743))

(assert (=> bs!469957 m!2904831))

(assert (=> d!726694 d!726768))

(declare-fun b!2567493 () Bool)

(declare-fun e!1620825 () Bool)

(declare-fun lt!905363 () Bool)

(assert (=> b!2567493 (= e!1620825 (not lt!905363))))

(declare-fun b!2567494 () Bool)

(declare-fun e!1620827 () Bool)

(assert (=> b!2567494 (= e!1620827 (= (head!5834 Nil!29594) (c!412879 (derivative!324 lt!905326 tl!4068))))))

(declare-fun b!2567495 () Bool)

(declare-fun res!1080268 () Bool)

(declare-fun e!1620821 () Bool)

(assert (=> b!2567495 (=> res!1080268 e!1620821)))

(assert (=> b!2567495 (= res!1080268 e!1620827)))

(declare-fun res!1080271 () Bool)

(assert (=> b!2567495 (=> (not res!1080271) (not e!1620827))))

(assert (=> b!2567495 (= res!1080271 lt!905363)))

(declare-fun b!2567496 () Bool)

(declare-fun e!1620822 () Bool)

(assert (=> b!2567496 (= e!1620822 (not (= (head!5834 Nil!29594) (c!412879 (derivative!324 lt!905326 tl!4068)))))))

(declare-fun b!2567497 () Bool)

(declare-fun res!1080269 () Bool)

(assert (=> b!2567497 (=> (not res!1080269) (not e!1620827))))

(assert (=> b!2567497 (= res!1080269 (isEmpty!17050 (tail!4109 Nil!29594)))))

(declare-fun b!2567498 () Bool)

(declare-fun e!1620824 () Bool)

(assert (=> b!2567498 (= e!1620824 e!1620822)))

(declare-fun res!1080267 () Bool)

(assert (=> b!2567498 (=> res!1080267 e!1620822)))

(declare-fun call!165387 () Bool)

(assert (=> b!2567498 (= res!1080267 call!165387)))

(declare-fun b!2567499 () Bool)

(assert (=> b!2567499 (= e!1620821 e!1620824)))

(declare-fun res!1080272 () Bool)

(assert (=> b!2567499 (=> (not res!1080272) (not e!1620824))))

(assert (=> b!2567499 (= res!1080272 (not lt!905363))))

(declare-fun b!2567500 () Bool)

(declare-fun res!1080270 () Bool)

(assert (=> b!2567500 (=> (not res!1080270) (not e!1620827))))

(assert (=> b!2567500 (= res!1080270 (not call!165387))))

(declare-fun bm!165382 () Bool)

(assert (=> bm!165382 (= call!165387 (isEmpty!17050 Nil!29594))))

(declare-fun b!2567502 () Bool)

(declare-fun res!1080274 () Bool)

(assert (=> b!2567502 (=> res!1080274 e!1620821)))

(assert (=> b!2567502 (= res!1080274 (not ((_ is ElementMatch!7629) (derivative!324 lt!905326 tl!4068))))))

(assert (=> b!2567502 (= e!1620825 e!1620821)))

(declare-fun b!2567503 () Bool)

(declare-fun e!1620826 () Bool)

(assert (=> b!2567503 (= e!1620826 (matchR!3572 (derivativeStep!2198 (derivative!324 lt!905326 tl!4068) (head!5834 Nil!29594)) (tail!4109 Nil!29594)))))

(declare-fun b!2567504 () Bool)

(assert (=> b!2567504 (= e!1620826 (nullable!2546 (derivative!324 lt!905326 tl!4068)))))

(declare-fun b!2567505 () Bool)

(declare-fun res!1080273 () Bool)

(assert (=> b!2567505 (=> res!1080273 e!1620822)))

(assert (=> b!2567505 (= res!1080273 (not (isEmpty!17050 (tail!4109 Nil!29594))))))

(declare-fun b!2567506 () Bool)

(declare-fun e!1620823 () Bool)

(assert (=> b!2567506 (= e!1620823 e!1620825)))

(declare-fun c!413014 () Bool)

(assert (=> b!2567506 (= c!413014 ((_ is EmptyLang!7629) (derivative!324 lt!905326 tl!4068)))))

(declare-fun d!726770 () Bool)

(assert (=> d!726770 e!1620823))

(declare-fun c!413012 () Bool)

(assert (=> d!726770 (= c!413012 ((_ is EmptyExpr!7629) (derivative!324 lt!905326 tl!4068)))))

(assert (=> d!726770 (= lt!905363 e!1620826)))

(declare-fun c!413013 () Bool)

(assert (=> d!726770 (= c!413013 (isEmpty!17050 Nil!29594))))

(assert (=> d!726770 (validRegex!3255 (derivative!324 lt!905326 tl!4068))))

(assert (=> d!726770 (= (matchR!3572 (derivative!324 lt!905326 tl!4068) Nil!29594) lt!905363)))

(declare-fun b!2567501 () Bool)

(assert (=> b!2567501 (= e!1620823 (= lt!905363 call!165387))))

(assert (= (and d!726770 c!413013) b!2567504))

(assert (= (and d!726770 (not c!413013)) b!2567503))

(assert (= (and d!726770 c!413012) b!2567501))

(assert (= (and d!726770 (not c!413012)) b!2567506))

(assert (= (and b!2567506 c!413014) b!2567493))

(assert (= (and b!2567506 (not c!413014)) b!2567502))

(assert (= (and b!2567502 (not res!1080274)) b!2567495))

(assert (= (and b!2567495 res!1080271) b!2567500))

(assert (= (and b!2567500 res!1080270) b!2567497))

(assert (= (and b!2567497 res!1080269) b!2567494))

(assert (= (and b!2567495 (not res!1080268)) b!2567499))

(assert (= (and b!2567499 res!1080272) b!2567498))

(assert (= (and b!2567498 (not res!1080267)) b!2567505))

(assert (= (and b!2567505 (not res!1080273)) b!2567496))

(assert (= (or b!2567501 b!2567498 b!2567500) bm!165382))

(assert (=> b!2567497 m!2904861))

(assert (=> b!2567497 m!2904861))

(assert (=> b!2567497 m!2904863))

(assert (=> b!2567496 m!2904865))

(assert (=> bm!165382 m!2904867))

(assert (=> d!726770 m!2904867))

(assert (=> d!726770 m!2904743))

(declare-fun m!2905029 () Bool)

(assert (=> d!726770 m!2905029))

(assert (=> b!2567505 m!2904861))

(assert (=> b!2567505 m!2904861))

(assert (=> b!2567505 m!2904863))

(assert (=> b!2567503 m!2904865))

(assert (=> b!2567503 m!2904743))

(assert (=> b!2567503 m!2904865))

(declare-fun m!2905031 () Bool)

(assert (=> b!2567503 m!2905031))

(assert (=> b!2567503 m!2904861))

(assert (=> b!2567503 m!2905031))

(assert (=> b!2567503 m!2904861))

(declare-fun m!2905033 () Bool)

(assert (=> b!2567503 m!2905033))

(assert (=> b!2567494 m!2904865))

(assert (=> b!2567504 m!2904743))

(declare-fun m!2905035 () Bool)

(assert (=> b!2567504 m!2905035))

(assert (=> d!726694 d!726770))

(assert (=> d!726694 d!726708))

(declare-fun d!726772 () Bool)

(assert (not d!726772))

(assert (=> b!2567242 d!726772))

(declare-fun d!726774 () Bool)

(assert (not d!726774))

(assert (=> b!2567242 d!726774))

(declare-fun d!726776 () Bool)

(declare-fun lt!905364 () Regex!7629)

(assert (=> d!726776 (validRegex!3255 lt!905364)))

(declare-fun e!1620828 () Regex!7629)

(assert (=> d!726776 (= lt!905364 e!1620828)))

(declare-fun c!413015 () Bool)

(assert (=> d!726776 (= c!413015 ((_ is Cons!29594) (t!211393 tl!4068)))))

(assert (=> d!726776 (validRegex!3255 (derivativeStep!2198 lt!905326 (h!35014 tl!4068)))))

(assert (=> d!726776 (= (derivative!324 (derivativeStep!2198 lt!905326 (h!35014 tl!4068)) (t!211393 tl!4068)) lt!905364)))

(declare-fun b!2567507 () Bool)

(assert (=> b!2567507 (= e!1620828 (derivative!324 (derivativeStep!2198 (derivativeStep!2198 lt!905326 (h!35014 tl!4068)) (h!35014 (t!211393 tl!4068))) (t!211393 (t!211393 tl!4068))))))

(declare-fun b!2567508 () Bool)

(assert (=> b!2567508 (= e!1620828 (derivativeStep!2198 lt!905326 (h!35014 tl!4068)))))

(assert (= (and d!726776 c!413015) b!2567507))

(assert (= (and d!726776 (not c!413015)) b!2567508))

(declare-fun m!2905037 () Bool)

(assert (=> d!726776 m!2905037))

(assert (=> d!726776 m!2904885))

(declare-fun m!2905039 () Bool)

(assert (=> d!726776 m!2905039))

(assert (=> b!2567507 m!2904885))

(declare-fun m!2905041 () Bool)

(assert (=> b!2567507 m!2905041))

(assert (=> b!2567507 m!2905041))

(declare-fun m!2905043 () Bool)

(assert (=> b!2567507 m!2905043))

(assert (=> b!2567244 d!726776))

(declare-fun b!2567509 () Bool)

(declare-fun e!1620831 () Regex!7629)

(assert (=> b!2567509 (= e!1620831 (ite (= (h!35014 tl!4068) (c!412879 lt!905326)) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567510 () Bool)

(declare-fun c!413016 () Bool)

(assert (=> b!2567510 (= c!413016 (nullable!2546 (regOne!15770 lt!905326)))))

(declare-fun e!1620830 () Regex!7629)

(declare-fun e!1620833 () Regex!7629)

(assert (=> b!2567510 (= e!1620830 e!1620833)))

(declare-fun call!165390 () Regex!7629)

(declare-fun b!2567511 () Bool)

(declare-fun call!165391 () Regex!7629)

(assert (=> b!2567511 (= e!1620833 (Union!7629 (Concat!12325 call!165390 (regTwo!15770 lt!905326)) call!165391))))

(declare-fun b!2567512 () Bool)

(declare-fun e!1620829 () Regex!7629)

(assert (=> b!2567512 (= e!1620829 e!1620830)))

(declare-fun c!413018 () Bool)

(assert (=> b!2567512 (= c!413018 ((_ is Star!7629) lt!905326))))

(declare-fun d!726778 () Bool)

(declare-fun lt!905365 () Regex!7629)

(assert (=> d!726778 (validRegex!3255 lt!905365)))

(declare-fun e!1620832 () Regex!7629)

(assert (=> d!726778 (= lt!905365 e!1620832)))

(declare-fun c!413017 () Bool)

(assert (=> d!726778 (= c!413017 (or ((_ is EmptyExpr!7629) lt!905326) ((_ is EmptyLang!7629) lt!905326)))))

(assert (=> d!726778 (validRegex!3255 lt!905326)))

(assert (=> d!726778 (= (derivativeStep!2198 lt!905326 (h!35014 tl!4068)) lt!905365)))

(declare-fun b!2567513 () Bool)

(assert (=> b!2567513 (= e!1620832 e!1620831)))

(declare-fun c!413020 () Bool)

(assert (=> b!2567513 (= c!413020 ((_ is ElementMatch!7629) lt!905326))))

(declare-fun bm!165383 () Bool)

(declare-fun call!165388 () Regex!7629)

(declare-fun c!413019 () Bool)

(assert (=> bm!165383 (= call!165388 (derivativeStep!2198 (ite c!413019 (regTwo!15771 lt!905326) (ite c!413018 (reg!7958 lt!905326) (regOne!15770 lt!905326))) (h!35014 tl!4068)))))

(declare-fun b!2567514 () Bool)

(assert (=> b!2567514 (= c!413019 ((_ is Union!7629) lt!905326))))

(assert (=> b!2567514 (= e!1620831 e!1620829)))

(declare-fun b!2567515 () Bool)

(assert (=> b!2567515 (= e!1620829 (Union!7629 call!165391 call!165388))))

(declare-fun b!2567516 () Bool)

(assert (=> b!2567516 (= e!1620833 (Union!7629 (Concat!12325 call!165390 (regTwo!15770 lt!905326)) EmptyLang!7629))))

(declare-fun bm!165384 () Bool)

(declare-fun call!165389 () Regex!7629)

(assert (=> bm!165384 (= call!165389 call!165388)))

(declare-fun bm!165385 () Bool)

(assert (=> bm!165385 (= call!165391 (derivativeStep!2198 (ite c!413019 (regOne!15771 lt!905326) (regTwo!15770 lt!905326)) (h!35014 tl!4068)))))

(declare-fun b!2567517 () Bool)

(assert (=> b!2567517 (= e!1620830 (Concat!12325 call!165389 lt!905326))))

(declare-fun bm!165386 () Bool)

(assert (=> bm!165386 (= call!165390 call!165389)))

(declare-fun b!2567518 () Bool)

(assert (=> b!2567518 (= e!1620832 EmptyLang!7629)))

(assert (= (and d!726778 c!413017) b!2567518))

(assert (= (and d!726778 (not c!413017)) b!2567513))

(assert (= (and b!2567513 c!413020) b!2567509))

(assert (= (and b!2567513 (not c!413020)) b!2567514))

(assert (= (and b!2567514 c!413019) b!2567515))

(assert (= (and b!2567514 (not c!413019)) b!2567512))

(assert (= (and b!2567512 c!413018) b!2567517))

(assert (= (and b!2567512 (not c!413018)) b!2567510))

(assert (= (and b!2567510 c!413016) b!2567511))

(assert (= (and b!2567510 (not c!413016)) b!2567516))

(assert (= (or b!2567511 b!2567516) bm!165386))

(assert (= (or b!2567517 bm!165386) bm!165384))

(assert (= (or b!2567515 bm!165384) bm!165383))

(assert (= (or b!2567515 b!2567511) bm!165385))

(assert (=> b!2567510 m!2904999))

(declare-fun m!2905045 () Bool)

(assert (=> d!726778 m!2905045))

(assert (=> d!726778 m!2904829))

(declare-fun m!2905047 () Bool)

(assert (=> bm!165383 m!2905047))

(declare-fun m!2905049 () Bool)

(assert (=> bm!165385 m!2905049))

(assert (=> b!2567244 d!726778))

(declare-fun d!726780 () Bool)

(assert (=> d!726780 (= (isEmpty!17050 tl!4068) ((_ is Nil!29594) tl!4068))))

(assert (=> bm!165320 d!726780))

(declare-fun d!726782 () Bool)

(assert (not d!726782))

(assert (=> b!2567240 d!726782))

(declare-fun d!726784 () Bool)

(assert (not d!726784))

(assert (=> b!2567240 d!726784))

(assert (=> b!2567240 d!726728))

(assert (=> b!2567240 d!726774))

(declare-fun d!726786 () Bool)

(declare-fun res!1080276 () Bool)

(declare-fun e!1620835 () Bool)

(assert (=> d!726786 (=> res!1080276 e!1620835)))

(assert (=> d!726786 (= res!1080276 ((_ is ElementMatch!7629) (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))

(assert (=> d!726786 (= (validRegex!3255 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))) e!1620835)))

(declare-fun b!2567519 () Bool)

(declare-fun res!1080275 () Bool)

(declare-fun e!1620834 () Bool)

(assert (=> b!2567519 (=> (not res!1080275) (not e!1620834))))

(declare-fun call!165394 () Bool)

(assert (=> b!2567519 (= res!1080275 call!165394)))

(declare-fun e!1620837 () Bool)

(assert (=> b!2567519 (= e!1620837 e!1620834)))

(declare-fun b!2567520 () Bool)

(declare-fun e!1620840 () Bool)

(declare-fun e!1620839 () Bool)

(assert (=> b!2567520 (= e!1620840 e!1620839)))

(declare-fun res!1080277 () Bool)

(assert (=> b!2567520 (=> (not res!1080277) (not e!1620839))))

(declare-fun call!165392 () Bool)

(assert (=> b!2567520 (= res!1080277 call!165392)))

(declare-fun bm!165387 () Bool)

(declare-fun call!165393 () Bool)

(assert (=> bm!165387 (= call!165394 call!165393)))

(declare-fun b!2567521 () Bool)

(declare-fun res!1080279 () Bool)

(assert (=> b!2567521 (=> res!1080279 e!1620840)))

(assert (=> b!2567521 (= res!1080279 (not ((_ is Concat!12325) (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340)))))))

(assert (=> b!2567521 (= e!1620837 e!1620840)))

(declare-fun b!2567522 () Bool)

(assert (=> b!2567522 (= e!1620839 call!165394)))

(declare-fun b!2567523 () Bool)

(declare-fun e!1620838 () Bool)

(assert (=> b!2567523 (= e!1620835 e!1620838)))

(declare-fun c!413021 () Bool)

(assert (=> b!2567523 (= c!413021 ((_ is Star!7629) (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))

(declare-fun b!2567524 () Bool)

(assert (=> b!2567524 (= e!1620834 call!165392)))

(declare-fun bm!165388 () Bool)

(declare-fun c!413022 () Bool)

(assert (=> bm!165388 (= call!165393 (validRegex!3255 (ite c!413021 (reg!7958 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))) (ite c!413022 (regOne!15771 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))) (regTwo!15770 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340)))))))))

(declare-fun b!2567525 () Bool)

(declare-fun e!1620836 () Bool)

(assert (=> b!2567525 (= e!1620836 call!165393)))

(declare-fun b!2567526 () Bool)

(assert (=> b!2567526 (= e!1620838 e!1620837)))

(assert (=> b!2567526 (= c!413022 ((_ is Union!7629) (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))

(declare-fun bm!165389 () Bool)

(assert (=> bm!165389 (= call!165392 (validRegex!3255 (ite c!413022 (regTwo!15771 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))) (regOne!15770 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))))

(declare-fun b!2567527 () Bool)

(assert (=> b!2567527 (= e!1620838 e!1620836)))

(declare-fun res!1080278 () Bool)

(assert (=> b!2567527 (= res!1080278 (not (nullable!2546 (reg!7958 (ite c!412918 (regTwo!15771 r!27340) (regOne!15770 r!27340))))))))

(assert (=> b!2567527 (=> (not res!1080278) (not e!1620836))))

(assert (= (and d!726786 (not res!1080276)) b!2567523))

(assert (= (and b!2567523 c!413021) b!2567527))

(assert (= (and b!2567523 (not c!413021)) b!2567526))

(assert (= (and b!2567527 res!1080278) b!2567525))

(assert (= (and b!2567526 c!413022) b!2567519))

(assert (= (and b!2567526 (not c!413022)) b!2567521))

(assert (= (and b!2567519 res!1080275) b!2567524))

(assert (= (and b!2567521 (not res!1080279)) b!2567520))

(assert (= (and b!2567520 res!1080277) b!2567522))

(assert (= (or b!2567519 b!2567522) bm!165387))

(assert (= (or b!2567524 b!2567520) bm!165389))

(assert (= (or b!2567525 bm!165387) bm!165388))

(declare-fun m!2905051 () Bool)

(assert (=> bm!165388 m!2905051))

(declare-fun m!2905053 () Bool)

(assert (=> bm!165389 m!2905053))

(declare-fun m!2905055 () Bool)

(assert (=> b!2567527 m!2905055))

(assert (=> bm!165300 d!726786))

(declare-fun d!726788 () Bool)

(assert (=> d!726788 (= (nullable!2546 lt!905324) (nullableFct!770 lt!905324))))

(declare-fun bs!469958 () Bool)

(assert (= bs!469958 d!726788))

(declare-fun m!2905057 () Bool)

(assert (=> bs!469958 m!2905057))

(assert (=> b!2567241 d!726788))

(assert (=> d!726700 d!726780))

(assert (=> d!726700 d!726766))

(declare-fun b!2567528 () Bool)

(declare-fun e!1620843 () Regex!7629)

(assert (=> b!2567528 (= e!1620843 (ite (= c!14016 (c!412879 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567529 () Bool)

(declare-fun c!413023 () Bool)

(assert (=> b!2567529 (= c!413023 (nullable!2546 (regOne!15770 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))))))

(declare-fun e!1620842 () Regex!7629)

(declare-fun e!1620845 () Regex!7629)

(assert (=> b!2567529 (= e!1620842 e!1620845)))

(declare-fun call!165397 () Regex!7629)

(declare-fun b!2567530 () Bool)

(declare-fun call!165398 () Regex!7629)

(assert (=> b!2567530 (= e!1620845 (Union!7629 (Concat!12325 call!165397 (regTwo!15770 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))) call!165398))))

(declare-fun b!2567531 () Bool)

(declare-fun e!1620841 () Regex!7629)

(assert (=> b!2567531 (= e!1620841 e!1620842)))

(declare-fun c!413025 () Bool)

(assert (=> b!2567531 (= c!413025 ((_ is Star!7629) (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))))))

(declare-fun d!726790 () Bool)

(declare-fun lt!905366 () Regex!7629)

(assert (=> d!726790 (validRegex!3255 lt!905366)))

(declare-fun e!1620844 () Regex!7629)

(assert (=> d!726790 (= lt!905366 e!1620844)))

(declare-fun c!413024 () Bool)

(assert (=> d!726790 (= c!413024 (or ((_ is EmptyExpr!7629) (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))) ((_ is EmptyLang!7629) (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))))))

(assert (=> d!726790 (validRegex!3255 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))))

(assert (=> d!726790 (= (derivativeStep!2198 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))) c!14016) lt!905366)))

(declare-fun b!2567532 () Bool)

(assert (=> b!2567532 (= e!1620844 e!1620843)))

(declare-fun c!413027 () Bool)

(assert (=> b!2567532 (= c!413027 ((_ is ElementMatch!7629) (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))))))

(declare-fun call!165395 () Regex!7629)

(declare-fun bm!165390 () Bool)

(declare-fun c!413026 () Bool)

(assert (=> bm!165390 (= call!165395 (derivativeStep!2198 (ite c!413026 (regTwo!15771 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))) (ite c!413025 (reg!7958 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))) (regOne!15770 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))))) c!14016))))

(declare-fun b!2567533 () Bool)

(assert (=> b!2567533 (= c!413026 ((_ is Union!7629) (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))))))

(assert (=> b!2567533 (= e!1620843 e!1620841)))

(declare-fun b!2567534 () Bool)

(assert (=> b!2567534 (= e!1620841 (Union!7629 call!165398 call!165395))))

(declare-fun b!2567535 () Bool)

(assert (=> b!2567535 (= e!1620845 (Union!7629 (Concat!12325 call!165397 (regTwo!15770 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))) EmptyLang!7629))))

(declare-fun bm!165391 () Bool)

(declare-fun call!165396 () Regex!7629)

(assert (=> bm!165391 (= call!165396 call!165395)))

(declare-fun bm!165392 () Bool)

(assert (=> bm!165392 (= call!165398 (derivativeStep!2198 (ite c!413026 (regOne!15771 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))) (regTwo!15770 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340))))) c!14016))))

(declare-fun b!2567536 () Bool)

(assert (=> b!2567536 (= e!1620842 (Concat!12325 call!165396 (ite c!412905 (regTwo!15771 r!27340) (ite c!412904 (reg!7958 r!27340) (regOne!15770 r!27340)))))))

(declare-fun bm!165393 () Bool)

(assert (=> bm!165393 (= call!165397 call!165396)))

(declare-fun b!2567537 () Bool)

(assert (=> b!2567537 (= e!1620844 EmptyLang!7629)))

(assert (= (and d!726790 c!413024) b!2567537))

(assert (= (and d!726790 (not c!413024)) b!2567532))

(assert (= (and b!2567532 c!413027) b!2567528))

(assert (= (and b!2567532 (not c!413027)) b!2567533))

(assert (= (and b!2567533 c!413026) b!2567534))

(assert (= (and b!2567533 (not c!413026)) b!2567531))

(assert (= (and b!2567531 c!413025) b!2567536))

(assert (= (and b!2567531 (not c!413025)) b!2567529))

(assert (= (and b!2567529 c!413023) b!2567530))

(assert (= (and b!2567529 (not c!413023)) b!2567535))

(assert (= (or b!2567530 b!2567535) bm!165393))

(assert (= (or b!2567536 bm!165393) bm!165391))

(assert (= (or b!2567534 bm!165391) bm!165390))

(assert (= (or b!2567534 b!2567530) bm!165392))

(declare-fun m!2905059 () Bool)

(assert (=> b!2567529 m!2905059))

(declare-fun m!2905061 () Bool)

(assert (=> d!726790 m!2905061))

(declare-fun m!2905063 () Bool)

(assert (=> d!726790 m!2905063))

(declare-fun m!2905065 () Bool)

(assert (=> bm!165390 m!2905065))

(declare-fun m!2905067 () Bool)

(assert (=> bm!165392 m!2905067))

(assert (=> bm!165286 d!726790))

(assert (=> b!2567233 d!726728))

(assert (=> b!2567234 d!726772))

(assert (=> b!2567234 d!726774))

(declare-fun d!726792 () Bool)

(declare-fun res!1080281 () Bool)

(declare-fun e!1620847 () Bool)

(assert (=> d!726792 (=> res!1080281 e!1620847)))

(assert (=> d!726792 (= res!1080281 ((_ is ElementMatch!7629) lt!905354))))

(assert (=> d!726792 (= (validRegex!3255 lt!905354) e!1620847)))

(declare-fun b!2567538 () Bool)

(declare-fun res!1080280 () Bool)

(declare-fun e!1620846 () Bool)

(assert (=> b!2567538 (=> (not res!1080280) (not e!1620846))))

(declare-fun call!165401 () Bool)

(assert (=> b!2567538 (= res!1080280 call!165401)))

(declare-fun e!1620849 () Bool)

(assert (=> b!2567538 (= e!1620849 e!1620846)))

(declare-fun b!2567539 () Bool)

(declare-fun e!1620852 () Bool)

(declare-fun e!1620851 () Bool)

(assert (=> b!2567539 (= e!1620852 e!1620851)))

(declare-fun res!1080282 () Bool)

(assert (=> b!2567539 (=> (not res!1080282) (not e!1620851))))

(declare-fun call!165399 () Bool)

(assert (=> b!2567539 (= res!1080282 call!165399)))

(declare-fun bm!165394 () Bool)

(declare-fun call!165400 () Bool)

(assert (=> bm!165394 (= call!165401 call!165400)))

(declare-fun b!2567540 () Bool)

(declare-fun res!1080284 () Bool)

(assert (=> b!2567540 (=> res!1080284 e!1620852)))

(assert (=> b!2567540 (= res!1080284 (not ((_ is Concat!12325) lt!905354)))))

(assert (=> b!2567540 (= e!1620849 e!1620852)))

(declare-fun b!2567541 () Bool)

(assert (=> b!2567541 (= e!1620851 call!165401)))

(declare-fun b!2567542 () Bool)

(declare-fun e!1620850 () Bool)

(assert (=> b!2567542 (= e!1620847 e!1620850)))

(declare-fun c!413028 () Bool)

(assert (=> b!2567542 (= c!413028 ((_ is Star!7629) lt!905354))))

(declare-fun b!2567543 () Bool)

(assert (=> b!2567543 (= e!1620846 call!165399)))

(declare-fun bm!165395 () Bool)

(declare-fun c!413029 () Bool)

(assert (=> bm!165395 (= call!165400 (validRegex!3255 (ite c!413028 (reg!7958 lt!905354) (ite c!413029 (regOne!15771 lt!905354) (regTwo!15770 lt!905354)))))))

(declare-fun b!2567544 () Bool)

(declare-fun e!1620848 () Bool)

(assert (=> b!2567544 (= e!1620848 call!165400)))

(declare-fun b!2567545 () Bool)

(assert (=> b!2567545 (= e!1620850 e!1620849)))

(assert (=> b!2567545 (= c!413029 ((_ is Union!7629) lt!905354))))

(declare-fun bm!165396 () Bool)

(assert (=> bm!165396 (= call!165399 (validRegex!3255 (ite c!413029 (regTwo!15771 lt!905354) (regOne!15770 lt!905354))))))

(declare-fun b!2567546 () Bool)

(assert (=> b!2567546 (= e!1620850 e!1620848)))

(declare-fun res!1080283 () Bool)

(assert (=> b!2567546 (= res!1080283 (not (nullable!2546 (reg!7958 lt!905354))))))

(assert (=> b!2567546 (=> (not res!1080283) (not e!1620848))))

(assert (= (and d!726792 (not res!1080281)) b!2567542))

(assert (= (and b!2567542 c!413028) b!2567546))

(assert (= (and b!2567542 (not c!413028)) b!2567545))

(assert (= (and b!2567546 res!1080283) b!2567544))

(assert (= (and b!2567545 c!413029) b!2567538))

(assert (= (and b!2567545 (not c!413029)) b!2567540))

(assert (= (and b!2567538 res!1080280) b!2567543))

(assert (= (and b!2567540 (not res!1080284)) b!2567539))

(assert (= (and b!2567539 res!1080282) b!2567541))

(assert (= (or b!2567538 b!2567541) bm!165394))

(assert (= (or b!2567543 b!2567539) bm!165396))

(assert (= (or b!2567544 bm!165394) bm!165395))

(declare-fun m!2905069 () Bool)

(assert (=> bm!165395 m!2905069))

(declare-fun m!2905071 () Bool)

(assert (=> bm!165396 m!2905071))

(declare-fun m!2905073 () Bool)

(assert (=> b!2567546 m!2905073))

(assert (=> d!726708 d!726792))

(assert (=> d!726708 d!726766))

(declare-fun b!2567547 () Bool)

(declare-fun e!1620855 () Regex!7629)

(assert (=> b!2567547 (= e!1620855 (ite (= c!14016 (c!412879 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) EmptyExpr!7629 EmptyLang!7629))))

(declare-fun b!2567548 () Bool)

(declare-fun c!413030 () Bool)

(assert (=> b!2567548 (= c!413030 (nullable!2546 (regOne!15770 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(declare-fun e!1620854 () Regex!7629)

(declare-fun e!1620857 () Regex!7629)

(assert (=> b!2567548 (= e!1620854 e!1620857)))

(declare-fun call!165405 () Regex!7629)

(declare-fun call!165404 () Regex!7629)

(declare-fun b!2567549 () Bool)

(assert (=> b!2567549 (= e!1620857 (Union!7629 (Concat!12325 call!165404 (regTwo!15770 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) call!165405))))

(declare-fun b!2567550 () Bool)

(declare-fun e!1620853 () Regex!7629)

(assert (=> b!2567550 (= e!1620853 e!1620854)))

(declare-fun c!413032 () Bool)

(assert (=> b!2567550 (= c!413032 ((_ is Star!7629) (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))

(declare-fun d!726794 () Bool)

(declare-fun lt!905367 () Regex!7629)

(assert (=> d!726794 (validRegex!3255 lt!905367)))

(declare-fun e!1620856 () Regex!7629)

(assert (=> d!726794 (= lt!905367 e!1620856)))

(declare-fun c!413031 () Bool)

(assert (=> d!726794 (= c!413031 (or ((_ is EmptyExpr!7629) (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))) ((_ is EmptyLang!7629) (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))))

(assert (=> d!726794 (validRegex!3255 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))))

(assert (=> d!726794 (= (derivativeStep!2198 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)) c!14016) lt!905367)))

(declare-fun b!2567551 () Bool)

(assert (=> b!2567551 (= e!1620856 e!1620855)))

(declare-fun c!413034 () Bool)

(assert (=> b!2567551 (= c!413034 ((_ is ElementMatch!7629) (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))

(declare-fun call!165402 () Regex!7629)

(declare-fun c!413033 () Bool)

(declare-fun bm!165397 () Bool)

(assert (=> bm!165397 (= call!165402 (derivativeStep!2198 (ite c!413033 (regTwo!15771 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))) (ite c!413032 (reg!7958 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))) (regOne!15770 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))))) c!14016))))

(declare-fun b!2567552 () Bool)

(assert (=> b!2567552 (= c!413033 ((_ is Union!7629) (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))

(assert (=> b!2567552 (= e!1620855 e!1620853)))

(declare-fun b!2567553 () Bool)

(assert (=> b!2567553 (= e!1620853 (Union!7629 call!165405 call!165402))))

(declare-fun b!2567554 () Bool)

(assert (=> b!2567554 (= e!1620857 (Union!7629 (Concat!12325 call!165404 (regTwo!15770 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) EmptyLang!7629))))

(declare-fun bm!165398 () Bool)

(declare-fun call!165403 () Regex!7629)

(assert (=> bm!165398 (= call!165403 call!165402)))

(declare-fun bm!165399 () Bool)

(assert (=> bm!165399 (= call!165405 (derivativeStep!2198 (ite c!413033 (regOne!15771 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))) (regTwo!15770 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340)))) c!14016))))

(declare-fun b!2567555 () Bool)

(assert (=> b!2567555 (= e!1620854 (Concat!12325 call!165403 (ite c!412905 (regOne!15771 r!27340) (regTwo!15770 r!27340))))))

(declare-fun bm!165400 () Bool)

(assert (=> bm!165400 (= call!165404 call!165403)))

(declare-fun b!2567556 () Bool)

(assert (=> b!2567556 (= e!1620856 EmptyLang!7629)))

(assert (= (and d!726794 c!413031) b!2567556))

(assert (= (and d!726794 (not c!413031)) b!2567551))

(assert (= (and b!2567551 c!413034) b!2567547))

(assert (= (and b!2567551 (not c!413034)) b!2567552))

(assert (= (and b!2567552 c!413033) b!2567553))

(assert (= (and b!2567552 (not c!413033)) b!2567550))

(assert (= (and b!2567550 c!413032) b!2567555))

(assert (= (and b!2567550 (not c!413032)) b!2567548))

(assert (= (and b!2567548 c!413030) b!2567549))

(assert (= (and b!2567548 (not c!413030)) b!2567554))

(assert (= (or b!2567549 b!2567554) bm!165400))

(assert (= (or b!2567555 bm!165400) bm!165398))

(assert (= (or b!2567553 bm!165398) bm!165397))

(assert (= (or b!2567553 b!2567549) bm!165399))

(declare-fun m!2905075 () Bool)

(assert (=> b!2567548 m!2905075))

(declare-fun m!2905077 () Bool)

(assert (=> d!726794 m!2905077))

(declare-fun m!2905079 () Bool)

(assert (=> d!726794 m!2905079))

(declare-fun m!2905081 () Bool)

(assert (=> bm!165397 m!2905081))

(declare-fun m!2905083 () Bool)

(assert (=> bm!165399 m!2905083))

(assert (=> bm!165288 d!726794))

(assert (=> bm!165325 d!726724))

(declare-fun d!726796 () Bool)

(declare-fun res!1080286 () Bool)

(declare-fun e!1620859 () Bool)

(assert (=> d!726796 (=> res!1080286 e!1620859)))

(assert (=> d!726796 (= res!1080286 ((_ is ElementMatch!7629) (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))

(assert (=> d!726796 (= (validRegex!3255 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))) e!1620859)))

(declare-fun b!2567557 () Bool)

(declare-fun res!1080285 () Bool)

(declare-fun e!1620858 () Bool)

(assert (=> b!2567557 (=> (not res!1080285) (not e!1620858))))

(declare-fun call!165408 () Bool)

(assert (=> b!2567557 (= res!1080285 call!165408)))

(declare-fun e!1620861 () Bool)

(assert (=> b!2567557 (= e!1620861 e!1620858)))

(declare-fun b!2567558 () Bool)

(declare-fun e!1620864 () Bool)

(declare-fun e!1620863 () Bool)

(assert (=> b!2567558 (= e!1620864 e!1620863)))

(declare-fun res!1080287 () Bool)

(assert (=> b!2567558 (=> (not res!1080287) (not e!1620863))))

(declare-fun call!165406 () Bool)

(assert (=> b!2567558 (= res!1080287 call!165406)))

(declare-fun bm!165401 () Bool)

(declare-fun call!165407 () Bool)

(assert (=> bm!165401 (= call!165408 call!165407)))

(declare-fun b!2567559 () Bool)

(declare-fun res!1080289 () Bool)

(assert (=> b!2567559 (=> res!1080289 e!1620864)))

(assert (=> b!2567559 (= res!1080289 (not ((_ is Concat!12325) (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325)))))))

(assert (=> b!2567559 (= e!1620861 e!1620864)))

(declare-fun b!2567560 () Bool)

(assert (=> b!2567560 (= e!1620863 call!165408)))

(declare-fun b!2567561 () Bool)

(declare-fun e!1620862 () Bool)

(assert (=> b!2567561 (= e!1620859 e!1620862)))

(declare-fun c!413035 () Bool)

(assert (=> b!2567561 (= c!413035 ((_ is Star!7629) (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))

(declare-fun b!2567562 () Bool)

(assert (=> b!2567562 (= e!1620858 call!165406)))

(declare-fun bm!165402 () Bool)

(declare-fun c!413036 () Bool)

(assert (=> bm!165402 (= call!165407 (validRegex!3255 (ite c!413035 (reg!7958 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))) (ite c!413036 (regOne!15771 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))) (regTwo!15770 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325)))))))))

(declare-fun b!2567563 () Bool)

(declare-fun e!1620860 () Bool)

(assert (=> b!2567563 (= e!1620860 call!165407)))

(declare-fun b!2567564 () Bool)

(assert (=> b!2567564 (= e!1620862 e!1620861)))

(assert (=> b!2567564 (= c!413036 ((_ is Union!7629) (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))

(declare-fun bm!165403 () Bool)

(assert (=> bm!165403 (= call!165406 (validRegex!3255 (ite c!413036 (regTwo!15771 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))) (regOne!15770 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))))

(declare-fun b!2567565 () Bool)

(assert (=> b!2567565 (= e!1620862 e!1620860)))

(declare-fun res!1080288 () Bool)

(assert (=> b!2567565 (= res!1080288 (not (nullable!2546 (reg!7958 (ite c!412920 (regTwo!15771 lt!905325) (regOne!15770 lt!905325))))))))

(assert (=> b!2567565 (=> (not res!1080288) (not e!1620860))))

(assert (= (and d!726796 (not res!1080286)) b!2567561))

(assert (= (and b!2567561 c!413035) b!2567565))

(assert (= (and b!2567561 (not c!413035)) b!2567564))

(assert (= (and b!2567565 res!1080288) b!2567563))

(assert (= (and b!2567564 c!413036) b!2567557))

(assert (= (and b!2567564 (not c!413036)) b!2567559))

(assert (= (and b!2567557 res!1080285) b!2567562))

(assert (= (and b!2567559 (not res!1080289)) b!2567558))

(assert (= (and b!2567558 res!1080287) b!2567560))

(assert (= (or b!2567557 b!2567560) bm!165401))

(assert (= (or b!2567562 b!2567558) bm!165403))

(assert (= (or b!2567563 bm!165401) bm!165402))

(declare-fun m!2905085 () Bool)

(assert (=> bm!165402 m!2905085))

(declare-fun m!2905087 () Bool)

(assert (=> bm!165403 m!2905087))

(declare-fun m!2905089 () Bool)

(assert (=> b!2567565 m!2905089))

(assert (=> bm!165303 d!726796))

(assert (=> b!2567207 d!726754))

(declare-fun d!726798 () Bool)

(declare-fun res!1080291 () Bool)

(declare-fun e!1620866 () Bool)

(assert (=> d!726798 (=> res!1080291 e!1620866)))

(assert (=> d!726798 (= res!1080291 ((_ is ElementMatch!7629) lt!905335))))

(assert (=> d!726798 (= (validRegex!3255 lt!905335) e!1620866)))

(declare-fun b!2567566 () Bool)

(declare-fun res!1080290 () Bool)

(declare-fun e!1620865 () Bool)

(assert (=> b!2567566 (=> (not res!1080290) (not e!1620865))))

(declare-fun call!165411 () Bool)

(assert (=> b!2567566 (= res!1080290 call!165411)))

(declare-fun e!1620868 () Bool)

(assert (=> b!2567566 (= e!1620868 e!1620865)))

(declare-fun b!2567567 () Bool)

(declare-fun e!1620871 () Bool)

(declare-fun e!1620870 () Bool)

(assert (=> b!2567567 (= e!1620871 e!1620870)))

(declare-fun res!1080292 () Bool)

(assert (=> b!2567567 (=> (not res!1080292) (not e!1620870))))

(declare-fun call!165409 () Bool)

(assert (=> b!2567567 (= res!1080292 call!165409)))

(declare-fun bm!165404 () Bool)

(declare-fun call!165410 () Bool)

(assert (=> bm!165404 (= call!165411 call!165410)))

(declare-fun b!2567568 () Bool)

(declare-fun res!1080294 () Bool)

(assert (=> b!2567568 (=> res!1080294 e!1620871)))

(assert (=> b!2567568 (= res!1080294 (not ((_ is Concat!12325) lt!905335)))))

(assert (=> b!2567568 (= e!1620868 e!1620871)))

(declare-fun b!2567569 () Bool)

(assert (=> b!2567569 (= e!1620870 call!165411)))

(declare-fun b!2567570 () Bool)

(declare-fun e!1620869 () Bool)

(assert (=> b!2567570 (= e!1620866 e!1620869)))

(declare-fun c!413037 () Bool)

(assert (=> b!2567570 (= c!413037 ((_ is Star!7629) lt!905335))))

(declare-fun b!2567571 () Bool)

(assert (=> b!2567571 (= e!1620865 call!165409)))

(declare-fun bm!165405 () Bool)

(declare-fun c!413038 () Bool)

(assert (=> bm!165405 (= call!165410 (validRegex!3255 (ite c!413037 (reg!7958 lt!905335) (ite c!413038 (regOne!15771 lt!905335) (regTwo!15770 lt!905335)))))))

(declare-fun b!2567572 () Bool)

(declare-fun e!1620867 () Bool)

(assert (=> b!2567572 (= e!1620867 call!165410)))

(declare-fun b!2567573 () Bool)

(assert (=> b!2567573 (= e!1620869 e!1620868)))

(assert (=> b!2567573 (= c!413038 ((_ is Union!7629) lt!905335))))

(declare-fun bm!165406 () Bool)

(assert (=> bm!165406 (= call!165409 (validRegex!3255 (ite c!413038 (regTwo!15771 lt!905335) (regOne!15770 lt!905335))))))

(declare-fun b!2567574 () Bool)

(assert (=> b!2567574 (= e!1620869 e!1620867)))

(declare-fun res!1080293 () Bool)

(assert (=> b!2567574 (= res!1080293 (not (nullable!2546 (reg!7958 lt!905335))))))

(assert (=> b!2567574 (=> (not res!1080293) (not e!1620867))))

(assert (= (and d!726798 (not res!1080291)) b!2567570))

(assert (= (and b!2567570 c!413037) b!2567574))

(assert (= (and b!2567570 (not c!413037)) b!2567573))

(assert (= (and b!2567574 res!1080293) b!2567572))

(assert (= (and b!2567573 c!413038) b!2567566))

(assert (= (and b!2567573 (not c!413038)) b!2567568))

(assert (= (and b!2567566 res!1080290) b!2567571))

(assert (= (and b!2567568 (not res!1080294)) b!2567567))

(assert (= (and b!2567567 res!1080292) b!2567569))

(assert (= (or b!2567566 b!2567569) bm!165404))

(assert (= (or b!2567571 b!2567567) bm!165406))

(assert (= (or b!2567572 bm!165404) bm!165405))

(declare-fun m!2905091 () Bool)

(assert (=> bm!165405 m!2905091))

(declare-fun m!2905093 () Bool)

(assert (=> bm!165406 m!2905093))

(declare-fun m!2905095 () Bool)

(assert (=> b!2567574 m!2905095))

(assert (=> d!726682 d!726798))

(assert (=> d!726682 d!726688))

(declare-fun d!726800 () Bool)

(assert (=> d!726800 (= (nullable!2546 (reg!7958 lt!905325)) (nullableFct!770 (reg!7958 lt!905325)))))

(declare-fun bs!469959 () Bool)

(assert (= bs!469959 d!726800))

(declare-fun m!2905097 () Bool)

(assert (=> bs!469959 m!2905097))

(assert (=> b!2567119 d!726800))

(declare-fun b!2567577 () Bool)

(declare-fun e!1620872 () Bool)

(declare-fun tp!817150 () Bool)

(assert (=> b!2567577 (= e!1620872 tp!817150)))

(assert (=> b!2567301 (= tp!817106 e!1620872)))

(declare-fun b!2567578 () Bool)

(declare-fun tp!817147 () Bool)

(declare-fun tp!817148 () Bool)

(assert (=> b!2567578 (= e!1620872 (and tp!817147 tp!817148))))

(declare-fun b!2567575 () Bool)

(assert (=> b!2567575 (= e!1620872 tp_is_empty!13113)))

(declare-fun b!2567576 () Bool)

(declare-fun tp!817149 () Bool)

(declare-fun tp!817151 () Bool)

(assert (=> b!2567576 (= e!1620872 (and tp!817149 tp!817151))))

(assert (= (and b!2567301 ((_ is ElementMatch!7629) (regOne!15770 (regOne!15771 r!27340)))) b!2567575))

(assert (= (and b!2567301 ((_ is Concat!12325) (regOne!15770 (regOne!15771 r!27340)))) b!2567576))

(assert (= (and b!2567301 ((_ is Star!7629) (regOne!15770 (regOne!15771 r!27340)))) b!2567577))

(assert (= (and b!2567301 ((_ is Union!7629) (regOne!15770 (regOne!15771 r!27340)))) b!2567578))

(declare-fun b!2567581 () Bool)

(declare-fun e!1620873 () Bool)

(declare-fun tp!817155 () Bool)

(assert (=> b!2567581 (= e!1620873 tp!817155)))

(assert (=> b!2567301 (= tp!817108 e!1620873)))

(declare-fun b!2567582 () Bool)

(declare-fun tp!817152 () Bool)

(declare-fun tp!817153 () Bool)

(assert (=> b!2567582 (= e!1620873 (and tp!817152 tp!817153))))

(declare-fun b!2567579 () Bool)

(assert (=> b!2567579 (= e!1620873 tp_is_empty!13113)))

(declare-fun b!2567580 () Bool)

(declare-fun tp!817154 () Bool)

(declare-fun tp!817156 () Bool)

(assert (=> b!2567580 (= e!1620873 (and tp!817154 tp!817156))))

(assert (= (and b!2567301 ((_ is ElementMatch!7629) (regTwo!15770 (regOne!15771 r!27340)))) b!2567579))

(assert (= (and b!2567301 ((_ is Concat!12325) (regTwo!15770 (regOne!15771 r!27340)))) b!2567580))

(assert (= (and b!2567301 ((_ is Star!7629) (regTwo!15770 (regOne!15771 r!27340)))) b!2567581))

(assert (= (and b!2567301 ((_ is Union!7629) (regTwo!15770 (regOne!15771 r!27340)))) b!2567582))

(declare-fun b!2567585 () Bool)

(declare-fun e!1620874 () Bool)

(declare-fun tp!817160 () Bool)

(assert (=> b!2567585 (= e!1620874 tp!817160)))

(assert (=> b!2567297 (= tp!817101 e!1620874)))

(declare-fun b!2567586 () Bool)

(declare-fun tp!817157 () Bool)

(declare-fun tp!817158 () Bool)

(assert (=> b!2567586 (= e!1620874 (and tp!817157 tp!817158))))

(declare-fun b!2567583 () Bool)

(assert (=> b!2567583 (= e!1620874 tp_is_empty!13113)))

(declare-fun b!2567584 () Bool)

(declare-fun tp!817159 () Bool)

(declare-fun tp!817161 () Bool)

(assert (=> b!2567584 (= e!1620874 (and tp!817159 tp!817161))))

(assert (= (and b!2567297 ((_ is ElementMatch!7629) (regOne!15770 (regTwo!15770 r!27340)))) b!2567583))

(assert (= (and b!2567297 ((_ is Concat!12325) (regOne!15770 (regTwo!15770 r!27340)))) b!2567584))

(assert (= (and b!2567297 ((_ is Star!7629) (regOne!15770 (regTwo!15770 r!27340)))) b!2567585))

(assert (= (and b!2567297 ((_ is Union!7629) (regOne!15770 (regTwo!15770 r!27340)))) b!2567586))

(declare-fun b!2567589 () Bool)

(declare-fun e!1620875 () Bool)

(declare-fun tp!817165 () Bool)

(assert (=> b!2567589 (= e!1620875 tp!817165)))

(assert (=> b!2567297 (= tp!817103 e!1620875)))

(declare-fun b!2567590 () Bool)

(declare-fun tp!817162 () Bool)

(declare-fun tp!817163 () Bool)

(assert (=> b!2567590 (= e!1620875 (and tp!817162 tp!817163))))

(declare-fun b!2567587 () Bool)

(assert (=> b!2567587 (= e!1620875 tp_is_empty!13113)))

(declare-fun b!2567588 () Bool)

(declare-fun tp!817164 () Bool)

(declare-fun tp!817166 () Bool)

(assert (=> b!2567588 (= e!1620875 (and tp!817164 tp!817166))))

(assert (= (and b!2567297 ((_ is ElementMatch!7629) (regTwo!15770 (regTwo!15770 r!27340)))) b!2567587))

(assert (= (and b!2567297 ((_ is Concat!12325) (regTwo!15770 (regTwo!15770 r!27340)))) b!2567588))

(assert (= (and b!2567297 ((_ is Star!7629) (regTwo!15770 (regTwo!15770 r!27340)))) b!2567589))

(assert (= (and b!2567297 ((_ is Union!7629) (regTwo!15770 (regTwo!15770 r!27340)))) b!2567590))

(declare-fun b!2567593 () Bool)

(declare-fun e!1620876 () Bool)

(declare-fun tp!817170 () Bool)

(assert (=> b!2567593 (= e!1620876 tp!817170)))

(assert (=> b!2567311 (= tp!817114 e!1620876)))

(declare-fun b!2567594 () Bool)

(declare-fun tp!817167 () Bool)

(declare-fun tp!817168 () Bool)

(assert (=> b!2567594 (= e!1620876 (and tp!817167 tp!817168))))

(declare-fun b!2567591 () Bool)

(assert (=> b!2567591 (= e!1620876 tp_is_empty!13113)))

(declare-fun b!2567592 () Bool)

(declare-fun tp!817169 () Bool)

(declare-fun tp!817171 () Bool)

(assert (=> b!2567592 (= e!1620876 (and tp!817169 tp!817171))))

(assert (= (and b!2567311 ((_ is ElementMatch!7629) (regOne!15771 (regTwo!15771 r!27340)))) b!2567591))

(assert (= (and b!2567311 ((_ is Concat!12325) (regOne!15771 (regTwo!15771 r!27340)))) b!2567592))

(assert (= (and b!2567311 ((_ is Star!7629) (regOne!15771 (regTwo!15771 r!27340)))) b!2567593))

(assert (= (and b!2567311 ((_ is Union!7629) (regOne!15771 (regTwo!15771 r!27340)))) b!2567594))

(declare-fun b!2567597 () Bool)

(declare-fun e!1620877 () Bool)

(declare-fun tp!817175 () Bool)

(assert (=> b!2567597 (= e!1620877 tp!817175)))

(assert (=> b!2567311 (= tp!817115 e!1620877)))

(declare-fun b!2567598 () Bool)

(declare-fun tp!817172 () Bool)

(declare-fun tp!817173 () Bool)

(assert (=> b!2567598 (= e!1620877 (and tp!817172 tp!817173))))

(declare-fun b!2567595 () Bool)

(assert (=> b!2567595 (= e!1620877 tp_is_empty!13113)))

(declare-fun b!2567596 () Bool)

(declare-fun tp!817174 () Bool)

(declare-fun tp!817176 () Bool)

(assert (=> b!2567596 (= e!1620877 (and tp!817174 tp!817176))))

(assert (= (and b!2567311 ((_ is ElementMatch!7629) (regTwo!15771 (regTwo!15771 r!27340)))) b!2567595))

(assert (= (and b!2567311 ((_ is Concat!12325) (regTwo!15771 (regTwo!15771 r!27340)))) b!2567596))

(assert (= (and b!2567311 ((_ is Star!7629) (regTwo!15771 (regTwo!15771 r!27340)))) b!2567597))

(assert (= (and b!2567311 ((_ is Union!7629) (regTwo!15771 (regTwo!15771 r!27340)))) b!2567598))

(declare-fun b!2567601 () Bool)

(declare-fun e!1620878 () Bool)

(declare-fun tp!817180 () Bool)

(assert (=> b!2567601 (= e!1620878 tp!817180)))

(assert (=> b!2567302 (= tp!817107 e!1620878)))

(declare-fun b!2567602 () Bool)

(declare-fun tp!817177 () Bool)

(declare-fun tp!817178 () Bool)

(assert (=> b!2567602 (= e!1620878 (and tp!817177 tp!817178))))

(declare-fun b!2567599 () Bool)

(assert (=> b!2567599 (= e!1620878 tp_is_empty!13113)))

(declare-fun b!2567600 () Bool)

(declare-fun tp!817179 () Bool)

(declare-fun tp!817181 () Bool)

(assert (=> b!2567600 (= e!1620878 (and tp!817179 tp!817181))))

(assert (= (and b!2567302 ((_ is ElementMatch!7629) (reg!7958 (regOne!15771 r!27340)))) b!2567599))

(assert (= (and b!2567302 ((_ is Concat!12325) (reg!7958 (regOne!15771 r!27340)))) b!2567600))

(assert (= (and b!2567302 ((_ is Star!7629) (reg!7958 (regOne!15771 r!27340)))) b!2567601))

(assert (= (and b!2567302 ((_ is Union!7629) (reg!7958 (regOne!15771 r!27340)))) b!2567602))

(declare-fun b!2567605 () Bool)

(declare-fun e!1620879 () Bool)

(declare-fun tp!817185 () Bool)

(assert (=> b!2567605 (= e!1620879 tp!817185)))

(assert (=> b!2567309 (= tp!817116 e!1620879)))

(declare-fun b!2567606 () Bool)

(declare-fun tp!817182 () Bool)

(declare-fun tp!817183 () Bool)

(assert (=> b!2567606 (= e!1620879 (and tp!817182 tp!817183))))

(declare-fun b!2567603 () Bool)

(assert (=> b!2567603 (= e!1620879 tp_is_empty!13113)))

(declare-fun b!2567604 () Bool)

(declare-fun tp!817184 () Bool)

(declare-fun tp!817186 () Bool)

(assert (=> b!2567604 (= e!1620879 (and tp!817184 tp!817186))))

(assert (= (and b!2567309 ((_ is ElementMatch!7629) (regOne!15770 (regTwo!15771 r!27340)))) b!2567603))

(assert (= (and b!2567309 ((_ is Concat!12325) (regOne!15770 (regTwo!15771 r!27340)))) b!2567604))

(assert (= (and b!2567309 ((_ is Star!7629) (regOne!15770 (regTwo!15771 r!27340)))) b!2567605))

(assert (= (and b!2567309 ((_ is Union!7629) (regOne!15770 (regTwo!15771 r!27340)))) b!2567606))

(declare-fun b!2567609 () Bool)

(declare-fun e!1620880 () Bool)

(declare-fun tp!817190 () Bool)

(assert (=> b!2567609 (= e!1620880 tp!817190)))

(assert (=> b!2567309 (= tp!817118 e!1620880)))

(declare-fun b!2567610 () Bool)

(declare-fun tp!817187 () Bool)

(declare-fun tp!817188 () Bool)

(assert (=> b!2567610 (= e!1620880 (and tp!817187 tp!817188))))

(declare-fun b!2567607 () Bool)

(assert (=> b!2567607 (= e!1620880 tp_is_empty!13113)))

(declare-fun b!2567608 () Bool)

(declare-fun tp!817189 () Bool)

(declare-fun tp!817191 () Bool)

(assert (=> b!2567608 (= e!1620880 (and tp!817189 tp!817191))))

(assert (= (and b!2567309 ((_ is ElementMatch!7629) (regTwo!15770 (regTwo!15771 r!27340)))) b!2567607))

(assert (= (and b!2567309 ((_ is Concat!12325) (regTwo!15770 (regTwo!15771 r!27340)))) b!2567608))

(assert (= (and b!2567309 ((_ is Star!7629) (regTwo!15770 (regTwo!15771 r!27340)))) b!2567609))

(assert (= (and b!2567309 ((_ is Union!7629) (regTwo!15770 (regTwo!15771 r!27340)))) b!2567610))

(declare-fun b!2567613 () Bool)

(declare-fun e!1620881 () Bool)

(declare-fun tp!817195 () Bool)

(assert (=> b!2567613 (= e!1620881 tp!817195)))

(assert (=> b!2567295 (= tp!817090 e!1620881)))

(declare-fun b!2567614 () Bool)

(declare-fun tp!817192 () Bool)

(declare-fun tp!817193 () Bool)

(assert (=> b!2567614 (= e!1620881 (and tp!817192 tp!817193))))

(declare-fun b!2567611 () Bool)

(assert (=> b!2567611 (= e!1620881 tp_is_empty!13113)))

(declare-fun b!2567612 () Bool)

(declare-fun tp!817194 () Bool)

(declare-fun tp!817196 () Bool)

(assert (=> b!2567612 (= e!1620881 (and tp!817194 tp!817196))))

(assert (= (and b!2567295 ((_ is ElementMatch!7629) (regOne!15771 (regOne!15770 r!27340)))) b!2567611))

(assert (= (and b!2567295 ((_ is Concat!12325) (regOne!15771 (regOne!15770 r!27340)))) b!2567612))

(assert (= (and b!2567295 ((_ is Star!7629) (regOne!15771 (regOne!15770 r!27340)))) b!2567613))

(assert (= (and b!2567295 ((_ is Union!7629) (regOne!15771 (regOne!15770 r!27340)))) b!2567614))

(declare-fun b!2567617 () Bool)

(declare-fun e!1620882 () Bool)

(declare-fun tp!817200 () Bool)

(assert (=> b!2567617 (= e!1620882 tp!817200)))

(assert (=> b!2567295 (= tp!817091 e!1620882)))

(declare-fun b!2567618 () Bool)

(declare-fun tp!817197 () Bool)

(declare-fun tp!817198 () Bool)

(assert (=> b!2567618 (= e!1620882 (and tp!817197 tp!817198))))

(declare-fun b!2567615 () Bool)

(assert (=> b!2567615 (= e!1620882 tp_is_empty!13113)))

(declare-fun b!2567616 () Bool)

(declare-fun tp!817199 () Bool)

(declare-fun tp!817201 () Bool)

(assert (=> b!2567616 (= e!1620882 (and tp!817199 tp!817201))))

(assert (= (and b!2567295 ((_ is ElementMatch!7629) (regTwo!15771 (regOne!15770 r!27340)))) b!2567615))

(assert (= (and b!2567295 ((_ is Concat!12325) (regTwo!15771 (regOne!15770 r!27340)))) b!2567616))

(assert (= (and b!2567295 ((_ is Star!7629) (regTwo!15771 (regOne!15770 r!27340)))) b!2567617))

(assert (= (and b!2567295 ((_ is Union!7629) (regTwo!15771 (regOne!15770 r!27340)))) b!2567618))

(declare-fun b!2567621 () Bool)

(declare-fun e!1620883 () Bool)

(declare-fun tp!817205 () Bool)

(assert (=> b!2567621 (= e!1620883 tp!817205)))

(assert (=> b!2567319 (= tp!817121 e!1620883)))

(declare-fun b!2567622 () Bool)

(declare-fun tp!817202 () Bool)

(declare-fun tp!817203 () Bool)

(assert (=> b!2567622 (= e!1620883 (and tp!817202 tp!817203))))

(declare-fun b!2567619 () Bool)

(assert (=> b!2567619 (= e!1620883 tp_is_empty!13113)))

(declare-fun b!2567620 () Bool)

(declare-fun tp!817204 () Bool)

(declare-fun tp!817206 () Bool)

(assert (=> b!2567620 (= e!1620883 (and tp!817204 tp!817206))))

(assert (= (and b!2567319 ((_ is ElementMatch!7629) (regOne!15771 (reg!7958 r!27340)))) b!2567619))

(assert (= (and b!2567319 ((_ is Concat!12325) (regOne!15771 (reg!7958 r!27340)))) b!2567620))

(assert (= (and b!2567319 ((_ is Star!7629) (regOne!15771 (reg!7958 r!27340)))) b!2567621))

(assert (= (and b!2567319 ((_ is Union!7629) (regOne!15771 (reg!7958 r!27340)))) b!2567622))

(declare-fun b!2567625 () Bool)

(declare-fun e!1620884 () Bool)

(declare-fun tp!817210 () Bool)

(assert (=> b!2567625 (= e!1620884 tp!817210)))

(assert (=> b!2567319 (= tp!817123 e!1620884)))

(declare-fun b!2567626 () Bool)

(declare-fun tp!817207 () Bool)

(declare-fun tp!817208 () Bool)

(assert (=> b!2567626 (= e!1620884 (and tp!817207 tp!817208))))

(declare-fun b!2567623 () Bool)

(assert (=> b!2567623 (= e!1620884 tp_is_empty!13113)))

(declare-fun b!2567624 () Bool)

(declare-fun tp!817209 () Bool)

(declare-fun tp!817211 () Bool)

(assert (=> b!2567624 (= e!1620884 (and tp!817209 tp!817211))))

(assert (= (and b!2567319 ((_ is ElementMatch!7629) (regTwo!15771 (reg!7958 r!27340)))) b!2567623))

(assert (= (and b!2567319 ((_ is Concat!12325) (regTwo!15771 (reg!7958 r!27340)))) b!2567624))

(assert (= (and b!2567319 ((_ is Star!7629) (regTwo!15771 (reg!7958 r!27340)))) b!2567625))

(assert (= (and b!2567319 ((_ is Union!7629) (regTwo!15771 (reg!7958 r!27340)))) b!2567626))

(declare-fun b!2567629 () Bool)

(declare-fun e!1620885 () Bool)

(declare-fun tp!817215 () Bool)

(assert (=> b!2567629 (= e!1620885 tp!817215)))

(assert (=> b!2567310 (= tp!817117 e!1620885)))

(declare-fun b!2567630 () Bool)

(declare-fun tp!817212 () Bool)

(declare-fun tp!817213 () Bool)

(assert (=> b!2567630 (= e!1620885 (and tp!817212 tp!817213))))

(declare-fun b!2567627 () Bool)

(assert (=> b!2567627 (= e!1620885 tp_is_empty!13113)))

(declare-fun b!2567628 () Bool)

(declare-fun tp!817214 () Bool)

(declare-fun tp!817216 () Bool)

(assert (=> b!2567628 (= e!1620885 (and tp!817214 tp!817216))))

(assert (= (and b!2567310 ((_ is ElementMatch!7629) (reg!7958 (regTwo!15771 r!27340)))) b!2567627))

(assert (= (and b!2567310 ((_ is Concat!12325) (reg!7958 (regTwo!15771 r!27340)))) b!2567628))

(assert (= (and b!2567310 ((_ is Star!7629) (reg!7958 (regTwo!15771 r!27340)))) b!2567629))

(assert (= (and b!2567310 ((_ is Union!7629) (reg!7958 (regTwo!15771 r!27340)))) b!2567630))

(declare-fun b!2567633 () Bool)

(declare-fun e!1620886 () Bool)

(declare-fun tp!817220 () Bool)

(assert (=> b!2567633 (= e!1620886 tp!817220)))

(assert (=> b!2567299 (= tp!817099 e!1620886)))

(declare-fun b!2567634 () Bool)

(declare-fun tp!817217 () Bool)

(declare-fun tp!817218 () Bool)

(assert (=> b!2567634 (= e!1620886 (and tp!817217 tp!817218))))

(declare-fun b!2567631 () Bool)

(assert (=> b!2567631 (= e!1620886 tp_is_empty!13113)))

(declare-fun b!2567632 () Bool)

(declare-fun tp!817219 () Bool)

(declare-fun tp!817221 () Bool)

(assert (=> b!2567632 (= e!1620886 (and tp!817219 tp!817221))))

(assert (= (and b!2567299 ((_ is ElementMatch!7629) (regOne!15771 (regTwo!15770 r!27340)))) b!2567631))

(assert (= (and b!2567299 ((_ is Concat!12325) (regOne!15771 (regTwo!15770 r!27340)))) b!2567632))

(assert (= (and b!2567299 ((_ is Star!7629) (regOne!15771 (regTwo!15770 r!27340)))) b!2567633))

(assert (= (and b!2567299 ((_ is Union!7629) (regOne!15771 (regTwo!15770 r!27340)))) b!2567634))

(declare-fun b!2567637 () Bool)

(declare-fun e!1620887 () Bool)

(declare-fun tp!817225 () Bool)

(assert (=> b!2567637 (= e!1620887 tp!817225)))

(assert (=> b!2567299 (= tp!817100 e!1620887)))

(declare-fun b!2567638 () Bool)

(declare-fun tp!817222 () Bool)

(declare-fun tp!817223 () Bool)

(assert (=> b!2567638 (= e!1620887 (and tp!817222 tp!817223))))

(declare-fun b!2567635 () Bool)

(assert (=> b!2567635 (= e!1620887 tp_is_empty!13113)))

(declare-fun b!2567636 () Bool)

(declare-fun tp!817224 () Bool)

(declare-fun tp!817226 () Bool)

(assert (=> b!2567636 (= e!1620887 (and tp!817224 tp!817226))))

(assert (= (and b!2567299 ((_ is ElementMatch!7629) (regTwo!15771 (regTwo!15770 r!27340)))) b!2567635))

(assert (= (and b!2567299 ((_ is Concat!12325) (regTwo!15771 (regTwo!15770 r!27340)))) b!2567636))

(assert (= (and b!2567299 ((_ is Star!7629) (regTwo!15771 (regTwo!15770 r!27340)))) b!2567637))

(assert (= (and b!2567299 ((_ is Union!7629) (regTwo!15771 (regTwo!15770 r!27340)))) b!2567638))

(declare-fun b!2567641 () Bool)

(declare-fun e!1620888 () Bool)

(declare-fun tp!817230 () Bool)

(assert (=> b!2567641 (= e!1620888 tp!817230)))

(assert (=> b!2567298 (= tp!817102 e!1620888)))

(declare-fun b!2567642 () Bool)

(declare-fun tp!817227 () Bool)

(declare-fun tp!817228 () Bool)

(assert (=> b!2567642 (= e!1620888 (and tp!817227 tp!817228))))

(declare-fun b!2567639 () Bool)

(assert (=> b!2567639 (= e!1620888 tp_is_empty!13113)))

(declare-fun b!2567640 () Bool)

(declare-fun tp!817229 () Bool)

(declare-fun tp!817231 () Bool)

(assert (=> b!2567640 (= e!1620888 (and tp!817229 tp!817231))))

(assert (= (and b!2567298 ((_ is ElementMatch!7629) (reg!7958 (regTwo!15770 r!27340)))) b!2567639))

(assert (= (and b!2567298 ((_ is Concat!12325) (reg!7958 (regTwo!15770 r!27340)))) b!2567640))

(assert (= (and b!2567298 ((_ is Star!7629) (reg!7958 (regTwo!15770 r!27340)))) b!2567641))

(assert (= (and b!2567298 ((_ is Union!7629) (reg!7958 (regTwo!15770 r!27340)))) b!2567642))

(declare-fun b!2567643 () Bool)

(declare-fun e!1620889 () Bool)

(declare-fun tp!817232 () Bool)

(assert (=> b!2567643 (= e!1620889 (and tp_is_empty!13113 tp!817232))))

(assert (=> b!2567262 (= tp!817073 e!1620889)))

(assert (= (and b!2567262 ((_ is Cons!29594) (t!211393 (t!211393 tl!4068)))) b!2567643))

(declare-fun b!2567646 () Bool)

(declare-fun e!1620890 () Bool)

(declare-fun tp!817236 () Bool)

(assert (=> b!2567646 (= e!1620890 tp!817236)))

(assert (=> b!2567303 (= tp!817104 e!1620890)))

(declare-fun b!2567647 () Bool)

(declare-fun tp!817233 () Bool)

(declare-fun tp!817234 () Bool)

(assert (=> b!2567647 (= e!1620890 (and tp!817233 tp!817234))))

(declare-fun b!2567644 () Bool)

(assert (=> b!2567644 (= e!1620890 tp_is_empty!13113)))

(declare-fun b!2567645 () Bool)

(declare-fun tp!817235 () Bool)

(declare-fun tp!817237 () Bool)

(assert (=> b!2567645 (= e!1620890 (and tp!817235 tp!817237))))

(assert (= (and b!2567303 ((_ is ElementMatch!7629) (regOne!15771 (regOne!15771 r!27340)))) b!2567644))

(assert (= (and b!2567303 ((_ is Concat!12325) (regOne!15771 (regOne!15771 r!27340)))) b!2567645))

(assert (= (and b!2567303 ((_ is Star!7629) (regOne!15771 (regOne!15771 r!27340)))) b!2567646))

(assert (= (and b!2567303 ((_ is Union!7629) (regOne!15771 (regOne!15771 r!27340)))) b!2567647))

(declare-fun b!2567650 () Bool)

(declare-fun e!1620891 () Bool)

(declare-fun tp!817241 () Bool)

(assert (=> b!2567650 (= e!1620891 tp!817241)))

(assert (=> b!2567303 (= tp!817105 e!1620891)))

(declare-fun b!2567651 () Bool)

(declare-fun tp!817238 () Bool)

(declare-fun tp!817239 () Bool)

(assert (=> b!2567651 (= e!1620891 (and tp!817238 tp!817239))))

(declare-fun b!2567648 () Bool)

(assert (=> b!2567648 (= e!1620891 tp_is_empty!13113)))

(declare-fun b!2567649 () Bool)

(declare-fun tp!817240 () Bool)

(declare-fun tp!817242 () Bool)

(assert (=> b!2567649 (= e!1620891 (and tp!817240 tp!817242))))

(assert (= (and b!2567303 ((_ is ElementMatch!7629) (regTwo!15771 (regOne!15771 r!27340)))) b!2567648))

(assert (= (and b!2567303 ((_ is Concat!12325) (regTwo!15771 (regOne!15771 r!27340)))) b!2567649))

(assert (= (and b!2567303 ((_ is Star!7629) (regTwo!15771 (regOne!15771 r!27340)))) b!2567650))

(assert (= (and b!2567303 ((_ is Union!7629) (regTwo!15771 (regOne!15771 r!27340)))) b!2567651))

(declare-fun b!2567654 () Bool)

(declare-fun e!1620892 () Bool)

(declare-fun tp!817246 () Bool)

(assert (=> b!2567654 (= e!1620892 tp!817246)))

(assert (=> b!2567293 (= tp!817092 e!1620892)))

(declare-fun b!2567655 () Bool)

(declare-fun tp!817243 () Bool)

(declare-fun tp!817244 () Bool)

(assert (=> b!2567655 (= e!1620892 (and tp!817243 tp!817244))))

(declare-fun b!2567652 () Bool)

(assert (=> b!2567652 (= e!1620892 tp_is_empty!13113)))

(declare-fun b!2567653 () Bool)

(declare-fun tp!817245 () Bool)

(declare-fun tp!817247 () Bool)

(assert (=> b!2567653 (= e!1620892 (and tp!817245 tp!817247))))

(assert (= (and b!2567293 ((_ is ElementMatch!7629) (regOne!15770 (regOne!15770 r!27340)))) b!2567652))

(assert (= (and b!2567293 ((_ is Concat!12325) (regOne!15770 (regOne!15770 r!27340)))) b!2567653))

(assert (= (and b!2567293 ((_ is Star!7629) (regOne!15770 (regOne!15770 r!27340)))) b!2567654))

(assert (= (and b!2567293 ((_ is Union!7629) (regOne!15770 (regOne!15770 r!27340)))) b!2567655))

(declare-fun b!2567658 () Bool)

(declare-fun e!1620893 () Bool)

(declare-fun tp!817251 () Bool)

(assert (=> b!2567658 (= e!1620893 tp!817251)))

(assert (=> b!2567293 (= tp!817094 e!1620893)))

(declare-fun b!2567659 () Bool)

(declare-fun tp!817248 () Bool)

(declare-fun tp!817249 () Bool)

(assert (=> b!2567659 (= e!1620893 (and tp!817248 tp!817249))))

(declare-fun b!2567656 () Bool)

(assert (=> b!2567656 (= e!1620893 tp_is_empty!13113)))

(declare-fun b!2567657 () Bool)

(declare-fun tp!817250 () Bool)

(declare-fun tp!817252 () Bool)

(assert (=> b!2567657 (= e!1620893 (and tp!817250 tp!817252))))

(assert (= (and b!2567293 ((_ is ElementMatch!7629) (regTwo!15770 (regOne!15770 r!27340)))) b!2567656))

(assert (= (and b!2567293 ((_ is Concat!12325) (regTwo!15770 (regOne!15770 r!27340)))) b!2567657))

(assert (= (and b!2567293 ((_ is Star!7629) (regTwo!15770 (regOne!15770 r!27340)))) b!2567658))

(assert (= (and b!2567293 ((_ is Union!7629) (regTwo!15770 (regOne!15770 r!27340)))) b!2567659))

(declare-fun b!2567662 () Bool)

(declare-fun e!1620894 () Bool)

(declare-fun tp!817256 () Bool)

(assert (=> b!2567662 (= e!1620894 tp!817256)))

(assert (=> b!2567294 (= tp!817093 e!1620894)))

(declare-fun b!2567663 () Bool)

(declare-fun tp!817253 () Bool)

(declare-fun tp!817254 () Bool)

(assert (=> b!2567663 (= e!1620894 (and tp!817253 tp!817254))))

(declare-fun b!2567660 () Bool)

(assert (=> b!2567660 (= e!1620894 tp_is_empty!13113)))

(declare-fun b!2567661 () Bool)

(declare-fun tp!817255 () Bool)

(declare-fun tp!817257 () Bool)

(assert (=> b!2567661 (= e!1620894 (and tp!817255 tp!817257))))

(assert (= (and b!2567294 ((_ is ElementMatch!7629) (reg!7958 (regOne!15770 r!27340)))) b!2567660))

(assert (= (and b!2567294 ((_ is Concat!12325) (reg!7958 (regOne!15770 r!27340)))) b!2567661))

(assert (= (and b!2567294 ((_ is Star!7629) (reg!7958 (regOne!15770 r!27340)))) b!2567662))

(assert (= (and b!2567294 ((_ is Union!7629) (reg!7958 (regOne!15770 r!27340)))) b!2567663))

(declare-fun b!2567666 () Bool)

(declare-fun e!1620895 () Bool)

(declare-fun tp!817261 () Bool)

(assert (=> b!2567666 (= e!1620895 tp!817261)))

(assert (=> b!2567318 (= tp!817127 e!1620895)))

(declare-fun b!2567667 () Bool)

(declare-fun tp!817258 () Bool)

(declare-fun tp!817259 () Bool)

(assert (=> b!2567667 (= e!1620895 (and tp!817258 tp!817259))))

(declare-fun b!2567664 () Bool)

(assert (=> b!2567664 (= e!1620895 tp_is_empty!13113)))

(declare-fun b!2567665 () Bool)

(declare-fun tp!817260 () Bool)

(declare-fun tp!817262 () Bool)

(assert (=> b!2567665 (= e!1620895 (and tp!817260 tp!817262))))

(assert (= (and b!2567318 ((_ is ElementMatch!7629) (reg!7958 (reg!7958 r!27340)))) b!2567664))

(assert (= (and b!2567318 ((_ is Concat!12325) (reg!7958 (reg!7958 r!27340)))) b!2567665))

(assert (= (and b!2567318 ((_ is Star!7629) (reg!7958 (reg!7958 r!27340)))) b!2567666))

(assert (= (and b!2567318 ((_ is Union!7629) (reg!7958 (reg!7958 r!27340)))) b!2567667))

(declare-fun b!2567670 () Bool)

(declare-fun e!1620896 () Bool)

(declare-fun tp!817266 () Bool)

(assert (=> b!2567670 (= e!1620896 tp!817266)))

(assert (=> b!2567316 (= tp!817125 e!1620896)))

(declare-fun b!2567671 () Bool)

(declare-fun tp!817263 () Bool)

(declare-fun tp!817264 () Bool)

(assert (=> b!2567671 (= e!1620896 (and tp!817263 tp!817264))))

(declare-fun b!2567668 () Bool)

(assert (=> b!2567668 (= e!1620896 tp_is_empty!13113)))

(declare-fun b!2567669 () Bool)

(declare-fun tp!817265 () Bool)

(declare-fun tp!817267 () Bool)

(assert (=> b!2567669 (= e!1620896 (and tp!817265 tp!817267))))

(assert (= (and b!2567316 ((_ is ElementMatch!7629) (regOne!15770 (reg!7958 r!27340)))) b!2567668))

(assert (= (and b!2567316 ((_ is Concat!12325) (regOne!15770 (reg!7958 r!27340)))) b!2567669))

(assert (= (and b!2567316 ((_ is Star!7629) (regOne!15770 (reg!7958 r!27340)))) b!2567670))

(assert (= (and b!2567316 ((_ is Union!7629) (regOne!15770 (reg!7958 r!27340)))) b!2567671))

(declare-fun b!2567674 () Bool)

(declare-fun e!1620897 () Bool)

(declare-fun tp!817271 () Bool)

(assert (=> b!2567674 (= e!1620897 tp!817271)))

(assert (=> b!2567316 (= tp!817128 e!1620897)))

(declare-fun b!2567675 () Bool)

(declare-fun tp!817268 () Bool)

(declare-fun tp!817269 () Bool)

(assert (=> b!2567675 (= e!1620897 (and tp!817268 tp!817269))))

(declare-fun b!2567672 () Bool)

(assert (=> b!2567672 (= e!1620897 tp_is_empty!13113)))

(declare-fun b!2567673 () Bool)

(declare-fun tp!817270 () Bool)

(declare-fun tp!817272 () Bool)

(assert (=> b!2567673 (= e!1620897 (and tp!817270 tp!817272))))

(assert (= (and b!2567316 ((_ is ElementMatch!7629) (regTwo!15770 (reg!7958 r!27340)))) b!2567672))

(assert (= (and b!2567316 ((_ is Concat!12325) (regTwo!15770 (reg!7958 r!27340)))) b!2567673))

(assert (= (and b!2567316 ((_ is Star!7629) (regTwo!15770 (reg!7958 r!27340)))) b!2567674))

(assert (= (and b!2567316 ((_ is Union!7629) (regTwo!15770 (reg!7958 r!27340)))) b!2567675))

(check-sat (not b!2567653) (not b!2567600) (not b!2567662) (not bm!165338) (not b!2567640) (not b!2567659) (not b!2567585) (not b!2567459) (not bm!165363) (not b!2567548) (not bm!165390) (not b!2567675) (not b!2567626) (not d!726752) (not b!2567630) (not b!2567620) (not b!2567621) (not b!2567665) (not bm!165388) (not bm!165357) (not bm!165374) (not bm!165364) (not bm!165361) (not d!726720) (not bm!165380) (not bm!165375) (not bm!165389) (not b!2567355) (not b!2567577) (not b!2567413) (not b!2567576) (not b!2567510) (not b!2567637) (not bm!165392) (not b!2567614) (not b!2567597) (not b!2567641) (not b!2567578) (not bm!165405) (not b!2567447) (not b!2567574) (not b!2567606) (not d!726778) (not b!2567598) (not bm!165365) (not bm!165342) (not b!2567669) (not d!726748) (not b!2567494) (not b!2567496) (not bm!165351) (not b!2567582) (not b!2567608) (not d!726770) (not b!2567632) (not b!2567492) (not d!726746) (not b!2567657) (not b!2567584) (not b!2567338) (not d!726756) (not bm!165403) (not d!726760) (not bm!165370) (not b!2567674) (not b!2567594) (not b!2567629) (not b!2567628) (not b!2567649) (not b!2567638) (not bm!165385) (not b!2567456) (not b!2567504) (not b!2567663) (not b!2567633) (not bm!165402) (not b!2567454) (not b!2567650) (not b!2567634) (not bm!165381) (not b!2567435) (not b!2567673) (not b!2567529) (not b!2567667) (not b!2567645) (not b!2567605) (not b!2567646) (not bm!165333) (not bm!165349) (not b!2567592) (not bm!165358) (not bm!165354) (not bm!165367) (not b!2567593) (not b!2567483) (not b!2567618) (not b!2567654) (not b!2567602) (not b!2567596) (not b!2567422) (not b!2567636) (not b!2567455) (not b!2567580) (not bm!165377) (not b!2567503) (not b!2567655) (not b!2567610) (not b!2567622) (not b!2567588) (not bm!165378) (not b!2567658) (not b!2567609) (not d!726794) (not b!2567625) (not b!2567505) (not d!726788) (not b!2567387) (not d!726768) (not b!2567624) (not bm!165382) (not b!2567612) (not d!726776) (not b!2567565) (not bm!165406) (not bm!165372) tp_is_empty!13113 (not b!2567670) (not b!2567581) (not b!2567432) (not b!2567497) (not b!2567661) (not bm!165397) (not bm!165355) (not b!2567431) (not b!2567617) (not bm!165348) (not d!726732) (not b!2567586) (not d!726800) (not bm!165383) (not b!2567404) (not b!2567445) (not bm!165360) (not bm!165396) (not b!2567590) (not b!2567651) (not b!2567507) (not b!2567448) (not bm!165341) (not b!2567642) (not bm!165339) (not b!2567589) (not b!2567671) (not d!726764) (not b!2567613) (not bm!165395) (not d!726790) (not b!2567546) (not bm!165369) (not b!2567666) (not b!2567616) (not b!2567364) (not b!2567647) (not b!2567643) (not b!2567604) (not bm!165335) (not d!726750) (not b!2567601) (not b!2567527) (not bm!165399) (not bm!165347))
(check-sat)
