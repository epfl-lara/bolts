; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!289358 () Bool)

(assert start!289358)

(declare-fun b!3002070 () Bool)

(assert (=> b!3002070 true))

(assert (=> b!3002070 true))

(assert (=> b!3002070 true))

(declare-fun lambda!112144 () Int)

(declare-fun lambda!112143 () Int)

(assert (=> b!3002070 (not (= lambda!112144 lambda!112143))))

(assert (=> b!3002070 true))

(assert (=> b!3002070 true))

(assert (=> b!3002070 true))

(declare-fun b!3002068 () Bool)

(declare-fun e!1885773 () Bool)

(declare-fun e!1885771 () Bool)

(assert (=> b!3002068 (= e!1885773 e!1885771)))

(declare-fun res!1237176 () Bool)

(assert (=> b!3002068 (=> res!1237176 e!1885771)))

(declare-datatypes ((C!18930 0))(
  ( (C!18931 (val!11501 Int)) )
))
(declare-datatypes ((Regex!9372 0))(
  ( (ElementMatch!9372 (c!494056 C!18930)) (Concat!14693 (regOne!19256 Regex!9372) (regTwo!19256 Regex!9372)) (EmptyExpr!9372) (Star!9372 (reg!9701 Regex!9372)) (EmptyLang!9372) (Union!9372 (regOne!19257 Regex!9372) (regTwo!19257 Regex!9372)) )
))
(declare-fun lt!1042112 () Regex!9372)

(declare-fun isEmptyLang!462 (Regex!9372) Bool)

(assert (=> b!3002068 (= res!1237176 (isEmptyLang!462 lt!1042112))))

(declare-fun r!17423 () Regex!9372)

(declare-fun simplify!363 (Regex!9372) Regex!9372)

(assert (=> b!3002068 (= lt!1042112 (simplify!363 (reg!9701 r!17423)))))

(declare-fun b!3002069 () Bool)

(declare-fun e!1885772 () Bool)

(declare-fun tp!954106 () Bool)

(declare-fun tp!954105 () Bool)

(assert (=> b!3002069 (= e!1885772 (and tp!954106 tp!954105))))

(declare-fun e!1885768 () Bool)

(declare-fun lt!1042111 () Bool)

(assert (=> b!3002070 (= e!1885768 lt!1042111)))

(declare-fun Exists!1641 (Int) Bool)

(assert (=> b!3002070 (= (Exists!1641 lambda!112143) (Exists!1641 lambda!112144))))

(declare-datatypes ((Unit!49159 0))(
  ( (Unit!49160) )
))
(declare-fun lt!1042115 () Unit!49159)

(declare-datatypes ((List!35237 0))(
  ( (Nil!35113) (Cons!35113 (h!40533 C!18930) (t!234302 List!35237)) )
))
(declare-fun s!11993 () List!35237)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!307 (Regex!9372 List!35237) Unit!49159)

(assert (=> b!3002070 (= lt!1042115 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!307 lt!1042112 s!11993))))

(assert (=> b!3002070 (= lt!1042111 (Exists!1641 lambda!112143))))

(declare-fun lt!1042110 () Regex!9372)

(declare-datatypes ((tuple2!34038 0))(
  ( (tuple2!34039 (_1!20151 List!35237) (_2!20151 List!35237)) )
))
(declare-datatypes ((Option!6751 0))(
  ( (None!6750) (Some!6750 (v!34884 tuple2!34038)) )
))
(declare-fun isDefined!5302 (Option!6751) Bool)

(declare-fun findConcatSeparation!1145 (Regex!9372 Regex!9372 List!35237 List!35237 List!35237) Option!6751)

(assert (=> b!3002070 (= lt!1042111 (isDefined!5302 (findConcatSeparation!1145 lt!1042112 lt!1042110 Nil!35113 s!11993 s!11993)))))

(declare-fun lt!1042116 () Unit!49159)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!923 (Regex!9372 Regex!9372 List!35237) Unit!49159)

(assert (=> b!3002070 (= lt!1042116 (lemmaFindConcatSeparationEquivalentToExists!923 lt!1042112 lt!1042110 s!11993))))

(declare-fun b!3002071 () Bool)

(declare-fun e!1885769 () Bool)

(assert (=> b!3002071 (= e!1885771 e!1885769)))

(declare-fun res!1237175 () Bool)

(assert (=> b!3002071 (=> res!1237175 e!1885769)))

(declare-fun matchR!4254 (Regex!9372 List!35237) Bool)

(assert (=> b!3002071 (= res!1237175 (not (matchR!4254 lt!1042110 s!11993)))))

(assert (=> b!3002071 (= lt!1042110 (Star!9372 lt!1042112))))

(declare-fun b!3002072 () Bool)

(declare-fun tp!954104 () Bool)

(assert (=> b!3002072 (= e!1885772 tp!954104)))

(declare-fun b!3002073 () Bool)

(declare-fun tp!954107 () Bool)

(declare-fun tp!954103 () Bool)

(assert (=> b!3002073 (= e!1885772 (and tp!954107 tp!954103))))

(declare-fun res!1237173 () Bool)

(declare-fun e!1885770 () Bool)

(assert (=> start!289358 (=> (not res!1237173) (not e!1885770))))

(declare-fun validRegex!4105 (Regex!9372) Bool)

(assert (=> start!289358 (= res!1237173 (validRegex!4105 r!17423))))

(assert (=> start!289358 e!1885770))

(assert (=> start!289358 e!1885772))

(declare-fun e!1885774 () Bool)

(assert (=> start!289358 e!1885774))

(declare-fun b!3002074 () Bool)

(assert (=> b!3002074 (= e!1885770 (not e!1885773))))

(declare-fun res!1237177 () Bool)

(assert (=> b!3002074 (=> res!1237177 e!1885773)))

(declare-fun lt!1042113 () Bool)

(assert (=> b!3002074 (= res!1237177 (or lt!1042113 (is-Concat!14693 r!17423) (is-Union!9372 r!17423) (not (is-Star!9372 r!17423))))))

(declare-fun matchRSpec!1509 (Regex!9372 List!35237) Bool)

(assert (=> b!3002074 (= lt!1042113 (matchRSpec!1509 r!17423 s!11993))))

(assert (=> b!3002074 (= lt!1042113 (matchR!4254 r!17423 s!11993))))

(declare-fun lt!1042109 () Unit!49159)

(declare-fun mainMatchTheorem!1509 (Regex!9372 List!35237) Unit!49159)

(assert (=> b!3002074 (= lt!1042109 (mainMatchTheorem!1509 r!17423 s!11993))))

(declare-fun b!3002075 () Bool)

(declare-fun tp_is_empty!16307 () Bool)

(declare-fun tp!954102 () Bool)

(assert (=> b!3002075 (= e!1885774 (and tp_is_empty!16307 tp!954102))))

(declare-fun b!3002076 () Bool)

(assert (=> b!3002076 (= e!1885772 tp_is_empty!16307)))

(declare-fun b!3002077 () Bool)

(assert (=> b!3002077 (= e!1885769 e!1885768)))

(declare-fun res!1237174 () Bool)

(assert (=> b!3002077 (=> res!1237174 e!1885768)))

(declare-fun isEmpty!19385 (List!35237) Bool)

(assert (=> b!3002077 (= res!1237174 (isEmpty!19385 s!11993))))

(assert (=> b!3002077 (matchRSpec!1509 lt!1042110 s!11993)))

(declare-fun lt!1042114 () Unit!49159)

(assert (=> b!3002077 (= lt!1042114 (mainMatchTheorem!1509 lt!1042110 s!11993))))

(assert (= (and start!289358 res!1237173) b!3002074))

(assert (= (and b!3002074 (not res!1237177)) b!3002068))

(assert (= (and b!3002068 (not res!1237176)) b!3002071))

(assert (= (and b!3002071 (not res!1237175)) b!3002077))

(assert (= (and b!3002077 (not res!1237174)) b!3002070))

(assert (= (and start!289358 (is-ElementMatch!9372 r!17423)) b!3002076))

(assert (= (and start!289358 (is-Concat!14693 r!17423)) b!3002073))

(assert (= (and start!289358 (is-Star!9372 r!17423)) b!3002072))

(assert (= (and start!289358 (is-Union!9372 r!17423)) b!3002069))

(assert (= (and start!289358 (is-Cons!35113 s!11993)) b!3002075))

(declare-fun m!3352749 () Bool)

(assert (=> b!3002077 m!3352749))

(declare-fun m!3352751 () Bool)

(assert (=> b!3002077 m!3352751))

(declare-fun m!3352753 () Bool)

(assert (=> b!3002077 m!3352753))

(declare-fun m!3352755 () Bool)

(assert (=> b!3002070 m!3352755))

(assert (=> b!3002070 m!3352755))

(declare-fun m!3352757 () Bool)

(assert (=> b!3002070 m!3352757))

(declare-fun m!3352759 () Bool)

(assert (=> b!3002070 m!3352759))

(declare-fun m!3352761 () Bool)

(assert (=> b!3002070 m!3352761))

(declare-fun m!3352763 () Bool)

(assert (=> b!3002070 m!3352763))

(assert (=> b!3002070 m!3352757))

(declare-fun m!3352765 () Bool)

(assert (=> b!3002070 m!3352765))

(declare-fun m!3352767 () Bool)

(assert (=> b!3002071 m!3352767))

(declare-fun m!3352769 () Bool)

(assert (=> b!3002068 m!3352769))

(declare-fun m!3352771 () Bool)

(assert (=> b!3002068 m!3352771))

(declare-fun m!3352773 () Bool)

(assert (=> b!3002074 m!3352773))

(declare-fun m!3352775 () Bool)

(assert (=> b!3002074 m!3352775))

(declare-fun m!3352777 () Bool)

(assert (=> b!3002074 m!3352777))

(declare-fun m!3352779 () Bool)

(assert (=> start!289358 m!3352779))

(push 1)

(assert (not b!3002070))

(assert (not b!3002071))

(assert (not b!3002068))

(assert (not b!3002074))

(assert (not start!289358))

(assert (not b!3002072))

(assert (not b!3002077))

(assert tp_is_empty!16307)

(assert (not b!3002073))

(assert (not b!3002075))

(assert (not b!3002069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!528454 () Bool)

(declare-fun d!846394 () Bool)

(assert (= bs!528454 (and d!846394 b!3002070)))

(declare-fun lambda!112157 () Int)

(assert (=> bs!528454 (= (= (Star!9372 lt!1042112) lt!1042110) (= lambda!112157 lambda!112143))))

(assert (=> bs!528454 (not (= lambda!112157 lambda!112144))))

(assert (=> d!846394 true))

(assert (=> d!846394 true))

(declare-fun lambda!112158 () Int)

(assert (=> bs!528454 (not (= lambda!112158 lambda!112143))))

(assert (=> bs!528454 (= (= (Star!9372 lt!1042112) lt!1042110) (= lambda!112158 lambda!112144))))

(declare-fun bs!528455 () Bool)

(assert (= bs!528455 d!846394))

(assert (=> bs!528455 (not (= lambda!112158 lambda!112157))))

(assert (=> d!846394 true))

(assert (=> d!846394 true))

(assert (=> d!846394 (= (Exists!1641 lambda!112157) (Exists!1641 lambda!112158))))

(declare-fun lt!1042143 () Unit!49159)

(declare-fun choose!17803 (Regex!9372 List!35237) Unit!49159)

(assert (=> d!846394 (= lt!1042143 (choose!17803 lt!1042112 s!11993))))

(assert (=> d!846394 (validRegex!4105 lt!1042112)))

(assert (=> d!846394 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!307 lt!1042112 s!11993) lt!1042143)))

(declare-fun m!3352813 () Bool)

(assert (=> bs!528455 m!3352813))

(declare-fun m!3352815 () Bool)

(assert (=> bs!528455 m!3352815))

(declare-fun m!3352817 () Bool)

(assert (=> bs!528455 m!3352817))

(declare-fun m!3352819 () Bool)

(assert (=> bs!528455 m!3352819))

(assert (=> b!3002070 d!846394))

(declare-fun bs!528456 () Bool)

(declare-fun d!846400 () Bool)

(assert (= bs!528456 (and d!846400 b!3002070)))

(declare-fun lambda!112161 () Int)

(assert (=> bs!528456 (= lambda!112161 lambda!112143)))

(assert (=> bs!528456 (not (= lambda!112161 lambda!112144))))

(declare-fun bs!528457 () Bool)

(assert (= bs!528457 (and d!846400 d!846394)))

(assert (=> bs!528457 (= (= lt!1042110 (Star!9372 lt!1042112)) (= lambda!112161 lambda!112157))))

(assert (=> bs!528457 (not (= lambda!112161 lambda!112158))))

(assert (=> d!846400 true))

(assert (=> d!846400 true))

(assert (=> d!846400 true))

(assert (=> d!846400 (= (isDefined!5302 (findConcatSeparation!1145 lt!1042112 lt!1042110 Nil!35113 s!11993 s!11993)) (Exists!1641 lambda!112161))))

(declare-fun lt!1042146 () Unit!49159)

(declare-fun choose!17804 (Regex!9372 Regex!9372 List!35237) Unit!49159)

(assert (=> d!846400 (= lt!1042146 (choose!17804 lt!1042112 lt!1042110 s!11993))))

(assert (=> d!846400 (validRegex!4105 lt!1042112)))

(assert (=> d!846400 (= (lemmaFindConcatSeparationEquivalentToExists!923 lt!1042112 lt!1042110 s!11993) lt!1042146)))

(declare-fun bs!528458 () Bool)

(assert (= bs!528458 d!846400))

(assert (=> bs!528458 m!3352819))

(assert (=> bs!528458 m!3352757))

(assert (=> bs!528458 m!3352759))

(declare-fun m!3352821 () Bool)

(assert (=> bs!528458 m!3352821))

(declare-fun m!3352823 () Bool)

(assert (=> bs!528458 m!3352823))

(assert (=> bs!528458 m!3352757))

(assert (=> b!3002070 d!846400))

(declare-fun d!846402 () Bool)

(declare-fun choose!17805 (Int) Bool)

(assert (=> d!846402 (= (Exists!1641 lambda!112144) (choose!17805 lambda!112144))))

(declare-fun bs!528459 () Bool)

(assert (= bs!528459 d!846402))

(declare-fun m!3352825 () Bool)

(assert (=> bs!528459 m!3352825))

(assert (=> b!3002070 d!846402))

(declare-fun d!846404 () Bool)

(assert (=> d!846404 (= (Exists!1641 lambda!112143) (choose!17805 lambda!112143))))

(declare-fun bs!528460 () Bool)

(assert (= bs!528460 d!846404))

(declare-fun m!3352827 () Bool)

(assert (=> bs!528460 m!3352827))

(assert (=> b!3002070 d!846404))

(declare-fun b!3002194 () Bool)

(declare-fun lt!1042153 () Unit!49159)

(declare-fun lt!1042154 () Unit!49159)

(assert (=> b!3002194 (= lt!1042153 lt!1042154)))

(declare-fun ++!8400 (List!35237 List!35237) List!35237)

(assert (=> b!3002194 (= (++!8400 (++!8400 Nil!35113 (Cons!35113 (h!40533 s!11993) Nil!35113)) (t!234302 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1011 (List!35237 C!18930 List!35237 List!35237) Unit!49159)

(assert (=> b!3002194 (= lt!1042154 (lemmaMoveElementToOtherListKeepsConcatEq!1011 Nil!35113 (h!40533 s!11993) (t!234302 s!11993) s!11993))))

(declare-fun e!1885838 () Option!6751)

(assert (=> b!3002194 (= e!1885838 (findConcatSeparation!1145 lt!1042112 lt!1042110 (++!8400 Nil!35113 (Cons!35113 (h!40533 s!11993) Nil!35113)) (t!234302 s!11993) s!11993))))

(declare-fun b!3002195 () Bool)

(declare-fun res!1237251 () Bool)

(declare-fun e!1885839 () Bool)

(assert (=> b!3002195 (=> (not res!1237251) (not e!1885839))))

(declare-fun lt!1042155 () Option!6751)

(declare-fun get!10905 (Option!6751) tuple2!34038)

(assert (=> b!3002195 (= res!1237251 (matchR!4254 lt!1042112 (_1!20151 (get!10905 lt!1042155))))))

(declare-fun b!3002196 () Bool)

(declare-fun res!1237247 () Bool)

(assert (=> b!3002196 (=> (not res!1237247) (not e!1885839))))

(assert (=> b!3002196 (= res!1237247 (matchR!4254 lt!1042110 (_2!20151 (get!10905 lt!1042155))))))

(declare-fun b!3002197 () Bool)

(assert (=> b!3002197 (= e!1885839 (= (++!8400 (_1!20151 (get!10905 lt!1042155)) (_2!20151 (get!10905 lt!1042155))) s!11993))))

(declare-fun b!3002198 () Bool)

(declare-fun e!1885840 () Option!6751)

(assert (=> b!3002198 (= e!1885840 (Some!6750 (tuple2!34039 Nil!35113 s!11993)))))

(declare-fun d!846406 () Bool)

(declare-fun e!1885837 () Bool)

(assert (=> d!846406 e!1885837))

(declare-fun res!1237249 () Bool)

(assert (=> d!846406 (=> res!1237249 e!1885837)))

(assert (=> d!846406 (= res!1237249 e!1885839)))

(declare-fun res!1237250 () Bool)

(assert (=> d!846406 (=> (not res!1237250) (not e!1885839))))

(assert (=> d!846406 (= res!1237250 (isDefined!5302 lt!1042155))))

(assert (=> d!846406 (= lt!1042155 e!1885840)))

(declare-fun c!494070 () Bool)

(declare-fun e!1885836 () Bool)

(assert (=> d!846406 (= c!494070 e!1885836)))

(declare-fun res!1237248 () Bool)

(assert (=> d!846406 (=> (not res!1237248) (not e!1885836))))

(assert (=> d!846406 (= res!1237248 (matchR!4254 lt!1042112 Nil!35113))))

(assert (=> d!846406 (validRegex!4105 lt!1042112)))

(assert (=> d!846406 (= (findConcatSeparation!1145 lt!1042112 lt!1042110 Nil!35113 s!11993 s!11993) lt!1042155)))

(declare-fun b!3002199 () Bool)

(assert (=> b!3002199 (= e!1885840 e!1885838)))

(declare-fun c!494071 () Bool)

(assert (=> b!3002199 (= c!494071 (is-Nil!35113 s!11993))))

(declare-fun b!3002200 () Bool)

(assert (=> b!3002200 (= e!1885838 None!6750)))

(declare-fun b!3002201 () Bool)

(assert (=> b!3002201 (= e!1885837 (not (isDefined!5302 lt!1042155)))))

(declare-fun b!3002202 () Bool)

(assert (=> b!3002202 (= e!1885836 (matchR!4254 lt!1042110 s!11993))))

(assert (= (and d!846406 res!1237248) b!3002202))

(assert (= (and d!846406 c!494070) b!3002198))

(assert (= (and d!846406 (not c!494070)) b!3002199))

(assert (= (and b!3002199 c!494071) b!3002200))

(assert (= (and b!3002199 (not c!494071)) b!3002194))

(assert (= (and d!846406 res!1237250) b!3002195))

(assert (= (and b!3002195 res!1237251) b!3002196))

(assert (= (and b!3002196 res!1237247) b!3002197))

(assert (= (and d!846406 (not res!1237249)) b!3002201))

(declare-fun m!3352829 () Bool)

(assert (=> b!3002201 m!3352829))

(assert (=> b!3002202 m!3352767))

(declare-fun m!3352831 () Bool)

(assert (=> b!3002196 m!3352831))

(declare-fun m!3352833 () Bool)

(assert (=> b!3002196 m!3352833))

(assert (=> b!3002197 m!3352831))

(declare-fun m!3352835 () Bool)

(assert (=> b!3002197 m!3352835))

(assert (=> b!3002195 m!3352831))

(declare-fun m!3352837 () Bool)

(assert (=> b!3002195 m!3352837))

(assert (=> d!846406 m!3352829))

(declare-fun m!3352839 () Bool)

(assert (=> d!846406 m!3352839))

(assert (=> d!846406 m!3352819))

(declare-fun m!3352841 () Bool)

(assert (=> b!3002194 m!3352841))

(assert (=> b!3002194 m!3352841))

(declare-fun m!3352843 () Bool)

(assert (=> b!3002194 m!3352843))

(declare-fun m!3352845 () Bool)

(assert (=> b!3002194 m!3352845))

(assert (=> b!3002194 m!3352841))

(declare-fun m!3352847 () Bool)

(assert (=> b!3002194 m!3352847))

(assert (=> b!3002070 d!846406))

(declare-fun d!846408 () Bool)

(declare-fun isEmpty!19387 (Option!6751) Bool)

(assert (=> d!846408 (= (isDefined!5302 (findConcatSeparation!1145 lt!1042112 lt!1042110 Nil!35113 s!11993 s!11993)) (not (isEmpty!19387 (findConcatSeparation!1145 lt!1042112 lt!1042110 Nil!35113 s!11993 s!11993))))))

(declare-fun bs!528461 () Bool)

(assert (= bs!528461 d!846408))

(assert (=> bs!528461 m!3352757))

(declare-fun m!3352849 () Bool)

(assert (=> bs!528461 m!3352849))

(assert (=> b!3002070 d!846408))

(declare-fun d!846410 () Bool)

(assert (=> d!846410 (= (isEmpty!19385 s!11993) (is-Nil!35113 s!11993))))

(assert (=> b!3002077 d!846410))

(declare-fun bs!528465 () Bool)

(declare-fun b!3002255 () Bool)

(assert (= bs!528465 (and b!3002255 b!3002070)))

(declare-fun lambda!112172 () Int)

(assert (=> bs!528465 (= (= (reg!9701 lt!1042110) lt!1042112) (= lambda!112172 lambda!112144))))

(declare-fun bs!528466 () Bool)

(assert (= bs!528466 (and b!3002255 d!846394)))

(assert (=> bs!528466 (not (= lambda!112172 lambda!112157))))

(declare-fun bs!528467 () Bool)

(assert (= bs!528467 (and b!3002255 d!846400)))

(assert (=> bs!528467 (not (= lambda!112172 lambda!112161))))

(assert (=> bs!528465 (not (= lambda!112172 lambda!112143))))

(assert (=> bs!528466 (= (and (= (reg!9701 lt!1042110) lt!1042112) (= lt!1042110 (Star!9372 lt!1042112))) (= lambda!112172 lambda!112158))))

(assert (=> b!3002255 true))

(assert (=> b!3002255 true))

(declare-fun bs!528468 () Bool)

(declare-fun b!3002252 () Bool)

(assert (= bs!528468 (and b!3002252 b!3002070)))

(declare-fun lambda!112173 () Int)

(assert (=> bs!528468 (not (= lambda!112173 lambda!112144))))

(declare-fun bs!528469 () Bool)

(assert (= bs!528469 (and b!3002252 d!846394)))

(assert (=> bs!528469 (not (= lambda!112173 lambda!112157))))

(declare-fun bs!528470 () Bool)

(assert (= bs!528470 (and b!3002252 d!846400)))

(assert (=> bs!528470 (not (= lambda!112173 lambda!112161))))

(declare-fun bs!528471 () Bool)

(assert (= bs!528471 (and b!3002252 b!3002255)))

(assert (=> bs!528471 (not (= lambda!112173 lambda!112172))))

(assert (=> bs!528468 (not (= lambda!112173 lambda!112143))))

(assert (=> bs!528469 (not (= lambda!112173 lambda!112158))))

(assert (=> b!3002252 true))

(assert (=> b!3002252 true))

(declare-fun b!3002246 () Bool)

(declare-fun e!1885871 () Bool)

(assert (=> b!3002246 (= e!1885871 (matchRSpec!1509 (regTwo!19257 lt!1042110) s!11993))))

(declare-fun b!3002247 () Bool)

(declare-fun e!1885866 () Bool)

(declare-fun e!1885868 () Bool)

(assert (=> b!3002247 (= e!1885866 e!1885868)))

(declare-fun c!494085 () Bool)

(assert (=> b!3002247 (= c!494085 (is-Star!9372 lt!1042110))))

(declare-fun b!3002248 () Bool)

(declare-fun res!1237272 () Bool)

(declare-fun e!1885869 () Bool)

(assert (=> b!3002248 (=> res!1237272 e!1885869)))

(declare-fun call!201796 () Bool)

(assert (=> b!3002248 (= res!1237272 call!201796)))

(assert (=> b!3002248 (= e!1885868 e!1885869)))

(declare-fun b!3002249 () Bool)

(assert (=> b!3002249 (= e!1885866 e!1885871)))

(declare-fun res!1237271 () Bool)

(assert (=> b!3002249 (= res!1237271 (matchRSpec!1509 (regOne!19257 lt!1042110) s!11993))))

(assert (=> b!3002249 (=> res!1237271 e!1885871)))

(declare-fun b!3002250 () Bool)

(declare-fun c!494086 () Bool)

(assert (=> b!3002250 (= c!494086 (is-ElementMatch!9372 lt!1042110))))

(declare-fun e!1885867 () Bool)

(declare-fun e!1885870 () Bool)

(assert (=> b!3002250 (= e!1885867 e!1885870)))

(declare-fun b!3002251 () Bool)

(declare-fun e!1885872 () Bool)

(assert (=> b!3002251 (= e!1885872 e!1885867)))

(declare-fun res!1237273 () Bool)

(assert (=> b!3002251 (= res!1237273 (not (is-EmptyLang!9372 lt!1042110)))))

(assert (=> b!3002251 (=> (not res!1237273) (not e!1885867))))

(declare-fun call!201795 () Bool)

(declare-fun bm!201790 () Bool)

(assert (=> bm!201790 (= call!201795 (Exists!1641 (ite c!494085 lambda!112172 lambda!112173)))))

(declare-fun d!846412 () Bool)

(declare-fun c!494087 () Bool)

(assert (=> d!846412 (= c!494087 (is-EmptyExpr!9372 lt!1042110))))

(assert (=> d!846412 (= (matchRSpec!1509 lt!1042110 s!11993) e!1885872)))

(assert (=> b!3002252 (= e!1885868 call!201795)))

(declare-fun b!3002253 () Bool)

(assert (=> b!3002253 (= e!1885870 (= s!11993 (Cons!35113 (c!494056 lt!1042110) Nil!35113)))))

(declare-fun bm!201791 () Bool)

(assert (=> bm!201791 (= call!201796 (isEmpty!19385 s!11993))))

(declare-fun b!3002254 () Bool)

(declare-fun c!494084 () Bool)

(assert (=> b!3002254 (= c!494084 (is-Union!9372 lt!1042110))))

(assert (=> b!3002254 (= e!1885870 e!1885866)))

(assert (=> b!3002255 (= e!1885869 call!201795)))

(declare-fun b!3002256 () Bool)

(assert (=> b!3002256 (= e!1885872 call!201796)))

(assert (= (and d!846412 c!494087) b!3002256))

(assert (= (and d!846412 (not c!494087)) b!3002251))

(assert (= (and b!3002251 res!1237273) b!3002250))

(assert (= (and b!3002250 c!494086) b!3002253))

(assert (= (and b!3002250 (not c!494086)) b!3002254))

(assert (= (and b!3002254 c!494084) b!3002249))

(assert (= (and b!3002254 (not c!494084)) b!3002247))

(assert (= (and b!3002249 (not res!1237271)) b!3002246))

(assert (= (and b!3002247 c!494085) b!3002248))

(assert (= (and b!3002247 (not c!494085)) b!3002252))

(assert (= (and b!3002248 (not res!1237272)) b!3002255))

(assert (= (or b!3002255 b!3002252) bm!201790))

(assert (= (or b!3002256 b!3002248) bm!201791))

(declare-fun m!3352857 () Bool)

(assert (=> b!3002246 m!3352857))

(declare-fun m!3352859 () Bool)

(assert (=> b!3002249 m!3352859))

(declare-fun m!3352861 () Bool)

(assert (=> bm!201790 m!3352861))

(assert (=> bm!201791 m!3352749))

(assert (=> b!3002077 d!846412))

(declare-fun d!846416 () Bool)

(assert (=> d!846416 (= (matchR!4254 lt!1042110 s!11993) (matchRSpec!1509 lt!1042110 s!11993))))

(declare-fun lt!1042158 () Unit!49159)

(declare-fun choose!17806 (Regex!9372 List!35237) Unit!49159)

(assert (=> d!846416 (= lt!1042158 (choose!17806 lt!1042110 s!11993))))

(assert (=> d!846416 (validRegex!4105 lt!1042110)))

(assert (=> d!846416 (= (mainMatchTheorem!1509 lt!1042110 s!11993) lt!1042158)))

(declare-fun bs!528472 () Bool)

(assert (= bs!528472 d!846416))

(assert (=> bs!528472 m!3352767))

(assert (=> bs!528472 m!3352751))

(declare-fun m!3352863 () Bool)

(assert (=> bs!528472 m!3352863))

(declare-fun m!3352865 () Bool)

(assert (=> bs!528472 m!3352865))

(assert (=> b!3002077 d!846416))

(declare-fun b!3002285 () Bool)

(declare-fun e!1885891 () Bool)

(declare-fun derivativeStep!2629 (Regex!9372 C!18930) Regex!9372)

(declare-fun head!6688 (List!35237) C!18930)

(declare-fun tail!4914 (List!35237) List!35237)

(assert (=> b!3002285 (= e!1885891 (matchR!4254 (derivativeStep!2629 lt!1042110 (head!6688 s!11993)) (tail!4914 s!11993)))))

(declare-fun b!3002286 () Bool)

(declare-fun res!1237295 () Bool)

(declare-fun e!1885893 () Bool)

(assert (=> b!3002286 (=> res!1237295 e!1885893)))

(assert (=> b!3002286 (= res!1237295 (not (is-ElementMatch!9372 lt!1042110)))))

(declare-fun e!1885889 () Bool)

(assert (=> b!3002286 (= e!1885889 e!1885893)))

(declare-fun d!846418 () Bool)

(declare-fun e!1885892 () Bool)

(assert (=> d!846418 e!1885892))

(declare-fun c!494096 () Bool)

(assert (=> d!846418 (= c!494096 (is-EmptyExpr!9372 lt!1042110))))

(declare-fun lt!1042164 () Bool)

(assert (=> d!846418 (= lt!1042164 e!1885891)))

(declare-fun c!494095 () Bool)

(assert (=> d!846418 (= c!494095 (isEmpty!19385 s!11993))))

(assert (=> d!846418 (validRegex!4105 lt!1042110)))

(assert (=> d!846418 (= (matchR!4254 lt!1042110 s!11993) lt!1042164)))

(declare-fun b!3002287 () Bool)

(declare-fun res!1237291 () Bool)

(declare-fun e!1885890 () Bool)

(assert (=> b!3002287 (=> (not res!1237291) (not e!1885890))))

(declare-fun call!201799 () Bool)

(assert (=> b!3002287 (= res!1237291 (not call!201799))))

(declare-fun b!3002288 () Bool)

(assert (=> b!3002288 (= e!1885889 (not lt!1042164))))

(declare-fun b!3002289 () Bool)

(assert (=> b!3002289 (= e!1885892 e!1885889)))

(declare-fun c!494094 () Bool)

(assert (=> b!3002289 (= c!494094 (is-EmptyLang!9372 lt!1042110))))

(declare-fun b!3002290 () Bool)

(declare-fun e!1885888 () Bool)

(declare-fun e!1885887 () Bool)

(assert (=> b!3002290 (= e!1885888 e!1885887)))

(declare-fun res!1237293 () Bool)

(assert (=> b!3002290 (=> res!1237293 e!1885887)))

(assert (=> b!3002290 (= res!1237293 call!201799)))

(declare-fun b!3002291 () Bool)

(declare-fun res!1237294 () Bool)

(assert (=> b!3002291 (=> res!1237294 e!1885887)))

(assert (=> b!3002291 (= res!1237294 (not (isEmpty!19385 (tail!4914 s!11993))))))

(declare-fun b!3002292 () Bool)

(assert (=> b!3002292 (= e!1885890 (= (head!6688 s!11993) (c!494056 lt!1042110)))))

(declare-fun b!3002293 () Bool)

(assert (=> b!3002293 (= e!1885893 e!1885888)))

(declare-fun res!1237290 () Bool)

(assert (=> b!3002293 (=> (not res!1237290) (not e!1885888))))

(assert (=> b!3002293 (= res!1237290 (not lt!1042164))))

(declare-fun b!3002294 () Bool)

(declare-fun nullable!3031 (Regex!9372) Bool)

(assert (=> b!3002294 (= e!1885891 (nullable!3031 lt!1042110))))

(declare-fun bm!201794 () Bool)

(assert (=> bm!201794 (= call!201799 (isEmpty!19385 s!11993))))

(declare-fun b!3002295 () Bool)

(assert (=> b!3002295 (= e!1885887 (not (= (head!6688 s!11993) (c!494056 lt!1042110))))))

(declare-fun b!3002296 () Bool)

(declare-fun res!1237297 () Bool)

(assert (=> b!3002296 (=> res!1237297 e!1885893)))

(assert (=> b!3002296 (= res!1237297 e!1885890)))

(declare-fun res!1237292 () Bool)

(assert (=> b!3002296 (=> (not res!1237292) (not e!1885890))))

(assert (=> b!3002296 (= res!1237292 lt!1042164)))

(declare-fun b!3002297 () Bool)

(assert (=> b!3002297 (= e!1885892 (= lt!1042164 call!201799))))

(declare-fun b!3002298 () Bool)

(declare-fun res!1237296 () Bool)

(assert (=> b!3002298 (=> (not res!1237296) (not e!1885890))))

(assert (=> b!3002298 (= res!1237296 (isEmpty!19385 (tail!4914 s!11993)))))

(assert (= (and d!846418 c!494095) b!3002294))

(assert (= (and d!846418 (not c!494095)) b!3002285))

(assert (= (and d!846418 c!494096) b!3002297))

(assert (= (and d!846418 (not c!494096)) b!3002289))

(assert (= (and b!3002289 c!494094) b!3002288))

(assert (= (and b!3002289 (not c!494094)) b!3002286))

(assert (= (and b!3002286 (not res!1237295)) b!3002296))

(assert (= (and b!3002296 res!1237292) b!3002287))

(assert (= (and b!3002287 res!1237291) b!3002298))

(assert (= (and b!3002298 res!1237296) b!3002292))

(assert (= (and b!3002296 (not res!1237297)) b!3002293))

(assert (= (and b!3002293 res!1237290) b!3002290))

(assert (= (and b!3002290 (not res!1237293)) b!3002291))

(assert (= (and b!3002291 (not res!1237294)) b!3002295))

(assert (= (or b!3002297 b!3002287 b!3002290) bm!201794))

(declare-fun m!3352871 () Bool)

(assert (=> b!3002291 m!3352871))

(assert (=> b!3002291 m!3352871))

(declare-fun m!3352873 () Bool)

(assert (=> b!3002291 m!3352873))

(declare-fun m!3352875 () Bool)

(assert (=> b!3002294 m!3352875))

(declare-fun m!3352877 () Bool)

(assert (=> b!3002295 m!3352877))

(assert (=> d!846418 m!3352749))

(assert (=> d!846418 m!3352865))

(assert (=> b!3002285 m!3352877))

(assert (=> b!3002285 m!3352877))

(declare-fun m!3352879 () Bool)

(assert (=> b!3002285 m!3352879))

(assert (=> b!3002285 m!3352871))

(assert (=> b!3002285 m!3352879))

(assert (=> b!3002285 m!3352871))

(declare-fun m!3352881 () Bool)

(assert (=> b!3002285 m!3352881))

(assert (=> bm!201794 m!3352749))

(assert (=> b!3002292 m!3352877))

(assert (=> b!3002298 m!3352871))

(assert (=> b!3002298 m!3352871))

(assert (=> b!3002298 m!3352873))

(assert (=> b!3002071 d!846418))

(declare-fun bs!528474 () Bool)

(declare-fun b!3002308 () Bool)

(assert (= bs!528474 (and b!3002308 b!3002070)))

(declare-fun lambda!112174 () Int)

(assert (=> bs!528474 (= (and (= (reg!9701 r!17423) lt!1042112) (= r!17423 lt!1042110)) (= lambda!112174 lambda!112144))))

(declare-fun bs!528475 () Bool)

(assert (= bs!528475 (and b!3002308 d!846394)))

(assert (=> bs!528475 (not (= lambda!112174 lambda!112157))))

(declare-fun bs!528476 () Bool)

(assert (= bs!528476 (and b!3002308 d!846400)))

(assert (=> bs!528476 (not (= lambda!112174 lambda!112161))))

(declare-fun bs!528477 () Bool)

(assert (= bs!528477 (and b!3002308 b!3002252)))

(assert (=> bs!528477 (not (= lambda!112174 lambda!112173))))

(declare-fun bs!528478 () Bool)

(assert (= bs!528478 (and b!3002308 b!3002255)))

(assert (=> bs!528478 (= (and (= (reg!9701 r!17423) (reg!9701 lt!1042110)) (= r!17423 lt!1042110)) (= lambda!112174 lambda!112172))))

(assert (=> bs!528474 (not (= lambda!112174 lambda!112143))))

(assert (=> bs!528475 (= (and (= (reg!9701 r!17423) lt!1042112) (= r!17423 (Star!9372 lt!1042112))) (= lambda!112174 lambda!112158))))

(assert (=> b!3002308 true))

(assert (=> b!3002308 true))

(declare-fun bs!528479 () Bool)

(declare-fun b!3002305 () Bool)

(assert (= bs!528479 (and b!3002305 b!3002070)))

(declare-fun lambda!112175 () Int)

(assert (=> bs!528479 (not (= lambda!112175 lambda!112144))))

(declare-fun bs!528480 () Bool)

(assert (= bs!528480 (and b!3002305 d!846394)))

(assert (=> bs!528480 (not (= lambda!112175 lambda!112157))))

(declare-fun bs!528481 () Bool)

(assert (= bs!528481 (and b!3002305 d!846400)))

(assert (=> bs!528481 (not (= lambda!112175 lambda!112161))))

(declare-fun bs!528482 () Bool)

(assert (= bs!528482 (and b!3002305 b!3002255)))

(assert (=> bs!528482 (not (= lambda!112175 lambda!112172))))

(assert (=> bs!528479 (not (= lambda!112175 lambda!112143))))

(assert (=> bs!528480 (not (= lambda!112175 lambda!112158))))

(declare-fun bs!528483 () Bool)

(assert (= bs!528483 (and b!3002305 b!3002308)))

(assert (=> bs!528483 (not (= lambda!112175 lambda!112174))))

(declare-fun bs!528484 () Bool)

(assert (= bs!528484 (and b!3002305 b!3002252)))

(assert (=> bs!528484 (= (and (= (regOne!19256 r!17423) (regOne!19256 lt!1042110)) (= (regTwo!19256 r!17423) (regTwo!19256 lt!1042110))) (= lambda!112175 lambda!112173))))

(assert (=> b!3002305 true))

(assert (=> b!3002305 true))

(declare-fun b!3002299 () Bool)

(declare-fun e!1885899 () Bool)

(assert (=> b!3002299 (= e!1885899 (matchRSpec!1509 (regTwo!19257 r!17423) s!11993))))

(declare-fun b!3002300 () Bool)

(declare-fun e!1885894 () Bool)

(declare-fun e!1885896 () Bool)

(assert (=> b!3002300 (= e!1885894 e!1885896)))

(declare-fun c!494098 () Bool)

(assert (=> b!3002300 (= c!494098 (is-Star!9372 r!17423))))

(declare-fun b!3002301 () Bool)

(declare-fun res!1237299 () Bool)

(declare-fun e!1885897 () Bool)

(assert (=> b!3002301 (=> res!1237299 e!1885897)))

(declare-fun call!201801 () Bool)

(assert (=> b!3002301 (= res!1237299 call!201801)))

(assert (=> b!3002301 (= e!1885896 e!1885897)))

(declare-fun b!3002302 () Bool)

(assert (=> b!3002302 (= e!1885894 e!1885899)))

(declare-fun res!1237298 () Bool)

(assert (=> b!3002302 (= res!1237298 (matchRSpec!1509 (regOne!19257 r!17423) s!11993))))

(assert (=> b!3002302 (=> res!1237298 e!1885899)))

(declare-fun b!3002303 () Bool)

(declare-fun c!494099 () Bool)

(assert (=> b!3002303 (= c!494099 (is-ElementMatch!9372 r!17423))))

(declare-fun e!1885895 () Bool)

(declare-fun e!1885898 () Bool)

(assert (=> b!3002303 (= e!1885895 e!1885898)))

(declare-fun b!3002304 () Bool)

(declare-fun e!1885900 () Bool)

(assert (=> b!3002304 (= e!1885900 e!1885895)))

(declare-fun res!1237300 () Bool)

(assert (=> b!3002304 (= res!1237300 (not (is-EmptyLang!9372 r!17423)))))

(assert (=> b!3002304 (=> (not res!1237300) (not e!1885895))))

(declare-fun call!201800 () Bool)

(declare-fun bm!201795 () Bool)

(assert (=> bm!201795 (= call!201800 (Exists!1641 (ite c!494098 lambda!112174 lambda!112175)))))

(declare-fun d!846424 () Bool)

(declare-fun c!494100 () Bool)

(assert (=> d!846424 (= c!494100 (is-EmptyExpr!9372 r!17423))))

(assert (=> d!846424 (= (matchRSpec!1509 r!17423 s!11993) e!1885900)))

(assert (=> b!3002305 (= e!1885896 call!201800)))

(declare-fun b!3002306 () Bool)

(assert (=> b!3002306 (= e!1885898 (= s!11993 (Cons!35113 (c!494056 r!17423) Nil!35113)))))

(declare-fun bm!201796 () Bool)

(assert (=> bm!201796 (= call!201801 (isEmpty!19385 s!11993))))

(declare-fun b!3002307 () Bool)

(declare-fun c!494097 () Bool)

(assert (=> b!3002307 (= c!494097 (is-Union!9372 r!17423))))

(assert (=> b!3002307 (= e!1885898 e!1885894)))

(assert (=> b!3002308 (= e!1885897 call!201800)))

(declare-fun b!3002309 () Bool)

(assert (=> b!3002309 (= e!1885900 call!201801)))

(assert (= (and d!846424 c!494100) b!3002309))

(assert (= (and d!846424 (not c!494100)) b!3002304))

(assert (= (and b!3002304 res!1237300) b!3002303))

(assert (= (and b!3002303 c!494099) b!3002306))

(assert (= (and b!3002303 (not c!494099)) b!3002307))

(assert (= (and b!3002307 c!494097) b!3002302))

(assert (= (and b!3002307 (not c!494097)) b!3002300))

(assert (= (and b!3002302 (not res!1237298)) b!3002299))

(assert (= (and b!3002300 c!494098) b!3002301))

(assert (= (and b!3002300 (not c!494098)) b!3002305))

(assert (= (and b!3002301 (not res!1237299)) b!3002308))

(assert (= (or b!3002308 b!3002305) bm!201795))

(assert (= (or b!3002309 b!3002301) bm!201796))

(declare-fun m!3352883 () Bool)

(assert (=> b!3002299 m!3352883))

(declare-fun m!3352885 () Bool)

(assert (=> b!3002302 m!3352885))

(declare-fun m!3352887 () Bool)

(assert (=> bm!201795 m!3352887))

(assert (=> bm!201796 m!3352749))

(assert (=> b!3002074 d!846424))

(declare-fun b!3002310 () Bool)

(declare-fun e!1885905 () Bool)

(assert (=> b!3002310 (= e!1885905 (matchR!4254 (derivativeStep!2629 r!17423 (head!6688 s!11993)) (tail!4914 s!11993)))))

(declare-fun b!3002311 () Bool)

(declare-fun res!1237306 () Bool)

(declare-fun e!1885907 () Bool)

(assert (=> b!3002311 (=> res!1237306 e!1885907)))

(assert (=> b!3002311 (= res!1237306 (not (is-ElementMatch!9372 r!17423)))))

(declare-fun e!1885903 () Bool)

(assert (=> b!3002311 (= e!1885903 e!1885907)))

(declare-fun d!846426 () Bool)

(declare-fun e!1885906 () Bool)

(assert (=> d!846426 e!1885906))

(declare-fun c!494103 () Bool)

(assert (=> d!846426 (= c!494103 (is-EmptyExpr!9372 r!17423))))

(declare-fun lt!1042165 () Bool)

(assert (=> d!846426 (= lt!1042165 e!1885905)))

(declare-fun c!494102 () Bool)

(assert (=> d!846426 (= c!494102 (isEmpty!19385 s!11993))))

(assert (=> d!846426 (validRegex!4105 r!17423)))

(assert (=> d!846426 (= (matchR!4254 r!17423 s!11993) lt!1042165)))

(declare-fun b!3002312 () Bool)

(declare-fun res!1237302 () Bool)

(declare-fun e!1885904 () Bool)

(assert (=> b!3002312 (=> (not res!1237302) (not e!1885904))))

(declare-fun call!201802 () Bool)

(assert (=> b!3002312 (= res!1237302 (not call!201802))))

(declare-fun b!3002313 () Bool)

(assert (=> b!3002313 (= e!1885903 (not lt!1042165))))

(declare-fun b!3002314 () Bool)

(assert (=> b!3002314 (= e!1885906 e!1885903)))

(declare-fun c!494101 () Bool)

(assert (=> b!3002314 (= c!494101 (is-EmptyLang!9372 r!17423))))

(declare-fun b!3002315 () Bool)

(declare-fun e!1885902 () Bool)

(declare-fun e!1885901 () Bool)

(assert (=> b!3002315 (= e!1885902 e!1885901)))

(declare-fun res!1237304 () Bool)

(assert (=> b!3002315 (=> res!1237304 e!1885901)))

(assert (=> b!3002315 (= res!1237304 call!201802)))

(declare-fun b!3002316 () Bool)

(declare-fun res!1237305 () Bool)

(assert (=> b!3002316 (=> res!1237305 e!1885901)))

(assert (=> b!3002316 (= res!1237305 (not (isEmpty!19385 (tail!4914 s!11993))))))

(declare-fun b!3002317 () Bool)

(assert (=> b!3002317 (= e!1885904 (= (head!6688 s!11993) (c!494056 r!17423)))))

(declare-fun b!3002318 () Bool)

(assert (=> b!3002318 (= e!1885907 e!1885902)))

(declare-fun res!1237301 () Bool)

(assert (=> b!3002318 (=> (not res!1237301) (not e!1885902))))

(assert (=> b!3002318 (= res!1237301 (not lt!1042165))))

(declare-fun b!3002319 () Bool)

(assert (=> b!3002319 (= e!1885905 (nullable!3031 r!17423))))

(declare-fun bm!201797 () Bool)

(assert (=> bm!201797 (= call!201802 (isEmpty!19385 s!11993))))

(declare-fun b!3002320 () Bool)

(assert (=> b!3002320 (= e!1885901 (not (= (head!6688 s!11993) (c!494056 r!17423))))))

(declare-fun b!3002321 () Bool)

(declare-fun res!1237308 () Bool)

(assert (=> b!3002321 (=> res!1237308 e!1885907)))

(assert (=> b!3002321 (= res!1237308 e!1885904)))

(declare-fun res!1237303 () Bool)

(assert (=> b!3002321 (=> (not res!1237303) (not e!1885904))))

(assert (=> b!3002321 (= res!1237303 lt!1042165)))

(declare-fun b!3002322 () Bool)

(assert (=> b!3002322 (= e!1885906 (= lt!1042165 call!201802))))

(declare-fun b!3002323 () Bool)

(declare-fun res!1237307 () Bool)

(assert (=> b!3002323 (=> (not res!1237307) (not e!1885904))))

(assert (=> b!3002323 (= res!1237307 (isEmpty!19385 (tail!4914 s!11993)))))

(assert (= (and d!846426 c!494102) b!3002319))

(assert (= (and d!846426 (not c!494102)) b!3002310))

(assert (= (and d!846426 c!494103) b!3002322))

(assert (= (and d!846426 (not c!494103)) b!3002314))

(assert (= (and b!3002314 c!494101) b!3002313))

(assert (= (and b!3002314 (not c!494101)) b!3002311))

(assert (= (and b!3002311 (not res!1237306)) b!3002321))

(assert (= (and b!3002321 res!1237303) b!3002312))

(assert (= (and b!3002312 res!1237302) b!3002323))

(assert (= (and b!3002323 res!1237307) b!3002317))

(assert (= (and b!3002321 (not res!1237308)) b!3002318))

(assert (= (and b!3002318 res!1237301) b!3002315))

(assert (= (and b!3002315 (not res!1237304)) b!3002316))

(assert (= (and b!3002316 (not res!1237305)) b!3002320))

(assert (= (or b!3002322 b!3002312 b!3002315) bm!201797))

(assert (=> b!3002316 m!3352871))

(assert (=> b!3002316 m!3352871))

(assert (=> b!3002316 m!3352873))

(declare-fun m!3352889 () Bool)

(assert (=> b!3002319 m!3352889))

(assert (=> b!3002320 m!3352877))

(assert (=> d!846426 m!3352749))

(assert (=> d!846426 m!3352779))

(assert (=> b!3002310 m!3352877))

(assert (=> b!3002310 m!3352877))

(declare-fun m!3352891 () Bool)

(assert (=> b!3002310 m!3352891))

(assert (=> b!3002310 m!3352871))

(assert (=> b!3002310 m!3352891))

(assert (=> b!3002310 m!3352871))

(declare-fun m!3352893 () Bool)

(assert (=> b!3002310 m!3352893))

(assert (=> bm!201797 m!3352749))

(assert (=> b!3002317 m!3352877))

(assert (=> b!3002323 m!3352871))

(assert (=> b!3002323 m!3352871))

(assert (=> b!3002323 m!3352873))

(assert (=> b!3002074 d!846426))

(declare-fun d!846428 () Bool)

(assert (=> d!846428 (= (matchR!4254 r!17423 s!11993) (matchRSpec!1509 r!17423 s!11993))))

(declare-fun lt!1042166 () Unit!49159)

(assert (=> d!846428 (= lt!1042166 (choose!17806 r!17423 s!11993))))

(assert (=> d!846428 (validRegex!4105 r!17423)))

(assert (=> d!846428 (= (mainMatchTheorem!1509 r!17423 s!11993) lt!1042166)))

(declare-fun bs!528485 () Bool)

(assert (= bs!528485 d!846428))

(assert (=> bs!528485 m!3352775))

(assert (=> bs!528485 m!3352773))

(declare-fun m!3352895 () Bool)

(assert (=> bs!528485 m!3352895))

(assert (=> bs!528485 m!3352779))

(assert (=> b!3002074 d!846428))

(declare-fun d!846430 () Bool)

(assert (=> d!846430 (= (isEmptyLang!462 lt!1042112) (is-EmptyLang!9372 lt!1042112))))

(assert (=> b!3002068 d!846430))

(declare-fun b!3002422 () Bool)

(declare-fun c!494151 () Bool)

(declare-fun call!201832 () Bool)

(assert (=> b!3002422 (= c!494151 call!201832)))

(declare-fun e!1885974 () Regex!9372)

(declare-fun e!1885966 () Regex!9372)

(assert (=> b!3002422 (= e!1885974 e!1885966)))

(declare-fun b!3002423 () Bool)

(declare-fun c!494157 () Bool)

(assert (=> b!3002423 (= c!494157 (is-Union!9372 (reg!9701 r!17423)))))

(declare-fun e!1885968 () Regex!9372)

(declare-fun e!1885972 () Regex!9372)

(assert (=> b!3002423 (= e!1885968 e!1885972)))

(declare-fun b!3002424 () Bool)

(declare-fun e!1885965 () Bool)

(declare-fun call!201831 () Bool)

(assert (=> b!3002424 (= e!1885965 call!201831)))

(declare-fun b!3002425 () Bool)

(declare-fun e!1885973 () Regex!9372)

(assert (=> b!3002425 (= e!1885973 (reg!9701 r!17423))))

(declare-fun b!3002426 () Bool)

(declare-fun e!1885964 () Bool)

(declare-fun lt!1042192 () Regex!9372)

(assert (=> b!3002426 (= e!1885964 (= (nullable!3031 lt!1042192) (nullable!3031 (reg!9701 r!17423))))))

(declare-fun b!3002427 () Bool)

(declare-fun e!1885963 () Regex!9372)

(declare-fun lt!1042191 () Regex!9372)

(assert (=> b!3002427 (= e!1885963 (Star!9372 lt!1042191))))

(declare-fun b!3002428 () Bool)

(declare-fun e!1885967 () Bool)

(assert (=> b!3002428 (= e!1885967 call!201832)))

(declare-fun b!3002429 () Bool)

(declare-fun c!494152 () Bool)

(assert (=> b!3002429 (= c!494152 e!1885965)))

(declare-fun res!1237319 () Bool)

(assert (=> b!3002429 (=> res!1237319 e!1885965)))

(declare-fun call!201834 () Bool)

(assert (=> b!3002429 (= res!1237319 call!201834)))

(declare-fun call!201836 () Regex!9372)

(assert (=> b!3002429 (= lt!1042191 call!201836)))

(assert (=> b!3002429 (= e!1885968 e!1885963)))

(declare-fun b!3002430 () Bool)

(declare-fun c!494153 () Bool)

(assert (=> b!3002430 (= c!494153 call!201831)))

(declare-fun e!1885962 () Regex!9372)

(declare-fun e!1885969 () Regex!9372)

(assert (=> b!3002430 (= e!1885962 e!1885969)))

(declare-fun b!3002431 () Bool)

(declare-fun lt!1042194 () Regex!9372)

(assert (=> b!3002431 (= e!1885969 lt!1042194)))

(declare-fun lt!1042193 () Regex!9372)

(declare-fun bm!201826 () Bool)

(assert (=> bm!201826 (= call!201832 (isEmptyLang!462 (ite c!494157 lt!1042193 lt!1042194)))))

(declare-fun lt!1042196 () Regex!9372)

(declare-fun c!494156 () Bool)

(declare-fun bm!201827 () Bool)

(declare-fun isEmptyExpr!475 (Regex!9372) Bool)

(assert (=> bm!201827 (= call!201831 (isEmptyExpr!475 (ite c!494156 lt!1042191 lt!1042196)))))

(declare-fun b!3002432 () Bool)

(declare-fun e!1885970 () Regex!9372)

(assert (=> b!3002432 (= e!1885970 (Concat!14693 lt!1042196 lt!1042194))))

(declare-fun b!3002433 () Bool)

(declare-fun lt!1042195 () Regex!9372)

(assert (=> b!3002433 (= e!1885966 (Union!9372 lt!1042195 lt!1042193))))

(declare-fun b!3002434 () Bool)

(assert (=> b!3002434 (= e!1885972 e!1885962)))

(declare-fun call!201837 () Regex!9372)

(assert (=> b!3002434 (= lt!1042196 call!201837)))

(declare-fun call!201835 () Regex!9372)

(assert (=> b!3002434 (= lt!1042194 call!201835)))

(declare-fun res!1237320 () Bool)

(declare-fun call!201833 () Bool)

(assert (=> b!3002434 (= res!1237320 call!201833)))

(assert (=> b!3002434 (=> res!1237320 e!1885967)))

(declare-fun c!494155 () Bool)

(assert (=> b!3002434 (= c!494155 e!1885967)))

(declare-fun bm!201828 () Bool)

(assert (=> bm!201828 (= call!201835 (simplify!363 (ite c!494157 (regOne!19257 (reg!9701 r!17423)) (regTwo!19256 (reg!9701 r!17423)))))))

(declare-fun bm!201829 () Bool)

(assert (=> bm!201829 (= call!201837 call!201836)))

(declare-fun b!3002435 () Bool)

(assert (=> b!3002435 (= e!1885970 lt!1042196)))

(declare-fun bm!201830 () Bool)

(assert (=> bm!201830 (= call!201834 (isEmptyLang!462 (ite c!494156 lt!1042191 (ite c!494157 lt!1042195 lt!1042196))))))

(declare-fun bm!201831 () Bool)

(assert (=> bm!201831 (= call!201833 call!201834)))

(declare-fun b!3002436 () Bool)

(assert (=> b!3002436 (= e!1885974 lt!1042193)))

(declare-fun b!3002437 () Bool)

(assert (=> b!3002437 (= e!1885963 EmptyExpr!9372)))

(declare-fun b!3002438 () Bool)

(declare-fun e!1885975 () Regex!9372)

(assert (=> b!3002438 (= e!1885975 e!1885968)))

(assert (=> b!3002438 (= c!494156 (is-Star!9372 (reg!9701 r!17423)))))

(declare-fun b!3002439 () Bool)

(assert (=> b!3002439 (= e!1885969 e!1885970)))

(declare-fun c!494154 () Bool)

(assert (=> b!3002439 (= c!494154 (isEmptyExpr!475 lt!1042194))))

(declare-fun b!3002440 () Bool)

(declare-fun e!1885971 () Regex!9372)

(assert (=> b!3002440 (= e!1885971 e!1885973)))

(declare-fun c!494158 () Bool)

(assert (=> b!3002440 (= c!494158 (is-ElementMatch!9372 (reg!9701 r!17423)))))

(declare-fun b!3002441 () Bool)

(assert (=> b!3002441 (= e!1885975 EmptyExpr!9372)))

(declare-fun b!3002442 () Bool)

(assert (=> b!3002442 (= e!1885971 EmptyLang!9372)))

(declare-fun b!3002443 () Bool)

(assert (=> b!3002443 (= e!1885972 e!1885974)))

(assert (=> b!3002443 (= lt!1042195 call!201835)))

(assert (=> b!3002443 (= lt!1042193 call!201837)))

(declare-fun c!494148 () Bool)

(assert (=> b!3002443 (= c!494148 call!201833)))

(declare-fun b!3002444 () Bool)

(declare-fun c!494149 () Bool)

(assert (=> b!3002444 (= c!494149 (is-EmptyExpr!9372 (reg!9701 r!17423)))))

(assert (=> b!3002444 (= e!1885973 e!1885975)))

(declare-fun bm!201832 () Bool)

(assert (=> bm!201832 (= call!201836 (simplify!363 (ite c!494156 (reg!9701 (reg!9701 r!17423)) (ite c!494157 (regTwo!19257 (reg!9701 r!17423)) (regOne!19256 (reg!9701 r!17423))))))))

(declare-fun b!3002445 () Bool)

(assert (=> b!3002445 (= e!1885966 lt!1042195)))

(declare-fun d!846432 () Bool)

(assert (=> d!846432 e!1885964))

(declare-fun res!1237321 () Bool)

(assert (=> d!846432 (=> (not res!1237321) (not e!1885964))))

(assert (=> d!846432 (= res!1237321 (validRegex!4105 lt!1042192))))

(assert (=> d!846432 (= lt!1042192 e!1885971)))

(declare-fun c!494150 () Bool)

(assert (=> d!846432 (= c!494150 (is-EmptyLang!9372 (reg!9701 r!17423)))))

(assert (=> d!846432 (validRegex!4105 (reg!9701 r!17423))))

(assert (=> d!846432 (= (simplify!363 (reg!9701 r!17423)) lt!1042192)))

(declare-fun b!3002446 () Bool)

(assert (=> b!3002446 (= e!1885962 EmptyLang!9372)))

(assert (= (and d!846432 c!494150) b!3002442))

(assert (= (and d!846432 (not c!494150)) b!3002440))

(assert (= (and b!3002440 c!494158) b!3002425))

(assert (= (and b!3002440 (not c!494158)) b!3002444))

(assert (= (and b!3002444 c!494149) b!3002441))

(assert (= (and b!3002444 (not c!494149)) b!3002438))

(assert (= (and b!3002438 c!494156) b!3002429))

(assert (= (and b!3002438 (not c!494156)) b!3002423))

(assert (= (and b!3002429 (not res!1237319)) b!3002424))

(assert (= (and b!3002429 c!494152) b!3002437))

(assert (= (and b!3002429 (not c!494152)) b!3002427))

(assert (= (and b!3002423 c!494157) b!3002443))

(assert (= (and b!3002423 (not c!494157)) b!3002434))

(assert (= (and b!3002443 c!494148) b!3002436))

(assert (= (and b!3002443 (not c!494148)) b!3002422))

(assert (= (and b!3002422 c!494151) b!3002445))

(assert (= (and b!3002422 (not c!494151)) b!3002433))

(assert (= (and b!3002434 (not res!1237320)) b!3002428))

(assert (= (and b!3002434 c!494155) b!3002446))

(assert (= (and b!3002434 (not c!494155)) b!3002430))

(assert (= (and b!3002430 c!494153) b!3002431))

(assert (= (and b!3002430 (not c!494153)) b!3002439))

(assert (= (and b!3002439 c!494154) b!3002435))

(assert (= (and b!3002439 (not c!494154)) b!3002432))

(assert (= (or b!3002443 b!3002434) bm!201828))

(assert (= (or b!3002443 b!3002434) bm!201829))

(assert (= (or b!3002443 b!3002434) bm!201831))

(assert (= (or b!3002422 b!3002428) bm!201826))

(assert (= (or b!3002424 b!3002430) bm!201827))

(assert (= (or b!3002429 bm!201829) bm!201832))

(assert (= (or b!3002429 bm!201831) bm!201830))

(assert (= (and d!846432 res!1237321) b!3002426))

(declare-fun m!3352897 () Bool)

(assert (=> bm!201828 m!3352897))

(declare-fun m!3352899 () Bool)

(assert (=> bm!201830 m!3352899))

(declare-fun m!3352901 () Bool)

(assert (=> b!3002426 m!3352901))

(declare-fun m!3352903 () Bool)

(assert (=> b!3002426 m!3352903))

(declare-fun m!3352905 () Bool)

(assert (=> d!846432 m!3352905))

(declare-fun m!3352907 () Bool)

(assert (=> d!846432 m!3352907))

(declare-fun m!3352909 () Bool)

(assert (=> bm!201826 m!3352909))

(declare-fun m!3352911 () Bool)

(assert (=> bm!201827 m!3352911))

(declare-fun m!3352913 () Bool)

(assert (=> bm!201832 m!3352913))

(declare-fun m!3352915 () Bool)

(assert (=> b!3002439 m!3352915))

(assert (=> b!3002068 d!846432))

(declare-fun b!3002467 () Bool)

(declare-fun e!1885996 () Bool)

(declare-fun e!1885992 () Bool)

(assert (=> b!3002467 (= e!1885996 e!1885992)))

(declare-fun res!1237337 () Bool)

(assert (=> b!3002467 (= res!1237337 (not (nullable!3031 (reg!9701 r!17423))))))

(assert (=> b!3002467 (=> (not res!1237337) (not e!1885992))))

(declare-fun d!846434 () Bool)

(declare-fun res!1237334 () Bool)

(declare-fun e!1885998 () Bool)

(assert (=> d!846434 (=> res!1237334 e!1885998)))

(assert (=> d!846434 (= res!1237334 (is-ElementMatch!9372 r!17423))))

(assert (=> d!846434 (= (validRegex!4105 r!17423) e!1885998)))

(declare-fun b!3002468 () Bool)

(declare-fun res!1237338 () Bool)

(declare-fun e!1885994 () Bool)

(assert (=> b!3002468 (=> res!1237338 e!1885994)))

(assert (=> b!3002468 (= res!1237338 (not (is-Concat!14693 r!17423)))))

(declare-fun e!1885993 () Bool)

(assert (=> b!3002468 (= e!1885993 e!1885994)))

(declare-fun bm!201839 () Bool)

(declare-fun call!201844 () Bool)

(declare-fun c!494164 () Bool)

(assert (=> bm!201839 (= call!201844 (validRegex!4105 (ite c!494164 (regTwo!19257 r!17423) (regOne!19256 r!17423))))))

(declare-fun bm!201840 () Bool)

(declare-fun call!201846 () Bool)

(declare-fun call!201845 () Bool)

(assert (=> bm!201840 (= call!201846 call!201845)))

(declare-fun b!3002469 () Bool)

(declare-fun res!1237335 () Bool)

(declare-fun e!1885997 () Bool)

(assert (=> b!3002469 (=> (not res!1237335) (not e!1885997))))

(assert (=> b!3002469 (= res!1237335 call!201846)))

(assert (=> b!3002469 (= e!1885993 e!1885997)))

(declare-fun b!3002470 () Bool)

(declare-fun e!1885995 () Bool)

(assert (=> b!3002470 (= e!1885994 e!1885995)))

(declare-fun res!1237336 () Bool)

(assert (=> b!3002470 (=> (not res!1237336) (not e!1885995))))

(assert (=> b!3002470 (= res!1237336 call!201844)))

(declare-fun c!494163 () Bool)

(declare-fun bm!201841 () Bool)

(assert (=> bm!201841 (= call!201845 (validRegex!4105 (ite c!494163 (reg!9701 r!17423) (ite c!494164 (regOne!19257 r!17423) (regTwo!19256 r!17423)))))))

(declare-fun b!3002471 () Bool)

(assert (=> b!3002471 (= e!1885998 e!1885996)))

(assert (=> b!3002471 (= c!494163 (is-Star!9372 r!17423))))

(declare-fun b!3002472 () Bool)

(assert (=> b!3002472 (= e!1885995 call!201846)))

(declare-fun b!3002473 () Bool)

(assert (=> b!3002473 (= e!1885996 e!1885993)))

(assert (=> b!3002473 (= c!494164 (is-Union!9372 r!17423))))

(declare-fun b!3002474 () Bool)

(assert (=> b!3002474 (= e!1885997 call!201844)))

(declare-fun b!3002475 () Bool)

(assert (=> b!3002475 (= e!1885992 call!201845)))

(assert (= (and d!846434 (not res!1237334)) b!3002471))

(assert (= (and b!3002471 c!494163) b!3002467))

(assert (= (and b!3002471 (not c!494163)) b!3002473))

(assert (= (and b!3002467 res!1237337) b!3002475))

(assert (= (and b!3002473 c!494164) b!3002469))

(assert (= (and b!3002473 (not c!494164)) b!3002468))

(assert (= (and b!3002469 res!1237335) b!3002474))

(assert (= (and b!3002468 (not res!1237338)) b!3002470))

(assert (= (and b!3002470 res!1237336) b!3002472))

(assert (= (or b!3002469 b!3002472) bm!201840))

(assert (= (or b!3002474 b!3002470) bm!201839))

(assert (= (or b!3002475 bm!201840) bm!201841))

(assert (=> b!3002467 m!3352903))

(declare-fun m!3352917 () Bool)

(assert (=> bm!201839 m!3352917))

(declare-fun m!3352919 () Bool)

(assert (=> bm!201841 m!3352919))

(assert (=> start!289358 d!846434))

(declare-fun b!3002480 () Bool)

(declare-fun e!1886001 () Bool)

(declare-fun tp!954128 () Bool)

(assert (=> b!3002480 (= e!1886001 (and tp_is_empty!16307 tp!954128))))

(assert (=> b!3002075 (= tp!954102 e!1886001)))

(assert (= (and b!3002075 (is-Cons!35113 (t!234302 s!11993))) b!3002480))

(declare-fun e!1886004 () Bool)

(assert (=> b!3002073 (= tp!954107 e!1886004)))

(declare-fun b!3002494 () Bool)

(declare-fun tp!954140 () Bool)

(declare-fun tp!954143 () Bool)

(assert (=> b!3002494 (= e!1886004 (and tp!954140 tp!954143))))

(declare-fun b!3002492 () Bool)

(declare-fun tp!954142 () Bool)

(declare-fun tp!954141 () Bool)

(assert (=> b!3002492 (= e!1886004 (and tp!954142 tp!954141))))

(declare-fun b!3002493 () Bool)

(declare-fun tp!954139 () Bool)

(assert (=> b!3002493 (= e!1886004 tp!954139)))

(declare-fun b!3002491 () Bool)

(assert (=> b!3002491 (= e!1886004 tp_is_empty!16307)))

(assert (= (and b!3002073 (is-ElementMatch!9372 (regOne!19256 r!17423))) b!3002491))

(assert (= (and b!3002073 (is-Concat!14693 (regOne!19256 r!17423))) b!3002492))

(assert (= (and b!3002073 (is-Star!9372 (regOne!19256 r!17423))) b!3002493))

(assert (= (and b!3002073 (is-Union!9372 (regOne!19256 r!17423))) b!3002494))

(declare-fun e!1886005 () Bool)

(assert (=> b!3002073 (= tp!954103 e!1886005)))

(declare-fun b!3002498 () Bool)

(declare-fun tp!954145 () Bool)

(declare-fun tp!954148 () Bool)

(assert (=> b!3002498 (= e!1886005 (and tp!954145 tp!954148))))

(declare-fun b!3002496 () Bool)

(declare-fun tp!954147 () Bool)

(declare-fun tp!954146 () Bool)

(assert (=> b!3002496 (= e!1886005 (and tp!954147 tp!954146))))

(declare-fun b!3002497 () Bool)

(declare-fun tp!954144 () Bool)

(assert (=> b!3002497 (= e!1886005 tp!954144)))

(declare-fun b!3002495 () Bool)

(assert (=> b!3002495 (= e!1886005 tp_is_empty!16307)))

(assert (= (and b!3002073 (is-ElementMatch!9372 (regTwo!19256 r!17423))) b!3002495))

(assert (= (and b!3002073 (is-Concat!14693 (regTwo!19256 r!17423))) b!3002496))

(assert (= (and b!3002073 (is-Star!9372 (regTwo!19256 r!17423))) b!3002497))

(assert (= (and b!3002073 (is-Union!9372 (regTwo!19256 r!17423))) b!3002498))

(declare-fun e!1886006 () Bool)

(assert (=> b!3002072 (= tp!954104 e!1886006)))

(declare-fun b!3002502 () Bool)

(declare-fun tp!954150 () Bool)

(declare-fun tp!954153 () Bool)

(assert (=> b!3002502 (= e!1886006 (and tp!954150 tp!954153))))

(declare-fun b!3002500 () Bool)

(declare-fun tp!954152 () Bool)

(declare-fun tp!954151 () Bool)

(assert (=> b!3002500 (= e!1886006 (and tp!954152 tp!954151))))

(declare-fun b!3002501 () Bool)

(declare-fun tp!954149 () Bool)

(assert (=> b!3002501 (= e!1886006 tp!954149)))

(declare-fun b!3002499 () Bool)

(assert (=> b!3002499 (= e!1886006 tp_is_empty!16307)))

(assert (= (and b!3002072 (is-ElementMatch!9372 (reg!9701 r!17423))) b!3002499))

(assert (= (and b!3002072 (is-Concat!14693 (reg!9701 r!17423))) b!3002500))

(assert (= (and b!3002072 (is-Star!9372 (reg!9701 r!17423))) b!3002501))

(assert (= (and b!3002072 (is-Union!9372 (reg!9701 r!17423))) b!3002502))

(declare-fun e!1886007 () Bool)

(assert (=> b!3002069 (= tp!954106 e!1886007)))

(declare-fun b!3002506 () Bool)

(declare-fun tp!954155 () Bool)

(declare-fun tp!954158 () Bool)

(assert (=> b!3002506 (= e!1886007 (and tp!954155 tp!954158))))

(declare-fun b!3002504 () Bool)

(declare-fun tp!954157 () Bool)

(declare-fun tp!954156 () Bool)

(assert (=> b!3002504 (= e!1886007 (and tp!954157 tp!954156))))

(declare-fun b!3002505 () Bool)

(declare-fun tp!954154 () Bool)

(assert (=> b!3002505 (= e!1886007 tp!954154)))

(declare-fun b!3002503 () Bool)

(assert (=> b!3002503 (= e!1886007 tp_is_empty!16307)))

(assert (= (and b!3002069 (is-ElementMatch!9372 (regOne!19257 r!17423))) b!3002503))

(assert (= (and b!3002069 (is-Concat!14693 (regOne!19257 r!17423))) b!3002504))

(assert (= (and b!3002069 (is-Star!9372 (regOne!19257 r!17423))) b!3002505))

(assert (= (and b!3002069 (is-Union!9372 (regOne!19257 r!17423))) b!3002506))

(declare-fun e!1886008 () Bool)

(assert (=> b!3002069 (= tp!954105 e!1886008)))

(declare-fun b!3002510 () Bool)

(declare-fun tp!954160 () Bool)

(declare-fun tp!954163 () Bool)

(assert (=> b!3002510 (= e!1886008 (and tp!954160 tp!954163))))

(declare-fun b!3002508 () Bool)

(declare-fun tp!954162 () Bool)

(declare-fun tp!954161 () Bool)

(assert (=> b!3002508 (= e!1886008 (and tp!954162 tp!954161))))

(declare-fun b!3002509 () Bool)

(declare-fun tp!954159 () Bool)

(assert (=> b!3002509 (= e!1886008 tp!954159)))

(declare-fun b!3002507 () Bool)

(assert (=> b!3002507 (= e!1886008 tp_is_empty!16307)))

(assert (= (and b!3002069 (is-ElementMatch!9372 (regTwo!19257 r!17423))) b!3002507))

(assert (= (and b!3002069 (is-Concat!14693 (regTwo!19257 r!17423))) b!3002508))

(assert (= (and b!3002069 (is-Star!9372 (regTwo!19257 r!17423))) b!3002509))

(assert (= (and b!3002069 (is-Union!9372 (regTwo!19257 r!17423))) b!3002510))

(push 1)

(assert (not bm!201841))

(assert (not b!3002246))

(assert (not b!3002492))

(assert (not bm!201797))

(assert (not d!846394))

(assert (not b!3002467))

(assert (not bm!201832))

(assert (not b!3002196))

(assert (not b!3002316))

(assert (not bm!201795))

(assert (not bm!201839))

(assert (not bm!201827))

(assert (not b!3002509))

(assert (not b!3002320))

(assert (not d!846406))

(assert (not b!3002498))

(assert (not b!3002508))

(assert (not b!3002298))

(assert (not b!3002295))

(assert (not b!3002310))

(assert (not bm!201830))

(assert (not d!846418))

(assert (not b!3002319))

(assert (not b!3002506))

(assert (not b!3002195))

(assert (not b!3002194))

(assert (not d!846416))

(assert (not b!3002510))

(assert (not b!3002249))

(assert (not bm!201794))

(assert (not b!3002496))

(assert (not b!3002501))

(assert (not bm!201796))

(assert (not b!3002299))

(assert (not b!3002494))

(assert (not b!3002285))

(assert (not b!3002291))

(assert (not b!3002426))

(assert (not bm!201790))

(assert (not b!3002302))

(assert (not d!846402))

(assert (not d!846428))

(assert (not b!3002201))

(assert (not bm!201826))

(assert (not b!3002500))

(assert (not b!3002202))

(assert (not d!846432))

(assert (not d!846400))

(assert (not d!846404))

(assert (not b!3002323))

(assert (not b!3002502))

(assert (not b!3002197))

(assert (not b!3002493))

(assert tp_is_empty!16307)

(assert (not b!3002439))

(assert (not b!3002317))

(assert (not bm!201791))

(assert (not d!846408))

(assert (not b!3002504))

(assert (not d!846426))

(assert (not b!3002294))

(assert (not b!3002292))

(assert (not bm!201828))

(assert (not b!3002497))

(assert (not b!3002480))

(assert (not b!3002505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

