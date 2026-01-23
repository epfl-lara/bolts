; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91440 () Bool)

(assert start!91440)

(declare-fun b!1064818 () Bool)

(assert (=> b!1064818 true))

(assert (=> b!1064818 true))

(assert (=> b!1064818 true))

(declare-fun lambda!38524 () Int)

(declare-fun lambda!38523 () Int)

(assert (=> b!1064818 (not (= lambda!38524 lambda!38523))))

(assert (=> b!1064818 true))

(assert (=> b!1064818 true))

(assert (=> b!1064818 true))

(declare-fun b!1064811 () Bool)

(declare-fun e!675366 () Bool)

(declare-fun e!675364 () Bool)

(assert (=> b!1064811 (= e!675366 (not e!675364))))

(declare-fun res!475709 () Bool)

(assert (=> b!1064811 (=> res!475709 e!675364)))

(declare-fun lt!360358 () Bool)

(declare-datatypes ((C!6442 0))(
  ( (C!6443 (val!3469 Int)) )
))
(declare-datatypes ((Regex!2936 0))(
  ( (ElementMatch!2936 (c!178539 C!6442)) (Concat!4769 (regOne!6384 Regex!2936) (regTwo!6384 Regex!2936)) (EmptyExpr!2936) (Star!2936 (reg!3265 Regex!2936)) (EmptyLang!2936) (Union!2936 (regOne!6385 Regex!2936) (regTwo!6385 Regex!2936)) )
))
(declare-fun r!15766 () Regex!2936)

(assert (=> b!1064811 (= res!475709 (or lt!360358 (and (is-Concat!4769 r!15766) (is-EmptyExpr!2936 (regOne!6384 r!15766))) (and (is-Concat!4769 r!15766) (is-EmptyExpr!2936 (regTwo!6384 r!15766))) (is-Concat!4769 r!15766) (is-Union!2936 r!15766) (not (is-Star!2936 r!15766))))))

(declare-datatypes ((List!10166 0))(
  ( (Nil!10150) (Cons!10150 (h!15551 C!6442) (t!101212 List!10166)) )
))
(declare-fun s!10566 () List!10166)

(declare-fun matchRSpec!735 (Regex!2936 List!10166) Bool)

(assert (=> b!1064811 (= lt!360358 (matchRSpec!735 r!15766 s!10566))))

(declare-fun matchR!1472 (Regex!2936 List!10166) Bool)

(assert (=> b!1064811 (= lt!360358 (matchR!1472 r!15766 s!10566))))

(declare-datatypes ((Unit!15547 0))(
  ( (Unit!15548) )
))
(declare-fun lt!360360 () Unit!15547)

(declare-fun mainMatchTheorem!735 (Regex!2936 List!10166) Unit!15547)

(assert (=> b!1064811 (= lt!360360 (mainMatchTheorem!735 r!15766 s!10566))))

(declare-fun b!1064812 () Bool)

(declare-fun e!675361 () Bool)

(declare-fun tp!319624 () Bool)

(declare-fun tp!319622 () Bool)

(assert (=> b!1064812 (= e!675361 (and tp!319624 tp!319622))))

(declare-fun b!1064813 () Bool)

(declare-fun tp!319625 () Bool)

(assert (=> b!1064813 (= e!675361 tp!319625)))

(declare-fun b!1064814 () Bool)

(declare-fun e!675363 () Bool)

(declare-fun lt!360359 () Regex!2936)

(declare-fun validRegex!1405 (Regex!2936) Bool)

(assert (=> b!1064814 (= e!675363 (validRegex!1405 lt!360359))))

(declare-fun b!1064815 () Bool)

(declare-fun tp_is_empty!5515 () Bool)

(assert (=> b!1064815 (= e!675361 tp_is_empty!5515)))

(declare-fun b!1064816 () Bool)

(declare-fun e!675362 () Bool)

(assert (=> b!1064816 (= e!675362 e!675363)))

(declare-fun res!475710 () Bool)

(assert (=> b!1064816 (=> res!475710 e!675363)))

(declare-fun lt!360361 () Regex!2936)

(assert (=> b!1064816 (= res!475710 (not (validRegex!1405 lt!360361)))))

(assert (=> b!1064816 (matchRSpec!735 lt!360359 s!10566)))

(declare-fun lt!360354 () Unit!15547)

(assert (=> b!1064816 (= lt!360354 (mainMatchTheorem!735 lt!360359 s!10566))))

(declare-fun b!1064817 () Bool)

(declare-fun e!675365 () Bool)

(declare-fun tp!319623 () Bool)

(assert (=> b!1064817 (= e!675365 (and tp_is_empty!5515 tp!319623))))

(declare-fun res!475711 () Bool)

(assert (=> start!91440 (=> (not res!475711) (not e!675366))))

(assert (=> start!91440 (= res!475711 (validRegex!1405 r!15766))))

(assert (=> start!91440 e!675366))

(assert (=> start!91440 e!675361))

(assert (=> start!91440 e!675365))

(assert (=> b!1064818 (= e!675364 e!675362)))

(declare-fun res!475708 () Bool)

(assert (=> b!1064818 (=> res!475708 e!675362)))

(assert (=> b!1064818 (= res!475708 (not (matchR!1472 lt!360359 s!10566)))))

(assert (=> b!1064818 (= lt!360359 (Star!2936 lt!360361))))

(declare-fun removeUselessConcat!477 (Regex!2936) Regex!2936)

(assert (=> b!1064818 (= lt!360361 (removeUselessConcat!477 (reg!3265 r!15766)))))

(declare-fun Exists!659 (Int) Bool)

(assert (=> b!1064818 (= (Exists!659 lambda!38523) (Exists!659 lambda!38524))))

(declare-fun lt!360355 () Unit!15547)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!177 (Regex!2936 List!10166) Unit!15547)

(assert (=> b!1064818 (= lt!360355 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!177 (reg!3265 r!15766) s!10566))))

(declare-fun lt!360357 () Regex!2936)

(declare-datatypes ((tuple2!11586 0))(
  ( (tuple2!11587 (_1!6619 List!10166) (_2!6619 List!10166)) )
))
(declare-datatypes ((Option!2435 0))(
  ( (None!2434) (Some!2434 (v!19851 tuple2!11586)) )
))
(declare-fun isDefined!2077 (Option!2435) Bool)

(declare-fun findConcatSeparation!541 (Regex!2936 Regex!2936 List!10166 List!10166 List!10166) Option!2435)

(assert (=> b!1064818 (= (isDefined!2077 (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 Nil!10150 s!10566 s!10566)) (Exists!659 lambda!38523))))

(declare-fun lt!360356 () Unit!15547)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!541 (Regex!2936 Regex!2936 List!10166) Unit!15547)

(assert (=> b!1064818 (= lt!360356 (lemmaFindConcatSeparationEquivalentToExists!541 (reg!3265 r!15766) lt!360357 s!10566))))

(assert (=> b!1064818 (= lt!360357 (Star!2936 (reg!3265 r!15766)))))

(declare-fun b!1064819 () Bool)

(declare-fun tp!319626 () Bool)

(declare-fun tp!319621 () Bool)

(assert (=> b!1064819 (= e!675361 (and tp!319626 tp!319621))))

(assert (= (and start!91440 res!475711) b!1064811))

(assert (= (and b!1064811 (not res!475709)) b!1064818))

(assert (= (and b!1064818 (not res!475708)) b!1064816))

(assert (= (and b!1064816 (not res!475710)) b!1064814))

(assert (= (and start!91440 (is-ElementMatch!2936 r!15766)) b!1064815))

(assert (= (and start!91440 (is-Concat!4769 r!15766)) b!1064819))

(assert (= (and start!91440 (is-Star!2936 r!15766)) b!1064813))

(assert (= (and start!91440 (is-Union!2936 r!15766)) b!1064812))

(assert (= (and start!91440 (is-Cons!10150 s!10566)) b!1064817))

(declare-fun m!1222525 () Bool)

(assert (=> b!1064814 m!1222525))

(declare-fun m!1222527 () Bool)

(assert (=> b!1064816 m!1222527))

(declare-fun m!1222529 () Bool)

(assert (=> b!1064816 m!1222529))

(declare-fun m!1222531 () Bool)

(assert (=> b!1064816 m!1222531))

(declare-fun m!1222533 () Bool)

(assert (=> b!1064818 m!1222533))

(declare-fun m!1222535 () Bool)

(assert (=> b!1064818 m!1222535))

(declare-fun m!1222537 () Bool)

(assert (=> b!1064818 m!1222537))

(declare-fun m!1222539 () Bool)

(assert (=> b!1064818 m!1222539))

(declare-fun m!1222541 () Bool)

(assert (=> b!1064818 m!1222541))

(declare-fun m!1222543 () Bool)

(assert (=> b!1064818 m!1222543))

(assert (=> b!1064818 m!1222543))

(declare-fun m!1222545 () Bool)

(assert (=> b!1064818 m!1222545))

(assert (=> b!1064818 m!1222537))

(declare-fun m!1222547 () Bool)

(assert (=> b!1064818 m!1222547))

(declare-fun m!1222549 () Bool)

(assert (=> start!91440 m!1222549))

(declare-fun m!1222551 () Bool)

(assert (=> b!1064811 m!1222551))

(declare-fun m!1222553 () Bool)

(assert (=> b!1064811 m!1222553))

(declare-fun m!1222555 () Bool)

(assert (=> b!1064811 m!1222555))

(push 1)

(assert (not start!91440))

(assert (not b!1064811))

(assert (not b!1064814))

(assert (not b!1064819))

(assert (not b!1064816))

(assert tp_is_empty!5515)

(assert (not b!1064817))

(assert (not b!1064812))

(assert (not b!1064818))

(assert (not b!1064813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!252012 () Bool)

(declare-fun b!1064923 () Bool)

(assert (= bs!252012 (and b!1064923 b!1064818)))

(declare-fun lambda!38537 () Int)

(assert (=> bs!252012 (not (= lambda!38537 lambda!38523))))

(assert (=> bs!252012 (= (= r!15766 lt!360357) (= lambda!38537 lambda!38524))))

(assert (=> b!1064923 true))

(assert (=> b!1064923 true))

(declare-fun bs!252013 () Bool)

(declare-fun b!1064924 () Bool)

(assert (= bs!252013 (and b!1064924 b!1064818)))

(declare-fun lambda!38538 () Int)

(assert (=> bs!252013 (not (= lambda!38538 lambda!38523))))

(assert (=> bs!252013 (not (= lambda!38538 lambda!38524))))

(declare-fun bs!252014 () Bool)

(assert (= bs!252014 (and b!1064924 b!1064923)))

(assert (=> bs!252014 (not (= lambda!38538 lambda!38537))))

(assert (=> b!1064924 true))

(assert (=> b!1064924 true))

(declare-fun b!1064919 () Bool)

(declare-fun res!475765 () Bool)

(declare-fun e!675424 () Bool)

(assert (=> b!1064919 (=> res!475765 e!675424)))

(declare-fun call!76783 () Bool)

(assert (=> b!1064919 (= res!475765 call!76783)))

(declare-fun e!675427 () Bool)

(assert (=> b!1064919 (= e!675427 e!675424)))

(declare-fun b!1064920 () Bool)

(declare-fun e!675426 () Bool)

(declare-fun e!675423 () Bool)

(assert (=> b!1064920 (= e!675426 e!675423)))

(declare-fun res!475766 () Bool)

(assert (=> b!1064920 (= res!475766 (matchRSpec!735 (regOne!6385 r!15766) s!10566))))

(assert (=> b!1064920 (=> res!475766 e!675423)))

(declare-fun b!1064921 () Bool)

(declare-fun e!675428 () Bool)

(assert (=> b!1064921 (= e!675428 (= s!10566 (Cons!10150 (c!178539 r!15766) Nil!10150)))))

(declare-fun b!1064922 () Bool)

(declare-fun e!675429 () Bool)

(assert (=> b!1064922 (= e!675429 call!76783)))

(declare-fun call!76784 () Bool)

(assert (=> b!1064923 (= e!675424 call!76784)))

(declare-fun d!300994 () Bool)

(declare-fun c!178553 () Bool)

(assert (=> d!300994 (= c!178553 (is-EmptyExpr!2936 r!15766))))

(assert (=> d!300994 (= (matchRSpec!735 r!15766 s!10566) e!675429)))

(assert (=> b!1064924 (= e!675427 call!76784)))

(declare-fun b!1064925 () Bool)

(assert (=> b!1064925 (= e!675426 e!675427)))

(declare-fun c!178555 () Bool)

(assert (=> b!1064925 (= c!178555 (is-Star!2936 r!15766))))

(declare-fun b!1064926 () Bool)

(declare-fun e!675425 () Bool)

(assert (=> b!1064926 (= e!675429 e!675425)))

(declare-fun res!475764 () Bool)

(assert (=> b!1064926 (= res!475764 (not (is-EmptyLang!2936 r!15766)))))

(assert (=> b!1064926 (=> (not res!475764) (not e!675425))))

(declare-fun b!1064927 () Bool)

(declare-fun c!178556 () Bool)

(assert (=> b!1064927 (= c!178556 (is-Union!2936 r!15766))))

(assert (=> b!1064927 (= e!675428 e!675426)))

(declare-fun bm!76778 () Bool)

(assert (=> bm!76778 (= call!76784 (Exists!659 (ite c!178555 lambda!38537 lambda!38538)))))

(declare-fun b!1064928 () Bool)

(assert (=> b!1064928 (= e!675423 (matchRSpec!735 (regTwo!6385 r!15766) s!10566))))

(declare-fun bm!76779 () Bool)

(declare-fun isEmpty!6568 (List!10166) Bool)

(assert (=> bm!76779 (= call!76783 (isEmpty!6568 s!10566))))

(declare-fun b!1064929 () Bool)

(declare-fun c!178554 () Bool)

(assert (=> b!1064929 (= c!178554 (is-ElementMatch!2936 r!15766))))

(assert (=> b!1064929 (= e!675425 e!675428)))

(assert (= (and d!300994 c!178553) b!1064922))

(assert (= (and d!300994 (not c!178553)) b!1064926))

(assert (= (and b!1064926 res!475764) b!1064929))

(assert (= (and b!1064929 c!178554) b!1064921))

(assert (= (and b!1064929 (not c!178554)) b!1064927))

(assert (= (and b!1064927 c!178556) b!1064920))

(assert (= (and b!1064927 (not c!178556)) b!1064925))

(assert (= (and b!1064920 (not res!475766)) b!1064928))

(assert (= (and b!1064925 c!178555) b!1064919))

(assert (= (and b!1064925 (not c!178555)) b!1064924))

(assert (= (and b!1064919 (not res!475765)) b!1064923))

(assert (= (or b!1064923 b!1064924) bm!76778))

(assert (= (or b!1064922 b!1064919) bm!76779))

(declare-fun m!1222589 () Bool)

(assert (=> b!1064920 m!1222589))

(declare-fun m!1222591 () Bool)

(assert (=> bm!76778 m!1222591))

(declare-fun m!1222593 () Bool)

(assert (=> b!1064928 m!1222593))

(declare-fun m!1222595 () Bool)

(assert (=> bm!76779 m!1222595))

(assert (=> b!1064811 d!300994))

(declare-fun b!1064967 () Bool)

(declare-fun e!675454 () Bool)

(declare-fun head!1977 (List!10166) C!6442)

(assert (=> b!1064967 (= e!675454 (not (= (head!1977 s!10566) (c!178539 r!15766))))))

(declare-fun b!1064968 () Bool)

(declare-fun e!675451 () Bool)

(assert (=> b!1064968 (= e!675451 (= (head!1977 s!10566) (c!178539 r!15766)))))

(declare-fun b!1064969 () Bool)

(declare-fun e!675456 () Bool)

(declare-fun lt!360388 () Bool)

(declare-fun call!76790 () Bool)

(assert (=> b!1064969 (= e!675456 (= lt!360388 call!76790))))

(declare-fun b!1064970 () Bool)

(declare-fun res!475791 () Bool)

(declare-fun e!675457 () Bool)

(assert (=> b!1064970 (=> res!475791 e!675457)))

(assert (=> b!1064970 (= res!475791 (not (is-ElementMatch!2936 r!15766)))))

(declare-fun e!675452 () Bool)

(assert (=> b!1064970 (= e!675452 e!675457)))

(declare-fun b!1064971 () Bool)

(declare-fun res!475789 () Bool)

(assert (=> b!1064971 (=> res!475789 e!675457)))

(assert (=> b!1064971 (= res!475789 e!675451)))

(declare-fun res!475793 () Bool)

(assert (=> b!1064971 (=> (not res!475793) (not e!675451))))

(assert (=> b!1064971 (= res!475793 lt!360388)))

(declare-fun bm!76785 () Bool)

(assert (=> bm!76785 (= call!76790 (isEmpty!6568 s!10566))))

(declare-fun b!1064972 () Bool)

(declare-fun res!475788 () Bool)

(assert (=> b!1064972 (=> (not res!475788) (not e!675451))))

(declare-fun tail!1539 (List!10166) List!10166)

(assert (=> b!1064972 (= res!475788 (isEmpty!6568 (tail!1539 s!10566)))))

(declare-fun b!1064973 () Bool)

(assert (=> b!1064973 (= e!675452 (not lt!360388))))

(declare-fun d!300998 () Bool)

(assert (=> d!300998 e!675456))

(declare-fun c!178565 () Bool)

(assert (=> d!300998 (= c!178565 (is-EmptyExpr!2936 r!15766))))

(declare-fun e!675455 () Bool)

(assert (=> d!300998 (= lt!360388 e!675455)))

(declare-fun c!178567 () Bool)

(assert (=> d!300998 (= c!178567 (isEmpty!6568 s!10566))))

(assert (=> d!300998 (validRegex!1405 r!15766)))

(assert (=> d!300998 (= (matchR!1472 r!15766 s!10566) lt!360388)))

(declare-fun b!1064974 () Bool)

(assert (=> b!1064974 (= e!675456 e!675452)))

(declare-fun c!178566 () Bool)

(assert (=> b!1064974 (= c!178566 (is-EmptyLang!2936 r!15766))))

(declare-fun b!1064975 () Bool)

(declare-fun res!475790 () Bool)

(assert (=> b!1064975 (=> (not res!475790) (not e!675451))))

(assert (=> b!1064975 (= res!475790 (not call!76790))))

(declare-fun b!1064976 () Bool)

(declare-fun derivativeStep!822 (Regex!2936 C!6442) Regex!2936)

(assert (=> b!1064976 (= e!675455 (matchR!1472 (derivativeStep!822 r!15766 (head!1977 s!10566)) (tail!1539 s!10566)))))

(declare-fun b!1064977 () Bool)

(declare-fun e!675453 () Bool)

(assert (=> b!1064977 (= e!675457 e!675453)))

(declare-fun res!475794 () Bool)

(assert (=> b!1064977 (=> (not res!475794) (not e!675453))))

(assert (=> b!1064977 (= res!475794 (not lt!360388))))

(declare-fun b!1064978 () Bool)

(declare-fun nullable!1023 (Regex!2936) Bool)

(assert (=> b!1064978 (= e!675455 (nullable!1023 r!15766))))

(declare-fun b!1064979 () Bool)

(assert (=> b!1064979 (= e!675453 e!675454)))

(declare-fun res!475792 () Bool)

(assert (=> b!1064979 (=> res!475792 e!675454)))

(assert (=> b!1064979 (= res!475792 call!76790)))

(declare-fun b!1064980 () Bool)

(declare-fun res!475795 () Bool)

(assert (=> b!1064980 (=> res!475795 e!675454)))

(assert (=> b!1064980 (= res!475795 (not (isEmpty!6568 (tail!1539 s!10566))))))

(assert (= (and d!300998 c!178567) b!1064978))

(assert (= (and d!300998 (not c!178567)) b!1064976))

(assert (= (and d!300998 c!178565) b!1064969))

(assert (= (and d!300998 (not c!178565)) b!1064974))

(assert (= (and b!1064974 c!178566) b!1064973))

(assert (= (and b!1064974 (not c!178566)) b!1064970))

(assert (= (and b!1064970 (not res!475791)) b!1064971))

(assert (= (and b!1064971 res!475793) b!1064975))

(assert (= (and b!1064975 res!475790) b!1064972))

(assert (= (and b!1064972 res!475788) b!1064968))

(assert (= (and b!1064971 (not res!475789)) b!1064977))

(assert (= (and b!1064977 res!475794) b!1064979))

(assert (= (and b!1064979 (not res!475792)) b!1064980))

(assert (= (and b!1064980 (not res!475795)) b!1064967))

(assert (= (or b!1064969 b!1064975 b!1064979) bm!76785))

(assert (=> d!300998 m!1222595))

(assert (=> d!300998 m!1222549))

(declare-fun m!1222603 () Bool)

(assert (=> b!1064968 m!1222603))

(declare-fun m!1222605 () Bool)

(assert (=> b!1064972 m!1222605))

(assert (=> b!1064972 m!1222605))

(declare-fun m!1222607 () Bool)

(assert (=> b!1064972 m!1222607))

(assert (=> bm!76785 m!1222595))

(declare-fun m!1222609 () Bool)

(assert (=> b!1064978 m!1222609))

(assert (=> b!1064976 m!1222603))

(assert (=> b!1064976 m!1222603))

(declare-fun m!1222611 () Bool)

(assert (=> b!1064976 m!1222611))

(assert (=> b!1064976 m!1222605))

(assert (=> b!1064976 m!1222611))

(assert (=> b!1064976 m!1222605))

(declare-fun m!1222613 () Bool)

(assert (=> b!1064976 m!1222613))

(assert (=> b!1064980 m!1222605))

(assert (=> b!1064980 m!1222605))

(assert (=> b!1064980 m!1222607))

(assert (=> b!1064967 m!1222603))

(assert (=> b!1064811 d!300998))

(declare-fun d!301002 () Bool)

(assert (=> d!301002 (= (matchR!1472 r!15766 s!10566) (matchRSpec!735 r!15766 s!10566))))

(declare-fun lt!360391 () Unit!15547)

(declare-fun choose!6792 (Regex!2936 List!10166) Unit!15547)

(assert (=> d!301002 (= lt!360391 (choose!6792 r!15766 s!10566))))

(assert (=> d!301002 (validRegex!1405 r!15766)))

(assert (=> d!301002 (= (mainMatchTheorem!735 r!15766 s!10566) lt!360391)))

(declare-fun bs!252015 () Bool)

(assert (= bs!252015 d!301002))

(assert (=> bs!252015 m!1222553))

(assert (=> bs!252015 m!1222551))

(declare-fun m!1222615 () Bool)

(assert (=> bs!252015 m!1222615))

(assert (=> bs!252015 m!1222549))

(assert (=> b!1064811 d!301002))

(declare-fun b!1065023 () Bool)

(declare-fun res!475816 () Bool)

(declare-fun e!675488 () Bool)

(assert (=> b!1065023 (=> (not res!475816) (not e!675488))))

(declare-fun call!76798 () Bool)

(assert (=> b!1065023 (= res!475816 call!76798)))

(declare-fun e!675490 () Bool)

(assert (=> b!1065023 (= e!675490 e!675488)))

(declare-fun d!301004 () Bool)

(declare-fun res!475815 () Bool)

(declare-fun e!675492 () Bool)

(assert (=> d!301004 (=> res!475815 e!675492)))

(assert (=> d!301004 (= res!475815 (is-ElementMatch!2936 lt!360361))))

(assert (=> d!301004 (= (validRegex!1405 lt!360361) e!675492)))

(declare-fun b!1065024 () Bool)

(declare-fun call!76797 () Bool)

(assert (=> b!1065024 (= e!675488 call!76797)))

(declare-fun bm!76792 () Bool)

(declare-fun c!178581 () Bool)

(assert (=> bm!76792 (= call!76797 (validRegex!1405 (ite c!178581 (regTwo!6385 lt!360361) (regTwo!6384 lt!360361))))))

(declare-fun b!1065025 () Bool)

(declare-fun e!675491 () Bool)

(assert (=> b!1065025 (= e!675492 e!675491)))

(declare-fun c!178580 () Bool)

(assert (=> b!1065025 (= c!178580 (is-Star!2936 lt!360361))))

(declare-fun call!76799 () Bool)

(declare-fun bm!76793 () Bool)

(assert (=> bm!76793 (= call!76799 (validRegex!1405 (ite c!178580 (reg!3265 lt!360361) (ite c!178581 (regOne!6385 lt!360361) (regOne!6384 lt!360361)))))))

(declare-fun b!1065026 () Bool)

(declare-fun res!475817 () Bool)

(declare-fun e!675494 () Bool)

(assert (=> b!1065026 (=> res!475817 e!675494)))

(assert (=> b!1065026 (= res!475817 (not (is-Concat!4769 lt!360361)))))

(assert (=> b!1065026 (= e!675490 e!675494)))

(declare-fun bm!76794 () Bool)

(assert (=> bm!76794 (= call!76798 call!76799)))

(declare-fun b!1065027 () Bool)

(declare-fun e!675489 () Bool)

(assert (=> b!1065027 (= e!675489 call!76797)))

(declare-fun b!1065028 () Bool)

(declare-fun e!675493 () Bool)

(assert (=> b!1065028 (= e!675491 e!675493)))

(declare-fun res!475818 () Bool)

(assert (=> b!1065028 (= res!475818 (not (nullable!1023 (reg!3265 lt!360361))))))

(assert (=> b!1065028 (=> (not res!475818) (not e!675493))))

(declare-fun b!1065029 () Bool)

(assert (=> b!1065029 (= e!675493 call!76799)))

(declare-fun b!1065030 () Bool)

(assert (=> b!1065030 (= e!675494 e!675489)))

(declare-fun res!475814 () Bool)

(assert (=> b!1065030 (=> (not res!475814) (not e!675489))))

(assert (=> b!1065030 (= res!475814 call!76798)))

(declare-fun b!1065031 () Bool)

(assert (=> b!1065031 (= e!675491 e!675490)))

(assert (=> b!1065031 (= c!178581 (is-Union!2936 lt!360361))))

(assert (= (and d!301004 (not res!475815)) b!1065025))

(assert (= (and b!1065025 c!178580) b!1065028))

(assert (= (and b!1065025 (not c!178580)) b!1065031))

(assert (= (and b!1065028 res!475818) b!1065029))

(assert (= (and b!1065031 c!178581) b!1065023))

(assert (= (and b!1065031 (not c!178581)) b!1065026))

(assert (= (and b!1065023 res!475816) b!1065024))

(assert (= (and b!1065026 (not res!475817)) b!1065030))

(assert (= (and b!1065030 res!475814) b!1065027))

(assert (= (or b!1065024 b!1065027) bm!76792))

(assert (= (or b!1065023 b!1065030) bm!76794))

(assert (= (or b!1065029 bm!76794) bm!76793))

(declare-fun m!1222617 () Bool)

(assert (=> bm!76792 m!1222617))

(declare-fun m!1222619 () Bool)

(assert (=> bm!76793 m!1222619))

(declare-fun m!1222621 () Bool)

(assert (=> b!1065028 m!1222621))

(assert (=> b!1064816 d!301004))

(declare-fun bs!252016 () Bool)

(declare-fun b!1065040 () Bool)

(assert (= bs!252016 (and b!1065040 b!1064818)))

(declare-fun lambda!38541 () Int)

(assert (=> bs!252016 (not (= lambda!38541 lambda!38523))))

(assert (=> bs!252016 (= (and (= (reg!3265 lt!360359) (reg!3265 r!15766)) (= lt!360359 lt!360357)) (= lambda!38541 lambda!38524))))

(declare-fun bs!252017 () Bool)

(assert (= bs!252017 (and b!1065040 b!1064923)))

(assert (=> bs!252017 (= (and (= (reg!3265 lt!360359) (reg!3265 r!15766)) (= lt!360359 r!15766)) (= lambda!38541 lambda!38537))))

(declare-fun bs!252018 () Bool)

(assert (= bs!252018 (and b!1065040 b!1064924)))

(assert (=> bs!252018 (not (= lambda!38541 lambda!38538))))

(assert (=> b!1065040 true))

(assert (=> b!1065040 true))

(declare-fun bs!252019 () Bool)

(declare-fun b!1065041 () Bool)

(assert (= bs!252019 (and b!1065041 b!1064818)))

(declare-fun lambda!38542 () Int)

(assert (=> bs!252019 (not (= lambda!38542 lambda!38523))))

(declare-fun bs!252020 () Bool)

(assert (= bs!252020 (and b!1065041 b!1064924)))

(assert (=> bs!252020 (= (and (= (regOne!6384 lt!360359) (regOne!6384 r!15766)) (= (regTwo!6384 lt!360359) (regTwo!6384 r!15766))) (= lambda!38542 lambda!38538))))

(declare-fun bs!252021 () Bool)

(assert (= bs!252021 (and b!1065041 b!1064923)))

(assert (=> bs!252021 (not (= lambda!38542 lambda!38537))))

(assert (=> bs!252019 (not (= lambda!38542 lambda!38524))))

(declare-fun bs!252022 () Bool)

(assert (= bs!252022 (and b!1065041 b!1065040)))

(assert (=> bs!252022 (not (= lambda!38542 lambda!38541))))

(assert (=> b!1065041 true))

(assert (=> b!1065041 true))

(declare-fun b!1065036 () Bool)

(declare-fun res!475824 () Bool)

(declare-fun e!675496 () Bool)

(assert (=> b!1065036 (=> res!475824 e!675496)))

(declare-fun call!76800 () Bool)

(assert (=> b!1065036 (= res!475824 call!76800)))

(declare-fun e!675499 () Bool)

(assert (=> b!1065036 (= e!675499 e!675496)))

(declare-fun b!1065037 () Bool)

(declare-fun e!675498 () Bool)

(declare-fun e!675495 () Bool)

(assert (=> b!1065037 (= e!675498 e!675495)))

(declare-fun res!475825 () Bool)

(assert (=> b!1065037 (= res!475825 (matchRSpec!735 (regOne!6385 lt!360359) s!10566))))

(assert (=> b!1065037 (=> res!475825 e!675495)))

(declare-fun b!1065038 () Bool)

(declare-fun e!675500 () Bool)

(assert (=> b!1065038 (= e!675500 (= s!10566 (Cons!10150 (c!178539 lt!360359) Nil!10150)))))

(declare-fun b!1065039 () Bool)

(declare-fun e!675501 () Bool)

(assert (=> b!1065039 (= e!675501 call!76800)))

(declare-fun call!76801 () Bool)

(assert (=> b!1065040 (= e!675496 call!76801)))

(declare-fun d!301006 () Bool)

(declare-fun c!178582 () Bool)

(assert (=> d!301006 (= c!178582 (is-EmptyExpr!2936 lt!360359))))

(assert (=> d!301006 (= (matchRSpec!735 lt!360359 s!10566) e!675501)))

(assert (=> b!1065041 (= e!675499 call!76801)))

(declare-fun b!1065042 () Bool)

(assert (=> b!1065042 (= e!675498 e!675499)))

(declare-fun c!178584 () Bool)

(assert (=> b!1065042 (= c!178584 (is-Star!2936 lt!360359))))

(declare-fun b!1065043 () Bool)

(declare-fun e!675497 () Bool)

(assert (=> b!1065043 (= e!675501 e!675497)))

(declare-fun res!475823 () Bool)

(assert (=> b!1065043 (= res!475823 (not (is-EmptyLang!2936 lt!360359)))))

(assert (=> b!1065043 (=> (not res!475823) (not e!675497))))

(declare-fun b!1065044 () Bool)

(declare-fun c!178585 () Bool)

(assert (=> b!1065044 (= c!178585 (is-Union!2936 lt!360359))))

(assert (=> b!1065044 (= e!675500 e!675498)))

(declare-fun bm!76795 () Bool)

(assert (=> bm!76795 (= call!76801 (Exists!659 (ite c!178584 lambda!38541 lambda!38542)))))

(declare-fun b!1065045 () Bool)

(assert (=> b!1065045 (= e!675495 (matchRSpec!735 (regTwo!6385 lt!360359) s!10566))))

(declare-fun bm!76796 () Bool)

(assert (=> bm!76796 (= call!76800 (isEmpty!6568 s!10566))))

(declare-fun b!1065046 () Bool)

(declare-fun c!178583 () Bool)

(assert (=> b!1065046 (= c!178583 (is-ElementMatch!2936 lt!360359))))

(assert (=> b!1065046 (= e!675497 e!675500)))

(assert (= (and d!301006 c!178582) b!1065039))

(assert (= (and d!301006 (not c!178582)) b!1065043))

(assert (= (and b!1065043 res!475823) b!1065046))

(assert (= (and b!1065046 c!178583) b!1065038))

(assert (= (and b!1065046 (not c!178583)) b!1065044))

(assert (= (and b!1065044 c!178585) b!1065037))

(assert (= (and b!1065044 (not c!178585)) b!1065042))

(assert (= (and b!1065037 (not res!475825)) b!1065045))

(assert (= (and b!1065042 c!178584) b!1065036))

(assert (= (and b!1065042 (not c!178584)) b!1065041))

(assert (= (and b!1065036 (not res!475824)) b!1065040))

(assert (= (or b!1065040 b!1065041) bm!76795))

(assert (= (or b!1065039 b!1065036) bm!76796))

(declare-fun m!1222623 () Bool)

(assert (=> b!1065037 m!1222623))

(declare-fun m!1222625 () Bool)

(assert (=> bm!76795 m!1222625))

(declare-fun m!1222627 () Bool)

(assert (=> b!1065045 m!1222627))

(assert (=> bm!76796 m!1222595))

(assert (=> b!1064816 d!301006))

(declare-fun d!301008 () Bool)

(assert (=> d!301008 (= (matchR!1472 lt!360359 s!10566) (matchRSpec!735 lt!360359 s!10566))))

(declare-fun lt!360392 () Unit!15547)

(assert (=> d!301008 (= lt!360392 (choose!6792 lt!360359 s!10566))))

(assert (=> d!301008 (validRegex!1405 lt!360359)))

(assert (=> d!301008 (= (mainMatchTheorem!735 lt!360359 s!10566) lt!360392)))

(declare-fun bs!252023 () Bool)

(assert (= bs!252023 d!301008))

(assert (=> bs!252023 m!1222545))

(assert (=> bs!252023 m!1222529))

(declare-fun m!1222629 () Bool)

(assert (=> bs!252023 m!1222629))

(assert (=> bs!252023 m!1222525))

(assert (=> b!1064816 d!301008))

(declare-fun b!1065047 () Bool)

(declare-fun res!475828 () Bool)

(declare-fun e!675502 () Bool)

(assert (=> b!1065047 (=> (not res!475828) (not e!675502))))

(declare-fun call!76803 () Bool)

(assert (=> b!1065047 (= res!475828 call!76803)))

(declare-fun e!675504 () Bool)

(assert (=> b!1065047 (= e!675504 e!675502)))

(declare-fun d!301010 () Bool)

(declare-fun res!475827 () Bool)

(declare-fun e!675506 () Bool)

(assert (=> d!301010 (=> res!475827 e!675506)))

(assert (=> d!301010 (= res!475827 (is-ElementMatch!2936 r!15766))))

(assert (=> d!301010 (= (validRegex!1405 r!15766) e!675506)))

(declare-fun b!1065048 () Bool)

(declare-fun call!76802 () Bool)

(assert (=> b!1065048 (= e!675502 call!76802)))

(declare-fun bm!76797 () Bool)

(declare-fun c!178587 () Bool)

(assert (=> bm!76797 (= call!76802 (validRegex!1405 (ite c!178587 (regTwo!6385 r!15766) (regTwo!6384 r!15766))))))

(declare-fun b!1065049 () Bool)

(declare-fun e!675505 () Bool)

(assert (=> b!1065049 (= e!675506 e!675505)))

(declare-fun c!178586 () Bool)

(assert (=> b!1065049 (= c!178586 (is-Star!2936 r!15766))))

(declare-fun call!76804 () Bool)

(declare-fun bm!76798 () Bool)

(assert (=> bm!76798 (= call!76804 (validRegex!1405 (ite c!178586 (reg!3265 r!15766) (ite c!178587 (regOne!6385 r!15766) (regOne!6384 r!15766)))))))

(declare-fun b!1065050 () Bool)

(declare-fun res!475829 () Bool)

(declare-fun e!675508 () Bool)

(assert (=> b!1065050 (=> res!475829 e!675508)))

(assert (=> b!1065050 (= res!475829 (not (is-Concat!4769 r!15766)))))

(assert (=> b!1065050 (= e!675504 e!675508)))

(declare-fun bm!76799 () Bool)

(assert (=> bm!76799 (= call!76803 call!76804)))

(declare-fun b!1065051 () Bool)

(declare-fun e!675503 () Bool)

(assert (=> b!1065051 (= e!675503 call!76802)))

(declare-fun b!1065052 () Bool)

(declare-fun e!675507 () Bool)

(assert (=> b!1065052 (= e!675505 e!675507)))

(declare-fun res!475830 () Bool)

(assert (=> b!1065052 (= res!475830 (not (nullable!1023 (reg!3265 r!15766))))))

(assert (=> b!1065052 (=> (not res!475830) (not e!675507))))

(declare-fun b!1065053 () Bool)

(assert (=> b!1065053 (= e!675507 call!76804)))

(declare-fun b!1065054 () Bool)

(assert (=> b!1065054 (= e!675508 e!675503)))

(declare-fun res!475826 () Bool)

(assert (=> b!1065054 (=> (not res!475826) (not e!675503))))

(assert (=> b!1065054 (= res!475826 call!76803)))

(declare-fun b!1065055 () Bool)

(assert (=> b!1065055 (= e!675505 e!675504)))

(assert (=> b!1065055 (= c!178587 (is-Union!2936 r!15766))))

(assert (= (and d!301010 (not res!475827)) b!1065049))

(assert (= (and b!1065049 c!178586) b!1065052))

(assert (= (and b!1065049 (not c!178586)) b!1065055))

(assert (= (and b!1065052 res!475830) b!1065053))

(assert (= (and b!1065055 c!178587) b!1065047))

(assert (= (and b!1065055 (not c!178587)) b!1065050))

(assert (= (and b!1065047 res!475828) b!1065048))

(assert (= (and b!1065050 (not res!475829)) b!1065054))

(assert (= (and b!1065054 res!475826) b!1065051))

(assert (= (or b!1065048 b!1065051) bm!76797))

(assert (= (or b!1065047 b!1065054) bm!76799))

(assert (= (or b!1065053 bm!76799) bm!76798))

(declare-fun m!1222631 () Bool)

(assert (=> bm!76797 m!1222631))

(declare-fun m!1222633 () Bool)

(assert (=> bm!76798 m!1222633))

(declare-fun m!1222635 () Bool)

(assert (=> b!1065052 m!1222635))

(assert (=> start!91440 d!301010))

(declare-fun b!1065056 () Bool)

(declare-fun e!675512 () Bool)

(assert (=> b!1065056 (= e!675512 (not (= (head!1977 s!10566) (c!178539 lt!360359))))))

(declare-fun b!1065057 () Bool)

(declare-fun e!675509 () Bool)

(assert (=> b!1065057 (= e!675509 (= (head!1977 s!10566) (c!178539 lt!360359)))))

(declare-fun b!1065058 () Bool)

(declare-fun e!675514 () Bool)

(declare-fun lt!360393 () Bool)

(declare-fun call!76805 () Bool)

(assert (=> b!1065058 (= e!675514 (= lt!360393 call!76805))))

(declare-fun b!1065059 () Bool)

(declare-fun res!475834 () Bool)

(declare-fun e!675515 () Bool)

(assert (=> b!1065059 (=> res!475834 e!675515)))

(assert (=> b!1065059 (= res!475834 (not (is-ElementMatch!2936 lt!360359)))))

(declare-fun e!675510 () Bool)

(assert (=> b!1065059 (= e!675510 e!675515)))

(declare-fun b!1065060 () Bool)

(declare-fun res!475832 () Bool)

(assert (=> b!1065060 (=> res!475832 e!675515)))

(assert (=> b!1065060 (= res!475832 e!675509)))

(declare-fun res!475836 () Bool)

(assert (=> b!1065060 (=> (not res!475836) (not e!675509))))

(assert (=> b!1065060 (= res!475836 lt!360393)))

(declare-fun bm!76800 () Bool)

(assert (=> bm!76800 (= call!76805 (isEmpty!6568 s!10566))))

(declare-fun b!1065061 () Bool)

(declare-fun res!475831 () Bool)

(assert (=> b!1065061 (=> (not res!475831) (not e!675509))))

(assert (=> b!1065061 (= res!475831 (isEmpty!6568 (tail!1539 s!10566)))))

(declare-fun b!1065062 () Bool)

(assert (=> b!1065062 (= e!675510 (not lt!360393))))

(declare-fun d!301012 () Bool)

(assert (=> d!301012 e!675514))

(declare-fun c!178588 () Bool)

(assert (=> d!301012 (= c!178588 (is-EmptyExpr!2936 lt!360359))))

(declare-fun e!675513 () Bool)

(assert (=> d!301012 (= lt!360393 e!675513)))

(declare-fun c!178590 () Bool)

(assert (=> d!301012 (= c!178590 (isEmpty!6568 s!10566))))

(assert (=> d!301012 (validRegex!1405 lt!360359)))

(assert (=> d!301012 (= (matchR!1472 lt!360359 s!10566) lt!360393)))

(declare-fun b!1065063 () Bool)

(assert (=> b!1065063 (= e!675514 e!675510)))

(declare-fun c!178589 () Bool)

(assert (=> b!1065063 (= c!178589 (is-EmptyLang!2936 lt!360359))))

(declare-fun b!1065064 () Bool)

(declare-fun res!475833 () Bool)

(assert (=> b!1065064 (=> (not res!475833) (not e!675509))))

(assert (=> b!1065064 (= res!475833 (not call!76805))))

(declare-fun b!1065065 () Bool)

(assert (=> b!1065065 (= e!675513 (matchR!1472 (derivativeStep!822 lt!360359 (head!1977 s!10566)) (tail!1539 s!10566)))))

(declare-fun b!1065066 () Bool)

(declare-fun e!675511 () Bool)

(assert (=> b!1065066 (= e!675515 e!675511)))

(declare-fun res!475837 () Bool)

(assert (=> b!1065066 (=> (not res!475837) (not e!675511))))

(assert (=> b!1065066 (= res!475837 (not lt!360393))))

(declare-fun b!1065067 () Bool)

(assert (=> b!1065067 (= e!675513 (nullable!1023 lt!360359))))

(declare-fun b!1065068 () Bool)

(assert (=> b!1065068 (= e!675511 e!675512)))

(declare-fun res!475835 () Bool)

(assert (=> b!1065068 (=> res!475835 e!675512)))

(assert (=> b!1065068 (= res!475835 call!76805)))

(declare-fun b!1065069 () Bool)

(declare-fun res!475838 () Bool)

(assert (=> b!1065069 (=> res!475838 e!675512)))

(assert (=> b!1065069 (= res!475838 (not (isEmpty!6568 (tail!1539 s!10566))))))

(assert (= (and d!301012 c!178590) b!1065067))

(assert (= (and d!301012 (not c!178590)) b!1065065))

(assert (= (and d!301012 c!178588) b!1065058))

(assert (= (and d!301012 (not c!178588)) b!1065063))

(assert (= (and b!1065063 c!178589) b!1065062))

(assert (= (and b!1065063 (not c!178589)) b!1065059))

(assert (= (and b!1065059 (not res!475834)) b!1065060))

(assert (= (and b!1065060 res!475836) b!1065064))

(assert (= (and b!1065064 res!475833) b!1065061))

(assert (= (and b!1065061 res!475831) b!1065057))

(assert (= (and b!1065060 (not res!475832)) b!1065066))

(assert (= (and b!1065066 res!475837) b!1065068))

(assert (= (and b!1065068 (not res!475835)) b!1065069))

(assert (= (and b!1065069 (not res!475838)) b!1065056))

(assert (= (or b!1065058 b!1065064 b!1065068) bm!76800))

(assert (=> d!301012 m!1222595))

(assert (=> d!301012 m!1222525))

(assert (=> b!1065057 m!1222603))

(assert (=> b!1065061 m!1222605))

(assert (=> b!1065061 m!1222605))

(assert (=> b!1065061 m!1222607))

(assert (=> bm!76800 m!1222595))

(declare-fun m!1222637 () Bool)

(assert (=> b!1065067 m!1222637))

(assert (=> b!1065065 m!1222603))

(assert (=> b!1065065 m!1222603))

(declare-fun m!1222639 () Bool)

(assert (=> b!1065065 m!1222639))

(assert (=> b!1065065 m!1222605))

(assert (=> b!1065065 m!1222639))

(assert (=> b!1065065 m!1222605))

(declare-fun m!1222641 () Bool)

(assert (=> b!1065065 m!1222641))

(assert (=> b!1065069 m!1222605))

(assert (=> b!1065069 m!1222605))

(assert (=> b!1065069 m!1222607))

(assert (=> b!1065056 m!1222603))

(assert (=> b!1064818 d!301012))

(declare-fun d!301014 () Bool)

(declare-fun choose!6793 (Int) Bool)

(assert (=> d!301014 (= (Exists!659 lambda!38524) (choose!6793 lambda!38524))))

(declare-fun bs!252024 () Bool)

(assert (= bs!252024 d!301014))

(declare-fun m!1222643 () Bool)

(assert (=> bs!252024 m!1222643))

(assert (=> b!1064818 d!301014))

(declare-fun bs!252025 () Bool)

(declare-fun d!301016 () Bool)

(assert (= bs!252025 (and d!301016 b!1064818)))

(declare-fun lambda!38549 () Int)

(assert (=> bs!252025 (= (= (Star!2936 (reg!3265 r!15766)) lt!360357) (= lambda!38549 lambda!38523))))

(declare-fun bs!252026 () Bool)

(assert (= bs!252026 (and d!301016 b!1064924)))

(assert (=> bs!252026 (not (= lambda!38549 lambda!38538))))

(declare-fun bs!252027 () Bool)

(assert (= bs!252027 (and d!301016 b!1065041)))

(assert (=> bs!252027 (not (= lambda!38549 lambda!38542))))

(declare-fun bs!252028 () Bool)

(assert (= bs!252028 (and d!301016 b!1064923)))

(assert (=> bs!252028 (not (= lambda!38549 lambda!38537))))

(assert (=> bs!252025 (not (= lambda!38549 lambda!38524))))

(declare-fun bs!252029 () Bool)

(assert (= bs!252029 (and d!301016 b!1065040)))

(assert (=> bs!252029 (not (= lambda!38549 lambda!38541))))

(assert (=> d!301016 true))

(assert (=> d!301016 true))

(declare-fun lambda!38550 () Int)

(assert (=> bs!252025 (not (= lambda!38550 lambda!38523))))

(assert (=> bs!252026 (not (= lambda!38550 lambda!38538))))

(assert (=> bs!252027 (not (= lambda!38550 lambda!38542))))

(declare-fun bs!252030 () Bool)

(assert (= bs!252030 d!301016))

(assert (=> bs!252030 (not (= lambda!38550 lambda!38549))))

(assert (=> bs!252028 (= (= (Star!2936 (reg!3265 r!15766)) r!15766) (= lambda!38550 lambda!38537))))

(assert (=> bs!252025 (= (= (Star!2936 (reg!3265 r!15766)) lt!360357) (= lambda!38550 lambda!38524))))

(assert (=> bs!252029 (= (and (= (reg!3265 r!15766) (reg!3265 lt!360359)) (= (Star!2936 (reg!3265 r!15766)) lt!360359)) (= lambda!38550 lambda!38541))))

(assert (=> d!301016 true))

(assert (=> d!301016 true))

(assert (=> d!301016 (= (Exists!659 lambda!38549) (Exists!659 lambda!38550))))

(declare-fun lt!360396 () Unit!15547)

(declare-fun choose!6794 (Regex!2936 List!10166) Unit!15547)

(assert (=> d!301016 (= lt!360396 (choose!6794 (reg!3265 r!15766) s!10566))))

(assert (=> d!301016 (validRegex!1405 (reg!3265 r!15766))))

(assert (=> d!301016 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!177 (reg!3265 r!15766) s!10566) lt!360396)))

(declare-fun m!1222645 () Bool)

(assert (=> bs!252030 m!1222645))

(declare-fun m!1222647 () Bool)

(assert (=> bs!252030 m!1222647))

(declare-fun m!1222649 () Bool)

(assert (=> bs!252030 m!1222649))

(declare-fun m!1222651 () Bool)

(assert (=> bs!252030 m!1222651))

(assert (=> b!1064818 d!301016))

(declare-fun b!1065117 () Bool)

(declare-fun e!675541 () Bool)

(declare-fun lt!360399 () Regex!2936)

(assert (=> b!1065117 (= e!675541 (= (nullable!1023 lt!360399) (nullable!1023 (reg!3265 r!15766))))))

(declare-fun b!1065118 () Bool)

(declare-fun c!178609 () Bool)

(assert (=> b!1065118 (= c!178609 (is-Concat!4769 (reg!3265 r!15766)))))

(declare-fun e!675542 () Regex!2936)

(declare-fun e!675545 () Regex!2936)

(assert (=> b!1065118 (= e!675542 e!675545)))

(declare-fun bm!76817 () Bool)

(declare-fun call!76823 () Regex!2936)

(declare-fun c!178605 () Bool)

(assert (=> bm!76817 (= call!76823 (removeUselessConcat!477 (ite c!178609 (regTwo!6384 (reg!3265 r!15766)) (ite c!178605 (regTwo!6385 (reg!3265 r!15766)) (reg!3265 (reg!3265 r!15766))))))))

(declare-fun bm!76818 () Bool)

(declare-fun call!76825 () Regex!2936)

(assert (=> bm!76818 (= call!76825 call!76823)))

(declare-fun b!1065119 () Bool)

(declare-fun c!178607 () Bool)

(assert (=> b!1065119 (= c!178607 (is-Star!2936 (reg!3265 r!15766)))))

(declare-fun e!675544 () Regex!2936)

(declare-fun e!675546 () Regex!2936)

(assert (=> b!1065119 (= e!675544 e!675546)))

(declare-fun b!1065120 () Bool)

(assert (=> b!1065120 (= e!675546 (Star!2936 call!76825))))

(declare-fun b!1065121 () Bool)

(declare-fun e!675543 () Regex!2936)

(assert (=> b!1065121 (= e!675543 e!675542)))

(declare-fun c!178608 () Bool)

(assert (=> b!1065121 (= c!178608 (and (is-Concat!4769 (reg!3265 r!15766)) (is-EmptyExpr!2936 (regTwo!6384 (reg!3265 r!15766)))))))

(declare-fun b!1065122 () Bool)

(declare-fun call!76822 () Regex!2936)

(assert (=> b!1065122 (= e!675544 (Union!2936 call!76822 call!76825))))

(declare-fun b!1065123 () Bool)

(declare-fun call!76826 () Regex!2936)

(assert (=> b!1065123 (= e!675542 call!76826)))

(declare-fun bm!76819 () Bool)

(declare-fun call!76824 () Regex!2936)

(assert (=> bm!76819 (= call!76826 call!76824)))

(declare-fun bm!76820 () Bool)

(assert (=> bm!76820 (= call!76822 call!76826)))

(declare-fun b!1065124 () Bool)

(assert (=> b!1065124 (= e!675543 call!76824)))

(declare-fun b!1065125 () Bool)

(assert (=> b!1065125 (= e!675545 e!675544)))

(assert (=> b!1065125 (= c!178605 (is-Union!2936 (reg!3265 r!15766)))))

(declare-fun b!1065126 () Bool)

(assert (=> b!1065126 (= e!675545 (Concat!4769 call!76822 call!76823))))

(declare-fun d!301018 () Bool)

(assert (=> d!301018 e!675541))

(declare-fun res!475858 () Bool)

(assert (=> d!301018 (=> (not res!475858) (not e!675541))))

(assert (=> d!301018 (= res!475858 (validRegex!1405 lt!360399))))

(assert (=> d!301018 (= lt!360399 e!675543)))

(declare-fun c!178606 () Bool)

(assert (=> d!301018 (= c!178606 (and (is-Concat!4769 (reg!3265 r!15766)) (is-EmptyExpr!2936 (regOne!6384 (reg!3265 r!15766)))))))

(assert (=> d!301018 (validRegex!1405 (reg!3265 r!15766))))

(assert (=> d!301018 (= (removeUselessConcat!477 (reg!3265 r!15766)) lt!360399)))

(declare-fun bm!76821 () Bool)

(assert (=> bm!76821 (= call!76824 (removeUselessConcat!477 (ite c!178606 (regTwo!6384 (reg!3265 r!15766)) (ite (or c!178608 c!178609) (regOne!6384 (reg!3265 r!15766)) (regOne!6385 (reg!3265 r!15766))))))))

(declare-fun b!1065127 () Bool)

(assert (=> b!1065127 (= e!675546 (reg!3265 r!15766))))

(assert (= (and d!301018 c!178606) b!1065124))

(assert (= (and d!301018 (not c!178606)) b!1065121))

(assert (= (and b!1065121 c!178608) b!1065123))

(assert (= (and b!1065121 (not c!178608)) b!1065118))

(assert (= (and b!1065118 c!178609) b!1065126))

(assert (= (and b!1065118 (not c!178609)) b!1065125))

(assert (= (and b!1065125 c!178605) b!1065122))

(assert (= (and b!1065125 (not c!178605)) b!1065119))

(assert (= (and b!1065119 c!178607) b!1065120))

(assert (= (and b!1065119 (not c!178607)) b!1065127))

(assert (= (or b!1065122 b!1065120) bm!76818))

(assert (= (or b!1065126 bm!76818) bm!76817))

(assert (= (or b!1065126 b!1065122) bm!76820))

(assert (= (or b!1065123 bm!76820) bm!76819))

(assert (= (or b!1065124 bm!76819) bm!76821))

(assert (= (and d!301018 res!475858) b!1065117))

(declare-fun m!1222661 () Bool)

(assert (=> b!1065117 m!1222661))

(assert (=> b!1065117 m!1222635))

(declare-fun m!1222663 () Bool)

(assert (=> bm!76817 m!1222663))

(declare-fun m!1222665 () Bool)

(assert (=> d!301018 m!1222665))

(assert (=> d!301018 m!1222651))

(declare-fun m!1222667 () Bool)

(assert (=> bm!76821 m!1222667))

(assert (=> b!1064818 d!301018))

(declare-fun d!301022 () Bool)

(declare-fun isEmpty!6569 (Option!2435) Bool)

(assert (=> d!301022 (= (isDefined!2077 (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 Nil!10150 s!10566 s!10566)) (not (isEmpty!6569 (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 Nil!10150 s!10566 s!10566))))))

(declare-fun bs!252034 () Bool)

(assert (= bs!252034 d!301022))

(assert (=> bs!252034 m!1222537))

(declare-fun m!1222669 () Bool)

(assert (=> bs!252034 m!1222669))

(assert (=> b!1064818 d!301022))

(declare-fun b!1065146 () Bool)

(declare-fun res!475870 () Bool)

(declare-fun e!675557 () Bool)

(assert (=> b!1065146 (=> (not res!475870) (not e!675557))))

(declare-fun lt!360413 () Option!2435)

(declare-fun get!3653 (Option!2435) tuple2!11586)

(assert (=> b!1065146 (= res!475870 (matchR!1472 (reg!3265 r!15766) (_1!6619 (get!3653 lt!360413))))))

(declare-fun b!1065147 () Bool)

(declare-fun e!675559 () Option!2435)

(assert (=> b!1065147 (= e!675559 None!2434)))

(declare-fun b!1065148 () Bool)

(declare-fun lt!360412 () Unit!15547)

(declare-fun lt!360411 () Unit!15547)

(assert (=> b!1065148 (= lt!360412 lt!360411)))

(declare-fun ++!2807 (List!10166 List!10166) List!10166)

(assert (=> b!1065148 (= (++!2807 (++!2807 Nil!10150 (Cons!10150 (h!15551 s!10566) Nil!10150)) (t!101212 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!400 (List!10166 C!6442 List!10166 List!10166) Unit!15547)

(assert (=> b!1065148 (= lt!360411 (lemmaMoveElementToOtherListKeepsConcatEq!400 Nil!10150 (h!15551 s!10566) (t!101212 s!10566) s!10566))))

(assert (=> b!1065148 (= e!675559 (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 (++!2807 Nil!10150 (Cons!10150 (h!15551 s!10566) Nil!10150)) (t!101212 s!10566) s!10566))))

(declare-fun d!301024 () Bool)

(declare-fun e!675560 () Bool)

(assert (=> d!301024 e!675560))

(declare-fun res!475869 () Bool)

(assert (=> d!301024 (=> res!475869 e!675560)))

(assert (=> d!301024 (= res!475869 e!675557)))

(declare-fun res!475871 () Bool)

(assert (=> d!301024 (=> (not res!475871) (not e!675557))))

(assert (=> d!301024 (= res!475871 (isDefined!2077 lt!360413))))

(declare-fun e!675558 () Option!2435)

(assert (=> d!301024 (= lt!360413 e!675558)))

(declare-fun c!178614 () Bool)

(declare-fun e!675561 () Bool)

(assert (=> d!301024 (= c!178614 e!675561)))

(declare-fun res!475872 () Bool)

(assert (=> d!301024 (=> (not res!475872) (not e!675561))))

(assert (=> d!301024 (= res!475872 (matchR!1472 (reg!3265 r!15766) Nil!10150))))

(assert (=> d!301024 (validRegex!1405 (reg!3265 r!15766))))

(assert (=> d!301024 (= (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 Nil!10150 s!10566 s!10566) lt!360413)))

(declare-fun b!1065149 () Bool)

(assert (=> b!1065149 (= e!675561 (matchR!1472 lt!360357 s!10566))))

(declare-fun b!1065150 () Bool)

(declare-fun res!475873 () Bool)

(assert (=> b!1065150 (=> (not res!475873) (not e!675557))))

(assert (=> b!1065150 (= res!475873 (matchR!1472 lt!360357 (_2!6619 (get!3653 lt!360413))))))

(declare-fun b!1065151 () Bool)

(assert (=> b!1065151 (= e!675558 (Some!2434 (tuple2!11587 Nil!10150 s!10566)))))

(declare-fun b!1065152 () Bool)

(assert (=> b!1065152 (= e!675560 (not (isDefined!2077 lt!360413)))))

(declare-fun b!1065153 () Bool)

(assert (=> b!1065153 (= e!675558 e!675559)))

(declare-fun c!178615 () Bool)

(assert (=> b!1065153 (= c!178615 (is-Nil!10150 s!10566))))

(declare-fun b!1065154 () Bool)

(assert (=> b!1065154 (= e!675557 (= (++!2807 (_1!6619 (get!3653 lt!360413)) (_2!6619 (get!3653 lt!360413))) s!10566))))

(assert (= (and d!301024 res!475872) b!1065149))

(assert (= (and d!301024 c!178614) b!1065151))

(assert (= (and d!301024 (not c!178614)) b!1065153))

(assert (= (and b!1065153 c!178615) b!1065147))

(assert (= (and b!1065153 (not c!178615)) b!1065148))

(assert (= (and d!301024 res!475871) b!1065146))

(assert (= (and b!1065146 res!475870) b!1065150))

(assert (= (and b!1065150 res!475873) b!1065154))

(assert (= (and d!301024 (not res!475869)) b!1065152))

(declare-fun m!1222675 () Bool)

(assert (=> b!1065150 m!1222675))

(declare-fun m!1222677 () Bool)

(assert (=> b!1065150 m!1222677))

(declare-fun m!1222679 () Bool)

(assert (=> b!1065148 m!1222679))

(assert (=> b!1065148 m!1222679))

(declare-fun m!1222681 () Bool)

(assert (=> b!1065148 m!1222681))

(declare-fun m!1222683 () Bool)

(assert (=> b!1065148 m!1222683))

(assert (=> b!1065148 m!1222679))

(declare-fun m!1222685 () Bool)

(assert (=> b!1065148 m!1222685))

(assert (=> b!1065146 m!1222675))

(declare-fun m!1222687 () Bool)

(assert (=> b!1065146 m!1222687))

(assert (=> b!1065154 m!1222675))

(declare-fun m!1222689 () Bool)

(assert (=> b!1065154 m!1222689))

(declare-fun m!1222691 () Bool)

(assert (=> b!1065149 m!1222691))

(declare-fun m!1222693 () Bool)

(assert (=> d!301024 m!1222693))

(declare-fun m!1222695 () Bool)

(assert (=> d!301024 m!1222695))

(assert (=> d!301024 m!1222651))

(assert (=> b!1065152 m!1222693))

(assert (=> b!1064818 d!301024))

(declare-fun bs!252040 () Bool)

(declare-fun d!301030 () Bool)

(assert (= bs!252040 (and d!301030 b!1064818)))

(declare-fun lambda!38558 () Int)

(assert (=> bs!252040 (= lambda!38558 lambda!38523)))

(declare-fun bs!252041 () Bool)

(assert (= bs!252041 (and d!301030 d!301016)))

(assert (=> bs!252041 (not (= lambda!38558 lambda!38550))))

(declare-fun bs!252042 () Bool)

(assert (= bs!252042 (and d!301030 b!1064924)))

(assert (=> bs!252042 (not (= lambda!38558 lambda!38538))))

(declare-fun bs!252043 () Bool)

(assert (= bs!252043 (and d!301030 b!1065041)))

(assert (=> bs!252043 (not (= lambda!38558 lambda!38542))))

(assert (=> bs!252041 (= (= lt!360357 (Star!2936 (reg!3265 r!15766))) (= lambda!38558 lambda!38549))))

(declare-fun bs!252045 () Bool)

(assert (= bs!252045 (and d!301030 b!1064923)))

(assert (=> bs!252045 (not (= lambda!38558 lambda!38537))))

(assert (=> bs!252040 (not (= lambda!38558 lambda!38524))))

(declare-fun bs!252046 () Bool)

(assert (= bs!252046 (and d!301030 b!1065040)))

(assert (=> bs!252046 (not (= lambda!38558 lambda!38541))))

(assert (=> d!301030 true))

(assert (=> d!301030 true))

(assert (=> d!301030 true))

(assert (=> d!301030 (= (isDefined!2077 (findConcatSeparation!541 (reg!3265 r!15766) lt!360357 Nil!10150 s!10566 s!10566)) (Exists!659 lambda!38558))))

(declare-fun lt!360417 () Unit!15547)

(declare-fun choose!6795 (Regex!2936 Regex!2936 List!10166) Unit!15547)

(assert (=> d!301030 (= lt!360417 (choose!6795 (reg!3265 r!15766) lt!360357 s!10566))))

(assert (=> d!301030 (validRegex!1405 (reg!3265 r!15766))))

(assert (=> d!301030 (= (lemmaFindConcatSeparationEquivalentToExists!541 (reg!3265 r!15766) lt!360357 s!10566) lt!360417)))

(declare-fun bs!252047 () Bool)

(assert (= bs!252047 d!301030))

(assert (=> bs!252047 m!1222651))

(declare-fun m!1222703 () Bool)

(assert (=> bs!252047 m!1222703))

(assert (=> bs!252047 m!1222537))

(assert (=> bs!252047 m!1222547))

(declare-fun m!1222705 () Bool)

(assert (=> bs!252047 m!1222705))

(assert (=> bs!252047 m!1222537))

(assert (=> b!1064818 d!301030))

(declare-fun d!301034 () Bool)

(assert (=> d!301034 (= (Exists!659 lambda!38523) (choose!6793 lambda!38523))))

(declare-fun bs!252048 () Bool)

(assert (= bs!252048 d!301034))

(declare-fun m!1222707 () Bool)

(assert (=> bs!252048 m!1222707))

(assert (=> b!1064818 d!301034))

(declare-fun b!1065163 () Bool)

(declare-fun res!475884 () Bool)

(declare-fun e!675566 () Bool)

(assert (=> b!1065163 (=> (not res!475884) (not e!675566))))

(declare-fun call!76828 () Bool)

(assert (=> b!1065163 (= res!475884 call!76828)))

(declare-fun e!675568 () Bool)

(assert (=> b!1065163 (= e!675568 e!675566)))

(declare-fun d!301036 () Bool)

(declare-fun res!475883 () Bool)

(declare-fun e!675570 () Bool)

(assert (=> d!301036 (=> res!475883 e!675570)))

(assert (=> d!301036 (= res!475883 (is-ElementMatch!2936 lt!360359))))

(assert (=> d!301036 (= (validRegex!1405 lt!360359) e!675570)))

(declare-fun b!1065164 () Bool)

(declare-fun call!76827 () Bool)

(assert (=> b!1065164 (= e!675566 call!76827)))

(declare-fun bm!76822 () Bool)

(declare-fun c!178617 () Bool)

(assert (=> bm!76822 (= call!76827 (validRegex!1405 (ite c!178617 (regTwo!6385 lt!360359) (regTwo!6384 lt!360359))))))

(declare-fun b!1065165 () Bool)

(declare-fun e!675569 () Bool)

(assert (=> b!1065165 (= e!675570 e!675569)))

(declare-fun c!178616 () Bool)

(assert (=> b!1065165 (= c!178616 (is-Star!2936 lt!360359))))

(declare-fun call!76829 () Bool)

(declare-fun bm!76823 () Bool)

(assert (=> bm!76823 (= call!76829 (validRegex!1405 (ite c!178616 (reg!3265 lt!360359) (ite c!178617 (regOne!6385 lt!360359) (regOne!6384 lt!360359)))))))

(declare-fun b!1065166 () Bool)

(declare-fun res!475885 () Bool)

(declare-fun e!675572 () Bool)

(assert (=> b!1065166 (=> res!475885 e!675572)))

(assert (=> b!1065166 (= res!475885 (not (is-Concat!4769 lt!360359)))))

(assert (=> b!1065166 (= e!675568 e!675572)))

(declare-fun bm!76824 () Bool)

(assert (=> bm!76824 (= call!76828 call!76829)))

(declare-fun b!1065167 () Bool)

(declare-fun e!675567 () Bool)

(assert (=> b!1065167 (= e!675567 call!76827)))

(declare-fun b!1065168 () Bool)

(declare-fun e!675571 () Bool)

(assert (=> b!1065168 (= e!675569 e!675571)))

(declare-fun res!475886 () Bool)

(assert (=> b!1065168 (= res!475886 (not (nullable!1023 (reg!3265 lt!360359))))))

(assert (=> b!1065168 (=> (not res!475886) (not e!675571))))

(declare-fun b!1065169 () Bool)

(assert (=> b!1065169 (= e!675571 call!76829)))

(declare-fun b!1065170 () Bool)

(assert (=> b!1065170 (= e!675572 e!675567)))

(declare-fun res!475882 () Bool)

(assert (=> b!1065170 (=> (not res!475882) (not e!675567))))

(assert (=> b!1065170 (= res!475882 call!76828)))

(declare-fun b!1065171 () Bool)

(assert (=> b!1065171 (= e!675569 e!675568)))

(assert (=> b!1065171 (= c!178617 (is-Union!2936 lt!360359))))

(assert (= (and d!301036 (not res!475883)) b!1065165))

(assert (= (and b!1065165 c!178616) b!1065168))

(assert (= (and b!1065165 (not c!178616)) b!1065171))

(assert (= (and b!1065168 res!475886) b!1065169))

(assert (= (and b!1065171 c!178617) b!1065163))

(assert (= (and b!1065171 (not c!178617)) b!1065166))

(assert (= (and b!1065163 res!475884) b!1065164))

(assert (= (and b!1065166 (not res!475885)) b!1065170))

(assert (= (and b!1065170 res!475882) b!1065167))

(assert (= (or b!1065164 b!1065167) bm!76822))

(assert (= (or b!1065163 b!1065170) bm!76824))

(assert (= (or b!1065169 bm!76824) bm!76823))

(declare-fun m!1222709 () Bool)

(assert (=> bm!76822 m!1222709))

(declare-fun m!1222711 () Bool)

(assert (=> bm!76823 m!1222711))

(declare-fun m!1222713 () Bool)

(assert (=> b!1065168 m!1222713))

(assert (=> b!1064814 d!301036))

(declare-fun b!1065176 () Bool)

(declare-fun e!675575 () Bool)

(declare-fun tp!319647 () Bool)

(assert (=> b!1065176 (= e!675575 (and tp_is_empty!5515 tp!319647))))

(assert (=> b!1064817 (= tp!319623 e!675575)))

(assert (= (and b!1064817 (is-Cons!10150 (t!101212 s!10566))) b!1065176))

(declare-fun b!1065189 () Bool)

(declare-fun e!675578 () Bool)

(declare-fun tp!319662 () Bool)

(assert (=> b!1065189 (= e!675578 tp!319662)))

(declare-fun b!1065188 () Bool)

(declare-fun tp!319661 () Bool)

(declare-fun tp!319660 () Bool)

(assert (=> b!1065188 (= e!675578 (and tp!319661 tp!319660))))

(declare-fun b!1065190 () Bool)

(declare-fun tp!319658 () Bool)

(declare-fun tp!319659 () Bool)

(assert (=> b!1065190 (= e!675578 (and tp!319658 tp!319659))))

(declare-fun b!1065187 () Bool)

(assert (=> b!1065187 (= e!675578 tp_is_empty!5515)))

(assert (=> b!1064813 (= tp!319625 e!675578)))

(assert (= (and b!1064813 (is-ElementMatch!2936 (reg!3265 r!15766))) b!1065187))

(assert (= (and b!1064813 (is-Concat!4769 (reg!3265 r!15766))) b!1065188))

(assert (= (and b!1064813 (is-Star!2936 (reg!3265 r!15766))) b!1065189))

(assert (= (and b!1064813 (is-Union!2936 (reg!3265 r!15766))) b!1065190))

(declare-fun b!1065193 () Bool)

(declare-fun e!675579 () Bool)

(declare-fun tp!319667 () Bool)

(assert (=> b!1065193 (= e!675579 tp!319667)))

(declare-fun b!1065192 () Bool)

(declare-fun tp!319666 () Bool)

(declare-fun tp!319665 () Bool)

(assert (=> b!1065192 (= e!675579 (and tp!319666 tp!319665))))

(declare-fun b!1065194 () Bool)

(declare-fun tp!319663 () Bool)

(declare-fun tp!319664 () Bool)

(assert (=> b!1065194 (= e!675579 (and tp!319663 tp!319664))))

(declare-fun b!1065191 () Bool)

(assert (=> b!1065191 (= e!675579 tp_is_empty!5515)))

(assert (=> b!1064812 (= tp!319624 e!675579)))

(assert (= (and b!1064812 (is-ElementMatch!2936 (regOne!6385 r!15766))) b!1065191))

(assert (= (and b!1064812 (is-Concat!4769 (regOne!6385 r!15766))) b!1065192))

(assert (= (and b!1064812 (is-Star!2936 (regOne!6385 r!15766))) b!1065193))

(assert (= (and b!1064812 (is-Union!2936 (regOne!6385 r!15766))) b!1065194))

(declare-fun b!1065197 () Bool)

(declare-fun e!675580 () Bool)

(declare-fun tp!319672 () Bool)

(assert (=> b!1065197 (= e!675580 tp!319672)))

(declare-fun b!1065196 () Bool)

(declare-fun tp!319671 () Bool)

(declare-fun tp!319670 () Bool)

(assert (=> b!1065196 (= e!675580 (and tp!319671 tp!319670))))

(declare-fun b!1065198 () Bool)

(declare-fun tp!319668 () Bool)

(declare-fun tp!319669 () Bool)

(assert (=> b!1065198 (= e!675580 (and tp!319668 tp!319669))))

(declare-fun b!1065195 () Bool)

(assert (=> b!1065195 (= e!675580 tp_is_empty!5515)))

(assert (=> b!1064812 (= tp!319622 e!675580)))

(assert (= (and b!1064812 (is-ElementMatch!2936 (regTwo!6385 r!15766))) b!1065195))

(assert (= (and b!1064812 (is-Concat!4769 (regTwo!6385 r!15766))) b!1065196))

(assert (= (and b!1064812 (is-Star!2936 (regTwo!6385 r!15766))) b!1065197))

(assert (= (and b!1064812 (is-Union!2936 (regTwo!6385 r!15766))) b!1065198))

(declare-fun b!1065201 () Bool)

(declare-fun e!675581 () Bool)

(declare-fun tp!319677 () Bool)

(assert (=> b!1065201 (= e!675581 tp!319677)))

(declare-fun b!1065200 () Bool)

(declare-fun tp!319676 () Bool)

(declare-fun tp!319675 () Bool)

(assert (=> b!1065200 (= e!675581 (and tp!319676 tp!319675))))

(declare-fun b!1065202 () Bool)

(declare-fun tp!319673 () Bool)

(declare-fun tp!319674 () Bool)

(assert (=> b!1065202 (= e!675581 (and tp!319673 tp!319674))))

(declare-fun b!1065199 () Bool)

(assert (=> b!1065199 (= e!675581 tp_is_empty!5515)))

(assert (=> b!1064819 (= tp!319626 e!675581)))

(assert (= (and b!1064819 (is-ElementMatch!2936 (regOne!6384 r!15766))) b!1065199))

(assert (= (and b!1064819 (is-Concat!4769 (regOne!6384 r!15766))) b!1065200))

(assert (= (and b!1064819 (is-Star!2936 (regOne!6384 r!15766))) b!1065201))

(assert (= (and b!1064819 (is-Union!2936 (regOne!6384 r!15766))) b!1065202))

(declare-fun b!1065205 () Bool)

(declare-fun e!675582 () Bool)

(declare-fun tp!319682 () Bool)

(assert (=> b!1065205 (= e!675582 tp!319682)))

(declare-fun b!1065204 () Bool)

(declare-fun tp!319681 () Bool)

(declare-fun tp!319680 () Bool)

(assert (=> b!1065204 (= e!675582 (and tp!319681 tp!319680))))

(declare-fun b!1065206 () Bool)

(declare-fun tp!319678 () Bool)

(declare-fun tp!319679 () Bool)

(assert (=> b!1065206 (= e!675582 (and tp!319678 tp!319679))))

(declare-fun b!1065203 () Bool)

(assert (=> b!1065203 (= e!675582 tp_is_empty!5515)))

(assert (=> b!1064819 (= tp!319621 e!675582)))

(assert (= (and b!1064819 (is-ElementMatch!2936 (regTwo!6384 r!15766))) b!1065203))

(assert (= (and b!1064819 (is-Concat!4769 (regTwo!6384 r!15766))) b!1065204))

(assert (= (and b!1064819 (is-Star!2936 (regTwo!6384 r!15766))) b!1065205))

(assert (= (and b!1064819 (is-Union!2936 (regTwo!6384 r!15766))) b!1065206))

(push 1)

(assert (not b!1064920))

(assert (not b!1065037))

(assert (not b!1065057))

(assert (not bm!76792))

(assert (not b!1065067))

(assert (not bm!76822))

(assert (not d!301014))

(assert (not bm!76817))

(assert (not bm!76797))

(assert (not b!1065176))

(assert tp_is_empty!5515)

(assert (not b!1065150))

(assert (not b!1064968))

(assert (not d!300998))

(assert (not b!1065028))

(assert (not b!1065188))

(assert (not d!301034))

(assert (not b!1065069))

(assert (not b!1065052))

(assert (not b!1064978))

(assert (not b!1065152))

(assert (not b!1065061))

(assert (not b!1064928))

(assert (not b!1065206))

(assert (not bm!76821))

(assert (not d!301008))

(assert (not b!1065194))

(assert (not b!1065045))

(assert (not bm!76779))

(assert (not b!1065154))

(assert (not b!1065204))

(assert (not b!1065189))

(assert (not bm!76778))

(assert (not b!1065117))

(assert (not b!1065193))

(assert (not bm!76785))

(assert (not bm!76800))

(assert (not b!1065056))

(assert (not b!1065192))

(assert (not b!1065198))

(assert (not b!1064976))

(assert (not d!301002))

(assert (not b!1065201))

(assert (not b!1065197))

(assert (not b!1065202))

(assert (not b!1064980))

(assert (not b!1065148))

(assert (not bm!76823))

(assert (not b!1065200))

(assert (not b!1065149))

(assert (not d!301012))

(assert (not bm!76796))

(assert (not bm!76795))

(assert (not b!1065168))

(assert (not b!1064972))

(assert (not bm!76793))

(assert (not d!301016))

(assert (not b!1065196))

(assert (not b!1065205))

(assert (not b!1065146))

(assert (not b!1065190))

(assert (not d!301024))

(assert (not d!301030))

(assert (not d!301022))

(assert (not b!1065065))

(assert (not b!1064967))

(assert (not bm!76798))

(assert (not d!301018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

