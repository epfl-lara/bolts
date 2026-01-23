; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233610 () Bool)

(assert start!233610)

(declare-fun b!2380759 () Bool)

(assert (=> b!2380759 true))

(assert (=> b!2380759 true))

(declare-fun lambda!88676 () Int)

(declare-fun lambda!88675 () Int)

(assert (=> b!2380759 (not (= lambda!88676 lambda!88675))))

(assert (=> b!2380759 true))

(assert (=> b!2380759 true))

(declare-fun b!2380753 () Bool)

(declare-fun e!1518517 () Bool)

(assert (=> b!2380753 (= e!1518517 false)))

(declare-fun b!2380754 () Bool)

(declare-fun e!1518518 () Bool)

(declare-fun tp!760026 () Bool)

(declare-fun tp!760022 () Bool)

(assert (=> b!2380754 (= e!1518518 (and tp!760026 tp!760022))))

(declare-fun b!2380755 () Bool)

(declare-datatypes ((Unit!41015 0))(
  ( (Unit!41016) )
))
(declare-fun e!1518521 () Unit!41015)

(declare-fun Unit!41017 () Unit!41015)

(assert (=> b!2380755 (= e!1518521 Unit!41017)))

(declare-fun lt!868152 () Unit!41015)

(declare-datatypes ((C!14118 0))(
  ( (C!14119 (val!8301 Int)) )
))
(declare-datatypes ((Regex!6980 0))(
  ( (ElementMatch!6980 (c!378482 C!14118)) (Concat!11616 (regOne!14472 Regex!6980) (regTwo!14472 Regex!6980)) (EmptyExpr!6980) (Star!6980 (reg!7309 Regex!6980)) (EmptyLang!6980) (Union!6980 (regOne!14473 Regex!6980) (regTwo!14473 Regex!6980)) )
))
(declare-fun lt!868154 () Regex!6980)

(declare-datatypes ((List!28198 0))(
  ( (Nil!28100) (Cons!28100 (h!33501 C!14118) (t!208175 List!28198)) )
))
(declare-fun s!9460 () List!28198)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!29 (Regex!6980 Regex!6980 List!28198 List!28198) Unit!41015)

(assert (=> b!2380755 (= lt!868152 (lemmaTwoRegexMatchThenConcatMatchesConcatString!29 lt!868154 EmptyExpr!6980 s!9460 Nil!28100))))

(declare-fun lt!868146 () Regex!6980)

(assert (=> b!2380755 (= lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980))))

(declare-fun res!1011056 () Bool)

(declare-fun call!144631 () List!28198)

(declare-fun matchR!3097 (Regex!6980 List!28198) Bool)

(assert (=> b!2380755 (= res!1011056 (matchR!3097 lt!868146 call!144631))))

(declare-fun e!1518523 () Bool)

(assert (=> b!2380755 (=> (not res!1011056) (not e!1518523))))

(assert (=> b!2380755 e!1518523))

(declare-fun lt!868156 () Unit!41015)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!11 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> b!2380755 (= lt!868156 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!11 lt!868154 EmptyExpr!6980 s!9460))))

(declare-fun res!1011048 () Bool)

(declare-fun call!144630 () Bool)

(assert (=> b!2380755 (= res!1011048 call!144630)))

(declare-fun e!1518524 () Bool)

(assert (=> b!2380755 (=> (not res!1011048) (not e!1518524))))

(assert (=> b!2380755 e!1518524))

(declare-fun call!144632 () Bool)

(declare-fun bm!144622 () Bool)

(declare-fun c!378481 () Bool)

(assert (=> bm!144622 (= call!144632 (matchR!3097 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)) (ite c!378481 s!9460 call!144631)))))

(declare-fun b!2380756 () Bool)

(assert (=> b!2380756 e!1518517))

(declare-fun res!1011049 () Bool)

(assert (=> b!2380756 (=> (not res!1011049) (not e!1518517))))

(assert (=> b!2380756 (= res!1011049 call!144632)))

(declare-fun lt!868143 () Unit!41015)

(declare-datatypes ((tuple2!27824 0))(
  ( (tuple2!27825 (_1!16453 List!28198) (_2!16453 List!28198)) )
))
(declare-fun lt!868151 () tuple2!27824)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!11 (Regex!6980 Regex!6980 List!28198 List!28198 List!28198) Unit!41015)

(assert (=> b!2380756 (= lt!868143 (lemmaFindSeparationIsDefinedThenConcatMatches!11 lt!868154 EmptyExpr!6980 (_1!16453 lt!868151) (_2!16453 lt!868151) s!9460))))

(declare-datatypes ((Option!5523 0))(
  ( (None!5522) (Some!5522 (v!30930 tuple2!27824)) )
))
(declare-fun lt!868155 () Option!5523)

(declare-fun get!8569 (Option!5523) tuple2!27824)

(assert (=> b!2380756 (= lt!868151 (get!8569 lt!868155))))

(declare-fun e!1518520 () Unit!41015)

(declare-fun Unit!41018 () Unit!41015)

(assert (=> b!2380756 (= e!1518520 Unit!41018)))

(declare-fun b!2380757 () Bool)

(declare-fun e!1518526 () Bool)

(declare-fun e!1518515 () Bool)

(assert (=> b!2380757 (= e!1518526 e!1518515)))

(declare-fun res!1011053 () Bool)

(assert (=> b!2380757 (=> res!1011053 e!1518515)))

(declare-fun lt!868150 () Regex!6980)

(assert (=> b!2380757 (= res!1011053 (not (= lt!868150 EmptyExpr!6980)))))

(declare-datatypes ((List!28199 0))(
  ( (Nil!28101) (Cons!28101 (h!33502 Regex!6980) (t!208176 List!28199)) )
))
(declare-fun lt!868148 () List!28199)

(declare-fun generalisedConcat!81 (List!28199) Regex!6980)

(assert (=> b!2380757 (= lt!868150 (generalisedConcat!81 lt!868148))))

(declare-fun b!2380758 () Bool)

(declare-fun e!1518528 () Bool)

(assert (=> b!2380758 (= e!1518528 (not call!144630))))

(declare-fun call!144627 () Bool)

(declare-fun call!144628 () Option!5523)

(declare-fun bm!144623 () Bool)

(declare-fun isDefined!4351 (Option!5523) Bool)

(assert (=> bm!144623 (= call!144627 (isDefined!4351 (ite c!378481 call!144628 lt!868155)))))

(declare-fun e!1518525 () Bool)

(declare-fun e!1518527 () Bool)

(assert (=> b!2380759 (= e!1518525 e!1518527)))

(declare-fun res!1011052 () Bool)

(assert (=> b!2380759 (=> res!1011052 e!1518527)))

(declare-fun lt!868147 () Bool)

(declare-fun lt!868145 () Bool)

(assert (=> b!2380759 (= res!1011052 (not (= lt!868147 lt!868145)))))

(declare-fun Exists!1042 (Int) Bool)

(assert (=> b!2380759 (= (Exists!1042 lambda!88675) (Exists!1042 lambda!88676))))

(declare-fun lt!868144 () Unit!41015)

(declare-fun r!13927 () Regex!6980)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!381 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> b!2380759 (= lt!868144 (lemmaExistCutMatchRandMatchRSpecEquivalent!381 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460))))

(assert (=> b!2380759 (= lt!868145 (Exists!1042 lambda!88675))))

(declare-fun findConcatSeparation!631 (Regex!6980 Regex!6980 List!28198 List!28198 List!28198) Option!5523)

(assert (=> b!2380759 (= lt!868145 (isDefined!4351 (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) Nil!28100 s!9460 s!9460)))))

(declare-fun lt!868149 () Unit!41015)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!631 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> b!2380759 (= lt!868149 (lemmaFindConcatSeparationEquivalentToExists!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460))))

(declare-fun b!2380760 () Bool)

(declare-fun Unit!41019 () Unit!41015)

(assert (=> b!2380760 (= e!1518520 Unit!41019)))

(declare-fun b!2380761 () Bool)

(declare-fun e!1518522 () Bool)

(declare-fun tp_is_empty!11373 () Bool)

(declare-fun tp!760021 () Bool)

(assert (=> b!2380761 (= e!1518522 (and tp_is_empty!11373 tp!760021))))

(declare-fun b!2380762 () Bool)

(declare-fun e!1518516 () Bool)

(declare-fun tp!760025 () Bool)

(declare-fun tp!760023 () Bool)

(assert (=> b!2380762 (= e!1518516 (and tp!760025 tp!760023))))

(declare-fun bm!144625 () Bool)

(declare-fun call!144629 () Option!5523)

(assert (=> bm!144625 (= call!144629 (findConcatSeparation!631 lt!868154 EmptyExpr!6980 Nil!28100 s!9460 s!9460))))

(declare-fun b!2380763 () Bool)

(declare-fun tp!760020 () Bool)

(assert (=> b!2380763 (= e!1518516 tp!760020)))

(declare-fun bm!144626 () Bool)

(assert (=> bm!144626 (= call!144630 (isDefined!4351 (ite c!378481 call!144629 call!144628)))))

(declare-fun b!2380764 () Bool)

(declare-fun tp!760027 () Bool)

(declare-fun tp!760024 () Bool)

(assert (=> b!2380764 (= e!1518516 (and tp!760027 tp!760024))))

(declare-fun b!2380765 () Bool)

(declare-fun res!1011057 () Bool)

(assert (=> b!2380765 (=> res!1011057 e!1518527)))

(declare-fun l!9164 () List!28199)

(declare-fun isEmpty!16050 (List!28199) Bool)

(assert (=> b!2380765 (= res!1011057 (isEmpty!16050 l!9164))))

(declare-fun b!2380766 () Bool)

(assert (=> b!2380766 (= e!1518527 e!1518526)))

(declare-fun res!1011055 () Bool)

(assert (=> b!2380766 (=> res!1011055 e!1518526)))

(assert (=> b!2380766 (= res!1011055 (not (isEmpty!16050 lt!868148)))))

(declare-fun tail!3463 (List!28199) List!28199)

(assert (=> b!2380766 (= lt!868148 (tail!3463 l!9164))))

(declare-fun b!2380767 () Bool)

(declare-fun Unit!41020 () Unit!41015)

(assert (=> b!2380767 (= e!1518521 Unit!41020)))

(assert (=> b!2380767 (= lt!868155 call!144629)))

(declare-fun lt!868140 () Bool)

(assert (=> b!2380767 (= lt!868140 call!144627)))

(declare-fun c!378480 () Bool)

(assert (=> b!2380767 (= c!378480 lt!868140)))

(declare-fun lt!868142 () Unit!41015)

(assert (=> b!2380767 (= lt!868142 e!1518520)))

(declare-fun res!1011047 () Bool)

(assert (=> b!2380767 (= res!1011047 (not lt!868140))))

(assert (=> b!2380767 (=> (not res!1011047) (not e!1518528))))

(assert (=> b!2380767 e!1518528))

(declare-fun bm!144627 () Bool)

(assert (=> bm!144627 (= call!144628 (findConcatSeparation!631 lt!868154 lt!868150 Nil!28100 s!9460 s!9460))))

(declare-fun b!2380768 () Bool)

(declare-fun e!1518519 () Bool)

(assert (=> b!2380768 (= e!1518519 (not e!1518525))))

(declare-fun res!1011051 () Bool)

(assert (=> b!2380768 (=> res!1011051 e!1518525)))

(assert (=> b!2380768 (= res!1011051 (not (is-Concat!11616 r!13927)))))

(declare-fun lt!868153 () Bool)

(assert (=> b!2380768 (= lt!868153 lt!868147)))

(declare-fun matchRSpec!829 (Regex!6980 List!28198) Bool)

(assert (=> b!2380768 (= lt!868147 (matchRSpec!829 r!13927 s!9460))))

(assert (=> b!2380768 (= lt!868153 (matchR!3097 r!13927 s!9460))))

(declare-fun lt!868139 () Unit!41015)

(declare-fun mainMatchTheorem!829 (Regex!6980 List!28198) Unit!41015)

(assert (=> b!2380768 (= lt!868139 (mainMatchTheorem!829 r!13927 s!9460))))

(declare-fun b!2380769 () Bool)

(assert (=> b!2380769 (= e!1518523 call!144632)))

(declare-fun b!2380770 () Bool)

(declare-fun validRegex!2705 (Regex!6980) Bool)

(assert (=> b!2380770 (= e!1518515 (validRegex!2705 r!13927))))

(declare-fun lt!868141 () Unit!41015)

(assert (=> b!2380770 (= lt!868141 e!1518521)))

(assert (=> b!2380770 (= c!378481 (matchR!3097 lt!868154 s!9460))))

(declare-fun head!5193 (List!28199) Regex!6980)

(assert (=> b!2380770 (= lt!868154 (head!5193 l!9164))))

(declare-fun b!2380771 () Bool)

(declare-fun res!1011054 () Bool)

(assert (=> b!2380771 (=> (not res!1011054) (not e!1518519))))

(assert (=> b!2380771 (= res!1011054 (= r!13927 (generalisedConcat!81 l!9164)))))

(declare-fun bm!144624 () Bool)

(declare-fun ++!6935 (List!28198 List!28198) List!28198)

(assert (=> bm!144624 (= call!144631 (++!6935 (ite c!378481 s!9460 (_1!16453 lt!868151)) (ite c!378481 Nil!28100 (_2!16453 lt!868151))))))

(declare-fun res!1011050 () Bool)

(assert (=> start!233610 (=> (not res!1011050) (not e!1518519))))

(declare-fun lambda!88674 () Int)

(declare-fun forall!5614 (List!28199 Int) Bool)

(assert (=> start!233610 (= res!1011050 (forall!5614 l!9164 lambda!88674))))

(assert (=> start!233610 e!1518519))

(assert (=> start!233610 e!1518518))

(assert (=> start!233610 e!1518516))

(assert (=> start!233610 e!1518522))

(declare-fun b!2380772 () Bool)

(assert (=> b!2380772 (= e!1518516 tp_is_empty!11373)))

(declare-fun b!2380773 () Bool)

(assert (=> b!2380773 (= e!1518524 call!144627)))

(assert (= (and start!233610 res!1011050) b!2380771))

(assert (= (and b!2380771 res!1011054) b!2380768))

(assert (= (and b!2380768 (not res!1011051)) b!2380759))

(assert (= (and b!2380759 (not res!1011052)) b!2380765))

(assert (= (and b!2380765 (not res!1011057)) b!2380766))

(assert (= (and b!2380766 (not res!1011055)) b!2380757))

(assert (= (and b!2380757 (not res!1011053)) b!2380770))

(assert (= (and b!2380770 c!378481) b!2380755))

(assert (= (and b!2380770 (not c!378481)) b!2380767))

(assert (= (and b!2380755 res!1011056) b!2380769))

(assert (= (and b!2380755 res!1011048) b!2380773))

(assert (= (and b!2380767 c!378480) b!2380756))

(assert (= (and b!2380767 (not c!378480)) b!2380760))

(assert (= (and b!2380756 res!1011049) b!2380753))

(assert (= (and b!2380767 res!1011047) b!2380758))

(assert (= (or b!2380755 b!2380756) bm!144624))

(assert (= (or b!2380755 b!2380767) bm!144625))

(assert (= (or b!2380773 b!2380758) bm!144627))

(assert (= (or b!2380769 b!2380756) bm!144622))

(assert (= (or b!2380773 b!2380767) bm!144623))

(assert (= (or b!2380755 b!2380758) bm!144626))

(assert (= (and start!233610 (is-Cons!28101 l!9164)) b!2380754))

(assert (= (and start!233610 (is-ElementMatch!6980 r!13927)) b!2380772))

(assert (= (and start!233610 (is-Concat!11616 r!13927)) b!2380764))

(assert (= (and start!233610 (is-Star!6980 r!13927)) b!2380763))

(assert (= (and start!233610 (is-Union!6980 r!13927)) b!2380762))

(assert (= (and start!233610 (is-Cons!28100 s!9460)) b!2380761))

(declare-fun m!2784551 () Bool)

(assert (=> b!2380765 m!2784551))

(declare-fun m!2784553 () Bool)

(assert (=> b!2380756 m!2784553))

(declare-fun m!2784555 () Bool)

(assert (=> b!2380756 m!2784555))

(declare-fun m!2784557 () Bool)

(assert (=> start!233610 m!2784557))

(declare-fun m!2784559 () Bool)

(assert (=> b!2380771 m!2784559))

(declare-fun m!2784561 () Bool)

(assert (=> bm!144627 m!2784561))

(declare-fun m!2784563 () Bool)

(assert (=> b!2380768 m!2784563))

(declare-fun m!2784565 () Bool)

(assert (=> b!2380768 m!2784565))

(declare-fun m!2784567 () Bool)

(assert (=> b!2380768 m!2784567))

(declare-fun m!2784569 () Bool)

(assert (=> bm!144623 m!2784569))

(declare-fun m!2784571 () Bool)

(assert (=> b!2380770 m!2784571))

(declare-fun m!2784573 () Bool)

(assert (=> b!2380770 m!2784573))

(declare-fun m!2784575 () Bool)

(assert (=> b!2380770 m!2784575))

(declare-fun m!2784577 () Bool)

(assert (=> b!2380759 m!2784577))

(declare-fun m!2784579 () Bool)

(assert (=> b!2380759 m!2784579))

(declare-fun m!2784581 () Bool)

(assert (=> b!2380759 m!2784581))

(declare-fun m!2784583 () Bool)

(assert (=> b!2380759 m!2784583))

(assert (=> b!2380759 m!2784577))

(declare-fun m!2784585 () Bool)

(assert (=> b!2380759 m!2784585))

(assert (=> b!2380759 m!2784581))

(declare-fun m!2784587 () Bool)

(assert (=> b!2380759 m!2784587))

(declare-fun m!2784589 () Bool)

(assert (=> bm!144626 m!2784589))

(declare-fun m!2784591 () Bool)

(assert (=> bm!144624 m!2784591))

(declare-fun m!2784593 () Bool)

(assert (=> b!2380766 m!2784593))

(declare-fun m!2784595 () Bool)

(assert (=> b!2380766 m!2784595))

(declare-fun m!2784597 () Bool)

(assert (=> b!2380755 m!2784597))

(declare-fun m!2784599 () Bool)

(assert (=> b!2380755 m!2784599))

(declare-fun m!2784601 () Bool)

(assert (=> b!2380755 m!2784601))

(declare-fun m!2784603 () Bool)

(assert (=> b!2380757 m!2784603))

(declare-fun m!2784605 () Bool)

(assert (=> bm!144625 m!2784605))

(declare-fun m!2784607 () Bool)

(assert (=> bm!144622 m!2784607))

(push 1)

(assert (not b!2380754))

(assert (not b!2380759))

(assert (not b!2380757))

(assert (not b!2380761))

(assert (not bm!144623))

(assert (not b!2380755))

(assert (not b!2380771))

(assert (not b!2380765))

(assert (not b!2380766))

(assert (not bm!144624))

(assert (not b!2380768))

(assert (not bm!144627))

(assert (not b!2380764))

(assert (not b!2380756))

(assert (not bm!144625))

(assert (not b!2380770))

(assert (not b!2380762))

(assert (not bm!144622))

(assert tp_is_empty!11373)

(assert (not b!2380763))

(assert (not bm!144626))

(assert (not start!233610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!696671 () Bool)

(declare-fun choose!13920 (Int) Bool)

(assert (=> d!696671 (= (Exists!1042 lambda!88675) (choose!13920 lambda!88675))))

(declare-fun bs!461863 () Bool)

(assert (= bs!461863 d!696671))

(declare-fun m!2784667 () Bool)

(assert (=> bs!461863 m!2784667))

(assert (=> b!2380759 d!696671))

(declare-fun d!696673 () Bool)

(declare-fun isEmpty!16052 (Option!5523) Bool)

(assert (=> d!696673 (= (isDefined!4351 (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) Nil!28100 s!9460 s!9460)) (not (isEmpty!16052 (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) Nil!28100 s!9460 s!9460))))))

(declare-fun bs!461864 () Bool)

(assert (= bs!461864 d!696673))

(assert (=> bs!461864 m!2784577))

(declare-fun m!2784669 () Bool)

(assert (=> bs!461864 m!2784669))

(assert (=> b!2380759 d!696673))

(declare-fun bs!461865 () Bool)

(declare-fun d!696675 () Bool)

(assert (= bs!461865 (and d!696675 b!2380759)))

(declare-fun lambda!88690 () Int)

(assert (=> bs!461865 (= lambda!88690 lambda!88675)))

(assert (=> bs!461865 (not (= lambda!88690 lambda!88676))))

(assert (=> d!696675 true))

(assert (=> d!696675 true))

(assert (=> d!696675 true))

(assert (=> d!696675 (= (isDefined!4351 (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) Nil!28100 s!9460 s!9460)) (Exists!1042 lambda!88690))))

(declare-fun lt!868213 () Unit!41015)

(declare-fun choose!13921 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> d!696675 (= lt!868213 (choose!13921 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460))))

(assert (=> d!696675 (validRegex!2705 (regOne!14472 r!13927))))

(assert (=> d!696675 (= (lemmaFindConcatSeparationEquivalentToExists!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460) lt!868213)))

(declare-fun bs!461866 () Bool)

(assert (= bs!461866 d!696675))

(declare-fun m!2784671 () Bool)

(assert (=> bs!461866 m!2784671))

(declare-fun m!2784673 () Bool)

(assert (=> bs!461866 m!2784673))

(assert (=> bs!461866 m!2784577))

(declare-fun m!2784675 () Bool)

(assert (=> bs!461866 m!2784675))

(assert (=> bs!461866 m!2784577))

(assert (=> bs!461866 m!2784579))

(assert (=> b!2380759 d!696675))

(declare-fun bs!461867 () Bool)

(declare-fun d!696679 () Bool)

(assert (= bs!461867 (and d!696679 b!2380759)))

(declare-fun lambda!88695 () Int)

(assert (=> bs!461867 (= lambda!88695 lambda!88675)))

(assert (=> bs!461867 (not (= lambda!88695 lambda!88676))))

(declare-fun bs!461868 () Bool)

(assert (= bs!461868 (and d!696679 d!696675)))

(assert (=> bs!461868 (= lambda!88695 lambda!88690)))

(assert (=> d!696679 true))

(assert (=> d!696679 true))

(assert (=> d!696679 true))

(declare-fun lambda!88696 () Int)

(assert (=> bs!461867 (not (= lambda!88696 lambda!88675))))

(assert (=> bs!461867 (= lambda!88696 lambda!88676)))

(assert (=> bs!461868 (not (= lambda!88696 lambda!88690))))

(declare-fun bs!461869 () Bool)

(assert (= bs!461869 d!696679))

(assert (=> bs!461869 (not (= lambda!88696 lambda!88695))))

(assert (=> d!696679 true))

(assert (=> d!696679 true))

(assert (=> d!696679 true))

(assert (=> d!696679 (= (Exists!1042 lambda!88695) (Exists!1042 lambda!88696))))

(declare-fun lt!868216 () Unit!41015)

(declare-fun choose!13922 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> d!696679 (= lt!868216 (choose!13922 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460))))

(assert (=> d!696679 (validRegex!2705 (regOne!14472 r!13927))))

(assert (=> d!696679 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!381 (regOne!14472 r!13927) (regTwo!14472 r!13927) s!9460) lt!868216)))

(declare-fun m!2784677 () Bool)

(assert (=> bs!461869 m!2784677))

(declare-fun m!2784679 () Bool)

(assert (=> bs!461869 m!2784679))

(declare-fun m!2784681 () Bool)

(assert (=> bs!461869 m!2784681))

(assert (=> bs!461869 m!2784671))

(assert (=> b!2380759 d!696679))

(declare-fun b!2380905 () Bool)

(declare-fun e!1518606 () Bool)

(declare-fun lt!868231 () Option!5523)

(assert (=> b!2380905 (= e!1518606 (= (++!6935 (_1!16453 (get!8569 lt!868231)) (_2!16453 (get!8569 lt!868231))) s!9460))))

(declare-fun b!2380906 () Bool)

(declare-fun res!1011138 () Bool)

(assert (=> b!2380906 (=> (not res!1011138) (not e!1518606))))

(assert (=> b!2380906 (= res!1011138 (matchR!3097 (regTwo!14472 r!13927) (_2!16453 (get!8569 lt!868231))))))

(declare-fun b!2380907 () Bool)

(declare-fun e!1518603 () Option!5523)

(assert (=> b!2380907 (= e!1518603 (Some!5522 (tuple2!27825 Nil!28100 s!9460)))))

(declare-fun d!696681 () Bool)

(declare-fun e!1518607 () Bool)

(assert (=> d!696681 e!1518607))

(declare-fun res!1011135 () Bool)

(assert (=> d!696681 (=> res!1011135 e!1518607)))

(assert (=> d!696681 (= res!1011135 e!1518606)))

(declare-fun res!1011136 () Bool)

(assert (=> d!696681 (=> (not res!1011136) (not e!1518606))))

(assert (=> d!696681 (= res!1011136 (isDefined!4351 lt!868231))))

(assert (=> d!696681 (= lt!868231 e!1518603)))

(declare-fun c!378499 () Bool)

(declare-fun e!1518604 () Bool)

(assert (=> d!696681 (= c!378499 e!1518604)))

(declare-fun res!1011139 () Bool)

(assert (=> d!696681 (=> (not res!1011139) (not e!1518604))))

(assert (=> d!696681 (= res!1011139 (matchR!3097 (regOne!14472 r!13927) Nil!28100))))

(assert (=> d!696681 (validRegex!2705 (regOne!14472 r!13927))))

(assert (=> d!696681 (= (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) Nil!28100 s!9460 s!9460) lt!868231)))

(declare-fun b!2380908 () Bool)

(assert (=> b!2380908 (= e!1518604 (matchR!3097 (regTwo!14472 r!13927) s!9460))))

(declare-fun b!2380909 () Bool)

(declare-fun lt!868229 () Unit!41015)

(declare-fun lt!868230 () Unit!41015)

(assert (=> b!2380909 (= lt!868229 lt!868230)))

(assert (=> b!2380909 (= (++!6935 (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!577 (List!28198 C!14118 List!28198 List!28198) Unit!41015)

(assert (=> b!2380909 (= lt!868230 (lemmaMoveElementToOtherListKeepsConcatEq!577 Nil!28100 (h!33501 s!9460) (t!208175 s!9460) s!9460))))

(declare-fun e!1518605 () Option!5523)

(assert (=> b!2380909 (= e!1518605 (findConcatSeparation!631 (regOne!14472 r!13927) (regTwo!14472 r!13927) (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460) s!9460))))

(declare-fun b!2380910 () Bool)

(declare-fun res!1011137 () Bool)

(assert (=> b!2380910 (=> (not res!1011137) (not e!1518606))))

(assert (=> b!2380910 (= res!1011137 (matchR!3097 (regOne!14472 r!13927) (_1!16453 (get!8569 lt!868231))))))

(declare-fun b!2380911 () Bool)

(assert (=> b!2380911 (= e!1518607 (not (isDefined!4351 lt!868231)))))

(declare-fun b!2380912 () Bool)

(assert (=> b!2380912 (= e!1518603 e!1518605)))

(declare-fun c!378498 () Bool)

(assert (=> b!2380912 (= c!378498 (is-Nil!28100 s!9460))))

(declare-fun b!2380913 () Bool)

(assert (=> b!2380913 (= e!1518605 None!5522)))

(assert (= (and d!696681 res!1011139) b!2380908))

(assert (= (and d!696681 c!378499) b!2380907))

(assert (= (and d!696681 (not c!378499)) b!2380912))

(assert (= (and b!2380912 c!378498) b!2380913))

(assert (= (and b!2380912 (not c!378498)) b!2380909))

(assert (= (and d!696681 res!1011136) b!2380910))

(assert (= (and b!2380910 res!1011137) b!2380906))

(assert (= (and b!2380906 res!1011138) b!2380905))

(assert (= (and d!696681 (not res!1011135)) b!2380911))

(declare-fun m!2784683 () Bool)

(assert (=> b!2380906 m!2784683))

(declare-fun m!2784685 () Bool)

(assert (=> b!2380906 m!2784685))

(declare-fun m!2784687 () Bool)

(assert (=> b!2380909 m!2784687))

(assert (=> b!2380909 m!2784687))

(declare-fun m!2784689 () Bool)

(assert (=> b!2380909 m!2784689))

(declare-fun m!2784691 () Bool)

(assert (=> b!2380909 m!2784691))

(assert (=> b!2380909 m!2784687))

(declare-fun m!2784693 () Bool)

(assert (=> b!2380909 m!2784693))

(declare-fun m!2784695 () Bool)

(assert (=> b!2380911 m!2784695))

(assert (=> b!2380910 m!2784683))

(declare-fun m!2784697 () Bool)

(assert (=> b!2380910 m!2784697))

(assert (=> b!2380905 m!2784683))

(declare-fun m!2784699 () Bool)

(assert (=> b!2380905 m!2784699))

(assert (=> d!696681 m!2784695))

(declare-fun m!2784701 () Bool)

(assert (=> d!696681 m!2784701))

(assert (=> d!696681 m!2784671))

(declare-fun m!2784703 () Bool)

(assert (=> b!2380908 m!2784703))

(assert (=> b!2380759 d!696681))

(declare-fun d!696683 () Bool)

(assert (=> d!696683 (= (Exists!1042 lambda!88676) (choose!13920 lambda!88676))))

(declare-fun bs!461870 () Bool)

(assert (= bs!461870 d!696683))

(declare-fun m!2784705 () Bool)

(assert (=> bs!461870 m!2784705))

(assert (=> b!2380759 d!696683))

(declare-fun d!696685 () Bool)

(assert (=> d!696685 (= (isDefined!4351 (ite c!378481 call!144628 lt!868155)) (not (isEmpty!16052 (ite c!378481 call!144628 lt!868155))))))

(declare-fun bs!461871 () Bool)

(assert (= bs!461871 d!696685))

(declare-fun m!2784707 () Bool)

(assert (=> bs!461871 m!2784707))

(assert (=> bm!144623 d!696685))

(declare-fun d!696687 () Bool)

(assert (=> d!696687 (= (isEmpty!16050 lt!868148) (is-Nil!28101 lt!868148))))

(assert (=> b!2380766 d!696687))

(declare-fun d!696689 () Bool)

(assert (=> d!696689 (= (tail!3463 l!9164) (t!208176 l!9164))))

(assert (=> b!2380766 d!696689))

(declare-fun d!696691 () Bool)

(declare-fun e!1518623 () Bool)

(assert (=> d!696691 e!1518623))

(declare-fun res!1011154 () Bool)

(assert (=> d!696691 (=> (not res!1011154) (not e!1518623))))

(declare-fun lt!868240 () List!28198)

(declare-fun content!3829 (List!28198) (Set C!14118))

(assert (=> d!696691 (= res!1011154 (= (content!3829 lt!868240) (set.union (content!3829 (ite c!378481 s!9460 (_1!16453 lt!868151))) (content!3829 (ite c!378481 Nil!28100 (_2!16453 lt!868151))))))))

(declare-fun e!1518622 () List!28198)

(assert (=> d!696691 (= lt!868240 e!1518622)))

(declare-fun c!378506 () Bool)

(assert (=> d!696691 (= c!378506 (is-Nil!28100 (ite c!378481 s!9460 (_1!16453 lt!868151))))))

(assert (=> d!696691 (= (++!6935 (ite c!378481 s!9460 (_1!16453 lt!868151)) (ite c!378481 Nil!28100 (_2!16453 lt!868151))) lt!868240)))

(declare-fun b!2380943 () Bool)

(assert (=> b!2380943 (= e!1518623 (or (not (= (ite c!378481 Nil!28100 (_2!16453 lt!868151)) Nil!28100)) (= lt!868240 (ite c!378481 s!9460 (_1!16453 lt!868151)))))))

(declare-fun b!2380942 () Bool)

(declare-fun res!1011155 () Bool)

(assert (=> b!2380942 (=> (not res!1011155) (not e!1518623))))

(declare-fun size!22167 (List!28198) Int)

(assert (=> b!2380942 (= res!1011155 (= (size!22167 lt!868240) (+ (size!22167 (ite c!378481 s!9460 (_1!16453 lt!868151))) (size!22167 (ite c!378481 Nil!28100 (_2!16453 lt!868151))))))))

(declare-fun b!2380941 () Bool)

(assert (=> b!2380941 (= e!1518622 (Cons!28100 (h!33501 (ite c!378481 s!9460 (_1!16453 lt!868151))) (++!6935 (t!208175 (ite c!378481 s!9460 (_1!16453 lt!868151))) (ite c!378481 Nil!28100 (_2!16453 lt!868151)))))))

(declare-fun b!2380940 () Bool)

(assert (=> b!2380940 (= e!1518622 (ite c!378481 Nil!28100 (_2!16453 lt!868151)))))

(assert (= (and d!696691 c!378506) b!2380940))

(assert (= (and d!696691 (not c!378506)) b!2380941))

(assert (= (and d!696691 res!1011154) b!2380942))

(assert (= (and b!2380942 res!1011155) b!2380943))

(declare-fun m!2784733 () Bool)

(assert (=> d!696691 m!2784733))

(declare-fun m!2784735 () Bool)

(assert (=> d!696691 m!2784735))

(declare-fun m!2784737 () Bool)

(assert (=> d!696691 m!2784737))

(declare-fun m!2784739 () Bool)

(assert (=> b!2380942 m!2784739))

(declare-fun m!2784741 () Bool)

(assert (=> b!2380942 m!2784741))

(declare-fun m!2784743 () Bool)

(assert (=> b!2380942 m!2784743))

(declare-fun m!2784745 () Bool)

(assert (=> b!2380941 m!2784745))

(assert (=> bm!144624 d!696691))

(declare-fun b!2380944 () Bool)

(declare-fun e!1518627 () Bool)

(declare-fun lt!868243 () Option!5523)

(assert (=> b!2380944 (= e!1518627 (= (++!6935 (_1!16453 (get!8569 lt!868243)) (_2!16453 (get!8569 lt!868243))) s!9460))))

(declare-fun b!2380945 () Bool)

(declare-fun res!1011159 () Bool)

(assert (=> b!2380945 (=> (not res!1011159) (not e!1518627))))

(assert (=> b!2380945 (= res!1011159 (matchR!3097 lt!868150 (_2!16453 (get!8569 lt!868243))))))

(declare-fun b!2380946 () Bool)

(declare-fun e!1518624 () Option!5523)

(assert (=> b!2380946 (= e!1518624 (Some!5522 (tuple2!27825 Nil!28100 s!9460)))))

(declare-fun d!696695 () Bool)

(declare-fun e!1518628 () Bool)

(assert (=> d!696695 e!1518628))

(declare-fun res!1011156 () Bool)

(assert (=> d!696695 (=> res!1011156 e!1518628)))

(assert (=> d!696695 (= res!1011156 e!1518627)))

(declare-fun res!1011157 () Bool)

(assert (=> d!696695 (=> (not res!1011157) (not e!1518627))))

(assert (=> d!696695 (= res!1011157 (isDefined!4351 lt!868243))))

(assert (=> d!696695 (= lt!868243 e!1518624)))

(declare-fun c!378508 () Bool)

(declare-fun e!1518625 () Bool)

(assert (=> d!696695 (= c!378508 e!1518625)))

(declare-fun res!1011160 () Bool)

(assert (=> d!696695 (=> (not res!1011160) (not e!1518625))))

(assert (=> d!696695 (= res!1011160 (matchR!3097 lt!868154 Nil!28100))))

(assert (=> d!696695 (validRegex!2705 lt!868154)))

(assert (=> d!696695 (= (findConcatSeparation!631 lt!868154 lt!868150 Nil!28100 s!9460 s!9460) lt!868243)))

(declare-fun b!2380947 () Bool)

(assert (=> b!2380947 (= e!1518625 (matchR!3097 lt!868150 s!9460))))

(declare-fun b!2380948 () Bool)

(declare-fun lt!868241 () Unit!41015)

(declare-fun lt!868242 () Unit!41015)

(assert (=> b!2380948 (= lt!868241 lt!868242)))

(assert (=> b!2380948 (= (++!6935 (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460)) s!9460)))

(assert (=> b!2380948 (= lt!868242 (lemmaMoveElementToOtherListKeepsConcatEq!577 Nil!28100 (h!33501 s!9460) (t!208175 s!9460) s!9460))))

(declare-fun e!1518626 () Option!5523)

(assert (=> b!2380948 (= e!1518626 (findConcatSeparation!631 lt!868154 lt!868150 (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460) s!9460))))

(declare-fun b!2380949 () Bool)

(declare-fun res!1011158 () Bool)

(assert (=> b!2380949 (=> (not res!1011158) (not e!1518627))))

(assert (=> b!2380949 (= res!1011158 (matchR!3097 lt!868154 (_1!16453 (get!8569 lt!868243))))))

(declare-fun b!2380950 () Bool)

(assert (=> b!2380950 (= e!1518628 (not (isDefined!4351 lt!868243)))))

(declare-fun b!2380951 () Bool)

(assert (=> b!2380951 (= e!1518624 e!1518626)))

(declare-fun c!378507 () Bool)

(assert (=> b!2380951 (= c!378507 (is-Nil!28100 s!9460))))

(declare-fun b!2380952 () Bool)

(assert (=> b!2380952 (= e!1518626 None!5522)))

(assert (= (and d!696695 res!1011160) b!2380947))

(assert (= (and d!696695 c!378508) b!2380946))

(assert (= (and d!696695 (not c!378508)) b!2380951))

(assert (= (and b!2380951 c!378507) b!2380952))

(assert (= (and b!2380951 (not c!378507)) b!2380948))

(assert (= (and d!696695 res!1011157) b!2380949))

(assert (= (and b!2380949 res!1011158) b!2380945))

(assert (= (and b!2380945 res!1011159) b!2380944))

(assert (= (and d!696695 (not res!1011156)) b!2380950))

(declare-fun m!2784749 () Bool)

(assert (=> b!2380945 m!2784749))

(declare-fun m!2784753 () Bool)

(assert (=> b!2380945 m!2784753))

(assert (=> b!2380948 m!2784687))

(assert (=> b!2380948 m!2784687))

(assert (=> b!2380948 m!2784689))

(assert (=> b!2380948 m!2784691))

(assert (=> b!2380948 m!2784687))

(declare-fun m!2784759 () Bool)

(assert (=> b!2380948 m!2784759))

(declare-fun m!2784761 () Bool)

(assert (=> b!2380950 m!2784761))

(assert (=> b!2380949 m!2784749))

(declare-fun m!2784763 () Bool)

(assert (=> b!2380949 m!2784763))

(assert (=> b!2380944 m!2784749))

(declare-fun m!2784765 () Bool)

(assert (=> b!2380944 m!2784765))

(assert (=> d!696695 m!2784761))

(declare-fun m!2784767 () Bool)

(assert (=> d!696695 m!2784767))

(declare-fun m!2784769 () Bool)

(assert (=> d!696695 m!2784769))

(declare-fun m!2784771 () Bool)

(assert (=> b!2380947 m!2784771))

(assert (=> bm!144627 d!696695))

(declare-fun bs!461872 () Bool)

(declare-fun b!2381013 () Bool)

(assert (= bs!461872 (and b!2381013 d!696675)))

(declare-fun lambda!88701 () Int)

(assert (=> bs!461872 (not (= lambda!88701 lambda!88690))))

(declare-fun bs!461873 () Bool)

(assert (= bs!461873 (and b!2381013 d!696679)))

(assert (=> bs!461873 (not (= lambda!88701 lambda!88696))))

(declare-fun bs!461874 () Bool)

(assert (= bs!461874 (and b!2381013 b!2380759)))

(assert (=> bs!461874 (not (= lambda!88701 lambda!88675))))

(assert (=> bs!461874 (not (= lambda!88701 lambda!88676))))

(assert (=> bs!461873 (not (= lambda!88701 lambda!88695))))

(assert (=> b!2381013 true))

(assert (=> b!2381013 true))

(declare-fun bs!461875 () Bool)

(declare-fun b!2381010 () Bool)

(assert (= bs!461875 (and b!2381010 b!2381013)))

(declare-fun lambda!88702 () Int)

(assert (=> bs!461875 (not (= lambda!88702 lambda!88701))))

(declare-fun bs!461876 () Bool)

(assert (= bs!461876 (and b!2381010 d!696675)))

(assert (=> bs!461876 (not (= lambda!88702 lambda!88690))))

(declare-fun bs!461877 () Bool)

(assert (= bs!461877 (and b!2381010 d!696679)))

(assert (=> bs!461877 (= lambda!88702 lambda!88696)))

(declare-fun bs!461878 () Bool)

(assert (= bs!461878 (and b!2381010 b!2380759)))

(assert (=> bs!461878 (not (= lambda!88702 lambda!88675))))

(assert (=> bs!461878 (= lambda!88702 lambda!88676)))

(assert (=> bs!461877 (not (= lambda!88702 lambda!88695))))

(assert (=> b!2381010 true))

(assert (=> b!2381010 true))

(declare-fun b!2381003 () Bool)

(declare-fun e!1518667 () Bool)

(assert (=> b!2381003 (= e!1518667 (matchRSpec!829 (regTwo!14473 r!13927) s!9460))))

(declare-fun b!2381004 () Bool)

(declare-fun c!378521 () Bool)

(assert (=> b!2381004 (= c!378521 (is-ElementMatch!6980 r!13927))))

(declare-fun e!1518661 () Bool)

(declare-fun e!1518663 () Bool)

(assert (=> b!2381004 (= e!1518661 e!1518663)))

(declare-fun d!696697 () Bool)

(declare-fun c!378524 () Bool)

(assert (=> d!696697 (= c!378524 (is-EmptyExpr!6980 r!13927))))

(declare-fun e!1518662 () Bool)

(assert (=> d!696697 (= (matchRSpec!829 r!13927 s!9460) e!1518662)))

(declare-fun bm!144656 () Bool)

(declare-fun call!144661 () Bool)

(declare-fun isEmpty!16053 (List!28198) Bool)

(assert (=> bm!144656 (= call!144661 (isEmpty!16053 s!9460))))

(declare-fun call!144662 () Bool)

(declare-fun c!378523 () Bool)

(declare-fun bm!144657 () Bool)

(assert (=> bm!144657 (= call!144662 (Exists!1042 (ite c!378523 lambda!88701 lambda!88702)))))

(declare-fun b!2381005 () Bool)

(assert (=> b!2381005 (= e!1518662 call!144661)))

(declare-fun b!2381006 () Bool)

(assert (=> b!2381006 (= e!1518662 e!1518661)))

(declare-fun res!1011188 () Bool)

(assert (=> b!2381006 (= res!1011188 (not (is-EmptyLang!6980 r!13927)))))

(assert (=> b!2381006 (=> (not res!1011188) (not e!1518661))))

(declare-fun b!2381007 () Bool)

(declare-fun c!378522 () Bool)

(assert (=> b!2381007 (= c!378522 (is-Union!6980 r!13927))))

(declare-fun e!1518666 () Bool)

(assert (=> b!2381007 (= e!1518663 e!1518666)))

(declare-fun b!2381008 () Bool)

(assert (=> b!2381008 (= e!1518666 e!1518667)))

(declare-fun res!1011189 () Bool)

(assert (=> b!2381008 (= res!1011189 (matchRSpec!829 (regOne!14473 r!13927) s!9460))))

(assert (=> b!2381008 (=> res!1011189 e!1518667)))

(declare-fun b!2381009 () Bool)

(declare-fun e!1518665 () Bool)

(assert (=> b!2381009 (= e!1518666 e!1518665)))

(assert (=> b!2381009 (= c!378523 (is-Star!6980 r!13927))))

(assert (=> b!2381010 (= e!1518665 call!144662)))

(declare-fun b!2381011 () Bool)

(assert (=> b!2381011 (= e!1518663 (= s!9460 (Cons!28100 (c!378482 r!13927) Nil!28100)))))

(declare-fun b!2381012 () Bool)

(declare-fun res!1011187 () Bool)

(declare-fun e!1518664 () Bool)

(assert (=> b!2381012 (=> res!1011187 e!1518664)))

(assert (=> b!2381012 (= res!1011187 call!144661)))

(assert (=> b!2381012 (= e!1518665 e!1518664)))

(assert (=> b!2381013 (= e!1518664 call!144662)))

(assert (= (and d!696697 c!378524) b!2381005))

(assert (= (and d!696697 (not c!378524)) b!2381006))

(assert (= (and b!2381006 res!1011188) b!2381004))

(assert (= (and b!2381004 c!378521) b!2381011))

(assert (= (and b!2381004 (not c!378521)) b!2381007))

(assert (= (and b!2381007 c!378522) b!2381008))

(assert (= (and b!2381007 (not c!378522)) b!2381009))

(assert (= (and b!2381008 (not res!1011189)) b!2381003))

(assert (= (and b!2381009 c!378523) b!2381012))

(assert (= (and b!2381009 (not c!378523)) b!2381010))

(assert (= (and b!2381012 (not res!1011187)) b!2381013))

(assert (= (or b!2381013 b!2381010) bm!144657))

(assert (= (or b!2381005 b!2381012) bm!144656))

(declare-fun m!2784785 () Bool)

(assert (=> b!2381003 m!2784785))

(declare-fun m!2784787 () Bool)

(assert (=> bm!144656 m!2784787))

(declare-fun m!2784789 () Bool)

(assert (=> bm!144657 m!2784789))

(declare-fun m!2784791 () Bool)

(assert (=> b!2381008 m!2784791))

(assert (=> b!2380768 d!696697))

(declare-fun b!2381051 () Bool)

(declare-fun e!1518693 () Bool)

(declare-fun e!1518689 () Bool)

(assert (=> b!2381051 (= e!1518693 e!1518689)))

(declare-fun res!1011214 () Bool)

(assert (=> b!2381051 (=> (not res!1011214) (not e!1518689))))

(declare-fun lt!868246 () Bool)

(assert (=> b!2381051 (= res!1011214 (not lt!868246))))

(declare-fun b!2381052 () Bool)

(declare-fun e!1518692 () Bool)

(declare-fun head!5195 (List!28198) C!14118)

(assert (=> b!2381052 (= e!1518692 (= (head!5195 s!9460) (c!378482 r!13927)))))

(declare-fun b!2381053 () Bool)

(declare-fun e!1518690 () Bool)

(declare-fun e!1518691 () Bool)

(assert (=> b!2381053 (= e!1518690 e!1518691)))

(declare-fun c!378533 () Bool)

(assert (=> b!2381053 (= c!378533 (is-EmptyLang!6980 r!13927))))

(declare-fun b!2381054 () Bool)

(declare-fun e!1518694 () Bool)

(declare-fun nullable!2030 (Regex!6980) Bool)

(assert (=> b!2381054 (= e!1518694 (nullable!2030 r!13927))))

(declare-fun b!2381055 () Bool)

(assert (=> b!2381055 (= e!1518691 (not lt!868246))))

(declare-fun b!2381056 () Bool)

(declare-fun call!144668 () Bool)

(assert (=> b!2381056 (= e!1518690 (= lt!868246 call!144668))))

(declare-fun b!2381058 () Bool)

(declare-fun derivativeStep!1688 (Regex!6980 C!14118) Regex!6980)

(declare-fun tail!3465 (List!28198) List!28198)

(assert (=> b!2381058 (= e!1518694 (matchR!3097 (derivativeStep!1688 r!13927 (head!5195 s!9460)) (tail!3465 s!9460)))))

(declare-fun bm!144663 () Bool)

(assert (=> bm!144663 (= call!144668 (isEmpty!16053 s!9460))))

(declare-fun b!2381059 () Bool)

(declare-fun e!1518695 () Bool)

(assert (=> b!2381059 (= e!1518695 (not (= (head!5195 s!9460) (c!378482 r!13927))))))

(declare-fun b!2381060 () Bool)

(declare-fun res!1011213 () Bool)

(assert (=> b!2381060 (=> (not res!1011213) (not e!1518692))))

(assert (=> b!2381060 (= res!1011213 (not call!144668))))

(declare-fun b!2381061 () Bool)

(declare-fun res!1011218 () Bool)

(assert (=> b!2381061 (=> res!1011218 e!1518693)))

(assert (=> b!2381061 (= res!1011218 e!1518692)))

(declare-fun res!1011216 () Bool)

(assert (=> b!2381061 (=> (not res!1011216) (not e!1518692))))

(assert (=> b!2381061 (= res!1011216 lt!868246)))

(declare-fun b!2381062 () Bool)

(declare-fun res!1011212 () Bool)

(assert (=> b!2381062 (=> (not res!1011212) (not e!1518692))))

(assert (=> b!2381062 (= res!1011212 (isEmpty!16053 (tail!3465 s!9460)))))

(declare-fun d!696703 () Bool)

(assert (=> d!696703 e!1518690))

(declare-fun c!378535 () Bool)

(assert (=> d!696703 (= c!378535 (is-EmptyExpr!6980 r!13927))))

(assert (=> d!696703 (= lt!868246 e!1518694)))

(declare-fun c!378534 () Bool)

(assert (=> d!696703 (= c!378534 (isEmpty!16053 s!9460))))

(assert (=> d!696703 (validRegex!2705 r!13927)))

(assert (=> d!696703 (= (matchR!3097 r!13927 s!9460) lt!868246)))

(declare-fun b!2381057 () Bool)

(declare-fun res!1011217 () Bool)

(assert (=> b!2381057 (=> res!1011217 e!1518693)))

(assert (=> b!2381057 (= res!1011217 (not (is-ElementMatch!6980 r!13927)))))

(assert (=> b!2381057 (= e!1518691 e!1518693)))

(declare-fun b!2381063 () Bool)

(assert (=> b!2381063 (= e!1518689 e!1518695)))

(declare-fun res!1011211 () Bool)

(assert (=> b!2381063 (=> res!1011211 e!1518695)))

(assert (=> b!2381063 (= res!1011211 call!144668)))

(declare-fun b!2381064 () Bool)

(declare-fun res!1011215 () Bool)

(assert (=> b!2381064 (=> res!1011215 e!1518695)))

(assert (=> b!2381064 (= res!1011215 (not (isEmpty!16053 (tail!3465 s!9460))))))

(assert (= (and d!696703 c!378534) b!2381054))

(assert (= (and d!696703 (not c!378534)) b!2381058))

(assert (= (and d!696703 c!378535) b!2381056))

(assert (= (and d!696703 (not c!378535)) b!2381053))

(assert (= (and b!2381053 c!378533) b!2381055))

(assert (= (and b!2381053 (not c!378533)) b!2381057))

(assert (= (and b!2381057 (not res!1011217)) b!2381061))

(assert (= (and b!2381061 res!1011216) b!2381060))

(assert (= (and b!2381060 res!1011213) b!2381062))

(assert (= (and b!2381062 res!1011212) b!2381052))

(assert (= (and b!2381061 (not res!1011218)) b!2381051))

(assert (= (and b!2381051 res!1011214) b!2381063))

(assert (= (and b!2381063 (not res!1011211)) b!2381064))

(assert (= (and b!2381064 (not res!1011215)) b!2381059))

(assert (= (or b!2381056 b!2381060 b!2381063) bm!144663))

(assert (=> bm!144663 m!2784787))

(declare-fun m!2784793 () Bool)

(assert (=> b!2381064 m!2784793))

(assert (=> b!2381064 m!2784793))

(declare-fun m!2784795 () Bool)

(assert (=> b!2381064 m!2784795))

(declare-fun m!2784797 () Bool)

(assert (=> b!2381052 m!2784797))

(assert (=> d!696703 m!2784787))

(assert (=> d!696703 m!2784571))

(assert (=> b!2381062 m!2784793))

(assert (=> b!2381062 m!2784793))

(assert (=> b!2381062 m!2784795))

(assert (=> b!2381058 m!2784797))

(assert (=> b!2381058 m!2784797))

(declare-fun m!2784799 () Bool)

(assert (=> b!2381058 m!2784799))

(assert (=> b!2381058 m!2784793))

(assert (=> b!2381058 m!2784799))

(assert (=> b!2381058 m!2784793))

(declare-fun m!2784801 () Bool)

(assert (=> b!2381058 m!2784801))

(assert (=> b!2381059 m!2784797))

(declare-fun m!2784803 () Bool)

(assert (=> b!2381054 m!2784803))

(assert (=> b!2380768 d!696703))

(declare-fun d!696705 () Bool)

(assert (=> d!696705 (= (matchR!3097 r!13927 s!9460) (matchRSpec!829 r!13927 s!9460))))

(declare-fun lt!868251 () Unit!41015)

(declare-fun choose!13923 (Regex!6980 List!28198) Unit!41015)

(assert (=> d!696705 (= lt!868251 (choose!13923 r!13927 s!9460))))

(assert (=> d!696705 (validRegex!2705 r!13927)))

(assert (=> d!696705 (= (mainMatchTheorem!829 r!13927 s!9460) lt!868251)))

(declare-fun bs!461879 () Bool)

(assert (= bs!461879 d!696705))

(assert (=> bs!461879 m!2784565))

(assert (=> bs!461879 m!2784563))

(declare-fun m!2784805 () Bool)

(assert (=> bs!461879 m!2784805))

(assert (=> bs!461879 m!2784571))

(assert (=> b!2380768 d!696705))

(declare-fun b!2381093 () Bool)

(declare-fun e!1518714 () Bool)

(declare-fun e!1518710 () Bool)

(assert (=> b!2381093 (= e!1518714 e!1518710)))

(declare-fun res!1011238 () Bool)

(assert (=> b!2381093 (=> (not res!1011238) (not e!1518710))))

(declare-fun lt!868252 () Bool)

(assert (=> b!2381093 (= res!1011238 (not lt!868252))))

(declare-fun e!1518713 () Bool)

(declare-fun b!2381094 () Bool)

(assert (=> b!2381094 (= e!1518713 (= (head!5195 (ite c!378481 s!9460 call!144631)) (c!378482 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)))))))

(declare-fun b!2381095 () Bool)

(declare-fun e!1518711 () Bool)

(declare-fun e!1518712 () Bool)

(assert (=> b!2381095 (= e!1518711 e!1518712)))

(declare-fun c!378542 () Bool)

(assert (=> b!2381095 (= c!378542 (is-EmptyLang!6980 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980))))))

(declare-fun e!1518715 () Bool)

(declare-fun b!2381096 () Bool)

(assert (=> b!2381096 (= e!1518715 (nullable!2030 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980))))))

(declare-fun b!2381097 () Bool)

(assert (=> b!2381097 (= e!1518712 (not lt!868252))))

(declare-fun b!2381098 () Bool)

(declare-fun call!144671 () Bool)

(assert (=> b!2381098 (= e!1518711 (= lt!868252 call!144671))))

(declare-fun b!2381100 () Bool)

(assert (=> b!2381100 (= e!1518715 (matchR!3097 (derivativeStep!1688 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)) (head!5195 (ite c!378481 s!9460 call!144631))) (tail!3465 (ite c!378481 s!9460 call!144631))))))

(declare-fun bm!144666 () Bool)

(assert (=> bm!144666 (= call!144671 (isEmpty!16053 (ite c!378481 s!9460 call!144631)))))

(declare-fun b!2381101 () Bool)

(declare-fun e!1518716 () Bool)

(assert (=> b!2381101 (= e!1518716 (not (= (head!5195 (ite c!378481 s!9460 call!144631)) (c!378482 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980))))))))

(declare-fun b!2381102 () Bool)

(declare-fun res!1011237 () Bool)

(assert (=> b!2381102 (=> (not res!1011237) (not e!1518713))))

(assert (=> b!2381102 (= res!1011237 (not call!144671))))

(declare-fun b!2381103 () Bool)

(declare-fun res!1011242 () Bool)

(assert (=> b!2381103 (=> res!1011242 e!1518714)))

(assert (=> b!2381103 (= res!1011242 e!1518713)))

(declare-fun res!1011240 () Bool)

(assert (=> b!2381103 (=> (not res!1011240) (not e!1518713))))

(assert (=> b!2381103 (= res!1011240 lt!868252)))

(declare-fun b!2381104 () Bool)

(declare-fun res!1011236 () Bool)

(assert (=> b!2381104 (=> (not res!1011236) (not e!1518713))))

(assert (=> b!2381104 (= res!1011236 (isEmpty!16053 (tail!3465 (ite c!378481 s!9460 call!144631))))))

(declare-fun d!696707 () Bool)

(assert (=> d!696707 e!1518711))

(declare-fun c!378544 () Bool)

(assert (=> d!696707 (= c!378544 (is-EmptyExpr!6980 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980))))))

(assert (=> d!696707 (= lt!868252 e!1518715)))

(declare-fun c!378543 () Bool)

(assert (=> d!696707 (= c!378543 (isEmpty!16053 (ite c!378481 s!9460 call!144631)))))

(assert (=> d!696707 (validRegex!2705 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)))))

(assert (=> d!696707 (= (matchR!3097 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)) (ite c!378481 s!9460 call!144631)) lt!868252)))

(declare-fun b!2381099 () Bool)

(declare-fun res!1011241 () Bool)

(assert (=> b!2381099 (=> res!1011241 e!1518714)))

(assert (=> b!2381099 (= res!1011241 (not (is-ElementMatch!6980 (ite c!378481 lt!868146 (Concat!11616 lt!868154 EmptyExpr!6980)))))))

(assert (=> b!2381099 (= e!1518712 e!1518714)))

(declare-fun b!2381105 () Bool)

(assert (=> b!2381105 (= e!1518710 e!1518716)))

(declare-fun res!1011235 () Bool)

(assert (=> b!2381105 (=> res!1011235 e!1518716)))

(assert (=> b!2381105 (= res!1011235 call!144671)))

(declare-fun b!2381106 () Bool)

(declare-fun res!1011239 () Bool)

(assert (=> b!2381106 (=> res!1011239 e!1518716)))

(assert (=> b!2381106 (= res!1011239 (not (isEmpty!16053 (tail!3465 (ite c!378481 s!9460 call!144631)))))))

(assert (= (and d!696707 c!378543) b!2381096))

(assert (= (and d!696707 (not c!378543)) b!2381100))

(assert (= (and d!696707 c!378544) b!2381098))

(assert (= (and d!696707 (not c!378544)) b!2381095))

(assert (= (and b!2381095 c!378542) b!2381097))

(assert (= (and b!2381095 (not c!378542)) b!2381099))

(assert (= (and b!2381099 (not res!1011241)) b!2381103))

(assert (= (and b!2381103 res!1011240) b!2381102))

(assert (= (and b!2381102 res!1011237) b!2381104))

(assert (= (and b!2381104 res!1011236) b!2381094))

(assert (= (and b!2381103 (not res!1011242)) b!2381093))

(assert (= (and b!2381093 res!1011238) b!2381105))

(assert (= (and b!2381105 (not res!1011235)) b!2381106))

(assert (= (and b!2381106 (not res!1011239)) b!2381101))

(assert (= (or b!2381098 b!2381102 b!2381105) bm!144666))

(declare-fun m!2784807 () Bool)

(assert (=> bm!144666 m!2784807))

(declare-fun m!2784809 () Bool)

(assert (=> b!2381106 m!2784809))

(assert (=> b!2381106 m!2784809))

(declare-fun m!2784811 () Bool)

(assert (=> b!2381106 m!2784811))

(declare-fun m!2784813 () Bool)

(assert (=> b!2381094 m!2784813))

(assert (=> d!696707 m!2784807))

(declare-fun m!2784815 () Bool)

(assert (=> d!696707 m!2784815))

(assert (=> b!2381104 m!2784809))

(assert (=> b!2381104 m!2784809))

(assert (=> b!2381104 m!2784811))

(assert (=> b!2381100 m!2784813))

(assert (=> b!2381100 m!2784813))

(declare-fun m!2784817 () Bool)

(assert (=> b!2381100 m!2784817))

(assert (=> b!2381100 m!2784809))

(assert (=> b!2381100 m!2784817))

(assert (=> b!2381100 m!2784809))

(declare-fun m!2784819 () Bool)

(assert (=> b!2381100 m!2784819))

(assert (=> b!2381101 m!2784813))

(declare-fun m!2784821 () Bool)

(assert (=> b!2381096 m!2784821))

(assert (=> bm!144622 d!696707))

(declare-fun bs!461880 () Bool)

(declare-fun d!696709 () Bool)

(assert (= bs!461880 (and d!696709 start!233610)))

(declare-fun lambda!88705 () Int)

(assert (=> bs!461880 (= lambda!88705 lambda!88674)))

(declare-fun b!2381141 () Bool)

(declare-fun e!1518738 () Bool)

(declare-fun lt!868256 () Regex!6980)

(assert (=> b!2381141 (= e!1518738 (= lt!868256 (head!5193 l!9164)))))

(declare-fun b!2381142 () Bool)

(declare-fun e!1518741 () Regex!6980)

(assert (=> b!2381142 (= e!1518741 (Concat!11616 (h!33502 l!9164) (generalisedConcat!81 (t!208176 l!9164))))))

(declare-fun b!2381143 () Bool)

(assert (=> b!2381143 (= e!1518741 EmptyExpr!6980)))

(declare-fun b!2381144 () Bool)

(declare-fun isConcat!50 (Regex!6980) Bool)

(assert (=> b!2381144 (= e!1518738 (isConcat!50 lt!868256))))

(declare-fun b!2381146 () Bool)

(declare-fun e!1518737 () Bool)

(declare-fun isEmptyExpr!50 (Regex!6980) Bool)

(assert (=> b!2381146 (= e!1518737 (isEmptyExpr!50 lt!868256))))

(declare-fun b!2381147 () Bool)

(declare-fun e!1518739 () Bool)

(assert (=> b!2381147 (= e!1518739 (isEmpty!16050 (t!208176 l!9164)))))

(declare-fun b!2381148 () Bool)

(assert (=> b!2381148 (= e!1518737 e!1518738)))

(declare-fun c!378556 () Bool)

(assert (=> b!2381148 (= c!378556 (isEmpty!16050 (tail!3463 l!9164)))))

(declare-fun b!2381149 () Bool)

(declare-fun e!1518740 () Bool)

(assert (=> b!2381149 (= e!1518740 e!1518737)))

(declare-fun c!378559 () Bool)

(assert (=> b!2381149 (= c!378559 (isEmpty!16050 l!9164))))

(declare-fun b!2381150 () Bool)

(declare-fun e!1518736 () Regex!6980)

(assert (=> b!2381150 (= e!1518736 e!1518741)))

(declare-fun c!378558 () Bool)

(assert (=> b!2381150 (= c!378558 (is-Cons!28101 l!9164))))

(declare-fun b!2381145 () Bool)

(assert (=> b!2381145 (= e!1518736 (h!33502 l!9164))))

(assert (=> d!696709 e!1518740))

(declare-fun res!1011256 () Bool)

(assert (=> d!696709 (=> (not res!1011256) (not e!1518740))))

(assert (=> d!696709 (= res!1011256 (validRegex!2705 lt!868256))))

(assert (=> d!696709 (= lt!868256 e!1518736)))

(declare-fun c!378557 () Bool)

(assert (=> d!696709 (= c!378557 e!1518739)))

(declare-fun res!1011255 () Bool)

(assert (=> d!696709 (=> (not res!1011255) (not e!1518739))))

(assert (=> d!696709 (= res!1011255 (is-Cons!28101 l!9164))))

(assert (=> d!696709 (forall!5614 l!9164 lambda!88705)))

(assert (=> d!696709 (= (generalisedConcat!81 l!9164) lt!868256)))

(assert (= (and d!696709 res!1011255) b!2381147))

(assert (= (and d!696709 c!378557) b!2381145))

(assert (= (and d!696709 (not c!378557)) b!2381150))

(assert (= (and b!2381150 c!378558) b!2381142))

(assert (= (and b!2381150 (not c!378558)) b!2381143))

(assert (= (and d!696709 res!1011256) b!2381149))

(assert (= (and b!2381149 c!378559) b!2381146))

(assert (= (and b!2381149 (not c!378559)) b!2381148))

(assert (= (and b!2381148 c!378556) b!2381141))

(assert (= (and b!2381148 (not c!378556)) b!2381144))

(declare-fun m!2784825 () Bool)

(assert (=> d!696709 m!2784825))

(declare-fun m!2784827 () Bool)

(assert (=> d!696709 m!2784827))

(declare-fun m!2784831 () Bool)

(assert (=> b!2381146 m!2784831))

(declare-fun m!2784833 () Bool)

(assert (=> b!2381147 m!2784833))

(declare-fun m!2784837 () Bool)

(assert (=> b!2381142 m!2784837))

(assert (=> b!2381148 m!2784595))

(assert (=> b!2381148 m!2784595))

(declare-fun m!2784841 () Bool)

(assert (=> b!2381148 m!2784841))

(assert (=> b!2381141 m!2784575))

(assert (=> b!2381149 m!2784551))

(declare-fun m!2784845 () Bool)

(assert (=> b!2381144 m!2784845))

(assert (=> b!2380771 d!696709))

(declare-fun d!696711 () Bool)

(declare-fun res!1011261 () Bool)

(declare-fun e!1518746 () Bool)

(assert (=> d!696711 (=> res!1011261 e!1518746)))

(assert (=> d!696711 (= res!1011261 (is-Nil!28101 l!9164))))

(assert (=> d!696711 (= (forall!5614 l!9164 lambda!88674) e!1518746)))

(declare-fun b!2381155 () Bool)

(declare-fun e!1518747 () Bool)

(assert (=> b!2381155 (= e!1518746 e!1518747)))

(declare-fun res!1011262 () Bool)

(assert (=> b!2381155 (=> (not res!1011262) (not e!1518747))))

(declare-fun dynLambda!12097 (Int Regex!6980) Bool)

(assert (=> b!2381155 (= res!1011262 (dynLambda!12097 lambda!88674 (h!33502 l!9164)))))

(declare-fun b!2381156 () Bool)

(assert (=> b!2381156 (= e!1518747 (forall!5614 (t!208176 l!9164) lambda!88674))))

(assert (= (and d!696711 (not res!1011261)) b!2381155))

(assert (= (and b!2381155 res!1011262) b!2381156))

(declare-fun b_lambda!74059 () Bool)

(assert (=> (not b_lambda!74059) (not b!2381155)))

(declare-fun m!2784851 () Bool)

(assert (=> b!2381155 m!2784851))

(declare-fun m!2784853 () Bool)

(assert (=> b!2381156 m!2784853))

(assert (=> start!233610 d!696711))

(declare-fun c!378564 () Bool)

(declare-fun bm!144674 () Bool)

(declare-fun c!378565 () Bool)

(declare-fun call!144681 () Bool)

(assert (=> bm!144674 (= call!144681 (validRegex!2705 (ite c!378565 (reg!7309 r!13927) (ite c!378564 (regTwo!14473 r!13927) (regOne!14472 r!13927)))))))

(declare-fun b!2381175 () Bool)

(declare-fun e!1518765 () Bool)

(declare-fun call!144679 () Bool)

(assert (=> b!2381175 (= e!1518765 call!144679)))

(declare-fun b!2381176 () Bool)

(declare-fun e!1518764 () Bool)

(declare-fun e!1518766 () Bool)

(assert (=> b!2381176 (= e!1518764 e!1518766)))

(assert (=> b!2381176 (= c!378565 (is-Star!6980 r!13927))))

(declare-fun b!2381177 () Bool)

(declare-fun e!1518768 () Bool)

(assert (=> b!2381177 (= e!1518768 e!1518765)))

(declare-fun res!1011277 () Bool)

(assert (=> b!2381177 (=> (not res!1011277) (not e!1518765))))

(declare-fun call!144680 () Bool)

(assert (=> b!2381177 (= res!1011277 call!144680)))

(declare-fun b!2381178 () Bool)

(declare-fun e!1518767 () Bool)

(assert (=> b!2381178 (= e!1518767 call!144680)))

(declare-fun bm!144675 () Bool)

(assert (=> bm!144675 (= call!144679 (validRegex!2705 (ite c!378564 (regOne!14473 r!13927) (regTwo!14472 r!13927))))))

(declare-fun d!696717 () Bool)

(declare-fun res!1011274 () Bool)

(assert (=> d!696717 (=> res!1011274 e!1518764)))

(assert (=> d!696717 (= res!1011274 (is-ElementMatch!6980 r!13927))))

(assert (=> d!696717 (= (validRegex!2705 r!13927) e!1518764)))

(declare-fun bm!144676 () Bool)

(assert (=> bm!144676 (= call!144680 call!144681)))

(declare-fun b!2381179 () Bool)

(declare-fun e!1518763 () Bool)

(assert (=> b!2381179 (= e!1518763 call!144681)))

(declare-fun b!2381180 () Bool)

(declare-fun res!1011276 () Bool)

(assert (=> b!2381180 (=> res!1011276 e!1518768)))

(assert (=> b!2381180 (= res!1011276 (not (is-Concat!11616 r!13927)))))

(declare-fun e!1518762 () Bool)

(assert (=> b!2381180 (= e!1518762 e!1518768)))

(declare-fun b!2381181 () Bool)

(declare-fun res!1011275 () Bool)

(assert (=> b!2381181 (=> (not res!1011275) (not e!1518767))))

(assert (=> b!2381181 (= res!1011275 call!144679)))

(assert (=> b!2381181 (= e!1518762 e!1518767)))

(declare-fun b!2381182 () Bool)

(assert (=> b!2381182 (= e!1518766 e!1518763)))

(declare-fun res!1011273 () Bool)

(assert (=> b!2381182 (= res!1011273 (not (nullable!2030 (reg!7309 r!13927))))))

(assert (=> b!2381182 (=> (not res!1011273) (not e!1518763))))

(declare-fun b!2381183 () Bool)

(assert (=> b!2381183 (= e!1518766 e!1518762)))

(assert (=> b!2381183 (= c!378564 (is-Union!6980 r!13927))))

(assert (= (and d!696717 (not res!1011274)) b!2381176))

(assert (= (and b!2381176 c!378565) b!2381182))

(assert (= (and b!2381176 (not c!378565)) b!2381183))

(assert (= (and b!2381182 res!1011273) b!2381179))

(assert (= (and b!2381183 c!378564) b!2381181))

(assert (= (and b!2381183 (not c!378564)) b!2381180))

(assert (= (and b!2381181 res!1011275) b!2381178))

(assert (= (and b!2381180 (not res!1011276)) b!2381177))

(assert (= (and b!2381177 res!1011277) b!2381175))

(assert (= (or b!2381181 b!2381175) bm!144675))

(assert (= (or b!2381178 b!2381177) bm!144676))

(assert (= (or b!2381179 bm!144676) bm!144674))

(declare-fun m!2784855 () Bool)

(assert (=> bm!144674 m!2784855))

(declare-fun m!2784857 () Bool)

(assert (=> bm!144675 m!2784857))

(declare-fun m!2784859 () Bool)

(assert (=> b!2381182 m!2784859))

(assert (=> b!2380770 d!696717))

(declare-fun b!2381184 () Bool)

(declare-fun e!1518773 () Bool)

(declare-fun e!1518769 () Bool)

(assert (=> b!2381184 (= e!1518773 e!1518769)))

(declare-fun res!1011281 () Bool)

(assert (=> b!2381184 (=> (not res!1011281) (not e!1518769))))

(declare-fun lt!868257 () Bool)

(assert (=> b!2381184 (= res!1011281 (not lt!868257))))

(declare-fun b!2381185 () Bool)

(declare-fun e!1518772 () Bool)

(assert (=> b!2381185 (= e!1518772 (= (head!5195 s!9460) (c!378482 lt!868154)))))

(declare-fun b!2381186 () Bool)

(declare-fun e!1518770 () Bool)

(declare-fun e!1518771 () Bool)

(assert (=> b!2381186 (= e!1518770 e!1518771)))

(declare-fun c!378566 () Bool)

(assert (=> b!2381186 (= c!378566 (is-EmptyLang!6980 lt!868154))))

(declare-fun b!2381187 () Bool)

(declare-fun e!1518774 () Bool)

(assert (=> b!2381187 (= e!1518774 (nullable!2030 lt!868154))))

(declare-fun b!2381188 () Bool)

(assert (=> b!2381188 (= e!1518771 (not lt!868257))))

(declare-fun b!2381189 () Bool)

(declare-fun call!144682 () Bool)

(assert (=> b!2381189 (= e!1518770 (= lt!868257 call!144682))))

(declare-fun b!2381191 () Bool)

(assert (=> b!2381191 (= e!1518774 (matchR!3097 (derivativeStep!1688 lt!868154 (head!5195 s!9460)) (tail!3465 s!9460)))))

(declare-fun bm!144677 () Bool)

(assert (=> bm!144677 (= call!144682 (isEmpty!16053 s!9460))))

(declare-fun b!2381192 () Bool)

(declare-fun e!1518775 () Bool)

(assert (=> b!2381192 (= e!1518775 (not (= (head!5195 s!9460) (c!378482 lt!868154))))))

(declare-fun b!2381193 () Bool)

(declare-fun res!1011280 () Bool)

(assert (=> b!2381193 (=> (not res!1011280) (not e!1518772))))

(assert (=> b!2381193 (= res!1011280 (not call!144682))))

(declare-fun b!2381194 () Bool)

(declare-fun res!1011285 () Bool)

(assert (=> b!2381194 (=> res!1011285 e!1518773)))

(assert (=> b!2381194 (= res!1011285 e!1518772)))

(declare-fun res!1011283 () Bool)

(assert (=> b!2381194 (=> (not res!1011283) (not e!1518772))))

(assert (=> b!2381194 (= res!1011283 lt!868257)))

(declare-fun b!2381195 () Bool)

(declare-fun res!1011279 () Bool)

(assert (=> b!2381195 (=> (not res!1011279) (not e!1518772))))

(assert (=> b!2381195 (= res!1011279 (isEmpty!16053 (tail!3465 s!9460)))))

(declare-fun d!696719 () Bool)

(assert (=> d!696719 e!1518770))

(declare-fun c!378568 () Bool)

(assert (=> d!696719 (= c!378568 (is-EmptyExpr!6980 lt!868154))))

(assert (=> d!696719 (= lt!868257 e!1518774)))

(declare-fun c!378567 () Bool)

(assert (=> d!696719 (= c!378567 (isEmpty!16053 s!9460))))

(assert (=> d!696719 (validRegex!2705 lt!868154)))

(assert (=> d!696719 (= (matchR!3097 lt!868154 s!9460) lt!868257)))

(declare-fun b!2381190 () Bool)

(declare-fun res!1011284 () Bool)

(assert (=> b!2381190 (=> res!1011284 e!1518773)))

(assert (=> b!2381190 (= res!1011284 (not (is-ElementMatch!6980 lt!868154)))))

(assert (=> b!2381190 (= e!1518771 e!1518773)))

(declare-fun b!2381196 () Bool)

(assert (=> b!2381196 (= e!1518769 e!1518775)))

(declare-fun res!1011278 () Bool)

(assert (=> b!2381196 (=> res!1011278 e!1518775)))

(assert (=> b!2381196 (= res!1011278 call!144682)))

(declare-fun b!2381197 () Bool)

(declare-fun res!1011282 () Bool)

(assert (=> b!2381197 (=> res!1011282 e!1518775)))

(assert (=> b!2381197 (= res!1011282 (not (isEmpty!16053 (tail!3465 s!9460))))))

(assert (= (and d!696719 c!378567) b!2381187))

(assert (= (and d!696719 (not c!378567)) b!2381191))

(assert (= (and d!696719 c!378568) b!2381189))

(assert (= (and d!696719 (not c!378568)) b!2381186))

(assert (= (and b!2381186 c!378566) b!2381188))

(assert (= (and b!2381186 (not c!378566)) b!2381190))

(assert (= (and b!2381190 (not res!1011284)) b!2381194))

(assert (= (and b!2381194 res!1011283) b!2381193))

(assert (= (and b!2381193 res!1011280) b!2381195))

(assert (= (and b!2381195 res!1011279) b!2381185))

(assert (= (and b!2381194 (not res!1011285)) b!2381184))

(assert (= (and b!2381184 res!1011281) b!2381196))

(assert (= (and b!2381196 (not res!1011278)) b!2381197))

(assert (= (and b!2381197 (not res!1011282)) b!2381192))

(assert (= (or b!2381189 b!2381193 b!2381196) bm!144677))

(assert (=> bm!144677 m!2784787))

(assert (=> b!2381197 m!2784793))

(assert (=> b!2381197 m!2784793))

(assert (=> b!2381197 m!2784795))

(assert (=> b!2381185 m!2784797))

(assert (=> d!696719 m!2784787))

(assert (=> d!696719 m!2784769))

(assert (=> b!2381195 m!2784793))

(assert (=> b!2381195 m!2784793))

(assert (=> b!2381195 m!2784795))

(assert (=> b!2381191 m!2784797))

(assert (=> b!2381191 m!2784797))

(declare-fun m!2784861 () Bool)

(assert (=> b!2381191 m!2784861))

(assert (=> b!2381191 m!2784793))

(assert (=> b!2381191 m!2784861))

(assert (=> b!2381191 m!2784793))

(declare-fun m!2784863 () Bool)

(assert (=> b!2381191 m!2784863))

(assert (=> b!2381192 m!2784797))

(declare-fun m!2784865 () Bool)

(assert (=> b!2381187 m!2784865))

(assert (=> b!2380770 d!696719))

(declare-fun d!696721 () Bool)

(assert (=> d!696721 (= (head!5193 l!9164) (h!33502 l!9164))))

(assert (=> b!2380770 d!696721))

(declare-fun b!2381198 () Bool)

(declare-fun e!1518779 () Bool)

(declare-fun lt!868260 () Option!5523)

(assert (=> b!2381198 (= e!1518779 (= (++!6935 (_1!16453 (get!8569 lt!868260)) (_2!16453 (get!8569 lt!868260))) s!9460))))

(declare-fun b!2381199 () Bool)

(declare-fun res!1011289 () Bool)

(assert (=> b!2381199 (=> (not res!1011289) (not e!1518779))))

(assert (=> b!2381199 (= res!1011289 (matchR!3097 EmptyExpr!6980 (_2!16453 (get!8569 lt!868260))))))

(declare-fun b!2381200 () Bool)

(declare-fun e!1518776 () Option!5523)

(assert (=> b!2381200 (= e!1518776 (Some!5522 (tuple2!27825 Nil!28100 s!9460)))))

(declare-fun d!696723 () Bool)

(declare-fun e!1518780 () Bool)

(assert (=> d!696723 e!1518780))

(declare-fun res!1011286 () Bool)

(assert (=> d!696723 (=> res!1011286 e!1518780)))

(assert (=> d!696723 (= res!1011286 e!1518779)))

(declare-fun res!1011287 () Bool)

(assert (=> d!696723 (=> (not res!1011287) (not e!1518779))))

(assert (=> d!696723 (= res!1011287 (isDefined!4351 lt!868260))))

(assert (=> d!696723 (= lt!868260 e!1518776)))

(declare-fun c!378570 () Bool)

(declare-fun e!1518777 () Bool)

(assert (=> d!696723 (= c!378570 e!1518777)))

(declare-fun res!1011290 () Bool)

(assert (=> d!696723 (=> (not res!1011290) (not e!1518777))))

(assert (=> d!696723 (= res!1011290 (matchR!3097 lt!868154 Nil!28100))))

(assert (=> d!696723 (validRegex!2705 lt!868154)))

(assert (=> d!696723 (= (findConcatSeparation!631 lt!868154 EmptyExpr!6980 Nil!28100 s!9460 s!9460) lt!868260)))

(declare-fun b!2381201 () Bool)

(assert (=> b!2381201 (= e!1518777 (matchR!3097 EmptyExpr!6980 s!9460))))

(declare-fun b!2381202 () Bool)

(declare-fun lt!868258 () Unit!41015)

(declare-fun lt!868259 () Unit!41015)

(assert (=> b!2381202 (= lt!868258 lt!868259)))

(assert (=> b!2381202 (= (++!6935 (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460)) s!9460)))

(assert (=> b!2381202 (= lt!868259 (lemmaMoveElementToOtherListKeepsConcatEq!577 Nil!28100 (h!33501 s!9460) (t!208175 s!9460) s!9460))))

(declare-fun e!1518778 () Option!5523)

(assert (=> b!2381202 (= e!1518778 (findConcatSeparation!631 lt!868154 EmptyExpr!6980 (++!6935 Nil!28100 (Cons!28100 (h!33501 s!9460) Nil!28100)) (t!208175 s!9460) s!9460))))

(declare-fun b!2381203 () Bool)

(declare-fun res!1011288 () Bool)

(assert (=> b!2381203 (=> (not res!1011288) (not e!1518779))))

(assert (=> b!2381203 (= res!1011288 (matchR!3097 lt!868154 (_1!16453 (get!8569 lt!868260))))))

(declare-fun b!2381204 () Bool)

(assert (=> b!2381204 (= e!1518780 (not (isDefined!4351 lt!868260)))))

(declare-fun b!2381205 () Bool)

(assert (=> b!2381205 (= e!1518776 e!1518778)))

(declare-fun c!378569 () Bool)

(assert (=> b!2381205 (= c!378569 (is-Nil!28100 s!9460))))

(declare-fun b!2381206 () Bool)

(assert (=> b!2381206 (= e!1518778 None!5522)))

(assert (= (and d!696723 res!1011290) b!2381201))

(assert (= (and d!696723 c!378570) b!2381200))

(assert (= (and d!696723 (not c!378570)) b!2381205))

(assert (= (and b!2381205 c!378569) b!2381206))

(assert (= (and b!2381205 (not c!378569)) b!2381202))

(assert (= (and d!696723 res!1011287) b!2381203))

(assert (= (and b!2381203 res!1011288) b!2381199))

(assert (= (and b!2381199 res!1011289) b!2381198))

(assert (= (and d!696723 (not res!1011286)) b!2381204))

(declare-fun m!2784867 () Bool)

(assert (=> b!2381199 m!2784867))

(declare-fun m!2784869 () Bool)

(assert (=> b!2381199 m!2784869))

(assert (=> b!2381202 m!2784687))

(assert (=> b!2381202 m!2784687))

(assert (=> b!2381202 m!2784689))

(assert (=> b!2381202 m!2784691))

(assert (=> b!2381202 m!2784687))

(declare-fun m!2784871 () Bool)

(assert (=> b!2381202 m!2784871))

(declare-fun m!2784873 () Bool)

(assert (=> b!2381204 m!2784873))

(assert (=> b!2381203 m!2784867))

(declare-fun m!2784875 () Bool)

(assert (=> b!2381203 m!2784875))

(assert (=> b!2381198 m!2784867))

(declare-fun m!2784877 () Bool)

(assert (=> b!2381198 m!2784877))

(assert (=> d!696723 m!2784873))

(assert (=> d!696723 m!2784767))

(assert (=> d!696723 m!2784769))

(declare-fun m!2784879 () Bool)

(assert (=> b!2381201 m!2784879))

(assert (=> bm!144625 d!696723))

(declare-fun d!696725 () Bool)

(assert (=> d!696725 (matchR!3097 (Concat!11616 lt!868154 EmptyExpr!6980) (++!6935 s!9460 Nil!28100))))

(declare-fun lt!868265 () Unit!41015)

(declare-fun choose!13924 (Regex!6980 Regex!6980 List!28198 List!28198) Unit!41015)

(assert (=> d!696725 (= lt!868265 (choose!13924 lt!868154 EmptyExpr!6980 s!9460 Nil!28100))))

(declare-fun e!1518795 () Bool)

(assert (=> d!696725 e!1518795))

(declare-fun res!1011297 () Bool)

(assert (=> d!696725 (=> (not res!1011297) (not e!1518795))))

(assert (=> d!696725 (= res!1011297 (validRegex!2705 lt!868154))))

(assert (=> d!696725 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!29 lt!868154 EmptyExpr!6980 s!9460 Nil!28100) lt!868265)))

(declare-fun b!2381229 () Bool)

(assert (=> b!2381229 (= e!1518795 (validRegex!2705 EmptyExpr!6980))))

(assert (= (and d!696725 res!1011297) b!2381229))

(declare-fun m!2784881 () Bool)

(assert (=> d!696725 m!2784881))

(assert (=> d!696725 m!2784881))

(declare-fun m!2784883 () Bool)

(assert (=> d!696725 m!2784883))

(declare-fun m!2784885 () Bool)

(assert (=> d!696725 m!2784885))

(assert (=> d!696725 m!2784769))

(declare-fun m!2784887 () Bool)

(assert (=> b!2381229 m!2784887))

(assert (=> b!2380755 d!696725))

(declare-fun b!2381230 () Bool)

(declare-fun e!1518800 () Bool)

(declare-fun e!1518796 () Bool)

(assert (=> b!2381230 (= e!1518800 e!1518796)))

(declare-fun res!1011301 () Bool)

(assert (=> b!2381230 (=> (not res!1011301) (not e!1518796))))

(declare-fun lt!868266 () Bool)

(assert (=> b!2381230 (= res!1011301 (not lt!868266))))

(declare-fun b!2381231 () Bool)

(declare-fun e!1518799 () Bool)

(assert (=> b!2381231 (= e!1518799 (= (head!5195 call!144631) (c!378482 lt!868146)))))

(declare-fun b!2381232 () Bool)

(declare-fun e!1518797 () Bool)

(declare-fun e!1518798 () Bool)

(assert (=> b!2381232 (= e!1518797 e!1518798)))

(declare-fun c!378579 () Bool)

(assert (=> b!2381232 (= c!378579 (is-EmptyLang!6980 lt!868146))))

(declare-fun b!2381233 () Bool)

(declare-fun e!1518801 () Bool)

(assert (=> b!2381233 (= e!1518801 (nullable!2030 lt!868146))))

(declare-fun b!2381234 () Bool)

(assert (=> b!2381234 (= e!1518798 (not lt!868266))))

(declare-fun b!2381235 () Bool)

(declare-fun call!144683 () Bool)

(assert (=> b!2381235 (= e!1518797 (= lt!868266 call!144683))))

(declare-fun b!2381237 () Bool)

(assert (=> b!2381237 (= e!1518801 (matchR!3097 (derivativeStep!1688 lt!868146 (head!5195 call!144631)) (tail!3465 call!144631)))))

(declare-fun bm!144678 () Bool)

(assert (=> bm!144678 (= call!144683 (isEmpty!16053 call!144631))))

(declare-fun b!2381238 () Bool)

(declare-fun e!1518802 () Bool)

(assert (=> b!2381238 (= e!1518802 (not (= (head!5195 call!144631) (c!378482 lt!868146))))))

(declare-fun b!2381239 () Bool)

(declare-fun res!1011300 () Bool)

(assert (=> b!2381239 (=> (not res!1011300) (not e!1518799))))

(assert (=> b!2381239 (= res!1011300 (not call!144683))))

(declare-fun b!2381240 () Bool)

(declare-fun res!1011305 () Bool)

(assert (=> b!2381240 (=> res!1011305 e!1518800)))

(assert (=> b!2381240 (= res!1011305 e!1518799)))

(declare-fun res!1011303 () Bool)

(assert (=> b!2381240 (=> (not res!1011303) (not e!1518799))))

(assert (=> b!2381240 (= res!1011303 lt!868266)))

(declare-fun b!2381241 () Bool)

(declare-fun res!1011299 () Bool)

(assert (=> b!2381241 (=> (not res!1011299) (not e!1518799))))

(assert (=> b!2381241 (= res!1011299 (isEmpty!16053 (tail!3465 call!144631)))))

(declare-fun d!696727 () Bool)

(assert (=> d!696727 e!1518797))

(declare-fun c!378581 () Bool)

(assert (=> d!696727 (= c!378581 (is-EmptyExpr!6980 lt!868146))))

(assert (=> d!696727 (= lt!868266 e!1518801)))

(declare-fun c!378580 () Bool)

(assert (=> d!696727 (= c!378580 (isEmpty!16053 call!144631))))

(assert (=> d!696727 (validRegex!2705 lt!868146)))

(assert (=> d!696727 (= (matchR!3097 lt!868146 call!144631) lt!868266)))

(declare-fun b!2381236 () Bool)

(declare-fun res!1011304 () Bool)

(assert (=> b!2381236 (=> res!1011304 e!1518800)))

(assert (=> b!2381236 (= res!1011304 (not (is-ElementMatch!6980 lt!868146)))))

(assert (=> b!2381236 (= e!1518798 e!1518800)))

(declare-fun b!2381242 () Bool)

(assert (=> b!2381242 (= e!1518796 e!1518802)))

(declare-fun res!1011298 () Bool)

(assert (=> b!2381242 (=> res!1011298 e!1518802)))

(assert (=> b!2381242 (= res!1011298 call!144683)))

(declare-fun b!2381243 () Bool)

(declare-fun res!1011302 () Bool)

(assert (=> b!2381243 (=> res!1011302 e!1518802)))

(assert (=> b!2381243 (= res!1011302 (not (isEmpty!16053 (tail!3465 call!144631))))))

(assert (= (and d!696727 c!378580) b!2381233))

(assert (= (and d!696727 (not c!378580)) b!2381237))

(assert (= (and d!696727 c!378581) b!2381235))

(assert (= (and d!696727 (not c!378581)) b!2381232))

(assert (= (and b!2381232 c!378579) b!2381234))

(assert (= (and b!2381232 (not c!378579)) b!2381236))

(assert (= (and b!2381236 (not res!1011304)) b!2381240))

(assert (= (and b!2381240 res!1011303) b!2381239))

(assert (= (and b!2381239 res!1011300) b!2381241))

(assert (= (and b!2381241 res!1011299) b!2381231))

(assert (= (and b!2381240 (not res!1011305)) b!2381230))

(assert (= (and b!2381230 res!1011301) b!2381242))

(assert (= (and b!2381242 (not res!1011298)) b!2381243))

(assert (= (and b!2381243 (not res!1011302)) b!2381238))

(assert (= (or b!2381235 b!2381239 b!2381242) bm!144678))

(declare-fun m!2784889 () Bool)

(assert (=> bm!144678 m!2784889))

(declare-fun m!2784891 () Bool)

(assert (=> b!2381243 m!2784891))

(assert (=> b!2381243 m!2784891))

(declare-fun m!2784893 () Bool)

(assert (=> b!2381243 m!2784893))

(declare-fun m!2784895 () Bool)

(assert (=> b!2381231 m!2784895))

(assert (=> d!696727 m!2784889))

(declare-fun m!2784897 () Bool)

(assert (=> d!696727 m!2784897))

(assert (=> b!2381241 m!2784891))

(assert (=> b!2381241 m!2784891))

(assert (=> b!2381241 m!2784893))

(assert (=> b!2381237 m!2784895))

(assert (=> b!2381237 m!2784895))

(declare-fun m!2784899 () Bool)

(assert (=> b!2381237 m!2784899))

(assert (=> b!2381237 m!2784891))

(assert (=> b!2381237 m!2784899))

(assert (=> b!2381237 m!2784891))

(declare-fun m!2784901 () Bool)

(assert (=> b!2381237 m!2784901))

(assert (=> b!2381238 m!2784895))

(declare-fun m!2784903 () Bool)

(assert (=> b!2381233 m!2784903))

(assert (=> b!2380755 d!696727))

(declare-fun d!696729 () Bool)

(assert (=> d!696729 (isDefined!4351 (findConcatSeparation!631 lt!868154 EmptyExpr!6980 Nil!28100 s!9460 s!9460))))

(declare-fun lt!868270 () Unit!41015)

(declare-fun choose!13925 (Regex!6980 Regex!6980 List!28198) Unit!41015)

(assert (=> d!696729 (= lt!868270 (choose!13925 lt!868154 EmptyExpr!6980 s!9460))))

(assert (=> d!696729 (validRegex!2705 lt!868154)))

(assert (=> d!696729 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!11 lt!868154 EmptyExpr!6980 s!9460) lt!868270)))

(declare-fun bs!461882 () Bool)

(assert (= bs!461882 d!696729))

(assert (=> bs!461882 m!2784605))

(assert (=> bs!461882 m!2784605))

(declare-fun m!2784905 () Bool)

(assert (=> bs!461882 m!2784905))

(declare-fun m!2784907 () Bool)

(assert (=> bs!461882 m!2784907))

(assert (=> bs!461882 m!2784769))

(assert (=> b!2380755 d!696729))

(declare-fun d!696731 () Bool)

(assert (=> d!696731 (= (isEmpty!16050 l!9164) (is-Nil!28101 l!9164))))

(assert (=> b!2380765 d!696731))

(declare-fun d!696733 () Bool)

(assert (=> d!696733 (= (isDefined!4351 (ite c!378481 call!144629 call!144628)) (not (isEmpty!16052 (ite c!378481 call!144629 call!144628))))))

(declare-fun bs!461883 () Bool)

(assert (= bs!461883 d!696733))

(declare-fun m!2784909 () Bool)

(assert (=> bs!461883 m!2784909))

(assert (=> bm!144626 d!696733))

(declare-fun d!696735 () Bool)

(assert (=> d!696735 (matchR!3097 (Concat!11616 lt!868154 EmptyExpr!6980) (++!6935 (_1!16453 lt!868151) (_2!16453 lt!868151)))))

(declare-fun lt!868273 () Unit!41015)

(declare-fun choose!13926 (Regex!6980 Regex!6980 List!28198 List!28198 List!28198) Unit!41015)

(assert (=> d!696735 (= lt!868273 (choose!13926 lt!868154 EmptyExpr!6980 (_1!16453 lt!868151) (_2!16453 lt!868151) s!9460))))

(assert (=> d!696735 (validRegex!2705 lt!868154)))

(assert (=> d!696735 (= (lemmaFindSeparationIsDefinedThenConcatMatches!11 lt!868154 EmptyExpr!6980 (_1!16453 lt!868151) (_2!16453 lt!868151) s!9460) lt!868273)))

(declare-fun bs!461884 () Bool)

(assert (= bs!461884 d!696735))

(declare-fun m!2784925 () Bool)

(assert (=> bs!461884 m!2784925))

(assert (=> bs!461884 m!2784925))

(declare-fun m!2784927 () Bool)

(assert (=> bs!461884 m!2784927))

(declare-fun m!2784929 () Bool)

(assert (=> bs!461884 m!2784929))

(assert (=> bs!461884 m!2784769))

(assert (=> b!2380756 d!696735))

(declare-fun d!696741 () Bool)

(assert (=> d!696741 (= (get!8569 lt!868155) (v!30930 lt!868155))))

(assert (=> b!2380756 d!696741))

(declare-fun bs!461885 () Bool)

(declare-fun d!696745 () Bool)

(assert (= bs!461885 (and d!696745 start!233610)))

(declare-fun lambda!88709 () Int)

(assert (=> bs!461885 (= lambda!88709 lambda!88674)))

(declare-fun bs!461886 () Bool)

(assert (= bs!461886 (and d!696745 d!696709)))

(assert (=> bs!461886 (= lambda!88709 lambda!88705)))

(declare-fun b!2381254 () Bool)

(declare-fun e!1518811 () Bool)

(declare-fun lt!868274 () Regex!6980)

(assert (=> b!2381254 (= e!1518811 (= lt!868274 (head!5193 lt!868148)))))

(declare-fun b!2381255 () Bool)

(declare-fun e!1518814 () Regex!6980)

(assert (=> b!2381255 (= e!1518814 (Concat!11616 (h!33502 lt!868148) (generalisedConcat!81 (t!208176 lt!868148))))))

(declare-fun b!2381256 () Bool)

(assert (=> b!2381256 (= e!1518814 EmptyExpr!6980)))

(declare-fun b!2381257 () Bool)

(assert (=> b!2381257 (= e!1518811 (isConcat!50 lt!868274))))

(declare-fun b!2381259 () Bool)

(declare-fun e!1518810 () Bool)

(assert (=> b!2381259 (= e!1518810 (isEmptyExpr!50 lt!868274))))

(declare-fun b!2381260 () Bool)

(declare-fun e!1518812 () Bool)

(assert (=> b!2381260 (= e!1518812 (isEmpty!16050 (t!208176 lt!868148)))))

(declare-fun b!2381261 () Bool)

(assert (=> b!2381261 (= e!1518810 e!1518811)))

(declare-fun c!378586 () Bool)

(assert (=> b!2381261 (= c!378586 (isEmpty!16050 (tail!3463 lt!868148)))))

(declare-fun b!2381262 () Bool)

(declare-fun e!1518813 () Bool)

(assert (=> b!2381262 (= e!1518813 e!1518810)))

(declare-fun c!378589 () Bool)

(assert (=> b!2381262 (= c!378589 (isEmpty!16050 lt!868148))))

(declare-fun b!2381263 () Bool)

(declare-fun e!1518809 () Regex!6980)

(assert (=> b!2381263 (= e!1518809 e!1518814)))

(declare-fun c!378588 () Bool)

(assert (=> b!2381263 (= c!378588 (is-Cons!28101 lt!868148))))

(declare-fun b!2381258 () Bool)

(assert (=> b!2381258 (= e!1518809 (h!33502 lt!868148))))

(assert (=> d!696745 e!1518813))

(declare-fun res!1011309 () Bool)

(assert (=> d!696745 (=> (not res!1011309) (not e!1518813))))

(assert (=> d!696745 (= res!1011309 (validRegex!2705 lt!868274))))

(assert (=> d!696745 (= lt!868274 e!1518809)))

(declare-fun c!378587 () Bool)

(assert (=> d!696745 (= c!378587 e!1518812)))

(declare-fun res!1011308 () Bool)

(assert (=> d!696745 (=> (not res!1011308) (not e!1518812))))

(assert (=> d!696745 (= res!1011308 (is-Cons!28101 lt!868148))))

(assert (=> d!696745 (forall!5614 lt!868148 lambda!88709)))

(assert (=> d!696745 (= (generalisedConcat!81 lt!868148) lt!868274)))

(assert (= (and d!696745 res!1011308) b!2381260))

(assert (= (and d!696745 c!378587) b!2381258))

(assert (= (and d!696745 (not c!378587)) b!2381263))

(assert (= (and b!2381263 c!378588) b!2381255))

(assert (= (and b!2381263 (not c!378588)) b!2381256))

(assert (= (and d!696745 res!1011309) b!2381262))

(assert (= (and b!2381262 c!378589) b!2381259))

(assert (= (and b!2381262 (not c!378589)) b!2381261))

(assert (= (and b!2381261 c!378586) b!2381254))

(assert (= (and b!2381261 (not c!378586)) b!2381257))

(declare-fun m!2784933 () Bool)

(assert (=> d!696745 m!2784933))

(declare-fun m!2784935 () Bool)

(assert (=> d!696745 m!2784935))

(declare-fun m!2784937 () Bool)

(assert (=> b!2381259 m!2784937))

(declare-fun m!2784939 () Bool)

(assert (=> b!2381260 m!2784939))

(declare-fun m!2784941 () Bool)

(assert (=> b!2381255 m!2784941))

(declare-fun m!2784943 () Bool)

(assert (=> b!2381261 m!2784943))

(assert (=> b!2381261 m!2784943))

(declare-fun m!2784945 () Bool)

(assert (=> b!2381261 m!2784945))

(declare-fun m!2784947 () Bool)

(assert (=> b!2381254 m!2784947))

(assert (=> b!2381262 m!2784593))

(declare-fun m!2784949 () Bool)

(assert (=> b!2381257 m!2784949))

(assert (=> b!2380757 d!696745))

(declare-fun b!2381274 () Bool)

(declare-fun e!1518817 () Bool)

(assert (=> b!2381274 (= e!1518817 tp_is_empty!11373)))

(declare-fun b!2381277 () Bool)

(declare-fun tp!760062 () Bool)

(declare-fun tp!760063 () Bool)

(assert (=> b!2381277 (= e!1518817 (and tp!760062 tp!760063))))

(declare-fun b!2381276 () Bool)

(declare-fun tp!760065 () Bool)

(assert (=> b!2381276 (= e!1518817 tp!760065)))

(declare-fun b!2381275 () Bool)

(declare-fun tp!760064 () Bool)

(declare-fun tp!760066 () Bool)

(assert (=> b!2381275 (= e!1518817 (and tp!760064 tp!760066))))

(assert (=> b!2380763 (= tp!760020 e!1518817)))

(assert (= (and b!2380763 (is-ElementMatch!6980 (reg!7309 r!13927))) b!2381274))

(assert (= (and b!2380763 (is-Concat!11616 (reg!7309 r!13927))) b!2381275))

(assert (= (and b!2380763 (is-Star!6980 (reg!7309 r!13927))) b!2381276))

(assert (= (and b!2380763 (is-Union!6980 (reg!7309 r!13927))) b!2381277))

(declare-fun b!2381278 () Bool)

(declare-fun e!1518818 () Bool)

(assert (=> b!2381278 (= e!1518818 tp_is_empty!11373)))

(declare-fun b!2381281 () Bool)

(declare-fun tp!760067 () Bool)

(declare-fun tp!760068 () Bool)

(assert (=> b!2381281 (= e!1518818 (and tp!760067 tp!760068))))

(declare-fun b!2381280 () Bool)

(declare-fun tp!760070 () Bool)

(assert (=> b!2381280 (= e!1518818 tp!760070)))

(declare-fun b!2381279 () Bool)

(declare-fun tp!760069 () Bool)

(declare-fun tp!760071 () Bool)

(assert (=> b!2381279 (= e!1518818 (and tp!760069 tp!760071))))

(assert (=> b!2380762 (= tp!760025 e!1518818)))

(assert (= (and b!2380762 (is-ElementMatch!6980 (regOne!14473 r!13927))) b!2381278))

(assert (= (and b!2380762 (is-Concat!11616 (regOne!14473 r!13927))) b!2381279))

(assert (= (and b!2380762 (is-Star!6980 (regOne!14473 r!13927))) b!2381280))

(assert (= (and b!2380762 (is-Union!6980 (regOne!14473 r!13927))) b!2381281))

(declare-fun b!2381282 () Bool)

(declare-fun e!1518819 () Bool)

(assert (=> b!2381282 (= e!1518819 tp_is_empty!11373)))

(declare-fun b!2381285 () Bool)

(declare-fun tp!760072 () Bool)

(declare-fun tp!760073 () Bool)

(assert (=> b!2381285 (= e!1518819 (and tp!760072 tp!760073))))

(declare-fun b!2381284 () Bool)

(declare-fun tp!760075 () Bool)

(assert (=> b!2381284 (= e!1518819 tp!760075)))

(declare-fun b!2381283 () Bool)

(declare-fun tp!760074 () Bool)

(declare-fun tp!760076 () Bool)

(assert (=> b!2381283 (= e!1518819 (and tp!760074 tp!760076))))

(assert (=> b!2380762 (= tp!760023 e!1518819)))

(assert (= (and b!2380762 (is-ElementMatch!6980 (regTwo!14473 r!13927))) b!2381282))

(assert (= (and b!2380762 (is-Concat!11616 (regTwo!14473 r!13927))) b!2381283))

(assert (= (and b!2380762 (is-Star!6980 (regTwo!14473 r!13927))) b!2381284))

(assert (= (and b!2380762 (is-Union!6980 (regTwo!14473 r!13927))) b!2381285))

(declare-fun b!2381286 () Bool)

(declare-fun e!1518820 () Bool)

(assert (=> b!2381286 (= e!1518820 tp_is_empty!11373)))

(declare-fun b!2381289 () Bool)

(declare-fun tp!760077 () Bool)

(declare-fun tp!760078 () Bool)

(assert (=> b!2381289 (= e!1518820 (and tp!760077 tp!760078))))

(declare-fun b!2381288 () Bool)

(declare-fun tp!760080 () Bool)

(assert (=> b!2381288 (= e!1518820 tp!760080)))

(declare-fun b!2381287 () Bool)

(declare-fun tp!760079 () Bool)

(declare-fun tp!760081 () Bool)

(assert (=> b!2381287 (= e!1518820 (and tp!760079 tp!760081))))

(assert (=> b!2380764 (= tp!760027 e!1518820)))

(assert (= (and b!2380764 (is-ElementMatch!6980 (regOne!14472 r!13927))) b!2381286))

(assert (= (and b!2380764 (is-Concat!11616 (regOne!14472 r!13927))) b!2381287))

(assert (= (and b!2380764 (is-Star!6980 (regOne!14472 r!13927))) b!2381288))

(assert (= (and b!2380764 (is-Union!6980 (regOne!14472 r!13927))) b!2381289))

(declare-fun b!2381290 () Bool)

(declare-fun e!1518821 () Bool)

(assert (=> b!2381290 (= e!1518821 tp_is_empty!11373)))

(declare-fun b!2381293 () Bool)

(declare-fun tp!760082 () Bool)

(declare-fun tp!760083 () Bool)

(assert (=> b!2381293 (= e!1518821 (and tp!760082 tp!760083))))

(declare-fun b!2381292 () Bool)

(declare-fun tp!760085 () Bool)

(assert (=> b!2381292 (= e!1518821 tp!760085)))

(declare-fun b!2381291 () Bool)

(declare-fun tp!760084 () Bool)

(declare-fun tp!760086 () Bool)

(assert (=> b!2381291 (= e!1518821 (and tp!760084 tp!760086))))

(assert (=> b!2380764 (= tp!760024 e!1518821)))

(assert (= (and b!2380764 (is-ElementMatch!6980 (regTwo!14472 r!13927))) b!2381290))

(assert (= (and b!2380764 (is-Concat!11616 (regTwo!14472 r!13927))) b!2381291))

(assert (= (and b!2380764 (is-Star!6980 (regTwo!14472 r!13927))) b!2381292))

(assert (= (and b!2380764 (is-Union!6980 (regTwo!14472 r!13927))) b!2381293))

(declare-fun b!2381294 () Bool)

(declare-fun e!1518822 () Bool)

(assert (=> b!2381294 (= e!1518822 tp_is_empty!11373)))

(declare-fun b!2381297 () Bool)

(declare-fun tp!760087 () Bool)

(declare-fun tp!760088 () Bool)

(assert (=> b!2381297 (= e!1518822 (and tp!760087 tp!760088))))

(declare-fun b!2381296 () Bool)

(declare-fun tp!760090 () Bool)

(assert (=> b!2381296 (= e!1518822 tp!760090)))

(declare-fun b!2381295 () Bool)

(declare-fun tp!760089 () Bool)

(declare-fun tp!760091 () Bool)

(assert (=> b!2381295 (= e!1518822 (and tp!760089 tp!760091))))

(assert (=> b!2380754 (= tp!760026 e!1518822)))

(assert (= (and b!2380754 (is-ElementMatch!6980 (h!33502 l!9164))) b!2381294))

(assert (= (and b!2380754 (is-Concat!11616 (h!33502 l!9164))) b!2381295))

(assert (= (and b!2380754 (is-Star!6980 (h!33502 l!9164))) b!2381296))

(assert (= (and b!2380754 (is-Union!6980 (h!33502 l!9164))) b!2381297))

(declare-fun b!2381302 () Bool)

(declare-fun e!1518825 () Bool)

(declare-fun tp!760096 () Bool)

(declare-fun tp!760097 () Bool)

(assert (=> b!2381302 (= e!1518825 (and tp!760096 tp!760097))))

(assert (=> b!2380754 (= tp!760022 e!1518825)))

(assert (= (and b!2380754 (is-Cons!28101 (t!208176 l!9164))) b!2381302))

(declare-fun b!2381307 () Bool)

(declare-fun e!1518828 () Bool)

(declare-fun tp!760100 () Bool)

(assert (=> b!2381307 (= e!1518828 (and tp_is_empty!11373 tp!760100))))

(assert (=> b!2380761 (= tp!760021 e!1518828)))

(assert (= (and b!2380761 (is-Cons!28100 (t!208175 s!9460))) b!2381307))

(declare-fun b_lambda!74061 () Bool)

(assert (= b_lambda!74059 (or start!233610 b_lambda!74061)))

(declare-fun bs!461889 () Bool)

(declare-fun d!696751 () Bool)

(assert (= bs!461889 (and d!696751 start!233610)))

(assert (=> bs!461889 (= (dynLambda!12097 lambda!88674 (h!33502 l!9164)) (validRegex!2705 (h!33502 l!9164)))))

(declare-fun m!2784953 () Bool)

(assert (=> bs!461889 m!2784953))

(assert (=> b!2381155 d!696751))

(push 1)

(assert (not b!2381241))

(assert (not b!2381260))

(assert (not b!2381275))

(assert (not b!2381101))

(assert (not b!2381185))

(assert (not b!2381280))

(assert (not b!2380910))

(assert (not b!2381233))

(assert (not b!2381295))

(assert (not b!2380908))

(assert (not b!2380905))

(assert (not d!696733))

(assert (not bm!144657))

(assert (not b!2381203))

(assert (not b!2381100))

(assert (not b!2381277))

(assert (not b!2381104))

(assert (not b!2380941))

(assert (not b!2381255))

(assert (not b!2381059))

(assert (not b!2381003))

(assert (not b!2381231))

(assert (not b!2381297))

(assert (not b!2381052))

(assert (not b!2381237))

(assert (not b!2381291))

(assert (not d!696707))

(assert (not b!2381276))

(assert (not b!2381146))

(assert (not d!696705))

(assert (not b!2381144))

(assert (not b!2381281))

(assert (not bm!144674))

(assert (not d!696673))

(assert (not b!2381259))

(assert (not d!696745))

(assert (not b!2381197))

(assert (not b!2381289))

(assert (not b!2380911))

(assert (not b!2381204))

(assert (not b!2381058))

(assert (not b!2381307))

(assert (not b!2381199))

(assert tp_is_empty!11373)

(assert (not b!2381202))

(assert (not b!2381257))

(assert (not d!696695))

(assert (not b_lambda!74061))

(assert (not b!2380944))

(assert (not b!2381262))

(assert (not d!696725))

(assert (not d!696709))

(assert (not b!2381147))

(assert (not b!2380949))

(assert (not b!2380948))

(assert (not b!2381182))

(assert (not d!696723))

(assert (not bm!144678))

(assert (not d!696703))

(assert (not b!2380950))

(assert (not b!2381148))

(assert (not bs!461889))

(assert (not b!2381198))

(assert (not b!2380942))

(assert (not b!2381201))

(assert (not b!2381141))

(assert (not b!2381191))

(assert (not b!2381285))

(assert (not b!2381283))

(assert (not d!696685))

(assert (not b!2381156))

(assert (not d!696729))

(assert (not d!696719))

(assert (not b!2381288))

(assert (not b!2381279))

(assert (not b!2381064))

(assert (not b!2381106))

(assert (not d!696691))

(assert (not b!2381096))

(assert (not b!2381229))

(assert (not bm!144675))

(assert (not b!2381062))

(assert (not bm!144663))

(assert (not d!696675))

(assert (not d!696727))

(assert (not b!2381284))

(assert (not b!2380947))

(assert (not d!696679))

(assert (not b!2381296))

(assert (not b!2381302))

(assert (not b!2381243))

(assert (not b!2381008))

(assert (not bm!144666))

(assert (not b!2380906))

(assert (not b!2381149))

(assert (not d!696683))

(assert (not b!2381192))

(assert (not b!2381238))

(assert (not bm!144677))

(assert (not b!2381287))

(assert (not b!2381054))

(assert (not b!2381142))

(assert (not d!696735))

(assert (not b!2380909))

(assert (not b!2381293))

(assert (not b!2381254))

(assert (not b!2381195))

(assert (not b!2381094))

(assert (not b!2381261))

(assert (not d!696681))

(assert (not bm!144656))

(assert (not b!2380945))

(assert (not b!2381292))

(assert (not b!2381187))

(assert (not d!696671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

