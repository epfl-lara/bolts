; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736382 () Bool)

(assert start!736382)

(declare-fun b!7669048 () Bool)

(assert (=> b!7669048 true))

(assert (=> b!7669048 true))

(declare-fun b!7669046 () Bool)

(declare-fun e!4554780 () Bool)

(declare-fun tp!2244086 () Bool)

(declare-fun tp!2244087 () Bool)

(assert (=> b!7669046 (= e!4554780 (and tp!2244086 tp!2244087))))

(declare-fun b!7669047 () Bool)

(declare-fun e!4554776 () Bool)

(declare-fun tp_is_empty!51355 () Bool)

(declare-fun tp!2244089 () Bool)

(assert (=> b!7669047 (= e!4554776 (and tp_is_empty!51355 tp!2244089))))

(declare-fun e!4554781 () Bool)

(declare-fun e!4554777 () Bool)

(assert (=> b!7669048 (= e!4554781 (not e!4554777))))

(declare-fun res!3067505 () Bool)

(assert (=> b!7669048 (=> res!3067505 e!4554777)))

(declare-fun lt!2662550 () Bool)

(assert (=> b!7669048 (= res!3067505 (not lt!2662550))))

(declare-fun lambda!470030 () Int)

(declare-fun Exists!4625 (Int) Bool)

(assert (=> b!7669048 (= lt!2662550 (Exists!4625 lambda!470030))))

(declare-datatypes ((C!41326 0))(
  ( (C!41327 (val!31103 Int)) )
))
(declare-datatypes ((List!73351 0))(
  ( (Nil!73227) (Cons!73227 (h!79675 C!41326) (t!388086 List!73351)) )
))
(declare-datatypes ((tuple2!69462 0))(
  ( (tuple2!69463 (_1!38034 List!73351) (_2!38034 List!73351)) )
))
(declare-datatypes ((Option!17525 0))(
  ( (None!17524) (Some!17524 (v!54659 tuple2!69462)) )
))
(declare-fun lt!2662551 () Option!17525)

(declare-fun isDefined!14141 (Option!17525) Bool)

(assert (=> b!7669048 (= lt!2662550 (isDefined!14141 lt!2662551))))

(declare-datatypes ((Regex!20500 0))(
  ( (ElementMatch!20500 (c!1412400 C!41326)) (Concat!29345 (regOne!41512 Regex!20500) (regTwo!41512 Regex!20500)) (EmptyExpr!20500) (Star!20500 (reg!20829 Regex!20500)) (EmptyLang!20500) (Union!20500 (regOne!41513 Regex!20500) (regTwo!41513 Regex!20500)) )
))
(declare-fun r!14126 () Regex!20500)

(declare-fun s!9605 () List!73351)

(declare-fun findConcatSeparation!3555 (Regex!20500 Regex!20500 List!73351 List!73351 List!73351) Option!17525)

(assert (=> b!7669048 (= lt!2662551 (findConcatSeparation!3555 (reg!20829 r!14126) r!14126 Nil!73227 s!9605 s!9605))))

(declare-datatypes ((Unit!168012 0))(
  ( (Unit!168013) )
))
(declare-fun lt!2662553 () Unit!168012)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3313 (Regex!20500 Regex!20500 List!73351) Unit!168012)

(assert (=> b!7669048 (= lt!2662553 (lemmaFindConcatSeparationEquivalentToExists!3313 (reg!20829 r!14126) r!14126 s!9605))))

(declare-fun b!7669049 () Bool)

(declare-fun tp!2244088 () Bool)

(declare-fun tp!2244091 () Bool)

(assert (=> b!7669049 (= e!4554780 (and tp!2244088 tp!2244091))))

(declare-fun res!3067506 () Bool)

(assert (=> start!736382 (=> (not res!3067506) (not e!4554781))))

(declare-fun validRegex!10918 (Regex!20500) Bool)

(assert (=> start!736382 (= res!3067506 (validRegex!10918 r!14126))))

(assert (=> start!736382 e!4554781))

(assert (=> start!736382 e!4554780))

(assert (=> start!736382 e!4554776))

(declare-fun b!7669050 () Bool)

(declare-fun e!4554782 () Unit!168012)

(declare-fun Unit!168014 () Unit!168012)

(assert (=> b!7669050 (= e!4554782 Unit!168014)))

(declare-fun lt!2662552 () tuple2!69462)

(declare-fun lt!2662546 () Unit!168012)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!187 (Regex!20500 Regex!20500 List!73351 List!73351 List!73351) Unit!168012)

(assert (=> b!7669050 (= lt!2662546 (lemmaFindSeparationIsDefinedThenConcatMatches!187 (reg!20829 r!14126) r!14126 (_1!38034 lt!2662552) (_2!38034 lt!2662552) s!9605))))

(declare-fun lt!2662554 () List!73351)

(declare-fun ++!17722 (List!73351 List!73351) List!73351)

(assert (=> b!7669050 (= lt!2662554 (++!17722 (_1!38034 lt!2662552) (_2!38034 lt!2662552)))))

(declare-fun matchR!9996 (Regex!20500 List!73351) Bool)

(assert (=> b!7669050 (matchR!9996 (Concat!29345 (reg!20829 r!14126) r!14126) lt!2662554)))

(declare-fun lt!2662555 () Unit!168012)

(declare-fun lemmaStarApp!209 (Regex!20500 List!73351 List!73351) Unit!168012)

(assert (=> b!7669050 (= lt!2662555 (lemmaStarApp!209 (reg!20829 r!14126) (_1!38034 lt!2662552) (_2!38034 lt!2662552)))))

(declare-fun res!3067508 () Bool)

(assert (=> b!7669050 (= res!3067508 (matchR!9996 r!14126 lt!2662554))))

(declare-fun e!4554778 () Bool)

(assert (=> b!7669050 (=> (not res!3067508) (not e!4554778))))

(assert (=> b!7669050 e!4554778))

(declare-fun b!7669051 () Bool)

(declare-fun tp!2244090 () Bool)

(assert (=> b!7669051 (= e!4554780 tp!2244090)))

(declare-fun b!7669052 () Bool)

(declare-fun res!3067507 () Bool)

(assert (=> b!7669052 (=> (not res!3067507) (not e!4554781))))

(assert (=> b!7669052 (= res!3067507 (and (not (is-EmptyExpr!20500 r!14126)) (not (is-EmptyLang!20500 r!14126)) (not (is-ElementMatch!20500 r!14126)) (not (is-Union!20500 r!14126)) (is-Star!20500 r!14126)))))

(declare-fun b!7669053 () Bool)

(declare-fun Unit!168015 () Unit!168012)

(assert (=> b!7669053 (= e!4554782 Unit!168015)))

(declare-fun b!7669054 () Bool)

(assert (=> b!7669054 (= e!4554780 tp_is_empty!51355)))

(declare-fun b!7669055 () Bool)

(assert (=> b!7669055 (= e!4554778 false)))

(declare-fun b!7669056 () Bool)

(declare-fun e!4554779 () Bool)

(assert (=> b!7669056 (= e!4554779 (validRegex!10918 (reg!20829 r!14126)))))

(declare-fun lt!2662545 () tuple2!69462)

(declare-fun pickWitness!489 (Int) tuple2!69462)

(assert (=> b!7669056 (= lt!2662545 (pickWitness!489 lambda!470030))))

(declare-fun b!7669057 () Bool)

(assert (=> b!7669057 (= e!4554777 e!4554779)))

(declare-fun res!3067503 () Bool)

(assert (=> b!7669057 (=> res!3067503 e!4554779)))

(assert (=> b!7669057 (= res!3067503 (not (Exists!4625 lambda!470030)))))

(declare-fun lt!2662549 () Unit!168012)

(assert (=> b!7669057 (= lt!2662549 e!4554782)))

(declare-fun c!1412399 () Bool)

(assert (=> b!7669057 (= c!1412399 (not (matchR!9996 r!14126 s!9605)))))

(declare-fun matchRSpec!4601 (Regex!20500 List!73351) Bool)

(assert (=> b!7669057 (= (matchR!9996 r!14126 (_2!38034 lt!2662552)) (matchRSpec!4601 r!14126 (_2!38034 lt!2662552)))))

(declare-fun lt!2662547 () Unit!168012)

(declare-fun mainMatchTheorem!4579 (Regex!20500 List!73351) Unit!168012)

(assert (=> b!7669057 (= lt!2662547 (mainMatchTheorem!4579 r!14126 (_2!38034 lt!2662552)))))

(assert (=> b!7669057 (= (matchR!9996 (reg!20829 r!14126) (_1!38034 lt!2662552)) (matchRSpec!4601 (reg!20829 r!14126) (_1!38034 lt!2662552)))))

(declare-fun lt!2662548 () Unit!168012)

(assert (=> b!7669057 (= lt!2662548 (mainMatchTheorem!4579 (reg!20829 r!14126) (_1!38034 lt!2662552)))))

(declare-fun get!25962 (Option!17525) tuple2!69462)

(assert (=> b!7669057 (= lt!2662552 (get!25962 lt!2662551))))

(declare-fun b!7669058 () Bool)

(declare-fun res!3067504 () Bool)

(assert (=> b!7669058 (=> (not res!3067504) (not e!4554781))))

(declare-fun isEmpty!41864 (List!73351) Bool)

(assert (=> b!7669058 (= res!3067504 (not (isEmpty!41864 s!9605)))))

(assert (= (and start!736382 res!3067506) b!7669052))

(assert (= (and b!7669052 res!3067507) b!7669058))

(assert (= (and b!7669058 res!3067504) b!7669048))

(assert (= (and b!7669048 (not res!3067505)) b!7669057))

(assert (= (and b!7669057 c!1412399) b!7669050))

(assert (= (and b!7669057 (not c!1412399)) b!7669053))

(assert (= (and b!7669050 res!3067508) b!7669055))

(assert (= (and b!7669057 (not res!3067503)) b!7669056))

(assert (= (and start!736382 (is-ElementMatch!20500 r!14126)) b!7669054))

(assert (= (and start!736382 (is-Concat!29345 r!14126)) b!7669049))

(assert (= (and start!736382 (is-Star!20500 r!14126)) b!7669051))

(assert (= (and start!736382 (is-Union!20500 r!14126)) b!7669046))

(assert (= (and start!736382 (is-Cons!73227 s!9605)) b!7669047))

(declare-fun m!8173682 () Bool)

(assert (=> b!7669058 m!8173682))

(declare-fun m!8173684 () Bool)

(assert (=> start!736382 m!8173684))

(declare-fun m!8173686 () Bool)

(assert (=> b!7669048 m!8173686))

(declare-fun m!8173688 () Bool)

(assert (=> b!7669048 m!8173688))

(declare-fun m!8173690 () Bool)

(assert (=> b!7669048 m!8173690))

(declare-fun m!8173692 () Bool)

(assert (=> b!7669048 m!8173692))

(declare-fun m!8173694 () Bool)

(assert (=> b!7669050 m!8173694))

(declare-fun m!8173696 () Bool)

(assert (=> b!7669050 m!8173696))

(declare-fun m!8173698 () Bool)

(assert (=> b!7669050 m!8173698))

(declare-fun m!8173700 () Bool)

(assert (=> b!7669050 m!8173700))

(declare-fun m!8173702 () Bool)

(assert (=> b!7669050 m!8173702))

(declare-fun m!8173704 () Bool)

(assert (=> b!7669057 m!8173704))

(declare-fun m!8173706 () Bool)

(assert (=> b!7669057 m!8173706))

(declare-fun m!8173708 () Bool)

(assert (=> b!7669057 m!8173708))

(assert (=> b!7669057 m!8173686))

(declare-fun m!8173710 () Bool)

(assert (=> b!7669057 m!8173710))

(declare-fun m!8173712 () Bool)

(assert (=> b!7669057 m!8173712))

(declare-fun m!8173714 () Bool)

(assert (=> b!7669057 m!8173714))

(declare-fun m!8173716 () Bool)

(assert (=> b!7669057 m!8173716))

(declare-fun m!8173718 () Bool)

(assert (=> b!7669057 m!8173718))

(declare-fun m!8173720 () Bool)

(assert (=> b!7669056 m!8173720))

(declare-fun m!8173722 () Bool)

(assert (=> b!7669056 m!8173722))

(push 1)

(assert (not b!7669051))

(assert (not b!7669048))

(assert (not b!7669046))

(assert (not b!7669049))

(assert (not start!736382))

(assert tp_is_empty!51355)

(assert (not b!7669057))

(assert (not b!7669058))

(assert (not b!7669047))

(assert (not b!7669050))

(assert (not b!7669056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2328526 () Bool)

(declare-fun choose!59090 (Int) Bool)

(assert (=> d!2328526 (= (Exists!4625 lambda!470030) (choose!59090 lambda!470030))))

(declare-fun bs!1946443 () Bool)

(assert (= bs!1946443 d!2328526))

(declare-fun m!8173766 () Bool)

(assert (=> bs!1946443 m!8173766))

(assert (=> b!7669048 d!2328526))

(declare-fun d!2328530 () Bool)

(declare-fun isEmpty!41866 (Option!17525) Bool)

(assert (=> d!2328530 (= (isDefined!14141 lt!2662551) (not (isEmpty!41866 lt!2662551)))))

(declare-fun bs!1946444 () Bool)

(assert (= bs!1946444 d!2328530))

(declare-fun m!8173768 () Bool)

(assert (=> bs!1946444 m!8173768))

(assert (=> b!7669048 d!2328530))

(declare-fun b!7669154 () Bool)

(declare-fun res!3067559 () Bool)

(declare-fun e!4554834 () Bool)

(assert (=> b!7669154 (=> (not res!3067559) (not e!4554834))))

(declare-fun lt!2662595 () Option!17525)

(assert (=> b!7669154 (= res!3067559 (matchR!9996 r!14126 (_2!38034 (get!25962 lt!2662595))))))

(declare-fun b!7669155 () Bool)

(declare-fun e!4554836 () Bool)

(assert (=> b!7669155 (= e!4554836 (not (isDefined!14141 lt!2662595)))))

(declare-fun b!7669156 () Bool)

(declare-fun res!3067563 () Bool)

(assert (=> b!7669156 (=> (not res!3067563) (not e!4554834))))

(assert (=> b!7669156 (= res!3067563 (matchR!9996 (reg!20829 r!14126) (_1!38034 (get!25962 lt!2662595))))))

(declare-fun b!7669157 () Bool)

(declare-fun e!4554837 () Bool)

(assert (=> b!7669157 (= e!4554837 (matchR!9996 r!14126 s!9605))))

(declare-fun b!7669158 () Bool)

(assert (=> b!7669158 (= e!4554834 (= (++!17722 (_1!38034 (get!25962 lt!2662595)) (_2!38034 (get!25962 lt!2662595))) s!9605))))

(declare-fun b!7669159 () Bool)

(declare-fun lt!2662596 () Unit!168012)

(declare-fun lt!2662597 () Unit!168012)

(assert (=> b!7669159 (= lt!2662596 lt!2662597)))

(assert (=> b!7669159 (= (++!17722 (++!17722 Nil!73227 (Cons!73227 (h!79675 s!9605) Nil!73227)) (t!388086 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3275 (List!73351 C!41326 List!73351 List!73351) Unit!168012)

(assert (=> b!7669159 (= lt!2662597 (lemmaMoveElementToOtherListKeepsConcatEq!3275 Nil!73227 (h!79675 s!9605) (t!388086 s!9605) s!9605))))

(declare-fun e!4554838 () Option!17525)

(assert (=> b!7669159 (= e!4554838 (findConcatSeparation!3555 (reg!20829 r!14126) r!14126 (++!17722 Nil!73227 (Cons!73227 (h!79675 s!9605) Nil!73227)) (t!388086 s!9605) s!9605))))

(declare-fun b!7669160 () Bool)

(declare-fun e!4554835 () Option!17525)

(assert (=> b!7669160 (= e!4554835 (Some!17524 (tuple2!69463 Nil!73227 s!9605)))))

(declare-fun d!2328532 () Bool)

(assert (=> d!2328532 e!4554836))

(declare-fun res!3067561 () Bool)

(assert (=> d!2328532 (=> res!3067561 e!4554836)))

(assert (=> d!2328532 (= res!3067561 e!4554834)))

(declare-fun res!3067562 () Bool)

(assert (=> d!2328532 (=> (not res!3067562) (not e!4554834))))

(assert (=> d!2328532 (= res!3067562 (isDefined!14141 lt!2662595))))

(assert (=> d!2328532 (= lt!2662595 e!4554835)))

(declare-fun c!1412414 () Bool)

(assert (=> d!2328532 (= c!1412414 e!4554837)))

(declare-fun res!3067560 () Bool)

(assert (=> d!2328532 (=> (not res!3067560) (not e!4554837))))

(assert (=> d!2328532 (= res!3067560 (matchR!9996 (reg!20829 r!14126) Nil!73227))))

(assert (=> d!2328532 (validRegex!10918 (reg!20829 r!14126))))

(assert (=> d!2328532 (= (findConcatSeparation!3555 (reg!20829 r!14126) r!14126 Nil!73227 s!9605 s!9605) lt!2662595)))

(declare-fun b!7669161 () Bool)

(assert (=> b!7669161 (= e!4554835 e!4554838)))

(declare-fun c!1412413 () Bool)

(assert (=> b!7669161 (= c!1412413 (is-Nil!73227 s!9605))))

(declare-fun b!7669162 () Bool)

(assert (=> b!7669162 (= e!4554838 None!17524)))

(assert (= (and d!2328532 res!3067560) b!7669157))

(assert (= (and d!2328532 c!1412414) b!7669160))

(assert (= (and d!2328532 (not c!1412414)) b!7669161))

(assert (= (and b!7669161 c!1412413) b!7669162))

(assert (= (and b!7669161 (not c!1412413)) b!7669159))

(assert (= (and d!2328532 res!3067562) b!7669156))

(assert (= (and b!7669156 res!3067563) b!7669154))

(assert (= (and b!7669154 res!3067559) b!7669158))

(assert (= (and d!2328532 (not res!3067561)) b!7669155))

(assert (=> b!7669157 m!8173710))

(declare-fun m!8173770 () Bool)

(assert (=> b!7669154 m!8173770))

(declare-fun m!8173772 () Bool)

(assert (=> b!7669154 m!8173772))

(declare-fun m!8173774 () Bool)

(assert (=> d!2328532 m!8173774))

(declare-fun m!8173776 () Bool)

(assert (=> d!2328532 m!8173776))

(assert (=> d!2328532 m!8173720))

(declare-fun m!8173778 () Bool)

(assert (=> b!7669159 m!8173778))

(assert (=> b!7669159 m!8173778))

(declare-fun m!8173780 () Bool)

(assert (=> b!7669159 m!8173780))

(declare-fun m!8173782 () Bool)

(assert (=> b!7669159 m!8173782))

(assert (=> b!7669159 m!8173778))

(declare-fun m!8173784 () Bool)

(assert (=> b!7669159 m!8173784))

(assert (=> b!7669156 m!8173770))

(declare-fun m!8173786 () Bool)

(assert (=> b!7669156 m!8173786))

(assert (=> b!7669155 m!8173774))

(assert (=> b!7669158 m!8173770))

(declare-fun m!8173788 () Bool)

(assert (=> b!7669158 m!8173788))

(assert (=> b!7669048 d!2328532))

(declare-fun bs!1946447 () Bool)

(declare-fun d!2328534 () Bool)

(assert (= bs!1946447 (and d!2328534 b!7669048)))

(declare-fun lambda!470040 () Int)

(assert (=> bs!1946447 (= lambda!470040 lambda!470030)))

(assert (=> d!2328534 true))

(assert (=> d!2328534 true))

(assert (=> d!2328534 true))

(assert (=> d!2328534 (= (isDefined!14141 (findConcatSeparation!3555 (reg!20829 r!14126) r!14126 Nil!73227 s!9605 s!9605)) (Exists!4625 lambda!470040))))

(declare-fun lt!2662600 () Unit!168012)

(declare-fun choose!59091 (Regex!20500 Regex!20500 List!73351) Unit!168012)

(assert (=> d!2328534 (= lt!2662600 (choose!59091 (reg!20829 r!14126) r!14126 s!9605))))

(assert (=> d!2328534 (validRegex!10918 (reg!20829 r!14126))))

(assert (=> d!2328534 (= (lemmaFindConcatSeparationEquivalentToExists!3313 (reg!20829 r!14126) r!14126 s!9605) lt!2662600)))

(declare-fun bs!1946448 () Bool)

(assert (= bs!1946448 d!2328534))

(declare-fun m!8173800 () Bool)

(assert (=> bs!1946448 m!8173800))

(assert (=> bs!1946448 m!8173720))

(declare-fun m!8173802 () Bool)

(assert (=> bs!1946448 m!8173802))

(assert (=> bs!1946448 m!8173690))

(assert (=> bs!1946448 m!8173690))

(declare-fun m!8173804 () Bool)

(assert (=> bs!1946448 m!8173804))

(assert (=> b!7669048 d!2328534))

(declare-fun d!2328542 () Bool)

(assert (=> d!2328542 (= (isEmpty!41864 s!9605) (is-Nil!73227 s!9605))))

(assert (=> b!7669058 d!2328542))

(declare-fun bm!705201 () Bool)

(declare-fun call!705206 () Bool)

(assert (=> bm!705201 (= call!705206 (isEmpty!41864 s!9605))))

(declare-fun b!7669204 () Bool)

(declare-fun e!4554865 () Bool)

(declare-fun e!4554866 () Bool)

(assert (=> b!7669204 (= e!4554865 e!4554866)))

(declare-fun res!3067592 () Bool)

(assert (=> b!7669204 (=> (not res!3067592) (not e!4554866))))

(declare-fun lt!2662603 () Bool)

(assert (=> b!7669204 (= res!3067592 (not lt!2662603))))

(declare-fun b!7669205 () Bool)

(declare-fun res!3067589 () Bool)

(assert (=> b!7669205 (=> res!3067589 e!4554865)))

(assert (=> b!7669205 (= res!3067589 (not (is-ElementMatch!20500 r!14126)))))

(declare-fun e!4554863 () Bool)

(assert (=> b!7669205 (= e!4554863 e!4554865)))

(declare-fun d!2328544 () Bool)

(declare-fun e!4554864 () Bool)

(assert (=> d!2328544 e!4554864))

(declare-fun c!1412425 () Bool)

(assert (=> d!2328544 (= c!1412425 (is-EmptyExpr!20500 r!14126))))

(declare-fun e!4554867 () Bool)

(assert (=> d!2328544 (= lt!2662603 e!4554867)))

(declare-fun c!1412423 () Bool)

(assert (=> d!2328544 (= c!1412423 (isEmpty!41864 s!9605))))

(assert (=> d!2328544 (validRegex!10918 r!14126)))

(assert (=> d!2328544 (= (matchR!9996 r!14126 s!9605) lt!2662603)))

(declare-fun b!7669206 () Bool)

(assert (=> b!7669206 (= e!4554863 (not lt!2662603))))

(declare-fun b!7669207 () Bool)

(declare-fun e!4554868 () Bool)

(assert (=> b!7669207 (= e!4554866 e!4554868)))

(declare-fun res!3067596 () Bool)

(assert (=> b!7669207 (=> res!3067596 e!4554868)))

(assert (=> b!7669207 (= res!3067596 call!705206)))

(declare-fun b!7669208 () Bool)

(declare-fun res!3067590 () Bool)

(declare-fun e!4554862 () Bool)

(assert (=> b!7669208 (=> (not res!3067590) (not e!4554862))))

(declare-fun tail!15297 (List!73351) List!73351)

(assert (=> b!7669208 (= res!3067590 (isEmpty!41864 (tail!15297 s!9605)))))

(declare-fun b!7669209 () Bool)

(declare-fun res!3067594 () Bool)

(assert (=> b!7669209 (=> res!3067594 e!4554865)))

(assert (=> b!7669209 (= res!3067594 e!4554862)))

(declare-fun res!3067595 () Bool)

(assert (=> b!7669209 (=> (not res!3067595) (not e!4554862))))

(assert (=> b!7669209 (= res!3067595 lt!2662603)))

(declare-fun b!7669210 () Bool)

(declare-fun head!15757 (List!73351) C!41326)

(assert (=> b!7669210 (= e!4554868 (not (= (head!15757 s!9605) (c!1412400 r!14126))))))

(declare-fun b!7669211 () Bool)

(declare-fun res!3067591 () Bool)

(assert (=> b!7669211 (=> res!3067591 e!4554868)))

(assert (=> b!7669211 (= res!3067591 (not (isEmpty!41864 (tail!15297 s!9605))))))

(declare-fun b!7669212 () Bool)

(declare-fun derivativeStep!5957 (Regex!20500 C!41326) Regex!20500)

(assert (=> b!7669212 (= e!4554867 (matchR!9996 (derivativeStep!5957 r!14126 (head!15757 s!9605)) (tail!15297 s!9605)))))

(declare-fun b!7669213 () Bool)

(declare-fun nullable!8991 (Regex!20500) Bool)

(assert (=> b!7669213 (= e!4554867 (nullable!8991 r!14126))))

(declare-fun b!7669214 () Bool)

(declare-fun res!3067593 () Bool)

(assert (=> b!7669214 (=> (not res!3067593) (not e!4554862))))

(assert (=> b!7669214 (= res!3067593 (not call!705206))))

(declare-fun b!7669215 () Bool)

(assert (=> b!7669215 (= e!4554864 e!4554863)))

(declare-fun c!1412424 () Bool)

(assert (=> b!7669215 (= c!1412424 (is-EmptyLang!20500 r!14126))))

(declare-fun b!7669216 () Bool)

(assert (=> b!7669216 (= e!4554864 (= lt!2662603 call!705206))))

(declare-fun b!7669217 () Bool)

(assert (=> b!7669217 (= e!4554862 (= (head!15757 s!9605) (c!1412400 r!14126)))))

(assert (= (and d!2328544 c!1412423) b!7669213))

(assert (= (and d!2328544 (not c!1412423)) b!7669212))

(assert (= (and d!2328544 c!1412425) b!7669216))

(assert (= (and d!2328544 (not c!1412425)) b!7669215))

(assert (= (and b!7669215 c!1412424) b!7669206))

(assert (= (and b!7669215 (not c!1412424)) b!7669205))

(assert (= (and b!7669205 (not res!3067589)) b!7669209))

(assert (= (and b!7669209 res!3067595) b!7669214))

(assert (= (and b!7669214 res!3067593) b!7669208))

(assert (= (and b!7669208 res!3067590) b!7669217))

(assert (= (and b!7669209 (not res!3067594)) b!7669204))

(assert (= (and b!7669204 res!3067592) b!7669207))

(assert (= (and b!7669207 (not res!3067596)) b!7669211))

(assert (= (and b!7669211 (not res!3067591)) b!7669210))

(assert (= (or b!7669216 b!7669207 b!7669214) bm!705201))

(assert (=> d!2328544 m!8173682))

(assert (=> d!2328544 m!8173684))

(declare-fun m!8173806 () Bool)

(assert (=> b!7669210 m!8173806))

(assert (=> b!7669212 m!8173806))

(assert (=> b!7669212 m!8173806))

(declare-fun m!8173808 () Bool)

(assert (=> b!7669212 m!8173808))

(declare-fun m!8173810 () Bool)

(assert (=> b!7669212 m!8173810))

(assert (=> b!7669212 m!8173808))

(assert (=> b!7669212 m!8173810))

(declare-fun m!8173812 () Bool)

(assert (=> b!7669212 m!8173812))

(assert (=> b!7669208 m!8173810))

(assert (=> b!7669208 m!8173810))

(declare-fun m!8173814 () Bool)

(assert (=> b!7669208 m!8173814))

(declare-fun m!8173816 () Bool)

(assert (=> b!7669213 m!8173816))

(assert (=> bm!705201 m!8173682))

(assert (=> b!7669217 m!8173806))

(assert (=> b!7669211 m!8173810))

(assert (=> b!7669211 m!8173810))

(assert (=> b!7669211 m!8173814))

(assert (=> b!7669057 d!2328544))

(declare-fun d!2328546 () Bool)

(assert (=> d!2328546 (= (matchR!9996 (reg!20829 r!14126) (_1!38034 lt!2662552)) (matchRSpec!4601 (reg!20829 r!14126) (_1!38034 lt!2662552)))))

(declare-fun lt!2662606 () Unit!168012)

(declare-fun choose!59092 (Regex!20500 List!73351) Unit!168012)

(assert (=> d!2328546 (= lt!2662606 (choose!59092 (reg!20829 r!14126) (_1!38034 lt!2662552)))))

(assert (=> d!2328546 (validRegex!10918 (reg!20829 r!14126))))

(assert (=> d!2328546 (= (mainMatchTheorem!4579 (reg!20829 r!14126) (_1!38034 lt!2662552)) lt!2662606)))

(declare-fun bs!1946449 () Bool)

(assert (= bs!1946449 d!2328546))

(assert (=> bs!1946449 m!8173716))

(assert (=> bs!1946449 m!8173714))

(declare-fun m!8173818 () Bool)

(assert (=> bs!1946449 m!8173818))

(assert (=> bs!1946449 m!8173720))

(assert (=> b!7669057 d!2328546))

(declare-fun bm!705202 () Bool)

(declare-fun call!705207 () Bool)

(assert (=> bm!705202 (= call!705207 (isEmpty!41864 (_2!38034 lt!2662552)))))

(declare-fun b!7669218 () Bool)

(declare-fun e!4554872 () Bool)

(declare-fun e!4554873 () Bool)

(assert (=> b!7669218 (= e!4554872 e!4554873)))

(declare-fun res!3067600 () Bool)

(assert (=> b!7669218 (=> (not res!3067600) (not e!4554873))))

(declare-fun lt!2662607 () Bool)

(assert (=> b!7669218 (= res!3067600 (not lt!2662607))))

(declare-fun b!7669219 () Bool)

(declare-fun res!3067597 () Bool)

(assert (=> b!7669219 (=> res!3067597 e!4554872)))

(assert (=> b!7669219 (= res!3067597 (not (is-ElementMatch!20500 r!14126)))))

(declare-fun e!4554870 () Bool)

(assert (=> b!7669219 (= e!4554870 e!4554872)))

(declare-fun d!2328548 () Bool)

(declare-fun e!4554871 () Bool)

(assert (=> d!2328548 e!4554871))

(declare-fun c!1412428 () Bool)

(assert (=> d!2328548 (= c!1412428 (is-EmptyExpr!20500 r!14126))))

(declare-fun e!4554874 () Bool)

(assert (=> d!2328548 (= lt!2662607 e!4554874)))

(declare-fun c!1412426 () Bool)

(assert (=> d!2328548 (= c!1412426 (isEmpty!41864 (_2!38034 lt!2662552)))))

(assert (=> d!2328548 (validRegex!10918 r!14126)))

(assert (=> d!2328548 (= (matchR!9996 r!14126 (_2!38034 lt!2662552)) lt!2662607)))

(declare-fun b!7669220 () Bool)

(assert (=> b!7669220 (= e!4554870 (not lt!2662607))))

(declare-fun b!7669221 () Bool)

(declare-fun e!4554875 () Bool)

(assert (=> b!7669221 (= e!4554873 e!4554875)))

(declare-fun res!3067604 () Bool)

(assert (=> b!7669221 (=> res!3067604 e!4554875)))

(assert (=> b!7669221 (= res!3067604 call!705207)))

(declare-fun b!7669222 () Bool)

(declare-fun res!3067598 () Bool)

(declare-fun e!4554869 () Bool)

(assert (=> b!7669222 (=> (not res!3067598) (not e!4554869))))

(assert (=> b!7669222 (= res!3067598 (isEmpty!41864 (tail!15297 (_2!38034 lt!2662552))))))

(declare-fun b!7669223 () Bool)

(declare-fun res!3067602 () Bool)

(assert (=> b!7669223 (=> res!3067602 e!4554872)))

(assert (=> b!7669223 (= res!3067602 e!4554869)))

(declare-fun res!3067603 () Bool)

(assert (=> b!7669223 (=> (not res!3067603) (not e!4554869))))

(assert (=> b!7669223 (= res!3067603 lt!2662607)))

(declare-fun b!7669224 () Bool)

(assert (=> b!7669224 (= e!4554875 (not (= (head!15757 (_2!38034 lt!2662552)) (c!1412400 r!14126))))))

(declare-fun b!7669225 () Bool)

(declare-fun res!3067599 () Bool)

(assert (=> b!7669225 (=> res!3067599 e!4554875)))

(assert (=> b!7669225 (= res!3067599 (not (isEmpty!41864 (tail!15297 (_2!38034 lt!2662552)))))))

(declare-fun b!7669226 () Bool)

(assert (=> b!7669226 (= e!4554874 (matchR!9996 (derivativeStep!5957 r!14126 (head!15757 (_2!38034 lt!2662552))) (tail!15297 (_2!38034 lt!2662552))))))

(declare-fun b!7669227 () Bool)

(assert (=> b!7669227 (= e!4554874 (nullable!8991 r!14126))))

(declare-fun b!7669228 () Bool)

(declare-fun res!3067601 () Bool)

(assert (=> b!7669228 (=> (not res!3067601) (not e!4554869))))

(assert (=> b!7669228 (= res!3067601 (not call!705207))))

(declare-fun b!7669229 () Bool)

(assert (=> b!7669229 (= e!4554871 e!4554870)))

(declare-fun c!1412427 () Bool)

(assert (=> b!7669229 (= c!1412427 (is-EmptyLang!20500 r!14126))))

(declare-fun b!7669230 () Bool)

(assert (=> b!7669230 (= e!4554871 (= lt!2662607 call!705207))))

(declare-fun b!7669231 () Bool)

(assert (=> b!7669231 (= e!4554869 (= (head!15757 (_2!38034 lt!2662552)) (c!1412400 r!14126)))))

(assert (= (and d!2328548 c!1412426) b!7669227))

(assert (= (and d!2328548 (not c!1412426)) b!7669226))

(assert (= (and d!2328548 c!1412428) b!7669230))

(assert (= (and d!2328548 (not c!1412428)) b!7669229))

(assert (= (and b!7669229 c!1412427) b!7669220))

(assert (= (and b!7669229 (not c!1412427)) b!7669219))

(assert (= (and b!7669219 (not res!3067597)) b!7669223))

(assert (= (and b!7669223 res!3067603) b!7669228))

(assert (= (and b!7669228 res!3067601) b!7669222))

(assert (= (and b!7669222 res!3067598) b!7669231))

(assert (= (and b!7669223 (not res!3067602)) b!7669218))

(assert (= (and b!7669218 res!3067600) b!7669221))

(assert (= (and b!7669221 (not res!3067604)) b!7669225))

(assert (= (and b!7669225 (not res!3067599)) b!7669224))

(assert (= (or b!7669230 b!7669221 b!7669228) bm!705202))

(declare-fun m!8173820 () Bool)

(assert (=> d!2328548 m!8173820))

(assert (=> d!2328548 m!8173684))

(declare-fun m!8173822 () Bool)

(assert (=> b!7669224 m!8173822))

(assert (=> b!7669226 m!8173822))

(assert (=> b!7669226 m!8173822))

(declare-fun m!8173824 () Bool)

(assert (=> b!7669226 m!8173824))

(declare-fun m!8173826 () Bool)

(assert (=> b!7669226 m!8173826))

(assert (=> b!7669226 m!8173824))

(assert (=> b!7669226 m!8173826))

(declare-fun m!8173828 () Bool)

(assert (=> b!7669226 m!8173828))

(assert (=> b!7669222 m!8173826))

(assert (=> b!7669222 m!8173826))

(declare-fun m!8173830 () Bool)

(assert (=> b!7669222 m!8173830))

(assert (=> b!7669227 m!8173816))

(assert (=> bm!705202 m!8173820))

(assert (=> b!7669231 m!8173822))

(assert (=> b!7669225 m!8173826))

(assert (=> b!7669225 m!8173826))

(assert (=> b!7669225 m!8173830))

(assert (=> b!7669057 d!2328548))

(declare-fun bs!1946450 () Bool)

(declare-fun b!7669287 () Bool)

(assert (= bs!1946450 (and b!7669287 b!7669048)))

(declare-fun lambda!470045 () Int)

(assert (=> bs!1946450 (not (= lambda!470045 lambda!470030))))

(declare-fun bs!1946451 () Bool)

(assert (= bs!1946451 (and b!7669287 d!2328534)))

(assert (=> bs!1946451 (not (= lambda!470045 lambda!470040))))

(assert (=> b!7669287 true))

(assert (=> b!7669287 true))

(declare-fun bs!1946452 () Bool)

(declare-fun b!7669286 () Bool)

(assert (= bs!1946452 (and b!7669286 b!7669048)))

(declare-fun lambda!470046 () Int)

(assert (=> bs!1946452 (not (= lambda!470046 lambda!470030))))

(declare-fun bs!1946453 () Bool)

(assert (= bs!1946453 (and b!7669286 d!2328534)))

(assert (=> bs!1946453 (not (= lambda!470046 lambda!470040))))

(declare-fun bs!1946454 () Bool)

(assert (= bs!1946454 (and b!7669286 b!7669287)))

(assert (=> bs!1946454 (not (= lambda!470046 lambda!470045))))

(assert (=> b!7669286 true))

(assert (=> b!7669286 true))

(declare-fun d!2328550 () Bool)

(declare-fun c!1412443 () Bool)

(assert (=> d!2328550 (= c!1412443 (is-EmptyExpr!20500 r!14126))))

(declare-fun e!4554910 () Bool)

(assert (=> d!2328550 (= (matchRSpec!4601 r!14126 (_2!38034 lt!2662552)) e!4554910)))

(declare-fun b!7669282 () Bool)

(declare-fun e!4554908 () Bool)

(assert (=> b!7669282 (= e!4554910 e!4554908)))

(declare-fun res!3067631 () Bool)

(assert (=> b!7669282 (= res!3067631 (not (is-EmptyLang!20500 r!14126)))))

(assert (=> b!7669282 (=> (not res!3067631) (not e!4554908))))

(declare-fun b!7669283 () Bool)

(declare-fun c!1412442 () Bool)

(assert (=> b!7669283 (= c!1412442 (is-Union!20500 r!14126))))

(declare-fun e!4554906 () Bool)

(declare-fun e!4554905 () Bool)

(assert (=> b!7669283 (= e!4554906 e!4554905)))

(declare-fun b!7669284 () Bool)

(declare-fun e!4554904 () Bool)

(assert (=> b!7669284 (= e!4554905 e!4554904)))

(declare-fun res!3067633 () Bool)

(assert (=> b!7669284 (= res!3067633 (matchRSpec!4601 (regOne!41513 r!14126) (_2!38034 lt!2662552)))))

(assert (=> b!7669284 (=> res!3067633 e!4554904)))

(declare-fun b!7669285 () Bool)

(declare-fun call!705212 () Bool)

(assert (=> b!7669285 (= e!4554910 call!705212)))

(declare-fun bm!705207 () Bool)

(assert (=> bm!705207 (= call!705212 (isEmpty!41864 (_2!38034 lt!2662552)))))

(declare-fun e!4554909 () Bool)

(declare-fun call!705213 () Bool)

(assert (=> b!7669286 (= e!4554909 call!705213)))

(declare-fun bm!705208 () Bool)

(declare-fun c!1412441 () Bool)

(assert (=> bm!705208 (= call!705213 (Exists!4625 (ite c!1412441 lambda!470045 lambda!470046)))))

(declare-fun e!4554907 () Bool)

(assert (=> b!7669287 (= e!4554907 call!705213)))

(declare-fun b!7669288 () Bool)

(assert (=> b!7669288 (= e!4554905 e!4554909)))

(assert (=> b!7669288 (= c!1412441 (is-Star!20500 r!14126))))

(declare-fun b!7669289 () Bool)

(declare-fun c!1412444 () Bool)

(assert (=> b!7669289 (= c!1412444 (is-ElementMatch!20500 r!14126))))

(assert (=> b!7669289 (= e!4554908 e!4554906)))

(declare-fun b!7669290 () Bool)

(assert (=> b!7669290 (= e!4554904 (matchRSpec!4601 (regTwo!41513 r!14126) (_2!38034 lt!2662552)))))

(declare-fun b!7669291 () Bool)

(declare-fun res!3067632 () Bool)

(assert (=> b!7669291 (=> res!3067632 e!4554907)))

(assert (=> b!7669291 (= res!3067632 call!705212)))

(assert (=> b!7669291 (= e!4554909 e!4554907)))

(declare-fun b!7669292 () Bool)

(assert (=> b!7669292 (= e!4554906 (= (_2!38034 lt!2662552) (Cons!73227 (c!1412400 r!14126) Nil!73227)))))

(assert (= (and d!2328550 c!1412443) b!7669285))

(assert (= (and d!2328550 (not c!1412443)) b!7669282))

(assert (= (and b!7669282 res!3067631) b!7669289))

(assert (= (and b!7669289 c!1412444) b!7669292))

(assert (= (and b!7669289 (not c!1412444)) b!7669283))

(assert (= (and b!7669283 c!1412442) b!7669284))

(assert (= (and b!7669283 (not c!1412442)) b!7669288))

(assert (= (and b!7669284 (not res!3067633)) b!7669290))

(assert (= (and b!7669288 c!1412441) b!7669291))

(assert (= (and b!7669288 (not c!1412441)) b!7669286))

(assert (= (and b!7669291 (not res!3067632)) b!7669287))

(assert (= (or b!7669287 b!7669286) bm!705208))

(assert (= (or b!7669285 b!7669291) bm!705207))

(declare-fun m!8173832 () Bool)

(assert (=> b!7669284 m!8173832))

(assert (=> bm!705207 m!8173820))

(declare-fun m!8173834 () Bool)

(assert (=> bm!705208 m!8173834))

(declare-fun m!8173836 () Bool)

(assert (=> b!7669290 m!8173836))

(assert (=> b!7669057 d!2328550))

(declare-fun bs!1946455 () Bool)

(declare-fun b!7669307 () Bool)

(assert (= bs!1946455 (and b!7669307 b!7669048)))

(declare-fun lambda!470047 () Int)

(assert (=> bs!1946455 (not (= lambda!470047 lambda!470030))))

(declare-fun bs!1946456 () Bool)

(assert (= bs!1946456 (and b!7669307 d!2328534)))

(assert (=> bs!1946456 (not (= lambda!470047 lambda!470040))))

(declare-fun bs!1946457 () Bool)

(assert (= bs!1946457 (and b!7669307 b!7669287)))

(assert (=> bs!1946457 (= (and (= (_1!38034 lt!2662552) (_2!38034 lt!2662552)) (= (reg!20829 (reg!20829 r!14126)) (reg!20829 r!14126)) (= (reg!20829 r!14126) r!14126)) (= lambda!470047 lambda!470045))))

(declare-fun bs!1946458 () Bool)

(assert (= bs!1946458 (and b!7669307 b!7669286)))

(assert (=> bs!1946458 (not (= lambda!470047 lambda!470046))))

(assert (=> b!7669307 true))

(assert (=> b!7669307 true))

(declare-fun bs!1946459 () Bool)

(declare-fun b!7669306 () Bool)

(assert (= bs!1946459 (and b!7669306 b!7669307)))

(declare-fun lambda!470048 () Int)

(assert (=> bs!1946459 (not (= lambda!470048 lambda!470047))))

(declare-fun bs!1946460 () Bool)

(assert (= bs!1946460 (and b!7669306 b!7669287)))

(assert (=> bs!1946460 (not (= lambda!470048 lambda!470045))))

(declare-fun bs!1946461 () Bool)

(assert (= bs!1946461 (and b!7669306 b!7669048)))

(assert (=> bs!1946461 (not (= lambda!470048 lambda!470030))))

(declare-fun bs!1946462 () Bool)

(assert (= bs!1946462 (and b!7669306 d!2328534)))

(assert (=> bs!1946462 (not (= lambda!470048 lambda!470040))))

(declare-fun bs!1946463 () Bool)

(assert (= bs!1946463 (and b!7669306 b!7669286)))

(assert (=> bs!1946463 (= (and (= (_1!38034 lt!2662552) (_2!38034 lt!2662552)) (= (regOne!41512 (reg!20829 r!14126)) (regOne!41512 r!14126)) (= (regTwo!41512 (reg!20829 r!14126)) (regTwo!41512 r!14126))) (= lambda!470048 lambda!470046))))

(assert (=> b!7669306 true))

(assert (=> b!7669306 true))

(declare-fun d!2328552 () Bool)

(declare-fun c!1412449 () Bool)

(assert (=> d!2328552 (= c!1412449 (is-EmptyExpr!20500 (reg!20829 r!14126)))))

(declare-fun e!4554922 () Bool)

(assert (=> d!2328552 (= (matchRSpec!4601 (reg!20829 r!14126) (_1!38034 lt!2662552)) e!4554922)))

(declare-fun b!7669302 () Bool)

(declare-fun e!4554920 () Bool)

(assert (=> b!7669302 (= e!4554922 e!4554920)))

(declare-fun res!3067639 () Bool)

(assert (=> b!7669302 (= res!3067639 (not (is-EmptyLang!20500 (reg!20829 r!14126))))))

(assert (=> b!7669302 (=> (not res!3067639) (not e!4554920))))

(declare-fun b!7669303 () Bool)

(declare-fun c!1412448 () Bool)

(assert (=> b!7669303 (= c!1412448 (is-Union!20500 (reg!20829 r!14126)))))

(declare-fun e!4554918 () Bool)

(declare-fun e!4554917 () Bool)

(assert (=> b!7669303 (= e!4554918 e!4554917)))

(declare-fun b!7669304 () Bool)

(declare-fun e!4554916 () Bool)

(assert (=> b!7669304 (= e!4554917 e!4554916)))

(declare-fun res!3067641 () Bool)

(assert (=> b!7669304 (= res!3067641 (matchRSpec!4601 (regOne!41513 (reg!20829 r!14126)) (_1!38034 lt!2662552)))))

(assert (=> b!7669304 (=> res!3067641 e!4554916)))

(declare-fun b!7669305 () Bool)

(declare-fun call!705214 () Bool)

(assert (=> b!7669305 (= e!4554922 call!705214)))

(declare-fun bm!705209 () Bool)

(assert (=> bm!705209 (= call!705214 (isEmpty!41864 (_1!38034 lt!2662552)))))

(declare-fun e!4554921 () Bool)

(declare-fun call!705215 () Bool)

(assert (=> b!7669306 (= e!4554921 call!705215)))

(declare-fun c!1412447 () Bool)

(declare-fun bm!705210 () Bool)

(assert (=> bm!705210 (= call!705215 (Exists!4625 (ite c!1412447 lambda!470047 lambda!470048)))))

(declare-fun e!4554919 () Bool)

(assert (=> b!7669307 (= e!4554919 call!705215)))

(declare-fun b!7669308 () Bool)

(assert (=> b!7669308 (= e!4554917 e!4554921)))

(assert (=> b!7669308 (= c!1412447 (is-Star!20500 (reg!20829 r!14126)))))

(declare-fun b!7669309 () Bool)

(declare-fun c!1412450 () Bool)

(assert (=> b!7669309 (= c!1412450 (is-ElementMatch!20500 (reg!20829 r!14126)))))

(assert (=> b!7669309 (= e!4554920 e!4554918)))

(declare-fun b!7669310 () Bool)

(assert (=> b!7669310 (= e!4554916 (matchRSpec!4601 (regTwo!41513 (reg!20829 r!14126)) (_1!38034 lt!2662552)))))

(declare-fun b!7669311 () Bool)

(declare-fun res!3067640 () Bool)

(assert (=> b!7669311 (=> res!3067640 e!4554919)))

(assert (=> b!7669311 (= res!3067640 call!705214)))

(assert (=> b!7669311 (= e!4554921 e!4554919)))

(declare-fun b!7669312 () Bool)

(assert (=> b!7669312 (= e!4554918 (= (_1!38034 lt!2662552) (Cons!73227 (c!1412400 (reg!20829 r!14126)) Nil!73227)))))

(assert (= (and d!2328552 c!1412449) b!7669305))

(assert (= (and d!2328552 (not c!1412449)) b!7669302))

(assert (= (and b!7669302 res!3067639) b!7669309))

(assert (= (and b!7669309 c!1412450) b!7669312))

(assert (= (and b!7669309 (not c!1412450)) b!7669303))

(assert (= (and b!7669303 c!1412448) b!7669304))

(assert (= (and b!7669303 (not c!1412448)) b!7669308))

(assert (= (and b!7669304 (not res!3067641)) b!7669310))

(assert (= (and b!7669308 c!1412447) b!7669311))

(assert (= (and b!7669308 (not c!1412447)) b!7669306))

(assert (= (and b!7669311 (not res!3067640)) b!7669307))

(assert (= (or b!7669307 b!7669306) bm!705210))

(assert (= (or b!7669305 b!7669311) bm!705209))

(declare-fun m!8173844 () Bool)

(assert (=> b!7669304 m!8173844))

(declare-fun m!8173846 () Bool)

(assert (=> bm!705209 m!8173846))

(declare-fun m!8173850 () Bool)

(assert (=> bm!705210 m!8173850))

(declare-fun m!8173852 () Bool)

(assert (=> b!7669310 m!8173852))

(assert (=> b!7669057 d!2328552))

(declare-fun bm!705211 () Bool)

(declare-fun call!705216 () Bool)

(assert (=> bm!705211 (= call!705216 (isEmpty!41864 (_1!38034 lt!2662552)))))

(declare-fun b!7669313 () Bool)

(declare-fun e!4554926 () Bool)

(declare-fun e!4554927 () Bool)

(assert (=> b!7669313 (= e!4554926 e!4554927)))

(declare-fun res!3067645 () Bool)

(assert (=> b!7669313 (=> (not res!3067645) (not e!4554927))))

(declare-fun lt!2662617 () Bool)

(assert (=> b!7669313 (= res!3067645 (not lt!2662617))))

(declare-fun b!7669314 () Bool)

(declare-fun res!3067642 () Bool)

(assert (=> b!7669314 (=> res!3067642 e!4554926)))

(assert (=> b!7669314 (= res!3067642 (not (is-ElementMatch!20500 (reg!20829 r!14126))))))

(declare-fun e!4554924 () Bool)

(assert (=> b!7669314 (= e!4554924 e!4554926)))

(declare-fun d!2328554 () Bool)

(declare-fun e!4554925 () Bool)

(assert (=> d!2328554 e!4554925))

(declare-fun c!1412453 () Bool)

(assert (=> d!2328554 (= c!1412453 (is-EmptyExpr!20500 (reg!20829 r!14126)))))

(declare-fun e!4554928 () Bool)

(assert (=> d!2328554 (= lt!2662617 e!4554928)))

(declare-fun c!1412451 () Bool)

(assert (=> d!2328554 (= c!1412451 (isEmpty!41864 (_1!38034 lt!2662552)))))

(assert (=> d!2328554 (validRegex!10918 (reg!20829 r!14126))))

(assert (=> d!2328554 (= (matchR!9996 (reg!20829 r!14126) (_1!38034 lt!2662552)) lt!2662617)))

(declare-fun b!7669315 () Bool)

(assert (=> b!7669315 (= e!4554924 (not lt!2662617))))

(declare-fun b!7669316 () Bool)

(declare-fun e!4554929 () Bool)

(assert (=> b!7669316 (= e!4554927 e!4554929)))

(declare-fun res!3067649 () Bool)

(assert (=> b!7669316 (=> res!3067649 e!4554929)))

(assert (=> b!7669316 (= res!3067649 call!705216)))

(declare-fun b!7669317 () Bool)

(declare-fun res!3067643 () Bool)

(declare-fun e!4554923 () Bool)

(assert (=> b!7669317 (=> (not res!3067643) (not e!4554923))))

(assert (=> b!7669317 (= res!3067643 (isEmpty!41864 (tail!15297 (_1!38034 lt!2662552))))))

(declare-fun b!7669318 () Bool)

(declare-fun res!3067647 () Bool)

(assert (=> b!7669318 (=> res!3067647 e!4554926)))

(assert (=> b!7669318 (= res!3067647 e!4554923)))

(declare-fun res!3067648 () Bool)

(assert (=> b!7669318 (=> (not res!3067648) (not e!4554923))))

(assert (=> b!7669318 (= res!3067648 lt!2662617)))

(declare-fun b!7669319 () Bool)

(assert (=> b!7669319 (= e!4554929 (not (= (head!15757 (_1!38034 lt!2662552)) (c!1412400 (reg!20829 r!14126)))))))

(declare-fun b!7669320 () Bool)

(declare-fun res!3067644 () Bool)

(assert (=> b!7669320 (=> res!3067644 e!4554929)))

(assert (=> b!7669320 (= res!3067644 (not (isEmpty!41864 (tail!15297 (_1!38034 lt!2662552)))))))

(declare-fun b!7669321 () Bool)

(assert (=> b!7669321 (= e!4554928 (matchR!9996 (derivativeStep!5957 (reg!20829 r!14126) (head!15757 (_1!38034 lt!2662552))) (tail!15297 (_1!38034 lt!2662552))))))

(declare-fun b!7669322 () Bool)

(assert (=> b!7669322 (= e!4554928 (nullable!8991 (reg!20829 r!14126)))))

(declare-fun b!7669323 () Bool)

(declare-fun res!3067646 () Bool)

(assert (=> b!7669323 (=> (not res!3067646) (not e!4554923))))

(assert (=> b!7669323 (= res!3067646 (not call!705216))))

(declare-fun b!7669324 () Bool)

(assert (=> b!7669324 (= e!4554925 e!4554924)))

(declare-fun c!1412452 () Bool)

(assert (=> b!7669324 (= c!1412452 (is-EmptyLang!20500 (reg!20829 r!14126)))))

(declare-fun b!7669325 () Bool)

(assert (=> b!7669325 (= e!4554925 (= lt!2662617 call!705216))))

(declare-fun b!7669326 () Bool)

(assert (=> b!7669326 (= e!4554923 (= (head!15757 (_1!38034 lt!2662552)) (c!1412400 (reg!20829 r!14126))))))

(assert (= (and d!2328554 c!1412451) b!7669322))

(assert (= (and d!2328554 (not c!1412451)) b!7669321))

(assert (= (and d!2328554 c!1412453) b!7669325))

(assert (= (and d!2328554 (not c!1412453)) b!7669324))

(assert (= (and b!7669324 c!1412452) b!7669315))

(assert (= (and b!7669324 (not c!1412452)) b!7669314))

(assert (= (and b!7669314 (not res!3067642)) b!7669318))

(assert (= (and b!7669318 res!3067648) b!7669323))

(assert (= (and b!7669323 res!3067646) b!7669317))

(assert (= (and b!7669317 res!3067643) b!7669326))

(assert (= (and b!7669318 (not res!3067647)) b!7669313))

(assert (= (and b!7669313 res!3067645) b!7669316))

(assert (= (and b!7669316 (not res!3067649)) b!7669320))

(assert (= (and b!7669320 (not res!3067644)) b!7669319))

(assert (= (or b!7669325 b!7669316 b!7669323) bm!705211))

(assert (=> d!2328554 m!8173846))

(assert (=> d!2328554 m!8173720))

(declare-fun m!8173866 () Bool)

(assert (=> b!7669319 m!8173866))

(assert (=> b!7669321 m!8173866))

(assert (=> b!7669321 m!8173866))

(declare-fun m!8173868 () Bool)

(assert (=> b!7669321 m!8173868))

(declare-fun m!8173870 () Bool)

(assert (=> b!7669321 m!8173870))

(assert (=> b!7669321 m!8173868))

(assert (=> b!7669321 m!8173870))

(declare-fun m!8173872 () Bool)

(assert (=> b!7669321 m!8173872))

(assert (=> b!7669317 m!8173870))

(assert (=> b!7669317 m!8173870))

(declare-fun m!8173874 () Bool)

(assert (=> b!7669317 m!8173874))

(declare-fun m!8173876 () Bool)

(assert (=> b!7669322 m!8173876))

(assert (=> bm!705211 m!8173846))

(assert (=> b!7669326 m!8173866))

(assert (=> b!7669320 m!8173870))

(assert (=> b!7669320 m!8173870))

(assert (=> b!7669320 m!8173874))

(assert (=> b!7669057 d!2328554))

(declare-fun d!2328558 () Bool)

(assert (=> d!2328558 (= (get!25962 lt!2662551) (v!54659 lt!2662551))))

(assert (=> b!7669057 d!2328558))

(declare-fun d!2328560 () Bool)

(assert (=> d!2328560 (= (matchR!9996 r!14126 (_2!38034 lt!2662552)) (matchRSpec!4601 r!14126 (_2!38034 lt!2662552)))))

(declare-fun lt!2662618 () Unit!168012)

(assert (=> d!2328560 (= lt!2662618 (choose!59092 r!14126 (_2!38034 lt!2662552)))))

(assert (=> d!2328560 (validRegex!10918 r!14126)))

(assert (=> d!2328560 (= (mainMatchTheorem!4579 r!14126 (_2!38034 lt!2662552)) lt!2662618)))

(declare-fun bs!1946464 () Bool)

(assert (= bs!1946464 d!2328560))

(assert (=> bs!1946464 m!8173718))

(assert (=> bs!1946464 m!8173704))

(declare-fun m!8173878 () Bool)

(assert (=> bs!1946464 m!8173878))

(assert (=> bs!1946464 m!8173684))

(assert (=> b!7669057 d!2328560))

(assert (=> b!7669057 d!2328526))

(declare-fun b!7669345 () Bool)

(declare-fun e!4554949 () Bool)

(declare-fun e!4554947 () Bool)

(assert (=> b!7669345 (= e!4554949 e!4554947)))

(declare-fun res!3067661 () Bool)

(assert (=> b!7669345 (= res!3067661 (not (nullable!8991 (reg!20829 (reg!20829 r!14126)))))))

(assert (=> b!7669345 (=> (not res!3067661) (not e!4554947))))

(declare-fun b!7669346 () Bool)

(declare-fun res!3067662 () Bool)

(declare-fun e!4554945 () Bool)

(assert (=> b!7669346 (=> res!3067662 e!4554945)))

(assert (=> b!7669346 (= res!3067662 (not (is-Concat!29345 (reg!20829 r!14126))))))

(declare-fun e!4554946 () Bool)

(assert (=> b!7669346 (= e!4554946 e!4554945)))

(declare-fun b!7669347 () Bool)

(declare-fun e!4554950 () Bool)

(declare-fun call!705224 () Bool)

(assert (=> b!7669347 (= e!4554950 call!705224)))

(declare-fun b!7669348 () Bool)

(assert (=> b!7669348 (= e!4554949 e!4554946)))

(declare-fun c!1412458 () Bool)

(assert (=> b!7669348 (= c!1412458 (is-Union!20500 (reg!20829 r!14126)))))

(declare-fun d!2328562 () Bool)

(declare-fun res!3067663 () Bool)

(declare-fun e!4554944 () Bool)

(assert (=> d!2328562 (=> res!3067663 e!4554944)))

(assert (=> d!2328562 (= res!3067663 (is-ElementMatch!20500 (reg!20829 r!14126)))))

(assert (=> d!2328562 (= (validRegex!10918 (reg!20829 r!14126)) e!4554944)))

(declare-fun bm!705218 () Bool)

(assert (=> bm!705218 (= call!705224 (validRegex!10918 (ite c!1412458 (regTwo!41513 (reg!20829 r!14126)) (regTwo!41512 (reg!20829 r!14126)))))))

(declare-fun b!7669349 () Bool)

(declare-fun call!705225 () Bool)

(assert (=> b!7669349 (= e!4554947 call!705225)))

(declare-fun b!7669350 () Bool)

(declare-fun e!4554948 () Bool)

(assert (=> b!7669350 (= e!4554948 call!705224)))

(declare-fun b!7669351 () Bool)

(declare-fun res!3067664 () Bool)

(assert (=> b!7669351 (=> (not res!3067664) (not e!4554948))))

(declare-fun call!705223 () Bool)

(assert (=> b!7669351 (= res!3067664 call!705223)))

(assert (=> b!7669351 (= e!4554946 e!4554948)))

(declare-fun b!7669352 () Bool)

(assert (=> b!7669352 (= e!4554945 e!4554950)))

(declare-fun res!3067660 () Bool)

(assert (=> b!7669352 (=> (not res!3067660) (not e!4554950))))

(assert (=> b!7669352 (= res!3067660 call!705223)))

(declare-fun bm!705219 () Bool)

(assert (=> bm!705219 (= call!705223 call!705225)))

(declare-fun c!1412459 () Bool)

(declare-fun bm!705220 () Bool)

(assert (=> bm!705220 (= call!705225 (validRegex!10918 (ite c!1412459 (reg!20829 (reg!20829 r!14126)) (ite c!1412458 (regOne!41513 (reg!20829 r!14126)) (regOne!41512 (reg!20829 r!14126))))))))

(declare-fun b!7669353 () Bool)

(assert (=> b!7669353 (= e!4554944 e!4554949)))

(assert (=> b!7669353 (= c!1412459 (is-Star!20500 (reg!20829 r!14126)))))

(assert (= (and d!2328562 (not res!3067663)) b!7669353))

(assert (= (and b!7669353 c!1412459) b!7669345))

(assert (= (and b!7669353 (not c!1412459)) b!7669348))

(assert (= (and b!7669345 res!3067661) b!7669349))

(assert (= (and b!7669348 c!1412458) b!7669351))

(assert (= (and b!7669348 (not c!1412458)) b!7669346))

(assert (= (and b!7669351 res!3067664) b!7669350))

(assert (= (and b!7669346 (not res!3067662)) b!7669352))

(assert (= (and b!7669352 res!3067660) b!7669347))

(assert (= (or b!7669351 b!7669352) bm!705219))

(assert (= (or b!7669350 b!7669347) bm!705218))

(assert (= (or b!7669349 bm!705219) bm!705220))

(declare-fun m!8173880 () Bool)

(assert (=> b!7669345 m!8173880))

(declare-fun m!8173882 () Bool)

(assert (=> bm!705218 m!8173882))

(declare-fun m!8173884 () Bool)

(assert (=> bm!705220 m!8173884))

(assert (=> b!7669056 d!2328562))

(declare-fun d!2328564 () Bool)

(declare-fun lt!2662621 () tuple2!69462)

(declare-fun dynLambda!29935 (Int tuple2!69462) Bool)

(assert (=> d!2328564 (dynLambda!29935 lambda!470030 lt!2662621)))

(declare-fun choose!59093 (Int) tuple2!69462)

(assert (=> d!2328564 (= lt!2662621 (choose!59093 lambda!470030))))

(assert (=> d!2328564 (Exists!4625 lambda!470030)))

(assert (=> d!2328564 (= (pickWitness!489 lambda!470030) lt!2662621)))

(declare-fun b_lambda!289123 () Bool)

(assert (=> (not b_lambda!289123) (not d!2328564)))

(declare-fun bs!1946465 () Bool)

(assert (= bs!1946465 d!2328564))

(declare-fun m!8173886 () Bool)

(assert (=> bs!1946465 m!8173886))

(declare-fun m!8173888 () Bool)

(assert (=> bs!1946465 m!8173888))

(assert (=> bs!1946465 m!8173686))

(assert (=> b!7669056 d!2328564))

(declare-fun b!7669354 () Bool)

(declare-fun e!4554956 () Bool)

(declare-fun e!4554954 () Bool)

(assert (=> b!7669354 (= e!4554956 e!4554954)))

(declare-fun res!3067666 () Bool)

(assert (=> b!7669354 (= res!3067666 (not (nullable!8991 (reg!20829 r!14126))))))

(assert (=> b!7669354 (=> (not res!3067666) (not e!4554954))))

(declare-fun b!7669355 () Bool)

(declare-fun res!3067667 () Bool)

(declare-fun e!4554952 () Bool)

(assert (=> b!7669355 (=> res!3067667 e!4554952)))

(assert (=> b!7669355 (= res!3067667 (not (is-Concat!29345 r!14126)))))

(declare-fun e!4554953 () Bool)

(assert (=> b!7669355 (= e!4554953 e!4554952)))

(declare-fun b!7669356 () Bool)

(declare-fun e!4554957 () Bool)

(declare-fun call!705227 () Bool)

(assert (=> b!7669356 (= e!4554957 call!705227)))

(declare-fun b!7669357 () Bool)

(assert (=> b!7669357 (= e!4554956 e!4554953)))

(declare-fun c!1412460 () Bool)

(assert (=> b!7669357 (= c!1412460 (is-Union!20500 r!14126))))

(declare-fun d!2328566 () Bool)

(declare-fun res!3067668 () Bool)

(declare-fun e!4554951 () Bool)

(assert (=> d!2328566 (=> res!3067668 e!4554951)))

(assert (=> d!2328566 (= res!3067668 (is-ElementMatch!20500 r!14126))))

(assert (=> d!2328566 (= (validRegex!10918 r!14126) e!4554951)))

(declare-fun bm!705221 () Bool)

(assert (=> bm!705221 (= call!705227 (validRegex!10918 (ite c!1412460 (regTwo!41513 r!14126) (regTwo!41512 r!14126))))))

(declare-fun b!7669358 () Bool)

(declare-fun call!705228 () Bool)

(assert (=> b!7669358 (= e!4554954 call!705228)))

(declare-fun b!7669359 () Bool)

(declare-fun e!4554955 () Bool)

(assert (=> b!7669359 (= e!4554955 call!705227)))

(declare-fun b!7669360 () Bool)

(declare-fun res!3067669 () Bool)

(assert (=> b!7669360 (=> (not res!3067669) (not e!4554955))))

(declare-fun call!705226 () Bool)

(assert (=> b!7669360 (= res!3067669 call!705226)))

(assert (=> b!7669360 (= e!4554953 e!4554955)))

(declare-fun b!7669361 () Bool)

(assert (=> b!7669361 (= e!4554952 e!4554957)))

(declare-fun res!3067665 () Bool)

(assert (=> b!7669361 (=> (not res!3067665) (not e!4554957))))

(assert (=> b!7669361 (= res!3067665 call!705226)))

(declare-fun bm!705222 () Bool)

(assert (=> bm!705222 (= call!705226 call!705228)))

(declare-fun c!1412461 () Bool)

(declare-fun bm!705223 () Bool)

(assert (=> bm!705223 (= call!705228 (validRegex!10918 (ite c!1412461 (reg!20829 r!14126) (ite c!1412460 (regOne!41513 r!14126) (regOne!41512 r!14126)))))))

(declare-fun b!7669362 () Bool)

(assert (=> b!7669362 (= e!4554951 e!4554956)))

(assert (=> b!7669362 (= c!1412461 (is-Star!20500 r!14126))))

(assert (= (and d!2328566 (not res!3067668)) b!7669362))

(assert (= (and b!7669362 c!1412461) b!7669354))

(assert (= (and b!7669362 (not c!1412461)) b!7669357))

(assert (= (and b!7669354 res!3067666) b!7669358))

(assert (= (and b!7669357 c!1412460) b!7669360))

(assert (= (and b!7669357 (not c!1412460)) b!7669355))

(assert (= (and b!7669360 res!3067669) b!7669359))

(assert (= (and b!7669355 (not res!3067667)) b!7669361))

(assert (= (and b!7669361 res!3067665) b!7669356))

(assert (= (or b!7669360 b!7669361) bm!705222))

(assert (= (or b!7669359 b!7669356) bm!705221))

(assert (= (or b!7669358 bm!705222) bm!705223))

(assert (=> b!7669354 m!8173876))

(declare-fun m!8173890 () Bool)

(assert (=> bm!705221 m!8173890))

(declare-fun m!8173892 () Bool)

(assert (=> bm!705223 m!8173892))

(assert (=> start!736382 d!2328566))

(declare-fun b!7669372 () Bool)

(declare-fun e!4554962 () List!73351)

(assert (=> b!7669372 (= e!4554962 (Cons!73227 (h!79675 (_1!38034 lt!2662552)) (++!17722 (t!388086 (_1!38034 lt!2662552)) (_2!38034 lt!2662552))))))

(declare-fun b!7669373 () Bool)

(declare-fun res!3067675 () Bool)

(declare-fun e!4554963 () Bool)

(assert (=> b!7669373 (=> (not res!3067675) (not e!4554963))))

(declare-fun lt!2662626 () List!73351)

(declare-fun size!42604 (List!73351) Int)

(assert (=> b!7669373 (= res!3067675 (= (size!42604 lt!2662626) (+ (size!42604 (_1!38034 lt!2662552)) (size!42604 (_2!38034 lt!2662552)))))))

(declare-fun d!2328568 () Bool)

(assert (=> d!2328568 e!4554963))

(declare-fun res!3067674 () Bool)

(assert (=> d!2328568 (=> (not res!3067674) (not e!4554963))))

(declare-fun content!15501 (List!73351) (Set C!41326))

(assert (=> d!2328568 (= res!3067674 (= (content!15501 lt!2662626) (set.union (content!15501 (_1!38034 lt!2662552)) (content!15501 (_2!38034 lt!2662552)))))))

(assert (=> d!2328568 (= lt!2662626 e!4554962)))

(declare-fun c!1412464 () Bool)

(assert (=> d!2328568 (= c!1412464 (is-Nil!73227 (_1!38034 lt!2662552)))))

(assert (=> d!2328568 (= (++!17722 (_1!38034 lt!2662552) (_2!38034 lt!2662552)) lt!2662626)))

(declare-fun b!7669374 () Bool)

(assert (=> b!7669374 (= e!4554963 (or (not (= (_2!38034 lt!2662552) Nil!73227)) (= lt!2662626 (_1!38034 lt!2662552))))))

(declare-fun b!7669371 () Bool)

(assert (=> b!7669371 (= e!4554962 (_2!38034 lt!2662552))))

(assert (= (and d!2328568 c!1412464) b!7669371))

(assert (= (and d!2328568 (not c!1412464)) b!7669372))

(assert (= (and d!2328568 res!3067674) b!7669373))

(assert (= (and b!7669373 res!3067675) b!7669374))

(declare-fun m!8173894 () Bool)

(assert (=> b!7669372 m!8173894))

(declare-fun m!8173896 () Bool)

(assert (=> b!7669373 m!8173896))

(declare-fun m!8173898 () Bool)

(assert (=> b!7669373 m!8173898))

(declare-fun m!8173900 () Bool)

(assert (=> b!7669373 m!8173900))

(declare-fun m!8173902 () Bool)

(assert (=> d!2328568 m!8173902))

(declare-fun m!8173904 () Bool)

(assert (=> d!2328568 m!8173904))

(declare-fun m!8173906 () Bool)

(assert (=> d!2328568 m!8173906))

(assert (=> b!7669050 d!2328568))

(declare-fun d!2328570 () Bool)

(assert (=> d!2328570 (matchR!9996 (Star!20500 (reg!20829 r!14126)) (++!17722 (_1!38034 lt!2662552) (_2!38034 lt!2662552)))))

(declare-fun lt!2662629 () Unit!168012)

(declare-fun choose!59094 (Regex!20500 List!73351 List!73351) Unit!168012)

(assert (=> d!2328570 (= lt!2662629 (choose!59094 (reg!20829 r!14126) (_1!38034 lt!2662552) (_2!38034 lt!2662552)))))

(assert (=> d!2328570 (validRegex!10918 (Star!20500 (reg!20829 r!14126)))))

(assert (=> d!2328570 (= (lemmaStarApp!209 (reg!20829 r!14126) (_1!38034 lt!2662552) (_2!38034 lt!2662552)) lt!2662629)))

(declare-fun bs!1946466 () Bool)

(assert (= bs!1946466 d!2328570))

(assert (=> bs!1946466 m!8173700))

(assert (=> bs!1946466 m!8173700))

(declare-fun m!8173908 () Bool)

(assert (=> bs!1946466 m!8173908))

(declare-fun m!8173910 () Bool)

(assert (=> bs!1946466 m!8173910))

(declare-fun m!8173912 () Bool)

(assert (=> bs!1946466 m!8173912))

(assert (=> b!7669050 d!2328570))

(declare-fun bm!705224 () Bool)

(declare-fun call!705229 () Bool)

(assert (=> bm!705224 (= call!705229 (isEmpty!41864 lt!2662554))))

(declare-fun b!7669379 () Bool)

(declare-fun e!4554969 () Bool)

(declare-fun e!4554970 () Bool)

(assert (=> b!7669379 (= e!4554969 e!4554970)))

(declare-fun res!3067683 () Bool)

(assert (=> b!7669379 (=> (not res!3067683) (not e!4554970))))

(declare-fun lt!2662630 () Bool)

(assert (=> b!7669379 (= res!3067683 (not lt!2662630))))

(declare-fun b!7669380 () Bool)

(declare-fun res!3067680 () Bool)

(assert (=> b!7669380 (=> res!3067680 e!4554969)))

(assert (=> b!7669380 (= res!3067680 (not (is-ElementMatch!20500 (Concat!29345 (reg!20829 r!14126) r!14126))))))

(declare-fun e!4554967 () Bool)

(assert (=> b!7669380 (= e!4554967 e!4554969)))

(declare-fun d!2328572 () Bool)

(declare-fun e!4554968 () Bool)

(assert (=> d!2328572 e!4554968))

(declare-fun c!1412467 () Bool)

(assert (=> d!2328572 (= c!1412467 (is-EmptyExpr!20500 (Concat!29345 (reg!20829 r!14126) r!14126)))))

(declare-fun e!4554971 () Bool)

(assert (=> d!2328572 (= lt!2662630 e!4554971)))

(declare-fun c!1412465 () Bool)

(assert (=> d!2328572 (= c!1412465 (isEmpty!41864 lt!2662554))))

(assert (=> d!2328572 (validRegex!10918 (Concat!29345 (reg!20829 r!14126) r!14126))))

(assert (=> d!2328572 (= (matchR!9996 (Concat!29345 (reg!20829 r!14126) r!14126) lt!2662554) lt!2662630)))

(declare-fun b!7669381 () Bool)

(assert (=> b!7669381 (= e!4554967 (not lt!2662630))))

(declare-fun b!7669382 () Bool)

(declare-fun e!4554972 () Bool)

(assert (=> b!7669382 (= e!4554970 e!4554972)))

(declare-fun res!3067687 () Bool)

(assert (=> b!7669382 (=> res!3067687 e!4554972)))

(assert (=> b!7669382 (= res!3067687 call!705229)))

(declare-fun b!7669383 () Bool)

(declare-fun res!3067681 () Bool)

(declare-fun e!4554966 () Bool)

(assert (=> b!7669383 (=> (not res!3067681) (not e!4554966))))

(assert (=> b!7669383 (= res!3067681 (isEmpty!41864 (tail!15297 lt!2662554)))))

(declare-fun b!7669384 () Bool)

(declare-fun res!3067685 () Bool)

(assert (=> b!7669384 (=> res!3067685 e!4554969)))

(assert (=> b!7669384 (= res!3067685 e!4554966)))

(declare-fun res!3067686 () Bool)

(assert (=> b!7669384 (=> (not res!3067686) (not e!4554966))))

(assert (=> b!7669384 (= res!3067686 lt!2662630)))

(declare-fun b!7669385 () Bool)

(assert (=> b!7669385 (= e!4554972 (not (= (head!15757 lt!2662554) (c!1412400 (Concat!29345 (reg!20829 r!14126) r!14126)))))))

(declare-fun b!7669386 () Bool)

(declare-fun res!3067682 () Bool)

(assert (=> b!7669386 (=> res!3067682 e!4554972)))

(assert (=> b!7669386 (= res!3067682 (not (isEmpty!41864 (tail!15297 lt!2662554))))))

(declare-fun b!7669387 () Bool)

(assert (=> b!7669387 (= e!4554971 (matchR!9996 (derivativeStep!5957 (Concat!29345 (reg!20829 r!14126) r!14126) (head!15757 lt!2662554)) (tail!15297 lt!2662554)))))

(declare-fun b!7669388 () Bool)

(assert (=> b!7669388 (= e!4554971 (nullable!8991 (Concat!29345 (reg!20829 r!14126) r!14126)))))

(declare-fun b!7669389 () Bool)

(declare-fun res!3067684 () Bool)

(assert (=> b!7669389 (=> (not res!3067684) (not e!4554966))))

(assert (=> b!7669389 (= res!3067684 (not call!705229))))

(declare-fun b!7669390 () Bool)

(assert (=> b!7669390 (= e!4554968 e!4554967)))

(declare-fun c!1412466 () Bool)

(assert (=> b!7669390 (= c!1412466 (is-EmptyLang!20500 (Concat!29345 (reg!20829 r!14126) r!14126)))))

(declare-fun b!7669391 () Bool)

(assert (=> b!7669391 (= e!4554968 (= lt!2662630 call!705229))))

(declare-fun b!7669392 () Bool)

(assert (=> b!7669392 (= e!4554966 (= (head!15757 lt!2662554) (c!1412400 (Concat!29345 (reg!20829 r!14126) r!14126))))))

(assert (= (and d!2328572 c!1412465) b!7669388))

(assert (= (and d!2328572 (not c!1412465)) b!7669387))

(assert (= (and d!2328572 c!1412467) b!7669391))

(assert (= (and d!2328572 (not c!1412467)) b!7669390))

(assert (= (and b!7669390 c!1412466) b!7669381))

(assert (= (and b!7669390 (not c!1412466)) b!7669380))

(assert (= (and b!7669380 (not res!3067680)) b!7669384))

(assert (= (and b!7669384 res!3067686) b!7669389))

(assert (= (and b!7669389 res!3067684) b!7669383))

(assert (= (and b!7669383 res!3067681) b!7669392))

(assert (= (and b!7669384 (not res!3067685)) b!7669379))

(assert (= (and b!7669379 res!3067683) b!7669382))

(assert (= (and b!7669382 (not res!3067687)) b!7669386))

(assert (= (and b!7669386 (not res!3067682)) b!7669385))

(assert (= (or b!7669391 b!7669382 b!7669389) bm!705224))

(declare-fun m!8173914 () Bool)

(assert (=> d!2328572 m!8173914))

(declare-fun m!8173916 () Bool)

(assert (=> d!2328572 m!8173916))

(declare-fun m!8173918 () Bool)

(assert (=> b!7669385 m!8173918))

(assert (=> b!7669387 m!8173918))

(assert (=> b!7669387 m!8173918))

(declare-fun m!8173920 () Bool)

(assert (=> b!7669387 m!8173920))

(declare-fun m!8173922 () Bool)

(assert (=> b!7669387 m!8173922))

(assert (=> b!7669387 m!8173920))

(assert (=> b!7669387 m!8173922))

(declare-fun m!8173924 () Bool)

(assert (=> b!7669387 m!8173924))

(assert (=> b!7669383 m!8173922))

(assert (=> b!7669383 m!8173922))

(declare-fun m!8173926 () Bool)

(assert (=> b!7669383 m!8173926))

(declare-fun m!8173928 () Bool)

(assert (=> b!7669388 m!8173928))

(assert (=> bm!705224 m!8173914))

(assert (=> b!7669392 m!8173918))

(assert (=> b!7669386 m!8173922))

(assert (=> b!7669386 m!8173922))

(assert (=> b!7669386 m!8173926))

(assert (=> b!7669050 d!2328572))

(declare-fun bm!705225 () Bool)

(declare-fun call!705230 () Bool)

(assert (=> bm!705225 (= call!705230 (isEmpty!41864 lt!2662554))))

(declare-fun b!7669393 () Bool)

(declare-fun e!4554976 () Bool)

(declare-fun e!4554977 () Bool)

(assert (=> b!7669393 (= e!4554976 e!4554977)))

(declare-fun res!3067691 () Bool)

(assert (=> b!7669393 (=> (not res!3067691) (not e!4554977))))

(declare-fun lt!2662632 () Bool)

(assert (=> b!7669393 (= res!3067691 (not lt!2662632))))

(declare-fun b!7669394 () Bool)

(declare-fun res!3067688 () Bool)

(assert (=> b!7669394 (=> res!3067688 e!4554976)))

(assert (=> b!7669394 (= res!3067688 (not (is-ElementMatch!20500 r!14126)))))

(declare-fun e!4554974 () Bool)

(assert (=> b!7669394 (= e!4554974 e!4554976)))

(declare-fun d!2328574 () Bool)

(declare-fun e!4554975 () Bool)

(assert (=> d!2328574 e!4554975))

(declare-fun c!1412470 () Bool)

(assert (=> d!2328574 (= c!1412470 (is-EmptyExpr!20500 r!14126))))

(declare-fun e!4554978 () Bool)

(assert (=> d!2328574 (= lt!2662632 e!4554978)))

(declare-fun c!1412468 () Bool)

(assert (=> d!2328574 (= c!1412468 (isEmpty!41864 lt!2662554))))

(assert (=> d!2328574 (validRegex!10918 r!14126)))

(assert (=> d!2328574 (= (matchR!9996 r!14126 lt!2662554) lt!2662632)))

(declare-fun b!7669395 () Bool)

(assert (=> b!7669395 (= e!4554974 (not lt!2662632))))

(declare-fun b!7669396 () Bool)

(declare-fun e!4554979 () Bool)

(assert (=> b!7669396 (= e!4554977 e!4554979)))

(declare-fun res!3067695 () Bool)

(assert (=> b!7669396 (=> res!3067695 e!4554979)))

(assert (=> b!7669396 (= res!3067695 call!705230)))

(declare-fun b!7669397 () Bool)

(declare-fun res!3067689 () Bool)

(declare-fun e!4554973 () Bool)

(assert (=> b!7669397 (=> (not res!3067689) (not e!4554973))))

(assert (=> b!7669397 (= res!3067689 (isEmpty!41864 (tail!15297 lt!2662554)))))

(declare-fun b!7669398 () Bool)

(declare-fun res!3067693 () Bool)

(assert (=> b!7669398 (=> res!3067693 e!4554976)))

(assert (=> b!7669398 (= res!3067693 e!4554973)))

(declare-fun res!3067694 () Bool)

(assert (=> b!7669398 (=> (not res!3067694) (not e!4554973))))

(assert (=> b!7669398 (= res!3067694 lt!2662632)))

(declare-fun b!7669399 () Bool)

(assert (=> b!7669399 (= e!4554979 (not (= (head!15757 lt!2662554) (c!1412400 r!14126))))))

(declare-fun b!7669400 () Bool)

(declare-fun res!3067690 () Bool)

(assert (=> b!7669400 (=> res!3067690 e!4554979)))

(assert (=> b!7669400 (= res!3067690 (not (isEmpty!41864 (tail!15297 lt!2662554))))))

(declare-fun b!7669401 () Bool)

(assert (=> b!7669401 (= e!4554978 (matchR!9996 (derivativeStep!5957 r!14126 (head!15757 lt!2662554)) (tail!15297 lt!2662554)))))

(declare-fun b!7669402 () Bool)

(assert (=> b!7669402 (= e!4554978 (nullable!8991 r!14126))))

(declare-fun b!7669403 () Bool)

(declare-fun res!3067692 () Bool)

(assert (=> b!7669403 (=> (not res!3067692) (not e!4554973))))

(assert (=> b!7669403 (= res!3067692 (not call!705230))))

(declare-fun b!7669404 () Bool)

(assert (=> b!7669404 (= e!4554975 e!4554974)))

(declare-fun c!1412469 () Bool)

(assert (=> b!7669404 (= c!1412469 (is-EmptyLang!20500 r!14126))))

(declare-fun b!7669405 () Bool)

(assert (=> b!7669405 (= e!4554975 (= lt!2662632 call!705230))))

(declare-fun b!7669406 () Bool)

(assert (=> b!7669406 (= e!4554973 (= (head!15757 lt!2662554) (c!1412400 r!14126)))))

(assert (= (and d!2328574 c!1412468) b!7669402))

(assert (= (and d!2328574 (not c!1412468)) b!7669401))

(assert (= (and d!2328574 c!1412470) b!7669405))

(assert (= (and d!2328574 (not c!1412470)) b!7669404))

(assert (= (and b!7669404 c!1412469) b!7669395))

(assert (= (and b!7669404 (not c!1412469)) b!7669394))

(assert (= (and b!7669394 (not res!3067688)) b!7669398))

(assert (= (and b!7669398 res!3067694) b!7669403))

(assert (= (and b!7669403 res!3067692) b!7669397))

(assert (= (and b!7669397 res!3067689) b!7669406))

(assert (= (and b!7669398 (not res!3067693)) b!7669393))

(assert (= (and b!7669393 res!3067691) b!7669396))

(assert (= (and b!7669396 (not res!3067695)) b!7669400))

(assert (= (and b!7669400 (not res!3067690)) b!7669399))

(assert (= (or b!7669405 b!7669396 b!7669403) bm!705225))

(assert (=> d!2328574 m!8173914))

(assert (=> d!2328574 m!8173684))

(assert (=> b!7669399 m!8173918))

(assert (=> b!7669401 m!8173918))

(assert (=> b!7669401 m!8173918))

(declare-fun m!8173930 () Bool)

(assert (=> b!7669401 m!8173930))

(assert (=> b!7669401 m!8173922))

(assert (=> b!7669401 m!8173930))

(assert (=> b!7669401 m!8173922))

(declare-fun m!8173932 () Bool)

(assert (=> b!7669401 m!8173932))

(assert (=> b!7669397 m!8173922))

(assert (=> b!7669397 m!8173922))

(assert (=> b!7669397 m!8173926))

(assert (=> b!7669402 m!8173816))

(assert (=> bm!705225 m!8173914))

(assert (=> b!7669406 m!8173918))

(assert (=> b!7669400 m!8173922))

(assert (=> b!7669400 m!8173922))

(assert (=> b!7669400 m!8173926))

(assert (=> b!7669050 d!2328574))

(declare-fun d!2328576 () Bool)

(assert (=> d!2328576 (matchR!9996 (Concat!29345 (reg!20829 r!14126) r!14126) (++!17722 (_1!38034 lt!2662552) (_2!38034 lt!2662552)))))

(declare-fun lt!2662635 () Unit!168012)

(declare-fun choose!59098 (Regex!20500 Regex!20500 List!73351 List!73351 List!73351) Unit!168012)

(assert (=> d!2328576 (= lt!2662635 (choose!59098 (reg!20829 r!14126) r!14126 (_1!38034 lt!2662552) (_2!38034 lt!2662552) s!9605))))

(assert (=> d!2328576 (validRegex!10918 (reg!20829 r!14126))))

(assert (=> d!2328576 (= (lemmaFindSeparationIsDefinedThenConcatMatches!187 (reg!20829 r!14126) r!14126 (_1!38034 lt!2662552) (_2!38034 lt!2662552) s!9605) lt!2662635)))

(declare-fun bs!1946469 () Bool)

(assert (= bs!1946469 d!2328576))

(assert (=> bs!1946469 m!8173700))

(assert (=> bs!1946469 m!8173700))

(declare-fun m!8173940 () Bool)

(assert (=> bs!1946469 m!8173940))

(declare-fun m!8173942 () Bool)

(assert (=> bs!1946469 m!8173942))

(assert (=> bs!1946469 m!8173720))

(assert (=> b!7669050 d!2328576))

(declare-fun b!7669419 () Bool)

(declare-fun e!4554982 () Bool)

(declare-fun tp!2244123 () Bool)

(assert (=> b!7669419 (= e!4554982 tp!2244123)))

(declare-fun b!7669418 () Bool)

(declare-fun tp!2244124 () Bool)

(declare-fun tp!2244121 () Bool)

(assert (=> b!7669418 (= e!4554982 (and tp!2244124 tp!2244121))))

(assert (=> b!7669049 (= tp!2244088 e!4554982)))

(declare-fun b!7669417 () Bool)

(assert (=> b!7669417 (= e!4554982 tp_is_empty!51355)))

(declare-fun b!7669420 () Bool)

(declare-fun tp!2244120 () Bool)

(declare-fun tp!2244122 () Bool)

(assert (=> b!7669420 (= e!4554982 (and tp!2244120 tp!2244122))))

(assert (= (and b!7669049 (is-ElementMatch!20500 (regOne!41512 r!14126))) b!7669417))

(assert (= (and b!7669049 (is-Concat!29345 (regOne!41512 r!14126))) b!7669418))

(assert (= (and b!7669049 (is-Star!20500 (regOne!41512 r!14126))) b!7669419))

(assert (= (and b!7669049 (is-Union!20500 (regOne!41512 r!14126))) b!7669420))

(declare-fun b!7669423 () Bool)

(declare-fun e!4554983 () Bool)

(declare-fun tp!2244128 () Bool)

(assert (=> b!7669423 (= e!4554983 tp!2244128)))

(declare-fun b!7669422 () Bool)

(declare-fun tp!2244129 () Bool)

(declare-fun tp!2244126 () Bool)

(assert (=> b!7669422 (= e!4554983 (and tp!2244129 tp!2244126))))

(assert (=> b!7669049 (= tp!2244091 e!4554983)))

(declare-fun b!7669421 () Bool)

(assert (=> b!7669421 (= e!4554983 tp_is_empty!51355)))

(declare-fun b!7669424 () Bool)

(declare-fun tp!2244125 () Bool)

(declare-fun tp!2244127 () Bool)

(assert (=> b!7669424 (= e!4554983 (and tp!2244125 tp!2244127))))

(assert (= (and b!7669049 (is-ElementMatch!20500 (regTwo!41512 r!14126))) b!7669421))

(assert (= (and b!7669049 (is-Concat!29345 (regTwo!41512 r!14126))) b!7669422))

(assert (= (and b!7669049 (is-Star!20500 (regTwo!41512 r!14126))) b!7669423))

(assert (= (and b!7669049 (is-Union!20500 (regTwo!41512 r!14126))) b!7669424))

(declare-fun b!7669429 () Bool)

(declare-fun e!4554986 () Bool)

(declare-fun tp!2244132 () Bool)

(assert (=> b!7669429 (= e!4554986 (and tp_is_empty!51355 tp!2244132))))

(assert (=> b!7669047 (= tp!2244089 e!4554986)))

(assert (= (and b!7669047 (is-Cons!73227 (t!388086 s!9605))) b!7669429))

(declare-fun b!7669432 () Bool)

(declare-fun e!4554987 () Bool)

(declare-fun tp!2244136 () Bool)

(assert (=> b!7669432 (= e!4554987 tp!2244136)))

(declare-fun b!7669431 () Bool)

(declare-fun tp!2244137 () Bool)

(declare-fun tp!2244134 () Bool)

(assert (=> b!7669431 (= e!4554987 (and tp!2244137 tp!2244134))))

(assert (=> b!7669046 (= tp!2244086 e!4554987)))

(declare-fun b!7669430 () Bool)

(assert (=> b!7669430 (= e!4554987 tp_is_empty!51355)))

(declare-fun b!7669433 () Bool)

(declare-fun tp!2244133 () Bool)

(declare-fun tp!2244135 () Bool)

(assert (=> b!7669433 (= e!4554987 (and tp!2244133 tp!2244135))))

(assert (= (and b!7669046 (is-ElementMatch!20500 (regOne!41513 r!14126))) b!7669430))

(assert (= (and b!7669046 (is-Concat!29345 (regOne!41513 r!14126))) b!7669431))

(assert (= (and b!7669046 (is-Star!20500 (regOne!41513 r!14126))) b!7669432))

(assert (= (and b!7669046 (is-Union!20500 (regOne!41513 r!14126))) b!7669433))

(declare-fun b!7669436 () Bool)

(declare-fun e!4554988 () Bool)

(declare-fun tp!2244141 () Bool)

(assert (=> b!7669436 (= e!4554988 tp!2244141)))

(declare-fun b!7669435 () Bool)

(declare-fun tp!2244142 () Bool)

(declare-fun tp!2244139 () Bool)

(assert (=> b!7669435 (= e!4554988 (and tp!2244142 tp!2244139))))

(assert (=> b!7669046 (= tp!2244087 e!4554988)))

(declare-fun b!7669434 () Bool)

(assert (=> b!7669434 (= e!4554988 tp_is_empty!51355)))

(declare-fun b!7669437 () Bool)

(declare-fun tp!2244138 () Bool)

(declare-fun tp!2244140 () Bool)

(assert (=> b!7669437 (= e!4554988 (and tp!2244138 tp!2244140))))

(assert (= (and b!7669046 (is-ElementMatch!20500 (regTwo!41513 r!14126))) b!7669434))

(assert (= (and b!7669046 (is-Concat!29345 (regTwo!41513 r!14126))) b!7669435))

(assert (= (and b!7669046 (is-Star!20500 (regTwo!41513 r!14126))) b!7669436))

(assert (= (and b!7669046 (is-Union!20500 (regTwo!41513 r!14126))) b!7669437))

(declare-fun b!7669440 () Bool)

(declare-fun e!4554989 () Bool)

(declare-fun tp!2244146 () Bool)

(assert (=> b!7669440 (= e!4554989 tp!2244146)))

(declare-fun b!7669439 () Bool)

(declare-fun tp!2244147 () Bool)

(declare-fun tp!2244144 () Bool)

(assert (=> b!7669439 (= e!4554989 (and tp!2244147 tp!2244144))))

(assert (=> b!7669051 (= tp!2244090 e!4554989)))

(declare-fun b!7669438 () Bool)

(assert (=> b!7669438 (= e!4554989 tp_is_empty!51355)))

(declare-fun b!7669441 () Bool)

(declare-fun tp!2244143 () Bool)

(declare-fun tp!2244145 () Bool)

(assert (=> b!7669441 (= e!4554989 (and tp!2244143 tp!2244145))))

(assert (= (and b!7669051 (is-ElementMatch!20500 (reg!20829 r!14126))) b!7669438))

(assert (= (and b!7669051 (is-Concat!29345 (reg!20829 r!14126))) b!7669439))

(assert (= (and b!7669051 (is-Star!20500 (reg!20829 r!14126))) b!7669440))

(assert (= (and b!7669051 (is-Union!20500 (reg!20829 r!14126))) b!7669441))

(declare-fun b_lambda!289125 () Bool)

(assert (= b_lambda!289123 (or b!7669048 b_lambda!289125)))

(declare-fun bs!1946470 () Bool)

(declare-fun d!2328580 () Bool)

(assert (= bs!1946470 (and d!2328580 b!7669048)))

(declare-fun res!3067696 () Bool)

(declare-fun e!4554990 () Bool)

(assert (=> bs!1946470 (=> (not res!3067696) (not e!4554990))))

(assert (=> bs!1946470 (= res!3067696 (= (++!17722 (_1!38034 lt!2662621) (_2!38034 lt!2662621)) s!9605))))

(assert (=> bs!1946470 (= (dynLambda!29935 lambda!470030 lt!2662621) e!4554990)))

(declare-fun b!7669442 () Bool)

(declare-fun res!3067697 () Bool)

(assert (=> b!7669442 (=> (not res!3067697) (not e!4554990))))

(assert (=> b!7669442 (= res!3067697 (matchR!9996 (reg!20829 r!14126) (_1!38034 lt!2662621)))))

(declare-fun b!7669443 () Bool)

(assert (=> b!7669443 (= e!4554990 (matchR!9996 r!14126 (_2!38034 lt!2662621)))))

(assert (= (and bs!1946470 res!3067696) b!7669442))

(assert (= (and b!7669442 res!3067697) b!7669443))

(declare-fun m!8173944 () Bool)

(assert (=> bs!1946470 m!8173944))

(declare-fun m!8173946 () Bool)

(assert (=> b!7669442 m!8173946))

(declare-fun m!8173948 () Bool)

(assert (=> b!7669443 m!8173948))

(assert (=> d!2328564 d!2328580))

(push 1)

(assert (not b!7669441))

(assert (not b!7669322))

(assert (not b!7669406))

(assert (not b!7669290))

(assert (not b!7669420))

(assert (not b!7669424))

(assert (not b!7669310))

(assert (not b!7669423))

(assert (not b!7669443))

(assert (not b!7669159))

(assert (not d!2328568))

(assert (not d!2328564))

(assert (not b!7669345))

(assert (not b!7669227))

(assert (not d!2328534))

(assert (not b!7669156))

(assert (not d!2328554))

(assert (not b!7669208))

(assert (not d!2328572))

(assert (not bm!705202))

(assert (not b!7669440))

(assert (not b!7669433))

(assert (not bm!705210))

(assert (not b!7669385))

(assert (not b!7669354))

(assert (not b!7669224))

(assert (not bm!705223))

(assert (not bm!705209))

(assert (not b!7669402))

(assert (not b!7669386))

(assert (not b!7669284))

(assert (not b!7669439))

(assert (not b!7669320))

(assert (not b!7669422))

(assert (not b!7669212))

(assert (not b!7669400))

(assert (not b!7669387))

(assert (not d!2328544))

(assert (not d!2328546))

(assert (not d!2328570))

(assert (not b!7669317))

(assert (not b!7669222))

(assert (not b!7669154))

(assert (not bm!705224))

(assert (not bm!705207))

(assert (not b!7669372))

(assert (not b!7669155))

(assert (not b!7669326))

(assert (not b!7669157))

(assert (not b!7669321))

(assert (not b!7669399))

(assert (not bm!705220))

(assert (not b!7669401))

(assert (not b!7669158))

(assert (not b!7669210))

(assert (not b!7669388))

(assert (not d!2328560))

(assert (not b!7669432))

(assert (not d!2328548))

(assert (not b_lambda!289125))

(assert (not b!7669304))

(assert (not b!7669217))

(assert (not d!2328574))

(assert (not d!2328526))

(assert (not b!7669226))

(assert (not d!2328530))

(assert (not b!7669397))

(assert (not bs!1946470))

(assert tp_is_empty!51355)

(assert (not b!7669431))

(assert (not b!7669419))

(assert (not b!7669231))

(assert (not bm!705225))

(assert (not b!7669435))

(assert (not d!2328532))

(assert (not b!7669392))

(assert (not b!7669383))

(assert (not b!7669211))

(assert (not b!7669418))

(assert (not bm!705201))

(assert (not bm!705211))

(assert (not bm!705218))

(assert (not b!7669437))

(assert (not b!7669429))

(assert (not b!7669436))

(assert (not b!7669225))

(assert (not b!7669442))

(assert (not b!7669373))

(assert (not b!7669213))

(assert (not bm!705221))

(assert (not bm!705208))

(assert (not d!2328576))

(assert (not b!7669319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

