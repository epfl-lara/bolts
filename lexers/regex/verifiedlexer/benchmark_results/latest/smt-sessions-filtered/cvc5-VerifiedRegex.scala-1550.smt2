; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80916 () Bool)

(assert start!80916)

(declare-fun b!898839 () Bool)

(assert (=> b!898839 true))

(assert (=> b!898839 true))

(assert (=> b!898839 true))

(declare-fun lambda!28024 () Int)

(declare-fun lambda!28023 () Int)

(assert (=> b!898839 (not (= lambda!28024 lambda!28023))))

(assert (=> b!898839 true))

(assert (=> b!898839 true))

(assert (=> b!898839 true))

(declare-fun b!898838 () Bool)

(declare-fun e!587952 () Bool)

(declare-datatypes ((C!5286 0))(
  ( (C!5287 (val!2891 Int)) )
))
(declare-datatypes ((Regex!2358 0))(
  ( (ElementMatch!2358 (c!145490 C!5286)) (Concat!4191 (regOne!5228 Regex!2358) (regTwo!5228 Regex!2358)) (EmptyExpr!2358) (Star!2358 (reg!2687 Regex!2358)) (EmptyLang!2358) (Union!2358 (regOne!5229 Regex!2358) (regTwo!5229 Regex!2358)) )
))
(declare-fun r!15766 () Regex!2358)

(declare-fun validRegex!827 (Regex!2358) Bool)

(assert (=> b!898838 (= e!587952 (validRegex!827 (reg!2687 r!15766)))))

(declare-fun lt!334052 () Regex!2358)

(declare-datatypes ((List!9588 0))(
  ( (Nil!9572) (Cons!9572 (h!14973 C!5286) (t!100634 List!9588)) )
))
(declare-datatypes ((tuple2!10718 0))(
  ( (tuple2!10719 (_1!6185 List!9588) (_2!6185 List!9588)) )
))
(declare-fun lt!334059 () tuple2!10718)

(declare-fun matchR!896 (Regex!2358 List!9588) Bool)

(declare-fun removeUselessConcat!71 (Regex!2358) Regex!2358)

(assert (=> b!898838 (matchR!896 (removeUselessConcat!71 lt!334052) (_2!6185 lt!334059))))

(declare-datatypes ((Unit!14299 0))(
  ( (Unit!14300) )
))
(declare-fun lt!334058 () Unit!14299)

(declare-fun lemmaRemoveUselessConcatSound!63 (Regex!2358 List!9588) Unit!14299)

(assert (=> b!898838 (= lt!334058 (lemmaRemoveUselessConcatSound!63 lt!334052 (_2!6185 lt!334059)))))

(declare-fun lt!334063 () Unit!14299)

(declare-fun e!587955 () Unit!14299)

(assert (=> b!898838 (= lt!334063 e!587955)))

(declare-fun c!145489 () Bool)

(declare-fun s!10566 () List!9588)

(declare-fun size!7863 (List!9588) Int)

(assert (=> b!898838 (= c!145489 (= (size!7863 (_2!6185 lt!334059)) (size!7863 s!10566)))))

(assert (=> b!898838 (matchR!896 (removeUselessConcat!71 (reg!2687 r!15766)) (_1!6185 lt!334059))))

(declare-fun lt!334053 () Unit!14299)

(assert (=> b!898838 (= lt!334053 (lemmaRemoveUselessConcatSound!63 (reg!2687 r!15766) (_1!6185 lt!334059)))))

(declare-fun e!587958 () Bool)

(declare-fun e!587953 () Bool)

(assert (=> b!898839 (= e!587958 e!587953)))

(declare-fun res!408723 () Bool)

(assert (=> b!898839 (=> res!408723 e!587953)))

(declare-fun isEmpty!5769 (List!9588) Bool)

(assert (=> b!898839 (= res!408723 (isEmpty!5769 s!10566))))

(declare-fun Exists!135 (Int) Bool)

(assert (=> b!898839 (= (Exists!135 lambda!28023) (Exists!135 lambda!28024))))

(declare-fun lt!334060 () Unit!14299)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!27 (Regex!2358 List!9588) Unit!14299)

(assert (=> b!898839 (= lt!334060 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!27 (reg!2687 r!15766) s!10566))))

(declare-fun lt!334057 () Bool)

(assert (=> b!898839 (= lt!334057 (Exists!135 lambda!28023))))

(declare-datatypes ((Option!2001 0))(
  ( (None!2000) (Some!2000 (v!19417 tuple2!10718)) )
))
(declare-fun lt!334055 () Option!2001)

(declare-fun isDefined!1643 (Option!2001) Bool)

(assert (=> b!898839 (= lt!334057 (isDefined!1643 lt!334055))))

(declare-fun findConcatSeparation!107 (Regex!2358 Regex!2358 List!9588 List!9588 List!9588) Option!2001)

(assert (=> b!898839 (= lt!334055 (findConcatSeparation!107 (reg!2687 r!15766) lt!334052 Nil!9572 s!10566 s!10566))))

(declare-fun lt!334061 () Unit!14299)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!107 (Regex!2358 Regex!2358 List!9588) Unit!14299)

(assert (=> b!898839 (= lt!334061 (lemmaFindConcatSeparationEquivalentToExists!107 (reg!2687 r!15766) lt!334052 s!10566))))

(assert (=> b!898839 (= lt!334052 (Star!2358 (reg!2687 r!15766)))))

(declare-fun b!898840 () Bool)

(declare-fun e!587954 () Bool)

(declare-fun tp!282249 () Bool)

(declare-fun tp!282246 () Bool)

(assert (=> b!898840 (= e!587954 (and tp!282249 tp!282246))))

(declare-fun b!898841 () Bool)

(declare-fun tp!282248 () Bool)

(declare-fun tp!282245 () Bool)

(assert (=> b!898841 (= e!587954 (and tp!282248 tp!282245))))

(declare-fun b!898842 () Bool)

(declare-fun tp_is_empty!4359 () Bool)

(assert (=> b!898842 (= e!587954 tp_is_empty!4359)))

(declare-fun b!898843 () Bool)

(declare-fun res!408724 () Bool)

(assert (=> b!898843 (=> res!408724 e!587953)))

(assert (=> b!898843 (= res!408724 (not lt!334057))))

(declare-fun res!408721 () Bool)

(declare-fun e!587957 () Bool)

(assert (=> start!80916 (=> (not res!408721) (not e!587957))))

(assert (=> start!80916 (= res!408721 (validRegex!827 r!15766))))

(assert (=> start!80916 e!587957))

(assert (=> start!80916 e!587954))

(declare-fun e!587956 () Bool)

(assert (=> start!80916 e!587956))

(declare-fun b!898844 () Bool)

(declare-fun tp!282247 () Bool)

(assert (=> b!898844 (= e!587954 tp!282247)))

(declare-fun b!898845 () Bool)

(declare-fun tp!282250 () Bool)

(assert (=> b!898845 (= e!587956 (and tp_is_empty!4359 tp!282250))))

(declare-fun b!898846 () Bool)

(declare-fun Unit!14301 () Unit!14299)

(assert (=> b!898846 (= e!587955 Unit!14301)))

(declare-fun b!898847 () Bool)

(assert (=> b!898847 (= e!587953 e!587952)))

(declare-fun res!408719 () Bool)

(assert (=> b!898847 (=> res!408719 e!587952)))

(assert (=> b!898847 (= res!408719 (not (matchR!896 (reg!2687 r!15766) (_1!6185 lt!334059))))))

(declare-fun get!3036 (Option!2001) tuple2!10718)

(assert (=> b!898847 (= lt!334059 (get!3036 lt!334055))))

(declare-fun b!898848 () Bool)

(declare-fun Unit!14302 () Unit!14299)

(assert (=> b!898848 (= e!587955 Unit!14302)))

(declare-fun lt!334056 () Unit!14299)

(declare-fun mainMatchTheorem!159 (Regex!2358 List!9588) Unit!14299)

(assert (=> b!898848 (= lt!334056 (mainMatchTheorem!159 (reg!2687 r!15766) (_1!6185 lt!334059)))))

(assert (=> b!898848 false))

(declare-fun b!898849 () Bool)

(assert (=> b!898849 (= e!587957 (not e!587958))))

(declare-fun res!408720 () Bool)

(assert (=> b!898849 (=> res!408720 e!587958)))

(declare-fun lt!334054 () Bool)

(assert (=> b!898849 (= res!408720 (or (not lt!334054) (and (is-Concat!4191 r!15766) (is-EmptyExpr!2358 (regOne!5228 r!15766))) (and (is-Concat!4191 r!15766) (is-EmptyExpr!2358 (regTwo!5228 r!15766))) (is-Concat!4191 r!15766) (is-Union!2358 r!15766) (not (is-Star!2358 r!15766))))))

(declare-fun matchRSpec!159 (Regex!2358 List!9588) Bool)

(assert (=> b!898849 (= lt!334054 (matchRSpec!159 r!15766 s!10566))))

(assert (=> b!898849 (= lt!334054 (matchR!896 r!15766 s!10566))))

(declare-fun lt!334062 () Unit!14299)

(assert (=> b!898849 (= lt!334062 (mainMatchTheorem!159 r!15766 s!10566))))

(declare-fun b!898850 () Bool)

(declare-fun res!408722 () Bool)

(assert (=> b!898850 (=> res!408722 e!587952)))

(assert (=> b!898850 (= res!408722 (not (matchR!896 lt!334052 (_2!6185 lt!334059))))))

(assert (= (and start!80916 res!408721) b!898849))

(assert (= (and b!898849 (not res!408720)) b!898839))

(assert (= (and b!898839 (not res!408723)) b!898843))

(assert (= (and b!898843 (not res!408724)) b!898847))

(assert (= (and b!898847 (not res!408719)) b!898850))

(assert (= (and b!898850 (not res!408722)) b!898838))

(assert (= (and b!898838 c!145489) b!898848))

(assert (= (and b!898838 (not c!145489)) b!898846))

(assert (= (and start!80916 (is-ElementMatch!2358 r!15766)) b!898842))

(assert (= (and start!80916 (is-Concat!4191 r!15766)) b!898841))

(assert (= (and start!80916 (is-Star!2358 r!15766)) b!898844))

(assert (= (and start!80916 (is-Union!2358 r!15766)) b!898840))

(assert (= (and start!80916 (is-Cons!9572 s!10566)) b!898845))

(declare-fun m!1137373 () Bool)

(assert (=> b!898850 m!1137373))

(declare-fun m!1137375 () Bool)

(assert (=> b!898849 m!1137375))

(declare-fun m!1137377 () Bool)

(assert (=> b!898849 m!1137377))

(declare-fun m!1137379 () Bool)

(assert (=> b!898849 m!1137379))

(declare-fun m!1137381 () Bool)

(assert (=> b!898839 m!1137381))

(assert (=> b!898839 m!1137381))

(declare-fun m!1137383 () Bool)

(assert (=> b!898839 m!1137383))

(declare-fun m!1137385 () Bool)

(assert (=> b!898839 m!1137385))

(declare-fun m!1137387 () Bool)

(assert (=> b!898839 m!1137387))

(declare-fun m!1137389 () Bool)

(assert (=> b!898839 m!1137389))

(declare-fun m!1137391 () Bool)

(assert (=> b!898839 m!1137391))

(declare-fun m!1137393 () Bool)

(assert (=> b!898839 m!1137393))

(declare-fun m!1137395 () Bool)

(assert (=> b!898838 m!1137395))

(declare-fun m!1137397 () Bool)

(assert (=> b!898838 m!1137397))

(assert (=> b!898838 m!1137395))

(declare-fun m!1137399 () Bool)

(assert (=> b!898838 m!1137399))

(declare-fun m!1137401 () Bool)

(assert (=> b!898838 m!1137401))

(declare-fun m!1137403 () Bool)

(assert (=> b!898838 m!1137403))

(declare-fun m!1137405 () Bool)

(assert (=> b!898838 m!1137405))

(declare-fun m!1137407 () Bool)

(assert (=> b!898838 m!1137407))

(assert (=> b!898838 m!1137401))

(declare-fun m!1137409 () Bool)

(assert (=> b!898838 m!1137409))

(declare-fun m!1137411 () Bool)

(assert (=> b!898838 m!1137411))

(declare-fun m!1137413 () Bool)

(assert (=> b!898847 m!1137413))

(declare-fun m!1137415 () Bool)

(assert (=> b!898847 m!1137415))

(declare-fun m!1137417 () Bool)

(assert (=> b!898848 m!1137417))

(declare-fun m!1137419 () Bool)

(assert (=> start!80916 m!1137419))

(push 1)

(assert (not b!898848))

(assert (not b!898838))

(assert (not start!80916))

(assert (not b!898841))

(assert (not b!898839))

(assert (not b!898850))

(assert (not b!898840))

(assert (not b!898845))

(assert (not b!898847))

(assert tp_is_empty!4359)

(assert (not b!898849))

(assert (not b!898844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!278059 () Bool)

(assert (=> d!278059 (= (matchR!896 (reg!2687 r!15766) (_1!6185 lt!334059)) (matchRSpec!159 (reg!2687 r!15766) (_1!6185 lt!334059)))))

(declare-fun lt!334102 () Unit!14299)

(declare-fun choose!5408 (Regex!2358 List!9588) Unit!14299)

(assert (=> d!278059 (= lt!334102 (choose!5408 (reg!2687 r!15766) (_1!6185 lt!334059)))))

(assert (=> d!278059 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278059 (= (mainMatchTheorem!159 (reg!2687 r!15766) (_1!6185 lt!334059)) lt!334102)))

(declare-fun bs!235112 () Bool)

(assert (= bs!235112 d!278059))

(assert (=> bs!235112 m!1137413))

(declare-fun m!1137469 () Bool)

(assert (=> bs!235112 m!1137469))

(declare-fun m!1137471 () Bool)

(assert (=> bs!235112 m!1137471))

(assert (=> bs!235112 m!1137407))

(assert (=> b!898848 d!278059))

(declare-fun b!898940 () Bool)

(declare-fun e!588003 () Bool)

(declare-fun e!588006 () Bool)

(assert (=> b!898940 (= e!588003 e!588006)))

(declare-fun res!408780 () Bool)

(assert (=> b!898940 (=> res!408780 e!588006)))

(declare-fun call!53464 () Bool)

(assert (=> b!898940 (= res!408780 call!53464)))

(declare-fun b!898941 () Bool)

(declare-fun head!1590 (List!9588) C!5286)

(assert (=> b!898941 (= e!588006 (not (= (head!1590 (_1!6185 lt!334059)) (c!145490 (reg!2687 r!15766)))))))

(declare-fun b!898942 () Bool)

(declare-fun e!588001 () Bool)

(declare-fun nullable!625 (Regex!2358) Bool)

(assert (=> b!898942 (= e!588001 (nullable!625 (reg!2687 r!15766)))))

(declare-fun b!898943 () Bool)

(declare-fun e!588004 () Bool)

(declare-fun e!588000 () Bool)

(assert (=> b!898943 (= e!588004 e!588000)))

(declare-fun c!145503 () Bool)

(assert (=> b!898943 (= c!145503 (is-EmptyLang!2358 (reg!2687 r!15766)))))

(declare-fun b!898944 () Bool)

(declare-fun res!408779 () Bool)

(assert (=> b!898944 (=> res!408779 e!588006)))

(declare-fun tail!1152 (List!9588) List!9588)

(assert (=> b!898944 (= res!408779 (not (isEmpty!5769 (tail!1152 (_1!6185 lt!334059)))))))

(declare-fun b!898945 () Bool)

(declare-fun res!408777 () Bool)

(declare-fun e!588002 () Bool)

(assert (=> b!898945 (=> (not res!408777) (not e!588002))))

(assert (=> b!898945 (= res!408777 (not call!53464))))

(declare-fun b!898946 () Bool)

(assert (=> b!898946 (= e!588002 (= (head!1590 (_1!6185 lt!334059)) (c!145490 (reg!2687 r!15766))))))

(declare-fun d!278061 () Bool)

(assert (=> d!278061 e!588004))

(declare-fun c!145501 () Bool)

(assert (=> d!278061 (= c!145501 (is-EmptyExpr!2358 (reg!2687 r!15766)))))

(declare-fun lt!334105 () Bool)

(assert (=> d!278061 (= lt!334105 e!588001)))

(declare-fun c!145502 () Bool)

(assert (=> d!278061 (= c!145502 (isEmpty!5769 (_1!6185 lt!334059)))))

(assert (=> d!278061 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278061 (= (matchR!896 (reg!2687 r!15766) (_1!6185 lt!334059)) lt!334105)))

(declare-fun b!898947 () Bool)

(assert (=> b!898947 (= e!588000 (not lt!334105))))

(declare-fun b!898948 () Bool)

(declare-fun e!588005 () Bool)

(assert (=> b!898948 (= e!588005 e!588003)))

(declare-fun res!408778 () Bool)

(assert (=> b!898948 (=> (not res!408778) (not e!588003))))

(assert (=> b!898948 (= res!408778 (not lt!334105))))

(declare-fun b!898949 () Bool)

(declare-fun res!408775 () Bool)

(assert (=> b!898949 (=> res!408775 e!588005)))

(assert (=> b!898949 (= res!408775 e!588002)))

(declare-fun res!408774 () Bool)

(assert (=> b!898949 (=> (not res!408774) (not e!588002))))

(assert (=> b!898949 (= res!408774 lt!334105)))

(declare-fun b!898950 () Bool)

(declare-fun res!408773 () Bool)

(assert (=> b!898950 (=> (not res!408773) (not e!588002))))

(assert (=> b!898950 (= res!408773 (isEmpty!5769 (tail!1152 (_1!6185 lt!334059))))))

(declare-fun b!898951 () Bool)

(declare-fun res!408776 () Bool)

(assert (=> b!898951 (=> res!408776 e!588005)))

(assert (=> b!898951 (= res!408776 (not (is-ElementMatch!2358 (reg!2687 r!15766))))))

(assert (=> b!898951 (= e!588000 e!588005)))

(declare-fun b!898952 () Bool)

(declare-fun derivativeStep!437 (Regex!2358 C!5286) Regex!2358)

(assert (=> b!898952 (= e!588001 (matchR!896 (derivativeStep!437 (reg!2687 r!15766) (head!1590 (_1!6185 lt!334059))) (tail!1152 (_1!6185 lt!334059))))))

(declare-fun b!898953 () Bool)

(assert (=> b!898953 (= e!588004 (= lt!334105 call!53464))))

(declare-fun bm!53459 () Bool)

(assert (=> bm!53459 (= call!53464 (isEmpty!5769 (_1!6185 lt!334059)))))

(assert (= (and d!278061 c!145502) b!898942))

(assert (= (and d!278061 (not c!145502)) b!898952))

(assert (= (and d!278061 c!145501) b!898953))

(assert (= (and d!278061 (not c!145501)) b!898943))

(assert (= (and b!898943 c!145503) b!898947))

(assert (= (and b!898943 (not c!145503)) b!898951))

(assert (= (and b!898951 (not res!408776)) b!898949))

(assert (= (and b!898949 res!408774) b!898945))

(assert (= (and b!898945 res!408777) b!898950))

(assert (= (and b!898950 res!408773) b!898946))

(assert (= (and b!898949 (not res!408775)) b!898948))

(assert (= (and b!898948 res!408778) b!898940))

(assert (= (and b!898940 (not res!408780)) b!898944))

(assert (= (and b!898944 (not res!408779)) b!898941))

(assert (= (or b!898953 b!898940 b!898945) bm!53459))

(declare-fun m!1137473 () Bool)

(assert (=> b!898952 m!1137473))

(assert (=> b!898952 m!1137473))

(declare-fun m!1137475 () Bool)

(assert (=> b!898952 m!1137475))

(declare-fun m!1137477 () Bool)

(assert (=> b!898952 m!1137477))

(assert (=> b!898952 m!1137475))

(assert (=> b!898952 m!1137477))

(declare-fun m!1137479 () Bool)

(assert (=> b!898952 m!1137479))

(assert (=> b!898950 m!1137477))

(assert (=> b!898950 m!1137477))

(declare-fun m!1137481 () Bool)

(assert (=> b!898950 m!1137481))

(declare-fun m!1137483 () Bool)

(assert (=> bm!53459 m!1137483))

(assert (=> b!898944 m!1137477))

(assert (=> b!898944 m!1137477))

(assert (=> b!898944 m!1137481))

(assert (=> b!898941 m!1137473))

(assert (=> d!278061 m!1137483))

(assert (=> d!278061 m!1137407))

(assert (=> b!898946 m!1137473))

(declare-fun m!1137485 () Bool)

(assert (=> b!898942 m!1137485))

(assert (=> b!898847 d!278061))

(declare-fun d!278065 () Bool)

(assert (=> d!278065 (= (get!3036 lt!334055) (v!19417 lt!334055))))

(assert (=> b!898847 d!278065))

(declare-fun bs!235113 () Bool)

(declare-fun b!899022 () Bool)

(assert (= bs!235113 (and b!899022 b!898839)))

(declare-fun lambda!28037 () Int)

(assert (=> bs!235113 (not (= lambda!28037 lambda!28023))))

(assert (=> bs!235113 (= (= r!15766 lt!334052) (= lambda!28037 lambda!28024))))

(assert (=> b!899022 true))

(assert (=> b!899022 true))

(declare-fun bs!235114 () Bool)

(declare-fun b!899017 () Bool)

(assert (= bs!235114 (and b!899017 b!898839)))

(declare-fun lambda!28038 () Int)

(assert (=> bs!235114 (not (= lambda!28038 lambda!28023))))

(assert (=> bs!235114 (not (= lambda!28038 lambda!28024))))

(declare-fun bs!235115 () Bool)

(assert (= bs!235115 (and b!899017 b!899022)))

(assert (=> bs!235115 (not (= lambda!28038 lambda!28037))))

(assert (=> b!899017 true))

(assert (=> b!899017 true))

(declare-fun call!53479 () Bool)

(declare-fun bm!53473 () Bool)

(declare-fun c!145519 () Bool)

(assert (=> bm!53473 (= call!53479 (Exists!135 (ite c!145519 lambda!28037 lambda!28038)))))

(declare-fun b!899013 () Bool)

(declare-fun e!588048 () Bool)

(assert (=> b!899013 (= e!588048 (matchRSpec!159 (regTwo!5229 r!15766) s!10566))))

(declare-fun b!899015 () Bool)

(declare-fun e!588050 () Bool)

(assert (=> b!899015 (= e!588050 e!588048)))

(declare-fun res!408814 () Bool)

(assert (=> b!899015 (= res!408814 (matchRSpec!159 (regOne!5229 r!15766) s!10566))))

(assert (=> b!899015 (=> res!408814 e!588048)))

(declare-fun b!899016 () Bool)

(declare-fun e!588049 () Bool)

(assert (=> b!899016 (= e!588049 (= s!10566 (Cons!9572 (c!145490 r!15766) Nil!9572)))))

(declare-fun e!588051 () Bool)

(assert (=> b!899017 (= e!588051 call!53479)))

(declare-fun b!899018 () Bool)

(declare-fun e!588046 () Bool)

(declare-fun call!53478 () Bool)

(assert (=> b!899018 (= e!588046 call!53478)))

(declare-fun bm!53474 () Bool)

(assert (=> bm!53474 (= call!53478 (isEmpty!5769 s!10566))))

(declare-fun b!899019 () Bool)

(declare-fun c!145521 () Bool)

(assert (=> b!899019 (= c!145521 (is-Union!2358 r!15766))))

(assert (=> b!899019 (= e!588049 e!588050)))

(declare-fun b!899020 () Bool)

(declare-fun e!588047 () Bool)

(assert (=> b!899020 (= e!588046 e!588047)))

(declare-fun res!408812 () Bool)

(assert (=> b!899020 (= res!408812 (not (is-EmptyLang!2358 r!15766)))))

(assert (=> b!899020 (=> (not res!408812) (not e!588047))))

(declare-fun b!899021 () Bool)

(declare-fun c!145520 () Bool)

(assert (=> b!899021 (= c!145520 (is-ElementMatch!2358 r!15766))))

(assert (=> b!899021 (= e!588047 e!588049)))

(declare-fun b!899014 () Bool)

(assert (=> b!899014 (= e!588050 e!588051)))

(assert (=> b!899014 (= c!145519 (is-Star!2358 r!15766))))

(declare-fun d!278067 () Bool)

(declare-fun c!145518 () Bool)

(assert (=> d!278067 (= c!145518 (is-EmptyExpr!2358 r!15766))))

(assert (=> d!278067 (= (matchRSpec!159 r!15766 s!10566) e!588046)))

(declare-fun e!588052 () Bool)

(assert (=> b!899022 (= e!588052 call!53479)))

(declare-fun b!899023 () Bool)

(declare-fun res!408813 () Bool)

(assert (=> b!899023 (=> res!408813 e!588052)))

(assert (=> b!899023 (= res!408813 call!53478)))

(assert (=> b!899023 (= e!588051 e!588052)))

(assert (= (and d!278067 c!145518) b!899018))

(assert (= (and d!278067 (not c!145518)) b!899020))

(assert (= (and b!899020 res!408812) b!899021))

(assert (= (and b!899021 c!145520) b!899016))

(assert (= (and b!899021 (not c!145520)) b!899019))

(assert (= (and b!899019 c!145521) b!899015))

(assert (= (and b!899019 (not c!145521)) b!899014))

(assert (= (and b!899015 (not res!408814)) b!899013))

(assert (= (and b!899014 c!145519) b!899023))

(assert (= (and b!899014 (not c!145519)) b!899017))

(assert (= (and b!899023 (not res!408813)) b!899022))

(assert (= (or b!899022 b!899017) bm!53473))

(assert (= (or b!899018 b!899023) bm!53474))

(declare-fun m!1137493 () Bool)

(assert (=> bm!53473 m!1137493))

(declare-fun m!1137495 () Bool)

(assert (=> b!899013 m!1137495))

(declare-fun m!1137497 () Bool)

(assert (=> b!899015 m!1137497))

(assert (=> bm!53474 m!1137391))

(assert (=> b!898849 d!278067))

(declare-fun b!899024 () Bool)

(declare-fun e!588056 () Bool)

(declare-fun e!588059 () Bool)

(assert (=> b!899024 (= e!588056 e!588059)))

(declare-fun res!408822 () Bool)

(assert (=> b!899024 (=> res!408822 e!588059)))

(declare-fun call!53480 () Bool)

(assert (=> b!899024 (= res!408822 call!53480)))

(declare-fun b!899025 () Bool)

(assert (=> b!899025 (= e!588059 (not (= (head!1590 s!10566) (c!145490 r!15766))))))

(declare-fun b!899026 () Bool)

(declare-fun e!588054 () Bool)

(assert (=> b!899026 (= e!588054 (nullable!625 r!15766))))

(declare-fun b!899027 () Bool)

(declare-fun e!588057 () Bool)

(declare-fun e!588053 () Bool)

(assert (=> b!899027 (= e!588057 e!588053)))

(declare-fun c!145524 () Bool)

(assert (=> b!899027 (= c!145524 (is-EmptyLang!2358 r!15766))))

(declare-fun b!899028 () Bool)

(declare-fun res!408821 () Bool)

(assert (=> b!899028 (=> res!408821 e!588059)))

(assert (=> b!899028 (= res!408821 (not (isEmpty!5769 (tail!1152 s!10566))))))

(declare-fun b!899029 () Bool)

(declare-fun res!408819 () Bool)

(declare-fun e!588055 () Bool)

(assert (=> b!899029 (=> (not res!408819) (not e!588055))))

(assert (=> b!899029 (= res!408819 (not call!53480))))

(declare-fun b!899030 () Bool)

(assert (=> b!899030 (= e!588055 (= (head!1590 s!10566) (c!145490 r!15766)))))

(declare-fun d!278071 () Bool)

(assert (=> d!278071 e!588057))

(declare-fun c!145522 () Bool)

(assert (=> d!278071 (= c!145522 (is-EmptyExpr!2358 r!15766))))

(declare-fun lt!334106 () Bool)

(assert (=> d!278071 (= lt!334106 e!588054)))

(declare-fun c!145523 () Bool)

(assert (=> d!278071 (= c!145523 (isEmpty!5769 s!10566))))

(assert (=> d!278071 (validRegex!827 r!15766)))

(assert (=> d!278071 (= (matchR!896 r!15766 s!10566) lt!334106)))

(declare-fun b!899031 () Bool)

(assert (=> b!899031 (= e!588053 (not lt!334106))))

(declare-fun b!899032 () Bool)

(declare-fun e!588058 () Bool)

(assert (=> b!899032 (= e!588058 e!588056)))

(declare-fun res!408820 () Bool)

(assert (=> b!899032 (=> (not res!408820) (not e!588056))))

(assert (=> b!899032 (= res!408820 (not lt!334106))))

(declare-fun b!899033 () Bool)

(declare-fun res!408817 () Bool)

(assert (=> b!899033 (=> res!408817 e!588058)))

(assert (=> b!899033 (= res!408817 e!588055)))

(declare-fun res!408816 () Bool)

(assert (=> b!899033 (=> (not res!408816) (not e!588055))))

(assert (=> b!899033 (= res!408816 lt!334106)))

(declare-fun b!899034 () Bool)

(declare-fun res!408815 () Bool)

(assert (=> b!899034 (=> (not res!408815) (not e!588055))))

(assert (=> b!899034 (= res!408815 (isEmpty!5769 (tail!1152 s!10566)))))

(declare-fun b!899035 () Bool)

(declare-fun res!408818 () Bool)

(assert (=> b!899035 (=> res!408818 e!588058)))

(assert (=> b!899035 (= res!408818 (not (is-ElementMatch!2358 r!15766)))))

(assert (=> b!899035 (= e!588053 e!588058)))

(declare-fun b!899036 () Bool)

(assert (=> b!899036 (= e!588054 (matchR!896 (derivativeStep!437 r!15766 (head!1590 s!10566)) (tail!1152 s!10566)))))

(declare-fun b!899037 () Bool)

(assert (=> b!899037 (= e!588057 (= lt!334106 call!53480))))

(declare-fun bm!53475 () Bool)

(assert (=> bm!53475 (= call!53480 (isEmpty!5769 s!10566))))

(assert (= (and d!278071 c!145523) b!899026))

(assert (= (and d!278071 (not c!145523)) b!899036))

(assert (= (and d!278071 c!145522) b!899037))

(assert (= (and d!278071 (not c!145522)) b!899027))

(assert (= (and b!899027 c!145524) b!899031))

(assert (= (and b!899027 (not c!145524)) b!899035))

(assert (= (and b!899035 (not res!408818)) b!899033))

(assert (= (and b!899033 res!408816) b!899029))

(assert (= (and b!899029 res!408819) b!899034))

(assert (= (and b!899034 res!408815) b!899030))

(assert (= (and b!899033 (not res!408817)) b!899032))

(assert (= (and b!899032 res!408820) b!899024))

(assert (= (and b!899024 (not res!408822)) b!899028))

(assert (= (and b!899028 (not res!408821)) b!899025))

(assert (= (or b!899037 b!899024 b!899029) bm!53475))

(declare-fun m!1137499 () Bool)

(assert (=> b!899036 m!1137499))

(assert (=> b!899036 m!1137499))

(declare-fun m!1137501 () Bool)

(assert (=> b!899036 m!1137501))

(declare-fun m!1137503 () Bool)

(assert (=> b!899036 m!1137503))

(assert (=> b!899036 m!1137501))

(assert (=> b!899036 m!1137503))

(declare-fun m!1137505 () Bool)

(assert (=> b!899036 m!1137505))

(assert (=> b!899034 m!1137503))

(assert (=> b!899034 m!1137503))

(declare-fun m!1137507 () Bool)

(assert (=> b!899034 m!1137507))

(assert (=> bm!53475 m!1137391))

(assert (=> b!899028 m!1137503))

(assert (=> b!899028 m!1137503))

(assert (=> b!899028 m!1137507))

(assert (=> b!899025 m!1137499))

(assert (=> d!278071 m!1137391))

(assert (=> d!278071 m!1137419))

(assert (=> b!899030 m!1137499))

(declare-fun m!1137509 () Bool)

(assert (=> b!899026 m!1137509))

(assert (=> b!898849 d!278071))

(declare-fun d!278073 () Bool)

(assert (=> d!278073 (= (matchR!896 r!15766 s!10566) (matchRSpec!159 r!15766 s!10566))))

(declare-fun lt!334107 () Unit!14299)

(assert (=> d!278073 (= lt!334107 (choose!5408 r!15766 s!10566))))

(assert (=> d!278073 (validRegex!827 r!15766)))

(assert (=> d!278073 (= (mainMatchTheorem!159 r!15766 s!10566) lt!334107)))

(declare-fun bs!235116 () Bool)

(assert (= bs!235116 d!278073))

(assert (=> bs!235116 m!1137377))

(assert (=> bs!235116 m!1137375))

(declare-fun m!1137511 () Bool)

(assert (=> bs!235116 m!1137511))

(assert (=> bs!235116 m!1137419))

(assert (=> b!898849 d!278073))

(declare-fun b!899070 () Bool)

(declare-fun e!588078 () Bool)

(declare-fun lt!334110 () Regex!2358)

(assert (=> b!899070 (= e!588078 (= (nullable!625 lt!334110) (nullable!625 lt!334052)))))

(declare-fun b!899071 () Bool)

(declare-fun c!145539 () Bool)

(assert (=> b!899071 (= c!145539 (is-Star!2358 lt!334052))))

(declare-fun e!588082 () Regex!2358)

(declare-fun e!588081 () Regex!2358)

(assert (=> b!899071 (= e!588082 e!588081)))

(declare-fun b!899072 () Bool)

(declare-fun call!53492 () Regex!2358)

(declare-fun call!53491 () Regex!2358)

(assert (=> b!899072 (= e!588082 (Union!2358 call!53492 call!53491))))

(declare-fun b!899073 () Bool)

(assert (=> b!899073 (= e!588081 lt!334052)))

(declare-fun c!145540 () Bool)

(declare-fun bm!53486 () Bool)

(declare-fun c!145542 () Bool)

(declare-fun call!53493 () Regex!2358)

(declare-fun c!145541 () Bool)

(assert (=> bm!53486 (= call!53493 (removeUselessConcat!71 (ite c!145542 (regTwo!5228 lt!334052) (ite (or c!145541 c!145540) (regOne!5228 lt!334052) (regOne!5229 lt!334052)))))))

(declare-fun b!899074 () Bool)

(declare-fun e!588083 () Regex!2358)

(declare-fun e!588080 () Regex!2358)

(assert (=> b!899074 (= e!588083 e!588080)))

(assert (=> b!899074 (= c!145541 (and (is-Concat!4191 lt!334052) (is-EmptyExpr!2358 (regTwo!5228 lt!334052))))))

(declare-fun b!899076 () Bool)

(declare-fun e!588079 () Regex!2358)

(assert (=> b!899076 (= e!588079 e!588082)))

(declare-fun c!145543 () Bool)

(assert (=> b!899076 (= c!145543 (is-Union!2358 lt!334052))))

(declare-fun bm!53487 () Bool)

(declare-fun call!53495 () Regex!2358)

(assert (=> bm!53487 (= call!53495 (removeUselessConcat!71 (ite c!145540 (regTwo!5228 lt!334052) (ite c!145543 (regTwo!5229 lt!334052) (reg!2687 lt!334052)))))))

(declare-fun bm!53488 () Bool)

(assert (=> bm!53488 (= call!53491 call!53495)))

(declare-fun b!899081 () Bool)

(assert (=> b!899081 (= c!145540 (is-Concat!4191 lt!334052))))

(assert (=> b!899081 (= e!588080 e!588079)))

(declare-fun b!899082 () Bool)

(assert (=> b!899082 (= e!588079 (Concat!4191 call!53492 call!53495))))

(declare-fun b!899075 () Bool)

(assert (=> b!899075 (= e!588083 call!53493)))

(declare-fun d!278075 () Bool)

(assert (=> d!278075 e!588078))

(declare-fun res!408827 () Bool)

(assert (=> d!278075 (=> (not res!408827) (not e!588078))))

(assert (=> d!278075 (= res!408827 (validRegex!827 lt!334110))))

(assert (=> d!278075 (= lt!334110 e!588083)))

(assert (=> d!278075 (= c!145542 (and (is-Concat!4191 lt!334052) (is-EmptyExpr!2358 (regOne!5228 lt!334052))))))

(assert (=> d!278075 (validRegex!827 lt!334052)))

(assert (=> d!278075 (= (removeUselessConcat!71 lt!334052) lt!334110)))

(declare-fun bm!53489 () Bool)

(declare-fun call!53494 () Regex!2358)

(assert (=> bm!53489 (= call!53494 call!53493)))

(declare-fun b!899083 () Bool)

(assert (=> b!899083 (= e!588080 call!53494)))

(declare-fun bm!53490 () Bool)

(assert (=> bm!53490 (= call!53492 call!53494)))

(declare-fun b!899084 () Bool)

(assert (=> b!899084 (= e!588081 (Star!2358 call!53491))))

(assert (= (and d!278075 c!145542) b!899075))

(assert (= (and d!278075 (not c!145542)) b!899074))

(assert (= (and b!899074 c!145541) b!899083))

(assert (= (and b!899074 (not c!145541)) b!899081))

(assert (= (and b!899081 c!145540) b!899082))

(assert (= (and b!899081 (not c!145540)) b!899076))

(assert (= (and b!899076 c!145543) b!899072))

(assert (= (and b!899076 (not c!145543)) b!899071))

(assert (= (and b!899071 c!145539) b!899084))

(assert (= (and b!899071 (not c!145539)) b!899073))

(assert (= (or b!899072 b!899084) bm!53488))

(assert (= (or b!899082 bm!53488) bm!53487))

(assert (= (or b!899082 b!899072) bm!53490))

(assert (= (or b!899083 bm!53490) bm!53489))

(assert (= (or b!899075 bm!53489) bm!53486))

(assert (= (and d!278075 res!408827) b!899070))

(declare-fun m!1137513 () Bool)

(assert (=> b!899070 m!1137513))

(declare-fun m!1137515 () Bool)

(assert (=> b!899070 m!1137515))

(declare-fun m!1137517 () Bool)

(assert (=> bm!53486 m!1137517))

(declare-fun m!1137519 () Bool)

(assert (=> bm!53487 m!1137519))

(declare-fun m!1137521 () Bool)

(assert (=> d!278075 m!1137521))

(declare-fun m!1137523 () Bool)

(assert (=> d!278075 m!1137523))

(assert (=> b!898838 d!278075))

(declare-fun d!278077 () Bool)

(declare-fun lt!334113 () Int)

(assert (=> d!278077 (>= lt!334113 0)))

(declare-fun e!588094 () Int)

(assert (=> d!278077 (= lt!334113 e!588094)))

(declare-fun c!145550 () Bool)

(assert (=> d!278077 (= c!145550 (is-Nil!9572 s!10566))))

(assert (=> d!278077 (= (size!7863 s!10566) lt!334113)))

(declare-fun b!899097 () Bool)

(assert (=> b!899097 (= e!588094 0)))

(declare-fun b!899098 () Bool)

(assert (=> b!899098 (= e!588094 (+ 1 (size!7863 (t!100634 s!10566))))))

(assert (= (and d!278077 c!145550) b!899097))

(assert (= (and d!278077 (not c!145550)) b!899098))

(declare-fun m!1137525 () Bool)

(assert (=> b!899098 m!1137525))

(assert (=> b!898838 d!278077))

(declare-fun b!899099 () Bool)

(declare-fun e!588098 () Bool)

(declare-fun e!588101 () Bool)

(assert (=> b!899099 (= e!588098 e!588101)))

(declare-fun res!408839 () Bool)

(assert (=> b!899099 (=> res!408839 e!588101)))

(declare-fun call!53496 () Bool)

(assert (=> b!899099 (= res!408839 call!53496)))

(declare-fun b!899100 () Bool)

(assert (=> b!899100 (= e!588101 (not (= (head!1590 (_2!6185 lt!334059)) (c!145490 (removeUselessConcat!71 lt!334052)))))))

(declare-fun b!899101 () Bool)

(declare-fun e!588096 () Bool)

(assert (=> b!899101 (= e!588096 (nullable!625 (removeUselessConcat!71 lt!334052)))))

(declare-fun b!899102 () Bool)

(declare-fun e!588099 () Bool)

(declare-fun e!588095 () Bool)

(assert (=> b!899102 (= e!588099 e!588095)))

(declare-fun c!145553 () Bool)

(assert (=> b!899102 (= c!145553 (is-EmptyLang!2358 (removeUselessConcat!71 lt!334052)))))

(declare-fun b!899103 () Bool)

(declare-fun res!408838 () Bool)

(assert (=> b!899103 (=> res!408838 e!588101)))

(assert (=> b!899103 (= res!408838 (not (isEmpty!5769 (tail!1152 (_2!6185 lt!334059)))))))

(declare-fun b!899104 () Bool)

(declare-fun res!408836 () Bool)

(declare-fun e!588097 () Bool)

(assert (=> b!899104 (=> (not res!408836) (not e!588097))))

(assert (=> b!899104 (= res!408836 (not call!53496))))

(declare-fun b!899105 () Bool)

(assert (=> b!899105 (= e!588097 (= (head!1590 (_2!6185 lt!334059)) (c!145490 (removeUselessConcat!71 lt!334052))))))

(declare-fun d!278079 () Bool)

(assert (=> d!278079 e!588099))

(declare-fun c!145551 () Bool)

(assert (=> d!278079 (= c!145551 (is-EmptyExpr!2358 (removeUselessConcat!71 lt!334052)))))

(declare-fun lt!334114 () Bool)

(assert (=> d!278079 (= lt!334114 e!588096)))

(declare-fun c!145552 () Bool)

(assert (=> d!278079 (= c!145552 (isEmpty!5769 (_2!6185 lt!334059)))))

(assert (=> d!278079 (validRegex!827 (removeUselessConcat!71 lt!334052))))

(assert (=> d!278079 (= (matchR!896 (removeUselessConcat!71 lt!334052) (_2!6185 lt!334059)) lt!334114)))

(declare-fun b!899106 () Bool)

(assert (=> b!899106 (= e!588095 (not lt!334114))))

(declare-fun b!899107 () Bool)

(declare-fun e!588100 () Bool)

(assert (=> b!899107 (= e!588100 e!588098)))

(declare-fun res!408837 () Bool)

(assert (=> b!899107 (=> (not res!408837) (not e!588098))))

(assert (=> b!899107 (= res!408837 (not lt!334114))))

(declare-fun b!899108 () Bool)

(declare-fun res!408834 () Bool)

(assert (=> b!899108 (=> res!408834 e!588100)))

(assert (=> b!899108 (= res!408834 e!588097)))

(declare-fun res!408833 () Bool)

(assert (=> b!899108 (=> (not res!408833) (not e!588097))))

(assert (=> b!899108 (= res!408833 lt!334114)))

(declare-fun b!899109 () Bool)

(declare-fun res!408832 () Bool)

(assert (=> b!899109 (=> (not res!408832) (not e!588097))))

(assert (=> b!899109 (= res!408832 (isEmpty!5769 (tail!1152 (_2!6185 lt!334059))))))

(declare-fun b!899110 () Bool)

(declare-fun res!408835 () Bool)

(assert (=> b!899110 (=> res!408835 e!588100)))

(assert (=> b!899110 (= res!408835 (not (is-ElementMatch!2358 (removeUselessConcat!71 lt!334052))))))

(assert (=> b!899110 (= e!588095 e!588100)))

(declare-fun b!899111 () Bool)

(assert (=> b!899111 (= e!588096 (matchR!896 (derivativeStep!437 (removeUselessConcat!71 lt!334052) (head!1590 (_2!6185 lt!334059))) (tail!1152 (_2!6185 lt!334059))))))

(declare-fun b!899112 () Bool)

(assert (=> b!899112 (= e!588099 (= lt!334114 call!53496))))

(declare-fun bm!53491 () Bool)

(assert (=> bm!53491 (= call!53496 (isEmpty!5769 (_2!6185 lt!334059)))))

(assert (= (and d!278079 c!145552) b!899101))

(assert (= (and d!278079 (not c!145552)) b!899111))

(assert (= (and d!278079 c!145551) b!899112))

(assert (= (and d!278079 (not c!145551)) b!899102))

(assert (= (and b!899102 c!145553) b!899106))

(assert (= (and b!899102 (not c!145553)) b!899110))

(assert (= (and b!899110 (not res!408835)) b!899108))

(assert (= (and b!899108 res!408833) b!899104))

(assert (= (and b!899104 res!408836) b!899109))

(assert (= (and b!899109 res!408832) b!899105))

(assert (= (and b!899108 (not res!408834)) b!899107))

(assert (= (and b!899107 res!408837) b!899099))

(assert (= (and b!899099 (not res!408839)) b!899103))

(assert (= (and b!899103 (not res!408838)) b!899100))

(assert (= (or b!899112 b!899099 b!899104) bm!53491))

(declare-fun m!1137527 () Bool)

(assert (=> b!899111 m!1137527))

(assert (=> b!899111 m!1137401))

(assert (=> b!899111 m!1137527))

(declare-fun m!1137529 () Bool)

(assert (=> b!899111 m!1137529))

(declare-fun m!1137531 () Bool)

(assert (=> b!899111 m!1137531))

(assert (=> b!899111 m!1137529))

(assert (=> b!899111 m!1137531))

(declare-fun m!1137533 () Bool)

(assert (=> b!899111 m!1137533))

(assert (=> b!899109 m!1137531))

(assert (=> b!899109 m!1137531))

(declare-fun m!1137535 () Bool)

(assert (=> b!899109 m!1137535))

(declare-fun m!1137537 () Bool)

(assert (=> bm!53491 m!1137537))

(assert (=> b!899103 m!1137531))

(assert (=> b!899103 m!1137531))

(assert (=> b!899103 m!1137535))

(assert (=> b!899100 m!1137527))

(assert (=> d!278079 m!1137537))

(assert (=> d!278079 m!1137401))

(declare-fun m!1137539 () Bool)

(assert (=> d!278079 m!1137539))

(assert (=> b!899105 m!1137527))

(assert (=> b!899101 m!1137401))

(declare-fun m!1137541 () Bool)

(assert (=> b!899101 m!1137541))

(assert (=> b!898838 d!278079))

(declare-fun d!278081 () Bool)

(assert (=> d!278081 (= (matchR!896 lt!334052 (_2!6185 lt!334059)) (matchR!896 (removeUselessConcat!71 lt!334052) (_2!6185 lt!334059)))))

(declare-fun lt!334117 () Unit!14299)

(declare-fun choose!5409 (Regex!2358 List!9588) Unit!14299)

(assert (=> d!278081 (= lt!334117 (choose!5409 lt!334052 (_2!6185 lt!334059)))))

(assert (=> d!278081 (validRegex!827 lt!334052)))

(assert (=> d!278081 (= (lemmaRemoveUselessConcatSound!63 lt!334052 (_2!6185 lt!334059)) lt!334117)))

(declare-fun bs!235117 () Bool)

(assert (= bs!235117 d!278081))

(assert (=> bs!235117 m!1137373))

(assert (=> bs!235117 m!1137523))

(declare-fun m!1137543 () Bool)

(assert (=> bs!235117 m!1137543))

(assert (=> bs!235117 m!1137401))

(assert (=> bs!235117 m!1137401))

(assert (=> bs!235117 m!1137403))

(assert (=> b!898838 d!278081))

(declare-fun b!899119 () Bool)

(declare-fun e!588104 () Bool)

(declare-fun lt!334118 () Regex!2358)

(assert (=> b!899119 (= e!588104 (= (nullable!625 lt!334118) (nullable!625 (reg!2687 r!15766))))))

(declare-fun b!899120 () Bool)

(declare-fun c!145554 () Bool)

(assert (=> b!899120 (= c!145554 (is-Star!2358 (reg!2687 r!15766)))))

(declare-fun e!588108 () Regex!2358)

(declare-fun e!588107 () Regex!2358)

(assert (=> b!899120 (= e!588108 e!588107)))

(declare-fun b!899121 () Bool)

(declare-fun call!53498 () Regex!2358)

(declare-fun call!53497 () Regex!2358)

(assert (=> b!899121 (= e!588108 (Union!2358 call!53498 call!53497))))

(declare-fun b!899122 () Bool)

(assert (=> b!899122 (= e!588107 (reg!2687 r!15766))))

(declare-fun bm!53492 () Bool)

(declare-fun c!145555 () Bool)

(declare-fun call!53499 () Regex!2358)

(declare-fun c!145557 () Bool)

(declare-fun c!145556 () Bool)

(assert (=> bm!53492 (= call!53499 (removeUselessConcat!71 (ite c!145557 (regTwo!5228 (reg!2687 r!15766)) (ite (or c!145556 c!145555) (regOne!5228 (reg!2687 r!15766)) (regOne!5229 (reg!2687 r!15766))))))))

(declare-fun b!899123 () Bool)

(declare-fun e!588109 () Regex!2358)

(declare-fun e!588106 () Regex!2358)

(assert (=> b!899123 (= e!588109 e!588106)))

(assert (=> b!899123 (= c!145556 (and (is-Concat!4191 (reg!2687 r!15766)) (is-EmptyExpr!2358 (regTwo!5228 (reg!2687 r!15766)))))))

(declare-fun b!899125 () Bool)

(declare-fun e!588105 () Regex!2358)

(assert (=> b!899125 (= e!588105 e!588108)))

(declare-fun c!145558 () Bool)

(assert (=> b!899125 (= c!145558 (is-Union!2358 (reg!2687 r!15766)))))

(declare-fun bm!53493 () Bool)

(declare-fun call!53501 () Regex!2358)

(assert (=> bm!53493 (= call!53501 (removeUselessConcat!71 (ite c!145555 (regTwo!5228 (reg!2687 r!15766)) (ite c!145558 (regTwo!5229 (reg!2687 r!15766)) (reg!2687 (reg!2687 r!15766))))))))

(declare-fun bm!53494 () Bool)

(assert (=> bm!53494 (= call!53497 call!53501)))

(declare-fun b!899126 () Bool)

(assert (=> b!899126 (= c!145555 (is-Concat!4191 (reg!2687 r!15766)))))

(assert (=> b!899126 (= e!588106 e!588105)))

(declare-fun b!899127 () Bool)

(assert (=> b!899127 (= e!588105 (Concat!4191 call!53498 call!53501))))

(declare-fun b!899124 () Bool)

(assert (=> b!899124 (= e!588109 call!53499)))

(declare-fun d!278083 () Bool)

(assert (=> d!278083 e!588104))

(declare-fun res!408846 () Bool)

(assert (=> d!278083 (=> (not res!408846) (not e!588104))))

(assert (=> d!278083 (= res!408846 (validRegex!827 lt!334118))))

(assert (=> d!278083 (= lt!334118 e!588109)))

(assert (=> d!278083 (= c!145557 (and (is-Concat!4191 (reg!2687 r!15766)) (is-EmptyExpr!2358 (regOne!5228 (reg!2687 r!15766)))))))

(assert (=> d!278083 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278083 (= (removeUselessConcat!71 (reg!2687 r!15766)) lt!334118)))

(declare-fun bm!53495 () Bool)

(declare-fun call!53500 () Regex!2358)

(assert (=> bm!53495 (= call!53500 call!53499)))

(declare-fun b!899128 () Bool)

(assert (=> b!899128 (= e!588106 call!53500)))

(declare-fun bm!53496 () Bool)

(assert (=> bm!53496 (= call!53498 call!53500)))

(declare-fun b!899129 () Bool)

(assert (=> b!899129 (= e!588107 (Star!2358 call!53497))))

(assert (= (and d!278083 c!145557) b!899124))

(assert (= (and d!278083 (not c!145557)) b!899123))

(assert (= (and b!899123 c!145556) b!899128))

(assert (= (and b!899123 (not c!145556)) b!899126))

(assert (= (and b!899126 c!145555) b!899127))

(assert (= (and b!899126 (not c!145555)) b!899125))

(assert (= (and b!899125 c!145558) b!899121))

(assert (= (and b!899125 (not c!145558)) b!899120))

(assert (= (and b!899120 c!145554) b!899129))

(assert (= (and b!899120 (not c!145554)) b!899122))

(assert (= (or b!899121 b!899129) bm!53494))

(assert (= (or b!899127 bm!53494) bm!53493))

(assert (= (or b!899127 b!899121) bm!53496))

(assert (= (or b!899128 bm!53496) bm!53495))

(assert (= (or b!899124 bm!53495) bm!53492))

(assert (= (and d!278083 res!408846) b!899119))

(declare-fun m!1137545 () Bool)

(assert (=> b!899119 m!1137545))

(assert (=> b!899119 m!1137485))

(declare-fun m!1137547 () Bool)

(assert (=> bm!53492 m!1137547))

(declare-fun m!1137549 () Bool)

(assert (=> bm!53493 m!1137549))

(declare-fun m!1137551 () Bool)

(assert (=> d!278083 m!1137551))

(assert (=> d!278083 m!1137407))

(assert (=> b!898838 d!278083))

(declare-fun b!899130 () Bool)

(declare-fun e!588113 () Bool)

(declare-fun e!588116 () Bool)

(assert (=> b!899130 (= e!588113 e!588116)))

(declare-fun res!408854 () Bool)

(assert (=> b!899130 (=> res!408854 e!588116)))

(declare-fun call!53502 () Bool)

(assert (=> b!899130 (= res!408854 call!53502)))

(declare-fun b!899131 () Bool)

(assert (=> b!899131 (= e!588116 (not (= (head!1590 (_1!6185 lt!334059)) (c!145490 (removeUselessConcat!71 (reg!2687 r!15766))))))))

(declare-fun b!899132 () Bool)

(declare-fun e!588111 () Bool)

(assert (=> b!899132 (= e!588111 (nullable!625 (removeUselessConcat!71 (reg!2687 r!15766))))))

(declare-fun b!899133 () Bool)

(declare-fun e!588114 () Bool)

(declare-fun e!588110 () Bool)

(assert (=> b!899133 (= e!588114 e!588110)))

(declare-fun c!145561 () Bool)

(assert (=> b!899133 (= c!145561 (is-EmptyLang!2358 (removeUselessConcat!71 (reg!2687 r!15766))))))

(declare-fun b!899134 () Bool)

(declare-fun res!408853 () Bool)

(assert (=> b!899134 (=> res!408853 e!588116)))

(assert (=> b!899134 (= res!408853 (not (isEmpty!5769 (tail!1152 (_1!6185 lt!334059)))))))

(declare-fun b!899135 () Bool)

(declare-fun res!408851 () Bool)

(declare-fun e!588112 () Bool)

(assert (=> b!899135 (=> (not res!408851) (not e!588112))))

(assert (=> b!899135 (= res!408851 (not call!53502))))

(declare-fun b!899136 () Bool)

(assert (=> b!899136 (= e!588112 (= (head!1590 (_1!6185 lt!334059)) (c!145490 (removeUselessConcat!71 (reg!2687 r!15766)))))))

(declare-fun d!278085 () Bool)

(assert (=> d!278085 e!588114))

(declare-fun c!145559 () Bool)

(assert (=> d!278085 (= c!145559 (is-EmptyExpr!2358 (removeUselessConcat!71 (reg!2687 r!15766))))))

(declare-fun lt!334119 () Bool)

(assert (=> d!278085 (= lt!334119 e!588111)))

(declare-fun c!145560 () Bool)

(assert (=> d!278085 (= c!145560 (isEmpty!5769 (_1!6185 lt!334059)))))

(assert (=> d!278085 (validRegex!827 (removeUselessConcat!71 (reg!2687 r!15766)))))

(assert (=> d!278085 (= (matchR!896 (removeUselessConcat!71 (reg!2687 r!15766)) (_1!6185 lt!334059)) lt!334119)))

(declare-fun b!899137 () Bool)

(assert (=> b!899137 (= e!588110 (not lt!334119))))

(declare-fun b!899138 () Bool)

(declare-fun e!588115 () Bool)

(assert (=> b!899138 (= e!588115 e!588113)))

(declare-fun res!408852 () Bool)

(assert (=> b!899138 (=> (not res!408852) (not e!588113))))

(assert (=> b!899138 (= res!408852 (not lt!334119))))

(declare-fun b!899139 () Bool)

(declare-fun res!408849 () Bool)

(assert (=> b!899139 (=> res!408849 e!588115)))

(assert (=> b!899139 (= res!408849 e!588112)))

(declare-fun res!408848 () Bool)

(assert (=> b!899139 (=> (not res!408848) (not e!588112))))

(assert (=> b!899139 (= res!408848 lt!334119)))

(declare-fun b!899140 () Bool)

(declare-fun res!408847 () Bool)

(assert (=> b!899140 (=> (not res!408847) (not e!588112))))

(assert (=> b!899140 (= res!408847 (isEmpty!5769 (tail!1152 (_1!6185 lt!334059))))))

(declare-fun b!899141 () Bool)

(declare-fun res!408850 () Bool)

(assert (=> b!899141 (=> res!408850 e!588115)))

(assert (=> b!899141 (= res!408850 (not (is-ElementMatch!2358 (removeUselessConcat!71 (reg!2687 r!15766)))))))

(assert (=> b!899141 (= e!588110 e!588115)))

(declare-fun b!899142 () Bool)

(assert (=> b!899142 (= e!588111 (matchR!896 (derivativeStep!437 (removeUselessConcat!71 (reg!2687 r!15766)) (head!1590 (_1!6185 lt!334059))) (tail!1152 (_1!6185 lt!334059))))))

(declare-fun b!899143 () Bool)

(assert (=> b!899143 (= e!588114 (= lt!334119 call!53502))))

(declare-fun bm!53497 () Bool)

(assert (=> bm!53497 (= call!53502 (isEmpty!5769 (_1!6185 lt!334059)))))

(assert (= (and d!278085 c!145560) b!899132))

(assert (= (and d!278085 (not c!145560)) b!899142))

(assert (= (and d!278085 c!145559) b!899143))

(assert (= (and d!278085 (not c!145559)) b!899133))

(assert (= (and b!899133 c!145561) b!899137))

(assert (= (and b!899133 (not c!145561)) b!899141))

(assert (= (and b!899141 (not res!408850)) b!899139))

(assert (= (and b!899139 res!408848) b!899135))

(assert (= (and b!899135 res!408851) b!899140))

(assert (= (and b!899140 res!408847) b!899136))

(assert (= (and b!899139 (not res!408849)) b!899138))

(assert (= (and b!899138 res!408852) b!899130))

(assert (= (and b!899130 (not res!408854)) b!899134))

(assert (= (and b!899134 (not res!408853)) b!899131))

(assert (= (or b!899143 b!899130 b!899135) bm!53497))

(assert (=> b!899142 m!1137473))

(assert (=> b!899142 m!1137395))

(assert (=> b!899142 m!1137473))

(declare-fun m!1137553 () Bool)

(assert (=> b!899142 m!1137553))

(assert (=> b!899142 m!1137477))

(assert (=> b!899142 m!1137553))

(assert (=> b!899142 m!1137477))

(declare-fun m!1137555 () Bool)

(assert (=> b!899142 m!1137555))

(assert (=> b!899140 m!1137477))

(assert (=> b!899140 m!1137477))

(assert (=> b!899140 m!1137481))

(assert (=> bm!53497 m!1137483))

(assert (=> b!899134 m!1137477))

(assert (=> b!899134 m!1137477))

(assert (=> b!899134 m!1137481))

(assert (=> b!899131 m!1137473))

(assert (=> d!278085 m!1137483))

(assert (=> d!278085 m!1137395))

(declare-fun m!1137557 () Bool)

(assert (=> d!278085 m!1137557))

(assert (=> b!899136 m!1137473))

(assert (=> b!899132 m!1137395))

(declare-fun m!1137559 () Bool)

(assert (=> b!899132 m!1137559))

(assert (=> b!898838 d!278085))

(declare-fun b!899166 () Bool)

(declare-fun e!588138 () Bool)

(declare-fun call!53513 () Bool)

(assert (=> b!899166 (= e!588138 call!53513)))

(declare-fun c!145566 () Bool)

(declare-fun c!145567 () Bool)

(declare-fun bm!53508 () Bool)

(declare-fun call!53514 () Bool)

(assert (=> bm!53508 (= call!53514 (validRegex!827 (ite c!145567 (reg!2687 (reg!2687 r!15766)) (ite c!145566 (regOne!5229 (reg!2687 r!15766)) (regOne!5228 (reg!2687 r!15766))))))))

(declare-fun b!899167 () Bool)

(declare-fun e!588133 () Bool)

(declare-fun e!588136 () Bool)

(assert (=> b!899167 (= e!588133 e!588136)))

(declare-fun res!408873 () Bool)

(assert (=> b!899167 (=> (not res!408873) (not e!588136))))

(declare-fun call!53515 () Bool)

(assert (=> b!899167 (= res!408873 call!53515)))

(declare-fun b!899168 () Bool)

(declare-fun e!588137 () Bool)

(declare-fun e!588134 () Bool)

(assert (=> b!899168 (= e!588137 e!588134)))

(assert (=> b!899168 (= c!145566 (is-Union!2358 (reg!2687 r!15766)))))

(declare-fun b!899169 () Bool)

(assert (=> b!899169 (= e!588136 call!53513)))

(declare-fun bm!53509 () Bool)

(assert (=> bm!53509 (= call!53515 call!53514)))

(declare-fun d!278087 () Bool)

(declare-fun res!408870 () Bool)

(declare-fun e!588139 () Bool)

(assert (=> d!278087 (=> res!408870 e!588139)))

(assert (=> d!278087 (= res!408870 (is-ElementMatch!2358 (reg!2687 r!15766)))))

(assert (=> d!278087 (= (validRegex!827 (reg!2687 r!15766)) e!588139)))

(declare-fun b!899170 () Bool)

(declare-fun e!588135 () Bool)

(assert (=> b!899170 (= e!588137 e!588135)))

(declare-fun res!408871 () Bool)

(assert (=> b!899170 (= res!408871 (not (nullable!625 (reg!2687 (reg!2687 r!15766)))))))

(assert (=> b!899170 (=> (not res!408871) (not e!588135))))

(declare-fun b!899171 () Bool)

(declare-fun res!408872 () Bool)

(assert (=> b!899171 (=> (not res!408872) (not e!588138))))

(assert (=> b!899171 (= res!408872 call!53515)))

(assert (=> b!899171 (= e!588134 e!588138)))

(declare-fun b!899172 () Bool)

(assert (=> b!899172 (= e!588139 e!588137)))

(assert (=> b!899172 (= c!145567 (is-Star!2358 (reg!2687 r!15766)))))

(declare-fun b!899173 () Bool)

(assert (=> b!899173 (= e!588135 call!53514)))

(declare-fun b!899174 () Bool)

(declare-fun res!408869 () Bool)

(assert (=> b!899174 (=> res!408869 e!588133)))

(assert (=> b!899174 (= res!408869 (not (is-Concat!4191 (reg!2687 r!15766))))))

(assert (=> b!899174 (= e!588134 e!588133)))

(declare-fun bm!53510 () Bool)

(assert (=> bm!53510 (= call!53513 (validRegex!827 (ite c!145566 (regTwo!5229 (reg!2687 r!15766)) (regTwo!5228 (reg!2687 r!15766)))))))

(assert (= (and d!278087 (not res!408870)) b!899172))

(assert (= (and b!899172 c!145567) b!899170))

(assert (= (and b!899172 (not c!145567)) b!899168))

(assert (= (and b!899170 res!408871) b!899173))

(assert (= (and b!899168 c!145566) b!899171))

(assert (= (and b!899168 (not c!145566)) b!899174))

(assert (= (and b!899171 res!408872) b!899166))

(assert (= (and b!899174 (not res!408869)) b!899167))

(assert (= (and b!899167 res!408873) b!899169))

(assert (= (or b!899166 b!899169) bm!53510))

(assert (= (or b!899171 b!899167) bm!53509))

(assert (= (or b!899173 bm!53509) bm!53508))

(declare-fun m!1137561 () Bool)

(assert (=> bm!53508 m!1137561))

(declare-fun m!1137563 () Bool)

(assert (=> b!899170 m!1137563))

(declare-fun m!1137565 () Bool)

(assert (=> bm!53510 m!1137565))

(assert (=> b!898838 d!278087))

(declare-fun d!278089 () Bool)

(assert (=> d!278089 (= (matchR!896 (reg!2687 r!15766) (_1!6185 lt!334059)) (matchR!896 (removeUselessConcat!71 (reg!2687 r!15766)) (_1!6185 lt!334059)))))

(declare-fun lt!334120 () Unit!14299)

(assert (=> d!278089 (= lt!334120 (choose!5409 (reg!2687 r!15766) (_1!6185 lt!334059)))))

(assert (=> d!278089 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278089 (= (lemmaRemoveUselessConcatSound!63 (reg!2687 r!15766) (_1!6185 lt!334059)) lt!334120)))

(declare-fun bs!235118 () Bool)

(assert (= bs!235118 d!278089))

(assert (=> bs!235118 m!1137413))

(assert (=> bs!235118 m!1137407))

(declare-fun m!1137567 () Bool)

(assert (=> bs!235118 m!1137567))

(assert (=> bs!235118 m!1137395))

(assert (=> bs!235118 m!1137395))

(assert (=> bs!235118 m!1137397))

(assert (=> b!898838 d!278089))

(declare-fun d!278091 () Bool)

(declare-fun lt!334121 () Int)

(assert (=> d!278091 (>= lt!334121 0)))

(declare-fun e!588140 () Int)

(assert (=> d!278091 (= lt!334121 e!588140)))

(declare-fun c!145568 () Bool)

(assert (=> d!278091 (= c!145568 (is-Nil!9572 (_2!6185 lt!334059)))))

(assert (=> d!278091 (= (size!7863 (_2!6185 lt!334059)) lt!334121)))

(declare-fun b!899175 () Bool)

(assert (=> b!899175 (= e!588140 0)))

(declare-fun b!899176 () Bool)

(assert (=> b!899176 (= e!588140 (+ 1 (size!7863 (t!100634 (_2!6185 lt!334059)))))))

(assert (= (and d!278091 c!145568) b!899175))

(assert (= (and d!278091 (not c!145568)) b!899176))

(declare-fun m!1137569 () Bool)

(assert (=> b!899176 m!1137569))

(assert (=> b!898838 d!278091))

(declare-fun b!899177 () Bool)

(declare-fun e!588144 () Bool)

(declare-fun e!588147 () Bool)

(assert (=> b!899177 (= e!588144 e!588147)))

(declare-fun res!408881 () Bool)

(assert (=> b!899177 (=> res!408881 e!588147)))

(declare-fun call!53516 () Bool)

(assert (=> b!899177 (= res!408881 call!53516)))

(declare-fun b!899178 () Bool)

(assert (=> b!899178 (= e!588147 (not (= (head!1590 (_2!6185 lt!334059)) (c!145490 lt!334052))))))

(declare-fun b!899179 () Bool)

(declare-fun e!588142 () Bool)

(assert (=> b!899179 (= e!588142 (nullable!625 lt!334052))))

(declare-fun b!899180 () Bool)

(declare-fun e!588145 () Bool)

(declare-fun e!588141 () Bool)

(assert (=> b!899180 (= e!588145 e!588141)))

(declare-fun c!145571 () Bool)

(assert (=> b!899180 (= c!145571 (is-EmptyLang!2358 lt!334052))))

(declare-fun b!899181 () Bool)

(declare-fun res!408880 () Bool)

(assert (=> b!899181 (=> res!408880 e!588147)))

(assert (=> b!899181 (= res!408880 (not (isEmpty!5769 (tail!1152 (_2!6185 lt!334059)))))))

(declare-fun b!899182 () Bool)

(declare-fun res!408878 () Bool)

(declare-fun e!588143 () Bool)

(assert (=> b!899182 (=> (not res!408878) (not e!588143))))

(assert (=> b!899182 (= res!408878 (not call!53516))))

(declare-fun b!899183 () Bool)

(assert (=> b!899183 (= e!588143 (= (head!1590 (_2!6185 lt!334059)) (c!145490 lt!334052)))))

(declare-fun d!278093 () Bool)

(assert (=> d!278093 e!588145))

(declare-fun c!145569 () Bool)

(assert (=> d!278093 (= c!145569 (is-EmptyExpr!2358 lt!334052))))

(declare-fun lt!334122 () Bool)

(assert (=> d!278093 (= lt!334122 e!588142)))

(declare-fun c!145570 () Bool)

(assert (=> d!278093 (= c!145570 (isEmpty!5769 (_2!6185 lt!334059)))))

(assert (=> d!278093 (validRegex!827 lt!334052)))

(assert (=> d!278093 (= (matchR!896 lt!334052 (_2!6185 lt!334059)) lt!334122)))

(declare-fun b!899184 () Bool)

(assert (=> b!899184 (= e!588141 (not lt!334122))))

(declare-fun b!899185 () Bool)

(declare-fun e!588146 () Bool)

(assert (=> b!899185 (= e!588146 e!588144)))

(declare-fun res!408879 () Bool)

(assert (=> b!899185 (=> (not res!408879) (not e!588144))))

(assert (=> b!899185 (= res!408879 (not lt!334122))))

(declare-fun b!899186 () Bool)

(declare-fun res!408876 () Bool)

(assert (=> b!899186 (=> res!408876 e!588146)))

(assert (=> b!899186 (= res!408876 e!588143)))

(declare-fun res!408875 () Bool)

(assert (=> b!899186 (=> (not res!408875) (not e!588143))))

(assert (=> b!899186 (= res!408875 lt!334122)))

(declare-fun b!899187 () Bool)

(declare-fun res!408874 () Bool)

(assert (=> b!899187 (=> (not res!408874) (not e!588143))))

(assert (=> b!899187 (= res!408874 (isEmpty!5769 (tail!1152 (_2!6185 lt!334059))))))

(declare-fun b!899188 () Bool)

(declare-fun res!408877 () Bool)

(assert (=> b!899188 (=> res!408877 e!588146)))

(assert (=> b!899188 (= res!408877 (not (is-ElementMatch!2358 lt!334052)))))

(assert (=> b!899188 (= e!588141 e!588146)))

(declare-fun b!899189 () Bool)

(assert (=> b!899189 (= e!588142 (matchR!896 (derivativeStep!437 lt!334052 (head!1590 (_2!6185 lt!334059))) (tail!1152 (_2!6185 lt!334059))))))

(declare-fun b!899190 () Bool)

(assert (=> b!899190 (= e!588145 (= lt!334122 call!53516))))

(declare-fun bm!53511 () Bool)

(assert (=> bm!53511 (= call!53516 (isEmpty!5769 (_2!6185 lt!334059)))))

(assert (= (and d!278093 c!145570) b!899179))

(assert (= (and d!278093 (not c!145570)) b!899189))

(assert (= (and d!278093 c!145569) b!899190))

(assert (= (and d!278093 (not c!145569)) b!899180))

(assert (= (and b!899180 c!145571) b!899184))

(assert (= (and b!899180 (not c!145571)) b!899188))

(assert (= (and b!899188 (not res!408877)) b!899186))

(assert (= (and b!899186 res!408875) b!899182))

(assert (= (and b!899182 res!408878) b!899187))

(assert (= (and b!899187 res!408874) b!899183))

(assert (= (and b!899186 (not res!408876)) b!899185))

(assert (= (and b!899185 res!408879) b!899177))

(assert (= (and b!899177 (not res!408881)) b!899181))

(assert (= (and b!899181 (not res!408880)) b!899178))

(assert (= (or b!899190 b!899177 b!899182) bm!53511))

(assert (=> b!899189 m!1137527))

(assert (=> b!899189 m!1137527))

(declare-fun m!1137571 () Bool)

(assert (=> b!899189 m!1137571))

(assert (=> b!899189 m!1137531))

(assert (=> b!899189 m!1137571))

(assert (=> b!899189 m!1137531))

(declare-fun m!1137573 () Bool)

(assert (=> b!899189 m!1137573))

(assert (=> b!899187 m!1137531))

(assert (=> b!899187 m!1137531))

(assert (=> b!899187 m!1137535))

(assert (=> bm!53511 m!1137537))

(assert (=> b!899181 m!1137531))

(assert (=> b!899181 m!1137531))

(assert (=> b!899181 m!1137535))

(assert (=> b!899178 m!1137527))

(assert (=> d!278093 m!1137537))

(assert (=> d!278093 m!1137523))

(assert (=> b!899183 m!1137527))

(assert (=> b!899179 m!1137515))

(assert (=> b!898850 d!278093))

(declare-fun d!278095 () Bool)

(declare-fun choose!5410 (Int) Bool)

(assert (=> d!278095 (= (Exists!135 lambda!28024) (choose!5410 lambda!28024))))

(declare-fun bs!235119 () Bool)

(assert (= bs!235119 d!278095))

(declare-fun m!1137575 () Bool)

(assert (=> bs!235119 m!1137575))

(assert (=> b!898839 d!278095))

(declare-fun d!278097 () Bool)

(declare-fun isEmpty!5771 (Option!2001) Bool)

(assert (=> d!278097 (= (isDefined!1643 lt!334055) (not (isEmpty!5771 lt!334055)))))

(declare-fun bs!235120 () Bool)

(assert (= bs!235120 d!278097))

(declare-fun m!1137577 () Bool)

(assert (=> bs!235120 m!1137577))

(assert (=> b!898839 d!278097))

(declare-fun d!278099 () Bool)

(assert (=> d!278099 (= (isEmpty!5769 s!10566) (is-Nil!9572 s!10566))))

(assert (=> b!898839 d!278099))

(declare-fun bs!235124 () Bool)

(declare-fun d!278101 () Bool)

(assert (= bs!235124 (and d!278101 b!898839)))

(declare-fun lambda!28049 () Int)

(assert (=> bs!235124 (= (= (Star!2358 (reg!2687 r!15766)) lt!334052) (= lambda!28049 lambda!28023))))

(assert (=> bs!235124 (not (= lambda!28049 lambda!28024))))

(declare-fun bs!235125 () Bool)

(assert (= bs!235125 (and d!278101 b!899022)))

(assert (=> bs!235125 (not (= lambda!28049 lambda!28037))))

(declare-fun bs!235126 () Bool)

(assert (= bs!235126 (and d!278101 b!899017)))

(assert (=> bs!235126 (not (= lambda!28049 lambda!28038))))

(assert (=> d!278101 true))

(assert (=> d!278101 true))

(declare-fun bs!235127 () Bool)

(assert (= bs!235127 d!278101))

(declare-fun lambda!28050 () Int)

(assert (=> bs!235127 (not (= lambda!28050 lambda!28049))))

(assert (=> bs!235126 (not (= lambda!28050 lambda!28038))))

(assert (=> bs!235125 (= (= (Star!2358 (reg!2687 r!15766)) r!15766) (= lambda!28050 lambda!28037))))

(assert (=> bs!235124 (= (= (Star!2358 (reg!2687 r!15766)) lt!334052) (= lambda!28050 lambda!28024))))

(assert (=> bs!235124 (not (= lambda!28050 lambda!28023))))

(assert (=> d!278101 true))

(assert (=> d!278101 true))

(assert (=> d!278101 (= (Exists!135 lambda!28049) (Exists!135 lambda!28050))))

(declare-fun lt!334125 () Unit!14299)

(declare-fun choose!5411 (Regex!2358 List!9588) Unit!14299)

(assert (=> d!278101 (= lt!334125 (choose!5411 (reg!2687 r!15766) s!10566))))

(assert (=> d!278101 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278101 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!27 (reg!2687 r!15766) s!10566) lt!334125)))

(declare-fun m!1137585 () Bool)

(assert (=> bs!235127 m!1137585))

(declare-fun m!1137587 () Bool)

(assert (=> bs!235127 m!1137587))

(declare-fun m!1137589 () Bool)

(assert (=> bs!235127 m!1137589))

(assert (=> bs!235127 m!1137407))

(assert (=> b!898839 d!278101))

(declare-fun d!278105 () Bool)

(assert (=> d!278105 (= (Exists!135 lambda!28023) (choose!5410 lambda!28023))))

(declare-fun bs!235128 () Bool)

(assert (= bs!235128 d!278105))

(declare-fun m!1137591 () Bool)

(assert (=> bs!235128 m!1137591))

(assert (=> b!898839 d!278105))

(declare-fun b!899258 () Bool)

(declare-fun e!588183 () Bool)

(assert (=> b!899258 (= e!588183 (matchR!896 lt!334052 s!10566))))

(declare-fun b!899259 () Bool)

(declare-fun e!588187 () Option!2001)

(assert (=> b!899259 (= e!588187 (Some!2000 (tuple2!10719 Nil!9572 s!10566)))))

(declare-fun b!899260 () Bool)

(declare-fun e!588184 () Bool)

(declare-fun lt!334135 () Option!2001)

(assert (=> b!899260 (= e!588184 (not (isDefined!1643 lt!334135)))))

(declare-fun d!278107 () Bool)

(assert (=> d!278107 e!588184))

(declare-fun res!408925 () Bool)

(assert (=> d!278107 (=> res!408925 e!588184)))

(declare-fun e!588186 () Bool)

(assert (=> d!278107 (= res!408925 e!588186)))

(declare-fun res!408923 () Bool)

(assert (=> d!278107 (=> (not res!408923) (not e!588186))))

(assert (=> d!278107 (= res!408923 (isDefined!1643 lt!334135))))

(assert (=> d!278107 (= lt!334135 e!588187)))

(declare-fun c!145587 () Bool)

(assert (=> d!278107 (= c!145587 e!588183)))

(declare-fun res!408924 () Bool)

(assert (=> d!278107 (=> (not res!408924) (not e!588183))))

(assert (=> d!278107 (= res!408924 (matchR!896 (reg!2687 r!15766) Nil!9572))))

(assert (=> d!278107 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278107 (= (findConcatSeparation!107 (reg!2687 r!15766) lt!334052 Nil!9572 s!10566 s!10566) lt!334135)))

(declare-fun b!899261 () Bool)

(declare-fun res!408922 () Bool)

(assert (=> b!899261 (=> (not res!408922) (not e!588186))))

(assert (=> b!899261 (= res!408922 (matchR!896 (reg!2687 r!15766) (_1!6185 (get!3036 lt!334135))))))

(declare-fun b!899262 () Bool)

(declare-fun e!588185 () Option!2001)

(assert (=> b!899262 (= e!588187 e!588185)))

(declare-fun c!145586 () Bool)

(assert (=> b!899262 (= c!145586 (is-Nil!9572 s!10566))))

(declare-fun b!899263 () Bool)

(declare-fun lt!334134 () Unit!14299)

(declare-fun lt!334136 () Unit!14299)

(assert (=> b!899263 (= lt!334134 lt!334136)))

(declare-fun ++!2500 (List!9588 List!9588) List!9588)

(assert (=> b!899263 (= (++!2500 (++!2500 Nil!9572 (Cons!9572 (h!14973 s!10566) Nil!9572)) (t!100634 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!124 (List!9588 C!5286 List!9588 List!9588) Unit!14299)

(assert (=> b!899263 (= lt!334136 (lemmaMoveElementToOtherListKeepsConcatEq!124 Nil!9572 (h!14973 s!10566) (t!100634 s!10566) s!10566))))

(assert (=> b!899263 (= e!588185 (findConcatSeparation!107 (reg!2687 r!15766) lt!334052 (++!2500 Nil!9572 (Cons!9572 (h!14973 s!10566) Nil!9572)) (t!100634 s!10566) s!10566))))

(declare-fun b!899264 () Bool)

(declare-fun res!408921 () Bool)

(assert (=> b!899264 (=> (not res!408921) (not e!588186))))

(assert (=> b!899264 (= res!408921 (matchR!896 lt!334052 (_2!6185 (get!3036 lt!334135))))))

(declare-fun b!899265 () Bool)

(assert (=> b!899265 (= e!588186 (= (++!2500 (_1!6185 (get!3036 lt!334135)) (_2!6185 (get!3036 lt!334135))) s!10566))))

(declare-fun b!899266 () Bool)

(assert (=> b!899266 (= e!588185 None!2000)))

(assert (= (and d!278107 res!408924) b!899258))

(assert (= (and d!278107 c!145587) b!899259))

(assert (= (and d!278107 (not c!145587)) b!899262))

(assert (= (and b!899262 c!145586) b!899266))

(assert (= (and b!899262 (not c!145586)) b!899263))

(assert (= (and d!278107 res!408923) b!899261))

(assert (= (and b!899261 res!408922) b!899264))

(assert (= (and b!899264 res!408921) b!899265))

(assert (= (and d!278107 (not res!408925)) b!899260))

(declare-fun m!1137593 () Bool)

(assert (=> b!899265 m!1137593))

(declare-fun m!1137595 () Bool)

(assert (=> b!899265 m!1137595))

(declare-fun m!1137597 () Bool)

(assert (=> d!278107 m!1137597))

(declare-fun m!1137599 () Bool)

(assert (=> d!278107 m!1137599))

(assert (=> d!278107 m!1137407))

(declare-fun m!1137601 () Bool)

(assert (=> b!899263 m!1137601))

(assert (=> b!899263 m!1137601))

(declare-fun m!1137603 () Bool)

(assert (=> b!899263 m!1137603))

(declare-fun m!1137605 () Bool)

(assert (=> b!899263 m!1137605))

(assert (=> b!899263 m!1137601))

(declare-fun m!1137607 () Bool)

(assert (=> b!899263 m!1137607))

(declare-fun m!1137609 () Bool)

(assert (=> b!899258 m!1137609))

(assert (=> b!899264 m!1137593))

(declare-fun m!1137611 () Bool)

(assert (=> b!899264 m!1137611))

(assert (=> b!899261 m!1137593))

(declare-fun m!1137613 () Bool)

(assert (=> b!899261 m!1137613))

(assert (=> b!899260 m!1137597))

(assert (=> b!898839 d!278107))

(declare-fun bs!235129 () Bool)

(declare-fun d!278109 () Bool)

(assert (= bs!235129 (and d!278109 d!278101)))

(declare-fun lambda!28053 () Int)

(assert (=> bs!235129 (= (= lt!334052 (Star!2358 (reg!2687 r!15766))) (= lambda!28053 lambda!28049))))

(assert (=> bs!235129 (not (= lambda!28053 lambda!28050))))

(declare-fun bs!235130 () Bool)

(assert (= bs!235130 (and d!278109 b!899017)))

(assert (=> bs!235130 (not (= lambda!28053 lambda!28038))))

(declare-fun bs!235131 () Bool)

(assert (= bs!235131 (and d!278109 b!899022)))

(assert (=> bs!235131 (not (= lambda!28053 lambda!28037))))

(declare-fun bs!235132 () Bool)

(assert (= bs!235132 (and d!278109 b!898839)))

(assert (=> bs!235132 (not (= lambda!28053 lambda!28024))))

(assert (=> bs!235132 (= lambda!28053 lambda!28023)))

(assert (=> d!278109 true))

(assert (=> d!278109 true))

(assert (=> d!278109 true))

(assert (=> d!278109 (= (isDefined!1643 (findConcatSeparation!107 (reg!2687 r!15766) lt!334052 Nil!9572 s!10566 s!10566)) (Exists!135 lambda!28053))))

(declare-fun lt!334140 () Unit!14299)

(declare-fun choose!5413 (Regex!2358 Regex!2358 List!9588) Unit!14299)

(assert (=> d!278109 (= lt!334140 (choose!5413 (reg!2687 r!15766) lt!334052 s!10566))))

(assert (=> d!278109 (validRegex!827 (reg!2687 r!15766))))

(assert (=> d!278109 (= (lemmaFindConcatSeparationEquivalentToExists!107 (reg!2687 r!15766) lt!334052 s!10566) lt!334140)))

(declare-fun bs!235133 () Bool)

(assert (= bs!235133 d!278109))

(declare-fun m!1137627 () Bool)

(assert (=> bs!235133 m!1137627))

(declare-fun m!1137629 () Bool)

(assert (=> bs!235133 m!1137629))

(assert (=> bs!235133 m!1137387))

(assert (=> bs!235133 m!1137387))

(declare-fun m!1137631 () Bool)

(assert (=> bs!235133 m!1137631))

(assert (=> bs!235133 m!1137407))

(assert (=> b!898839 d!278109))

(declare-fun b!899285 () Bool)

(declare-fun e!588202 () Bool)

(declare-fun call!53522 () Bool)

(assert (=> b!899285 (= e!588202 call!53522)))

(declare-fun call!53523 () Bool)

(declare-fun c!145591 () Bool)

(declare-fun bm!53517 () Bool)

(declare-fun c!145592 () Bool)

(assert (=> bm!53517 (= call!53523 (validRegex!827 (ite c!145592 (reg!2687 r!15766) (ite c!145591 (regOne!5229 r!15766) (regOne!5228 r!15766)))))))

(declare-fun b!899286 () Bool)

(declare-fun e!588197 () Bool)

(declare-fun e!588200 () Bool)

(assert (=> b!899286 (= e!588197 e!588200)))

(declare-fun res!408942 () Bool)

(assert (=> b!899286 (=> (not res!408942) (not e!588200))))

(declare-fun call!53524 () Bool)

(assert (=> b!899286 (= res!408942 call!53524)))

(declare-fun b!899287 () Bool)

(declare-fun e!588201 () Bool)

(declare-fun e!588198 () Bool)

(assert (=> b!899287 (= e!588201 e!588198)))

(assert (=> b!899287 (= c!145591 (is-Union!2358 r!15766))))

(declare-fun b!899288 () Bool)

(assert (=> b!899288 (= e!588200 call!53522)))

(declare-fun bm!53518 () Bool)

(assert (=> bm!53518 (= call!53524 call!53523)))

(declare-fun d!278113 () Bool)

(declare-fun res!408939 () Bool)

(declare-fun e!588203 () Bool)

(assert (=> d!278113 (=> res!408939 e!588203)))

(assert (=> d!278113 (= res!408939 (is-ElementMatch!2358 r!15766))))

(assert (=> d!278113 (= (validRegex!827 r!15766) e!588203)))

(declare-fun b!899289 () Bool)

(declare-fun e!588199 () Bool)

(assert (=> b!899289 (= e!588201 e!588199)))

(declare-fun res!408940 () Bool)

(assert (=> b!899289 (= res!408940 (not (nullable!625 (reg!2687 r!15766))))))

(assert (=> b!899289 (=> (not res!408940) (not e!588199))))

(declare-fun b!899290 () Bool)

(declare-fun res!408941 () Bool)

(assert (=> b!899290 (=> (not res!408941) (not e!588202))))

(assert (=> b!899290 (= res!408941 call!53524)))

(assert (=> b!899290 (= e!588198 e!588202)))

(declare-fun b!899291 () Bool)

(assert (=> b!899291 (= e!588203 e!588201)))

(assert (=> b!899291 (= c!145592 (is-Star!2358 r!15766))))

(declare-fun b!899292 () Bool)

(assert (=> b!899292 (= e!588199 call!53523)))

(declare-fun b!899293 () Bool)

(declare-fun res!408938 () Bool)

(assert (=> b!899293 (=> res!408938 e!588197)))

(assert (=> b!899293 (= res!408938 (not (is-Concat!4191 r!15766)))))

(assert (=> b!899293 (= e!588198 e!588197)))

(declare-fun bm!53519 () Bool)

(assert (=> bm!53519 (= call!53522 (validRegex!827 (ite c!145591 (regTwo!5229 r!15766) (regTwo!5228 r!15766))))))

(assert (= (and d!278113 (not res!408939)) b!899291))

(assert (= (and b!899291 c!145592) b!899289))

(assert (= (and b!899291 (not c!145592)) b!899287))

(assert (= (and b!899289 res!408940) b!899292))

(assert (= (and b!899287 c!145591) b!899290))

(assert (= (and b!899287 (not c!145591)) b!899293))

(assert (= (and b!899290 res!408941) b!899285))

(assert (= (and b!899293 (not res!408938)) b!899286))

(assert (= (and b!899286 res!408942) b!899288))

(assert (= (or b!899285 b!899288) bm!53519))

(assert (= (or b!899290 b!899286) bm!53518))

(assert (= (or b!899292 bm!53518) bm!53517))

(declare-fun m!1137633 () Bool)

(assert (=> bm!53517 m!1137633))

(assert (=> b!899289 m!1137485))

(declare-fun m!1137635 () Bool)

(assert (=> bm!53519 m!1137635))

(assert (=> start!80916 d!278113))

(declare-fun e!588206 () Bool)

(assert (=> b!898844 (= tp!282247 e!588206)))

(declare-fun b!899305 () Bool)

(declare-fun tp!282280 () Bool)

(declare-fun tp!282281 () Bool)

(assert (=> b!899305 (= e!588206 (and tp!282280 tp!282281))))

(declare-fun b!899306 () Bool)

(declare-fun tp!282283 () Bool)

(assert (=> b!899306 (= e!588206 tp!282283)))

(declare-fun b!899307 () Bool)

(declare-fun tp!282279 () Bool)

(declare-fun tp!282282 () Bool)

(assert (=> b!899307 (= e!588206 (and tp!282279 tp!282282))))

(declare-fun b!899304 () Bool)

(assert (=> b!899304 (= e!588206 tp_is_empty!4359)))

(assert (= (and b!898844 (is-ElementMatch!2358 (reg!2687 r!15766))) b!899304))

(assert (= (and b!898844 (is-Concat!4191 (reg!2687 r!15766))) b!899305))

(assert (= (and b!898844 (is-Star!2358 (reg!2687 r!15766))) b!899306))

(assert (= (and b!898844 (is-Union!2358 (reg!2687 r!15766))) b!899307))

(declare-fun e!588207 () Bool)

(assert (=> b!898840 (= tp!282249 e!588207)))

(declare-fun b!899309 () Bool)

(declare-fun tp!282285 () Bool)

(declare-fun tp!282286 () Bool)

(assert (=> b!899309 (= e!588207 (and tp!282285 tp!282286))))

(declare-fun b!899310 () Bool)

(declare-fun tp!282288 () Bool)

(assert (=> b!899310 (= e!588207 tp!282288)))

(declare-fun b!899311 () Bool)

(declare-fun tp!282284 () Bool)

(declare-fun tp!282287 () Bool)

(assert (=> b!899311 (= e!588207 (and tp!282284 tp!282287))))

(declare-fun b!899308 () Bool)

(assert (=> b!899308 (= e!588207 tp_is_empty!4359)))

(assert (= (and b!898840 (is-ElementMatch!2358 (regOne!5229 r!15766))) b!899308))

(assert (= (and b!898840 (is-Concat!4191 (regOne!5229 r!15766))) b!899309))

(assert (= (and b!898840 (is-Star!2358 (regOne!5229 r!15766))) b!899310))

(assert (= (and b!898840 (is-Union!2358 (regOne!5229 r!15766))) b!899311))

(declare-fun e!588208 () Bool)

(assert (=> b!898840 (= tp!282246 e!588208)))

(declare-fun b!899313 () Bool)

(declare-fun tp!282290 () Bool)

(declare-fun tp!282291 () Bool)

(assert (=> b!899313 (= e!588208 (and tp!282290 tp!282291))))

(declare-fun b!899314 () Bool)

(declare-fun tp!282293 () Bool)

(assert (=> b!899314 (= e!588208 tp!282293)))

(declare-fun b!899315 () Bool)

(declare-fun tp!282289 () Bool)

(declare-fun tp!282292 () Bool)

(assert (=> b!899315 (= e!588208 (and tp!282289 tp!282292))))

(declare-fun b!899312 () Bool)

(assert (=> b!899312 (= e!588208 tp_is_empty!4359)))

(assert (= (and b!898840 (is-ElementMatch!2358 (regTwo!5229 r!15766))) b!899312))

(assert (= (and b!898840 (is-Concat!4191 (regTwo!5229 r!15766))) b!899313))

(assert (= (and b!898840 (is-Star!2358 (regTwo!5229 r!15766))) b!899314))

(assert (= (and b!898840 (is-Union!2358 (regTwo!5229 r!15766))) b!899315))

(declare-fun b!899320 () Bool)

(declare-fun e!588211 () Bool)

(declare-fun tp!282296 () Bool)

(assert (=> b!899320 (= e!588211 (and tp_is_empty!4359 tp!282296))))

(assert (=> b!898845 (= tp!282250 e!588211)))

(assert (= (and b!898845 (is-Cons!9572 (t!100634 s!10566))) b!899320))

(declare-fun e!588212 () Bool)

(assert (=> b!898841 (= tp!282248 e!588212)))

(declare-fun b!899322 () Bool)

(declare-fun tp!282298 () Bool)

(declare-fun tp!282299 () Bool)

(assert (=> b!899322 (= e!588212 (and tp!282298 tp!282299))))

(declare-fun b!899323 () Bool)

(declare-fun tp!282301 () Bool)

(assert (=> b!899323 (= e!588212 tp!282301)))

(declare-fun b!899324 () Bool)

(declare-fun tp!282297 () Bool)

(declare-fun tp!282300 () Bool)

(assert (=> b!899324 (= e!588212 (and tp!282297 tp!282300))))

(declare-fun b!899321 () Bool)

(assert (=> b!899321 (= e!588212 tp_is_empty!4359)))

(assert (= (and b!898841 (is-ElementMatch!2358 (regOne!5228 r!15766))) b!899321))

(assert (= (and b!898841 (is-Concat!4191 (regOne!5228 r!15766))) b!899322))

(assert (= (and b!898841 (is-Star!2358 (regOne!5228 r!15766))) b!899323))

(assert (= (and b!898841 (is-Union!2358 (regOne!5228 r!15766))) b!899324))

(declare-fun e!588213 () Bool)

(assert (=> b!898841 (= tp!282245 e!588213)))

(declare-fun b!899326 () Bool)

(declare-fun tp!282303 () Bool)

(declare-fun tp!282304 () Bool)

(assert (=> b!899326 (= e!588213 (and tp!282303 tp!282304))))

(declare-fun b!899327 () Bool)

(declare-fun tp!282306 () Bool)

(assert (=> b!899327 (= e!588213 tp!282306)))

(declare-fun b!899328 () Bool)

(declare-fun tp!282302 () Bool)

(declare-fun tp!282305 () Bool)

(assert (=> b!899328 (= e!588213 (and tp!282302 tp!282305))))

(declare-fun b!899325 () Bool)

(assert (=> b!899325 (= e!588213 tp_is_empty!4359)))

(assert (= (and b!898841 (is-ElementMatch!2358 (regTwo!5228 r!15766))) b!899325))

(assert (= (and b!898841 (is-Concat!4191 (regTwo!5228 r!15766))) b!899326))

(assert (= (and b!898841 (is-Star!2358 (regTwo!5228 r!15766))) b!899327))

(assert (= (and b!898841 (is-Union!2358 (regTwo!5228 r!15766))) b!899328))

(push 1)

(assert (not b!899170))

(assert (not d!278059))

(assert (not bm!53487))

(assert (not b!899026))

(assert (not b!899260))

(assert (not bm!53475))

(assert (not d!278073))

(assert (not b!899314))

(assert (not bm!53517))

(assert (not d!278095))

(assert (not b!899111))

(assert (not d!278061))

(assert (not b!899309))

(assert (not b!899176))

(assert (not b!899326))

(assert (not b!899324))

(assert (not b!899131))

(assert (not b!898944))

(assert (not b!899036))

(assert (not b!899265))

(assert (not bm!53510))

(assert (not d!278075))

(assert (not b!899132))

(assert (not d!278107))

(assert (not b!898946))

(assert (not b!899142))

(assert (not d!278085))

(assert (not b!899134))

(assert (not b!899311))

(assert (not d!278097))

(assert (not b!899307))

(assert (not b!899264))

(assert (not b!899289))

(assert (not b!899323))

(assert (not b!899101))

(assert (not b!899105))

(assert (not b!899034))

(assert (not bm!53491))

(assert (not b!899328))

(assert (not b!899109))

(assert (not bm!53511))

(assert (not b!899189))

(assert (not b!899179))

(assert (not d!278083))

(assert (not b!899305))

(assert (not b!899313))

(assert (not d!278109))

(assert (not b!899030))

(assert (not b!899103))

(assert (not d!278079))

(assert (not bm!53492))

(assert (not b!899119))

(assert (not b!899178))

(assert (not b!899070))

(assert (not b!899187))

(assert (not b!899013))

(assert (not b!898942))

(assert (not b!899183))

(assert (not b!899136))

(assert (not d!278101))

(assert (not b!899028))

(assert (not d!278093))

(assert (not b!899261))

(assert (not bm!53493))

(assert (not bm!53508))

(assert (not bm!53473))

(assert (not b!899320))

(assert (not d!278071))

(assert (not b!899315))

(assert (not bm!53497))

(assert (not bm!53519))

(assert (not d!278089))

(assert (not b!898952))

(assert (not b!898950))

(assert (not b!899100))

(assert (not b!899025))

(assert (not bm!53474))

(assert (not d!278105))

(assert (not b!899140))

(assert (not b!899181))

(assert (not b!899310))

(assert (not b!899327))

(assert (not bm!53459))

(assert (not b!899322))

(assert (not bm!53486))

(assert (not b!899098))

(assert (not b!899258))

(assert (not b!898941))

(assert (not b!899015))

(assert (not b!899263))

(assert (not d!278081))

(assert tp_is_empty!4359)

(assert (not b!899306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

