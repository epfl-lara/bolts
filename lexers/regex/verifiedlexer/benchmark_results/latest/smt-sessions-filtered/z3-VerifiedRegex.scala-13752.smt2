; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733956 () Bool)

(assert start!733956)

(declare-fun b!7619370 () Bool)

(assert (=> b!7619370 true))

(assert (=> b!7619370 true))

(declare-fun b!7619357 () Bool)

(declare-datatypes ((Unit!167444 0))(
  ( (Unit!167445) )
))
(declare-fun e!4530772 () Unit!167444)

(declare-fun Unit!167446 () Unit!167444)

(assert (=> b!7619357 (= e!4530772 Unit!167446)))

(declare-datatypes ((C!40924 0))(
  ( (C!40925 (val!30902 Int)) )
))
(declare-datatypes ((List!73152 0))(
  ( (Nil!73028) (Cons!73028 (h!79476 C!40924) (t!387887 List!73152)) )
))
(declare-datatypes ((tuple2!69160 0))(
  ( (tuple2!69161 (_1!37883 List!73152) (_2!37883 List!73152)) )
))
(declare-fun lt!2656220 () tuple2!69160)

(declare-fun lt!2656222 () Unit!167444)

(declare-datatypes ((Regex!20299 0))(
  ( (ElementMatch!20299 (c!1404310 C!40924)) (Concat!29144 (regOne!41110 Regex!20299) (regTwo!41110 Regex!20299)) (EmptyExpr!20299) (Star!20299 (reg!20628 Regex!20299)) (EmptyLang!20299) (Union!20299 (regOne!41111 Regex!20299) (regTwo!41111 Regex!20299)) )
))
(declare-fun r!14126 () Regex!20299)

(declare-fun s!9605 () List!73152)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!126 (Regex!20299 Regex!20299 List!73152 List!73152 List!73152) Unit!167444)

(assert (=> b!7619357 (= lt!2656222 (lemmaFindSeparationIsDefinedThenConcatMatches!126 (reg!20628 r!14126) r!14126 (_1!37883 lt!2656220) (_2!37883 lt!2656220) s!9605))))

(declare-fun lt!2656217 () List!73152)

(declare-fun ++!17609 (List!73152 List!73152) List!73152)

(assert (=> b!7619357 (= lt!2656217 (++!17609 (_1!37883 lt!2656220) (_2!37883 lt!2656220)))))

(declare-fun matchR!9806 (Regex!20299 List!73152) Bool)

(assert (=> b!7619357 (matchR!9806 (Concat!29144 (reg!20628 r!14126) r!14126) lt!2656217)))

(declare-fun lt!2656215 () Unit!167444)

(declare-fun lemmaStarApp!180 (Regex!20299 List!73152 List!73152) Unit!167444)

(assert (=> b!7619357 (= lt!2656215 (lemmaStarApp!180 (reg!20628 r!14126) (_1!37883 lt!2656220) (_2!37883 lt!2656220)))))

(declare-fun res!3050365 () Bool)

(assert (=> b!7619357 (= res!3050365 (matchR!9806 r!14126 lt!2656217))))

(declare-fun e!4530776 () Bool)

(assert (=> b!7619357 (=> (not res!3050365) (not e!4530776))))

(assert (=> b!7619357 e!4530776))

(declare-fun res!3050362 () Bool)

(declare-fun e!4530769 () Bool)

(assert (=> start!733956 (=> (not res!3050362) (not e!4530769))))

(declare-fun validRegex!10719 (Regex!20299) Bool)

(assert (=> start!733956 (= res!3050362 (validRegex!10719 r!14126))))

(assert (=> start!733956 e!4530769))

(declare-fun e!4530775 () Bool)

(assert (=> start!733956 e!4530775))

(declare-fun e!4530774 () Bool)

(assert (=> start!733956 e!4530774))

(declare-fun e!4530771 () Bool)

(declare-fun e!4530770 () Bool)

(assert (=> start!733956 (and e!4530771 e!4530770)))

(declare-fun b!7619358 () Bool)

(declare-fun res!3050361 () Bool)

(declare-fun e!4530773 () Bool)

(assert (=> b!7619358 (=> res!3050361 e!4530773)))

(declare-fun cut!6 () tuple2!69160)

(assert (=> b!7619358 (= res!3050361 (not (matchR!9806 (reg!20628 r!14126) (_1!37883 cut!6))))))

(declare-fun b!7619359 () Bool)

(declare-fun e!4530777 () Bool)

(assert (=> b!7619359 (= e!4530777 e!4530773)))

(declare-fun res!3050364 () Bool)

(assert (=> b!7619359 (=> res!3050364 e!4530773)))

(declare-fun lambda!468305 () Int)

(declare-fun Exists!4455 (Int) Bool)

(assert (=> b!7619359 (= res!3050364 (not (Exists!4455 lambda!468305)))))

(declare-fun lt!2656214 () Unit!167444)

(assert (=> b!7619359 (= lt!2656214 e!4530772)))

(declare-fun c!1404309 () Bool)

(assert (=> b!7619359 (= c!1404309 (not (matchR!9806 r!14126 s!9605)))))

(declare-fun matchRSpec!4498 (Regex!20299 List!73152) Bool)

(assert (=> b!7619359 (= (matchR!9806 r!14126 (_2!37883 lt!2656220)) (matchRSpec!4498 r!14126 (_2!37883 lt!2656220)))))

(declare-fun lt!2656216 () Unit!167444)

(declare-fun mainMatchTheorem!4492 (Regex!20299 List!73152) Unit!167444)

(assert (=> b!7619359 (= lt!2656216 (mainMatchTheorem!4492 r!14126 (_2!37883 lt!2656220)))))

(assert (=> b!7619359 (= (matchR!9806 (reg!20628 r!14126) (_1!37883 lt!2656220)) (matchRSpec!4498 (reg!20628 r!14126) (_1!37883 lt!2656220)))))

(declare-fun lt!2656218 () Unit!167444)

(assert (=> b!7619359 (= lt!2656218 (mainMatchTheorem!4492 (reg!20628 r!14126) (_1!37883 lt!2656220)))))

(declare-datatypes ((Option!17374 0))(
  ( (None!17373) (Some!17373 (v!54508 tuple2!69160)) )
))
(declare-fun lt!2656213 () Option!17374)

(declare-fun get!25760 (Option!17374) tuple2!69160)

(assert (=> b!7619359 (= lt!2656220 (get!25760 lt!2656213))))

(declare-fun b!7619360 () Bool)

(assert (=> b!7619360 (= e!4530776 false)))

(declare-fun b!7619361 () Bool)

(declare-fun res!3050367 () Bool)

(assert (=> b!7619361 (=> (not res!3050367) (not e!4530769))))

(get-info :version)

(assert (=> b!7619361 (= res!3050367 (and (not ((_ is EmptyExpr!20299) r!14126)) (not ((_ is EmptyLang!20299) r!14126)) (not ((_ is ElementMatch!20299) r!14126)) (not ((_ is Union!20299) r!14126)) ((_ is Star!20299) r!14126)))))

(declare-fun b!7619362 () Bool)

(declare-fun tp_is_empty!50953 () Bool)

(declare-fun tp!2224840 () Bool)

(assert (=> b!7619362 (= e!4530774 (and tp_is_empty!50953 tp!2224840))))

(declare-fun b!7619363 () Bool)

(declare-fun tp!2224839 () Bool)

(assert (=> b!7619363 (= e!4530771 (and tp_is_empty!50953 tp!2224839))))

(declare-fun b!7619364 () Bool)

(assert (=> b!7619364 (= e!4530773 (validRegex!10719 r!14126))))

(declare-fun b!7619365 () Bool)

(declare-fun res!3050363 () Bool)

(assert (=> b!7619365 (=> (not res!3050363) (not e!4530769))))

(declare-fun isEmpty!41644 (List!73152) Bool)

(assert (=> b!7619365 (= res!3050363 (not (isEmpty!41644 s!9605)))))

(declare-fun b!7619366 () Bool)

(declare-fun tp!2224838 () Bool)

(assert (=> b!7619366 (= e!4530775 tp!2224838)))

(declare-fun b!7619367 () Bool)

(assert (=> b!7619367 (= e!4530775 tp_is_empty!50953)))

(declare-fun b!7619368 () Bool)

(declare-fun tp!2224837 () Bool)

(declare-fun tp!2224843 () Bool)

(assert (=> b!7619368 (= e!4530775 (and tp!2224837 tp!2224843))))

(declare-fun b!7619369 () Bool)

(declare-fun tp!2224841 () Bool)

(assert (=> b!7619369 (= e!4530770 (and tp_is_empty!50953 tp!2224841))))

(assert (=> b!7619370 (= e!4530769 (not e!4530777))))

(declare-fun res!3050368 () Bool)

(assert (=> b!7619370 (=> res!3050368 e!4530777)))

(declare-fun lt!2656219 () Bool)

(assert (=> b!7619370 (= res!3050368 (not lt!2656219))))

(assert (=> b!7619370 (= lt!2656219 (Exists!4455 lambda!468305))))

(declare-fun isDefined!13990 (Option!17374) Bool)

(assert (=> b!7619370 (= lt!2656219 (isDefined!13990 lt!2656213))))

(declare-fun findConcatSeparation!3404 (Regex!20299 Regex!20299 List!73152 List!73152 List!73152) Option!17374)

(assert (=> b!7619370 (= lt!2656213 (findConcatSeparation!3404 (reg!20628 r!14126) r!14126 Nil!73028 s!9605 s!9605))))

(declare-fun lt!2656221 () Unit!167444)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3162 (Regex!20299 Regex!20299 List!73152) Unit!167444)

(assert (=> b!7619370 (= lt!2656221 (lemmaFindConcatSeparationEquivalentToExists!3162 (reg!20628 r!14126) r!14126 s!9605))))

(declare-fun b!7619371 () Bool)

(declare-fun Unit!167447 () Unit!167444)

(assert (=> b!7619371 (= e!4530772 Unit!167447)))

(declare-fun b!7619372 () Bool)

(declare-fun tp!2224836 () Bool)

(declare-fun tp!2224842 () Bool)

(assert (=> b!7619372 (= e!4530775 (and tp!2224836 tp!2224842))))

(declare-fun b!7619373 () Bool)

(declare-fun res!3050366 () Bool)

(assert (=> b!7619373 (=> res!3050366 e!4530773)))

(assert (=> b!7619373 (= res!3050366 (not (= (++!17609 (_1!37883 cut!6) (_2!37883 cut!6)) s!9605)))))

(assert (= (and start!733956 res!3050362) b!7619361))

(assert (= (and b!7619361 res!3050367) b!7619365))

(assert (= (and b!7619365 res!3050363) b!7619370))

(assert (= (and b!7619370 (not res!3050368)) b!7619359))

(assert (= (and b!7619359 c!1404309) b!7619357))

(assert (= (and b!7619359 (not c!1404309)) b!7619371))

(assert (= (and b!7619357 res!3050365) b!7619360))

(assert (= (and b!7619359 (not res!3050364)) b!7619373))

(assert (= (and b!7619373 (not res!3050366)) b!7619358))

(assert (= (and b!7619358 (not res!3050361)) b!7619364))

(assert (= (and start!733956 ((_ is ElementMatch!20299) r!14126)) b!7619367))

(assert (= (and start!733956 ((_ is Concat!29144) r!14126)) b!7619368))

(assert (= (and start!733956 ((_ is Star!20299) r!14126)) b!7619366))

(assert (= (and start!733956 ((_ is Union!20299) r!14126)) b!7619372))

(assert (= (and start!733956 ((_ is Cons!73028) s!9605)) b!7619362))

(assert (= (and start!733956 ((_ is Cons!73028) (_1!37883 cut!6))) b!7619363))

(assert (= (and start!733956 ((_ is Cons!73028) (_2!37883 cut!6))) b!7619369))

(declare-fun m!8151608 () Bool)

(assert (=> b!7619364 m!8151608))

(assert (=> start!733956 m!8151608))

(declare-fun m!8151610 () Bool)

(assert (=> b!7619373 m!8151610))

(declare-fun m!8151612 () Bool)

(assert (=> b!7619358 m!8151612))

(declare-fun m!8151614 () Bool)

(assert (=> b!7619370 m!8151614))

(declare-fun m!8151616 () Bool)

(assert (=> b!7619370 m!8151616))

(declare-fun m!8151618 () Bool)

(assert (=> b!7619370 m!8151618))

(declare-fun m!8151620 () Bool)

(assert (=> b!7619370 m!8151620))

(declare-fun m!8151622 () Bool)

(assert (=> b!7619359 m!8151622))

(declare-fun m!8151624 () Bool)

(assert (=> b!7619359 m!8151624))

(declare-fun m!8151626 () Bool)

(assert (=> b!7619359 m!8151626))

(assert (=> b!7619359 m!8151614))

(declare-fun m!8151628 () Bool)

(assert (=> b!7619359 m!8151628))

(declare-fun m!8151630 () Bool)

(assert (=> b!7619359 m!8151630))

(declare-fun m!8151632 () Bool)

(assert (=> b!7619359 m!8151632))

(declare-fun m!8151634 () Bool)

(assert (=> b!7619359 m!8151634))

(declare-fun m!8151636 () Bool)

(assert (=> b!7619359 m!8151636))

(declare-fun m!8151638 () Bool)

(assert (=> b!7619365 m!8151638))

(declare-fun m!8151640 () Bool)

(assert (=> b!7619357 m!8151640))

(declare-fun m!8151642 () Bool)

(assert (=> b!7619357 m!8151642))

(declare-fun m!8151644 () Bool)

(assert (=> b!7619357 m!8151644))

(declare-fun m!8151646 () Bool)

(assert (=> b!7619357 m!8151646))

(declare-fun m!8151648 () Bool)

(assert (=> b!7619357 m!8151648))

(check-sat (not b!7619369) (not b!7619373) (not start!733956) (not b!7619372) tp_is_empty!50953 (not b!7619357) (not b!7619365) (not b!7619362) (not b!7619359) (not b!7619368) (not b!7619370) (not b!7619366) (not b!7619363) (not b!7619358) (not b!7619364))
(check-sat)
