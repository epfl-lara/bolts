; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187754 () Bool)

(assert start!187754)

(declare-fun res!838299 () Bool)

(declare-fun e!1195242 () Bool)

(assert (=> start!187754 (=> (not res!838299) (not e!1195242))))

(declare-datatypes ((C!10312 0))(
  ( (C!10313 (val!6044 Int)) )
))
(declare-datatypes ((Regex!5081 0))(
  ( (ElementMatch!5081 (c!305377 C!10312)) (Concat!8900 (regOne!10674 Regex!5081) (regTwo!10674 Regex!5081)) (EmptyExpr!5081) (Star!5081 (reg!5410 Regex!5081)) (EmptyLang!5081) (Union!5081 (regOne!10675 Regex!5081) (regTwo!10675 Regex!5081)) )
))
(declare-fun r!13571 () Regex!5081)

(declare-fun validRegex!2095 (Regex!5081) Bool)

(assert (=> start!187754 (= res!838299 (validRegex!2095 r!13571))))

(assert (=> start!187754 e!1195242))

(declare-fun e!1195243 () Bool)

(assert (=> start!187754 e!1195243))

(declare-fun b!1873504 () Bool)

(declare-fun tp!533070 () Bool)

(declare-fun tp!533072 () Bool)

(assert (=> b!1873504 (= e!1195243 (and tp!533070 tp!533072))))

(declare-fun b!1873505 () Bool)

(declare-fun tp_is_empty!8855 () Bool)

(assert (=> b!1873505 (= e!1195243 tp_is_empty!8855)))

(declare-fun b!1873506 () Bool)

(declare-fun tp!533071 () Bool)

(declare-fun tp!533073 () Bool)

(assert (=> b!1873506 (= e!1195243 (and tp!533071 tp!533073))))

(declare-fun b!1873507 () Bool)

(declare-fun tp!533074 () Bool)

(assert (=> b!1873507 (= e!1195243 tp!533074)))

(declare-fun b!1873508 () Bool)

(declare-datatypes ((List!20872 0))(
  ( (Nil!20790) (Cons!20790 (h!26191 Regex!5081) (t!173089 List!20872)) )
))
(declare-datatypes ((Context!1938 0))(
  ( (Context!1939 (exprs!1469 List!20872)) )
))
(declare-datatypes ((List!20873 0))(
  ( (Nil!20791) (Cons!20791 (h!26192 Context!1938) (t!173090 List!20873)) )
))
(declare-fun unfocusZipper!53 (List!20873) Regex!5081)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!1011 ((InoxSet Context!1938)) List!20873)

(declare-fun focus!250 (Regex!5081) (InoxSet Context!1938))

(assert (=> b!1873508 (= e!1195242 (not (= r!13571 (unfocusZipper!53 (toList!1011 (focus!250 r!13571))))))))

(assert (= (and start!187754 res!838299) b!1873508))

(get-info :version)

(assert (= (and start!187754 ((_ is ElementMatch!5081) r!13571)) b!1873505))

(assert (= (and start!187754 ((_ is Concat!8900) r!13571)) b!1873506))

(assert (= (and start!187754 ((_ is Star!5081) r!13571)) b!1873507))

(assert (= (and start!187754 ((_ is Union!5081) r!13571)) b!1873504))

(declare-fun m!2298921 () Bool)

(assert (=> start!187754 m!2298921))

(declare-fun m!2298923 () Bool)

(assert (=> b!1873508 m!2298923))

(assert (=> b!1873508 m!2298923))

(declare-fun m!2298925 () Bool)

(assert (=> b!1873508 m!2298925))

(assert (=> b!1873508 m!2298925))

(declare-fun m!2298927 () Bool)

(assert (=> b!1873508 m!2298927))

(check-sat tp_is_empty!8855 (not b!1873508) (not b!1873506) (not b!1873504) (not b!1873507) (not start!187754))
(check-sat)
(get-model)

(declare-fun d!572661 () Bool)

(declare-fun lt!719898 () Regex!5081)

(assert (=> d!572661 (validRegex!2095 lt!719898)))

(declare-fun generalisedUnion!493 (List!20872) Regex!5081)

(declare-fun unfocusZipperList!17 (List!20873) List!20872)

(assert (=> d!572661 (= lt!719898 (generalisedUnion!493 (unfocusZipperList!17 (toList!1011 (focus!250 r!13571)))))))

(assert (=> d!572661 (= (unfocusZipper!53 (toList!1011 (focus!250 r!13571))) lt!719898)))

(declare-fun bs!412134 () Bool)

(assert (= bs!412134 d!572661))

(declare-fun m!2298929 () Bool)

(assert (=> bs!412134 m!2298929))

(assert (=> bs!412134 m!2298925))

(declare-fun m!2298931 () Bool)

(assert (=> bs!412134 m!2298931))

(assert (=> bs!412134 m!2298931))

(declare-fun m!2298933 () Bool)

(assert (=> bs!412134 m!2298933))

(assert (=> b!1873508 d!572661))

(declare-fun d!572665 () Bool)

(declare-fun e!1195246 () Bool)

(assert (=> d!572665 e!1195246))

(declare-fun res!838302 () Bool)

(assert (=> d!572665 (=> (not res!838302) (not e!1195246))))

(declare-fun lt!719904 () List!20873)

(declare-fun noDuplicate!269 (List!20873) Bool)

(assert (=> d!572665 (= res!838302 (noDuplicate!269 lt!719904))))

(declare-fun choose!11762 ((InoxSet Context!1938)) List!20873)

(assert (=> d!572665 (= lt!719904 (choose!11762 (focus!250 r!13571)))))

(assert (=> d!572665 (= (toList!1011 (focus!250 r!13571)) lt!719904)))

(declare-fun b!1873511 () Bool)

(declare-fun content!3103 (List!20873) (InoxSet Context!1938))

(assert (=> b!1873511 (= e!1195246 (= (content!3103 lt!719904) (focus!250 r!13571)))))

(assert (= (and d!572665 res!838302) b!1873511))

(declare-fun m!2298941 () Bool)

(assert (=> d!572665 m!2298941))

(assert (=> d!572665 m!2298923))

(declare-fun m!2298943 () Bool)

(assert (=> d!572665 m!2298943))

(declare-fun m!2298945 () Bool)

(assert (=> b!1873511 m!2298945))

(assert (=> b!1873508 d!572665))

(declare-fun d!572669 () Bool)

(declare-fun e!1195251 () Bool)

(assert (=> d!572669 e!1195251))

(declare-fun res!838308 () Bool)

(assert (=> d!572669 (=> (not res!838308) (not e!1195251))))

(assert (=> d!572669 (= res!838308 (validRegex!2095 r!13571))))

(assert (=> d!572669 (= (focus!250 r!13571) (store ((as const (Array Context!1938 Bool)) false) (Context!1939 (Cons!20790 r!13571 Nil!20790)) true))))

(declare-fun b!1873516 () Bool)

(assert (=> b!1873516 (= e!1195251 (= (unfocusZipper!53 (toList!1011 (store ((as const (Array Context!1938 Bool)) false) (Context!1939 (Cons!20790 r!13571 Nil!20790)) true))) r!13571))))

(assert (= (and d!572669 res!838308) b!1873516))

(assert (=> d!572669 m!2298921))

(declare-fun m!2298947 () Bool)

(assert (=> d!572669 m!2298947))

(assert (=> b!1873516 m!2298947))

(assert (=> b!1873516 m!2298947))

(declare-fun m!2298949 () Bool)

(assert (=> b!1873516 m!2298949))

(assert (=> b!1873516 m!2298949))

(declare-fun m!2298951 () Bool)

(assert (=> b!1873516 m!2298951))

(assert (=> b!1873508 d!572669))

(declare-fun b!1873536 () Bool)

(declare-fun e!1195268 () Bool)

(declare-fun e!1195271 () Bool)

(assert (=> b!1873536 (= e!1195268 e!1195271)))

(declare-fun res!838324 () Bool)

(assert (=> b!1873536 (=> (not res!838324) (not e!1195271))))

(declare-fun call!116125 () Bool)

(assert (=> b!1873536 (= res!838324 call!116125)))

(declare-fun d!572671 () Bool)

(declare-fun res!838322 () Bool)

(declare-fun e!1195269 () Bool)

(assert (=> d!572671 (=> res!838322 e!1195269)))

(assert (=> d!572671 (= res!838322 ((_ is ElementMatch!5081) r!13571))))

(assert (=> d!572671 (= (validRegex!2095 r!13571) e!1195269)))

(declare-fun b!1873537 () Bool)

(declare-fun e!1195270 () Bool)

(declare-fun e!1195273 () Bool)

(assert (=> b!1873537 (= e!1195270 e!1195273)))

(declare-fun res!838325 () Bool)

(declare-fun nullable!1573 (Regex!5081) Bool)

(assert (=> b!1873537 (= res!838325 (not (nullable!1573 (reg!5410 r!13571))))))

(assert (=> b!1873537 (=> (not res!838325) (not e!1195273))))

(declare-fun bm!116118 () Bool)

(declare-fun call!116123 () Bool)

(declare-fun c!305382 () Bool)

(assert (=> bm!116118 (= call!116123 (validRegex!2095 (ite c!305382 (regOne!10675 r!13571) (regTwo!10674 r!13571))))))

(declare-fun bm!116119 () Bool)

(declare-fun call!116124 () Bool)

(assert (=> bm!116119 (= call!116125 call!116124)))

(declare-fun b!1873538 () Bool)

(assert (=> b!1873538 (= e!1195269 e!1195270)))

(declare-fun c!305383 () Bool)

(assert (=> b!1873538 (= c!305383 ((_ is Star!5081) r!13571))))

(declare-fun b!1873539 () Bool)

(assert (=> b!1873539 (= e!1195273 call!116124)))

(declare-fun b!1873540 () Bool)

(assert (=> b!1873540 (= e!1195271 call!116123)))

(declare-fun b!1873541 () Bool)

(declare-fun e!1195272 () Bool)

(assert (=> b!1873541 (= e!1195272 call!116125)))

(declare-fun b!1873542 () Bool)

(declare-fun res!838323 () Bool)

(assert (=> b!1873542 (=> res!838323 e!1195268)))

(assert (=> b!1873542 (= res!838323 (not ((_ is Concat!8900) r!13571)))))

(declare-fun e!1195267 () Bool)

(assert (=> b!1873542 (= e!1195267 e!1195268)))

(declare-fun bm!116120 () Bool)

(assert (=> bm!116120 (= call!116124 (validRegex!2095 (ite c!305383 (reg!5410 r!13571) (ite c!305382 (regTwo!10675 r!13571) (regOne!10674 r!13571)))))))

(declare-fun b!1873543 () Bool)

(declare-fun res!838321 () Bool)

(assert (=> b!1873543 (=> (not res!838321) (not e!1195272))))

(assert (=> b!1873543 (= res!838321 call!116123)))

(assert (=> b!1873543 (= e!1195267 e!1195272)))

(declare-fun b!1873544 () Bool)

(assert (=> b!1873544 (= e!1195270 e!1195267)))

(assert (=> b!1873544 (= c!305382 ((_ is Union!5081) r!13571))))

(assert (= (and d!572671 (not res!838322)) b!1873538))

(assert (= (and b!1873538 c!305383) b!1873537))

(assert (= (and b!1873538 (not c!305383)) b!1873544))

(assert (= (and b!1873537 res!838325) b!1873539))

(assert (= (and b!1873544 c!305382) b!1873543))

(assert (= (and b!1873544 (not c!305382)) b!1873542))

(assert (= (and b!1873543 res!838321) b!1873541))

(assert (= (and b!1873542 (not res!838323)) b!1873536))

(assert (= (and b!1873536 res!838324) b!1873540))

(assert (= (or b!1873543 b!1873540) bm!116118))

(assert (= (or b!1873541 b!1873536) bm!116119))

(assert (= (or b!1873539 bm!116119) bm!116120))

(declare-fun m!2298959 () Bool)

(assert (=> b!1873537 m!2298959))

(declare-fun m!2298961 () Bool)

(assert (=> bm!116118 m!2298961))

(declare-fun m!2298963 () Bool)

(assert (=> bm!116120 m!2298963))

(assert (=> start!187754 d!572671))

(declare-fun b!1873559 () Bool)

(declare-fun e!1195278 () Bool)

(declare-fun tp!533088 () Bool)

(assert (=> b!1873559 (= e!1195278 tp!533088)))

(declare-fun b!1873557 () Bool)

(assert (=> b!1873557 (= e!1195278 tp_is_empty!8855)))

(declare-fun b!1873558 () Bool)

(declare-fun tp!533087 () Bool)

(declare-fun tp!533085 () Bool)

(assert (=> b!1873558 (= e!1195278 (and tp!533087 tp!533085))))

(assert (=> b!1873507 (= tp!533074 e!1195278)))

(declare-fun b!1873560 () Bool)

(declare-fun tp!533089 () Bool)

(declare-fun tp!533086 () Bool)

(assert (=> b!1873560 (= e!1195278 (and tp!533089 tp!533086))))

(assert (= (and b!1873507 ((_ is ElementMatch!5081) (reg!5410 r!13571))) b!1873557))

(assert (= (and b!1873507 ((_ is Concat!8900) (reg!5410 r!13571))) b!1873558))

(assert (= (and b!1873507 ((_ is Star!5081) (reg!5410 r!13571))) b!1873559))

(assert (= (and b!1873507 ((_ is Union!5081) (reg!5410 r!13571))) b!1873560))

(declare-fun b!1873563 () Bool)

(declare-fun e!1195279 () Bool)

(declare-fun tp!533093 () Bool)

(assert (=> b!1873563 (= e!1195279 tp!533093)))

(declare-fun b!1873561 () Bool)

(assert (=> b!1873561 (= e!1195279 tp_is_empty!8855)))

(declare-fun b!1873562 () Bool)

(declare-fun tp!533092 () Bool)

(declare-fun tp!533090 () Bool)

(assert (=> b!1873562 (= e!1195279 (and tp!533092 tp!533090))))

(assert (=> b!1873504 (= tp!533070 e!1195279)))

(declare-fun b!1873564 () Bool)

(declare-fun tp!533094 () Bool)

(declare-fun tp!533091 () Bool)

(assert (=> b!1873564 (= e!1195279 (and tp!533094 tp!533091))))

(assert (= (and b!1873504 ((_ is ElementMatch!5081) (regOne!10675 r!13571))) b!1873561))

(assert (= (and b!1873504 ((_ is Concat!8900) (regOne!10675 r!13571))) b!1873562))

(assert (= (and b!1873504 ((_ is Star!5081) (regOne!10675 r!13571))) b!1873563))

(assert (= (and b!1873504 ((_ is Union!5081) (regOne!10675 r!13571))) b!1873564))

(declare-fun b!1873567 () Bool)

(declare-fun e!1195280 () Bool)

(declare-fun tp!533098 () Bool)

(assert (=> b!1873567 (= e!1195280 tp!533098)))

(declare-fun b!1873565 () Bool)

(assert (=> b!1873565 (= e!1195280 tp_is_empty!8855)))

(declare-fun b!1873566 () Bool)

(declare-fun tp!533097 () Bool)

(declare-fun tp!533095 () Bool)

(assert (=> b!1873566 (= e!1195280 (and tp!533097 tp!533095))))

(assert (=> b!1873504 (= tp!533072 e!1195280)))

(declare-fun b!1873568 () Bool)

(declare-fun tp!533099 () Bool)

(declare-fun tp!533096 () Bool)

(assert (=> b!1873568 (= e!1195280 (and tp!533099 tp!533096))))

(assert (= (and b!1873504 ((_ is ElementMatch!5081) (regTwo!10675 r!13571))) b!1873565))

(assert (= (and b!1873504 ((_ is Concat!8900) (regTwo!10675 r!13571))) b!1873566))

(assert (= (and b!1873504 ((_ is Star!5081) (regTwo!10675 r!13571))) b!1873567))

(assert (= (and b!1873504 ((_ is Union!5081) (regTwo!10675 r!13571))) b!1873568))

(declare-fun b!1873571 () Bool)

(declare-fun e!1195281 () Bool)

(declare-fun tp!533103 () Bool)

(assert (=> b!1873571 (= e!1195281 tp!533103)))

(declare-fun b!1873569 () Bool)

(assert (=> b!1873569 (= e!1195281 tp_is_empty!8855)))

(declare-fun b!1873570 () Bool)

(declare-fun tp!533102 () Bool)

(declare-fun tp!533100 () Bool)

(assert (=> b!1873570 (= e!1195281 (and tp!533102 tp!533100))))

(assert (=> b!1873506 (= tp!533071 e!1195281)))

(declare-fun b!1873572 () Bool)

(declare-fun tp!533104 () Bool)

(declare-fun tp!533101 () Bool)

(assert (=> b!1873572 (= e!1195281 (and tp!533104 tp!533101))))

(assert (= (and b!1873506 ((_ is ElementMatch!5081) (regOne!10674 r!13571))) b!1873569))

(assert (= (and b!1873506 ((_ is Concat!8900) (regOne!10674 r!13571))) b!1873570))

(assert (= (and b!1873506 ((_ is Star!5081) (regOne!10674 r!13571))) b!1873571))

(assert (= (and b!1873506 ((_ is Union!5081) (regOne!10674 r!13571))) b!1873572))

(declare-fun b!1873575 () Bool)

(declare-fun e!1195282 () Bool)

(declare-fun tp!533108 () Bool)

(assert (=> b!1873575 (= e!1195282 tp!533108)))

(declare-fun b!1873573 () Bool)

(assert (=> b!1873573 (= e!1195282 tp_is_empty!8855)))

(declare-fun b!1873574 () Bool)

(declare-fun tp!533107 () Bool)

(declare-fun tp!533105 () Bool)

(assert (=> b!1873574 (= e!1195282 (and tp!533107 tp!533105))))

(assert (=> b!1873506 (= tp!533073 e!1195282)))

(declare-fun b!1873576 () Bool)

(declare-fun tp!533109 () Bool)

(declare-fun tp!533106 () Bool)

(assert (=> b!1873576 (= e!1195282 (and tp!533109 tp!533106))))

(assert (= (and b!1873506 ((_ is ElementMatch!5081) (regTwo!10674 r!13571))) b!1873573))

(assert (= (and b!1873506 ((_ is Concat!8900) (regTwo!10674 r!13571))) b!1873574))

(assert (= (and b!1873506 ((_ is Star!5081) (regTwo!10674 r!13571))) b!1873575))

(assert (= (and b!1873506 ((_ is Union!5081) (regTwo!10674 r!13571))) b!1873576))

(check-sat (not b!1873570) (not b!1873575) (not b!1873563) (not b!1873567) (not b!1873560) (not bm!116118) (not b!1873516) (not bm!116120) (not d!572665) (not b!1873572) (not b!1873562) (not b!1873564) (not b!1873568) (not b!1873558) tp_is_empty!8855 (not b!1873571) (not b!1873511) (not b!1873566) (not b!1873576) (not b!1873574) (not d!572669) (not b!1873537) (not d!572661) (not b!1873559))
(check-sat)
