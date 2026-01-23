; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739444 () Bool)

(assert start!739444)

(declare-fun res!3094245 () Bool)

(declare-fun e!4599854 () Bool)

(assert (=> start!739444 (=> (not res!3094245) (not e!4599854))))

(declare-datatypes ((C!41728 0))(
  ( (C!41729 (val!31304 Int)) )
))
(declare-datatypes ((Regex!20701 0))(
  ( (ElementMatch!20701 (c!1430810 C!41728)) (Concat!29546 (regOne!41914 Regex!20701) (regTwo!41914 Regex!20701)) (EmptyExpr!20701) (Star!20701 (reg!21030 Regex!20701)) (EmptyLang!20701) (Union!20701 (regOne!41915 Regex!20701) (regTwo!41915 Regex!20701)) )
))
(declare-fun r1!3330 () Regex!20701)

(declare-fun validRegex!11117 (Regex!20701) Bool)

(assert (=> start!739444 (= res!3094245 (validRegex!11117 r1!3330))))

(assert (=> start!739444 e!4599854))

(declare-fun e!4599859 () Bool)

(assert (=> start!739444 e!4599859))

(declare-fun e!4599857 () Bool)

(assert (=> start!739444 e!4599857))

(declare-fun e!4599858 () Bool)

(assert (=> start!739444 e!4599858))

(declare-fun b!7761610 () Bool)

(declare-fun tp!2279465 () Bool)

(assert (=> b!7761610 (= e!4599857 tp!2279465)))

(declare-fun b!7761611 () Bool)

(declare-fun res!3094247 () Bool)

(assert (=> b!7761611 (=> (not res!3094247) (not e!4599854))))

(declare-fun r2!3230 () Regex!20701)

(assert (=> b!7761611 (= res!3094247 (validRegex!11117 r2!3230))))

(declare-fun b!7761612 () Bool)

(declare-fun tp!2279459 () Bool)

(declare-fun tp!2279463 () Bool)

(assert (=> b!7761612 (= e!4599857 (and tp!2279459 tp!2279463))))

(declare-fun b!7761613 () Bool)

(declare-fun tp!2279464 () Bool)

(assert (=> b!7761613 (= e!4599859 tp!2279464)))

(declare-fun b!7761614 () Bool)

(declare-fun tp_is_empty!51757 () Bool)

(assert (=> b!7761614 (= e!4599859 tp_is_empty!51757)))

(declare-fun b!7761615 () Bool)

(assert (=> b!7761615 (= e!4599857 tp_is_empty!51757)))

(declare-fun b!7761616 () Bool)

(declare-fun tp!2279466 () Bool)

(declare-fun tp!2279460 () Bool)

(assert (=> b!7761616 (= e!4599859 (and tp!2279466 tp!2279460))))

(declare-fun b!7761617 () Bool)

(declare-fun e!4599855 () Bool)

(declare-fun e!4599856 () Bool)

(assert (=> b!7761617 (= e!4599855 e!4599856)))

(declare-fun res!3094248 () Bool)

(assert (=> b!7761617 (=> (not res!3094248) (not e!4599856))))

(declare-datatypes ((List!73544 0))(
  ( (Nil!73420) (Cons!73420 (h!79868 C!41728) (t!388279 List!73544)) )
))
(declare-datatypes ((tuple2!69788 0))(
  ( (tuple2!69789 (_1!38197 List!73544) (_2!38197 List!73544)) )
))
(declare-fun lt!2670412 () tuple2!69788)

(declare-fun s!10216 () List!73544)

(declare-fun ++!17876 (List!73544 List!73544) List!73544)

(assert (=> b!7761617 (= res!3094248 (= (++!17876 (_1!38197 lt!2670412) (_2!38197 lt!2670412)) s!10216))))

(declare-datatypes ((Option!17688 0))(
  ( (None!17687) (Some!17687 (v!54822 tuple2!69788)) )
))
(declare-fun lt!2670411 () Option!17688)

(declare-fun get!26182 (Option!17688) tuple2!69788)

(assert (=> b!7761617 (= lt!2670412 (get!26182 lt!2670411))))

(declare-fun b!7761618 () Bool)

(declare-fun res!3094244 () Bool)

(assert (=> b!7761618 (=> (not res!3094244) (not e!4599856))))

(declare-fun matchR!10167 (Regex!20701 List!73544) Bool)

(assert (=> b!7761618 (= res!3094244 (matchR!10167 r1!3330 (_1!38197 lt!2670412)))))

(declare-fun b!7761619 () Bool)

(declare-fun tp!2279462 () Bool)

(declare-fun tp!2279461 () Bool)

(assert (=> b!7761619 (= e!4599857 (and tp!2279462 tp!2279461))))

(declare-fun b!7761620 () Bool)

(assert (=> b!7761620 (= e!4599856 (not (matchR!10167 r2!3230 (_2!38197 lt!2670412))))))

(declare-fun b!7761621 () Bool)

(declare-fun tp!2279467 () Bool)

(assert (=> b!7761621 (= e!4599858 (and tp_is_empty!51757 tp!2279467))))

(declare-fun b!7761622 () Bool)

(assert (=> b!7761622 (= e!4599854 e!4599855)))

(declare-fun res!3094246 () Bool)

(assert (=> b!7761622 (=> (not res!3094246) (not e!4599855))))

(declare-fun isDefined!14300 (Option!17688) Bool)

(assert (=> b!7761622 (= res!3094246 (isDefined!14300 lt!2670411))))

(declare-fun findConcatSeparation!3718 (Regex!20701 Regex!20701 List!73544 List!73544 List!73544) Option!17688)

(assert (=> b!7761622 (= lt!2670411 (findConcatSeparation!3718 r1!3330 r2!3230 Nil!73420 s!10216 s!10216))))

(declare-fun b!7761623 () Bool)

(declare-fun tp!2279468 () Bool)

(declare-fun tp!2279469 () Bool)

(assert (=> b!7761623 (= e!4599859 (and tp!2279468 tp!2279469))))

(assert (= (and start!739444 res!3094245) b!7761611))

(assert (= (and b!7761611 res!3094247) b!7761622))

(assert (= (and b!7761622 res!3094246) b!7761617))

(assert (= (and b!7761617 res!3094248) b!7761618))

(assert (= (and b!7761618 res!3094244) b!7761620))

(get-info :version)

(assert (= (and start!739444 ((_ is ElementMatch!20701) r1!3330)) b!7761614))

(assert (= (and start!739444 ((_ is Concat!29546) r1!3330)) b!7761623))

(assert (= (and start!739444 ((_ is Star!20701) r1!3330)) b!7761613))

(assert (= (and start!739444 ((_ is Union!20701) r1!3330)) b!7761616))

(assert (= (and start!739444 ((_ is ElementMatch!20701) r2!3230)) b!7761615))

(assert (= (and start!739444 ((_ is Concat!29546) r2!3230)) b!7761619))

(assert (= (and start!739444 ((_ is Star!20701) r2!3230)) b!7761610))

(assert (= (and start!739444 ((_ is Union!20701) r2!3230)) b!7761612))

(assert (= (and start!739444 ((_ is Cons!73420) s!10216)) b!7761621))

(declare-fun m!8220918 () Bool)

(assert (=> b!7761611 m!8220918))

(declare-fun m!8220920 () Bool)

(assert (=> b!7761620 m!8220920))

(declare-fun m!8220922 () Bool)

(assert (=> b!7761617 m!8220922))

(declare-fun m!8220924 () Bool)

(assert (=> b!7761617 m!8220924))

(declare-fun m!8220926 () Bool)

(assert (=> b!7761618 m!8220926))

(declare-fun m!8220928 () Bool)

(assert (=> b!7761622 m!8220928))

(declare-fun m!8220930 () Bool)

(assert (=> b!7761622 m!8220930))

(declare-fun m!8220932 () Bool)

(assert (=> start!739444 m!8220932))

(check-sat (not b!7761616) (not b!7761613) (not b!7761611) (not b!7761620) (not b!7761618) (not b!7761610) (not start!739444) (not b!7761612) (not b!7761619) (not b!7761617) (not b!7761622) (not b!7761623) (not b!7761621) tp_is_empty!51757)
(check-sat)
(get-model)

(declare-fun b!7761679 () Bool)

(declare-fun e!4599900 () Bool)

(declare-fun lt!2670415 () Bool)

(declare-fun call!719194 () Bool)

(assert (=> b!7761679 (= e!4599900 (= lt!2670415 call!719194))))

(declare-fun b!7761680 () Bool)

(declare-fun res!3094286 () Bool)

(declare-fun e!4599901 () Bool)

(assert (=> b!7761680 (=> res!3094286 e!4599901)))

(declare-fun isEmpty!42085 (List!73544) Bool)

(declare-fun tail!15393 (List!73544) List!73544)

(assert (=> b!7761680 (= res!3094286 (not (isEmpty!42085 (tail!15393 (_2!38197 lt!2670412)))))))

(declare-fun b!7761681 () Bool)

(declare-fun res!3094281 () Bool)

(declare-fun e!4599899 () Bool)

(assert (=> b!7761681 (=> (not res!3094281) (not e!4599899))))

(assert (=> b!7761681 (= res!3094281 (not call!719194))))

(declare-fun b!7761682 () Bool)

(declare-fun e!4599897 () Bool)

(assert (=> b!7761682 (= e!4599897 (not lt!2670415))))

(declare-fun b!7761683 () Bool)

(declare-fun e!4599896 () Bool)

(declare-fun nullable!9111 (Regex!20701) Bool)

(assert (=> b!7761683 (= e!4599896 (nullable!9111 r2!3230))))

(declare-fun d!2343592 () Bool)

(assert (=> d!2343592 e!4599900))

(declare-fun c!1430824 () Bool)

(assert (=> d!2343592 (= c!1430824 ((_ is EmptyExpr!20701) r2!3230))))

(assert (=> d!2343592 (= lt!2670415 e!4599896)))

(declare-fun c!1430825 () Bool)

(assert (=> d!2343592 (= c!1430825 (isEmpty!42085 (_2!38197 lt!2670412)))))

(assert (=> d!2343592 (validRegex!11117 r2!3230)))

(assert (=> d!2343592 (= (matchR!10167 r2!3230 (_2!38197 lt!2670412)) lt!2670415)))

(declare-fun b!7761684 () Bool)

(declare-fun res!3094282 () Bool)

(assert (=> b!7761684 (=> (not res!3094282) (not e!4599899))))

(assert (=> b!7761684 (= res!3094282 (isEmpty!42085 (tail!15393 (_2!38197 lt!2670412))))))

(declare-fun b!7761685 () Bool)

(declare-fun head!15854 (List!73544) C!41728)

(assert (=> b!7761685 (= e!4599901 (not (= (head!15854 (_2!38197 lt!2670412)) (c!1430810 r2!3230))))))

(declare-fun b!7761686 () Bool)

(declare-fun e!4599898 () Bool)

(declare-fun e!4599895 () Bool)

(assert (=> b!7761686 (= e!4599898 e!4599895)))

(declare-fun res!3094283 () Bool)

(assert (=> b!7761686 (=> (not res!3094283) (not e!4599895))))

(assert (=> b!7761686 (= res!3094283 (not lt!2670415))))

(declare-fun b!7761687 () Bool)

(declare-fun res!3094284 () Bool)

(assert (=> b!7761687 (=> res!3094284 e!4599898)))

(assert (=> b!7761687 (= res!3094284 e!4599899)))

(declare-fun res!3094287 () Bool)

(assert (=> b!7761687 (=> (not res!3094287) (not e!4599899))))

(assert (=> b!7761687 (= res!3094287 lt!2670415)))

(declare-fun b!7761688 () Bool)

(assert (=> b!7761688 (= e!4599899 (= (head!15854 (_2!38197 lt!2670412)) (c!1430810 r2!3230)))))

(declare-fun b!7761689 () Bool)

(declare-fun res!3094285 () Bool)

(assert (=> b!7761689 (=> res!3094285 e!4599898)))

(assert (=> b!7761689 (= res!3094285 (not ((_ is ElementMatch!20701) r2!3230)))))

(assert (=> b!7761689 (= e!4599897 e!4599898)))

(declare-fun b!7761690 () Bool)

(declare-fun derivativeStep!6058 (Regex!20701 C!41728) Regex!20701)

(assert (=> b!7761690 (= e!4599896 (matchR!10167 (derivativeStep!6058 r2!3230 (head!15854 (_2!38197 lt!2670412))) (tail!15393 (_2!38197 lt!2670412))))))

(declare-fun b!7761691 () Bool)

(assert (=> b!7761691 (= e!4599895 e!4599901)))

(declare-fun res!3094280 () Bool)

(assert (=> b!7761691 (=> res!3094280 e!4599901)))

(assert (=> b!7761691 (= res!3094280 call!719194)))

(declare-fun bm!719189 () Bool)

(assert (=> bm!719189 (= call!719194 (isEmpty!42085 (_2!38197 lt!2670412)))))

(declare-fun b!7761692 () Bool)

(assert (=> b!7761692 (= e!4599900 e!4599897)))

(declare-fun c!1430823 () Bool)

(assert (=> b!7761692 (= c!1430823 ((_ is EmptyLang!20701) r2!3230))))

(assert (= (and d!2343592 c!1430825) b!7761683))

(assert (= (and d!2343592 (not c!1430825)) b!7761690))

(assert (= (and d!2343592 c!1430824) b!7761679))

(assert (= (and d!2343592 (not c!1430824)) b!7761692))

(assert (= (and b!7761692 c!1430823) b!7761682))

(assert (= (and b!7761692 (not c!1430823)) b!7761689))

(assert (= (and b!7761689 (not res!3094285)) b!7761687))

(assert (= (and b!7761687 res!3094287) b!7761681))

(assert (= (and b!7761681 res!3094281) b!7761684))

(assert (= (and b!7761684 res!3094282) b!7761688))

(assert (= (and b!7761687 (not res!3094284)) b!7761686))

(assert (= (and b!7761686 res!3094283) b!7761691))

(assert (= (and b!7761691 (not res!3094280)) b!7761680))

(assert (= (and b!7761680 (not res!3094286)) b!7761685))

(assert (= (or b!7761679 b!7761681 b!7761691) bm!719189))

(declare-fun m!8220940 () Bool)

(assert (=> b!7761690 m!8220940))

(assert (=> b!7761690 m!8220940))

(declare-fun m!8220942 () Bool)

(assert (=> b!7761690 m!8220942))

(declare-fun m!8220944 () Bool)

(assert (=> b!7761690 m!8220944))

(assert (=> b!7761690 m!8220942))

(assert (=> b!7761690 m!8220944))

(declare-fun m!8220946 () Bool)

(assert (=> b!7761690 m!8220946))

(assert (=> b!7761688 m!8220940))

(declare-fun m!8220948 () Bool)

(assert (=> bm!719189 m!8220948))

(assert (=> d!2343592 m!8220948))

(assert (=> d!2343592 m!8220918))

(assert (=> b!7761685 m!8220940))

(assert (=> b!7761680 m!8220944))

(assert (=> b!7761680 m!8220944))

(declare-fun m!8220950 () Bool)

(assert (=> b!7761680 m!8220950))

(declare-fun m!8220952 () Bool)

(assert (=> b!7761683 m!8220952))

(assert (=> b!7761684 m!8220944))

(assert (=> b!7761684 m!8220944))

(assert (=> b!7761684 m!8220950))

(assert (=> b!7761620 d!2343592))

(declare-fun bm!719199 () Bool)

(declare-fun call!719206 () Bool)

(declare-fun call!719205 () Bool)

(assert (=> bm!719199 (= call!719206 call!719205)))

(declare-fun bm!719200 () Bool)

(declare-fun c!1430840 () Bool)

(declare-fun c!1430839 () Bool)

(assert (=> bm!719200 (= call!719205 (validRegex!11117 (ite c!1430839 (reg!21030 r2!3230) (ite c!1430840 (regOne!41915 r2!3230) (regOne!41914 r2!3230)))))))

(declare-fun b!7761753 () Bool)

(declare-fun e!4599940 () Bool)

(declare-fun e!4599941 () Bool)

(assert (=> b!7761753 (= e!4599940 e!4599941)))

(declare-fun res!3094324 () Bool)

(assert (=> b!7761753 (= res!3094324 (not (nullable!9111 (reg!21030 r2!3230))))))

(assert (=> b!7761753 (=> (not res!3094324) (not e!4599941))))

(declare-fun b!7761754 () Bool)

(declare-fun res!3094325 () Bool)

(declare-fun e!4599938 () Bool)

(assert (=> b!7761754 (=> (not res!3094325) (not e!4599938))))

(assert (=> b!7761754 (= res!3094325 call!719206)))

(declare-fun e!4599937 () Bool)

(assert (=> b!7761754 (= e!4599937 e!4599938)))

(declare-fun b!7761755 () Bool)

(declare-fun res!3094323 () Bool)

(declare-fun e!4599939 () Bool)

(assert (=> b!7761755 (=> res!3094323 e!4599939)))

(assert (=> b!7761755 (= res!3094323 (not ((_ is Concat!29546) r2!3230)))))

(assert (=> b!7761755 (= e!4599937 e!4599939)))

(declare-fun b!7761756 () Bool)

(assert (=> b!7761756 (= e!4599941 call!719205)))

(declare-fun b!7761757 () Bool)

(declare-fun e!4599942 () Bool)

(assert (=> b!7761757 (= e!4599939 e!4599942)))

(declare-fun res!3094322 () Bool)

(assert (=> b!7761757 (=> (not res!3094322) (not e!4599942))))

(assert (=> b!7761757 (= res!3094322 call!719206)))

(declare-fun b!7761758 () Bool)

(declare-fun call!719204 () Bool)

(assert (=> b!7761758 (= e!4599942 call!719204)))

(declare-fun bm!719201 () Bool)

(assert (=> bm!719201 (= call!719204 (validRegex!11117 (ite c!1430840 (regTwo!41915 r2!3230) (regTwo!41914 r2!3230))))))

(declare-fun d!2343596 () Bool)

(declare-fun res!3094326 () Bool)

(declare-fun e!4599943 () Bool)

(assert (=> d!2343596 (=> res!3094326 e!4599943)))

(assert (=> d!2343596 (= res!3094326 ((_ is ElementMatch!20701) r2!3230))))

(assert (=> d!2343596 (= (validRegex!11117 r2!3230) e!4599943)))

(declare-fun b!7761759 () Bool)

(assert (=> b!7761759 (= e!4599943 e!4599940)))

(assert (=> b!7761759 (= c!1430839 ((_ is Star!20701) r2!3230))))

(declare-fun b!7761760 () Bool)

(assert (=> b!7761760 (= e!4599938 call!719204)))

(declare-fun b!7761761 () Bool)

(assert (=> b!7761761 (= e!4599940 e!4599937)))

(assert (=> b!7761761 (= c!1430840 ((_ is Union!20701) r2!3230))))

(assert (= (and d!2343596 (not res!3094326)) b!7761759))

(assert (= (and b!7761759 c!1430839) b!7761753))

(assert (= (and b!7761759 (not c!1430839)) b!7761761))

(assert (= (and b!7761753 res!3094324) b!7761756))

(assert (= (and b!7761761 c!1430840) b!7761754))

(assert (= (and b!7761761 (not c!1430840)) b!7761755))

(assert (= (and b!7761754 res!3094325) b!7761760))

(assert (= (and b!7761755 (not res!3094323)) b!7761757))

(assert (= (and b!7761757 res!3094322) b!7761758))

(assert (= (or b!7761754 b!7761757) bm!719199))

(assert (= (or b!7761760 b!7761758) bm!719201))

(assert (= (or b!7761756 bm!719199) bm!719200))

(declare-fun m!8220968 () Bool)

(assert (=> bm!719200 m!8220968))

(declare-fun m!8220972 () Bool)

(assert (=> b!7761753 m!8220972))

(declare-fun m!8220976 () Bool)

(assert (=> bm!719201 m!8220976))

(assert (=> b!7761611 d!2343596))

(declare-fun d!2343600 () Bool)

(declare-fun isEmpty!42087 (Option!17688) Bool)

(assert (=> d!2343600 (= (isDefined!14300 lt!2670411) (not (isEmpty!42087 lt!2670411)))))

(declare-fun bs!1965959 () Bool)

(assert (= bs!1965959 d!2343600))

(declare-fun m!8220980 () Bool)

(assert (=> bs!1965959 m!8220980))

(assert (=> b!7761622 d!2343600))

(declare-fun b!7761816 () Bool)

(declare-fun e!4599977 () Option!17688)

(declare-fun e!4599978 () Option!17688)

(assert (=> b!7761816 (= e!4599977 e!4599978)))

(declare-fun c!1430853 () Bool)

(assert (=> b!7761816 (= c!1430853 ((_ is Nil!73420) s!10216))))

(declare-fun d!2343604 () Bool)

(declare-fun e!4599980 () Bool)

(assert (=> d!2343604 e!4599980))

(declare-fun res!3094360 () Bool)

(assert (=> d!2343604 (=> res!3094360 e!4599980)))

(declare-fun e!4599976 () Bool)

(assert (=> d!2343604 (= res!3094360 e!4599976)))

(declare-fun res!3094357 () Bool)

(assert (=> d!2343604 (=> (not res!3094357) (not e!4599976))))

(declare-fun lt!2670436 () Option!17688)

(assert (=> d!2343604 (= res!3094357 (isDefined!14300 lt!2670436))))

(assert (=> d!2343604 (= lt!2670436 e!4599977)))

(declare-fun c!1430854 () Bool)

(declare-fun e!4599979 () Bool)

(assert (=> d!2343604 (= c!1430854 e!4599979)))

(declare-fun res!3094361 () Bool)

(assert (=> d!2343604 (=> (not res!3094361) (not e!4599979))))

(assert (=> d!2343604 (= res!3094361 (matchR!10167 r1!3330 Nil!73420))))

(assert (=> d!2343604 (validRegex!11117 r1!3330)))

(assert (=> d!2343604 (= (findConcatSeparation!3718 r1!3330 r2!3230 Nil!73420 s!10216 s!10216) lt!2670436)))

(declare-fun b!7761817 () Bool)

(declare-datatypes ((Unit!168390 0))(
  ( (Unit!168391) )
))
(declare-fun lt!2670435 () Unit!168390)

(declare-fun lt!2670434 () Unit!168390)

(assert (=> b!7761817 (= lt!2670435 lt!2670434)))

(assert (=> b!7761817 (= (++!17876 (++!17876 Nil!73420 (Cons!73420 (h!79868 s!10216) Nil!73420)) (t!388279 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3361 (List!73544 C!41728 List!73544 List!73544) Unit!168390)

(assert (=> b!7761817 (= lt!2670434 (lemmaMoveElementToOtherListKeepsConcatEq!3361 Nil!73420 (h!79868 s!10216) (t!388279 s!10216) s!10216))))

(assert (=> b!7761817 (= e!4599978 (findConcatSeparation!3718 r1!3330 r2!3230 (++!17876 Nil!73420 (Cons!73420 (h!79868 s!10216) Nil!73420)) (t!388279 s!10216) s!10216))))

(declare-fun b!7761818 () Bool)

(assert (=> b!7761818 (= e!4599976 (= (++!17876 (_1!38197 (get!26182 lt!2670436)) (_2!38197 (get!26182 lt!2670436))) s!10216))))

(declare-fun b!7761819 () Bool)

(declare-fun res!3094359 () Bool)

(assert (=> b!7761819 (=> (not res!3094359) (not e!4599976))))

(assert (=> b!7761819 (= res!3094359 (matchR!10167 r2!3230 (_2!38197 (get!26182 lt!2670436))))))

(declare-fun b!7761820 () Bool)

(assert (=> b!7761820 (= e!4599979 (matchR!10167 r2!3230 s!10216))))

(declare-fun b!7761821 () Bool)

(assert (=> b!7761821 (= e!4599977 (Some!17687 (tuple2!69789 Nil!73420 s!10216)))))

(declare-fun b!7761822 () Bool)

(assert (=> b!7761822 (= e!4599980 (not (isDefined!14300 lt!2670436)))))

(declare-fun b!7761823 () Bool)

(declare-fun res!3094358 () Bool)

(assert (=> b!7761823 (=> (not res!3094358) (not e!4599976))))

(assert (=> b!7761823 (= res!3094358 (matchR!10167 r1!3330 (_1!38197 (get!26182 lt!2670436))))))

(declare-fun b!7761824 () Bool)

(assert (=> b!7761824 (= e!4599978 None!17687)))

(assert (= (and d!2343604 res!3094361) b!7761820))

(assert (= (and d!2343604 c!1430854) b!7761821))

(assert (= (and d!2343604 (not c!1430854)) b!7761816))

(assert (= (and b!7761816 c!1430853) b!7761824))

(assert (= (and b!7761816 (not c!1430853)) b!7761817))

(assert (= (and d!2343604 res!3094357) b!7761823))

(assert (= (and b!7761823 res!3094358) b!7761819))

(assert (= (and b!7761819 res!3094359) b!7761818))

(assert (= (and d!2343604 (not res!3094360)) b!7761822))

(declare-fun m!8221006 () Bool)

(assert (=> b!7761822 m!8221006))

(declare-fun m!8221008 () Bool)

(assert (=> b!7761820 m!8221008))

(declare-fun m!8221010 () Bool)

(assert (=> b!7761823 m!8221010))

(declare-fun m!8221012 () Bool)

(assert (=> b!7761823 m!8221012))

(declare-fun m!8221014 () Bool)

(assert (=> b!7761817 m!8221014))

(assert (=> b!7761817 m!8221014))

(declare-fun m!8221016 () Bool)

(assert (=> b!7761817 m!8221016))

(declare-fun m!8221018 () Bool)

(assert (=> b!7761817 m!8221018))

(assert (=> b!7761817 m!8221014))

(declare-fun m!8221020 () Bool)

(assert (=> b!7761817 m!8221020))

(assert (=> d!2343604 m!8221006))

(declare-fun m!8221022 () Bool)

(assert (=> d!2343604 m!8221022))

(assert (=> d!2343604 m!8220932))

(assert (=> b!7761819 m!8221010))

(declare-fun m!8221024 () Bool)

(assert (=> b!7761819 m!8221024))

(assert (=> b!7761818 m!8221010))

(declare-fun m!8221026 () Bool)

(assert (=> b!7761818 m!8221026))

(assert (=> b!7761622 d!2343604))

(declare-fun b!7761887 () Bool)

(declare-fun res!3094380 () Bool)

(declare-fun e!4600004 () Bool)

(assert (=> b!7761887 (=> (not res!3094380) (not e!4600004))))

(declare-fun lt!2670443 () List!73544)

(declare-fun size!42682 (List!73544) Int)

(assert (=> b!7761887 (= res!3094380 (= (size!42682 lt!2670443) (+ (size!42682 (_1!38197 lt!2670412)) (size!42682 (_2!38197 lt!2670412)))))))

(declare-fun b!7761885 () Bool)

(declare-fun e!4600005 () List!73544)

(assert (=> b!7761885 (= e!4600005 (_2!38197 lt!2670412))))

(declare-fun b!7761886 () Bool)

(assert (=> b!7761886 (= e!4600005 (Cons!73420 (h!79868 (_1!38197 lt!2670412)) (++!17876 (t!388279 (_1!38197 lt!2670412)) (_2!38197 lt!2670412))))))

(declare-fun b!7761888 () Bool)

(assert (=> b!7761888 (= e!4600004 (or (not (= (_2!38197 lt!2670412) Nil!73420)) (= lt!2670443 (_1!38197 lt!2670412))))))

(declare-fun d!2343610 () Bool)

(assert (=> d!2343610 e!4600004))

(declare-fun res!3094381 () Bool)

(assert (=> d!2343610 (=> (not res!3094381) (not e!4600004))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15579 (List!73544) (InoxSet C!41728))

(assert (=> d!2343610 (= res!3094381 (= (content!15579 lt!2670443) ((_ map or) (content!15579 (_1!38197 lt!2670412)) (content!15579 (_2!38197 lt!2670412)))))))

(assert (=> d!2343610 (= lt!2670443 e!4600005)))

(declare-fun c!1430863 () Bool)

(assert (=> d!2343610 (= c!1430863 ((_ is Nil!73420) (_1!38197 lt!2670412)))))

(assert (=> d!2343610 (= (++!17876 (_1!38197 lt!2670412) (_2!38197 lt!2670412)) lt!2670443)))

(assert (= (and d!2343610 c!1430863) b!7761885))

(assert (= (and d!2343610 (not c!1430863)) b!7761886))

(assert (= (and d!2343610 res!3094381) b!7761887))

(assert (= (and b!7761887 res!3094380) b!7761888))

(declare-fun m!8221056 () Bool)

(assert (=> b!7761887 m!8221056))

(declare-fun m!8221058 () Bool)

(assert (=> b!7761887 m!8221058))

(declare-fun m!8221060 () Bool)

(assert (=> b!7761887 m!8221060))

(declare-fun m!8221062 () Bool)

(assert (=> b!7761886 m!8221062))

(declare-fun m!8221064 () Bool)

(assert (=> d!2343610 m!8221064))

(declare-fun m!8221066 () Bool)

(assert (=> d!2343610 m!8221066))

(declare-fun m!8221068 () Bool)

(assert (=> d!2343610 m!8221068))

(assert (=> b!7761617 d!2343610))

(declare-fun d!2343616 () Bool)

(assert (=> d!2343616 (= (get!26182 lt!2670411) (v!54822 lt!2670411))))

(assert (=> b!7761617 d!2343616))

(declare-fun b!7761910 () Bool)

(declare-fun e!4600018 () Bool)

(declare-fun lt!2670444 () Bool)

(declare-fun call!719211 () Bool)

(assert (=> b!7761910 (= e!4600018 (= lt!2670444 call!719211))))

(declare-fun b!7761911 () Bool)

(declare-fun res!3094388 () Bool)

(declare-fun e!4600019 () Bool)

(assert (=> b!7761911 (=> res!3094388 e!4600019)))

(assert (=> b!7761911 (= res!3094388 (not (isEmpty!42085 (tail!15393 (_1!38197 lt!2670412)))))))

(declare-fun b!7761912 () Bool)

(declare-fun res!3094383 () Bool)

(declare-fun e!4600017 () Bool)

(assert (=> b!7761912 (=> (not res!3094383) (not e!4600017))))

(assert (=> b!7761912 (= res!3094383 (not call!719211))))

(declare-fun b!7761913 () Bool)

(declare-fun e!4600015 () Bool)

(assert (=> b!7761913 (= e!4600015 (not lt!2670444))))

(declare-fun b!7761914 () Bool)

(declare-fun e!4600014 () Bool)

(assert (=> b!7761914 (= e!4600014 (nullable!9111 r1!3330))))

(declare-fun d!2343618 () Bool)

(assert (=> d!2343618 e!4600018))

(declare-fun c!1430865 () Bool)

(assert (=> d!2343618 (= c!1430865 ((_ is EmptyExpr!20701) r1!3330))))

(assert (=> d!2343618 (= lt!2670444 e!4600014)))

(declare-fun c!1430866 () Bool)

(assert (=> d!2343618 (= c!1430866 (isEmpty!42085 (_1!38197 lt!2670412)))))

(assert (=> d!2343618 (validRegex!11117 r1!3330)))

(assert (=> d!2343618 (= (matchR!10167 r1!3330 (_1!38197 lt!2670412)) lt!2670444)))

(declare-fun b!7761915 () Bool)

(declare-fun res!3094384 () Bool)

(assert (=> b!7761915 (=> (not res!3094384) (not e!4600017))))

(assert (=> b!7761915 (= res!3094384 (isEmpty!42085 (tail!15393 (_1!38197 lt!2670412))))))

(declare-fun b!7761916 () Bool)

(assert (=> b!7761916 (= e!4600019 (not (= (head!15854 (_1!38197 lt!2670412)) (c!1430810 r1!3330))))))

(declare-fun b!7761917 () Bool)

(declare-fun e!4600016 () Bool)

(declare-fun e!4600013 () Bool)

(assert (=> b!7761917 (= e!4600016 e!4600013)))

(declare-fun res!3094385 () Bool)

(assert (=> b!7761917 (=> (not res!3094385) (not e!4600013))))

(assert (=> b!7761917 (= res!3094385 (not lt!2670444))))

(declare-fun b!7761918 () Bool)

(declare-fun res!3094386 () Bool)

(assert (=> b!7761918 (=> res!3094386 e!4600016)))

(assert (=> b!7761918 (= res!3094386 e!4600017)))

(declare-fun res!3094389 () Bool)

(assert (=> b!7761918 (=> (not res!3094389) (not e!4600017))))

(assert (=> b!7761918 (= res!3094389 lt!2670444)))

(declare-fun b!7761919 () Bool)

(assert (=> b!7761919 (= e!4600017 (= (head!15854 (_1!38197 lt!2670412)) (c!1430810 r1!3330)))))

(declare-fun b!7761920 () Bool)

(declare-fun res!3094387 () Bool)

(assert (=> b!7761920 (=> res!3094387 e!4600016)))

(assert (=> b!7761920 (= res!3094387 (not ((_ is ElementMatch!20701) r1!3330)))))

(assert (=> b!7761920 (= e!4600015 e!4600016)))

(declare-fun b!7761921 () Bool)

(assert (=> b!7761921 (= e!4600014 (matchR!10167 (derivativeStep!6058 r1!3330 (head!15854 (_1!38197 lt!2670412))) (tail!15393 (_1!38197 lt!2670412))))))

(declare-fun b!7761922 () Bool)

(assert (=> b!7761922 (= e!4600013 e!4600019)))

(declare-fun res!3094382 () Bool)

(assert (=> b!7761922 (=> res!3094382 e!4600019)))

(assert (=> b!7761922 (= res!3094382 call!719211)))

(declare-fun bm!719206 () Bool)

(assert (=> bm!719206 (= call!719211 (isEmpty!42085 (_1!38197 lt!2670412)))))

(declare-fun b!7761923 () Bool)

(assert (=> b!7761923 (= e!4600018 e!4600015)))

(declare-fun c!1430864 () Bool)

(assert (=> b!7761923 (= c!1430864 ((_ is EmptyLang!20701) r1!3330))))

(assert (= (and d!2343618 c!1430866) b!7761914))

(assert (= (and d!2343618 (not c!1430866)) b!7761921))

(assert (= (and d!2343618 c!1430865) b!7761910))

(assert (= (and d!2343618 (not c!1430865)) b!7761923))

(assert (= (and b!7761923 c!1430864) b!7761913))

(assert (= (and b!7761923 (not c!1430864)) b!7761920))

(assert (= (and b!7761920 (not res!3094387)) b!7761918))

(assert (= (and b!7761918 res!3094389) b!7761912))

(assert (= (and b!7761912 res!3094383) b!7761915))

(assert (= (and b!7761915 res!3094384) b!7761919))

(assert (= (and b!7761918 (not res!3094386)) b!7761917))

(assert (= (and b!7761917 res!3094385) b!7761922))

(assert (= (and b!7761922 (not res!3094382)) b!7761911))

(assert (= (and b!7761911 (not res!3094388)) b!7761916))

(assert (= (or b!7761910 b!7761912 b!7761922) bm!719206))

(declare-fun m!8221070 () Bool)

(assert (=> b!7761921 m!8221070))

(assert (=> b!7761921 m!8221070))

(declare-fun m!8221072 () Bool)

(assert (=> b!7761921 m!8221072))

(declare-fun m!8221074 () Bool)

(assert (=> b!7761921 m!8221074))

(assert (=> b!7761921 m!8221072))

(assert (=> b!7761921 m!8221074))

(declare-fun m!8221076 () Bool)

(assert (=> b!7761921 m!8221076))

(assert (=> b!7761919 m!8221070))

(declare-fun m!8221078 () Bool)

(assert (=> bm!719206 m!8221078))

(assert (=> d!2343618 m!8221078))

(assert (=> d!2343618 m!8220932))

(assert (=> b!7761916 m!8221070))

(assert (=> b!7761911 m!8221074))

(assert (=> b!7761911 m!8221074))

(declare-fun m!8221080 () Bool)

(assert (=> b!7761911 m!8221080))

(declare-fun m!8221082 () Bool)

(assert (=> b!7761914 m!8221082))

(assert (=> b!7761915 m!8221074))

(assert (=> b!7761915 m!8221074))

(assert (=> b!7761915 m!8221080))

(assert (=> b!7761618 d!2343618))

(declare-fun bm!719207 () Bool)

(declare-fun call!719214 () Bool)

(declare-fun call!719213 () Bool)

(assert (=> bm!719207 (= call!719214 call!719213)))

(declare-fun c!1430867 () Bool)

(declare-fun c!1430868 () Bool)

(declare-fun bm!719208 () Bool)

(assert (=> bm!719208 (= call!719213 (validRegex!11117 (ite c!1430867 (reg!21030 r1!3330) (ite c!1430868 (regOne!41915 r1!3330) (regOne!41914 r1!3330)))))))

(declare-fun b!7761932 () Bool)

(declare-fun e!4600025 () Bool)

(declare-fun e!4600026 () Bool)

(assert (=> b!7761932 (= e!4600025 e!4600026)))

(declare-fun res!3094392 () Bool)

(assert (=> b!7761932 (= res!3094392 (not (nullable!9111 (reg!21030 r1!3330))))))

(assert (=> b!7761932 (=> (not res!3094392) (not e!4600026))))

(declare-fun b!7761933 () Bool)

(declare-fun res!3094393 () Bool)

(declare-fun e!4600023 () Bool)

(assert (=> b!7761933 (=> (not res!3094393) (not e!4600023))))

(assert (=> b!7761933 (= res!3094393 call!719214)))

(declare-fun e!4600022 () Bool)

(assert (=> b!7761933 (= e!4600022 e!4600023)))

(declare-fun b!7761934 () Bool)

(declare-fun res!3094391 () Bool)

(declare-fun e!4600024 () Bool)

(assert (=> b!7761934 (=> res!3094391 e!4600024)))

(assert (=> b!7761934 (= res!3094391 (not ((_ is Concat!29546) r1!3330)))))

(assert (=> b!7761934 (= e!4600022 e!4600024)))

(declare-fun b!7761935 () Bool)

(assert (=> b!7761935 (= e!4600026 call!719213)))

(declare-fun b!7761936 () Bool)

(declare-fun e!4600027 () Bool)

(assert (=> b!7761936 (= e!4600024 e!4600027)))

(declare-fun res!3094390 () Bool)

(assert (=> b!7761936 (=> (not res!3094390) (not e!4600027))))

(assert (=> b!7761936 (= res!3094390 call!719214)))

(declare-fun b!7761937 () Bool)

(declare-fun call!719212 () Bool)

(assert (=> b!7761937 (= e!4600027 call!719212)))

(declare-fun bm!719209 () Bool)

(assert (=> bm!719209 (= call!719212 (validRegex!11117 (ite c!1430868 (regTwo!41915 r1!3330) (regTwo!41914 r1!3330))))))

(declare-fun d!2343620 () Bool)

(declare-fun res!3094394 () Bool)

(declare-fun e!4600028 () Bool)

(assert (=> d!2343620 (=> res!3094394 e!4600028)))

(assert (=> d!2343620 (= res!3094394 ((_ is ElementMatch!20701) r1!3330))))

(assert (=> d!2343620 (= (validRegex!11117 r1!3330) e!4600028)))

(declare-fun b!7761938 () Bool)

(assert (=> b!7761938 (= e!4600028 e!4600025)))

(assert (=> b!7761938 (= c!1430867 ((_ is Star!20701) r1!3330))))

(declare-fun b!7761939 () Bool)

(assert (=> b!7761939 (= e!4600023 call!719212)))

(declare-fun b!7761940 () Bool)

(assert (=> b!7761940 (= e!4600025 e!4600022)))

(assert (=> b!7761940 (= c!1430868 ((_ is Union!20701) r1!3330))))

(assert (= (and d!2343620 (not res!3094394)) b!7761938))

(assert (= (and b!7761938 c!1430867) b!7761932))

(assert (= (and b!7761938 (not c!1430867)) b!7761940))

(assert (= (and b!7761932 res!3094392) b!7761935))

(assert (= (and b!7761940 c!1430868) b!7761933))

(assert (= (and b!7761940 (not c!1430868)) b!7761934))

(assert (= (and b!7761933 res!3094393) b!7761939))

(assert (= (and b!7761934 (not res!3094391)) b!7761936))

(assert (= (and b!7761936 res!3094390) b!7761937))

(assert (= (or b!7761933 b!7761936) bm!719207))

(assert (= (or b!7761939 b!7761937) bm!719209))

(assert (= (or b!7761935 bm!719207) bm!719208))

(declare-fun m!8221084 () Bool)

(assert (=> bm!719208 m!8221084))

(declare-fun m!8221086 () Bool)

(assert (=> b!7761932 m!8221086))

(declare-fun m!8221088 () Bool)

(assert (=> bm!719209 m!8221088))

(assert (=> start!739444 d!2343620))

(declare-fun b!7761952 () Bool)

(declare-fun e!4600031 () Bool)

(declare-fun tp!2279543 () Bool)

(declare-fun tp!2279545 () Bool)

(assert (=> b!7761952 (= e!4600031 (and tp!2279543 tp!2279545))))

(declare-fun b!7761954 () Bool)

(declare-fun tp!2279544 () Bool)

(declare-fun tp!2279547 () Bool)

(assert (=> b!7761954 (= e!4600031 (and tp!2279544 tp!2279547))))

(declare-fun b!7761951 () Bool)

(assert (=> b!7761951 (= e!4600031 tp_is_empty!51757)))

(assert (=> b!7761610 (= tp!2279465 e!4600031)))

(declare-fun b!7761953 () Bool)

(declare-fun tp!2279546 () Bool)

(assert (=> b!7761953 (= e!4600031 tp!2279546)))

(assert (= (and b!7761610 ((_ is ElementMatch!20701) (reg!21030 r2!3230))) b!7761951))

(assert (= (and b!7761610 ((_ is Concat!29546) (reg!21030 r2!3230))) b!7761952))

(assert (= (and b!7761610 ((_ is Star!20701) (reg!21030 r2!3230))) b!7761953))

(assert (= (and b!7761610 ((_ is Union!20701) (reg!21030 r2!3230))) b!7761954))

(declare-fun b!7761959 () Bool)

(declare-fun e!4600034 () Bool)

(declare-fun tp!2279550 () Bool)

(assert (=> b!7761959 (= e!4600034 (and tp_is_empty!51757 tp!2279550))))

(assert (=> b!7761621 (= tp!2279467 e!4600034)))

(assert (= (and b!7761621 ((_ is Cons!73420) (t!388279 s!10216))) b!7761959))

(declare-fun b!7761961 () Bool)

(declare-fun e!4600035 () Bool)

(declare-fun tp!2279551 () Bool)

(declare-fun tp!2279553 () Bool)

(assert (=> b!7761961 (= e!4600035 (and tp!2279551 tp!2279553))))

(declare-fun b!7761963 () Bool)

(declare-fun tp!2279552 () Bool)

(declare-fun tp!2279555 () Bool)

(assert (=> b!7761963 (= e!4600035 (and tp!2279552 tp!2279555))))

(declare-fun b!7761960 () Bool)

(assert (=> b!7761960 (= e!4600035 tp_is_empty!51757)))

(assert (=> b!7761616 (= tp!2279466 e!4600035)))

(declare-fun b!7761962 () Bool)

(declare-fun tp!2279554 () Bool)

(assert (=> b!7761962 (= e!4600035 tp!2279554)))

(assert (= (and b!7761616 ((_ is ElementMatch!20701) (regOne!41915 r1!3330))) b!7761960))

(assert (= (and b!7761616 ((_ is Concat!29546) (regOne!41915 r1!3330))) b!7761961))

(assert (= (and b!7761616 ((_ is Star!20701) (regOne!41915 r1!3330))) b!7761962))

(assert (= (and b!7761616 ((_ is Union!20701) (regOne!41915 r1!3330))) b!7761963))

(declare-fun b!7761965 () Bool)

(declare-fun e!4600036 () Bool)

(declare-fun tp!2279556 () Bool)

(declare-fun tp!2279558 () Bool)

(assert (=> b!7761965 (= e!4600036 (and tp!2279556 tp!2279558))))

(declare-fun b!7761967 () Bool)

(declare-fun tp!2279557 () Bool)

(declare-fun tp!2279560 () Bool)

(assert (=> b!7761967 (= e!4600036 (and tp!2279557 tp!2279560))))

(declare-fun b!7761964 () Bool)

(assert (=> b!7761964 (= e!4600036 tp_is_empty!51757)))

(assert (=> b!7761616 (= tp!2279460 e!4600036)))

(declare-fun b!7761966 () Bool)

(declare-fun tp!2279559 () Bool)

(assert (=> b!7761966 (= e!4600036 tp!2279559)))

(assert (= (and b!7761616 ((_ is ElementMatch!20701) (regTwo!41915 r1!3330))) b!7761964))

(assert (= (and b!7761616 ((_ is Concat!29546) (regTwo!41915 r1!3330))) b!7761965))

(assert (= (and b!7761616 ((_ is Star!20701) (regTwo!41915 r1!3330))) b!7761966))

(assert (= (and b!7761616 ((_ is Union!20701) (regTwo!41915 r1!3330))) b!7761967))

(declare-fun b!7761969 () Bool)

(declare-fun e!4600037 () Bool)

(declare-fun tp!2279561 () Bool)

(declare-fun tp!2279563 () Bool)

(assert (=> b!7761969 (= e!4600037 (and tp!2279561 tp!2279563))))

(declare-fun b!7761971 () Bool)

(declare-fun tp!2279562 () Bool)

(declare-fun tp!2279565 () Bool)

(assert (=> b!7761971 (= e!4600037 (and tp!2279562 tp!2279565))))

(declare-fun b!7761968 () Bool)

(assert (=> b!7761968 (= e!4600037 tp_is_empty!51757)))

(assert (=> b!7761612 (= tp!2279459 e!4600037)))

(declare-fun b!7761970 () Bool)

(declare-fun tp!2279564 () Bool)

(assert (=> b!7761970 (= e!4600037 tp!2279564)))

(assert (= (and b!7761612 ((_ is ElementMatch!20701) (regOne!41915 r2!3230))) b!7761968))

(assert (= (and b!7761612 ((_ is Concat!29546) (regOne!41915 r2!3230))) b!7761969))

(assert (= (and b!7761612 ((_ is Star!20701) (regOne!41915 r2!3230))) b!7761970))

(assert (= (and b!7761612 ((_ is Union!20701) (regOne!41915 r2!3230))) b!7761971))

(declare-fun b!7761973 () Bool)

(declare-fun e!4600038 () Bool)

(declare-fun tp!2279566 () Bool)

(declare-fun tp!2279568 () Bool)

(assert (=> b!7761973 (= e!4600038 (and tp!2279566 tp!2279568))))

(declare-fun b!7761975 () Bool)

(declare-fun tp!2279567 () Bool)

(declare-fun tp!2279570 () Bool)

(assert (=> b!7761975 (= e!4600038 (and tp!2279567 tp!2279570))))

(declare-fun b!7761972 () Bool)

(assert (=> b!7761972 (= e!4600038 tp_is_empty!51757)))

(assert (=> b!7761612 (= tp!2279463 e!4600038)))

(declare-fun b!7761974 () Bool)

(declare-fun tp!2279569 () Bool)

(assert (=> b!7761974 (= e!4600038 tp!2279569)))

(assert (= (and b!7761612 ((_ is ElementMatch!20701) (regTwo!41915 r2!3230))) b!7761972))

(assert (= (and b!7761612 ((_ is Concat!29546) (regTwo!41915 r2!3230))) b!7761973))

(assert (= (and b!7761612 ((_ is Star!20701) (regTwo!41915 r2!3230))) b!7761974))

(assert (= (and b!7761612 ((_ is Union!20701) (regTwo!41915 r2!3230))) b!7761975))

(declare-fun b!7761977 () Bool)

(declare-fun e!4600039 () Bool)

(declare-fun tp!2279571 () Bool)

(declare-fun tp!2279573 () Bool)

(assert (=> b!7761977 (= e!4600039 (and tp!2279571 tp!2279573))))

(declare-fun b!7761979 () Bool)

(declare-fun tp!2279572 () Bool)

(declare-fun tp!2279575 () Bool)

(assert (=> b!7761979 (= e!4600039 (and tp!2279572 tp!2279575))))

(declare-fun b!7761976 () Bool)

(assert (=> b!7761976 (= e!4600039 tp_is_empty!51757)))

(assert (=> b!7761623 (= tp!2279468 e!4600039)))

(declare-fun b!7761978 () Bool)

(declare-fun tp!2279574 () Bool)

(assert (=> b!7761978 (= e!4600039 tp!2279574)))

(assert (= (and b!7761623 ((_ is ElementMatch!20701) (regOne!41914 r1!3330))) b!7761976))

(assert (= (and b!7761623 ((_ is Concat!29546) (regOne!41914 r1!3330))) b!7761977))

(assert (= (and b!7761623 ((_ is Star!20701) (regOne!41914 r1!3330))) b!7761978))

(assert (= (and b!7761623 ((_ is Union!20701) (regOne!41914 r1!3330))) b!7761979))

(declare-fun b!7761981 () Bool)

(declare-fun e!4600040 () Bool)

(declare-fun tp!2279576 () Bool)

(declare-fun tp!2279578 () Bool)

(assert (=> b!7761981 (= e!4600040 (and tp!2279576 tp!2279578))))

(declare-fun b!7761983 () Bool)

(declare-fun tp!2279577 () Bool)

(declare-fun tp!2279580 () Bool)

(assert (=> b!7761983 (= e!4600040 (and tp!2279577 tp!2279580))))

(declare-fun b!7761980 () Bool)

(assert (=> b!7761980 (= e!4600040 tp_is_empty!51757)))

(assert (=> b!7761623 (= tp!2279469 e!4600040)))

(declare-fun b!7761982 () Bool)

(declare-fun tp!2279579 () Bool)

(assert (=> b!7761982 (= e!4600040 tp!2279579)))

(assert (= (and b!7761623 ((_ is ElementMatch!20701) (regTwo!41914 r1!3330))) b!7761980))

(assert (= (and b!7761623 ((_ is Concat!29546) (regTwo!41914 r1!3330))) b!7761981))

(assert (= (and b!7761623 ((_ is Star!20701) (regTwo!41914 r1!3330))) b!7761982))

(assert (= (and b!7761623 ((_ is Union!20701) (regTwo!41914 r1!3330))) b!7761983))

(declare-fun b!7761985 () Bool)

(declare-fun e!4600041 () Bool)

(declare-fun tp!2279581 () Bool)

(declare-fun tp!2279583 () Bool)

(assert (=> b!7761985 (= e!4600041 (and tp!2279581 tp!2279583))))

(declare-fun b!7761987 () Bool)

(declare-fun tp!2279582 () Bool)

(declare-fun tp!2279585 () Bool)

(assert (=> b!7761987 (= e!4600041 (and tp!2279582 tp!2279585))))

(declare-fun b!7761984 () Bool)

(assert (=> b!7761984 (= e!4600041 tp_is_empty!51757)))

(assert (=> b!7761613 (= tp!2279464 e!4600041)))

(declare-fun b!7761986 () Bool)

(declare-fun tp!2279584 () Bool)

(assert (=> b!7761986 (= e!4600041 tp!2279584)))

(assert (= (and b!7761613 ((_ is ElementMatch!20701) (reg!21030 r1!3330))) b!7761984))

(assert (= (and b!7761613 ((_ is Concat!29546) (reg!21030 r1!3330))) b!7761985))

(assert (= (and b!7761613 ((_ is Star!20701) (reg!21030 r1!3330))) b!7761986))

(assert (= (and b!7761613 ((_ is Union!20701) (reg!21030 r1!3330))) b!7761987))

(declare-fun b!7761989 () Bool)

(declare-fun e!4600042 () Bool)

(declare-fun tp!2279586 () Bool)

(declare-fun tp!2279588 () Bool)

(assert (=> b!7761989 (= e!4600042 (and tp!2279586 tp!2279588))))

(declare-fun b!7761991 () Bool)

(declare-fun tp!2279587 () Bool)

(declare-fun tp!2279590 () Bool)

(assert (=> b!7761991 (= e!4600042 (and tp!2279587 tp!2279590))))

(declare-fun b!7761988 () Bool)

(assert (=> b!7761988 (= e!4600042 tp_is_empty!51757)))

(assert (=> b!7761619 (= tp!2279462 e!4600042)))

(declare-fun b!7761990 () Bool)

(declare-fun tp!2279589 () Bool)

(assert (=> b!7761990 (= e!4600042 tp!2279589)))

(assert (= (and b!7761619 ((_ is ElementMatch!20701) (regOne!41914 r2!3230))) b!7761988))

(assert (= (and b!7761619 ((_ is Concat!29546) (regOne!41914 r2!3230))) b!7761989))

(assert (= (and b!7761619 ((_ is Star!20701) (regOne!41914 r2!3230))) b!7761990))

(assert (= (and b!7761619 ((_ is Union!20701) (regOne!41914 r2!3230))) b!7761991))

(declare-fun b!7761993 () Bool)

(declare-fun e!4600043 () Bool)

(declare-fun tp!2279591 () Bool)

(declare-fun tp!2279593 () Bool)

(assert (=> b!7761993 (= e!4600043 (and tp!2279591 tp!2279593))))

(declare-fun b!7761995 () Bool)

(declare-fun tp!2279592 () Bool)

(declare-fun tp!2279595 () Bool)

(assert (=> b!7761995 (= e!4600043 (and tp!2279592 tp!2279595))))

(declare-fun b!7761992 () Bool)

(assert (=> b!7761992 (= e!4600043 tp_is_empty!51757)))

(assert (=> b!7761619 (= tp!2279461 e!4600043)))

(declare-fun b!7761994 () Bool)

(declare-fun tp!2279594 () Bool)

(assert (=> b!7761994 (= e!4600043 tp!2279594)))

(assert (= (and b!7761619 ((_ is ElementMatch!20701) (regTwo!41914 r2!3230))) b!7761992))

(assert (= (and b!7761619 ((_ is Concat!29546) (regTwo!41914 r2!3230))) b!7761993))

(assert (= (and b!7761619 ((_ is Star!20701) (regTwo!41914 r2!3230))) b!7761994))

(assert (= (and b!7761619 ((_ is Union!20701) (regTwo!41914 r2!3230))) b!7761995))

(check-sat (not b!7761954) (not b!7761820) (not b!7761977) (not b!7761916) (not b!7761919) (not b!7761987) (not b!7761989) (not b!7761993) (not d!2343600) (not b!7761973) (not b!7761817) (not b!7761979) (not b!7761986) (not bm!719209) (not b!7761932) (not b!7761975) (not b!7761819) (not b!7761985) (not b!7761753) tp_is_empty!51757 (not b!7761962) (not b!7761981) (not b!7761978) (not b!7761914) (not b!7761952) (not d!2343604) (not b!7761995) (not b!7761915) (not b!7761887) (not b!7761982) (not b!7761911) (not b!7761818) (not b!7761959) (not bm!719201) (not d!2343592) (not bm!719200) (not b!7761963) (not b!7761688) (not b!7761966) (not b!7761886) (not b!7761823) (not b!7761685) (not b!7761971) (not b!7761961) (not b!7761970) (not b!7761969) (not b!7761967) (not b!7761953) (not bm!719208) (not b!7761974) (not b!7761983) (not b!7761684) (not b!7761690) (not b!7761990) (not bm!719189) (not d!2343610) (not b!7761683) (not b!7761680) (not b!7761991) (not b!7761921) (not bm!719206) (not b!7761822) (not b!7761965) (not b!7761994) (not d!2343618))
(check-sat)
