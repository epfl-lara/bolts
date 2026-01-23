; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737308 () Bool)

(assert start!737308)

(declare-fun b!7716955 () Bool)

(assert (=> b!7716955 true))

(assert (=> b!7716955 true))

(declare-fun bs!1962792 () Bool)

(declare-fun b!7716951 () Bool)

(assert (= bs!1962792 (and b!7716951 b!7716955)))

(declare-fun lambda!470935 () Int)

(declare-fun lambda!470934 () Int)

(assert (=> bs!1962792 (not (= lambda!470935 lambda!470934))))

(assert (=> b!7716951 true))

(assert (=> b!7716951 true))

(declare-fun b!7716943 () Bool)

(declare-datatypes ((Unit!168140 0))(
  ( (Unit!168141) )
))
(declare-fun e!4577694 () Unit!168140)

(declare-fun Unit!168142 () Unit!168140)

(assert (=> b!7716943 (= e!4577694 Unit!168142)))

(declare-fun lt!2665776 () Unit!168140)

(declare-datatypes ((C!41400 0))(
  ( (C!41401 (val!31140 Int)) )
))
(declare-datatypes ((Regex!20537 0))(
  ( (ElementMatch!20537 (c!1422486 C!41400)) (Concat!29382 (regOne!41586 Regex!20537) (regTwo!41586 Regex!20537)) (EmptyExpr!20537) (Star!20537 (reg!20866 Regex!20537)) (EmptyLang!20537) (Union!20537 (regOne!41587 Regex!20537) (regTwo!41587 Regex!20537)) )
))
(declare-fun r!14126 () Regex!20537)

(declare-datatypes ((List!73388 0))(
  ( (Nil!73264) (Cons!73264 (h!79712 C!41400) (t!388123 List!73388)) )
))
(declare-fun s!9605 () List!73388)

(declare-fun lemmaStarAppConcat!52 (Regex!20537 List!73388) Unit!168140)

(assert (=> b!7716943 (= lt!2665776 (lemmaStarAppConcat!52 (reg!20866 r!14126) s!9605))))

(declare-fun matchR!10033 (Regex!20537 List!73388) Bool)

(assert (=> b!7716943 (matchR!10033 (Concat!29382 (reg!20866 r!14126) r!14126) s!9605)))

(declare-fun lt!2665775 () Unit!168140)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!310 (Regex!20537 Regex!20537 List!73388) Unit!168140)

(assert (=> b!7716943 (= lt!2665775 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!310 (reg!20866 r!14126) r!14126 s!9605))))

(assert (=> b!7716943 false))

(declare-fun b!7716944 () Bool)

(declare-fun res!3079027 () Bool)

(declare-fun e!4577691 () Bool)

(assert (=> b!7716944 (=> res!3079027 e!4577691)))

(declare-datatypes ((tuple2!69536 0))(
  ( (tuple2!69537 (_1!38071 List!73388) (_2!38071 List!73388)) )
))
(declare-fun lt!2665778 () tuple2!69536)

(declare-fun isPrefix!6227 (List!73388 List!73388) Bool)

(assert (=> b!7716944 (= res!3079027 (not (isPrefix!6227 Nil!73264 (_1!38071 lt!2665778))))))

(declare-fun b!7716945 () Bool)

(declare-fun e!4577693 () Bool)

(declare-fun tp!2264185 () Bool)

(declare-fun tp!2264184 () Bool)

(assert (=> b!7716945 (= e!4577693 (and tp!2264185 tp!2264184))))

(declare-fun b!7716946 () Bool)

(declare-fun res!3079031 () Bool)

(assert (=> b!7716946 (=> res!3079031 e!4577691)))

(declare-fun ++!17745 (List!73388 List!73388) List!73388)

(assert (=> b!7716946 (= res!3079031 (not (= (++!17745 (_1!38071 lt!2665778) (_2!38071 lt!2665778)) s!9605)))))

(declare-fun b!7716947 () Bool)

(declare-fun tp_is_empty!51429 () Bool)

(assert (=> b!7716947 (= e!4577693 tp_is_empty!51429)))

(declare-fun b!7716948 () Bool)

(declare-fun res!3079026 () Bool)

(assert (=> b!7716948 (=> res!3079026 e!4577691)))

(declare-fun validRegex!10955 (Regex!20537) Bool)

(assert (=> b!7716948 (= res!3079026 (not (validRegex!10955 r!14126)))))

(declare-fun b!7716950 () Bool)

(declare-fun Unit!168143 () Unit!168140)

(assert (=> b!7716950 (= e!4577694 Unit!168143)))

(declare-fun res!3079033 () Bool)

(declare-fun e!4577695 () Bool)

(assert (=> b!7716951 (=> res!3079033 e!4577695)))

(declare-fun Exists!4662 (Int) Bool)

(assert (=> b!7716951 (= res!3079033 (not (Exists!4662 lambda!470935)))))

(declare-fun b!7716952 () Bool)

(declare-fun e!4577692 () Bool)

(assert (=> b!7716952 (= e!4577692 e!4577695)))

(declare-fun res!3079028 () Bool)

(assert (=> b!7716952 (=> res!3079028 e!4577695)))

(assert (=> b!7716952 (= res!3079028 (Exists!4662 lambda!470934))))

(declare-fun lt!2665777 () Unit!168140)

(assert (=> b!7716952 (= lt!2665777 e!4577694)))

(declare-fun c!1422485 () Bool)

(assert (=> b!7716952 (= c!1422485 (matchR!10033 r!14126 s!9605))))

(declare-fun b!7716953 () Bool)

(declare-fun e!4577689 () Bool)

(declare-fun tp!2264183 () Bool)

(assert (=> b!7716953 (= e!4577689 (and tp_is_empty!51429 tp!2264183))))

(declare-fun b!7716954 () Bool)

(declare-fun tp!2264181 () Bool)

(declare-fun tp!2264182 () Bool)

(assert (=> b!7716954 (= e!4577693 (and tp!2264181 tp!2264182))))

(declare-fun e!4577690 () Bool)

(assert (=> b!7716955 (= e!4577690 (not e!4577692))))

(declare-fun res!3079030 () Bool)

(assert (=> b!7716955 (=> res!3079030 e!4577692)))

(declare-fun lt!2665773 () Bool)

(assert (=> b!7716955 (= res!3079030 lt!2665773)))

(assert (=> b!7716955 (= lt!2665773 (Exists!4662 lambda!470934))))

(declare-datatypes ((Option!17562 0))(
  ( (None!17561) (Some!17561 (v!54696 tuple2!69536)) )
))
(declare-fun isDefined!14178 (Option!17562) Bool)

(declare-fun findConcatSeparation!3592 (Regex!20537 Regex!20537 List!73388 List!73388 List!73388) Option!17562)

(assert (=> b!7716955 (= lt!2665773 (isDefined!14178 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605)))))

(declare-fun lt!2665772 () Unit!168140)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3350 (Regex!20537 Regex!20537 List!73388) Unit!168140)

(assert (=> b!7716955 (= lt!2665772 (lemmaFindConcatSeparationEquivalentToExists!3350 (reg!20866 r!14126) r!14126 s!9605))))

(declare-fun b!7716956 () Bool)

(declare-fun tp!2264180 () Bool)

(assert (=> b!7716956 (= e!4577693 tp!2264180)))

(declare-fun b!7716957 () Bool)

(assert (=> b!7716957 (= e!4577691 (= (++!17745 Nil!73264 s!9605) s!9605))))

(declare-fun b!7716958 () Bool)

(declare-fun res!3079029 () Bool)

(assert (=> b!7716958 (=> (not res!3079029) (not e!4577690))))

(declare-fun isEmpty!41921 (List!73388) Bool)

(assert (=> b!7716958 (= res!3079029 (not (isEmpty!41921 s!9605)))))

(declare-fun b!7716959 () Bool)

(assert (=> b!7716959 (= e!4577695 e!4577691)))

(declare-fun res!3079025 () Bool)

(assert (=> b!7716959 (=> res!3079025 e!4577691)))

(assert (=> b!7716959 (= res!3079025 (not (validRegex!10955 (reg!20866 r!14126))))))

(declare-fun matchRSpec!4627 (Regex!20537 List!73388) Bool)

(assert (=> b!7716959 (= (matchR!10033 r!14126 (_2!38071 lt!2665778)) (matchRSpec!4627 r!14126 (_2!38071 lt!2665778)))))

(declare-fun lt!2665774 () Unit!168140)

(declare-fun mainMatchTheorem!4602 (Regex!20537 List!73388) Unit!168140)

(assert (=> b!7716959 (= lt!2665774 (mainMatchTheorem!4602 r!14126 (_2!38071 lt!2665778)))))

(assert (=> b!7716959 (= (matchR!10033 (reg!20866 r!14126) (_1!38071 lt!2665778)) (matchRSpec!4627 (reg!20866 r!14126) (_1!38071 lt!2665778)))))

(declare-fun lt!2665771 () Unit!168140)

(assert (=> b!7716959 (= lt!2665771 (mainMatchTheorem!4602 (reg!20866 r!14126) (_1!38071 lt!2665778)))))

(declare-fun pickWitness!516 (Int) tuple2!69536)

(assert (=> b!7716959 (= lt!2665778 (pickWitness!516 lambda!470935))))

(declare-fun b!7716949 () Bool)

(declare-fun res!3079032 () Bool)

(assert (=> b!7716949 (=> (not res!3079032) (not e!4577690))))

(get-info :version)

(assert (=> b!7716949 (= res!3079032 (and (not ((_ is EmptyExpr!20537) r!14126)) (not ((_ is EmptyLang!20537) r!14126)) (not ((_ is ElementMatch!20537) r!14126)) (not ((_ is Union!20537) r!14126)) ((_ is Star!20537) r!14126)))))

(declare-fun res!3079034 () Bool)

(assert (=> start!737308 (=> (not res!3079034) (not e!4577690))))

(assert (=> start!737308 (= res!3079034 (validRegex!10955 r!14126))))

(assert (=> start!737308 e!4577690))

(assert (=> start!737308 e!4577693))

(assert (=> start!737308 e!4577689))

(assert (= (and start!737308 res!3079034) b!7716949))

(assert (= (and b!7716949 res!3079032) b!7716958))

(assert (= (and b!7716958 res!3079029) b!7716955))

(assert (= (and b!7716955 (not res!3079030)) b!7716952))

(assert (= (and b!7716952 c!1422485) b!7716943))

(assert (= (and b!7716952 (not c!1422485)) b!7716950))

(assert (= (and b!7716952 (not res!3079028)) b!7716951))

(assert (= (and b!7716951 (not res!3079033)) b!7716959))

(assert (= (and b!7716959 (not res!3079025)) b!7716948))

(assert (= (and b!7716948 (not res!3079026)) b!7716946))

(assert (= (and b!7716946 (not res!3079031)) b!7716944))

(assert (= (and b!7716944 (not res!3079027)) b!7716957))

(assert (= (and start!737308 ((_ is ElementMatch!20537) r!14126)) b!7716947))

(assert (= (and start!737308 ((_ is Concat!29382) r!14126)) b!7716954))

(assert (= (and start!737308 ((_ is Star!20537) r!14126)) b!7716956))

(assert (= (and start!737308 ((_ is Union!20537) r!14126)) b!7716945))

(assert (= (and start!737308 ((_ is Cons!73264) s!9605)) b!7716953))

(declare-fun m!8198142 () Bool)

(assert (=> b!7716943 m!8198142))

(declare-fun m!8198144 () Bool)

(assert (=> b!7716943 m!8198144))

(declare-fun m!8198146 () Bool)

(assert (=> b!7716943 m!8198146))

(declare-fun m!8198148 () Bool)

(assert (=> b!7716952 m!8198148))

(declare-fun m!8198150 () Bool)

(assert (=> b!7716952 m!8198150))

(declare-fun m!8198152 () Bool)

(assert (=> b!7716957 m!8198152))

(declare-fun m!8198154 () Bool)

(assert (=> b!7716951 m!8198154))

(declare-fun m!8198156 () Bool)

(assert (=> b!7716958 m!8198156))

(declare-fun m!8198158 () Bool)

(assert (=> start!737308 m!8198158))

(assert (=> b!7716955 m!8198148))

(declare-fun m!8198160 () Bool)

(assert (=> b!7716955 m!8198160))

(assert (=> b!7716955 m!8198160))

(declare-fun m!8198162 () Bool)

(assert (=> b!7716955 m!8198162))

(declare-fun m!8198164 () Bool)

(assert (=> b!7716955 m!8198164))

(declare-fun m!8198166 () Bool)

(assert (=> b!7716959 m!8198166))

(declare-fun m!8198168 () Bool)

(assert (=> b!7716959 m!8198168))

(declare-fun m!8198170 () Bool)

(assert (=> b!7716959 m!8198170))

(declare-fun m!8198172 () Bool)

(assert (=> b!7716959 m!8198172))

(declare-fun m!8198174 () Bool)

(assert (=> b!7716959 m!8198174))

(declare-fun m!8198176 () Bool)

(assert (=> b!7716959 m!8198176))

(declare-fun m!8198178 () Bool)

(assert (=> b!7716959 m!8198178))

(declare-fun m!8198180 () Bool)

(assert (=> b!7716959 m!8198180))

(declare-fun m!8198182 () Bool)

(assert (=> b!7716944 m!8198182))

(declare-fun m!8198184 () Bool)

(assert (=> b!7716946 m!8198184))

(assert (=> b!7716948 m!8198158))

(check-sat tp_is_empty!51429 (not b!7716945) (not b!7716948) (not b!7716957) (not b!7716958) (not b!7716943) (not b!7716952) (not b!7716953) (not b!7716955) (not b!7716959) (not start!737308) (not b!7716954) (not b!7716946) (not b!7716956) (not b!7716944) (not b!7716951))
(check-sat)
(get-model)

(declare-fun b!7717054 () Bool)

(declare-fun e!4577757 () Bool)

(declare-fun call!713263 () Bool)

(assert (=> b!7717054 (= e!4577757 call!713263)))

(declare-fun call!713265 () Bool)

(declare-fun bm!713258 () Bool)

(declare-fun c!1422506 () Bool)

(declare-fun c!1422507 () Bool)

(assert (=> bm!713258 (= call!713265 (validRegex!10955 (ite c!1422506 (reg!20866 r!14126) (ite c!1422507 (regTwo!41587 r!14126) (regTwo!41586 r!14126)))))))

(declare-fun b!7717055 () Bool)

(declare-fun res!3079090 () Bool)

(declare-fun e!4577761 () Bool)

(assert (=> b!7717055 (=> res!3079090 e!4577761)))

(assert (=> b!7717055 (= res!3079090 (not ((_ is Concat!29382) r!14126)))))

(declare-fun e!4577758 () Bool)

(assert (=> b!7717055 (= e!4577758 e!4577761)))

(declare-fun d!2337164 () Bool)

(declare-fun res!3079091 () Bool)

(declare-fun e!4577755 () Bool)

(assert (=> d!2337164 (=> res!3079091 e!4577755)))

(assert (=> d!2337164 (= res!3079091 ((_ is ElementMatch!20537) r!14126))))

(assert (=> d!2337164 (= (validRegex!10955 r!14126) e!4577755)))

(declare-fun b!7717056 () Bool)

(declare-fun e!4577756 () Bool)

(assert (=> b!7717056 (= e!4577755 e!4577756)))

(assert (=> b!7717056 (= c!1422506 ((_ is Star!20537) r!14126))))

(declare-fun bm!713259 () Bool)

(declare-fun call!713264 () Bool)

(assert (=> bm!713259 (= call!713264 (validRegex!10955 (ite c!1422507 (regOne!41587 r!14126) (regOne!41586 r!14126))))))

(declare-fun b!7717057 () Bool)

(assert (=> b!7717057 (= e!4577756 e!4577758)))

(assert (=> b!7717057 (= c!1422507 ((_ is Union!20537) r!14126))))

(declare-fun bm!713260 () Bool)

(assert (=> bm!713260 (= call!713263 call!713265)))

(declare-fun b!7717058 () Bool)

(declare-fun res!3079087 () Bool)

(declare-fun e!4577760 () Bool)

(assert (=> b!7717058 (=> (not res!3079087) (not e!4577760))))

(assert (=> b!7717058 (= res!3079087 call!713264)))

(assert (=> b!7717058 (= e!4577758 e!4577760)))

(declare-fun b!7717059 () Bool)

(declare-fun e!4577759 () Bool)

(assert (=> b!7717059 (= e!4577756 e!4577759)))

(declare-fun res!3079088 () Bool)

(declare-fun nullable!9014 (Regex!20537) Bool)

(assert (=> b!7717059 (= res!3079088 (not (nullable!9014 (reg!20866 r!14126))))))

(assert (=> b!7717059 (=> (not res!3079088) (not e!4577759))))

(declare-fun b!7717060 () Bool)

(assert (=> b!7717060 (= e!4577759 call!713265)))

(declare-fun b!7717061 () Bool)

(assert (=> b!7717061 (= e!4577761 e!4577757)))

(declare-fun res!3079089 () Bool)

(assert (=> b!7717061 (=> (not res!3079089) (not e!4577757))))

(assert (=> b!7717061 (= res!3079089 call!713264)))

(declare-fun b!7717062 () Bool)

(assert (=> b!7717062 (= e!4577760 call!713263)))

(assert (= (and d!2337164 (not res!3079091)) b!7717056))

(assert (= (and b!7717056 c!1422506) b!7717059))

(assert (= (and b!7717056 (not c!1422506)) b!7717057))

(assert (= (and b!7717059 res!3079088) b!7717060))

(assert (= (and b!7717057 c!1422507) b!7717058))

(assert (= (and b!7717057 (not c!1422507)) b!7717055))

(assert (= (and b!7717058 res!3079087) b!7717062))

(assert (= (and b!7717055 (not res!3079090)) b!7717061))

(assert (= (and b!7717061 res!3079089) b!7717054))

(assert (= (or b!7717058 b!7717061) bm!713259))

(assert (= (or b!7717062 b!7717054) bm!713260))

(assert (= (or b!7717060 bm!713260) bm!713258))

(declare-fun m!8198214 () Bool)

(assert (=> bm!713258 m!8198214))

(declare-fun m!8198216 () Bool)

(assert (=> bm!713259 m!8198216))

(declare-fun m!8198218 () Bool)

(assert (=> b!7717059 m!8198218))

(assert (=> start!737308 d!2337164))

(declare-fun d!2337174 () Bool)

(declare-fun choose!59221 (Int) Bool)

(assert (=> d!2337174 (= (Exists!4662 lambda!470934) (choose!59221 lambda!470934))))

(declare-fun bs!1962794 () Bool)

(assert (= bs!1962794 d!2337174))

(declare-fun m!8198220 () Bool)

(assert (=> bs!1962794 m!8198220))

(assert (=> b!7716955 d!2337174))

(declare-fun d!2337176 () Bool)

(declare-fun isEmpty!41923 (Option!17562) Bool)

(assert (=> d!2337176 (= (isDefined!14178 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605)) (not (isEmpty!41923 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605))))))

(declare-fun bs!1962795 () Bool)

(assert (= bs!1962795 d!2337176))

(assert (=> bs!1962795 m!8198160))

(declare-fun m!8198236 () Bool)

(assert (=> bs!1962795 m!8198236))

(assert (=> b!7716955 d!2337176))

(declare-fun b!7717133 () Bool)

(declare-fun e!4577805 () Bool)

(declare-fun lt!2665810 () Option!17562)

(declare-fun get!26003 (Option!17562) tuple2!69536)

(assert (=> b!7717133 (= e!4577805 (= (++!17745 (_1!38071 (get!26003 lt!2665810)) (_2!38071 (get!26003 lt!2665810))) s!9605))))

(declare-fun b!7717134 () Bool)

(declare-fun e!4577803 () Option!17562)

(assert (=> b!7717134 (= e!4577803 None!17561)))

(declare-fun b!7717135 () Bool)

(declare-fun e!4577806 () Bool)

(assert (=> b!7717135 (= e!4577806 (not (isDefined!14178 lt!2665810)))))

(declare-fun d!2337180 () Bool)

(assert (=> d!2337180 e!4577806))

(declare-fun res!3079136 () Bool)

(assert (=> d!2337180 (=> res!3079136 e!4577806)))

(assert (=> d!2337180 (= res!3079136 e!4577805)))

(declare-fun res!3079132 () Bool)

(assert (=> d!2337180 (=> (not res!3079132) (not e!4577805))))

(assert (=> d!2337180 (= res!3079132 (isDefined!14178 lt!2665810))))

(declare-fun e!4577804 () Option!17562)

(assert (=> d!2337180 (= lt!2665810 e!4577804)))

(declare-fun c!1422524 () Bool)

(declare-fun e!4577802 () Bool)

(assert (=> d!2337180 (= c!1422524 e!4577802)))

(declare-fun res!3079135 () Bool)

(assert (=> d!2337180 (=> (not res!3079135) (not e!4577802))))

(assert (=> d!2337180 (= res!3079135 (matchR!10033 (reg!20866 r!14126) Nil!73264))))

(assert (=> d!2337180 (validRegex!10955 (reg!20866 r!14126))))

(assert (=> d!2337180 (= (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605) lt!2665810)))

(declare-fun b!7717136 () Bool)

(assert (=> b!7717136 (= e!4577804 e!4577803)))

(declare-fun c!1422523 () Bool)

(assert (=> b!7717136 (= c!1422523 ((_ is Nil!73264) s!9605))))

(declare-fun b!7717137 () Bool)

(declare-fun res!3079134 () Bool)

(assert (=> b!7717137 (=> (not res!3079134) (not e!4577805))))

(assert (=> b!7717137 (= res!3079134 (matchR!10033 r!14126 (_2!38071 (get!26003 lt!2665810))))))

(declare-fun b!7717138 () Bool)

(assert (=> b!7717138 (= e!4577802 (matchR!10033 r!14126 s!9605))))

(declare-fun b!7717139 () Bool)

(assert (=> b!7717139 (= e!4577804 (Some!17561 (tuple2!69537 Nil!73264 s!9605)))))

(declare-fun b!7717140 () Bool)

(declare-fun res!3079133 () Bool)

(assert (=> b!7717140 (=> (not res!3079133) (not e!4577805))))

(assert (=> b!7717140 (= res!3079133 (matchR!10033 (reg!20866 r!14126) (_1!38071 (get!26003 lt!2665810))))))

(declare-fun b!7717141 () Bool)

(declare-fun lt!2665809 () Unit!168140)

(declare-fun lt!2665811 () Unit!168140)

(assert (=> b!7717141 (= lt!2665809 lt!2665811)))

(assert (=> b!7717141 (= (++!17745 (++!17745 Nil!73264 (Cons!73264 (h!79712 s!9605) Nil!73264)) (t!388123 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3296 (List!73388 C!41400 List!73388 List!73388) Unit!168140)

(assert (=> b!7717141 (= lt!2665811 (lemmaMoveElementToOtherListKeepsConcatEq!3296 Nil!73264 (h!79712 s!9605) (t!388123 s!9605) s!9605))))

(assert (=> b!7717141 (= e!4577803 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 (++!17745 Nil!73264 (Cons!73264 (h!79712 s!9605) Nil!73264)) (t!388123 s!9605) s!9605))))

(assert (= (and d!2337180 res!3079135) b!7717138))

(assert (= (and d!2337180 c!1422524) b!7717139))

(assert (= (and d!2337180 (not c!1422524)) b!7717136))

(assert (= (and b!7717136 c!1422523) b!7717134))

(assert (= (and b!7717136 (not c!1422523)) b!7717141))

(assert (= (and d!2337180 res!3079132) b!7717140))

(assert (= (and b!7717140 res!3079133) b!7717137))

(assert (= (and b!7717137 res!3079134) b!7717133))

(assert (= (and d!2337180 (not res!3079136)) b!7717135))

(declare-fun m!8198272 () Bool)

(assert (=> d!2337180 m!8198272))

(declare-fun m!8198274 () Bool)

(assert (=> d!2337180 m!8198274))

(assert (=> d!2337180 m!8198178))

(declare-fun m!8198276 () Bool)

(assert (=> b!7717141 m!8198276))

(assert (=> b!7717141 m!8198276))

(declare-fun m!8198278 () Bool)

(assert (=> b!7717141 m!8198278))

(declare-fun m!8198280 () Bool)

(assert (=> b!7717141 m!8198280))

(assert (=> b!7717141 m!8198276))

(declare-fun m!8198282 () Bool)

(assert (=> b!7717141 m!8198282))

(declare-fun m!8198284 () Bool)

(assert (=> b!7717137 m!8198284))

(declare-fun m!8198286 () Bool)

(assert (=> b!7717137 m!8198286))

(assert (=> b!7717138 m!8198150))

(assert (=> b!7717135 m!8198272))

(assert (=> b!7717133 m!8198284))

(declare-fun m!8198288 () Bool)

(assert (=> b!7717133 m!8198288))

(assert (=> b!7717140 m!8198284))

(declare-fun m!8198290 () Bool)

(assert (=> b!7717140 m!8198290))

(assert (=> b!7716955 d!2337180))

(declare-fun bs!1962820 () Bool)

(declare-fun d!2337192 () Bool)

(assert (= bs!1962820 (and d!2337192 b!7716955)))

(declare-fun lambda!470949 () Int)

(assert (=> bs!1962820 (= lambda!470949 lambda!470934)))

(declare-fun bs!1962821 () Bool)

(assert (= bs!1962821 (and d!2337192 b!7716951)))

(assert (=> bs!1962821 (not (= lambda!470949 lambda!470935))))

(assert (=> d!2337192 true))

(assert (=> d!2337192 true))

(assert (=> d!2337192 true))

(assert (=> d!2337192 (= (isDefined!14178 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605)) (Exists!4662 lambda!470949))))

(declare-fun lt!2665818 () Unit!168140)

(declare-fun choose!59223 (Regex!20537 Regex!20537 List!73388) Unit!168140)

(assert (=> d!2337192 (= lt!2665818 (choose!59223 (reg!20866 r!14126) r!14126 s!9605))))

(assert (=> d!2337192 (validRegex!10955 (reg!20866 r!14126))))

(assert (=> d!2337192 (= (lemmaFindConcatSeparationEquivalentToExists!3350 (reg!20866 r!14126) r!14126 s!9605) lt!2665818)))

(declare-fun bs!1962822 () Bool)

(assert (= bs!1962822 d!2337192))

(declare-fun m!8198322 () Bool)

(assert (=> bs!1962822 m!8198322))

(assert (=> bs!1962822 m!8198160))

(assert (=> bs!1962822 m!8198162))

(declare-fun m!8198324 () Bool)

(assert (=> bs!1962822 m!8198324))

(assert (=> bs!1962822 m!8198178))

(assert (=> bs!1962822 m!8198160))

(assert (=> b!7716955 d!2337192))

(declare-fun b!7717266 () Bool)

(declare-fun e!4577881 () Bool)

(declare-fun e!4577879 () Bool)

(assert (=> b!7717266 (= e!4577881 e!4577879)))

(declare-fun res!3079212 () Bool)

(assert (=> b!7717266 (=> (not res!3079212) (not e!4577879))))

(assert (=> b!7717266 (= res!3079212 (not ((_ is Nil!73264) (_1!38071 lt!2665778))))))

(declare-fun b!7717268 () Bool)

(declare-fun tail!15319 (List!73388) List!73388)

(assert (=> b!7717268 (= e!4577879 (isPrefix!6227 (tail!15319 Nil!73264) (tail!15319 (_1!38071 lt!2665778))))))

(declare-fun b!7717269 () Bool)

(declare-fun e!4577880 () Bool)

(declare-fun size!42621 (List!73388) Int)

(assert (=> b!7717269 (= e!4577880 (>= (size!42621 (_1!38071 lt!2665778)) (size!42621 Nil!73264)))))

(declare-fun d!2337202 () Bool)

(assert (=> d!2337202 e!4577880))

(declare-fun res!3079209 () Bool)

(assert (=> d!2337202 (=> res!3079209 e!4577880)))

(declare-fun lt!2665831 () Bool)

(assert (=> d!2337202 (= res!3079209 (not lt!2665831))))

(assert (=> d!2337202 (= lt!2665831 e!4577881)))

(declare-fun res!3079211 () Bool)

(assert (=> d!2337202 (=> res!3079211 e!4577881)))

(assert (=> d!2337202 (= res!3079211 ((_ is Nil!73264) Nil!73264))))

(assert (=> d!2337202 (= (isPrefix!6227 Nil!73264 (_1!38071 lt!2665778)) lt!2665831)))

(declare-fun b!7717267 () Bool)

(declare-fun res!3079210 () Bool)

(assert (=> b!7717267 (=> (not res!3079210) (not e!4577879))))

(declare-fun head!15779 (List!73388) C!41400)

(assert (=> b!7717267 (= res!3079210 (= (head!15779 Nil!73264) (head!15779 (_1!38071 lt!2665778))))))

(assert (= (and d!2337202 (not res!3079211)) b!7717266))

(assert (= (and b!7717266 res!3079212) b!7717267))

(assert (= (and b!7717267 res!3079210) b!7717268))

(assert (= (and d!2337202 (not res!3079209)) b!7717269))

(declare-fun m!8198368 () Bool)

(assert (=> b!7717268 m!8198368))

(declare-fun m!8198370 () Bool)

(assert (=> b!7717268 m!8198370))

(assert (=> b!7717268 m!8198368))

(assert (=> b!7717268 m!8198370))

(declare-fun m!8198372 () Bool)

(assert (=> b!7717268 m!8198372))

(declare-fun m!8198374 () Bool)

(assert (=> b!7717269 m!8198374))

(declare-fun m!8198376 () Bool)

(assert (=> b!7717269 m!8198376))

(declare-fun m!8198378 () Bool)

(assert (=> b!7717267 m!8198378))

(declare-fun m!8198380 () Bool)

(assert (=> b!7717267 m!8198380))

(assert (=> b!7716944 d!2337202))

(declare-fun d!2337216 () Bool)

(assert (=> d!2337216 (= (isEmpty!41921 s!9605) ((_ is Nil!73264) s!9605))))

(assert (=> b!7716958 d!2337216))

(declare-fun b!7717300 () Bool)

(declare-fun e!4577891 () Bool)

(declare-fun call!713280 () Bool)

(assert (=> b!7717300 (= e!4577891 call!713280)))

(declare-fun c!1422552 () Bool)

(declare-fun c!1422551 () Bool)

(declare-fun bm!713275 () Bool)

(declare-fun call!713282 () Bool)

(assert (=> bm!713275 (= call!713282 (validRegex!10955 (ite c!1422551 (reg!20866 (reg!20866 r!14126)) (ite c!1422552 (regTwo!41587 (reg!20866 r!14126)) (regTwo!41586 (reg!20866 r!14126))))))))

(declare-fun b!7717301 () Bool)

(declare-fun res!3079216 () Bool)

(declare-fun e!4577895 () Bool)

(assert (=> b!7717301 (=> res!3079216 e!4577895)))

(assert (=> b!7717301 (= res!3079216 (not ((_ is Concat!29382) (reg!20866 r!14126))))))

(declare-fun e!4577892 () Bool)

(assert (=> b!7717301 (= e!4577892 e!4577895)))

(declare-fun d!2337218 () Bool)

(declare-fun res!3079217 () Bool)

(declare-fun e!4577888 () Bool)

(assert (=> d!2337218 (=> res!3079217 e!4577888)))

(assert (=> d!2337218 (= res!3079217 ((_ is ElementMatch!20537) (reg!20866 r!14126)))))

(assert (=> d!2337218 (= (validRegex!10955 (reg!20866 r!14126)) e!4577888)))

(declare-fun b!7717302 () Bool)

(declare-fun e!4577889 () Bool)

(assert (=> b!7717302 (= e!4577888 e!4577889)))

(assert (=> b!7717302 (= c!1422551 ((_ is Star!20537) (reg!20866 r!14126)))))

(declare-fun bm!713276 () Bool)

(declare-fun call!713281 () Bool)

(assert (=> bm!713276 (= call!713281 (validRegex!10955 (ite c!1422552 (regOne!41587 (reg!20866 r!14126)) (regOne!41586 (reg!20866 r!14126)))))))

(declare-fun b!7717303 () Bool)

(assert (=> b!7717303 (= e!4577889 e!4577892)))

(assert (=> b!7717303 (= c!1422552 ((_ is Union!20537) (reg!20866 r!14126)))))

(declare-fun bm!713277 () Bool)

(assert (=> bm!713277 (= call!713280 call!713282)))

(declare-fun b!7717304 () Bool)

(declare-fun res!3079213 () Bool)

(declare-fun e!4577894 () Bool)

(assert (=> b!7717304 (=> (not res!3079213) (not e!4577894))))

(assert (=> b!7717304 (= res!3079213 call!713281)))

(assert (=> b!7717304 (= e!4577892 e!4577894)))

(declare-fun b!7717305 () Bool)

(declare-fun e!4577893 () Bool)

(assert (=> b!7717305 (= e!4577889 e!4577893)))

(declare-fun res!3079214 () Bool)

(assert (=> b!7717305 (= res!3079214 (not (nullable!9014 (reg!20866 (reg!20866 r!14126)))))))

(assert (=> b!7717305 (=> (not res!3079214) (not e!4577893))))

(declare-fun b!7717306 () Bool)

(assert (=> b!7717306 (= e!4577893 call!713282)))

(declare-fun b!7717307 () Bool)

(assert (=> b!7717307 (= e!4577895 e!4577891)))

(declare-fun res!3079215 () Bool)

(assert (=> b!7717307 (=> (not res!3079215) (not e!4577891))))

(assert (=> b!7717307 (= res!3079215 call!713281)))

(declare-fun b!7717308 () Bool)

(assert (=> b!7717308 (= e!4577894 call!713280)))

(assert (= (and d!2337218 (not res!3079217)) b!7717302))

(assert (= (and b!7717302 c!1422551) b!7717305))

(assert (= (and b!7717302 (not c!1422551)) b!7717303))

(assert (= (and b!7717305 res!3079214) b!7717306))

(assert (= (and b!7717303 c!1422552) b!7717304))

(assert (= (and b!7717303 (not c!1422552)) b!7717301))

(assert (= (and b!7717304 res!3079213) b!7717308))

(assert (= (and b!7717301 (not res!3079216)) b!7717307))

(assert (= (and b!7717307 res!3079215) b!7717300))

(assert (= (or b!7717304 b!7717307) bm!713276))

(assert (= (or b!7717308 b!7717300) bm!713277))

(assert (= (or b!7717306 bm!713277) bm!713275))

(declare-fun m!8198390 () Bool)

(assert (=> bm!713275 m!8198390))

(declare-fun m!8198392 () Bool)

(assert (=> bm!713276 m!8198392))

(declare-fun m!8198394 () Bool)

(assert (=> b!7717305 m!8198394))

(assert (=> b!7716959 d!2337218))

(declare-fun b!7717345 () Bool)

(declare-fun e!4577920 () Bool)

(declare-fun lt!2665834 () Bool)

(declare-fun call!713285 () Bool)

(assert (=> b!7717345 (= e!4577920 (= lt!2665834 call!713285))))

(declare-fun b!7717346 () Bool)

(declare-fun e!4577918 () Bool)

(assert (=> b!7717346 (= e!4577920 e!4577918)))

(declare-fun c!1422561 () Bool)

(assert (=> b!7717346 (= c!1422561 ((_ is EmptyLang!20537) (reg!20866 r!14126)))))

(declare-fun b!7717347 () Bool)

(declare-fun e!4577915 () Bool)

(assert (=> b!7717347 (= e!4577915 (nullable!9014 (reg!20866 r!14126)))))

(declare-fun b!7717348 () Bool)

(declare-fun e!4577917 () Bool)

(assert (=> b!7717348 (= e!4577917 (not (= (head!15779 (_1!38071 lt!2665778)) (c!1422486 (reg!20866 r!14126)))))))

(declare-fun b!7717349 () Bool)

(declare-fun res!3079238 () Bool)

(assert (=> b!7717349 (=> res!3079238 e!4577917)))

(assert (=> b!7717349 (= res!3079238 (not (isEmpty!41921 (tail!15319 (_1!38071 lt!2665778)))))))

(declare-fun b!7717350 () Bool)

(declare-fun res!3079244 () Bool)

(declare-fun e!4577919 () Bool)

(assert (=> b!7717350 (=> (not res!3079244) (not e!4577919))))

(assert (=> b!7717350 (= res!3079244 (not call!713285))))

(declare-fun b!7717351 () Bool)

(declare-fun res!3079243 () Bool)

(declare-fun e!4577916 () Bool)

(assert (=> b!7717351 (=> res!3079243 e!4577916)))

(assert (=> b!7717351 (= res!3079243 (not ((_ is ElementMatch!20537) (reg!20866 r!14126))))))

(assert (=> b!7717351 (= e!4577918 e!4577916)))

(declare-fun b!7717352 () Bool)

(assert (=> b!7717352 (= e!4577918 (not lt!2665834))))

(declare-fun bm!713280 () Bool)

(assert (=> bm!713280 (= call!713285 (isEmpty!41921 (_1!38071 lt!2665778)))))

(declare-fun b!7717353 () Bool)

(assert (=> b!7717353 (= e!4577919 (= (head!15779 (_1!38071 lt!2665778)) (c!1422486 (reg!20866 r!14126))))))

(declare-fun d!2337222 () Bool)

(assert (=> d!2337222 e!4577920))

(declare-fun c!1422559 () Bool)

(assert (=> d!2337222 (= c!1422559 ((_ is EmptyExpr!20537) (reg!20866 r!14126)))))

(assert (=> d!2337222 (= lt!2665834 e!4577915)))

(declare-fun c!1422560 () Bool)

(assert (=> d!2337222 (= c!1422560 (isEmpty!41921 (_1!38071 lt!2665778)))))

(assert (=> d!2337222 (validRegex!10955 (reg!20866 r!14126))))

(assert (=> d!2337222 (= (matchR!10033 (reg!20866 r!14126) (_1!38071 lt!2665778)) lt!2665834)))

(declare-fun b!7717354 () Bool)

(declare-fun e!4577914 () Bool)

(assert (=> b!7717354 (= e!4577916 e!4577914)))

(declare-fun res!3079241 () Bool)

(assert (=> b!7717354 (=> (not res!3079241) (not e!4577914))))

(assert (=> b!7717354 (= res!3079241 (not lt!2665834))))

(declare-fun b!7717355 () Bool)

(declare-fun derivativeStep!5979 (Regex!20537 C!41400) Regex!20537)

(assert (=> b!7717355 (= e!4577915 (matchR!10033 (derivativeStep!5979 (reg!20866 r!14126) (head!15779 (_1!38071 lt!2665778))) (tail!15319 (_1!38071 lt!2665778))))))

(declare-fun b!7717356 () Bool)

(declare-fun res!3079242 () Bool)

(assert (=> b!7717356 (=> (not res!3079242) (not e!4577919))))

(assert (=> b!7717356 (= res!3079242 (isEmpty!41921 (tail!15319 (_1!38071 lt!2665778))))))

(declare-fun b!7717357 () Bool)

(assert (=> b!7717357 (= e!4577914 e!4577917)))

(declare-fun res!3079240 () Bool)

(assert (=> b!7717357 (=> res!3079240 e!4577917)))

(assert (=> b!7717357 (= res!3079240 call!713285)))

(declare-fun b!7717358 () Bool)

(declare-fun res!3079237 () Bool)

(assert (=> b!7717358 (=> res!3079237 e!4577916)))

(assert (=> b!7717358 (= res!3079237 e!4577919)))

(declare-fun res!3079239 () Bool)

(assert (=> b!7717358 (=> (not res!3079239) (not e!4577919))))

(assert (=> b!7717358 (= res!3079239 lt!2665834)))

(assert (= (and d!2337222 c!1422560) b!7717347))

(assert (= (and d!2337222 (not c!1422560)) b!7717355))

(assert (= (and d!2337222 c!1422559) b!7717345))

(assert (= (and d!2337222 (not c!1422559)) b!7717346))

(assert (= (and b!7717346 c!1422561) b!7717352))

(assert (= (and b!7717346 (not c!1422561)) b!7717351))

(assert (= (and b!7717351 (not res!3079243)) b!7717358))

(assert (= (and b!7717358 res!3079239) b!7717350))

(assert (= (and b!7717350 res!3079244) b!7717356))

(assert (= (and b!7717356 res!3079242) b!7717353))

(assert (= (and b!7717358 (not res!3079237)) b!7717354))

(assert (= (and b!7717354 res!3079241) b!7717357))

(assert (= (and b!7717357 (not res!3079240)) b!7717349))

(assert (= (and b!7717349 (not res!3079238)) b!7717348))

(assert (= (or b!7717345 b!7717350 b!7717357) bm!713280))

(assert (=> b!7717353 m!8198380))

(assert (=> b!7717349 m!8198370))

(assert (=> b!7717349 m!8198370))

(declare-fun m!8198396 () Bool)

(assert (=> b!7717349 m!8198396))

(declare-fun m!8198398 () Bool)

(assert (=> bm!713280 m!8198398))

(assert (=> b!7717347 m!8198218))

(assert (=> d!2337222 m!8198398))

(assert (=> d!2337222 m!8198178))

(assert (=> b!7717348 m!8198380))

(assert (=> b!7717356 m!8198370))

(assert (=> b!7717356 m!8198370))

(assert (=> b!7717356 m!8198396))

(assert (=> b!7717355 m!8198380))

(assert (=> b!7717355 m!8198380))

(declare-fun m!8198400 () Bool)

(assert (=> b!7717355 m!8198400))

(assert (=> b!7717355 m!8198370))

(assert (=> b!7717355 m!8198400))

(assert (=> b!7717355 m!8198370))

(declare-fun m!8198402 () Bool)

(assert (=> b!7717355 m!8198402))

(assert (=> b!7716959 d!2337222))

(declare-fun d!2337224 () Bool)

(assert (=> d!2337224 (= (matchR!10033 (reg!20866 r!14126) (_1!38071 lt!2665778)) (matchRSpec!4627 (reg!20866 r!14126) (_1!38071 lt!2665778)))))

(declare-fun lt!2665837 () Unit!168140)

(declare-fun choose!59224 (Regex!20537 List!73388) Unit!168140)

(assert (=> d!2337224 (= lt!2665837 (choose!59224 (reg!20866 r!14126) (_1!38071 lt!2665778)))))

(assert (=> d!2337224 (validRegex!10955 (reg!20866 r!14126))))

(assert (=> d!2337224 (= (mainMatchTheorem!4602 (reg!20866 r!14126) (_1!38071 lt!2665778)) lt!2665837)))

(declare-fun bs!1962827 () Bool)

(assert (= bs!1962827 d!2337224))

(assert (=> bs!1962827 m!8198172))

(assert (=> bs!1962827 m!8198168))

(declare-fun m!8198404 () Bool)

(assert (=> bs!1962827 m!8198404))

(assert (=> bs!1962827 m!8198178))

(assert (=> b!7716959 d!2337224))

(declare-fun d!2337226 () Bool)

(declare-fun lt!2665840 () tuple2!69536)

(declare-fun dynLambda!29955 (Int tuple2!69536) Bool)

(assert (=> d!2337226 (dynLambda!29955 lambda!470935 lt!2665840)))

(declare-fun choose!59225 (Int) tuple2!69536)

(assert (=> d!2337226 (= lt!2665840 (choose!59225 lambda!470935))))

(assert (=> d!2337226 (Exists!4662 lambda!470935)))

(assert (=> d!2337226 (= (pickWitness!516 lambda!470935) lt!2665840)))

(declare-fun b_lambda!289247 () Bool)

(assert (=> (not b_lambda!289247) (not d!2337226)))

(declare-fun bs!1962828 () Bool)

(assert (= bs!1962828 d!2337226))

(declare-fun m!8198406 () Bool)

(assert (=> bs!1962828 m!8198406))

(declare-fun m!8198408 () Bool)

(assert (=> bs!1962828 m!8198408))

(assert (=> bs!1962828 m!8198154))

(assert (=> b!7716959 d!2337226))

(declare-fun bs!1962829 () Bool)

(declare-fun b!7717397 () Bool)

(assert (= bs!1962829 (and b!7717397 b!7716955)))

(declare-fun lambda!470954 () Int)

(assert (=> bs!1962829 (not (= lambda!470954 lambda!470934))))

(declare-fun bs!1962830 () Bool)

(assert (= bs!1962830 (and b!7717397 b!7716951)))

(assert (=> bs!1962830 (= (and (= (_1!38071 lt!2665778) s!9605) (= (reg!20866 (reg!20866 r!14126)) (reg!20866 r!14126)) (= (reg!20866 r!14126) r!14126)) (= lambda!470954 lambda!470935))))

(declare-fun bs!1962831 () Bool)

(assert (= bs!1962831 (and b!7717397 d!2337192)))

(assert (=> bs!1962831 (not (= lambda!470954 lambda!470949))))

(assert (=> b!7717397 true))

(assert (=> b!7717397 true))

(declare-fun bs!1962832 () Bool)

(declare-fun b!7717395 () Bool)

(assert (= bs!1962832 (and b!7717395 b!7716955)))

(declare-fun lambda!470955 () Int)

(assert (=> bs!1962832 (not (= lambda!470955 lambda!470934))))

(declare-fun bs!1962833 () Bool)

(assert (= bs!1962833 (and b!7717395 b!7716951)))

(assert (=> bs!1962833 (not (= lambda!470955 lambda!470935))))

(declare-fun bs!1962834 () Bool)

(assert (= bs!1962834 (and b!7717395 d!2337192)))

(assert (=> bs!1962834 (not (= lambda!470955 lambda!470949))))

(declare-fun bs!1962835 () Bool)

(assert (= bs!1962835 (and b!7717395 b!7717397)))

(assert (=> bs!1962835 (not (= lambda!470955 lambda!470954))))

(assert (=> b!7717395 true))

(assert (=> b!7717395 true))

(declare-fun b!7717391 () Bool)

(declare-fun e!4577942 () Bool)

(declare-fun e!4577945 () Bool)

(assert (=> b!7717391 (= e!4577942 e!4577945)))

(declare-fun res!3079261 () Bool)

(assert (=> b!7717391 (= res!3079261 (not ((_ is EmptyLang!20537) (reg!20866 r!14126))))))

(assert (=> b!7717391 (=> (not res!3079261) (not e!4577945))))

(declare-fun call!713291 () Bool)

(declare-fun bm!713285 () Bool)

(declare-fun c!1422573 () Bool)

(assert (=> bm!713285 (= call!713291 (Exists!4662 (ite c!1422573 lambda!470954 lambda!470955)))))

(declare-fun b!7717392 () Bool)

(declare-fun e!4577943 () Bool)

(declare-fun e!4577944 () Bool)

(assert (=> b!7717392 (= e!4577943 e!4577944)))

(declare-fun res!3079262 () Bool)

(assert (=> b!7717392 (= res!3079262 (matchRSpec!4627 (regOne!41587 (reg!20866 r!14126)) (_1!38071 lt!2665778)))))

(assert (=> b!7717392 (=> res!3079262 e!4577944)))

(declare-fun b!7717393 () Bool)

(declare-fun call!713290 () Bool)

(assert (=> b!7717393 (= e!4577942 call!713290)))

(declare-fun d!2337228 () Bool)

(declare-fun c!1422570 () Bool)

(assert (=> d!2337228 (= c!1422570 ((_ is EmptyExpr!20537) (reg!20866 r!14126)))))

(assert (=> d!2337228 (= (matchRSpec!4627 (reg!20866 r!14126) (_1!38071 lt!2665778)) e!4577942)))

(declare-fun b!7717394 () Bool)

(assert (=> b!7717394 (= e!4577944 (matchRSpec!4627 (regTwo!41587 (reg!20866 r!14126)) (_1!38071 lt!2665778)))))

(declare-fun e!4577941 () Bool)

(assert (=> b!7717395 (= e!4577941 call!713291)))

(declare-fun b!7717396 () Bool)

(declare-fun c!1422571 () Bool)

(assert (=> b!7717396 (= c!1422571 ((_ is ElementMatch!20537) (reg!20866 r!14126)))))

(declare-fun e!4577939 () Bool)

(assert (=> b!7717396 (= e!4577945 e!4577939)))

(declare-fun e!4577940 () Bool)

(assert (=> b!7717397 (= e!4577940 call!713291)))

(declare-fun b!7717398 () Bool)

(declare-fun c!1422572 () Bool)

(assert (=> b!7717398 (= c!1422572 ((_ is Union!20537) (reg!20866 r!14126)))))

(assert (=> b!7717398 (= e!4577939 e!4577943)))

(declare-fun b!7717399 () Bool)

(assert (=> b!7717399 (= e!4577939 (= (_1!38071 lt!2665778) (Cons!73264 (c!1422486 (reg!20866 r!14126)) Nil!73264)))))

(declare-fun bm!713286 () Bool)

(assert (=> bm!713286 (= call!713290 (isEmpty!41921 (_1!38071 lt!2665778)))))

(declare-fun b!7717400 () Bool)

(assert (=> b!7717400 (= e!4577943 e!4577941)))

(assert (=> b!7717400 (= c!1422573 ((_ is Star!20537) (reg!20866 r!14126)))))

(declare-fun b!7717401 () Bool)

(declare-fun res!3079263 () Bool)

(assert (=> b!7717401 (=> res!3079263 e!4577940)))

(assert (=> b!7717401 (= res!3079263 call!713290)))

(assert (=> b!7717401 (= e!4577941 e!4577940)))

(assert (= (and d!2337228 c!1422570) b!7717393))

(assert (= (and d!2337228 (not c!1422570)) b!7717391))

(assert (= (and b!7717391 res!3079261) b!7717396))

(assert (= (and b!7717396 c!1422571) b!7717399))

(assert (= (and b!7717396 (not c!1422571)) b!7717398))

(assert (= (and b!7717398 c!1422572) b!7717392))

(assert (= (and b!7717398 (not c!1422572)) b!7717400))

(assert (= (and b!7717392 (not res!3079262)) b!7717394))

(assert (= (and b!7717400 c!1422573) b!7717401))

(assert (= (and b!7717400 (not c!1422573)) b!7717395))

(assert (= (and b!7717401 (not res!3079263)) b!7717397))

(assert (= (or b!7717397 b!7717395) bm!713285))

(assert (= (or b!7717393 b!7717401) bm!713286))

(declare-fun m!8198410 () Bool)

(assert (=> bm!713285 m!8198410))

(declare-fun m!8198412 () Bool)

(assert (=> b!7717392 m!8198412))

(declare-fun m!8198414 () Bool)

(assert (=> b!7717394 m!8198414))

(assert (=> bm!713286 m!8198398))

(assert (=> b!7716959 d!2337228))

(declare-fun b!7717402 () Bool)

(declare-fun e!4577952 () Bool)

(declare-fun lt!2665841 () Bool)

(declare-fun call!713292 () Bool)

(assert (=> b!7717402 (= e!4577952 (= lt!2665841 call!713292))))

(declare-fun b!7717403 () Bool)

(declare-fun e!4577950 () Bool)

(assert (=> b!7717403 (= e!4577952 e!4577950)))

(declare-fun c!1422576 () Bool)

(assert (=> b!7717403 (= c!1422576 ((_ is EmptyLang!20537) r!14126))))

(declare-fun b!7717404 () Bool)

(declare-fun e!4577947 () Bool)

(assert (=> b!7717404 (= e!4577947 (nullable!9014 r!14126))))

(declare-fun b!7717405 () Bool)

(declare-fun e!4577949 () Bool)

(assert (=> b!7717405 (= e!4577949 (not (= (head!15779 (_2!38071 lt!2665778)) (c!1422486 r!14126))))))

(declare-fun b!7717406 () Bool)

(declare-fun res!3079265 () Bool)

(assert (=> b!7717406 (=> res!3079265 e!4577949)))

(assert (=> b!7717406 (= res!3079265 (not (isEmpty!41921 (tail!15319 (_2!38071 lt!2665778)))))))

(declare-fun b!7717407 () Bool)

(declare-fun res!3079271 () Bool)

(declare-fun e!4577951 () Bool)

(assert (=> b!7717407 (=> (not res!3079271) (not e!4577951))))

(assert (=> b!7717407 (= res!3079271 (not call!713292))))

(declare-fun b!7717408 () Bool)

(declare-fun res!3079270 () Bool)

(declare-fun e!4577948 () Bool)

(assert (=> b!7717408 (=> res!3079270 e!4577948)))

(assert (=> b!7717408 (= res!3079270 (not ((_ is ElementMatch!20537) r!14126)))))

(assert (=> b!7717408 (= e!4577950 e!4577948)))

(declare-fun b!7717409 () Bool)

(assert (=> b!7717409 (= e!4577950 (not lt!2665841))))

(declare-fun bm!713287 () Bool)

(assert (=> bm!713287 (= call!713292 (isEmpty!41921 (_2!38071 lt!2665778)))))

(declare-fun b!7717410 () Bool)

(assert (=> b!7717410 (= e!4577951 (= (head!15779 (_2!38071 lt!2665778)) (c!1422486 r!14126)))))

(declare-fun d!2337230 () Bool)

(assert (=> d!2337230 e!4577952))

(declare-fun c!1422574 () Bool)

(assert (=> d!2337230 (= c!1422574 ((_ is EmptyExpr!20537) r!14126))))

(assert (=> d!2337230 (= lt!2665841 e!4577947)))

(declare-fun c!1422575 () Bool)

(assert (=> d!2337230 (= c!1422575 (isEmpty!41921 (_2!38071 lt!2665778)))))

(assert (=> d!2337230 (validRegex!10955 r!14126)))

(assert (=> d!2337230 (= (matchR!10033 r!14126 (_2!38071 lt!2665778)) lt!2665841)))

(declare-fun b!7717411 () Bool)

(declare-fun e!4577946 () Bool)

(assert (=> b!7717411 (= e!4577948 e!4577946)))

(declare-fun res!3079268 () Bool)

(assert (=> b!7717411 (=> (not res!3079268) (not e!4577946))))

(assert (=> b!7717411 (= res!3079268 (not lt!2665841))))

(declare-fun b!7717412 () Bool)

(assert (=> b!7717412 (= e!4577947 (matchR!10033 (derivativeStep!5979 r!14126 (head!15779 (_2!38071 lt!2665778))) (tail!15319 (_2!38071 lt!2665778))))))

(declare-fun b!7717413 () Bool)

(declare-fun res!3079269 () Bool)

(assert (=> b!7717413 (=> (not res!3079269) (not e!4577951))))

(assert (=> b!7717413 (= res!3079269 (isEmpty!41921 (tail!15319 (_2!38071 lt!2665778))))))

(declare-fun b!7717414 () Bool)

(assert (=> b!7717414 (= e!4577946 e!4577949)))

(declare-fun res!3079267 () Bool)

(assert (=> b!7717414 (=> res!3079267 e!4577949)))

(assert (=> b!7717414 (= res!3079267 call!713292)))

(declare-fun b!7717415 () Bool)

(declare-fun res!3079264 () Bool)

(assert (=> b!7717415 (=> res!3079264 e!4577948)))

(assert (=> b!7717415 (= res!3079264 e!4577951)))

(declare-fun res!3079266 () Bool)

(assert (=> b!7717415 (=> (not res!3079266) (not e!4577951))))

(assert (=> b!7717415 (= res!3079266 lt!2665841)))

(assert (= (and d!2337230 c!1422575) b!7717404))

(assert (= (and d!2337230 (not c!1422575)) b!7717412))

(assert (= (and d!2337230 c!1422574) b!7717402))

(assert (= (and d!2337230 (not c!1422574)) b!7717403))

(assert (= (and b!7717403 c!1422576) b!7717409))

(assert (= (and b!7717403 (not c!1422576)) b!7717408))

(assert (= (and b!7717408 (not res!3079270)) b!7717415))

(assert (= (and b!7717415 res!3079266) b!7717407))

(assert (= (and b!7717407 res!3079271) b!7717413))

(assert (= (and b!7717413 res!3079269) b!7717410))

(assert (= (and b!7717415 (not res!3079264)) b!7717411))

(assert (= (and b!7717411 res!3079268) b!7717414))

(assert (= (and b!7717414 (not res!3079267)) b!7717406))

(assert (= (and b!7717406 (not res!3079265)) b!7717405))

(assert (= (or b!7717402 b!7717407 b!7717414) bm!713287))

(declare-fun m!8198416 () Bool)

(assert (=> b!7717410 m!8198416))

(declare-fun m!8198418 () Bool)

(assert (=> b!7717406 m!8198418))

(assert (=> b!7717406 m!8198418))

(declare-fun m!8198420 () Bool)

(assert (=> b!7717406 m!8198420))

(declare-fun m!8198422 () Bool)

(assert (=> bm!713287 m!8198422))

(declare-fun m!8198424 () Bool)

(assert (=> b!7717404 m!8198424))

(assert (=> d!2337230 m!8198422))

(assert (=> d!2337230 m!8198158))

(assert (=> b!7717405 m!8198416))

(assert (=> b!7717413 m!8198418))

(assert (=> b!7717413 m!8198418))

(assert (=> b!7717413 m!8198420))

(assert (=> b!7717412 m!8198416))

(assert (=> b!7717412 m!8198416))

(declare-fun m!8198426 () Bool)

(assert (=> b!7717412 m!8198426))

(assert (=> b!7717412 m!8198418))

(assert (=> b!7717412 m!8198426))

(assert (=> b!7717412 m!8198418))

(declare-fun m!8198428 () Bool)

(assert (=> b!7717412 m!8198428))

(assert (=> b!7716959 d!2337230))

(declare-fun bs!1962836 () Bool)

(declare-fun b!7717422 () Bool)

(assert (= bs!1962836 (and b!7717422 b!7716951)))

(declare-fun lambda!470956 () Int)

(assert (=> bs!1962836 (= (= (_2!38071 lt!2665778) s!9605) (= lambda!470956 lambda!470935))))

(declare-fun bs!1962837 () Bool)

(assert (= bs!1962837 (and b!7717422 b!7716955)))

(assert (=> bs!1962837 (not (= lambda!470956 lambda!470934))))

(declare-fun bs!1962838 () Bool)

(assert (= bs!1962838 (and b!7717422 b!7717397)))

(assert (=> bs!1962838 (= (and (= (_2!38071 lt!2665778) (_1!38071 lt!2665778)) (= (reg!20866 r!14126) (reg!20866 (reg!20866 r!14126))) (= r!14126 (reg!20866 r!14126))) (= lambda!470956 lambda!470954))))

(declare-fun bs!1962839 () Bool)

(assert (= bs!1962839 (and b!7717422 d!2337192)))

(assert (=> bs!1962839 (not (= lambda!470956 lambda!470949))))

(declare-fun bs!1962840 () Bool)

(assert (= bs!1962840 (and b!7717422 b!7717395)))

(assert (=> bs!1962840 (not (= lambda!470956 lambda!470955))))

(assert (=> b!7717422 true))

(assert (=> b!7717422 true))

(declare-fun bs!1962841 () Bool)

(declare-fun b!7717420 () Bool)

(assert (= bs!1962841 (and b!7717420 b!7717422)))

(declare-fun lambda!470957 () Int)

(assert (=> bs!1962841 (not (= lambda!470957 lambda!470956))))

(declare-fun bs!1962842 () Bool)

(assert (= bs!1962842 (and b!7717420 b!7716951)))

(assert (=> bs!1962842 (not (= lambda!470957 lambda!470935))))

(declare-fun bs!1962843 () Bool)

(assert (= bs!1962843 (and b!7717420 b!7716955)))

(assert (=> bs!1962843 (not (= lambda!470957 lambda!470934))))

(declare-fun bs!1962844 () Bool)

(assert (= bs!1962844 (and b!7717420 b!7717397)))

(assert (=> bs!1962844 (not (= lambda!470957 lambda!470954))))

(declare-fun bs!1962845 () Bool)

(assert (= bs!1962845 (and b!7717420 d!2337192)))

(assert (=> bs!1962845 (not (= lambda!470957 lambda!470949))))

(declare-fun bs!1962846 () Bool)

(assert (= bs!1962846 (and b!7717420 b!7717395)))

(assert (=> bs!1962846 (= (and (= (_2!38071 lt!2665778) (_1!38071 lt!2665778)) (= (regOne!41586 r!14126) (regOne!41586 (reg!20866 r!14126))) (= (regTwo!41586 r!14126) (regTwo!41586 (reg!20866 r!14126)))) (= lambda!470957 lambda!470955))))

(assert (=> b!7717420 true))

(assert (=> b!7717420 true))

(declare-fun b!7717416 () Bool)

(declare-fun e!4577956 () Bool)

(declare-fun e!4577959 () Bool)

(assert (=> b!7717416 (= e!4577956 e!4577959)))

(declare-fun res!3079272 () Bool)

(assert (=> b!7717416 (= res!3079272 (not ((_ is EmptyLang!20537) r!14126)))))

(assert (=> b!7717416 (=> (not res!3079272) (not e!4577959))))

(declare-fun call!713294 () Bool)

(declare-fun bm!713288 () Bool)

(declare-fun c!1422580 () Bool)

(assert (=> bm!713288 (= call!713294 (Exists!4662 (ite c!1422580 lambda!470956 lambda!470957)))))

(declare-fun b!7717417 () Bool)

(declare-fun e!4577957 () Bool)

(declare-fun e!4577958 () Bool)

(assert (=> b!7717417 (= e!4577957 e!4577958)))

(declare-fun res!3079273 () Bool)

(assert (=> b!7717417 (= res!3079273 (matchRSpec!4627 (regOne!41587 r!14126) (_2!38071 lt!2665778)))))

(assert (=> b!7717417 (=> res!3079273 e!4577958)))

(declare-fun b!7717418 () Bool)

(declare-fun call!713293 () Bool)

(assert (=> b!7717418 (= e!4577956 call!713293)))

(declare-fun d!2337232 () Bool)

(declare-fun c!1422577 () Bool)

(assert (=> d!2337232 (= c!1422577 ((_ is EmptyExpr!20537) r!14126))))

(assert (=> d!2337232 (= (matchRSpec!4627 r!14126 (_2!38071 lt!2665778)) e!4577956)))

(declare-fun b!7717419 () Bool)

(assert (=> b!7717419 (= e!4577958 (matchRSpec!4627 (regTwo!41587 r!14126) (_2!38071 lt!2665778)))))

(declare-fun e!4577955 () Bool)

(assert (=> b!7717420 (= e!4577955 call!713294)))

(declare-fun b!7717421 () Bool)

(declare-fun c!1422578 () Bool)

(assert (=> b!7717421 (= c!1422578 ((_ is ElementMatch!20537) r!14126))))

(declare-fun e!4577953 () Bool)

(assert (=> b!7717421 (= e!4577959 e!4577953)))

(declare-fun e!4577954 () Bool)

(assert (=> b!7717422 (= e!4577954 call!713294)))

(declare-fun b!7717423 () Bool)

(declare-fun c!1422579 () Bool)

(assert (=> b!7717423 (= c!1422579 ((_ is Union!20537) r!14126))))

(assert (=> b!7717423 (= e!4577953 e!4577957)))

(declare-fun b!7717424 () Bool)

(assert (=> b!7717424 (= e!4577953 (= (_2!38071 lt!2665778) (Cons!73264 (c!1422486 r!14126) Nil!73264)))))

(declare-fun bm!713289 () Bool)

(assert (=> bm!713289 (= call!713293 (isEmpty!41921 (_2!38071 lt!2665778)))))

(declare-fun b!7717425 () Bool)

(assert (=> b!7717425 (= e!4577957 e!4577955)))

(assert (=> b!7717425 (= c!1422580 ((_ is Star!20537) r!14126))))

(declare-fun b!7717426 () Bool)

(declare-fun res!3079274 () Bool)

(assert (=> b!7717426 (=> res!3079274 e!4577954)))

(assert (=> b!7717426 (= res!3079274 call!713293)))

(assert (=> b!7717426 (= e!4577955 e!4577954)))

(assert (= (and d!2337232 c!1422577) b!7717418))

(assert (= (and d!2337232 (not c!1422577)) b!7717416))

(assert (= (and b!7717416 res!3079272) b!7717421))

(assert (= (and b!7717421 c!1422578) b!7717424))

(assert (= (and b!7717421 (not c!1422578)) b!7717423))

(assert (= (and b!7717423 c!1422579) b!7717417))

(assert (= (and b!7717423 (not c!1422579)) b!7717425))

(assert (= (and b!7717417 (not res!3079273)) b!7717419))

(assert (= (and b!7717425 c!1422580) b!7717426))

(assert (= (and b!7717425 (not c!1422580)) b!7717420))

(assert (= (and b!7717426 (not res!3079274)) b!7717422))

(assert (= (or b!7717422 b!7717420) bm!713288))

(assert (= (or b!7717418 b!7717426) bm!713289))

(declare-fun m!8198430 () Bool)

(assert (=> bm!713288 m!8198430))

(declare-fun m!8198432 () Bool)

(assert (=> b!7717417 m!8198432))

(declare-fun m!8198434 () Bool)

(assert (=> b!7717419 m!8198434))

(assert (=> bm!713289 m!8198422))

(assert (=> b!7716959 d!2337232))

(declare-fun d!2337234 () Bool)

(assert (=> d!2337234 (= (matchR!10033 r!14126 (_2!38071 lt!2665778)) (matchRSpec!4627 r!14126 (_2!38071 lt!2665778)))))

(declare-fun lt!2665842 () Unit!168140)

(assert (=> d!2337234 (= lt!2665842 (choose!59224 r!14126 (_2!38071 lt!2665778)))))

(assert (=> d!2337234 (validRegex!10955 r!14126)))

(assert (=> d!2337234 (= (mainMatchTheorem!4602 r!14126 (_2!38071 lt!2665778)) lt!2665842)))

(declare-fun bs!1962847 () Bool)

(assert (= bs!1962847 d!2337234))

(assert (=> bs!1962847 m!8198176))

(assert (=> bs!1962847 m!8198174))

(declare-fun m!8198436 () Bool)

(assert (=> bs!1962847 m!8198436))

(assert (=> bs!1962847 m!8198158))

(assert (=> b!7716959 d!2337234))

(declare-fun d!2337236 () Bool)

(declare-fun e!4577962 () Bool)

(assert (=> d!2337236 e!4577962))

(declare-fun res!3079277 () Bool)

(assert (=> d!2337236 (=> res!3079277 e!4577962)))

(assert (=> d!2337236 (= res!3079277 (isEmpty!41921 s!9605))))

(declare-fun lt!2665845 () Unit!168140)

(declare-fun choose!59226 (Regex!20537 List!73388) Unit!168140)

(assert (=> d!2337236 (= lt!2665845 (choose!59226 (reg!20866 r!14126) s!9605))))

(assert (=> d!2337236 (validRegex!10955 (Star!20537 (reg!20866 r!14126)))))

(assert (=> d!2337236 (= (lemmaStarAppConcat!52 (reg!20866 r!14126) s!9605) lt!2665845)))

(declare-fun b!7717429 () Bool)

(assert (=> b!7717429 (= e!4577962 (matchR!10033 (Concat!29382 (reg!20866 r!14126) (Star!20537 (reg!20866 r!14126))) s!9605))))

(assert (= (and d!2337236 (not res!3079277)) b!7717429))

(assert (=> d!2337236 m!8198156))

(declare-fun m!8198438 () Bool)

(assert (=> d!2337236 m!8198438))

(declare-fun m!8198440 () Bool)

(assert (=> d!2337236 m!8198440))

(declare-fun m!8198442 () Bool)

(assert (=> b!7717429 m!8198442))

(assert (=> b!7716943 d!2337236))

(declare-fun b!7717430 () Bool)

(declare-fun e!4577969 () Bool)

(declare-fun lt!2665846 () Bool)

(declare-fun call!713295 () Bool)

(assert (=> b!7717430 (= e!4577969 (= lt!2665846 call!713295))))

(declare-fun b!7717431 () Bool)

(declare-fun e!4577967 () Bool)

(assert (=> b!7717431 (= e!4577969 e!4577967)))

(declare-fun c!1422583 () Bool)

(assert (=> b!7717431 (= c!1422583 ((_ is EmptyLang!20537) (Concat!29382 (reg!20866 r!14126) r!14126)))))

(declare-fun b!7717432 () Bool)

(declare-fun e!4577964 () Bool)

(assert (=> b!7717432 (= e!4577964 (nullable!9014 (Concat!29382 (reg!20866 r!14126) r!14126)))))

(declare-fun b!7717433 () Bool)

(declare-fun e!4577966 () Bool)

(assert (=> b!7717433 (= e!4577966 (not (= (head!15779 s!9605) (c!1422486 (Concat!29382 (reg!20866 r!14126) r!14126)))))))

(declare-fun b!7717434 () Bool)

(declare-fun res!3079279 () Bool)

(assert (=> b!7717434 (=> res!3079279 e!4577966)))

(assert (=> b!7717434 (= res!3079279 (not (isEmpty!41921 (tail!15319 s!9605))))))

(declare-fun b!7717435 () Bool)

(declare-fun res!3079285 () Bool)

(declare-fun e!4577968 () Bool)

(assert (=> b!7717435 (=> (not res!3079285) (not e!4577968))))

(assert (=> b!7717435 (= res!3079285 (not call!713295))))

(declare-fun b!7717436 () Bool)

(declare-fun res!3079284 () Bool)

(declare-fun e!4577965 () Bool)

(assert (=> b!7717436 (=> res!3079284 e!4577965)))

(assert (=> b!7717436 (= res!3079284 (not ((_ is ElementMatch!20537) (Concat!29382 (reg!20866 r!14126) r!14126))))))

(assert (=> b!7717436 (= e!4577967 e!4577965)))

(declare-fun b!7717437 () Bool)

(assert (=> b!7717437 (= e!4577967 (not lt!2665846))))

(declare-fun bm!713290 () Bool)

(assert (=> bm!713290 (= call!713295 (isEmpty!41921 s!9605))))

(declare-fun b!7717438 () Bool)

(assert (=> b!7717438 (= e!4577968 (= (head!15779 s!9605) (c!1422486 (Concat!29382 (reg!20866 r!14126) r!14126))))))

(declare-fun d!2337238 () Bool)

(assert (=> d!2337238 e!4577969))

(declare-fun c!1422581 () Bool)

(assert (=> d!2337238 (= c!1422581 ((_ is EmptyExpr!20537) (Concat!29382 (reg!20866 r!14126) r!14126)))))

(assert (=> d!2337238 (= lt!2665846 e!4577964)))

(declare-fun c!1422582 () Bool)

(assert (=> d!2337238 (= c!1422582 (isEmpty!41921 s!9605))))

(assert (=> d!2337238 (validRegex!10955 (Concat!29382 (reg!20866 r!14126) r!14126))))

(assert (=> d!2337238 (= (matchR!10033 (Concat!29382 (reg!20866 r!14126) r!14126) s!9605) lt!2665846)))

(declare-fun b!7717439 () Bool)

(declare-fun e!4577963 () Bool)

(assert (=> b!7717439 (= e!4577965 e!4577963)))

(declare-fun res!3079282 () Bool)

(assert (=> b!7717439 (=> (not res!3079282) (not e!4577963))))

(assert (=> b!7717439 (= res!3079282 (not lt!2665846))))

(declare-fun b!7717440 () Bool)

(assert (=> b!7717440 (= e!4577964 (matchR!10033 (derivativeStep!5979 (Concat!29382 (reg!20866 r!14126) r!14126) (head!15779 s!9605)) (tail!15319 s!9605)))))

(declare-fun b!7717441 () Bool)

(declare-fun res!3079283 () Bool)

(assert (=> b!7717441 (=> (not res!3079283) (not e!4577968))))

(assert (=> b!7717441 (= res!3079283 (isEmpty!41921 (tail!15319 s!9605)))))

(declare-fun b!7717442 () Bool)

(assert (=> b!7717442 (= e!4577963 e!4577966)))

(declare-fun res!3079281 () Bool)

(assert (=> b!7717442 (=> res!3079281 e!4577966)))

(assert (=> b!7717442 (= res!3079281 call!713295)))

(declare-fun b!7717443 () Bool)

(declare-fun res!3079278 () Bool)

(assert (=> b!7717443 (=> res!3079278 e!4577965)))

(assert (=> b!7717443 (= res!3079278 e!4577968)))

(declare-fun res!3079280 () Bool)

(assert (=> b!7717443 (=> (not res!3079280) (not e!4577968))))

(assert (=> b!7717443 (= res!3079280 lt!2665846)))

(assert (= (and d!2337238 c!1422582) b!7717432))

(assert (= (and d!2337238 (not c!1422582)) b!7717440))

(assert (= (and d!2337238 c!1422581) b!7717430))

(assert (= (and d!2337238 (not c!1422581)) b!7717431))

(assert (= (and b!7717431 c!1422583) b!7717437))

(assert (= (and b!7717431 (not c!1422583)) b!7717436))

(assert (= (and b!7717436 (not res!3079284)) b!7717443))

(assert (= (and b!7717443 res!3079280) b!7717435))

(assert (= (and b!7717435 res!3079285) b!7717441))

(assert (= (and b!7717441 res!3079283) b!7717438))

(assert (= (and b!7717443 (not res!3079278)) b!7717439))

(assert (= (and b!7717439 res!3079282) b!7717442))

(assert (= (and b!7717442 (not res!3079281)) b!7717434))

(assert (= (and b!7717434 (not res!3079279)) b!7717433))

(assert (= (or b!7717430 b!7717435 b!7717442) bm!713290))

(declare-fun m!8198444 () Bool)

(assert (=> b!7717438 m!8198444))

(declare-fun m!8198446 () Bool)

(assert (=> b!7717434 m!8198446))

(assert (=> b!7717434 m!8198446))

(declare-fun m!8198448 () Bool)

(assert (=> b!7717434 m!8198448))

(assert (=> bm!713290 m!8198156))

(declare-fun m!8198450 () Bool)

(assert (=> b!7717432 m!8198450))

(assert (=> d!2337238 m!8198156))

(declare-fun m!8198452 () Bool)

(assert (=> d!2337238 m!8198452))

(assert (=> b!7717433 m!8198444))

(assert (=> b!7717441 m!8198446))

(assert (=> b!7717441 m!8198446))

(assert (=> b!7717441 m!8198448))

(assert (=> b!7717440 m!8198444))

(assert (=> b!7717440 m!8198444))

(declare-fun m!8198454 () Bool)

(assert (=> b!7717440 m!8198454))

(assert (=> b!7717440 m!8198446))

(assert (=> b!7717440 m!8198454))

(assert (=> b!7717440 m!8198446))

(declare-fun m!8198456 () Bool)

(assert (=> b!7717440 m!8198456))

(assert (=> b!7716943 d!2337238))

(declare-fun d!2337240 () Bool)

(assert (=> d!2337240 (isDefined!14178 (findConcatSeparation!3592 (reg!20866 r!14126) r!14126 Nil!73264 s!9605 s!9605))))

(declare-fun lt!2665849 () Unit!168140)

(declare-fun choose!59227 (Regex!20537 Regex!20537 List!73388) Unit!168140)

(assert (=> d!2337240 (= lt!2665849 (choose!59227 (reg!20866 r!14126) r!14126 s!9605))))

(assert (=> d!2337240 (validRegex!10955 (reg!20866 r!14126))))

(assert (=> d!2337240 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!310 (reg!20866 r!14126) r!14126 s!9605) lt!2665849)))

(declare-fun bs!1962848 () Bool)

(assert (= bs!1962848 d!2337240))

(assert (=> bs!1962848 m!8198160))

(assert (=> bs!1962848 m!8198160))

(assert (=> bs!1962848 m!8198162))

(declare-fun m!8198458 () Bool)

(assert (=> bs!1962848 m!8198458))

(assert (=> bs!1962848 m!8198178))

(assert (=> b!7716943 d!2337240))

(assert (=> b!7716948 d!2337164))

(declare-fun b!7717452 () Bool)

(declare-fun e!4577975 () List!73388)

(assert (=> b!7717452 (= e!4577975 s!9605)))

(declare-fun b!7717455 () Bool)

(declare-fun e!4577974 () Bool)

(declare-fun lt!2665852 () List!73388)

(assert (=> b!7717455 (= e!4577974 (or (not (= s!9605 Nil!73264)) (= lt!2665852 Nil!73264)))))

(declare-fun b!7717453 () Bool)

(assert (=> b!7717453 (= e!4577975 (Cons!73264 (h!79712 Nil!73264) (++!17745 (t!388123 Nil!73264) s!9605)))))

(declare-fun b!7717454 () Bool)

(declare-fun res!3079291 () Bool)

(assert (=> b!7717454 (=> (not res!3079291) (not e!4577974))))

(assert (=> b!7717454 (= res!3079291 (= (size!42621 lt!2665852) (+ (size!42621 Nil!73264) (size!42621 s!9605))))))

(declare-fun d!2337242 () Bool)

(assert (=> d!2337242 e!4577974))

(declare-fun res!3079290 () Bool)

(assert (=> d!2337242 (=> (not res!3079290) (not e!4577974))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15518 (List!73388) (InoxSet C!41400))

(assert (=> d!2337242 (= res!3079290 (= (content!15518 lt!2665852) ((_ map or) (content!15518 Nil!73264) (content!15518 s!9605))))))

(assert (=> d!2337242 (= lt!2665852 e!4577975)))

(declare-fun c!1422586 () Bool)

(assert (=> d!2337242 (= c!1422586 ((_ is Nil!73264) Nil!73264))))

(assert (=> d!2337242 (= (++!17745 Nil!73264 s!9605) lt!2665852)))

(assert (= (and d!2337242 c!1422586) b!7717452))

(assert (= (and d!2337242 (not c!1422586)) b!7717453))

(assert (= (and d!2337242 res!3079290) b!7717454))

(assert (= (and b!7717454 res!3079291) b!7717455))

(declare-fun m!8198460 () Bool)

(assert (=> b!7717453 m!8198460))

(declare-fun m!8198462 () Bool)

(assert (=> b!7717454 m!8198462))

(assert (=> b!7717454 m!8198376))

(declare-fun m!8198464 () Bool)

(assert (=> b!7717454 m!8198464))

(declare-fun m!8198466 () Bool)

(assert (=> d!2337242 m!8198466))

(declare-fun m!8198468 () Bool)

(assert (=> d!2337242 m!8198468))

(declare-fun m!8198470 () Bool)

(assert (=> d!2337242 m!8198470))

(assert (=> b!7716957 d!2337242))

(declare-fun b!7717456 () Bool)

(declare-fun e!4577977 () List!73388)

(assert (=> b!7717456 (= e!4577977 (_2!38071 lt!2665778))))

(declare-fun b!7717459 () Bool)

(declare-fun e!4577976 () Bool)

(declare-fun lt!2665853 () List!73388)

(assert (=> b!7717459 (= e!4577976 (or (not (= (_2!38071 lt!2665778) Nil!73264)) (= lt!2665853 (_1!38071 lt!2665778))))))

(declare-fun b!7717457 () Bool)

(assert (=> b!7717457 (= e!4577977 (Cons!73264 (h!79712 (_1!38071 lt!2665778)) (++!17745 (t!388123 (_1!38071 lt!2665778)) (_2!38071 lt!2665778))))))

(declare-fun b!7717458 () Bool)

(declare-fun res!3079293 () Bool)

(assert (=> b!7717458 (=> (not res!3079293) (not e!4577976))))

(assert (=> b!7717458 (= res!3079293 (= (size!42621 lt!2665853) (+ (size!42621 (_1!38071 lt!2665778)) (size!42621 (_2!38071 lt!2665778)))))))

(declare-fun d!2337244 () Bool)

(assert (=> d!2337244 e!4577976))

(declare-fun res!3079292 () Bool)

(assert (=> d!2337244 (=> (not res!3079292) (not e!4577976))))

(assert (=> d!2337244 (= res!3079292 (= (content!15518 lt!2665853) ((_ map or) (content!15518 (_1!38071 lt!2665778)) (content!15518 (_2!38071 lt!2665778)))))))

(assert (=> d!2337244 (= lt!2665853 e!4577977)))

(declare-fun c!1422587 () Bool)

(assert (=> d!2337244 (= c!1422587 ((_ is Nil!73264) (_1!38071 lt!2665778)))))

(assert (=> d!2337244 (= (++!17745 (_1!38071 lt!2665778) (_2!38071 lt!2665778)) lt!2665853)))

(assert (= (and d!2337244 c!1422587) b!7717456))

(assert (= (and d!2337244 (not c!1422587)) b!7717457))

(assert (= (and d!2337244 res!3079292) b!7717458))

(assert (= (and b!7717458 res!3079293) b!7717459))

(declare-fun m!8198472 () Bool)

(assert (=> b!7717457 m!8198472))

(declare-fun m!8198474 () Bool)

(assert (=> b!7717458 m!8198474))

(assert (=> b!7717458 m!8198374))

(declare-fun m!8198476 () Bool)

(assert (=> b!7717458 m!8198476))

(declare-fun m!8198478 () Bool)

(assert (=> d!2337244 m!8198478))

(declare-fun m!8198480 () Bool)

(assert (=> d!2337244 m!8198480))

(declare-fun m!8198482 () Bool)

(assert (=> d!2337244 m!8198482))

(assert (=> b!7716946 d!2337244))

(assert (=> b!7716952 d!2337174))

(declare-fun b!7717460 () Bool)

(declare-fun e!4577984 () Bool)

(declare-fun lt!2665854 () Bool)

(declare-fun call!713296 () Bool)

(assert (=> b!7717460 (= e!4577984 (= lt!2665854 call!713296))))

(declare-fun b!7717461 () Bool)

(declare-fun e!4577982 () Bool)

(assert (=> b!7717461 (= e!4577984 e!4577982)))

(declare-fun c!1422590 () Bool)

(assert (=> b!7717461 (= c!1422590 ((_ is EmptyLang!20537) r!14126))))

(declare-fun b!7717462 () Bool)

(declare-fun e!4577979 () Bool)

(assert (=> b!7717462 (= e!4577979 (nullable!9014 r!14126))))

(declare-fun b!7717463 () Bool)

(declare-fun e!4577981 () Bool)

(assert (=> b!7717463 (= e!4577981 (not (= (head!15779 s!9605) (c!1422486 r!14126))))))

(declare-fun b!7717464 () Bool)

(declare-fun res!3079295 () Bool)

(assert (=> b!7717464 (=> res!3079295 e!4577981)))

(assert (=> b!7717464 (= res!3079295 (not (isEmpty!41921 (tail!15319 s!9605))))))

(declare-fun b!7717465 () Bool)

(declare-fun res!3079301 () Bool)

(declare-fun e!4577983 () Bool)

(assert (=> b!7717465 (=> (not res!3079301) (not e!4577983))))

(assert (=> b!7717465 (= res!3079301 (not call!713296))))

(declare-fun b!7717466 () Bool)

(declare-fun res!3079300 () Bool)

(declare-fun e!4577980 () Bool)

(assert (=> b!7717466 (=> res!3079300 e!4577980)))

(assert (=> b!7717466 (= res!3079300 (not ((_ is ElementMatch!20537) r!14126)))))

(assert (=> b!7717466 (= e!4577982 e!4577980)))

(declare-fun b!7717467 () Bool)

(assert (=> b!7717467 (= e!4577982 (not lt!2665854))))

(declare-fun bm!713291 () Bool)

(assert (=> bm!713291 (= call!713296 (isEmpty!41921 s!9605))))

(declare-fun b!7717468 () Bool)

(assert (=> b!7717468 (= e!4577983 (= (head!15779 s!9605) (c!1422486 r!14126)))))

(declare-fun d!2337246 () Bool)

(assert (=> d!2337246 e!4577984))

(declare-fun c!1422588 () Bool)

(assert (=> d!2337246 (= c!1422588 ((_ is EmptyExpr!20537) r!14126))))

(assert (=> d!2337246 (= lt!2665854 e!4577979)))

(declare-fun c!1422589 () Bool)

(assert (=> d!2337246 (= c!1422589 (isEmpty!41921 s!9605))))

(assert (=> d!2337246 (validRegex!10955 r!14126)))

(assert (=> d!2337246 (= (matchR!10033 r!14126 s!9605) lt!2665854)))

(declare-fun b!7717469 () Bool)

(declare-fun e!4577978 () Bool)

(assert (=> b!7717469 (= e!4577980 e!4577978)))

(declare-fun res!3079298 () Bool)

(assert (=> b!7717469 (=> (not res!3079298) (not e!4577978))))

(assert (=> b!7717469 (= res!3079298 (not lt!2665854))))

(declare-fun b!7717470 () Bool)

(assert (=> b!7717470 (= e!4577979 (matchR!10033 (derivativeStep!5979 r!14126 (head!15779 s!9605)) (tail!15319 s!9605)))))

(declare-fun b!7717471 () Bool)

(declare-fun res!3079299 () Bool)

(assert (=> b!7717471 (=> (not res!3079299) (not e!4577983))))

(assert (=> b!7717471 (= res!3079299 (isEmpty!41921 (tail!15319 s!9605)))))

(declare-fun b!7717472 () Bool)

(assert (=> b!7717472 (= e!4577978 e!4577981)))

(declare-fun res!3079297 () Bool)

(assert (=> b!7717472 (=> res!3079297 e!4577981)))

(assert (=> b!7717472 (= res!3079297 call!713296)))

(declare-fun b!7717473 () Bool)

(declare-fun res!3079294 () Bool)

(assert (=> b!7717473 (=> res!3079294 e!4577980)))

(assert (=> b!7717473 (= res!3079294 e!4577983)))

(declare-fun res!3079296 () Bool)

(assert (=> b!7717473 (=> (not res!3079296) (not e!4577983))))

(assert (=> b!7717473 (= res!3079296 lt!2665854)))

(assert (= (and d!2337246 c!1422589) b!7717462))

(assert (= (and d!2337246 (not c!1422589)) b!7717470))

(assert (= (and d!2337246 c!1422588) b!7717460))

(assert (= (and d!2337246 (not c!1422588)) b!7717461))

(assert (= (and b!7717461 c!1422590) b!7717467))

(assert (= (and b!7717461 (not c!1422590)) b!7717466))

(assert (= (and b!7717466 (not res!3079300)) b!7717473))

(assert (= (and b!7717473 res!3079296) b!7717465))

(assert (= (and b!7717465 res!3079301) b!7717471))

(assert (= (and b!7717471 res!3079299) b!7717468))

(assert (= (and b!7717473 (not res!3079294)) b!7717469))

(assert (= (and b!7717469 res!3079298) b!7717472))

(assert (= (and b!7717472 (not res!3079297)) b!7717464))

(assert (= (and b!7717464 (not res!3079295)) b!7717463))

(assert (= (or b!7717460 b!7717465 b!7717472) bm!713291))

(assert (=> b!7717468 m!8198444))

(assert (=> b!7717464 m!8198446))

(assert (=> b!7717464 m!8198446))

(assert (=> b!7717464 m!8198448))

(assert (=> bm!713291 m!8198156))

(assert (=> b!7717462 m!8198424))

(assert (=> d!2337246 m!8198156))

(assert (=> d!2337246 m!8198158))

(assert (=> b!7717463 m!8198444))

(assert (=> b!7717471 m!8198446))

(assert (=> b!7717471 m!8198446))

(assert (=> b!7717471 m!8198448))

(assert (=> b!7717470 m!8198444))

(assert (=> b!7717470 m!8198444))

(declare-fun m!8198484 () Bool)

(assert (=> b!7717470 m!8198484))

(assert (=> b!7717470 m!8198446))

(assert (=> b!7717470 m!8198484))

(assert (=> b!7717470 m!8198446))

(declare-fun m!8198486 () Bool)

(assert (=> b!7717470 m!8198486))

(assert (=> b!7716952 d!2337246))

(declare-fun d!2337248 () Bool)

(assert (=> d!2337248 (= (Exists!4662 lambda!470935) (choose!59221 lambda!470935))))

(declare-fun bs!1962849 () Bool)

(assert (= bs!1962849 d!2337248))

(declare-fun m!8198488 () Bool)

(assert (=> bs!1962849 m!8198488))

(assert (=> b!7716951 d!2337248))

(declare-fun e!4577987 () Bool)

(assert (=> b!7716954 (= tp!2264181 e!4577987)))

(declare-fun b!7717486 () Bool)

(declare-fun tp!2264234 () Bool)

(assert (=> b!7717486 (= e!4577987 tp!2264234)))

(declare-fun b!7717487 () Bool)

(declare-fun tp!2264235 () Bool)

(declare-fun tp!2264238 () Bool)

(assert (=> b!7717487 (= e!4577987 (and tp!2264235 tp!2264238))))

(declare-fun b!7717484 () Bool)

(assert (=> b!7717484 (= e!4577987 tp_is_empty!51429)))

(declare-fun b!7717485 () Bool)

(declare-fun tp!2264237 () Bool)

(declare-fun tp!2264236 () Bool)

(assert (=> b!7717485 (= e!4577987 (and tp!2264237 tp!2264236))))

(assert (= (and b!7716954 ((_ is ElementMatch!20537) (regOne!41586 r!14126))) b!7717484))

(assert (= (and b!7716954 ((_ is Concat!29382) (regOne!41586 r!14126))) b!7717485))

(assert (= (and b!7716954 ((_ is Star!20537) (regOne!41586 r!14126))) b!7717486))

(assert (= (and b!7716954 ((_ is Union!20537) (regOne!41586 r!14126))) b!7717487))

(declare-fun e!4577988 () Bool)

(assert (=> b!7716954 (= tp!2264182 e!4577988)))

(declare-fun b!7717490 () Bool)

(declare-fun tp!2264239 () Bool)

(assert (=> b!7717490 (= e!4577988 tp!2264239)))

(declare-fun b!7717491 () Bool)

(declare-fun tp!2264240 () Bool)

(declare-fun tp!2264243 () Bool)

(assert (=> b!7717491 (= e!4577988 (and tp!2264240 tp!2264243))))

(declare-fun b!7717488 () Bool)

(assert (=> b!7717488 (= e!4577988 tp_is_empty!51429)))

(declare-fun b!7717489 () Bool)

(declare-fun tp!2264242 () Bool)

(declare-fun tp!2264241 () Bool)

(assert (=> b!7717489 (= e!4577988 (and tp!2264242 tp!2264241))))

(assert (= (and b!7716954 ((_ is ElementMatch!20537) (regTwo!41586 r!14126))) b!7717488))

(assert (= (and b!7716954 ((_ is Concat!29382) (regTwo!41586 r!14126))) b!7717489))

(assert (= (and b!7716954 ((_ is Star!20537) (regTwo!41586 r!14126))) b!7717490))

(assert (= (and b!7716954 ((_ is Union!20537) (regTwo!41586 r!14126))) b!7717491))

(declare-fun b!7717496 () Bool)

(declare-fun e!4577991 () Bool)

(declare-fun tp!2264246 () Bool)

(assert (=> b!7717496 (= e!4577991 (and tp_is_empty!51429 tp!2264246))))

(assert (=> b!7716953 (= tp!2264183 e!4577991)))

(assert (= (and b!7716953 ((_ is Cons!73264) (t!388123 s!9605))) b!7717496))

(declare-fun e!4577992 () Bool)

(assert (=> b!7716945 (= tp!2264185 e!4577992)))

(declare-fun b!7717499 () Bool)

(declare-fun tp!2264247 () Bool)

(assert (=> b!7717499 (= e!4577992 tp!2264247)))

(declare-fun b!7717500 () Bool)

(declare-fun tp!2264248 () Bool)

(declare-fun tp!2264251 () Bool)

(assert (=> b!7717500 (= e!4577992 (and tp!2264248 tp!2264251))))

(declare-fun b!7717497 () Bool)

(assert (=> b!7717497 (= e!4577992 tp_is_empty!51429)))

(declare-fun b!7717498 () Bool)

(declare-fun tp!2264250 () Bool)

(declare-fun tp!2264249 () Bool)

(assert (=> b!7717498 (= e!4577992 (and tp!2264250 tp!2264249))))

(assert (= (and b!7716945 ((_ is ElementMatch!20537) (regOne!41587 r!14126))) b!7717497))

(assert (= (and b!7716945 ((_ is Concat!29382) (regOne!41587 r!14126))) b!7717498))

(assert (= (and b!7716945 ((_ is Star!20537) (regOne!41587 r!14126))) b!7717499))

(assert (= (and b!7716945 ((_ is Union!20537) (regOne!41587 r!14126))) b!7717500))

(declare-fun e!4577993 () Bool)

(assert (=> b!7716945 (= tp!2264184 e!4577993)))

(declare-fun b!7717503 () Bool)

(declare-fun tp!2264252 () Bool)

(assert (=> b!7717503 (= e!4577993 tp!2264252)))

(declare-fun b!7717504 () Bool)

(declare-fun tp!2264253 () Bool)

(declare-fun tp!2264256 () Bool)

(assert (=> b!7717504 (= e!4577993 (and tp!2264253 tp!2264256))))

(declare-fun b!7717501 () Bool)

(assert (=> b!7717501 (= e!4577993 tp_is_empty!51429)))

(declare-fun b!7717502 () Bool)

(declare-fun tp!2264255 () Bool)

(declare-fun tp!2264254 () Bool)

(assert (=> b!7717502 (= e!4577993 (and tp!2264255 tp!2264254))))

(assert (= (and b!7716945 ((_ is ElementMatch!20537) (regTwo!41587 r!14126))) b!7717501))

(assert (= (and b!7716945 ((_ is Concat!29382) (regTwo!41587 r!14126))) b!7717502))

(assert (= (and b!7716945 ((_ is Star!20537) (regTwo!41587 r!14126))) b!7717503))

(assert (= (and b!7716945 ((_ is Union!20537) (regTwo!41587 r!14126))) b!7717504))

(declare-fun e!4577994 () Bool)

(assert (=> b!7716956 (= tp!2264180 e!4577994)))

(declare-fun b!7717507 () Bool)

(declare-fun tp!2264257 () Bool)

(assert (=> b!7717507 (= e!4577994 tp!2264257)))

(declare-fun b!7717508 () Bool)

(declare-fun tp!2264258 () Bool)

(declare-fun tp!2264261 () Bool)

(assert (=> b!7717508 (= e!4577994 (and tp!2264258 tp!2264261))))

(declare-fun b!7717505 () Bool)

(assert (=> b!7717505 (= e!4577994 tp_is_empty!51429)))

(declare-fun b!7717506 () Bool)

(declare-fun tp!2264260 () Bool)

(declare-fun tp!2264259 () Bool)

(assert (=> b!7717506 (= e!4577994 (and tp!2264260 tp!2264259))))

(assert (= (and b!7716956 ((_ is ElementMatch!20537) (reg!20866 r!14126))) b!7717505))

(assert (= (and b!7716956 ((_ is Concat!29382) (reg!20866 r!14126))) b!7717506))

(assert (= (and b!7716956 ((_ is Star!20537) (reg!20866 r!14126))) b!7717507))

(assert (= (and b!7716956 ((_ is Union!20537) (reg!20866 r!14126))) b!7717508))

(declare-fun b_lambda!289249 () Bool)

(assert (= b_lambda!289247 (or b!7716951 b_lambda!289249)))

(declare-fun bs!1962850 () Bool)

(declare-fun d!2337250 () Bool)

(assert (= bs!1962850 (and d!2337250 b!7716951)))

(declare-fun res!3079302 () Bool)

(declare-fun e!4577995 () Bool)

(assert (=> bs!1962850 (=> (not res!3079302) (not e!4577995))))

(assert (=> bs!1962850 (= res!3079302 (= (++!17745 (_1!38071 lt!2665840) (_2!38071 lt!2665840)) s!9605))))

(assert (=> bs!1962850 (= (dynLambda!29955 lambda!470935 lt!2665840) e!4577995)))

(declare-fun b!7717509 () Bool)

(declare-fun res!3079303 () Bool)

(assert (=> b!7717509 (=> (not res!3079303) (not e!4577995))))

(assert (=> b!7717509 (= res!3079303 (not (isEmpty!41921 (_1!38071 lt!2665840))))))

(declare-fun b!7717510 () Bool)

(declare-fun res!3079304 () Bool)

(assert (=> b!7717510 (=> (not res!3079304) (not e!4577995))))

(assert (=> b!7717510 (= res!3079304 (matchRSpec!4627 (reg!20866 r!14126) (_1!38071 lt!2665840)))))

(declare-fun b!7717511 () Bool)

(assert (=> b!7717511 (= e!4577995 (matchRSpec!4627 r!14126 (_2!38071 lt!2665840)))))

(assert (= (and bs!1962850 res!3079302) b!7717509))

(assert (= (and b!7717509 res!3079303) b!7717510))

(assert (= (and b!7717510 res!3079304) b!7717511))

(declare-fun m!8198490 () Bool)

(assert (=> bs!1962850 m!8198490))

(declare-fun m!8198492 () Bool)

(assert (=> b!7717509 m!8198492))

(declare-fun m!8198494 () Bool)

(assert (=> b!7717510 m!8198494))

(declare-fun m!8198496 () Bool)

(assert (=> b!7717511 m!8198496))

(assert (=> d!2337226 d!2337250))

(check-sat (not b!7717509) (not bm!713291) (not b!7717419) (not b!7717140) (not b!7717504) (not d!2337222) (not b!7717141) (not d!2337240) (not b!7717487) (not b!7717413) (not d!2337242) (not b!7717502) tp_is_empty!51429 (not b!7717464) (not b!7717500) (not bm!713285) (not bm!713286) (not b!7717269) (not b!7717138) (not b!7717305) (not b!7717470) (not b!7717434) (not b!7717440) (not b!7717429) (not b!7717510) (not b!7717417) (not b!7717347) (not b!7717485) (not bm!713280) (not b!7717490) (not d!2337224) (not b!7717462) (not b!7717507) (not b!7717453) (not b_lambda!289249) (not bm!713288) (not d!2337230) (not b!7717496) (not b!7717433) (not b!7717355) (not d!2337176) (not bm!713258) (not d!2337244) (not b!7717441) (not b!7717137) (not d!2337226) (not b!7717267) (not b!7717491) (not b!7717457) (not bs!1962850) (not b!7717489) (not b!7717438) (not b!7717432) (not d!2337192) (not bm!713275) (not b!7717059) (not b!7717463) (not b!7717135) (not b!7717503) (not b!7717498) (not b!7717394) (not b!7717508) (not b!7717405) (not bm!713259) (not bm!713290) (not b!7717499) (not d!2337238) (not bm!713276) (not b!7717458) (not b!7717506) (not b!7717404) (not b!7717133) (not bm!713287) (not b!7717406) (not b!7717511) (not b!7717412) (not b!7717392) (not b!7717468) (not b!7717410) (not d!2337180) (not b!7717348) (not d!2337236) (not d!2337234) (not d!2337174) (not b!7717486) (not b!7717471) (not b!7717356) (not b!7717349) (not b!7717353) (not bm!713289) (not b!7717454) (not d!2337248) (not d!2337246) (not b!7717268))
(check-sat)
