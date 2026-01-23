; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741146 () Bool)

(assert start!741146)

(declare-fun b!7796080 () Bool)

(declare-fun e!4615993 () Bool)

(declare-fun e!4615992 () Bool)

(assert (=> b!7796080 (= e!4615993 (not e!4615992))))

(declare-fun res!3105912 () Bool)

(assert (=> b!7796080 (=> res!3105912 e!4615992)))

(declare-fun lt!2674363 () Bool)

(assert (=> b!7796080 (= res!3105912 (not lt!2674363))))

(declare-fun e!4615990 () Bool)

(assert (=> b!7796080 e!4615990))

(declare-fun res!3105910 () Bool)

(assert (=> b!7796080 (=> res!3105910 e!4615990)))

(assert (=> b!7796080 (= res!3105910 lt!2674363)))

(declare-datatypes ((C!42068 0))(
  ( (C!42069 (val!31474 Int)) )
))
(declare-datatypes ((Regex!20871 0))(
  ( (ElementMatch!20871 (c!1435798 C!42068)) (Concat!29716 (regOne!42254 Regex!20871) (regTwo!42254 Regex!20871)) (EmptyExpr!20871) (Star!20871 (reg!21200 Regex!20871)) (EmptyLang!20871) (Union!20871 (regOne!42255 Regex!20871) (regTwo!42255 Regex!20871)) )
))
(declare-fun lt!2674360 () Regex!20871)

(declare-datatypes ((List!73710 0))(
  ( (Nil!73586) (Cons!73586 (h!80034 C!42068) (t!388445 List!73710)) )
))
(declare-fun s!14292 () List!73710)

(declare-fun matchR!10331 (Regex!20871 List!73710) Bool)

(assert (=> b!7796080 (= lt!2674363 (matchR!10331 lt!2674360 (t!388445 s!14292)))))

(declare-datatypes ((Unit!168588 0))(
  ( (Unit!168589) )
))
(declare-fun lt!2674355 () Unit!168588)

(declare-fun lt!2674362 () Regex!20871)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!414 (Regex!20871 Regex!20871 List!73710) Unit!168588)

(assert (=> b!7796080 (= lt!2674355 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!414 lt!2674360 lt!2674362 (t!388445 s!14292)))))

(declare-fun b!7796081 () Bool)

(declare-fun e!4615996 () Bool)

(declare-fun tp!2295135 () Bool)

(assert (=> b!7796081 (= e!4615996 tp!2295135)))

(declare-fun b!7796082 () Bool)

(declare-fun e!4615998 () Bool)

(assert (=> b!7796082 (= e!4615998 e!4615993)))

(declare-fun res!3105919 () Bool)

(assert (=> b!7796082 (=> (not res!3105919) (not e!4615993))))

(declare-fun lt!2674357 () Regex!20871)

(assert (=> b!7796082 (= res!3105919 (= lt!2674357 (Union!20871 lt!2674360 lt!2674362)))))

(declare-fun r2!6217 () Regex!20871)

(declare-fun derivativeStep!6208 (Regex!20871 C!42068) Regex!20871)

(assert (=> b!7796082 (= lt!2674362 (derivativeStep!6208 r2!6217 (h!80034 s!14292)))))

(declare-fun lt!2674358 () Regex!20871)

(assert (=> b!7796082 (= lt!2674360 (Concat!29716 lt!2674358 r2!6217))))

(declare-fun r1!6279 () Regex!20871)

(assert (=> b!7796082 (= lt!2674358 (derivativeStep!6208 r1!6279 (h!80034 s!14292)))))

(declare-fun b!7796083 () Bool)

(declare-fun res!3105913 () Bool)

(declare-fun e!4615991 () Bool)

(assert (=> b!7796083 (=> (not res!3105913) (not e!4615991))))

(declare-fun validRegex!11285 (Regex!20871) Bool)

(assert (=> b!7796083 (= res!3105913 (validRegex!11285 r2!6217))))

(declare-fun b!7796084 () Bool)

(declare-fun tp!2295139 () Bool)

(declare-fun tp!2295132 () Bool)

(assert (=> b!7796084 (= e!4615996 (and tp!2295139 tp!2295132))))

(declare-fun b!7796085 () Bool)

(declare-fun e!4615999 () Bool)

(assert (=> b!7796085 (= e!4615991 e!4615999)))

(declare-fun res!3105915 () Bool)

(assert (=> b!7796085 (=> (not res!3105915) (not e!4615999))))

(declare-fun lt!2674361 () Regex!20871)

(assert (=> b!7796085 (= res!3105915 (matchR!10331 lt!2674361 s!14292))))

(assert (=> b!7796085 (= lt!2674361 (Concat!29716 r1!6279 r2!6217))))

(declare-fun b!7796086 () Bool)

(declare-fun res!3105920 () Bool)

(declare-fun e!4615994 () Bool)

(assert (=> b!7796086 (=> res!3105920 e!4615994)))

(declare-fun lt!2674364 () List!73710)

(assert (=> b!7796086 (= res!3105920 (not (matchR!10331 r1!6279 lt!2674364)))))

(declare-fun b!7796087 () Bool)

(declare-fun e!4615997 () Bool)

(declare-fun tp!2295137 () Bool)

(declare-fun tp!2295141 () Bool)

(assert (=> b!7796087 (= e!4615997 (and tp!2295137 tp!2295141))))

(declare-fun b!7796088 () Bool)

(declare-fun tp!2295133 () Bool)

(declare-fun tp!2295134 () Bool)

(assert (=> b!7796088 (= e!4615997 (and tp!2295133 tp!2295134))))

(declare-fun b!7796089 () Bool)

(declare-fun tp!2295138 () Bool)

(declare-fun tp!2295140 () Bool)

(assert (=> b!7796089 (= e!4615996 (and tp!2295138 tp!2295140))))

(declare-fun b!7796090 () Bool)

(declare-fun tp_is_empty!52097 () Bool)

(assert (=> b!7796090 (= e!4615997 tp_is_empty!52097)))

(declare-fun b!7796092 () Bool)

(declare-fun res!3105917 () Bool)

(assert (=> b!7796092 (=> res!3105917 e!4615994)))

(declare-fun ++!17939 (List!73710 List!73710) List!73710)

(assert (=> b!7796092 (= res!3105917 (not (= (++!17939 Nil!73586 s!14292) s!14292)))))

(declare-fun b!7796093 () Bool)

(declare-datatypes ((tuple2!69944 0))(
  ( (tuple2!69945 (_1!38275 List!73710) (_2!38275 List!73710)) )
))
(declare-fun lt!2674359 () tuple2!69944)

(assert (=> b!7796093 (= e!4615994 (matchR!10331 r2!6217 (_2!38275 lt!2674359)))))

(declare-fun b!7796094 () Bool)

(assert (=> b!7796094 (= e!4615999 e!4615998)))

(declare-fun res!3105921 () Bool)

(assert (=> b!7796094 (=> (not res!3105921) (not e!4615998))))

(assert (=> b!7796094 (= res!3105921 (matchR!10331 lt!2674357 (t!388445 s!14292)))))

(assert (=> b!7796094 (= lt!2674357 (derivativeStep!6208 lt!2674361 (h!80034 s!14292)))))

(declare-fun b!7796095 () Bool)

(assert (=> b!7796095 (= e!4615996 tp_is_empty!52097)))

(declare-fun b!7796096 () Bool)

(declare-fun res!3105914 () Bool)

(assert (=> b!7796096 (=> (not res!3105914) (not e!4615999))))

(get-info :version)

(assert (=> b!7796096 (= res!3105914 ((_ is Cons!73586) s!14292))))

(declare-fun b!7796097 () Bool)

(declare-fun e!4615995 () Bool)

(declare-fun tp!2295131 () Bool)

(assert (=> b!7796097 (= e!4615995 (and tp_is_empty!52097 tp!2295131))))

(declare-fun b!7796098 () Bool)

(declare-fun res!3105922 () Bool)

(assert (=> b!7796098 (=> (not res!3105922) (not e!4615998))))

(declare-fun nullable!9255 (Regex!20871) Bool)

(assert (=> b!7796098 (= res!3105922 (nullable!9255 r1!6279))))

(declare-fun b!7796099 () Bool)

(assert (=> b!7796099 (= e!4615990 (matchR!10331 lt!2674362 (t!388445 s!14292)))))

(declare-fun b!7796091 () Bool)

(declare-fun res!3105911 () Bool)

(assert (=> b!7796091 (=> res!3105911 e!4615994)))

(declare-fun isPrefix!6261 (List!73710 List!73710) Bool)

(assert (=> b!7796091 (= res!3105911 (not (isPrefix!6261 Nil!73586 lt!2674364)))))

(declare-fun res!3105918 () Bool)

(assert (=> start!741146 (=> (not res!3105918) (not e!4615991))))

(assert (=> start!741146 (= res!3105918 (validRegex!11285 r1!6279))))

(assert (=> start!741146 e!4615991))

(assert (=> start!741146 e!4615997))

(assert (=> start!741146 e!4615996))

(assert (=> start!741146 e!4615995))

(declare-fun b!7796100 () Bool)

(declare-fun tp!2295136 () Bool)

(assert (=> b!7796100 (= e!4615997 tp!2295136)))

(declare-fun b!7796101 () Bool)

(assert (=> b!7796101 (= e!4615992 e!4615994)))

(declare-fun res!3105916 () Bool)

(assert (=> b!7796101 (=> res!3105916 e!4615994)))

(assert (=> b!7796101 (= res!3105916 (not (= (++!17939 lt!2674364 (_2!38275 lt!2674359)) s!14292)))))

(assert (=> b!7796101 (= lt!2674364 (Cons!73586 (h!80034 s!14292) (_1!38275 lt!2674359)))))

(declare-datatypes ((Option!17766 0))(
  ( (None!17765) (Some!17765 (v!54900 tuple2!69944)) )
))
(declare-fun lt!2674356 () Option!17766)

(declare-fun get!26326 (Option!17766) tuple2!69944)

(assert (=> b!7796101 (= lt!2674359 (get!26326 lt!2674356))))

(declare-fun isDefined!14376 (Option!17766) Bool)

(assert (=> b!7796101 (isDefined!14376 lt!2674356)))

(declare-fun findConcatSeparation!3796 (Regex!20871 Regex!20871 List!73710 List!73710 List!73710) Option!17766)

(assert (=> b!7796101 (= lt!2674356 (findConcatSeparation!3796 lt!2674358 r2!6217 Nil!73586 (t!388445 s!14292) (t!388445 s!14292)))))

(declare-fun lt!2674354 () Unit!168588)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!380 (Regex!20871 Regex!20871 List!73710) Unit!168588)

(assert (=> b!7796101 (= lt!2674354 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!380 lt!2674358 r2!6217 (t!388445 s!14292)))))

(assert (= (and start!741146 res!3105918) b!7796083))

(assert (= (and b!7796083 res!3105913) b!7796085))

(assert (= (and b!7796085 res!3105915) b!7796096))

(assert (= (and b!7796096 res!3105914) b!7796094))

(assert (= (and b!7796094 res!3105921) b!7796098))

(assert (= (and b!7796098 res!3105922) b!7796082))

(assert (= (and b!7796082 res!3105919) b!7796080))

(assert (= (and b!7796080 (not res!3105910)) b!7796099))

(assert (= (and b!7796080 (not res!3105912)) b!7796101))

(assert (= (and b!7796101 (not res!3105916)) b!7796091))

(assert (= (and b!7796091 (not res!3105911)) b!7796092))

(assert (= (and b!7796092 (not res!3105917)) b!7796086))

(assert (= (and b!7796086 (not res!3105920)) b!7796093))

(assert (= (and start!741146 ((_ is ElementMatch!20871) r1!6279)) b!7796090))

(assert (= (and start!741146 ((_ is Concat!29716) r1!6279)) b!7796088))

(assert (= (and start!741146 ((_ is Star!20871) r1!6279)) b!7796100))

(assert (= (and start!741146 ((_ is Union!20871) r1!6279)) b!7796087))

(assert (= (and start!741146 ((_ is ElementMatch!20871) r2!6217)) b!7796095))

(assert (= (and start!741146 ((_ is Concat!29716) r2!6217)) b!7796084))

(assert (= (and start!741146 ((_ is Star!20871) r2!6217)) b!7796081))

(assert (= (and start!741146 ((_ is Union!20871) r2!6217)) b!7796089))

(assert (= (and start!741146 ((_ is Cons!73586) s!14292)) b!7796097))

(declare-fun m!8234686 () Bool)

(assert (=> b!7796086 m!8234686))

(declare-fun m!8234688 () Bool)

(assert (=> b!7796091 m!8234688))

(declare-fun m!8234690 () Bool)

(assert (=> b!7796098 m!8234690))

(declare-fun m!8234692 () Bool)

(assert (=> b!7796080 m!8234692))

(declare-fun m!8234694 () Bool)

(assert (=> b!7796080 m!8234694))

(declare-fun m!8234696 () Bool)

(assert (=> b!7796092 m!8234696))

(declare-fun m!8234698 () Bool)

(assert (=> b!7796083 m!8234698))

(declare-fun m!8234700 () Bool)

(assert (=> b!7796085 m!8234700))

(declare-fun m!8234702 () Bool)

(assert (=> b!7796099 m!8234702))

(declare-fun m!8234704 () Bool)

(assert (=> b!7796094 m!8234704))

(declare-fun m!8234706 () Bool)

(assert (=> b!7796094 m!8234706))

(declare-fun m!8234708 () Bool)

(assert (=> b!7796093 m!8234708))

(declare-fun m!8234710 () Bool)

(assert (=> start!741146 m!8234710))

(declare-fun m!8234712 () Bool)

(assert (=> b!7796101 m!8234712))

(declare-fun m!8234714 () Bool)

(assert (=> b!7796101 m!8234714))

(declare-fun m!8234716 () Bool)

(assert (=> b!7796101 m!8234716))

(declare-fun m!8234718 () Bool)

(assert (=> b!7796101 m!8234718))

(declare-fun m!8234720 () Bool)

(assert (=> b!7796101 m!8234720))

(declare-fun m!8234722 () Bool)

(assert (=> b!7796082 m!8234722))

(declare-fun m!8234724 () Bool)

(assert (=> b!7796082 m!8234724))

(check-sat (not b!7796083) (not b!7796086) (not b!7796098) (not b!7796093) (not b!7796085) (not b!7796091) (not b!7796094) (not b!7796082) (not b!7796100) (not b!7796080) (not b!7796097) (not b!7796089) tp_is_empty!52097 (not b!7796101) (not b!7796081) (not b!7796084) (not start!741146) (not b!7796088) (not b!7796099) (not b!7796092) (not b!7796087))
(check-sat)
(get-model)

(declare-fun b!7796164 () Bool)

(declare-fun c!1435821 () Bool)

(assert (=> b!7796164 (= c!1435821 ((_ is Union!20871) r2!6217))))

(declare-fun e!4616035 () Regex!20871)

(declare-fun e!4616032 () Regex!20871)

(assert (=> b!7796164 (= e!4616035 e!4616032)))

(declare-fun b!7796165 () Bool)

(declare-fun e!4616033 () Regex!20871)

(assert (=> b!7796165 (= e!4616033 e!4616035)))

(declare-fun c!1435819 () Bool)

(assert (=> b!7796165 (= c!1435819 ((_ is ElementMatch!20871) r2!6217))))

(declare-fun b!7796166 () Bool)

(declare-fun call!722766 () Regex!20871)

(declare-fun call!722764 () Regex!20871)

(assert (=> b!7796166 (= e!4616032 (Union!20871 call!722766 call!722764))))

(declare-fun c!1435822 () Bool)

(declare-fun c!1435818 () Bool)

(declare-fun bm!722759 () Bool)

(assert (=> bm!722759 (= call!722764 (derivativeStep!6208 (ite c!1435821 (regTwo!42255 r2!6217) (ite c!1435818 (reg!21200 r2!6217) (ite c!1435822 (regTwo!42254 r2!6217) (regOne!42254 r2!6217)))) (h!80034 s!14292)))))

(declare-fun b!7796167 () Bool)

(assert (=> b!7796167 (= e!4616033 EmptyLang!20871)))

(declare-fun d!2346641 () Bool)

(declare-fun lt!2674370 () Regex!20871)

(assert (=> d!2346641 (validRegex!11285 lt!2674370)))

(assert (=> d!2346641 (= lt!2674370 e!4616033)))

(declare-fun c!1435820 () Bool)

(assert (=> d!2346641 (= c!1435820 (or ((_ is EmptyExpr!20871) r2!6217) ((_ is EmptyLang!20871) r2!6217)))))

(assert (=> d!2346641 (validRegex!11285 r2!6217)))

(assert (=> d!2346641 (= (derivativeStep!6208 r2!6217 (h!80034 s!14292)) lt!2674370)))

(declare-fun e!4616034 () Regex!20871)

(declare-fun call!722767 () Regex!20871)

(declare-fun b!7796168 () Bool)

(assert (=> b!7796168 (= e!4616034 (Union!20871 (Concat!29716 call!722766 (regTwo!42254 r2!6217)) call!722767))))

(declare-fun bm!722760 () Bool)

(declare-fun call!722765 () Regex!20871)

(assert (=> bm!722760 (= call!722767 call!722765)))

(declare-fun b!7796169 () Bool)

(assert (=> b!7796169 (= c!1435822 (nullable!9255 (regOne!42254 r2!6217)))))

(declare-fun e!4616031 () Regex!20871)

(assert (=> b!7796169 (= e!4616031 e!4616034)))

(declare-fun b!7796170 () Bool)

(assert (=> b!7796170 (= e!4616034 (Union!20871 (Concat!29716 call!722767 (regTwo!42254 r2!6217)) EmptyLang!20871))))

(declare-fun bm!722761 () Bool)

(assert (=> bm!722761 (= call!722766 (derivativeStep!6208 (ite c!1435821 (regOne!42255 r2!6217) (regOne!42254 r2!6217)) (h!80034 s!14292)))))

(declare-fun bm!722762 () Bool)

(assert (=> bm!722762 (= call!722765 call!722764)))

(declare-fun b!7796171 () Bool)

(assert (=> b!7796171 (= e!4616031 (Concat!29716 call!722765 r2!6217))))

(declare-fun b!7796172 () Bool)

(assert (=> b!7796172 (= e!4616032 e!4616031)))

(assert (=> b!7796172 (= c!1435818 ((_ is Star!20871) r2!6217))))

(declare-fun b!7796173 () Bool)

(assert (=> b!7796173 (= e!4616035 (ite (= (h!80034 s!14292) (c!1435798 r2!6217)) EmptyExpr!20871 EmptyLang!20871))))

(assert (= (and d!2346641 c!1435820) b!7796167))

(assert (= (and d!2346641 (not c!1435820)) b!7796165))

(assert (= (and b!7796165 c!1435819) b!7796173))

(assert (= (and b!7796165 (not c!1435819)) b!7796164))

(assert (= (and b!7796164 c!1435821) b!7796166))

(assert (= (and b!7796164 (not c!1435821)) b!7796172))

(assert (= (and b!7796172 c!1435818) b!7796171))

(assert (= (and b!7796172 (not c!1435818)) b!7796169))

(assert (= (and b!7796169 c!1435822) b!7796168))

(assert (= (and b!7796169 (not c!1435822)) b!7796170))

(assert (= (or b!7796168 b!7796170) bm!722760))

(assert (= (or b!7796171 bm!722760) bm!722762))

(assert (= (or b!7796166 bm!722762) bm!722759))

(assert (= (or b!7796166 b!7796168) bm!722761))

(declare-fun m!8234742 () Bool)

(assert (=> bm!722759 m!8234742))

(declare-fun m!8234744 () Bool)

(assert (=> d!2346641 m!8234744))

(assert (=> d!2346641 m!8234698))

(declare-fun m!8234746 () Bool)

(assert (=> b!7796169 m!8234746))

(declare-fun m!8234748 () Bool)

(assert (=> bm!722761 m!8234748))

(assert (=> b!7796082 d!2346641))

(declare-fun b!7796174 () Bool)

(declare-fun c!1435826 () Bool)

(assert (=> b!7796174 (= c!1435826 ((_ is Union!20871) r1!6279))))

(declare-fun e!4616040 () Regex!20871)

(declare-fun e!4616037 () Regex!20871)

(assert (=> b!7796174 (= e!4616040 e!4616037)))

(declare-fun b!7796175 () Bool)

(declare-fun e!4616038 () Regex!20871)

(assert (=> b!7796175 (= e!4616038 e!4616040)))

(declare-fun c!1435824 () Bool)

(assert (=> b!7796175 (= c!1435824 ((_ is ElementMatch!20871) r1!6279))))

(declare-fun b!7796176 () Bool)

(declare-fun call!722770 () Regex!20871)

(declare-fun call!722768 () Regex!20871)

(assert (=> b!7796176 (= e!4616037 (Union!20871 call!722770 call!722768))))

(declare-fun bm!722763 () Bool)

(declare-fun c!1435823 () Bool)

(declare-fun c!1435827 () Bool)

(assert (=> bm!722763 (= call!722768 (derivativeStep!6208 (ite c!1435826 (regTwo!42255 r1!6279) (ite c!1435823 (reg!21200 r1!6279) (ite c!1435827 (regTwo!42254 r1!6279) (regOne!42254 r1!6279)))) (h!80034 s!14292)))))

(declare-fun b!7796177 () Bool)

(assert (=> b!7796177 (= e!4616038 EmptyLang!20871)))

(declare-fun d!2346645 () Bool)

(declare-fun lt!2674371 () Regex!20871)

(assert (=> d!2346645 (validRegex!11285 lt!2674371)))

(assert (=> d!2346645 (= lt!2674371 e!4616038)))

(declare-fun c!1435825 () Bool)

(assert (=> d!2346645 (= c!1435825 (or ((_ is EmptyExpr!20871) r1!6279) ((_ is EmptyLang!20871) r1!6279)))))

(assert (=> d!2346645 (validRegex!11285 r1!6279)))

(assert (=> d!2346645 (= (derivativeStep!6208 r1!6279 (h!80034 s!14292)) lt!2674371)))

(declare-fun call!722771 () Regex!20871)

(declare-fun b!7796178 () Bool)

(declare-fun e!4616039 () Regex!20871)

(assert (=> b!7796178 (= e!4616039 (Union!20871 (Concat!29716 call!722770 (regTwo!42254 r1!6279)) call!722771))))

(declare-fun bm!722764 () Bool)

(declare-fun call!722769 () Regex!20871)

(assert (=> bm!722764 (= call!722771 call!722769)))

(declare-fun b!7796179 () Bool)

(assert (=> b!7796179 (= c!1435827 (nullable!9255 (regOne!42254 r1!6279)))))

(declare-fun e!4616036 () Regex!20871)

(assert (=> b!7796179 (= e!4616036 e!4616039)))

(declare-fun b!7796180 () Bool)

(assert (=> b!7796180 (= e!4616039 (Union!20871 (Concat!29716 call!722771 (regTwo!42254 r1!6279)) EmptyLang!20871))))

(declare-fun bm!722765 () Bool)

(assert (=> bm!722765 (= call!722770 (derivativeStep!6208 (ite c!1435826 (regOne!42255 r1!6279) (regOne!42254 r1!6279)) (h!80034 s!14292)))))

(declare-fun bm!722766 () Bool)

(assert (=> bm!722766 (= call!722769 call!722768)))

(declare-fun b!7796181 () Bool)

(assert (=> b!7796181 (= e!4616036 (Concat!29716 call!722769 r1!6279))))

(declare-fun b!7796182 () Bool)

(assert (=> b!7796182 (= e!4616037 e!4616036)))

(assert (=> b!7796182 (= c!1435823 ((_ is Star!20871) r1!6279))))

(declare-fun b!7796183 () Bool)

(assert (=> b!7796183 (= e!4616040 (ite (= (h!80034 s!14292) (c!1435798 r1!6279)) EmptyExpr!20871 EmptyLang!20871))))

(assert (= (and d!2346645 c!1435825) b!7796177))

(assert (= (and d!2346645 (not c!1435825)) b!7796175))

(assert (= (and b!7796175 c!1435824) b!7796183))

(assert (= (and b!7796175 (not c!1435824)) b!7796174))

(assert (= (and b!7796174 c!1435826) b!7796176))

(assert (= (and b!7796174 (not c!1435826)) b!7796182))

(assert (= (and b!7796182 c!1435823) b!7796181))

(assert (= (and b!7796182 (not c!1435823)) b!7796179))

(assert (= (and b!7796179 c!1435827) b!7796178))

(assert (= (and b!7796179 (not c!1435827)) b!7796180))

(assert (= (or b!7796178 b!7796180) bm!722764))

(assert (= (or b!7796181 bm!722764) bm!722766))

(assert (= (or b!7796176 bm!722766) bm!722763))

(assert (= (or b!7796176 b!7796178) bm!722765))

(declare-fun m!8234750 () Bool)

(assert (=> bm!722763 m!8234750))

(declare-fun m!8234752 () Bool)

(assert (=> d!2346645 m!8234752))

(assert (=> d!2346645 m!8234710))

(declare-fun m!8234754 () Bool)

(assert (=> b!7796179 m!8234754))

(declare-fun m!8234756 () Bool)

(assert (=> bm!722765 m!8234756))

(assert (=> b!7796082 d!2346645))

(declare-fun b!7796266 () Bool)

(declare-fun e!4616093 () Bool)

(declare-fun head!15948 (List!73710) C!42068)

(declare-fun tail!15489 (List!73710) List!73710)

(assert (=> b!7796266 (= e!4616093 (matchR!10331 (derivativeStep!6208 r2!6217 (head!15948 (_2!38275 lt!2674359))) (tail!15489 (_2!38275 lt!2674359))))))

(declare-fun d!2346647 () Bool)

(declare-fun e!4616094 () Bool)

(assert (=> d!2346647 e!4616094))

(declare-fun c!1435859 () Bool)

(assert (=> d!2346647 (= c!1435859 ((_ is EmptyExpr!20871) r2!6217))))

(declare-fun lt!2674381 () Bool)

(assert (=> d!2346647 (= lt!2674381 e!4616093)))

(declare-fun c!1435858 () Bool)

(declare-fun isEmpty!42231 (List!73710) Bool)

(assert (=> d!2346647 (= c!1435858 (isEmpty!42231 (_2!38275 lt!2674359)))))

(assert (=> d!2346647 (validRegex!11285 r2!6217)))

(assert (=> d!2346647 (= (matchR!10331 r2!6217 (_2!38275 lt!2674359)) lt!2674381)))

(declare-fun b!7796267 () Bool)

(declare-fun res!3105981 () Bool)

(declare-fun e!4616089 () Bool)

(assert (=> b!7796267 (=> res!3105981 e!4616089)))

(declare-fun e!4616083 () Bool)

(assert (=> b!7796267 (= res!3105981 e!4616083)))

(declare-fun res!3105980 () Bool)

(assert (=> b!7796267 (=> (not res!3105980) (not e!4616083))))

(assert (=> b!7796267 (= res!3105980 lt!2674381)))

(declare-fun b!7796268 () Bool)

(assert (=> b!7796268 (= e!4616083 (= (head!15948 (_2!38275 lt!2674359)) (c!1435798 r2!6217)))))

(declare-fun b!7796270 () Bool)

(declare-fun e!4616092 () Bool)

(assert (=> b!7796270 (= e!4616092 (not lt!2674381))))

(declare-fun b!7796272 () Bool)

(declare-fun call!722790 () Bool)

(assert (=> b!7796272 (= e!4616094 (= lt!2674381 call!722790))))

(declare-fun b!7796273 () Bool)

(declare-fun e!4616087 () Bool)

(assert (=> b!7796273 (= e!4616089 e!4616087)))

(declare-fun res!3105984 () Bool)

(assert (=> b!7796273 (=> (not res!3105984) (not e!4616087))))

(assert (=> b!7796273 (= res!3105984 (not lt!2674381))))

(declare-fun b!7796275 () Bool)

(declare-fun res!3105982 () Bool)

(declare-fun e!4616091 () Bool)

(assert (=> b!7796275 (=> res!3105982 e!4616091)))

(assert (=> b!7796275 (= res!3105982 (not (isEmpty!42231 (tail!15489 (_2!38275 lt!2674359)))))))

(declare-fun b!7796277 () Bool)

(declare-fun res!3105978 () Bool)

(assert (=> b!7796277 (=> (not res!3105978) (not e!4616083))))

(assert (=> b!7796277 (= res!3105978 (isEmpty!42231 (tail!15489 (_2!38275 lt!2674359))))))

(declare-fun b!7796278 () Bool)

(declare-fun res!3105983 () Bool)

(assert (=> b!7796278 (=> res!3105983 e!4616089)))

(assert (=> b!7796278 (= res!3105983 (not ((_ is ElementMatch!20871) r2!6217)))))

(assert (=> b!7796278 (= e!4616092 e!4616089)))

(declare-fun bm!722786 () Bool)

(assert (=> bm!722786 (= call!722790 (isEmpty!42231 (_2!38275 lt!2674359)))))

(declare-fun b!7796281 () Bool)

(assert (=> b!7796281 (= e!4616091 (not (= (head!15948 (_2!38275 lt!2674359)) (c!1435798 r2!6217))))))

(declare-fun b!7796282 () Bool)

(assert (=> b!7796282 (= e!4616087 e!4616091)))

(declare-fun res!3105979 () Bool)

(assert (=> b!7796282 (=> res!3105979 e!4616091)))

(assert (=> b!7796282 (= res!3105979 call!722790)))

(declare-fun b!7796283 () Bool)

(assert (=> b!7796283 (= e!4616093 (nullable!9255 r2!6217))))

(declare-fun b!7796284 () Bool)

(assert (=> b!7796284 (= e!4616094 e!4616092)))

(declare-fun c!1435852 () Bool)

(assert (=> b!7796284 (= c!1435852 ((_ is EmptyLang!20871) r2!6217))))

(declare-fun b!7796285 () Bool)

(declare-fun res!3105977 () Bool)

(assert (=> b!7796285 (=> (not res!3105977) (not e!4616083))))

(assert (=> b!7796285 (= res!3105977 (not call!722790))))

(assert (= (and d!2346647 c!1435858) b!7796283))

(assert (= (and d!2346647 (not c!1435858)) b!7796266))

(assert (= (and d!2346647 c!1435859) b!7796272))

(assert (= (and d!2346647 (not c!1435859)) b!7796284))

(assert (= (and b!7796284 c!1435852) b!7796270))

(assert (= (and b!7796284 (not c!1435852)) b!7796278))

(assert (= (and b!7796278 (not res!3105983)) b!7796267))

(assert (= (and b!7796267 res!3105980) b!7796285))

(assert (= (and b!7796285 res!3105977) b!7796277))

(assert (= (and b!7796277 res!3105978) b!7796268))

(assert (= (and b!7796267 (not res!3105981)) b!7796273))

(assert (= (and b!7796273 res!3105984) b!7796282))

(assert (= (and b!7796282 (not res!3105979)) b!7796275))

(assert (= (and b!7796275 (not res!3105982)) b!7796281))

(assert (= (or b!7796272 b!7796282 b!7796285) bm!722786))

(declare-fun m!8234794 () Bool)

(assert (=> b!7796266 m!8234794))

(assert (=> b!7796266 m!8234794))

(declare-fun m!8234796 () Bool)

(assert (=> b!7796266 m!8234796))

(declare-fun m!8234798 () Bool)

(assert (=> b!7796266 m!8234798))

(assert (=> b!7796266 m!8234796))

(assert (=> b!7796266 m!8234798))

(declare-fun m!8234800 () Bool)

(assert (=> b!7796266 m!8234800))

(assert (=> b!7796281 m!8234794))

(declare-fun m!8234802 () Bool)

(assert (=> b!7796283 m!8234802))

(assert (=> b!7796277 m!8234798))

(assert (=> b!7796277 m!8234798))

(declare-fun m!8234804 () Bool)

(assert (=> b!7796277 m!8234804))

(declare-fun m!8234806 () Bool)

(assert (=> bm!722786 m!8234806))

(assert (=> b!7796275 m!8234798))

(assert (=> b!7796275 m!8234798))

(assert (=> b!7796275 m!8234804))

(assert (=> b!7796268 m!8234794))

(assert (=> d!2346647 m!8234806))

(assert (=> d!2346647 m!8234698))

(assert (=> b!7796093 d!2346647))

(declare-fun b!7796354 () Bool)

(declare-fun e!4616142 () Bool)

(declare-fun e!4616141 () Bool)

(assert (=> b!7796354 (= e!4616142 e!4616141)))

(declare-fun res!3106024 () Bool)

(assert (=> b!7796354 (= res!3106024 (not (nullable!9255 (reg!21200 r2!6217))))))

(assert (=> b!7796354 (=> (not res!3106024) (not e!4616141))))

(declare-fun bm!722800 () Bool)

(declare-fun call!722805 () Bool)

(declare-fun call!722804 () Bool)

(assert (=> bm!722800 (= call!722805 call!722804)))

(declare-fun b!7796355 () Bool)

(assert (=> b!7796355 (= e!4616141 call!722804)))

(declare-fun bm!722801 () Bool)

(declare-fun call!722806 () Bool)

(declare-fun c!1435876 () Bool)

(assert (=> bm!722801 (= call!722806 (validRegex!11285 (ite c!1435876 (regTwo!42255 r2!6217) (regTwo!42254 r2!6217))))))

(declare-fun b!7796356 () Bool)

(declare-fun e!4616140 () Bool)

(assert (=> b!7796356 (= e!4616140 e!4616142)))

(declare-fun c!1435875 () Bool)

(assert (=> b!7796356 (= c!1435875 ((_ is Star!20871) r2!6217))))

(declare-fun b!7796357 () Bool)

(declare-fun e!4616139 () Bool)

(assert (=> b!7796357 (= e!4616139 call!722806)))

(declare-fun b!7796358 () Bool)

(declare-fun e!4616138 () Bool)

(assert (=> b!7796358 (= e!4616138 call!722806)))

(declare-fun b!7796359 () Bool)

(declare-fun e!4616137 () Bool)

(assert (=> b!7796359 (= e!4616137 e!4616138)))

(declare-fun res!3106027 () Bool)

(assert (=> b!7796359 (=> (not res!3106027) (not e!4616138))))

(assert (=> b!7796359 (= res!3106027 call!722805)))

(declare-fun bm!722799 () Bool)

(assert (=> bm!722799 (= call!722804 (validRegex!11285 (ite c!1435875 (reg!21200 r2!6217) (ite c!1435876 (regOne!42255 r2!6217) (regOne!42254 r2!6217)))))))

(declare-fun d!2346657 () Bool)

(declare-fun res!3106025 () Bool)

(assert (=> d!2346657 (=> res!3106025 e!4616140)))

(assert (=> d!2346657 (= res!3106025 ((_ is ElementMatch!20871) r2!6217))))

(assert (=> d!2346657 (= (validRegex!11285 r2!6217) e!4616140)))

(declare-fun b!7796360 () Bool)

(declare-fun e!4616143 () Bool)

(assert (=> b!7796360 (= e!4616142 e!4616143)))

(assert (=> b!7796360 (= c!1435876 ((_ is Union!20871) r2!6217))))

(declare-fun b!7796361 () Bool)

(declare-fun res!3106026 () Bool)

(assert (=> b!7796361 (=> (not res!3106026) (not e!4616139))))

(assert (=> b!7796361 (= res!3106026 call!722805)))

(assert (=> b!7796361 (= e!4616143 e!4616139)))

(declare-fun b!7796362 () Bool)

(declare-fun res!3106023 () Bool)

(assert (=> b!7796362 (=> res!3106023 e!4616137)))

(assert (=> b!7796362 (= res!3106023 (not ((_ is Concat!29716) r2!6217)))))

(assert (=> b!7796362 (= e!4616143 e!4616137)))

(assert (= (and d!2346657 (not res!3106025)) b!7796356))

(assert (= (and b!7796356 c!1435875) b!7796354))

(assert (= (and b!7796356 (not c!1435875)) b!7796360))

(assert (= (and b!7796354 res!3106024) b!7796355))

(assert (= (and b!7796360 c!1435876) b!7796361))

(assert (= (and b!7796360 (not c!1435876)) b!7796362))

(assert (= (and b!7796361 res!3106026) b!7796357))

(assert (= (and b!7796362 (not res!3106023)) b!7796359))

(assert (= (and b!7796359 res!3106027) b!7796358))

(assert (= (or b!7796361 b!7796359) bm!722800))

(assert (= (or b!7796357 b!7796358) bm!722801))

(assert (= (or b!7796355 bm!722800) bm!722799))

(declare-fun m!8234846 () Bool)

(assert (=> b!7796354 m!8234846))

(declare-fun m!8234848 () Bool)

(assert (=> bm!722801 m!8234848))

(declare-fun m!8234850 () Bool)

(assert (=> bm!722799 m!8234850))

(assert (=> b!7796083 d!2346657))

(declare-fun b!7796381 () Bool)

(declare-fun e!4616163 () Bool)

(assert (=> b!7796381 (= e!4616163 (matchR!10331 (derivativeStep!6208 lt!2674357 (head!15948 (t!388445 s!14292))) (tail!15489 (t!388445 s!14292))))))

(declare-fun d!2346669 () Bool)

(declare-fun e!4616164 () Bool)

(assert (=> d!2346669 e!4616164))

(declare-fun c!1435883 () Bool)

(assert (=> d!2346669 (= c!1435883 ((_ is EmptyExpr!20871) lt!2674357))))

(declare-fun lt!2674389 () Bool)

(assert (=> d!2346669 (= lt!2674389 e!4616163)))

(declare-fun c!1435882 () Bool)

(assert (=> d!2346669 (= c!1435882 (isEmpty!42231 (t!388445 s!14292)))))

(assert (=> d!2346669 (validRegex!11285 lt!2674357)))

(assert (=> d!2346669 (= (matchR!10331 lt!2674357 (t!388445 s!14292)) lt!2674389)))

(declare-fun b!7796382 () Bool)

(declare-fun res!3106040 () Bool)

(declare-fun e!4616158 () Bool)

(assert (=> b!7796382 (=> res!3106040 e!4616158)))

(declare-fun e!4616156 () Bool)

(assert (=> b!7796382 (= res!3106040 e!4616156)))

(declare-fun res!3106039 () Bool)

(assert (=> b!7796382 (=> (not res!3106039) (not e!4616156))))

(assert (=> b!7796382 (= res!3106039 lt!2674389)))

(declare-fun b!7796383 () Bool)

(assert (=> b!7796383 (= e!4616156 (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674357)))))

(declare-fun b!7796384 () Bool)

(declare-fun e!4616162 () Bool)

(assert (=> b!7796384 (= e!4616162 (not lt!2674389))))

(declare-fun b!7796385 () Bool)

(declare-fun call!722807 () Bool)

(assert (=> b!7796385 (= e!4616164 (= lt!2674389 call!722807))))

(declare-fun b!7796386 () Bool)

(declare-fun e!4616157 () Bool)

(assert (=> b!7796386 (= e!4616158 e!4616157)))

(declare-fun res!3106043 () Bool)

(assert (=> b!7796386 (=> (not res!3106043) (not e!4616157))))

(assert (=> b!7796386 (= res!3106043 (not lt!2674389))))

(declare-fun b!7796387 () Bool)

(declare-fun res!3106041 () Bool)

(declare-fun e!4616161 () Bool)

(assert (=> b!7796387 (=> res!3106041 e!4616161)))

(assert (=> b!7796387 (= res!3106041 (not (isEmpty!42231 (tail!15489 (t!388445 s!14292)))))))

(declare-fun b!7796388 () Bool)

(declare-fun res!3106037 () Bool)

(assert (=> b!7796388 (=> (not res!3106037) (not e!4616156))))

(assert (=> b!7796388 (= res!3106037 (isEmpty!42231 (tail!15489 (t!388445 s!14292))))))

(declare-fun b!7796389 () Bool)

(declare-fun res!3106042 () Bool)

(assert (=> b!7796389 (=> res!3106042 e!4616158)))

(assert (=> b!7796389 (= res!3106042 (not ((_ is ElementMatch!20871) lt!2674357)))))

(assert (=> b!7796389 (= e!4616162 e!4616158)))

(declare-fun bm!722802 () Bool)

(assert (=> bm!722802 (= call!722807 (isEmpty!42231 (t!388445 s!14292)))))

(declare-fun b!7796390 () Bool)

(assert (=> b!7796390 (= e!4616161 (not (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674357))))))

(declare-fun b!7796391 () Bool)

(assert (=> b!7796391 (= e!4616157 e!4616161)))

(declare-fun res!3106038 () Bool)

(assert (=> b!7796391 (=> res!3106038 e!4616161)))

(assert (=> b!7796391 (= res!3106038 call!722807)))

(declare-fun b!7796392 () Bool)

(assert (=> b!7796392 (= e!4616163 (nullable!9255 lt!2674357))))

(declare-fun b!7796393 () Bool)

(assert (=> b!7796393 (= e!4616164 e!4616162)))

(declare-fun c!1435881 () Bool)

(assert (=> b!7796393 (= c!1435881 ((_ is EmptyLang!20871) lt!2674357))))

(declare-fun b!7796394 () Bool)

(declare-fun res!3106036 () Bool)

(assert (=> b!7796394 (=> (not res!3106036) (not e!4616156))))

(assert (=> b!7796394 (= res!3106036 (not call!722807))))

(assert (= (and d!2346669 c!1435882) b!7796392))

(assert (= (and d!2346669 (not c!1435882)) b!7796381))

(assert (= (and d!2346669 c!1435883) b!7796385))

(assert (= (and d!2346669 (not c!1435883)) b!7796393))

(assert (= (and b!7796393 c!1435881) b!7796384))

(assert (= (and b!7796393 (not c!1435881)) b!7796389))

(assert (= (and b!7796389 (not res!3106042)) b!7796382))

(assert (= (and b!7796382 res!3106039) b!7796394))

(assert (= (and b!7796394 res!3106036) b!7796388))

(assert (= (and b!7796388 res!3106037) b!7796383))

(assert (= (and b!7796382 (not res!3106040)) b!7796386))

(assert (= (and b!7796386 res!3106043) b!7796391))

(assert (= (and b!7796391 (not res!3106038)) b!7796387))

(assert (= (and b!7796387 (not res!3106041)) b!7796390))

(assert (= (or b!7796385 b!7796391 b!7796394) bm!722802))

(declare-fun m!8234852 () Bool)

(assert (=> b!7796381 m!8234852))

(assert (=> b!7796381 m!8234852))

(declare-fun m!8234854 () Bool)

(assert (=> b!7796381 m!8234854))

(declare-fun m!8234856 () Bool)

(assert (=> b!7796381 m!8234856))

(assert (=> b!7796381 m!8234854))

(assert (=> b!7796381 m!8234856))

(declare-fun m!8234858 () Bool)

(assert (=> b!7796381 m!8234858))

(assert (=> b!7796390 m!8234852))

(declare-fun m!8234860 () Bool)

(assert (=> b!7796392 m!8234860))

(assert (=> b!7796388 m!8234856))

(assert (=> b!7796388 m!8234856))

(declare-fun m!8234862 () Bool)

(assert (=> b!7796388 m!8234862))

(declare-fun m!8234864 () Bool)

(assert (=> bm!722802 m!8234864))

(assert (=> b!7796387 m!8234856))

(assert (=> b!7796387 m!8234856))

(assert (=> b!7796387 m!8234862))

(assert (=> b!7796383 m!8234852))

(assert (=> d!2346669 m!8234864))

(declare-fun m!8234866 () Bool)

(assert (=> d!2346669 m!8234866))

(assert (=> b!7796094 d!2346669))

(declare-fun b!7796395 () Bool)

(declare-fun c!1435887 () Bool)

(assert (=> b!7796395 (= c!1435887 ((_ is Union!20871) lt!2674361))))

(declare-fun e!4616169 () Regex!20871)

(declare-fun e!4616166 () Regex!20871)

(assert (=> b!7796395 (= e!4616169 e!4616166)))

(declare-fun b!7796396 () Bool)

(declare-fun e!4616167 () Regex!20871)

(assert (=> b!7796396 (= e!4616167 e!4616169)))

(declare-fun c!1435885 () Bool)

(assert (=> b!7796396 (= c!1435885 ((_ is ElementMatch!20871) lt!2674361))))

(declare-fun b!7796397 () Bool)

(declare-fun call!722816 () Regex!20871)

(declare-fun call!722814 () Regex!20871)

(assert (=> b!7796397 (= e!4616166 (Union!20871 call!722816 call!722814))))

(declare-fun c!1435888 () Bool)

(declare-fun bm!722809 () Bool)

(declare-fun c!1435884 () Bool)

(assert (=> bm!722809 (= call!722814 (derivativeStep!6208 (ite c!1435887 (regTwo!42255 lt!2674361) (ite c!1435884 (reg!21200 lt!2674361) (ite c!1435888 (regTwo!42254 lt!2674361) (regOne!42254 lt!2674361)))) (h!80034 s!14292)))))

(declare-fun b!7796398 () Bool)

(assert (=> b!7796398 (= e!4616167 EmptyLang!20871)))

(declare-fun d!2346671 () Bool)

(declare-fun lt!2674390 () Regex!20871)

(assert (=> d!2346671 (validRegex!11285 lt!2674390)))

(assert (=> d!2346671 (= lt!2674390 e!4616167)))

(declare-fun c!1435886 () Bool)

(assert (=> d!2346671 (= c!1435886 (or ((_ is EmptyExpr!20871) lt!2674361) ((_ is EmptyLang!20871) lt!2674361)))))

(assert (=> d!2346671 (validRegex!11285 lt!2674361)))

(assert (=> d!2346671 (= (derivativeStep!6208 lt!2674361 (h!80034 s!14292)) lt!2674390)))

(declare-fun call!722817 () Regex!20871)

(declare-fun e!4616168 () Regex!20871)

(declare-fun b!7796399 () Bool)

(assert (=> b!7796399 (= e!4616168 (Union!20871 (Concat!29716 call!722816 (regTwo!42254 lt!2674361)) call!722817))))

(declare-fun bm!722810 () Bool)

(declare-fun call!722815 () Regex!20871)

(assert (=> bm!722810 (= call!722817 call!722815)))

(declare-fun b!7796400 () Bool)

(assert (=> b!7796400 (= c!1435888 (nullable!9255 (regOne!42254 lt!2674361)))))

(declare-fun e!4616165 () Regex!20871)

(assert (=> b!7796400 (= e!4616165 e!4616168)))

(declare-fun b!7796401 () Bool)

(assert (=> b!7796401 (= e!4616168 (Union!20871 (Concat!29716 call!722817 (regTwo!42254 lt!2674361)) EmptyLang!20871))))

(declare-fun bm!722811 () Bool)

(assert (=> bm!722811 (= call!722816 (derivativeStep!6208 (ite c!1435887 (regOne!42255 lt!2674361) (regOne!42254 lt!2674361)) (h!80034 s!14292)))))

(declare-fun bm!722812 () Bool)

(assert (=> bm!722812 (= call!722815 call!722814)))

(declare-fun b!7796402 () Bool)

(assert (=> b!7796402 (= e!4616165 (Concat!29716 call!722815 lt!2674361))))

(declare-fun b!7796403 () Bool)

(assert (=> b!7796403 (= e!4616166 e!4616165)))

(assert (=> b!7796403 (= c!1435884 ((_ is Star!20871) lt!2674361))))

(declare-fun b!7796404 () Bool)

(assert (=> b!7796404 (= e!4616169 (ite (= (h!80034 s!14292) (c!1435798 lt!2674361)) EmptyExpr!20871 EmptyLang!20871))))

(assert (= (and d!2346671 c!1435886) b!7796398))

(assert (= (and d!2346671 (not c!1435886)) b!7796396))

(assert (= (and b!7796396 c!1435885) b!7796404))

(assert (= (and b!7796396 (not c!1435885)) b!7796395))

(assert (= (and b!7796395 c!1435887) b!7796397))

(assert (= (and b!7796395 (not c!1435887)) b!7796403))

(assert (= (and b!7796403 c!1435884) b!7796402))

(assert (= (and b!7796403 (not c!1435884)) b!7796400))

(assert (= (and b!7796400 c!1435888) b!7796399))

(assert (= (and b!7796400 (not c!1435888)) b!7796401))

(assert (= (or b!7796399 b!7796401) bm!722810))

(assert (= (or b!7796402 bm!722810) bm!722812))

(assert (= (or b!7796397 bm!722812) bm!722809))

(assert (= (or b!7796397 b!7796399) bm!722811))

(declare-fun m!8234868 () Bool)

(assert (=> bm!722809 m!8234868))

(declare-fun m!8234870 () Bool)

(assert (=> d!2346671 m!8234870))

(declare-fun m!8234872 () Bool)

(assert (=> d!2346671 m!8234872))

(declare-fun m!8234874 () Bool)

(assert (=> b!7796400 m!8234874))

(declare-fun m!8234876 () Bool)

(assert (=> bm!722811 m!8234876))

(assert (=> b!7796094 d!2346671))

(declare-fun b!7796405 () Bool)

(declare-fun e!4616175 () Bool)

(assert (=> b!7796405 (= e!4616175 (matchR!10331 (derivativeStep!6208 lt!2674361 (head!15948 s!14292)) (tail!15489 s!14292)))))

(declare-fun d!2346673 () Bool)

(declare-fun e!4616176 () Bool)

(assert (=> d!2346673 e!4616176))

(declare-fun c!1435891 () Bool)

(assert (=> d!2346673 (= c!1435891 ((_ is EmptyExpr!20871) lt!2674361))))

(declare-fun lt!2674391 () Bool)

(assert (=> d!2346673 (= lt!2674391 e!4616175)))

(declare-fun c!1435890 () Bool)

(assert (=> d!2346673 (= c!1435890 (isEmpty!42231 s!14292))))

(assert (=> d!2346673 (validRegex!11285 lt!2674361)))

(assert (=> d!2346673 (= (matchR!10331 lt!2674361 s!14292) lt!2674391)))

(declare-fun b!7796406 () Bool)

(declare-fun res!3106050 () Bool)

(declare-fun e!4616172 () Bool)

(assert (=> b!7796406 (=> res!3106050 e!4616172)))

(declare-fun e!4616170 () Bool)

(assert (=> b!7796406 (= res!3106050 e!4616170)))

(declare-fun res!3106049 () Bool)

(assert (=> b!7796406 (=> (not res!3106049) (not e!4616170))))

(assert (=> b!7796406 (= res!3106049 lt!2674391)))

(declare-fun b!7796407 () Bool)

(assert (=> b!7796407 (= e!4616170 (= (head!15948 s!14292) (c!1435798 lt!2674361)))))

(declare-fun b!7796408 () Bool)

(declare-fun e!4616174 () Bool)

(assert (=> b!7796408 (= e!4616174 (not lt!2674391))))

(declare-fun b!7796409 () Bool)

(declare-fun call!722818 () Bool)

(assert (=> b!7796409 (= e!4616176 (= lt!2674391 call!722818))))

(declare-fun b!7796410 () Bool)

(declare-fun e!4616171 () Bool)

(assert (=> b!7796410 (= e!4616172 e!4616171)))

(declare-fun res!3106053 () Bool)

(assert (=> b!7796410 (=> (not res!3106053) (not e!4616171))))

(assert (=> b!7796410 (= res!3106053 (not lt!2674391))))

(declare-fun b!7796411 () Bool)

(declare-fun res!3106051 () Bool)

(declare-fun e!4616173 () Bool)

(assert (=> b!7796411 (=> res!3106051 e!4616173)))

(assert (=> b!7796411 (= res!3106051 (not (isEmpty!42231 (tail!15489 s!14292))))))

(declare-fun b!7796412 () Bool)

(declare-fun res!3106047 () Bool)

(assert (=> b!7796412 (=> (not res!3106047) (not e!4616170))))

(assert (=> b!7796412 (= res!3106047 (isEmpty!42231 (tail!15489 s!14292)))))

(declare-fun b!7796413 () Bool)

(declare-fun res!3106052 () Bool)

(assert (=> b!7796413 (=> res!3106052 e!4616172)))

(assert (=> b!7796413 (= res!3106052 (not ((_ is ElementMatch!20871) lt!2674361)))))

(assert (=> b!7796413 (= e!4616174 e!4616172)))

(declare-fun bm!722813 () Bool)

(assert (=> bm!722813 (= call!722818 (isEmpty!42231 s!14292))))

(declare-fun b!7796414 () Bool)

(assert (=> b!7796414 (= e!4616173 (not (= (head!15948 s!14292) (c!1435798 lt!2674361))))))

(declare-fun b!7796415 () Bool)

(assert (=> b!7796415 (= e!4616171 e!4616173)))

(declare-fun res!3106048 () Bool)

(assert (=> b!7796415 (=> res!3106048 e!4616173)))

(assert (=> b!7796415 (= res!3106048 call!722818)))

(declare-fun b!7796416 () Bool)

(assert (=> b!7796416 (= e!4616175 (nullable!9255 lt!2674361))))

(declare-fun b!7796417 () Bool)

(assert (=> b!7796417 (= e!4616176 e!4616174)))

(declare-fun c!1435889 () Bool)

(assert (=> b!7796417 (= c!1435889 ((_ is EmptyLang!20871) lt!2674361))))

(declare-fun b!7796418 () Bool)

(declare-fun res!3106046 () Bool)

(assert (=> b!7796418 (=> (not res!3106046) (not e!4616170))))

(assert (=> b!7796418 (= res!3106046 (not call!722818))))

(assert (= (and d!2346673 c!1435890) b!7796416))

(assert (= (and d!2346673 (not c!1435890)) b!7796405))

(assert (= (and d!2346673 c!1435891) b!7796409))

(assert (= (and d!2346673 (not c!1435891)) b!7796417))

(assert (= (and b!7796417 c!1435889) b!7796408))

(assert (= (and b!7796417 (not c!1435889)) b!7796413))

(assert (= (and b!7796413 (not res!3106052)) b!7796406))

(assert (= (and b!7796406 res!3106049) b!7796418))

(assert (= (and b!7796418 res!3106046) b!7796412))

(assert (= (and b!7796412 res!3106047) b!7796407))

(assert (= (and b!7796406 (not res!3106050)) b!7796410))

(assert (= (and b!7796410 res!3106053) b!7796415))

(assert (= (and b!7796415 (not res!3106048)) b!7796411))

(assert (= (and b!7796411 (not res!3106051)) b!7796414))

(assert (= (or b!7796409 b!7796415 b!7796418) bm!722813))

(declare-fun m!8234878 () Bool)

(assert (=> b!7796405 m!8234878))

(assert (=> b!7796405 m!8234878))

(declare-fun m!8234880 () Bool)

(assert (=> b!7796405 m!8234880))

(declare-fun m!8234882 () Bool)

(assert (=> b!7796405 m!8234882))

(assert (=> b!7796405 m!8234880))

(assert (=> b!7796405 m!8234882))

(declare-fun m!8234884 () Bool)

(assert (=> b!7796405 m!8234884))

(assert (=> b!7796414 m!8234878))

(declare-fun m!8234886 () Bool)

(assert (=> b!7796416 m!8234886))

(assert (=> b!7796412 m!8234882))

(assert (=> b!7796412 m!8234882))

(declare-fun m!8234890 () Bool)

(assert (=> b!7796412 m!8234890))

(declare-fun m!8234894 () Bool)

(assert (=> bm!722813 m!8234894))

(assert (=> b!7796411 m!8234882))

(assert (=> b!7796411 m!8234882))

(assert (=> b!7796411 m!8234890))

(assert (=> b!7796407 m!8234878))

(assert (=> d!2346673 m!8234894))

(assert (=> d!2346673 m!8234872))

(assert (=> b!7796085 d!2346673))

(declare-fun b!7796442 () Bool)

(declare-fun e!4616196 () Bool)

(assert (=> b!7796442 (= e!4616196 (matchR!10331 (derivativeStep!6208 r1!6279 (head!15948 lt!2674364)) (tail!15489 lt!2674364)))))

(declare-fun d!2346677 () Bool)

(declare-fun e!4616197 () Bool)

(assert (=> d!2346677 e!4616197))

(declare-fun c!1435899 () Bool)

(assert (=> d!2346677 (= c!1435899 ((_ is EmptyExpr!20871) r1!6279))))

(declare-fun lt!2674393 () Bool)

(assert (=> d!2346677 (= lt!2674393 e!4616196)))

(declare-fun c!1435898 () Bool)

(assert (=> d!2346677 (= c!1435898 (isEmpty!42231 lt!2674364))))

(assert (=> d!2346677 (validRegex!11285 r1!6279)))

(assert (=> d!2346677 (= (matchR!10331 r1!6279 lt!2674364) lt!2674393)))

(declare-fun b!7796443 () Bool)

(declare-fun res!3106071 () Bool)

(declare-fun e!4616193 () Bool)

(assert (=> b!7796443 (=> res!3106071 e!4616193)))

(declare-fun e!4616191 () Bool)

(assert (=> b!7796443 (= res!3106071 e!4616191)))

(declare-fun res!3106070 () Bool)

(assert (=> b!7796443 (=> (not res!3106070) (not e!4616191))))

(assert (=> b!7796443 (= res!3106070 lt!2674393)))

(declare-fun b!7796444 () Bool)

(assert (=> b!7796444 (= e!4616191 (= (head!15948 lt!2674364) (c!1435798 r1!6279)))))

(declare-fun b!7796445 () Bool)

(declare-fun e!4616195 () Bool)

(assert (=> b!7796445 (= e!4616195 (not lt!2674393))))

(declare-fun b!7796446 () Bool)

(declare-fun call!722823 () Bool)

(assert (=> b!7796446 (= e!4616197 (= lt!2674393 call!722823))))

(declare-fun b!7796447 () Bool)

(declare-fun e!4616192 () Bool)

(assert (=> b!7796447 (= e!4616193 e!4616192)))

(declare-fun res!3106074 () Bool)

(assert (=> b!7796447 (=> (not res!3106074) (not e!4616192))))

(assert (=> b!7796447 (= res!3106074 (not lt!2674393))))

(declare-fun b!7796448 () Bool)

(declare-fun res!3106072 () Bool)

(declare-fun e!4616194 () Bool)

(assert (=> b!7796448 (=> res!3106072 e!4616194)))

(assert (=> b!7796448 (= res!3106072 (not (isEmpty!42231 (tail!15489 lt!2674364))))))

(declare-fun b!7796449 () Bool)

(declare-fun res!3106068 () Bool)

(assert (=> b!7796449 (=> (not res!3106068) (not e!4616191))))

(assert (=> b!7796449 (= res!3106068 (isEmpty!42231 (tail!15489 lt!2674364)))))

(declare-fun b!7796450 () Bool)

(declare-fun res!3106073 () Bool)

(assert (=> b!7796450 (=> res!3106073 e!4616193)))

(assert (=> b!7796450 (= res!3106073 (not ((_ is ElementMatch!20871) r1!6279)))))

(assert (=> b!7796450 (= e!4616195 e!4616193)))

(declare-fun bm!722818 () Bool)

(assert (=> bm!722818 (= call!722823 (isEmpty!42231 lt!2674364))))

(declare-fun b!7796451 () Bool)

(assert (=> b!7796451 (= e!4616194 (not (= (head!15948 lt!2674364) (c!1435798 r1!6279))))))

(declare-fun b!7796452 () Bool)

(assert (=> b!7796452 (= e!4616192 e!4616194)))

(declare-fun res!3106069 () Bool)

(assert (=> b!7796452 (=> res!3106069 e!4616194)))

(assert (=> b!7796452 (= res!3106069 call!722823)))

(declare-fun b!7796453 () Bool)

(assert (=> b!7796453 (= e!4616196 (nullable!9255 r1!6279))))

(declare-fun b!7796454 () Bool)

(assert (=> b!7796454 (= e!4616197 e!4616195)))

(declare-fun c!1435897 () Bool)

(assert (=> b!7796454 (= c!1435897 ((_ is EmptyLang!20871) r1!6279))))

(declare-fun b!7796455 () Bool)

(declare-fun res!3106066 () Bool)

(assert (=> b!7796455 (=> (not res!3106066) (not e!4616191))))

(assert (=> b!7796455 (= res!3106066 (not call!722823))))

(assert (= (and d!2346677 c!1435898) b!7796453))

(assert (= (and d!2346677 (not c!1435898)) b!7796442))

(assert (= (and d!2346677 c!1435899) b!7796446))

(assert (= (and d!2346677 (not c!1435899)) b!7796454))

(assert (= (and b!7796454 c!1435897) b!7796445))

(assert (= (and b!7796454 (not c!1435897)) b!7796450))

(assert (= (and b!7796450 (not res!3106073)) b!7796443))

(assert (= (and b!7796443 res!3106070) b!7796455))

(assert (= (and b!7796455 res!3106066) b!7796449))

(assert (= (and b!7796449 res!3106068) b!7796444))

(assert (= (and b!7796443 (not res!3106071)) b!7796447))

(assert (= (and b!7796447 res!3106074) b!7796452))

(assert (= (and b!7796452 (not res!3106069)) b!7796448))

(assert (= (and b!7796448 (not res!3106072)) b!7796451))

(assert (= (or b!7796446 b!7796452 b!7796455) bm!722818))

(declare-fun m!8234912 () Bool)

(assert (=> b!7796442 m!8234912))

(assert (=> b!7796442 m!8234912))

(declare-fun m!8234914 () Bool)

(assert (=> b!7796442 m!8234914))

(declare-fun m!8234916 () Bool)

(assert (=> b!7796442 m!8234916))

(assert (=> b!7796442 m!8234914))

(assert (=> b!7796442 m!8234916))

(declare-fun m!8234922 () Bool)

(assert (=> b!7796442 m!8234922))

(assert (=> b!7796451 m!8234912))

(assert (=> b!7796453 m!8234690))

(assert (=> b!7796449 m!8234916))

(assert (=> b!7796449 m!8234916))

(declare-fun m!8234926 () Bool)

(assert (=> b!7796449 m!8234926))

(declare-fun m!8234928 () Bool)

(assert (=> bm!722818 m!8234928))

(assert (=> b!7796448 m!8234916))

(assert (=> b!7796448 m!8234916))

(assert (=> b!7796448 m!8234926))

(assert (=> b!7796444 m!8234912))

(assert (=> d!2346677 m!8234928))

(assert (=> d!2346677 m!8234710))

(assert (=> b!7796086 d!2346677))

(declare-fun d!2346683 () Bool)

(declare-fun nullableFct!3636 (Regex!20871) Bool)

(assert (=> d!2346683 (= (nullable!9255 r1!6279) (nullableFct!3636 r1!6279))))

(declare-fun bs!1966407 () Bool)

(assert (= bs!1966407 d!2346683))

(declare-fun m!8234938 () Bool)

(assert (=> bs!1966407 m!8234938))

(assert (=> b!7796098 d!2346683))

(declare-fun b!7796479 () Bool)

(declare-fun e!4616217 () Bool)

(assert (=> b!7796479 (= e!4616217 (matchR!10331 (derivativeStep!6208 lt!2674362 (head!15948 (t!388445 s!14292))) (tail!15489 (t!388445 s!14292))))))

(declare-fun d!2346687 () Bool)

(declare-fun e!4616218 () Bool)

(assert (=> d!2346687 e!4616218))

(declare-fun c!1435907 () Bool)

(assert (=> d!2346687 (= c!1435907 ((_ is EmptyExpr!20871) lt!2674362))))

(declare-fun lt!2674395 () Bool)

(assert (=> d!2346687 (= lt!2674395 e!4616217)))

(declare-fun c!1435906 () Bool)

(assert (=> d!2346687 (= c!1435906 (isEmpty!42231 (t!388445 s!14292)))))

(assert (=> d!2346687 (validRegex!11285 lt!2674362)))

(assert (=> d!2346687 (= (matchR!10331 lt!2674362 (t!388445 s!14292)) lt!2674395)))

(declare-fun b!7796480 () Bool)

(declare-fun res!3106092 () Bool)

(declare-fun e!4616214 () Bool)

(assert (=> b!7796480 (=> res!3106092 e!4616214)))

(declare-fun e!4616212 () Bool)

(assert (=> b!7796480 (= res!3106092 e!4616212)))

(declare-fun res!3106091 () Bool)

(assert (=> b!7796480 (=> (not res!3106091) (not e!4616212))))

(assert (=> b!7796480 (= res!3106091 lt!2674395)))

(declare-fun b!7796481 () Bool)

(assert (=> b!7796481 (= e!4616212 (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674362)))))

(declare-fun b!7796482 () Bool)

(declare-fun e!4616216 () Bool)

(assert (=> b!7796482 (= e!4616216 (not lt!2674395))))

(declare-fun b!7796483 () Bool)

(declare-fun call!722828 () Bool)

(assert (=> b!7796483 (= e!4616218 (= lt!2674395 call!722828))))

(declare-fun b!7796484 () Bool)

(declare-fun e!4616213 () Bool)

(assert (=> b!7796484 (= e!4616214 e!4616213)))

(declare-fun res!3106095 () Bool)

(assert (=> b!7796484 (=> (not res!3106095) (not e!4616213))))

(assert (=> b!7796484 (= res!3106095 (not lt!2674395))))

(declare-fun b!7796485 () Bool)

(declare-fun res!3106093 () Bool)

(declare-fun e!4616215 () Bool)

(assert (=> b!7796485 (=> res!3106093 e!4616215)))

(assert (=> b!7796485 (= res!3106093 (not (isEmpty!42231 (tail!15489 (t!388445 s!14292)))))))

(declare-fun b!7796486 () Bool)

(declare-fun res!3106089 () Bool)

(assert (=> b!7796486 (=> (not res!3106089) (not e!4616212))))

(assert (=> b!7796486 (= res!3106089 (isEmpty!42231 (tail!15489 (t!388445 s!14292))))))

(declare-fun b!7796487 () Bool)

(declare-fun res!3106094 () Bool)

(assert (=> b!7796487 (=> res!3106094 e!4616214)))

(assert (=> b!7796487 (= res!3106094 (not ((_ is ElementMatch!20871) lt!2674362)))))

(assert (=> b!7796487 (= e!4616216 e!4616214)))

(declare-fun bm!722823 () Bool)

(assert (=> bm!722823 (= call!722828 (isEmpty!42231 (t!388445 s!14292)))))

(declare-fun b!7796488 () Bool)

(assert (=> b!7796488 (= e!4616215 (not (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674362))))))

(declare-fun b!7796489 () Bool)

(assert (=> b!7796489 (= e!4616213 e!4616215)))

(declare-fun res!3106090 () Bool)

(assert (=> b!7796489 (=> res!3106090 e!4616215)))

(assert (=> b!7796489 (= res!3106090 call!722828)))

(declare-fun b!7796490 () Bool)

(assert (=> b!7796490 (= e!4616217 (nullable!9255 lt!2674362))))

(declare-fun b!7796491 () Bool)

(assert (=> b!7796491 (= e!4616218 e!4616216)))

(declare-fun c!1435905 () Bool)

(assert (=> b!7796491 (= c!1435905 ((_ is EmptyLang!20871) lt!2674362))))

(declare-fun b!7796492 () Bool)

(declare-fun res!3106088 () Bool)

(assert (=> b!7796492 (=> (not res!3106088) (not e!4616212))))

(assert (=> b!7796492 (= res!3106088 (not call!722828))))

(assert (= (and d!2346687 c!1435906) b!7796490))

(assert (= (and d!2346687 (not c!1435906)) b!7796479))

(assert (= (and d!2346687 c!1435907) b!7796483))

(assert (= (and d!2346687 (not c!1435907)) b!7796491))

(assert (= (and b!7796491 c!1435905) b!7796482))

(assert (= (and b!7796491 (not c!1435905)) b!7796487))

(assert (= (and b!7796487 (not res!3106094)) b!7796480))

(assert (= (and b!7796480 res!3106091) b!7796492))

(assert (= (and b!7796492 res!3106088) b!7796486))

(assert (= (and b!7796486 res!3106089) b!7796481))

(assert (= (and b!7796480 (not res!3106092)) b!7796484))

(assert (= (and b!7796484 res!3106095) b!7796489))

(assert (= (and b!7796489 (not res!3106090)) b!7796485))

(assert (= (and b!7796485 (not res!3106093)) b!7796488))

(assert (= (or b!7796483 b!7796489 b!7796492) bm!722823))

(assert (=> b!7796479 m!8234852))

(assert (=> b!7796479 m!8234852))

(declare-fun m!8234940 () Bool)

(assert (=> b!7796479 m!8234940))

(assert (=> b!7796479 m!8234856))

(assert (=> b!7796479 m!8234940))

(assert (=> b!7796479 m!8234856))

(declare-fun m!8234942 () Bool)

(assert (=> b!7796479 m!8234942))

(assert (=> b!7796488 m!8234852))

(declare-fun m!8234944 () Bool)

(assert (=> b!7796490 m!8234944))

(assert (=> b!7796486 m!8234856))

(assert (=> b!7796486 m!8234856))

(assert (=> b!7796486 m!8234862))

(assert (=> bm!722823 m!8234864))

(assert (=> b!7796485 m!8234856))

(assert (=> b!7796485 m!8234856))

(assert (=> b!7796485 m!8234862))

(assert (=> b!7796481 m!8234852))

(assert (=> d!2346687 m!8234864))

(declare-fun m!8234946 () Bool)

(assert (=> d!2346687 m!8234946))

(assert (=> b!7796099 d!2346687))

(declare-fun b!7796501 () Bool)

(declare-fun e!4616228 () Bool)

(declare-fun e!4616227 () Bool)

(assert (=> b!7796501 (= e!4616228 e!4616227)))

(declare-fun res!3106101 () Bool)

(assert (=> b!7796501 (= res!3106101 (not (nullable!9255 (reg!21200 r1!6279))))))

(assert (=> b!7796501 (=> (not res!3106101) (not e!4616227))))

(declare-fun bm!722825 () Bool)

(declare-fun call!722830 () Bool)

(declare-fun call!722829 () Bool)

(assert (=> bm!722825 (= call!722830 call!722829)))

(declare-fun b!7796502 () Bool)

(assert (=> b!7796502 (= e!4616227 call!722829)))

(declare-fun bm!722826 () Bool)

(declare-fun call!722831 () Bool)

(declare-fun c!1435911 () Bool)

(assert (=> bm!722826 (= call!722831 (validRegex!11285 (ite c!1435911 (regTwo!42255 r1!6279) (regTwo!42254 r1!6279))))))

(declare-fun b!7796503 () Bool)

(declare-fun e!4616226 () Bool)

(assert (=> b!7796503 (= e!4616226 e!4616228)))

(declare-fun c!1435910 () Bool)

(assert (=> b!7796503 (= c!1435910 ((_ is Star!20871) r1!6279))))

(declare-fun b!7796504 () Bool)

(declare-fun e!4616225 () Bool)

(assert (=> b!7796504 (= e!4616225 call!722831)))

(declare-fun b!7796505 () Bool)

(declare-fun e!4616224 () Bool)

(assert (=> b!7796505 (= e!4616224 call!722831)))

(declare-fun b!7796506 () Bool)

(declare-fun e!4616223 () Bool)

(assert (=> b!7796506 (= e!4616223 e!4616224)))

(declare-fun res!3106104 () Bool)

(assert (=> b!7796506 (=> (not res!3106104) (not e!4616224))))

(assert (=> b!7796506 (= res!3106104 call!722830)))

(declare-fun bm!722824 () Bool)

(assert (=> bm!722824 (= call!722829 (validRegex!11285 (ite c!1435910 (reg!21200 r1!6279) (ite c!1435911 (regOne!42255 r1!6279) (regOne!42254 r1!6279)))))))

(declare-fun d!2346689 () Bool)

(declare-fun res!3106102 () Bool)

(assert (=> d!2346689 (=> res!3106102 e!4616226)))

(assert (=> d!2346689 (= res!3106102 ((_ is ElementMatch!20871) r1!6279))))

(assert (=> d!2346689 (= (validRegex!11285 r1!6279) e!4616226)))

(declare-fun b!7796507 () Bool)

(declare-fun e!4616229 () Bool)

(assert (=> b!7796507 (= e!4616228 e!4616229)))

(assert (=> b!7796507 (= c!1435911 ((_ is Union!20871) r1!6279))))

(declare-fun b!7796508 () Bool)

(declare-fun res!3106103 () Bool)

(assert (=> b!7796508 (=> (not res!3106103) (not e!4616225))))

(assert (=> b!7796508 (= res!3106103 call!722830)))

(assert (=> b!7796508 (= e!4616229 e!4616225)))

(declare-fun b!7796509 () Bool)

(declare-fun res!3106100 () Bool)

(assert (=> b!7796509 (=> res!3106100 e!4616223)))

(assert (=> b!7796509 (= res!3106100 (not ((_ is Concat!29716) r1!6279)))))

(assert (=> b!7796509 (= e!4616229 e!4616223)))

(assert (= (and d!2346689 (not res!3106102)) b!7796503))

(assert (= (and b!7796503 c!1435910) b!7796501))

(assert (= (and b!7796503 (not c!1435910)) b!7796507))

(assert (= (and b!7796501 res!3106101) b!7796502))

(assert (= (and b!7796507 c!1435911) b!7796508))

(assert (= (and b!7796507 (not c!1435911)) b!7796509))

(assert (= (and b!7796508 res!3106103) b!7796504))

(assert (= (and b!7796509 (not res!3106100)) b!7796506))

(assert (= (and b!7796506 res!3106104) b!7796505))

(assert (= (or b!7796508 b!7796506) bm!722825))

(assert (= (or b!7796504 b!7796505) bm!722826))

(assert (= (or b!7796502 bm!722825) bm!722824))

(declare-fun m!8234960 () Bool)

(assert (=> b!7796501 m!8234960))

(declare-fun m!8234962 () Bool)

(assert (=> bm!722826 m!8234962))

(declare-fun m!8234964 () Bool)

(assert (=> bm!722824 m!8234964))

(assert (=> start!741146 d!2346689))

(declare-fun b!7796542 () Bool)

(declare-fun res!3106121 () Bool)

(declare-fun e!4616247 () Bool)

(assert (=> b!7796542 (=> (not res!3106121) (not e!4616247))))

(declare-fun lt!2674407 () List!73710)

(declare-fun size!42721 (List!73710) Int)

(assert (=> b!7796542 (= res!3106121 (= (size!42721 lt!2674407) (+ (size!42721 lt!2674364) (size!42721 (_2!38275 lt!2674359)))))))

(declare-fun b!7796540 () Bool)

(declare-fun e!4616246 () List!73710)

(assert (=> b!7796540 (= e!4616246 (_2!38275 lt!2674359))))

(declare-fun b!7796543 () Bool)

(assert (=> b!7796543 (= e!4616247 (or (not (= (_2!38275 lt!2674359) Nil!73586)) (= lt!2674407 lt!2674364)))))

(declare-fun b!7796541 () Bool)

(assert (=> b!7796541 (= e!4616246 (Cons!73586 (h!80034 lt!2674364) (++!17939 (t!388445 lt!2674364) (_2!38275 lt!2674359))))))

(declare-fun d!2346695 () Bool)

(assert (=> d!2346695 e!4616247))

(declare-fun res!3106122 () Bool)

(assert (=> d!2346695 (=> (not res!3106122) (not e!4616247))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15618 (List!73710) (InoxSet C!42068))

(assert (=> d!2346695 (= res!3106122 (= (content!15618 lt!2674407) ((_ map or) (content!15618 lt!2674364) (content!15618 (_2!38275 lt!2674359)))))))

(assert (=> d!2346695 (= lt!2674407 e!4616246)))

(declare-fun c!1435919 () Bool)

(assert (=> d!2346695 (= c!1435919 ((_ is Nil!73586) lt!2674364))))

(assert (=> d!2346695 (= (++!17939 lt!2674364 (_2!38275 lt!2674359)) lt!2674407)))

(assert (= (and d!2346695 c!1435919) b!7796540))

(assert (= (and d!2346695 (not c!1435919)) b!7796541))

(assert (= (and d!2346695 res!3106122) b!7796542))

(assert (= (and b!7796542 res!3106121) b!7796543))

(declare-fun m!8234966 () Bool)

(assert (=> b!7796542 m!8234966))

(declare-fun m!8234968 () Bool)

(assert (=> b!7796542 m!8234968))

(declare-fun m!8234970 () Bool)

(assert (=> b!7796542 m!8234970))

(declare-fun m!8234972 () Bool)

(assert (=> b!7796541 m!8234972))

(declare-fun m!8234974 () Bool)

(assert (=> d!2346695 m!8234974))

(declare-fun m!8234976 () Bool)

(assert (=> d!2346695 m!8234976))

(declare-fun m!8234978 () Bool)

(assert (=> d!2346695 m!8234978))

(assert (=> b!7796101 d!2346695))

(declare-fun d!2346697 () Bool)

(declare-fun isEmpty!42233 (Option!17766) Bool)

(assert (=> d!2346697 (= (isDefined!14376 lt!2674356) (not (isEmpty!42233 lt!2674356)))))

(declare-fun bs!1966408 () Bool)

(assert (= bs!1966408 d!2346697))

(declare-fun m!8234980 () Bool)

(assert (=> bs!1966408 m!8234980))

(assert (=> b!7796101 d!2346697))

(declare-fun b!7796630 () Bool)

(declare-fun e!4616284 () Option!17766)

(declare-fun e!4616281 () Option!17766)

(assert (=> b!7796630 (= e!4616284 e!4616281)))

(declare-fun c!1435928 () Bool)

(assert (=> b!7796630 (= c!1435928 ((_ is Nil!73586) (t!388445 s!14292)))))

(declare-fun b!7796631 () Bool)

(declare-fun e!4616282 () Bool)

(declare-fun lt!2674423 () Option!17766)

(assert (=> b!7796631 (= e!4616282 (not (isDefined!14376 lt!2674423)))))

(declare-fun b!7796632 () Bool)

(declare-fun res!3106141 () Bool)

(declare-fun e!4616280 () Bool)

(assert (=> b!7796632 (=> (not res!3106141) (not e!4616280))))

(assert (=> b!7796632 (= res!3106141 (matchR!10331 lt!2674358 (_1!38275 (get!26326 lt!2674423))))))

(declare-fun b!7796633 () Bool)

(declare-fun res!3106142 () Bool)

(assert (=> b!7796633 (=> (not res!3106142) (not e!4616280))))

(assert (=> b!7796633 (= res!3106142 (matchR!10331 r2!6217 (_2!38275 (get!26326 lt!2674423))))))

(declare-fun d!2346699 () Bool)

(assert (=> d!2346699 e!4616282))

(declare-fun res!3106143 () Bool)

(assert (=> d!2346699 (=> res!3106143 e!4616282)))

(assert (=> d!2346699 (= res!3106143 e!4616280)))

(declare-fun res!3106144 () Bool)

(assert (=> d!2346699 (=> (not res!3106144) (not e!4616280))))

(assert (=> d!2346699 (= res!3106144 (isDefined!14376 lt!2674423))))

(assert (=> d!2346699 (= lt!2674423 e!4616284)))

(declare-fun c!1435927 () Bool)

(declare-fun e!4616283 () Bool)

(assert (=> d!2346699 (= c!1435927 e!4616283)))

(declare-fun res!3106140 () Bool)

(assert (=> d!2346699 (=> (not res!3106140) (not e!4616283))))

(assert (=> d!2346699 (= res!3106140 (matchR!10331 lt!2674358 Nil!73586))))

(assert (=> d!2346699 (validRegex!11285 lt!2674358)))

(assert (=> d!2346699 (= (findConcatSeparation!3796 lt!2674358 r2!6217 Nil!73586 (t!388445 s!14292) (t!388445 s!14292)) lt!2674423)))

(declare-fun b!7796634 () Bool)

(declare-fun lt!2674422 () Unit!168588)

(declare-fun lt!2674421 () Unit!168588)

(assert (=> b!7796634 (= lt!2674422 lt!2674421)))

(assert (=> b!7796634 (= (++!17939 (++!17939 Nil!73586 (Cons!73586 (h!80034 (t!388445 s!14292)) Nil!73586)) (t!388445 (t!388445 s!14292))) (t!388445 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3410 (List!73710 C!42068 List!73710 List!73710) Unit!168588)

(assert (=> b!7796634 (= lt!2674421 (lemmaMoveElementToOtherListKeepsConcatEq!3410 Nil!73586 (h!80034 (t!388445 s!14292)) (t!388445 (t!388445 s!14292)) (t!388445 s!14292)))))

(assert (=> b!7796634 (= e!4616281 (findConcatSeparation!3796 lt!2674358 r2!6217 (++!17939 Nil!73586 (Cons!73586 (h!80034 (t!388445 s!14292)) Nil!73586)) (t!388445 (t!388445 s!14292)) (t!388445 s!14292)))))

(declare-fun b!7796635 () Bool)

(assert (=> b!7796635 (= e!4616284 (Some!17765 (tuple2!69945 Nil!73586 (t!388445 s!14292))))))

(declare-fun b!7796636 () Bool)

(assert (=> b!7796636 (= e!4616280 (= (++!17939 (_1!38275 (get!26326 lt!2674423)) (_2!38275 (get!26326 lt!2674423))) (t!388445 s!14292)))))

(declare-fun b!7796637 () Bool)

(assert (=> b!7796637 (= e!4616283 (matchR!10331 r2!6217 (t!388445 s!14292)))))

(declare-fun b!7796638 () Bool)

(assert (=> b!7796638 (= e!4616281 None!17765)))

(assert (= (and d!2346699 res!3106140) b!7796637))

(assert (= (and d!2346699 c!1435927) b!7796635))

(assert (= (and d!2346699 (not c!1435927)) b!7796630))

(assert (= (and b!7796630 c!1435928) b!7796638))

(assert (= (and b!7796630 (not c!1435928)) b!7796634))

(assert (= (and d!2346699 res!3106144) b!7796632))

(assert (= (and b!7796632 res!3106141) b!7796633))

(assert (= (and b!7796633 res!3106142) b!7796636))

(assert (= (and d!2346699 (not res!3106143)) b!7796631))

(declare-fun m!8235024 () Bool)

(assert (=> d!2346699 m!8235024))

(declare-fun m!8235026 () Bool)

(assert (=> d!2346699 m!8235026))

(declare-fun m!8235028 () Bool)

(assert (=> d!2346699 m!8235028))

(declare-fun m!8235030 () Bool)

(assert (=> b!7796633 m!8235030))

(declare-fun m!8235032 () Bool)

(assert (=> b!7796633 m!8235032))

(assert (=> b!7796631 m!8235024))

(declare-fun m!8235034 () Bool)

(assert (=> b!7796637 m!8235034))

(declare-fun m!8235036 () Bool)

(assert (=> b!7796634 m!8235036))

(assert (=> b!7796634 m!8235036))

(declare-fun m!8235038 () Bool)

(assert (=> b!7796634 m!8235038))

(declare-fun m!8235040 () Bool)

(assert (=> b!7796634 m!8235040))

(assert (=> b!7796634 m!8235036))

(declare-fun m!8235042 () Bool)

(assert (=> b!7796634 m!8235042))

(assert (=> b!7796636 m!8235030))

(declare-fun m!8235044 () Bool)

(assert (=> b!7796636 m!8235044))

(assert (=> b!7796632 m!8235030))

(declare-fun m!8235046 () Bool)

(assert (=> b!7796632 m!8235046))

(assert (=> b!7796101 d!2346699))

(declare-fun d!2346707 () Bool)

(assert (=> d!2346707 (= (get!26326 lt!2674356) (v!54900 lt!2674356))))

(assert (=> b!7796101 d!2346707))

(declare-fun d!2346709 () Bool)

(assert (=> d!2346709 (isDefined!14376 (findConcatSeparation!3796 lt!2674358 r2!6217 Nil!73586 (t!388445 s!14292) (t!388445 s!14292)))))

(declare-fun lt!2674426 () Unit!168588)

(declare-fun choose!59536 (Regex!20871 Regex!20871 List!73710) Unit!168588)

(assert (=> d!2346709 (= lt!2674426 (choose!59536 lt!2674358 r2!6217 (t!388445 s!14292)))))

(assert (=> d!2346709 (validRegex!11285 lt!2674358)))

(assert (=> d!2346709 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!380 lt!2674358 r2!6217 (t!388445 s!14292)) lt!2674426)))

(declare-fun bs!1966411 () Bool)

(assert (= bs!1966411 d!2346709))

(assert (=> bs!1966411 m!8234714))

(assert (=> bs!1966411 m!8234714))

(declare-fun m!8235048 () Bool)

(assert (=> bs!1966411 m!8235048))

(declare-fun m!8235050 () Bool)

(assert (=> bs!1966411 m!8235050))

(assert (=> bs!1966411 m!8235028))

(assert (=> b!7796101 d!2346709))

(declare-fun b!7796639 () Bool)

(declare-fun e!4616290 () Bool)

(assert (=> b!7796639 (= e!4616290 (matchR!10331 (derivativeStep!6208 lt!2674360 (head!15948 (t!388445 s!14292))) (tail!15489 (t!388445 s!14292))))))

(declare-fun d!2346711 () Bool)

(declare-fun e!4616291 () Bool)

(assert (=> d!2346711 e!4616291))

(declare-fun c!1435931 () Bool)

(assert (=> d!2346711 (= c!1435931 ((_ is EmptyExpr!20871) lt!2674360))))

(declare-fun lt!2674427 () Bool)

(assert (=> d!2346711 (= lt!2674427 e!4616290)))

(declare-fun c!1435930 () Bool)

(assert (=> d!2346711 (= c!1435930 (isEmpty!42231 (t!388445 s!14292)))))

(assert (=> d!2346711 (validRegex!11285 lt!2674360)))

(assert (=> d!2346711 (= (matchR!10331 lt!2674360 (t!388445 s!14292)) lt!2674427)))

(declare-fun b!7796640 () Bool)

(declare-fun res!3106149 () Bool)

(declare-fun e!4616287 () Bool)

(assert (=> b!7796640 (=> res!3106149 e!4616287)))

(declare-fun e!4616285 () Bool)

(assert (=> b!7796640 (= res!3106149 e!4616285)))

(declare-fun res!3106148 () Bool)

(assert (=> b!7796640 (=> (not res!3106148) (not e!4616285))))

(assert (=> b!7796640 (= res!3106148 lt!2674427)))

(declare-fun b!7796641 () Bool)

(assert (=> b!7796641 (= e!4616285 (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674360)))))

(declare-fun b!7796642 () Bool)

(declare-fun e!4616289 () Bool)

(assert (=> b!7796642 (= e!4616289 (not lt!2674427))))

(declare-fun b!7796643 () Bool)

(declare-fun call!722832 () Bool)

(assert (=> b!7796643 (= e!4616291 (= lt!2674427 call!722832))))

(declare-fun b!7796644 () Bool)

(declare-fun e!4616286 () Bool)

(assert (=> b!7796644 (= e!4616287 e!4616286)))

(declare-fun res!3106152 () Bool)

(assert (=> b!7796644 (=> (not res!3106152) (not e!4616286))))

(assert (=> b!7796644 (= res!3106152 (not lt!2674427))))

(declare-fun b!7796645 () Bool)

(declare-fun res!3106150 () Bool)

(declare-fun e!4616288 () Bool)

(assert (=> b!7796645 (=> res!3106150 e!4616288)))

(assert (=> b!7796645 (= res!3106150 (not (isEmpty!42231 (tail!15489 (t!388445 s!14292)))))))

(declare-fun b!7796646 () Bool)

(declare-fun res!3106146 () Bool)

(assert (=> b!7796646 (=> (not res!3106146) (not e!4616285))))

(assert (=> b!7796646 (= res!3106146 (isEmpty!42231 (tail!15489 (t!388445 s!14292))))))

(declare-fun b!7796647 () Bool)

(declare-fun res!3106151 () Bool)

(assert (=> b!7796647 (=> res!3106151 e!4616287)))

(assert (=> b!7796647 (= res!3106151 (not ((_ is ElementMatch!20871) lt!2674360)))))

(assert (=> b!7796647 (= e!4616289 e!4616287)))

(declare-fun bm!722827 () Bool)

(assert (=> bm!722827 (= call!722832 (isEmpty!42231 (t!388445 s!14292)))))

(declare-fun b!7796648 () Bool)

(assert (=> b!7796648 (= e!4616288 (not (= (head!15948 (t!388445 s!14292)) (c!1435798 lt!2674360))))))

(declare-fun b!7796649 () Bool)

(assert (=> b!7796649 (= e!4616286 e!4616288)))

(declare-fun res!3106147 () Bool)

(assert (=> b!7796649 (=> res!3106147 e!4616288)))

(assert (=> b!7796649 (= res!3106147 call!722832)))

(declare-fun b!7796650 () Bool)

(assert (=> b!7796650 (= e!4616290 (nullable!9255 lt!2674360))))

(declare-fun b!7796651 () Bool)

(assert (=> b!7796651 (= e!4616291 e!4616289)))

(declare-fun c!1435929 () Bool)

(assert (=> b!7796651 (= c!1435929 ((_ is EmptyLang!20871) lt!2674360))))

(declare-fun b!7796652 () Bool)

(declare-fun res!3106145 () Bool)

(assert (=> b!7796652 (=> (not res!3106145) (not e!4616285))))

(assert (=> b!7796652 (= res!3106145 (not call!722832))))

(assert (= (and d!2346711 c!1435930) b!7796650))

(assert (= (and d!2346711 (not c!1435930)) b!7796639))

(assert (= (and d!2346711 c!1435931) b!7796643))

(assert (= (and d!2346711 (not c!1435931)) b!7796651))

(assert (= (and b!7796651 c!1435929) b!7796642))

(assert (= (and b!7796651 (not c!1435929)) b!7796647))

(assert (= (and b!7796647 (not res!3106151)) b!7796640))

(assert (= (and b!7796640 res!3106148) b!7796652))

(assert (= (and b!7796652 res!3106145) b!7796646))

(assert (= (and b!7796646 res!3106146) b!7796641))

(assert (= (and b!7796640 (not res!3106149)) b!7796644))

(assert (= (and b!7796644 res!3106152) b!7796649))

(assert (= (and b!7796649 (not res!3106147)) b!7796645))

(assert (= (and b!7796645 (not res!3106150)) b!7796648))

(assert (= (or b!7796643 b!7796649 b!7796652) bm!722827))

(assert (=> b!7796639 m!8234852))

(assert (=> b!7796639 m!8234852))

(declare-fun m!8235052 () Bool)

(assert (=> b!7796639 m!8235052))

(assert (=> b!7796639 m!8234856))

(assert (=> b!7796639 m!8235052))

(assert (=> b!7796639 m!8234856))

(declare-fun m!8235054 () Bool)

(assert (=> b!7796639 m!8235054))

(assert (=> b!7796648 m!8234852))

(declare-fun m!8235056 () Bool)

(assert (=> b!7796650 m!8235056))

(assert (=> b!7796646 m!8234856))

(assert (=> b!7796646 m!8234856))

(assert (=> b!7796646 m!8234862))

(assert (=> bm!722827 m!8234864))

(assert (=> b!7796645 m!8234856))

(assert (=> b!7796645 m!8234856))

(assert (=> b!7796645 m!8234862))

(assert (=> b!7796641 m!8234852))

(assert (=> d!2346711 m!8234864))

(declare-fun m!8235058 () Bool)

(assert (=> d!2346711 m!8235058))

(assert (=> b!7796080 d!2346711))

(declare-fun d!2346713 () Bool)

(declare-fun e!4616296 () Bool)

(assert (=> d!2346713 e!4616296))

(declare-fun res!3106157 () Bool)

(assert (=> d!2346713 (=> res!3106157 e!4616296)))

(assert (=> d!2346713 (= res!3106157 (matchR!10331 lt!2674360 (t!388445 s!14292)))))

(declare-fun lt!2674430 () Unit!168588)

(declare-fun choose!59537 (Regex!20871 Regex!20871 List!73710) Unit!168588)

(assert (=> d!2346713 (= lt!2674430 (choose!59537 lt!2674360 lt!2674362 (t!388445 s!14292)))))

(declare-fun e!4616297 () Bool)

(assert (=> d!2346713 e!4616297))

(declare-fun res!3106158 () Bool)

(assert (=> d!2346713 (=> (not res!3106158) (not e!4616297))))

(assert (=> d!2346713 (= res!3106158 (validRegex!11285 lt!2674360))))

(assert (=> d!2346713 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!414 lt!2674360 lt!2674362 (t!388445 s!14292)) lt!2674430)))

(declare-fun b!7796657 () Bool)

(assert (=> b!7796657 (= e!4616297 (validRegex!11285 lt!2674362))))

(declare-fun b!7796658 () Bool)

(assert (=> b!7796658 (= e!4616296 (matchR!10331 lt!2674362 (t!388445 s!14292)))))

(assert (= (and d!2346713 res!3106158) b!7796657))

(assert (= (and d!2346713 (not res!3106157)) b!7796658))

(assert (=> d!2346713 m!8234692))

(declare-fun m!8235060 () Bool)

(assert (=> d!2346713 m!8235060))

(assert (=> d!2346713 m!8235058))

(assert (=> b!7796657 m!8234946))

(assert (=> b!7796658 m!8234702))

(assert (=> b!7796080 d!2346713))

(declare-fun b!7796670 () Bool)

(declare-fun e!4616304 () Bool)

(assert (=> b!7796670 (= e!4616304 (>= (size!42721 lt!2674364) (size!42721 Nil!73586)))))

(declare-fun b!7796669 () Bool)

(declare-fun e!4616305 () Bool)

(assert (=> b!7796669 (= e!4616305 (isPrefix!6261 (tail!15489 Nil!73586) (tail!15489 lt!2674364)))))

(declare-fun b!7796668 () Bool)

(declare-fun res!3106167 () Bool)

(assert (=> b!7796668 (=> (not res!3106167) (not e!4616305))))

(assert (=> b!7796668 (= res!3106167 (= (head!15948 Nil!73586) (head!15948 lt!2674364)))))

(declare-fun b!7796667 () Bool)

(declare-fun e!4616306 () Bool)

(assert (=> b!7796667 (= e!4616306 e!4616305)))

(declare-fun res!3106169 () Bool)

(assert (=> b!7796667 (=> (not res!3106169) (not e!4616305))))

(assert (=> b!7796667 (= res!3106169 (not ((_ is Nil!73586) lt!2674364)))))

(declare-fun d!2346715 () Bool)

(assert (=> d!2346715 e!4616304))

(declare-fun res!3106168 () Bool)

(assert (=> d!2346715 (=> res!3106168 e!4616304)))

(declare-fun lt!2674433 () Bool)

(assert (=> d!2346715 (= res!3106168 (not lt!2674433))))

(assert (=> d!2346715 (= lt!2674433 e!4616306)))

(declare-fun res!3106170 () Bool)

(assert (=> d!2346715 (=> res!3106170 e!4616306)))

(assert (=> d!2346715 (= res!3106170 ((_ is Nil!73586) Nil!73586))))

(assert (=> d!2346715 (= (isPrefix!6261 Nil!73586 lt!2674364) lt!2674433)))

(assert (= (and d!2346715 (not res!3106170)) b!7796667))

(assert (= (and b!7796667 res!3106169) b!7796668))

(assert (= (and b!7796668 res!3106167) b!7796669))

(assert (= (and d!2346715 (not res!3106168)) b!7796670))

(assert (=> b!7796670 m!8234968))

(declare-fun m!8235062 () Bool)

(assert (=> b!7796670 m!8235062))

(declare-fun m!8235064 () Bool)

(assert (=> b!7796669 m!8235064))

(assert (=> b!7796669 m!8234916))

(assert (=> b!7796669 m!8235064))

(assert (=> b!7796669 m!8234916))

(declare-fun m!8235066 () Bool)

(assert (=> b!7796669 m!8235066))

(declare-fun m!8235068 () Bool)

(assert (=> b!7796668 m!8235068))

(assert (=> b!7796668 m!8234912))

(assert (=> b!7796091 d!2346715))

(declare-fun b!7796673 () Bool)

(declare-fun res!3106171 () Bool)

(declare-fun e!4616308 () Bool)

(assert (=> b!7796673 (=> (not res!3106171) (not e!4616308))))

(declare-fun lt!2674434 () List!73710)

(assert (=> b!7796673 (= res!3106171 (= (size!42721 lt!2674434) (+ (size!42721 Nil!73586) (size!42721 s!14292))))))

(declare-fun b!7796671 () Bool)

(declare-fun e!4616307 () List!73710)

(assert (=> b!7796671 (= e!4616307 s!14292)))

(declare-fun b!7796674 () Bool)

(assert (=> b!7796674 (= e!4616308 (or (not (= s!14292 Nil!73586)) (= lt!2674434 Nil!73586)))))

(declare-fun b!7796672 () Bool)

(assert (=> b!7796672 (= e!4616307 (Cons!73586 (h!80034 Nil!73586) (++!17939 (t!388445 Nil!73586) s!14292)))))

(declare-fun d!2346717 () Bool)

(assert (=> d!2346717 e!4616308))

(declare-fun res!3106172 () Bool)

(assert (=> d!2346717 (=> (not res!3106172) (not e!4616308))))

(assert (=> d!2346717 (= res!3106172 (= (content!15618 lt!2674434) ((_ map or) (content!15618 Nil!73586) (content!15618 s!14292))))))

(assert (=> d!2346717 (= lt!2674434 e!4616307)))

(declare-fun c!1435932 () Bool)

(assert (=> d!2346717 (= c!1435932 ((_ is Nil!73586) Nil!73586))))

(assert (=> d!2346717 (= (++!17939 Nil!73586 s!14292) lt!2674434)))

(assert (= (and d!2346717 c!1435932) b!7796671))

(assert (= (and d!2346717 (not c!1435932)) b!7796672))

(assert (= (and d!2346717 res!3106172) b!7796673))

(assert (= (and b!7796673 res!3106171) b!7796674))

(declare-fun m!8235070 () Bool)

(assert (=> b!7796673 m!8235070))

(assert (=> b!7796673 m!8235062))

(declare-fun m!8235072 () Bool)

(assert (=> b!7796673 m!8235072))

(declare-fun m!8235074 () Bool)

(assert (=> b!7796672 m!8235074))

(declare-fun m!8235076 () Bool)

(assert (=> d!2346717 m!8235076))

(declare-fun m!8235078 () Bool)

(assert (=> d!2346717 m!8235078))

(declare-fun m!8235080 () Bool)

(assert (=> d!2346717 m!8235080))

(assert (=> b!7796092 d!2346717))

(declare-fun b!7796685 () Bool)

(declare-fun e!4616311 () Bool)

(assert (=> b!7796685 (= e!4616311 tp_is_empty!52097)))

(declare-fun b!7796688 () Bool)

(declare-fun tp!2295217 () Bool)

(declare-fun tp!2295218 () Bool)

(assert (=> b!7796688 (= e!4616311 (and tp!2295217 tp!2295218))))

(declare-fun b!7796687 () Bool)

(declare-fun tp!2295216 () Bool)

(assert (=> b!7796687 (= e!4616311 tp!2295216)))

(assert (=> b!7796088 (= tp!2295133 e!4616311)))

(declare-fun b!7796686 () Bool)

(declare-fun tp!2295215 () Bool)

(declare-fun tp!2295219 () Bool)

(assert (=> b!7796686 (= e!4616311 (and tp!2295215 tp!2295219))))

(assert (= (and b!7796088 ((_ is ElementMatch!20871) (regOne!42254 r1!6279))) b!7796685))

(assert (= (and b!7796088 ((_ is Concat!29716) (regOne!42254 r1!6279))) b!7796686))

(assert (= (and b!7796088 ((_ is Star!20871) (regOne!42254 r1!6279))) b!7796687))

(assert (= (and b!7796088 ((_ is Union!20871) (regOne!42254 r1!6279))) b!7796688))

(declare-fun b!7796689 () Bool)

(declare-fun e!4616312 () Bool)

(assert (=> b!7796689 (= e!4616312 tp_is_empty!52097)))

(declare-fun b!7796692 () Bool)

(declare-fun tp!2295222 () Bool)

(declare-fun tp!2295223 () Bool)

(assert (=> b!7796692 (= e!4616312 (and tp!2295222 tp!2295223))))

(declare-fun b!7796691 () Bool)

(declare-fun tp!2295221 () Bool)

(assert (=> b!7796691 (= e!4616312 tp!2295221)))

(assert (=> b!7796088 (= tp!2295134 e!4616312)))

(declare-fun b!7796690 () Bool)

(declare-fun tp!2295220 () Bool)

(declare-fun tp!2295224 () Bool)

(assert (=> b!7796690 (= e!4616312 (and tp!2295220 tp!2295224))))

(assert (= (and b!7796088 ((_ is ElementMatch!20871) (regTwo!42254 r1!6279))) b!7796689))

(assert (= (and b!7796088 ((_ is Concat!29716) (regTwo!42254 r1!6279))) b!7796690))

(assert (= (and b!7796088 ((_ is Star!20871) (regTwo!42254 r1!6279))) b!7796691))

(assert (= (and b!7796088 ((_ is Union!20871) (regTwo!42254 r1!6279))) b!7796692))

(declare-fun b!7796693 () Bool)

(declare-fun e!4616313 () Bool)

(assert (=> b!7796693 (= e!4616313 tp_is_empty!52097)))

(declare-fun b!7796696 () Bool)

(declare-fun tp!2295227 () Bool)

(declare-fun tp!2295228 () Bool)

(assert (=> b!7796696 (= e!4616313 (and tp!2295227 tp!2295228))))

(declare-fun b!7796695 () Bool)

(declare-fun tp!2295226 () Bool)

(assert (=> b!7796695 (= e!4616313 tp!2295226)))

(assert (=> b!7796089 (= tp!2295138 e!4616313)))

(declare-fun b!7796694 () Bool)

(declare-fun tp!2295225 () Bool)

(declare-fun tp!2295229 () Bool)

(assert (=> b!7796694 (= e!4616313 (and tp!2295225 tp!2295229))))

(assert (= (and b!7796089 ((_ is ElementMatch!20871) (regOne!42255 r2!6217))) b!7796693))

(assert (= (and b!7796089 ((_ is Concat!29716) (regOne!42255 r2!6217))) b!7796694))

(assert (= (and b!7796089 ((_ is Star!20871) (regOne!42255 r2!6217))) b!7796695))

(assert (= (and b!7796089 ((_ is Union!20871) (regOne!42255 r2!6217))) b!7796696))

(declare-fun b!7796697 () Bool)

(declare-fun e!4616314 () Bool)

(assert (=> b!7796697 (= e!4616314 tp_is_empty!52097)))

(declare-fun b!7796700 () Bool)

(declare-fun tp!2295232 () Bool)

(declare-fun tp!2295233 () Bool)

(assert (=> b!7796700 (= e!4616314 (and tp!2295232 tp!2295233))))

(declare-fun b!7796699 () Bool)

(declare-fun tp!2295231 () Bool)

(assert (=> b!7796699 (= e!4616314 tp!2295231)))

(assert (=> b!7796089 (= tp!2295140 e!4616314)))

(declare-fun b!7796698 () Bool)

(declare-fun tp!2295230 () Bool)

(declare-fun tp!2295234 () Bool)

(assert (=> b!7796698 (= e!4616314 (and tp!2295230 tp!2295234))))

(assert (= (and b!7796089 ((_ is ElementMatch!20871) (regTwo!42255 r2!6217))) b!7796697))

(assert (= (and b!7796089 ((_ is Concat!29716) (regTwo!42255 r2!6217))) b!7796698))

(assert (= (and b!7796089 ((_ is Star!20871) (regTwo!42255 r2!6217))) b!7796699))

(assert (= (and b!7796089 ((_ is Union!20871) (regTwo!42255 r2!6217))) b!7796700))

(declare-fun b!7796701 () Bool)

(declare-fun e!4616315 () Bool)

(assert (=> b!7796701 (= e!4616315 tp_is_empty!52097)))

(declare-fun b!7796704 () Bool)

(declare-fun tp!2295237 () Bool)

(declare-fun tp!2295238 () Bool)

(assert (=> b!7796704 (= e!4616315 (and tp!2295237 tp!2295238))))

(declare-fun b!7796703 () Bool)

(declare-fun tp!2295236 () Bool)

(assert (=> b!7796703 (= e!4616315 tp!2295236)))

(assert (=> b!7796100 (= tp!2295136 e!4616315)))

(declare-fun b!7796702 () Bool)

(declare-fun tp!2295235 () Bool)

(declare-fun tp!2295239 () Bool)

(assert (=> b!7796702 (= e!4616315 (and tp!2295235 tp!2295239))))

(assert (= (and b!7796100 ((_ is ElementMatch!20871) (reg!21200 r1!6279))) b!7796701))

(assert (= (and b!7796100 ((_ is Concat!29716) (reg!21200 r1!6279))) b!7796702))

(assert (= (and b!7796100 ((_ is Star!20871) (reg!21200 r1!6279))) b!7796703))

(assert (= (and b!7796100 ((_ is Union!20871) (reg!21200 r1!6279))) b!7796704))

(declare-fun b!7796705 () Bool)

(declare-fun e!4616316 () Bool)

(assert (=> b!7796705 (= e!4616316 tp_is_empty!52097)))

(declare-fun b!7796708 () Bool)

(declare-fun tp!2295242 () Bool)

(declare-fun tp!2295243 () Bool)

(assert (=> b!7796708 (= e!4616316 (and tp!2295242 tp!2295243))))

(declare-fun b!7796707 () Bool)

(declare-fun tp!2295241 () Bool)

(assert (=> b!7796707 (= e!4616316 tp!2295241)))

(assert (=> b!7796084 (= tp!2295139 e!4616316)))

(declare-fun b!7796706 () Bool)

(declare-fun tp!2295240 () Bool)

(declare-fun tp!2295244 () Bool)

(assert (=> b!7796706 (= e!4616316 (and tp!2295240 tp!2295244))))

(assert (= (and b!7796084 ((_ is ElementMatch!20871) (regOne!42254 r2!6217))) b!7796705))

(assert (= (and b!7796084 ((_ is Concat!29716) (regOne!42254 r2!6217))) b!7796706))

(assert (= (and b!7796084 ((_ is Star!20871) (regOne!42254 r2!6217))) b!7796707))

(assert (= (and b!7796084 ((_ is Union!20871) (regOne!42254 r2!6217))) b!7796708))

(declare-fun b!7796709 () Bool)

(declare-fun e!4616317 () Bool)

(assert (=> b!7796709 (= e!4616317 tp_is_empty!52097)))

(declare-fun b!7796712 () Bool)

(declare-fun tp!2295247 () Bool)

(declare-fun tp!2295248 () Bool)

(assert (=> b!7796712 (= e!4616317 (and tp!2295247 tp!2295248))))

(declare-fun b!7796711 () Bool)

(declare-fun tp!2295246 () Bool)

(assert (=> b!7796711 (= e!4616317 tp!2295246)))

(assert (=> b!7796084 (= tp!2295132 e!4616317)))

(declare-fun b!7796710 () Bool)

(declare-fun tp!2295245 () Bool)

(declare-fun tp!2295249 () Bool)

(assert (=> b!7796710 (= e!4616317 (and tp!2295245 tp!2295249))))

(assert (= (and b!7796084 ((_ is ElementMatch!20871) (regTwo!42254 r2!6217))) b!7796709))

(assert (= (and b!7796084 ((_ is Concat!29716) (regTwo!42254 r2!6217))) b!7796710))

(assert (= (and b!7796084 ((_ is Star!20871) (regTwo!42254 r2!6217))) b!7796711))

(assert (= (and b!7796084 ((_ is Union!20871) (regTwo!42254 r2!6217))) b!7796712))

(declare-fun b!7796717 () Bool)

(declare-fun e!4616320 () Bool)

(declare-fun tp!2295252 () Bool)

(assert (=> b!7796717 (= e!4616320 (and tp_is_empty!52097 tp!2295252))))

(assert (=> b!7796097 (= tp!2295131 e!4616320)))

(assert (= (and b!7796097 ((_ is Cons!73586) (t!388445 s!14292))) b!7796717))

(declare-fun b!7796718 () Bool)

(declare-fun e!4616321 () Bool)

(assert (=> b!7796718 (= e!4616321 tp_is_empty!52097)))

(declare-fun b!7796721 () Bool)

(declare-fun tp!2295255 () Bool)

(declare-fun tp!2295256 () Bool)

(assert (=> b!7796721 (= e!4616321 (and tp!2295255 tp!2295256))))

(declare-fun b!7796720 () Bool)

(declare-fun tp!2295254 () Bool)

(assert (=> b!7796720 (= e!4616321 tp!2295254)))

(assert (=> b!7796081 (= tp!2295135 e!4616321)))

(declare-fun b!7796719 () Bool)

(declare-fun tp!2295253 () Bool)

(declare-fun tp!2295257 () Bool)

(assert (=> b!7796719 (= e!4616321 (and tp!2295253 tp!2295257))))

(assert (= (and b!7796081 ((_ is ElementMatch!20871) (reg!21200 r2!6217))) b!7796718))

(assert (= (and b!7796081 ((_ is Concat!29716) (reg!21200 r2!6217))) b!7796719))

(assert (= (and b!7796081 ((_ is Star!20871) (reg!21200 r2!6217))) b!7796720))

(assert (= (and b!7796081 ((_ is Union!20871) (reg!21200 r2!6217))) b!7796721))

(declare-fun b!7796722 () Bool)

(declare-fun e!4616322 () Bool)

(assert (=> b!7796722 (= e!4616322 tp_is_empty!52097)))

(declare-fun b!7796725 () Bool)

(declare-fun tp!2295260 () Bool)

(declare-fun tp!2295261 () Bool)

(assert (=> b!7796725 (= e!4616322 (and tp!2295260 tp!2295261))))

(declare-fun b!7796724 () Bool)

(declare-fun tp!2295259 () Bool)

(assert (=> b!7796724 (= e!4616322 tp!2295259)))

(assert (=> b!7796087 (= tp!2295137 e!4616322)))

(declare-fun b!7796723 () Bool)

(declare-fun tp!2295258 () Bool)

(declare-fun tp!2295262 () Bool)

(assert (=> b!7796723 (= e!4616322 (and tp!2295258 tp!2295262))))

(assert (= (and b!7796087 ((_ is ElementMatch!20871) (regOne!42255 r1!6279))) b!7796722))

(assert (= (and b!7796087 ((_ is Concat!29716) (regOne!42255 r1!6279))) b!7796723))

(assert (= (and b!7796087 ((_ is Star!20871) (regOne!42255 r1!6279))) b!7796724))

(assert (= (and b!7796087 ((_ is Union!20871) (regOne!42255 r1!6279))) b!7796725))

(declare-fun b!7796726 () Bool)

(declare-fun e!4616323 () Bool)

(assert (=> b!7796726 (= e!4616323 tp_is_empty!52097)))

(declare-fun b!7796729 () Bool)

(declare-fun tp!2295265 () Bool)

(declare-fun tp!2295266 () Bool)

(assert (=> b!7796729 (= e!4616323 (and tp!2295265 tp!2295266))))

(declare-fun b!7796728 () Bool)

(declare-fun tp!2295264 () Bool)

(assert (=> b!7796728 (= e!4616323 tp!2295264)))

(assert (=> b!7796087 (= tp!2295141 e!4616323)))

(declare-fun b!7796727 () Bool)

(declare-fun tp!2295263 () Bool)

(declare-fun tp!2295267 () Bool)

(assert (=> b!7796727 (= e!4616323 (and tp!2295263 tp!2295267))))

(assert (= (and b!7796087 ((_ is ElementMatch!20871) (regTwo!42255 r1!6279))) b!7796726))

(assert (= (and b!7796087 ((_ is Concat!29716) (regTwo!42255 r1!6279))) b!7796727))

(assert (= (and b!7796087 ((_ is Star!20871) (regTwo!42255 r1!6279))) b!7796728))

(assert (= (and b!7796087 ((_ is Union!20871) (regTwo!42255 r1!6279))) b!7796729))

(check-sat (not b!7796411) (not d!2346647) (not b!7796687) (not b!7796416) (not d!2346695) (not b!7796686) (not b!7796481) (not b!7796453) (not b!7796727) (not b!7796354) (not b!7796719) (not b!7796277) (not b!7796501) (not bm!722823) (not b!7796670) (not b!7796690) (not d!2346683) (not b!7796479) (not b!7796696) (not b!7796688) (not d!2346671) (not b!7796721) (not b!7796639) (not b!7796390) (not b!7796488) (not b!7796486) (not b!7796414) (not bm!722801) (not b!7796711) (not b!7796728) (not d!2346641) (not b!7796698) (not b!7796449) (not b!7796658) (not b!7796648) (not b!7796632) (not b!7796542) (not b!7796720) (not b!7796712) (not d!2346713) (not b!7796275) (not bm!722813) (not b!7796699) (not b!7796388) (not b!7796407) (not b!7796405) (not b!7796169) (not b!7796692) (not bm!722824) (not b!7796266) (not b!7796694) (not bm!722799) (not b!7796636) (not d!2346687) (not b!7796387) (not d!2346697) (not b!7796283) (not d!2346669) (not b!7796710) (not b!7796723) (not b!7796691) (not b!7796400) (not b!7796645) (not b!7796451) (not b!7796268) (not bm!722818) (not b!7796702) (not b!7796633) (not b!7796673) (not d!2346677) (not b!7796631) (not bm!722809) (not b!7796717) (not b!7796444) (not d!2346673) (not b!7796704) (not b!7796729) (not b!7796541) (not b!7796700) (not b!7796703) (not bm!722826) (not b!7796381) (not bm!722827) (not b!7796707) (not b!7796672) (not bm!722759) (not d!2346717) (not b!7796383) (not b!7796637) (not b!7796725) (not b!7796669) (not b!7796412) (not b!7796485) (not b!7796668) (not b!7796708) (not d!2346699) (not bm!722765) (not d!2346645) (not d!2346711) (not bm!722786) (not b!7796650) (not b!7796641) (not b!7796646) (not b!7796179) (not b!7796634) (not b!7796695) (not b!7796442) tp_is_empty!52097 (not bm!722802) (not b!7796392) (not bm!722763) (not b!7796706) (not b!7796724) (not b!7796657) (not bm!722811) (not bm!722761) (not b!7796281) (not d!2346709) (not b!7796448) (not b!7796490))
(check-sat)
